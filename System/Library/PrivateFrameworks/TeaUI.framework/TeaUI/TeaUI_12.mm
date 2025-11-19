id PromiseViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PromiseViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI21PromiseViewController_coverViewManager;
  type metadata accessor for CoverViewManager();
  swift_allocObject();
  *(v0 + v1) = CoverViewManager.init()();
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7F1B3D8()
{
  if (sub_1D8190B24())
  {
    v1 = type metadata accessor for PromiseViewController();
    v6 = v0;
    v2 = &v6;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController);
    if (v3)
    {
      result = [v3 navigationItem];
      if (result)
      {
        return result;
      }
    }

    v1 = type metadata accessor for PromiseViewController();
    v7 = v0;
    v2 = &v7;
  }

  v2->super_class = v1;
  v5 = [(objc_super *)v2 navigationItem];

  return v5;
}

id sub_1D7F1B47C()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for PromiseViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = &v0[OBJC_IVAR____TtC5TeaUI21PromiseViewController_indicatorLoadingCoverStyler];
    v5 = *&v0[OBJC_IVAR____TtC5TeaUI21PromiseViewController_indicatorLoadingCoverStyler + 24];
    v6 = *&v0[OBJC_IVAR____TtC5TeaUI21PromiseViewController_indicatorLoadingCoverStyler + 32];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC5TeaUI21PromiseViewController_indicatorLoadingCoverStyler], v5);
    v7 = (*(v6 + 24))(v5, v6);
    [v3 setBackgroundColor_];

    swift_unknownObjectWeakAssign();
    sub_1D7E0E768(v4, v16);
    v16[81] = 3;
    v15 = 0;
    CoverViewManager.present(cover:animation:completion:)(v16, &v15, 0, 0);
    sub_1D7E298F0(v16);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    MEMORY[0x1EEE9AC00](v8);
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D818FC24();
    v9 = sub_1D818EE74();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v8;
    v11 = v1;

    sub_1D818FAE4();

    v12 = sub_1D818EE74();
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = v11;
    v14 = v11;

    sub_1D818FB14();

    swift_beginAccess();
    *(v8 + 16) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F1B748(void **a1, char *a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = UIViewController.effectiveNavigationItem.getter();
  v9 = [a3 navigationItem];
  v10 = [v9 hidesBackButton];

  [v8 setHidesBackButton_];
  v11 = *&a2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController];
  *&a2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController] = v7;
  v12 = v7;

  if (UIViewController.isPreviewing.getter())
  {
    v56[0] = v12;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D7E0631C(0, &qword_1EDBAFF48);
    v13 = v12;
    if (swift_dynamicCast())
    {
      sub_1D7E05450(__src, __dst);
      v14 = *(&__dst[1] + 1);
      v15 = *&__dst[2];
      __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
      (*(v15 + 8))(1, v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    }

    else
    {
      memset(__src, 0, 40);
      sub_1D7F1DC6C(__src, &qword_1ECA0DD50, &qword_1EDBAFF48, &protocol descriptor for ViewControllerPreviewable, sub_1D7E328A8);
    }
  }

  memset(__dst, 0, 80);
  LOWORD(__dst[5]) = 1792;
  swift_beginAccess();
  LOBYTE(__src[0]) = *(a4 + 16);
  CoverViewManager.present(cover:animation:completion:)(__dst, __src, 0, 0);
  sub_1D7E298F0(__dst);
  [a2 addChildViewController_];
  result = [v12 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v17 = result;
  result = [a2 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = result;
  [result bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setFrame_];
  result = [a2 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v27 = result;
  result = [v12 view];
  if (!result)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v28 = result;
  [v27 addSubview_];

  [v12 didMoveToParentViewController_];
  if ((sub_1D8190B24() & 1) == 0)
  {
    v29 = UIViewController.effectiveNavigationController.getter();
    if (v29)
    {
      v30 = v29;
      v31 = [v29 navigationBar];
    }

    v32 = UIViewController.effectiveNavigationController.getter();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 navigationBar];

      v35 = [a2 navigationItem];
      [v34 _pushNavigationItem_transition_];
    }
  }

  v36 = [a2 ts_transitionContainerViewController];
  if (v36)
  {
    v37 = v36;
    TransitionContainerViewController.installBarButtonItems()();
  }

  v38 = [a2 tabBarController];
  if (v38)
  {
    v39 = v38;
    UITabBarController.setFloatingTabBarNeedsTabBarMinimizeBehaviorUpdate()();
  }

  v40 = [a3 tabBarController];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 selectedViewController];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 _hostingNavigationBar];

      if (v44)
      {
        v45 = [v44 topItem];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 titleView];

          if (v47)
          {
            type metadata accessor for FloatingTabBarNavigationTitleView();
            if (swift_dynamicCastClass())
            {
              sub_1D7F231C0(v41);
              v48 = v47;
            }

            else
            {
              v48 = v44;
              v44 = v47;
            }

            v49 = v44;

            v44 = v41;
            v41 = v49;
          }
        }
      }
    }
  }

  [a2 _updateTabBarLayout];
  v50 = *&a2[OBJC_IVAR____TtC5TeaUI21PromiseViewController_parentingCompleteClosure];
  if (v50)
  {
    v50(a2, v12);
  }

  v64 = v12;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, qword_1EDBB86C0);
  v51 = v12;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v59, v61);
    v52 = v62;
    v53 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v53 + 8))(v52, v53);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D818F164();

    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
    v54 = v62;
    v55 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v55 + 8))(v54, v55);
    sub_1D818F154();

    memcpy(v56, __src, 0x5AuLL);
    sub_1D7E5F3BC();
    sub_1D818F184();
    memcpy(__dst, v56, 0x5AuLL);
    sub_1D7E4653C(__dst);
    return __swift_destroy_boxed_opaque_existential_1Tm(v61);
  }

  else
  {
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    return sub_1D7F1DC6C(v59, &unk_1EDBB86B8, qword_1EDBB86C0, &protocol descriptor for NavigationItemStylable, sub_1D7E328A8);
  }
}

uint64_t sub_1D7F1BE78(const void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    memcpy(__dst, a1, sizeof(__dst));
    sub_1D7E5F3BC();
    sub_1D818F184();
  }

  return result;
}

void sub_1D7F1BF18(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  memset(v34, 0, sizeof(v34));
  v35 = 1792;
  swift_beginAccess();
  v33[0] = *(a3 + 16);
  CoverViewManager.present(cover:animation:completion:)(v34, v33, 0, 0);
  sub_1D7E298F0(v34);
  v30[0] = a1;
  v8 = a1;
  sub_1D7E0631C(0, &qword_1EDBB2BC0);
  if (swift_dynamicCast())
  {
    v34[0] = *v33;
    v34[1] = *&v33[16];
    *(&v34[1] + 9) = *&v33[25];
    sub_1D7F1DBF4(v34, v33);
    v9 = *v33;
    switch(v33[40])
    {
      case 1:
        sub_1D7E05450(v33, v30);
        v16 = v31;
        v17 = v32;
        v18 = __swift_project_boxed_opaque_existential_1(v30, v31);
        v28 = &v25;
        v27 = *(v16 - 8);
        MEMORY[0x1EEE9AC00](v18);
        v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = swift_allocObject();
        *(v21 + 16) = a4;
        v26 = *(v17 + 16);
        v22 = a4;
        v26(sub_1D7F1DC64, v21, v16, v17);

        (*(v27 + 8))(v20, v16);
        v23 = v31;
        v24 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        (*(v24 + 56))(v22, 1, 0, 0, v23, v24);
        sub_1D7F1DC2C(v34);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        break;
      case 2:
        v12 = *&v33[8];

        sub_1D7F1CAF8(v9, v12, 1);

        goto LABEL_8;
      case 3:
        v13 = *&v33[8];
        v14 = swift_allocObject();
        *(v14 + 16) = v9;
        *(v14 + 24) = v13;

        sub_1D7F1CAF8(sub_1D7F1DC5C, v14, 0);

        goto LABEL_8;
      case 4:
        sub_1D7F1CAF8(0, 0, 1);
        goto LABEL_8;
      default:
        sub_1D7E05450(v33, v30);
        sub_1D7E0E768(v30, v29);
        type metadata accessor for Alert();
        swift_allocObject();
        Alert.init(type:)(v29);
        v10 = swift_allocObject();
        *(v10 + 16) = a4;
        v11 = a4;
        Alert.onAccept(block:)(sub_1D7F1DCFC, v10);

        Alert.present(from:animated:completion:)(v11, 1, 0, 0);

        __swift_destroy_boxed_opaque_existential_1Tm(v30);
LABEL_8:
        sub_1D7F1DC2C(v34);
        break;
    }
  }

  else
  {
    memset(v33, 0, 40);
    v33[40] = -1;
    sub_1D7F1DC6C(v33, &unk_1ECA0DB40, &type metadata for PromiseViewController.Errors, MEMORY[0x1E69E6720], sub_1D7E2A1A0);
    sub_1D7F1CAF8(0, 0, 1);
  }

  v15 = *(a2 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_parentingErrorClosure);
  if (v15)
  {
    v15(a2, a1);
  }
}

uint64_t sub_1D7F1C3BC(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7E74D44;
  *(v6 + 24) = v5;
  v9[4] = sub_1D7E74D6C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E74D74;
  v9[3] = &block_descriptor_43;
  v7 = _Block_copy(v9);

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1D7F1C570(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PromiseViewController();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, a1);
  CoverViewManager.layoutIfNeeded()();
}

void *sub_1D7F1C630()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController);
  v2 = v1;
  return v1;
}

id sub_1D7F1C660(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController) contentScrollViewForEdge_];

  return v2;
}

id sub_1D7F1C724()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 topViewController];
    if (!v3 || (v4 = v3, v3, v4 != v0))
    {
      for (i = [v0 childViewControllerForStatusBarStyle]; ; i = v7)
      {
        v6 = [i childViewControllerForStatusBarStyle];
        if (!v6)
        {
          break;
        }

        v7 = [i childViewControllerForStatusBarStyle];
      }

      if (i)
      {
        v8 = [i preferredStatusBarStyle];
LABEL_9:

LABEL_19:
        return v8;
      }

LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    v9 = [v2 viewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_6_1();
    v10 = sub_1D8191314();

    v11 = sub_1D7E341F8(v10);

    if (v11 < 2)
    {
      goto LABEL_18;
    }

    v12 = [v2 viewControllers];
    v13 = sub_1D8191314();

    v14 = sub_1D7E341F8(v13);

    v15 = __OFSUB__(v14, 2);
    v16 = v14 - 2;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      v17 = [v2 viewControllers];
      v0 = sub_1D8191314();

      sub_1D7E33DD8(v16, (v0 & 0xC000000000000001) == 0, v0);
      if ((v0 & 0xC000000000000001) == 0)
      {
        v18 = *(v0 + 8 * v16 + 32);
        goto LABEL_15;
      }
    }

    v18 = MEMORY[0x1DA714420](v16, v0);
LABEL_15:
    v19 = v18;

    i = v19;
    for (j = i; ; j = v22)
    {
      v21 = [j childViewControllerForStatusBarStyle];
      if (!v21)
      {
        break;
      }

      v22 = [j childViewControllerForStatusBarStyle];
    }

    if (j)
    {
      v8 = [j preferredStatusBarStyle];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1D7F1CA1C()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000017, 0x80000001D81C7760);
  sub_1D8192334();
  MEMORY[0x1DA713260](0x6669746E65646920, 0xEC0000003D726569);
  MEMORY[0x1DA713260](*(v0 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_identifier), *(v0 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_identifier + 8));
  MEMORY[0x1DA713260](62, 0xE100000000000000);
  return 0;
}

void sub_1D7F1CAF8(void (*a1)(void), uint64_t a2, char a3)
{
  v7 = UIViewController.effectiveNavigationController.getter();
  if (v7)
  {
    v16 = v7;
    v8 = [v7 transitionCoordinator];
    if (v8)
    {
      v9 = v8;
      v10 = v16;
LABEL_4:
      sub_1D7F1CCF0(v10, v9, a1, a2);
      swift_unknownObjectRelease();
LABEL_12:

      return;
    }

    v15 = [v16 popViewControllerAnimated_];
    goto LABEL_10;
  }

  v11 = [v3 parentViewController];
  if (v11)
  {
    v16 = v11;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 transitionCoordinator];
      if (v14)
      {
        v9 = v14;
        v10 = v13;
        goto LABEL_4;
      }

      v15 = [v13 popViewControllerAnimated_];
LABEL_10:

      if (a1)
      {
        a1();
      }

      goto LABEL_12;
    }
  }

  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E64940;
    aBlock[3] = &block_descriptor_25_0;
    a1 = _Block_copy(aBlock);
  }

  [v3 dismissViewControllerAnimated:a3 & 1 completion:a1];
  _Block_release(a1);
}

void sub_1D7F1CCF0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_1D7F1DB4C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D7F6900C;
  v11[3] = &block_descriptor_6;
  v9 = _Block_copy(v11);
  v10 = a1;
  sub_1D7E38808(a3);

  [a2 animateAlongsideTransition:0 completion:v9];
  _Block_release(v9);
}

uint64_t sub_1D7F1CDF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D8190BD4();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D8190C34();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v13 = sub_1D8191AB4();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_1D7F1DBA0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  sub_1D7E38808(a3);

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7F1DBAC(&qword_1EDBB34B0, 255, MEMORY[0x1E69E7F60]);
  sub_1D7E2885C();
  sub_1D7F1DBAC(&qword_1EDBB3340, 255, sub_1D7E2885C);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

void sub_1D7F1D0FC(void *a1, void (*a2)(void))
{
  if (a2)
  {
    a2();
  }
}

id PromiseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PromiseViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromiseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *PromiseViewController.responder.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

uint64_t PromiseViewController.tabBarNavigationBarVisiblity.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController);
  if (v3 && (sub_1D7E0A1A8(0, &qword_1EDBB31B0), sub_1D7E0631C(0, &unk_1EDBB1D08), v4 = v3, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v14 + 1))
    {
      sub_1D7E05450(&v13, v16);
      v5 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      v6 = OUTLINED_FUNCTION_6_1();
      v7(v6, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  OUTLINED_FUNCTION_0_26();
  result = sub_1D7F1DC6C(&v13, v9, v10, v11, v12);
  *a1 = 1;
  return result;
}

Swift::Void __swiftcall PromiseViewController.set(previewing:)(Swift::Bool previewing)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController);
  if (v2 && (v14[0] = *(v1 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController), sub_1D7E0A1A8(0, &qword_1EDBB31B0), sub_1D7E0631C(0, &qword_1EDBAFF48), v4 = v2, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      sub_1D7E05450(&v11, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v6 + 8))(previewing, v5, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  OUTLINED_FUNCTION_0_26();
  sub_1D7F1DC6C(&v11, v7, v8, v9, v10);
}

uint64_t PromiseViewController.canShowStatusBanner.getter()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    v3 = dynamic_cast_existential_1_conditional(v2);
    v5 = v3;
    if (v3)
    {
      v6 = v4;
      ObjectType = swift_getObjectType();
      v5 = (*(v6 + 16))(ObjectType, v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t PromiseViewController.isStatusBannerVisible.getter()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    v3 = dynamic_cast_existential_1_conditional(v2);
    v5 = v3;
    if (v3)
    {
      v6 = v4;
      ObjectType = swift_getObjectType();
      v5 = (*(v6 + 24))(ObjectType, v6);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double PromiseViewController.statusBannerHeight.getter()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v2))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 32))(ObjectType, v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

Swift::Void __swiftcall PromiseViewController.statusBannerVisibilityChanged(animated:)(Swift::Bool animated)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI21PromiseViewController_contentViewController);
  if (v2)
  {
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v2))
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 40);
      v8 = v2;
      v7(animated, ObjectType, v5);
    }
  }
}

void sub_1D7F1D91C()
{
  if (!qword_1EDBB1F90)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31B0);
    v0 = sub_1D818FBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB1F90);
    }
  }
}

uint64_t sub_1D7F1D9D0(uint64_t a1, uint64_t a2)
{
  result = sub_1D7F1DBAC(qword_1EDBB08B0, a2, type metadata accessor for PromiseViewController);
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI21PromiseViewControllerC6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_1D7F1DA8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7F1DAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D7F1DB14(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t objectdestroy_15Tm()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7F1DBAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7F1DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t static Settings.Blueprint.Impressions.scrollDelta.getter()
{
  if (qword_1EDBBC5D0 != -1)
  {
    swift_once();
  }
}

_BYTE *sub_1D7F1DD6C(_BYTE *result, int a2, int a3)
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

uint64_t Shine.Context.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D7F1DEB8()
{
  sub_1D818EAF4();
  sub_1D818EAE4();
  if (qword_1EDBBC5E0 != -1)
  {
    swift_once();
  }

  sub_1D818EAD4();

  if (v2)
  {
    v1 = v2 == 1;
  }

  else
  {
    if (qword_1EDBB2EF8 != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    v1 = (byte_1EDBB2F00 & 1) == 0;
  }

  byte_1EDBB39E0 = v1;
  return result;
}

char *sub_1D7F1DFAC()
{
  if (qword_1EDBB39D8 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  return &byte_1EDBB39E0;
}

uint64_t static Shine.context.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDBB39D8 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  result = swift_beginAccess();
  *a1 = byte_1EDBB39E0;
  return result;
}

uint64_t static Shine.context.setter(char *a1)
{
  v1 = *a1;
  if (qword_1EDBB39D8 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  result = swift_beginAccess();
  byte_1EDBB39E0 = v1;
  return result;
}

uint64_t (*static Shine.context.modify())()
{
  if (qword_1EDBB39D8 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1D7F1E13C()
{
  result = qword_1ECA0DB48;
  if (!qword_1ECA0DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DB48);
  }

  return result;
}

uint64_t sub_1D7F1E190@<X0>(_BYTE *a1@<X8>)
{
  sub_1D7F1DFAC();
  result = swift_beginAccess();
  *a1 = byte_1EDBB39E0;
  return result;
}

uint64_t sub_1D7F1E1E0(char *a1)
{
  v1 = *a1;
  sub_1D7F1DFAC();
  result = swift_beginAccess();
  byte_1EDBB39E0 = v1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Shine(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for Shine.Context(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D7F1E3C8()
{
  if (!qword_1ECA0DB50)
  {
    sub_1D818E994();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0DB50);
    }
  }
}

uint64_t type metadata accessor for BlueprintDropAction()
{
  result = qword_1ECA0DB58;
  if (!qword_1ECA0DB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7F1E490()
{
  sub_1D7F1E3C8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t UserActivityHandlerPattern.predicate.getter()
{
  v1 = *v0;
  sub_1D7E19F24(*v0);
  return v1;
}

uint64_t UserActivityHandlerPattern.init(predicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_So14NSUserActivityCSbIeggd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7F1E5E4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1D7F1E638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D7F1E6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D804C12C();
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_1D7F21970(v8, result, v5, 0, a1);
    *(a2 + 8) = v7;
    return sub_1D7E05450(v8, a2 + 16);
  }

  return result;
}

uint64_t sub_1D7F1E76C()
{
  OUTLINED_FUNCTION_14_10();
  sub_1D7EE5A18();
  if (v2)
  {
    sub_1D7F21B70(v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v0);
  }

  v4 = OUTLINED_FUNCTION_22_6();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1D7F1E7FC(uint64_t a1)
{
  result = sub_1D7F21A7C();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1D7F21A00(result, v3, 0, a1);
  }
}

uint64_t sub_1D7F1E864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7F21A7C();
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1D7F21AB0(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = sub_1D818F824();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

unint64_t KeyCommandTraversalDirection.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D7F1E954@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = KeyCommandTraversalDirection.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

TeaUI::KeyCommandTraverseDirections sub_1D7F1EA1C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = KeyCommandTraverseDirections.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7F1EA5C@<X0>(uint64_t *a1@<X8>)
{
  result = KeyCommandTraverseDirections.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s5TeaUI030KeyCommandTraversableDiscoveryC0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t KeyCommandTraversableCollection.firstTraversableIndexPath.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4() < 1)
  {
    sub_1D818E994();
    OUTLINED_FUNCTION_8_1();

    return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }

  else
  {
    result = (v4)(a1, a2);
    if ((result & 0x8000000000000000) == 0)
    {
      if (!result)
      {
LABEL_12:
        sub_1D818E994();
        OUTLINED_FUNCTION_8_1();
        return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      }

      v6 = 0;
      v7 = *(a2 + 16);
      v34 = result;
      while (2)
      {
        v8 = a1;
        v9 = a1;
        v10 = v7;
        v7(v38, v6, v9, a2);
        v11 = v39;
        v12 = v40;
        __swift_project_boxed_opaque_existential_1(v38, v39);
        OUTLINED_FUNCTION_6_14();
        result = v13(v11, v12);
        if ((result & 0x8000000000000000) == 0)
        {
          v14 = result;
          v15 = 0;
          v16 = v6 + 1;
          while (v14 != v15)
          {
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_17;
            }

            v18 = v39;
            v17 = v40;
            __swift_project_boxed_opaque_existential_1(v38, v39);
            (*(v17 + 16))(v35, v15, v18, v17);
            v19 = v36;
            v20 = v37;
            __swift_project_boxed_opaque_existential_1(v35, v36);
            OUTLINED_FUNCTION_6_14();
            LOBYTE(v19) = v21(v19, v20);
            result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
            ++v15;
            if (v19)
            {
              MEMORY[0x1DA710B60](v15 - 1, v6);
              sub_1D818E994();
              v30 = OUTLINED_FUNCTION_4_18();
              __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
              return __swift_destroy_boxed_opaque_existential_1Tm(v38);
            }
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v38);
          ++v6;
          v7 = v10;
          a1 = v8;
          if (v16 != v34)
          {
            continue;
          }

          goto LABEL_12;
        }

        break;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t KeyCommandTraversableCollection.lastTraversableIndexPath.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4() < 1)
  {
    sub_1D818E994();
    OUTLINED_FUNCTION_8_1();

    return __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  }

  else
  {
    result = (v4)(a1, a2);
    v6 = result - 1;
    if (__OFSUB__(result, 1))
    {
LABEL_25:
      __break(1u);
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      for (i = 1; ; i = 0)
      {
        v9 = v6;
        if ((i & 1) == 0)
        {
          v9 = v7 - 1;
          if (v7 < 1)
          {
            goto LABEL_27;
          }
        }

        v7 = v9;
        (*(a2 + 16))(v41, v9, a1, a2);
        v10 = v42;
        v11 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        OUTLINED_FUNCTION_6_14();
        if (v12(v10, v11) >= 1)
        {
          break;
        }

LABEL_15:
        result = __swift_destroy_boxed_opaque_existential_1Tm(v41);
        if (!v7)
        {
          sub_1D818E994();
          OUTLINED_FUNCTION_8_1();
          return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
        }
      }

      v13 = v42;
      v14 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      OUTLINED_FUNCTION_6_14();
      result = v15(v13, v14);
      v16 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        if (v16 < 0)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v17 = 0;
        v18 = 1;
        while (1)
        {
          v19 = v16;
          if ((v18 & 1) == 0)
          {
            v19 = v17 - 1;
            if (v17 < 1)
            {
              break;
            }
          }

          v20 = v42;
          v21 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          (*(v21 + 16))(v38, v19, v20, v21);
          v22 = v39;
          v23 = v40;
          __swift_project_boxed_opaque_existential_1(v38, v39);
          OUTLINED_FUNCTION_6_14();
          v25 = v24(v22, v23);
          result = __swift_destroy_boxed_opaque_existential_1Tm(v38);
          if (v25)
          {
            MEMORY[0x1DA710B60](v19, v7);
            sub_1D818E994();
            v30 = OUTLINED_FUNCTION_4_18();
            __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
            return __swift_destroy_boxed_opaque_existential_1Tm(v41);
          }

          v18 = 0;
          v17 = v19;
          if (!v19)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void KeyCommandTraversableCollection.nextTraversableIndexPath(from:possiblyDeleted:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v140 = v30;
  v142 = v31;
  v33 = v32;
  v35 = v34;
  v138 = v36;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v37 - 8);
  v38 = OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_9();
  v136 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x1EEE9AC00](v41);
  v135 = v129 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = v129 - v44;
  if ((sub_1D818E974() & 0x8000000000000000) == 0)
  {
    v46 = sub_1D818E974();
    v139 = v38;
    v47 = *(v27 + 8);
    v132 = v27 + 8;
    v131 = v47;
    v48 = v46 < v47(v29, v27);
    v49 = v139;
    if (v48)
    {
      v137 = v35;
      v133 = v29;
      v134 = v27;
      v50 = v142;
      if ((v33 & 1) == 0 && (OUTLINED_FUNCTION_41_2(), v51(v137, v50, v140, v133), v52 = v150, sub_1D7F1F838(v149), !v52) || (ObjectType = swift_getObjectType(), v54 = sub_1D818E974(), v55 = v140, v56 = *(v140 + 112), v141 = ObjectType, v129[3] = v140 + 112, v129[2] = v56, v56(v54, ObjectType, v140) < 1))
      {
        v65 = OUTLINED_FUNCTION_5_12(&a10);
        __swift_storeEnumTagSinglePayload(v65, v66, v67, v49);
LABEL_38:
        OUTLINED_FUNCTION_100();
        return;
      }

      sub_1D818E974();
      OUTLINED_FUNCTION_31_4();
      v129[4] = v25;
      v129[1] = v57;
      v129[0] = v58;
      v58(v59, v133);
      KeyCommandTraversableCollection.nextTraversableIndexPath(from:view:)();
      if (__swift_getEnumTagSinglePayload(v21, 1, v49) == 1)
      {
        sub_1D7E73334(v21);
      }

      else
      {
        v68 = v49;
        v69 = v136;
        v70 = *(v136 + 32);
        v71 = OUTLINED_FUNCTION_111();
        v70(v71);
        v72 = sub_1D818E964();
        OUTLINED_FUNCTION_9_8();
        sub_1D818E974();
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_12_10();
        if (v72 < v73())
        {
          (v70)(v138, v45, v68);
          v74 = OUTLINED_FUNCTION_4_18();
          v77 = v68;
LABEL_36:
          __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
LABEL_37:
          __swift_destroy_boxed_opaque_existential_1Tm(v149);
          goto LABEL_38;
        }

        (*(v69 + 8))(v45, v68);
        v49 = v68;
        v55 = v140;
      }

      OUTLINED_FUNCTION_9_8();
      v78 = sub_1D818E964();
      v79 = v78 + 1;
      v80 = v135;
      if (__OFADD__(v78, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      sub_1D818E974();
      OUTLINED_FUNCTION_12_10();
      if (v79 < v81())
      {
        OUTLINED_FUNCTION_9_8();
        v82 = sub_1D818E964();
        v83 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v84 = v150;
        v85 = v151;
        __swift_project_boxed_opaque_existential_1(v149, v150);
        OUTLINED_FUNCTION_6_14();
        v87 = v86(v84, v85);
        if (v87 < v83)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v88 = v87;
        v49 = v139;
        if (v83 != v87)
        {
          v130 = *(v55 + 88);
          v89 = (v136 + 8);
          while (v83 < v88)
          {
            OUTLINED_FUNCTION_9_8();
            v90 = sub_1D818E974();
            MEMORY[0x1DA710B60](v83, v90);
            v130(&v152, v80, v141, v55);
            if ((v153 & 1) == 0)
            {
              OUTLINED_FUNCTION_35_4();
              if (!(v92 ^ v93 | v91))
              {
                OUTLINED_FUNCTION_34_3();
                if (!(v92 ^ v93 | v91))
                {
                  v94 = v150;
                  v95 = v151;
                  __swift_project_boxed_opaque_existential_1(v149, v150);
                  OUTLINED_FUNCTION_23_4();
                  v96(v146, v83, v94, v95);
                  v49 = v147;
                  v55 = v148;
                  __swift_project_boxed_opaque_existential_1(v146, v147);
                  OUTLINED_FUNCTION_6_14();
                  v97 = OUTLINED_FUNCTION_18_6();
                  v99 = v98(v97);
                  __swift_destroy_boxed_opaque_existential_1Tm(v146);
                  if (v99)
                  {
                    OUTLINED_FUNCTION_19_5();
                    v127 = v138;
                    v128(v138, v80, v49);
                    v74 = v127;
                    v75 = 0;
                    goto LABEL_35;
                  }
                }
              }
            }

            ++v83;
            (*v89)(v80, v49);
            if (v88 == v83)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_54;
        }
      }

LABEL_28:
      v100 = sub_1D818E974();
      if (__OFADD__(v100, 1))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v101 = v133;
      v102 = v134;
      v103 = v131;
      v48 = v100 + 1 < v131(v133, v134);
      v104 = v136;
      if (v48)
      {
        v105 = sub_1D818E974();
        v106 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v107 = v103(v101, v102);
        if (v107 < v106)
        {
LABEL_61:
          __break(1u);
          return;
        }

        if (v106 != v107)
        {
          v108 = (v55 + 88);
          v109 = (v104 + 8);
          v137 = v107;
          while (v106 < v107)
          {
            (v129[0])(v146, v106, v101, v102);
            OUTLINED_FUNCTION_44_1();
            OUTLINED_FUNCTION_12_10();
            v111 = v110();
            if (v111 < 0)
            {
              goto LABEL_56;
            }

            v112 = v111;
            if (v111)
            {
              v113 = 0;
              v114 = *v108;
              while (1)
              {
                MEMORY[0x1DA710B60](v113, v106);
                v115 = OUTLINED_FUNCTION_45_1();
                v116 = v142;
                v114(v115, v141, v55);
                if ((v154 & 1) == 0)
                {
                  OUTLINED_FUNCTION_39_1();
                  if (!(v92 ^ v93 | v91))
                  {
                    OUTLINED_FUNCTION_38_2();
                    if (!(v92 ^ v93 | v91))
                    {
                      v117 = v147;
                      v118 = v148;
                      __swift_project_boxed_opaque_existential_1(v146, v147);
                      OUTLINED_FUNCTION_23_4();
                      v119(v143, v113, v117, v118);
                      v49 = v144;
                      v55 = v145;
                      __swift_project_boxed_opaque_existential_1(v143, v144);
                      OUTLINED_FUNCTION_6_14();
                      v120 = OUTLINED_FUNCTION_18_6();
                      v121(v120);
                      OUTLINED_FUNCTION_46_2();
                      if (v116)
                      {
                        break;
                      }
                    }
                  }
                }

                ++v113;
                (*v109)(v22, v49);
                if (v112 == v113)
                {
                  goto LABEL_49;
                }
              }

              OUTLINED_FUNCTION_19_5();
              v122 = OUTLINED_FUNCTION_20_4();
              v123(v122);
              v124 = OUTLINED_FUNCTION_4_18();
              __swift_storeEnumTagSinglePayload(v124, v125, v126, v49);
              __swift_destroy_boxed_opaque_existential_1Tm(v146);
              goto LABEL_37;
            }

LABEL_49:
            ++v106;
            __swift_destroy_boxed_opaque_existential_1Tm(v146);
            v107 = v137;
            v102 = v134;
            v101 = v133;
            if (v106 == v137)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_55;
        }
      }

LABEL_34:
      v74 = v138;
      v75 = 1;
LABEL_35:
      v76 = 1;
      v77 = v49;
      goto LABEL_36;
    }
  }

  OUTLINED_FUNCTION_5_12(&a10);
  OUTLINED_FUNCTION_100();

  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
}

uint64_t sub_1D7F1F838(uint64_t a1)
{
  sub_1D7E13630(0, &qword_1ECA0DA98, qword_1EDBB7610, &protocol descriptor for KeyCommandTraversableItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void KeyCommandTraversableCollection.previousTraversableIndexPath(from:possiblyDeleted:view:)()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v126 = v9;
  LODWORD(v127) = v10;
  v12 = v11;
  v121 = v13;
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v125 = OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_9();
  v118 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v112 - v21;
  v22 = sub_1D818E974();
  v23 = *(v4 + 8);
  v119 = v6;
  v120 = v4;
  if (v22 < v23(v6, v4) && (sub_1D818E974() & 0x8000000000000000) == 0)
  {
    if ((v127 & 1) == 0 && (OUTLINED_FUNCTION_41_2(), v24(v12, v126, v8, v119), v25 = v135, sub_1D7F1F838(v134), !v25) || (v26 = v126, ObjectType = swift_getObjectType(), v28 = sub_1D818E974(), v29 = *(v8 + 112), v127 = ObjectType, v124 = v8 + 112, v123 = v29, v29(v28, ObjectType, v8) < 1))
    {
      v44 = OUTLINED_FUNCTION_5_12(&v140);
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v125);
LABEL_56:
      OUTLINED_FUNCTION_100();
      return;
    }

    sub_1D818E974();
    v30 = v120;
    OUTLINED_FUNCTION_31_4();
    v31 = v12;
    v32 = v119;
    OUTLINED_FUNCTION_43_3();
    v33();
    KeyCommandTraversableCollection.previousTraversableIndexPath(from:view:)(v31, v26, v8, v32, v30, v34, v35, v36, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    v37 = v125;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v125);
    v116 = v0;
    v122 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D7E73334(v1);
    }

    else
    {
      v47 = v117;
      v113 = *(v118 + 32);
      v113(v117, v1, v37);
      v48 = sub_1D818E964();
      sub_1D818E974();
      OUTLINED_FUNCTION_0_28();
      if (v48 < v49())
      {
        v113(v121, v47, v37);
        v50 = OUTLINED_FUNCTION_24_0();
        v53 = v37;
LABEL_54:
        __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
LABEL_55:
        __swift_destroy_boxed_opaque_existential_1Tm(v134);
        goto LABEL_56;
      }

      (*(v118 + 8))(v47, v37);
    }

    v54 = v37;
    OUTLINED_FUNCTION_9_8();
    v55 = sub_1D818E964();
    if (__OFSUB__(v55, 1))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (((v55 - 1) & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_9_8();
      sub_1D818E974();
      OUTLINED_FUNCTION_0_28();
      if (v56() >= 1)
      {
        OUTLINED_FUNCTION_9_8();
        if (sub_1D818E964() >= 1)
        {
          OUTLINED_FUNCTION_9_8();
          v57 = sub_1D818E964();
          v58 = v57 - 1;
          if (__OFSUB__(v57, 1))
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          if (v58 < 0)
          {
LABEL_67:
            __break(1u);
            return;
          }

          v59 = 0;
          v60 = (v118 + 8);
          v61 = 1;
          while (1)
          {
            v62 = v58;
            if ((v61 & 1) == 0)
            {
              v62 = v59 - 1;
              if (v59 < 1)
              {
                break;
              }
            }

            v59 = v62;
            OUTLINED_FUNCTION_9_8();
            v63 = sub_1D818E974();
            MEMORY[0x1DA710B60](v59, v63);
            (*(v8 + 88))(&v137, v19, v127, v8);
            if ((v138 & 1) == 0)
            {
              OUTLINED_FUNCTION_35_4();
              if (!(v65 ^ v66 | v64))
              {
                OUTLINED_FUNCTION_34_3();
                if (!(v65 ^ v66 | v64))
                {
                  v68 = v135;
                  v67 = v136;
                  __swift_project_boxed_opaque_existential_1(v134, v135);
                  OUTLINED_FUNCTION_6_14();
                  v69 = v68;
                  v54 = v125;
                  if (v59 < v70(v69, v67))
                  {
                    v71 = v135;
                    v72 = v136;
                    __swift_project_boxed_opaque_existential_1(v134, v135);
                    OUTLINED_FUNCTION_13_7();
                    v73(v131, v59, v71, v72);
                    v74 = v132;
                    v75 = v133;
                    __swift_project_boxed_opaque_existential_1(v131, v132);
                    OUTLINED_FUNCTION_2_27();
                    v76 = v75;
                    v54 = v125;
                    LOBYTE(v74) = v77(v74, v76);
                    __swift_destroy_boxed_opaque_existential_1Tm(v131);
                    if (v74)
                    {
                      OUTLINED_FUNCTION_19_5();
                      v110 = v121;
                      v111(v121, v19, v54);
                      v50 = v110;
                      v51 = 0;
                      goto LABEL_53;
                    }
                  }
                }
              }
            }

            (*v60)(v19, v54);
            v61 = 0;
            if (!v59)
            {
              goto LABEL_30;
            }
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }
    }

LABEL_30:
    OUTLINED_FUNCTION_9_8();
    v78 = sub_1D818E974();
    if (__OFSUB__(v78, 1))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v79 = v126;
    if (((v78 - 1) & 0x8000000000000000) == 0)
    {
      v80 = sub_1D818E974();
      v81 = v80 - 1;
      if (!__OFSUB__(v80, 1))
      {
        if ((v81 & 0x8000000000000000) == 0)
        {
          v82 = 0;
          v83 = (v118 + 8);
          v84 = 1;
          v122 = v80 - 1;
          while (1)
          {
            v85 = v81;
            if ((v84 & 1) == 0)
            {
              v85 = v82 - 1;
              if (v82 < 1)
              {
                goto LABEL_65;
              }
            }

            v82 = v85;
            OUTLINED_FUNCTION_36_3();
            v86();
            OUTLINED_FUNCTION_0_28();
            if (v87() >= 1)
            {
              OUTLINED_FUNCTION_0_28();
              v89 = v88();
              v90 = v89 - 1;
              if (__OFSUB__(v89, 1))
              {
                goto LABEL_61;
              }

              if ((v90 & 0x8000000000000000) == 0)
              {
                v91 = 0;
                v92 = 1;
                while (1)
                {
                  v93 = v90;
                  if ((v92 & 1) == 0)
                  {
                    v93 = v91 - 1;
                    if (v91 < 1)
                    {
                      break;
                    }
                  }

                  v91 = v93;
                  MEMORY[0x1DA710B60](v93, v82);
                  v94 = OUTLINED_FUNCTION_45_1();
                  v95(v94, v127, v8);
                  if ((v139 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_39_1();
                    if (!(v65 ^ v66 | v64))
                    {
                      OUTLINED_FUNCTION_38_2();
                      if (!(v65 ^ v66 | v64))
                      {
                        v96 = v79;
                        OUTLINED_FUNCTION_0_28();
                        if (v91 < v97())
                        {
                          OUTLINED_FUNCTION_17_8();
                          OUTLINED_FUNCTION_13_7();
                          v98 = OUTLINED_FUNCTION_15_5();
                          v99(v98);
                          v100 = v129;
                          v101 = v130;
                          __swift_project_boxed_opaque_existential_1(&v128, v129);
                          OUTLINED_FUNCTION_2_27();
                          v102 = v100;
                          v79 = v126;
                          v103 = v101;
                          v54 = v125;
                          v104(v102, v103);
                          OUTLINED_FUNCTION_46_2();
                          if (v96)
                          {
                            OUTLINED_FUNCTION_19_5();
                            v105 = OUTLINED_FUNCTION_20_4();
                            v106(v105);
                            v107 = OUTLINED_FUNCTION_4_18();
                            __swift_storeEnumTagSinglePayload(v107, v108, v109, v54);
                            __swift_destroy_boxed_opaque_existential_1Tm(v131);
                            goto LABEL_55;
                          }
                        }
                      }
                    }
                  }

                  (*v83)(v2, v54);
                  v92 = 0;
                  if (!v91)
                  {
                    goto LABEL_49;
                  }
                }

                __break(1u);
                goto LABEL_58;
              }

              goto LABEL_62;
            }

LABEL_49:
            __swift_destroy_boxed_opaque_existential_1Tm(v131);
            v84 = 0;
            v81 = v122;
            if (!v82)
            {
              goto LABEL_50;
            }
          }
        }

LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_50:
    v50 = v121;
    v51 = 1;
LABEL_53:
    v52 = 1;
    v53 = v54;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_5_12(&v140);
  OUTLINED_FUNCTION_100();

  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
}

void KeyCommandTraversableCollection.traversable(at:view:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a1)
  {
    v10 = a1;
    v11 = sub_1D818E974();
    if (v11 < 0 || (v12 = sub_1D818E974(), swift_getObjectType(), OUTLINED_FUNCTION_37_3(), v11 = v13(), v12 >= v11))
    {
      OUTLINED_FUNCTION_10_17(v11, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D819FAC0;
      v24 = sub_1D818E974();
      v25 = MEMORY[0x1E69E6530];
      v26 = MEMORY[0x1E69E65A8];
      *(v23 + 56) = MEMORY[0x1E69E6530];
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      swift_getObjectType();
      OUTLINED_FUNCTION_37_3();
      v28 = v27();
      *(v23 + 96) = v25;
      *(v23 + 104) = v26;
      *(v23 + 72) = v28;
      sub_1D7E0A1A8(0, &qword_1EDBBE110);
      v29 = sub_1D8191E44();
      sub_1D81919E4();
      sub_1D818FD44();

LABEL_12:
      *(a5 + 32) = 0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      return;
    }
  }

  v14 = sub_1D818E974();
  if (v14 < 0 || (v15 = sub_1D818E974(), v16 = OUTLINED_FUNCTION_28_4(), v14 = v17(v16), v15 >= v14))
  {
    OUTLINED_FUNCTION_10_17(v14, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D819FAC0;
    v31 = sub_1D818E974();
    v32 = MEMORY[0x1E69E6530];
    v33 = MEMORY[0x1E69E65A8];
    *(v30 + 56) = MEMORY[0x1E69E6530];
    *(v30 + 64) = v33;
    *(v30 + 32) = v31;
    v34 = OUTLINED_FUNCTION_28_4();
    v36 = v35(v34);
    *(v30 + 96) = v32;
    *(v30 + 104) = v33;
    *(v30 + 72) = v36;
    sub_1D7E0A1A8(0, &qword_1EDBBE110);
    v37 = sub_1D8191E44();
    sub_1D81919E4();
    sub_1D818FD44();

    goto LABEL_12;
  }

  v18 = sub_1D818E974();
  (*(a4 + 16))(v44, v18, a3, a4);
  if (sub_1D818E964() < 0 || ((v19 = sub_1D818E964(), !a1) ? (v38 = v45, v39 = v46, __swift_project_boxed_opaque_existential_1(v44, v45), OUTLINED_FUNCTION_2_27(), v22 = v40(v38, v39)) : (ObjectType = swift_getObjectType(), v21 = sub_1D818E974(), v22 = (*(a2 + 112))(v21, ObjectType, a2)), v19 >= v22))
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  else
  {
    v41 = v45;
    v42 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v43 = sub_1D818E964();
    (*(v42 + 16))(v43, v41, v42);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t KeyCommandTraversableCollection.firstTraversableIndexPath(from:)()
{
  OUTLINED_FUNCTION_14_10();
  sub_1D818E994();
  if (v0)
  {
    v1 = OUTLINED_FUNCTION_29_3();
    v2(v1);
  }

  v3 = OUTLINED_FUNCTION_22_6();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void KeyCommandTraversableCollection.nextTraversableIndexPath(from:view:)()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  v6 = v5;
  v112 = v7;
  v113 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v109 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v101 - v17;
  if (sub_1D818E974() < 0 || (sub_1D818E974(), OUTLINED_FUNCTION_40_1(), v107 = v19, v108 = v20, v1 >= (v20)(v6, v4)))
  {
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_100();

    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  }

  else
  {
    v102 = v12;
    sub_1D818E974();
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_43_3();
    v21();
    v22 = sub_1D818E964();
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v103 = v6;
    v104 = v4;
    v105 = v0;
    __swift_project_boxed_opaque_existential_1(v120, v121);
    v24 = OUTLINED_FUNCTION_3_15();
    v26 = v25(v24);
    v111 = v13;
    if (v23 < v26)
    {
      v27 = sub_1D818E964();
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      __swift_project_boxed_opaque_existential_1(v120, v121);
      OUTLINED_FUNCTION_2_27();
      v29 = OUTLINED_FUNCTION_111();
      v31 = v30(v29);
      if (v31 < v28)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v32 = v31;
      if (v28 != v31)
      {
        ObjectType = swift_getObjectType();
        v34 = v112 + 88;
        OUTLINED_FUNCTION_21_5(*(v112 + 88));
        v36 = (v35 + 8);
        v106 = v18;
        while (v28 < v32)
        {
          v37 = sub_1D818E974();
          MEMORY[0x1DA710B60](v28, v37);
          OUTLINED_FUNCTION_27_4();
          v110();
          if ((v122 & 1) == 0)
          {
            OUTLINED_FUNCTION_35_4();
            if (!(v39 ^ v40 | v38))
            {
              OUTLINED_FUNCTION_34_3();
              if (!(v39 ^ v40 | v38))
              {
                v41 = v32;
                v42 = v36;
                v43 = v10;
                v44 = v34;
                v45 = ObjectType;
                __swift_project_boxed_opaque_existential_1(v120, v121);
                v46 = OUTLINED_FUNCTION_15_5();
                v47(v46);
                v48 = v118;
                v49 = v119;
                __swift_project_boxed_opaque_existential_1(v117, v118);
                OUTLINED_FUNCTION_6_14();
                v50 = v48;
                ObjectType = v45;
                v34 = v44;
                v10 = v43;
                v36 = v42;
                v32 = v41;
                v18 = v106;
                v51 = v49;
                v13 = v111;
                v53 = v52(v50, v51);
                __swift_destroy_boxed_opaque_existential_1Tm(v117);
                if (v53)
                {
                  v99 = sub_1D818E974();
                  v100 = v102;
                  MEMORY[0x1DA710B60](v28, v99);
                  (*v36)(v18, v13);
                  v62 = v100;
                  v63 = 0;
                  goto LABEL_21;
                }
              }
            }
          }

          ++v28;
          (*v36)(v18, v13);
          if (v32 == v28)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_41;
      }
    }

LABEL_15:
    v54 = sub_1D818E974();
    if (__OFADD__(v54, 1))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v55 = v105;
    v56 = v103;
    v57 = v104;
    if (v54 + 1 < (v108)(v103, v104))
    {
      v58 = sub_1D818E974();
      v59 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v60 = (v108)(v56, v57);
      if (v60 < v59)
      {
LABEL_48:
        __break(1u);
        return;
      }

      v61 = v60;
      if (v59 != v60)
      {
        v69 = (v112 + 88);
        v70 = (v109 + 8);
        v108 = v60;
        v110 = (v109 + 8);
        while (v59 < v61)
        {
          v71 = v55;
          OUTLINED_FUNCTION_36_3();
          v72();
          __swift_project_boxed_opaque_existential_1(v117, v118);
          v73 = OUTLINED_FUNCTION_3_15();
          v75 = v74(v73);
          if (v75 < 0)
          {
            goto LABEL_43;
          }

          v76 = v75;
          if (v75)
          {
            v77 = swift_getObjectType();
            v78 = 0;
            v79 = *v69;
            while (1)
            {
              MEMORY[0x1DA710B60](v78, v59);
              OUTLINED_FUNCTION_45_1();
              OUTLINED_FUNCTION_27_4();
              v79();
              if ((v123 & 1) == 0)
              {
                OUTLINED_FUNCTION_39_1();
                if (!(v39 ^ v40 | v38))
                {
                  OUTLINED_FUNCTION_38_2();
                  if (!(v39 ^ v40 | v38))
                  {
                    v80 = v76;
                    v81 = v79;
                    v82 = v77;
                    v83 = v59;
                    v84 = v2;
                    v85 = v69;
                    v86 = v118;
                    v87 = v119;
                    __swift_project_boxed_opaque_existential_1(v117, v118);
                    OUTLINED_FUNCTION_23_4();
                    v88(v114, v78, v86, v87);
                    v89 = v115;
                    v90 = v116;
                    __swift_project_boxed_opaque_existential_1(v114, v115);
                    OUTLINED_FUNCTION_6_14();
                    v91 = v89;
                    v13 = v111;
                    v92 = v90;
                    v69 = v85;
                    v2 = v84;
                    v59 = v83;
                    v77 = v82;
                    v79 = v81;
                    v76 = v80;
                    v70 = v110;
                    v93(v91, v92);
                    OUTLINED_FUNCTION_46_2();
                    if (v71)
                    {
                      break;
                    }
                  }
                }
              }

              ++v78;
              (*v70)(v2, v13);
              if (v76 == v78)
              {
                goto LABEL_35;
              }
            }

            OUTLINED_FUNCTION_19_5();
            v94 = OUTLINED_FUNCTION_20_4();
            v95(v94);
            v96 = OUTLINED_FUNCTION_4_18();
            __swift_storeEnumTagSinglePayload(v96, v97, v98, v13);
            __swift_destroy_boxed_opaque_existential_1Tm(v117);
            goto LABEL_38;
          }

LABEL_35:
          ++v59;
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          v61 = v108;
          v55 = v105;
          if (v59 == v108)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_42;
      }
    }

LABEL_20:
    v62 = v102;
    v63 = 1;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v62, v63, 1, v13);
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    OUTLINED_FUNCTION_100();
  }
}

void KeyCommandTraversableCollection.previousTraversableIndexPath(from:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v118 = v33;
  v120 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v117 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1_26();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v112 - v37;
  sub_1D818E974();
  OUTLINED_FUNCTION_40_1();
  if (v21 >= v39(v28, v26) || sub_1D818E974() < 0)
  {
    OUTLINED_FUNCTION_5_12(&a11);
    OUTLINED_FUNCTION_100();

    __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  }

  else
  {
    sub_1D818E974();
    OUTLINED_FUNCTION_31_4();
    v116 = v40;
    v115 = v41;
    v41();
    v119 = v32;
    v42 = sub_1D818E964();
    if (__OFSUB__(v42, 1))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v112 = v28;
    v113 = v26;
    v114 = v20;
    if (((v42 - 1) & 0x8000000000000000) == 0)
    {
      v43 = v125;
      v44 = v126;
      __swift_project_boxed_opaque_existential_1(v124, v125);
      OUTLINED_FUNCTION_2_27();
      v46 = v45(v43, v44);
      v47 = sub_1D818E964();
      if (__OFSUB__(v47, 1))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v47 - 1 < v46 && sub_1D818E964() >= 1)
      {
        v48 = sub_1D818E964();
        v49 = v48 - 1;
        if (__OFSUB__(v48, 1))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        if (v49 < 0)
        {
LABEL_58:
          __break(1u);
          return;
        }

        v50 = 0;
        OUTLINED_FUNCTION_21_5(v30 + 88);
        v52 = (v51 + 8);
        v53 = 1;
        while (1)
        {
          v54 = v49;
          if ((v53 & 1) == 0)
          {
            v54 = v50 - 1;
            if (v50 < 1)
            {
              break;
            }
          }

          v50 = v54;
          v55 = sub_1D818E974();
          MEMORY[0x1DA710B60](v50, v55);
          swift_getObjectType();
          OUTLINED_FUNCTION_33_3();
          v56();
          if ((v127 & 1) == 0)
          {
            OUTLINED_FUNCTION_35_4();
            if (!(v58 ^ v59 | v57))
            {
              OUTLINED_FUNCTION_34_3();
              if (!(v58 ^ v59 | v57))
              {
                v60 = v49;
                v62 = v125;
                v61 = v126;
                __swift_project_boxed_opaque_existential_1(v124, v125);
                OUTLINED_FUNCTION_6_14();
                v63 = v62;
                v49 = v60;
                if (v50 < v64(v63, v61))
                {
                  v65 = v125;
                  v66 = v126;
                  __swift_project_boxed_opaque_existential_1(v124, v125);
                  OUTLINED_FUNCTION_13_7();
                  v67 = OUTLINED_FUNCTION_15_5();
                  v68(v67);
                  OUTLINED_FUNCTION_17_8();
                  OUTLINED_FUNCTION_2_27();
                  v69 = v66;
                  v49 = v60;
                  v71 = v70(v65, v69);
                  __swift_destroy_boxed_opaque_existential_1Tm(v122);
                  if (v71)
                  {
                    OUTLINED_FUNCTION_19_5();
                    v110 = v120;
                    v111(v118, v38, v120);
                    v97 = OUTLINED_FUNCTION_24_0();
                    v100 = v110;
                    goto LABEL_45;
                  }
                }
              }
            }
          }

          (*v52)(v38, v120);
          v53 = 0;
          if (!v50)
          {
            goto LABEL_19;
          }
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }
    }

LABEL_19:
    v72 = sub_1D818E974();
    if (__OFSUB__(v72, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (((v72 - 1) & 0x8000000000000000) == 0)
    {
      v73 = sub_1D818E974();
      if (!__OFSUB__(v73, 1))
      {
        if (((v73 - 1) & 0x8000000000000000) == 0)
        {
          v74 = 0;
          OUTLINED_FUNCTION_21_5(v30 + 88);
          v77 = (v76 + 8);
          v78 = 1;
          v119 = v75;
          while (1)
          {
            v79 = v75;
            if ((v78 & 1) == 0)
            {
              v79 = v74 - 1;
              if (v74 < 1)
              {
                goto LABEL_56;
              }
            }

            v74 = v79;
            v80 = v114;
            (v115)(v122, v79, v112, v113);
            __swift_project_boxed_opaque_existential_1(v122, v123);
            v81 = OUTLINED_FUNCTION_3_15();
            if (v82(v81) >= 1)
            {
              __swift_project_boxed_opaque_existential_1(v122, v123);
              v83 = OUTLINED_FUNCTION_3_15();
              v85 = v84(v83);
              v86 = v85 - 1;
              if (__OFSUB__(v85, 1))
              {
                goto LABEL_52;
              }

              if ((v86 & 0x8000000000000000) == 0)
              {
                v87 = 0;
                v88 = 1;
                while (1)
                {
                  v89 = v86;
                  if ((v88 & 1) == 0)
                  {
                    v89 = v87 - 1;
                    if (v87 < 1)
                    {
                      break;
                    }
                  }

                  v87 = v89;
                  MEMORY[0x1DA710B60](v89, v74);
                  swift_getObjectType();
                  OUTLINED_FUNCTION_45_1();
                  OUTLINED_FUNCTION_33_3();
                  v90();
                  if ((v128 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_39_1();
                    if (!(v58 ^ v59 | v57))
                    {
                      OUTLINED_FUNCTION_38_2();
                      if (!(v58 ^ v59 | v57))
                      {
                        OUTLINED_FUNCTION_17_8();
                        OUTLINED_FUNCTION_2_27();
                        v91 = OUTLINED_FUNCTION_111();
                        if (v87 < v92(v91))
                        {
                          OUTLINED_FUNCTION_17_8();
                          OUTLINED_FUNCTION_13_7();
                          v93 = OUTLINED_FUNCTION_15_5();
                          v94(v93);
                          __swift_project_boxed_opaque_existential_1(v121, v121[3]);
                          OUTLINED_FUNCTION_2_27();
                          v95 = OUTLINED_FUNCTION_111();
                          v96(v95);
                          OUTLINED_FUNCTION_46_2();
                          if (v80)
                          {
                            MEMORY[0x1DA710B60](v87, v74);
                            v106 = v120;
                            (*v77)(v22, v120);
                            v107 = OUTLINED_FUNCTION_24_0();
                            __swift_storeEnumTagSinglePayload(v107, v108, v109, v106);
                            __swift_destroy_boxed_opaque_existential_1Tm(v122);
                            goto LABEL_46;
                          }
                        }
                      }
                    }
                  }

                  (*v77)(v22, v120);
                  v88 = 0;
                  if (!v87)
                  {
                    goto LABEL_38;
                  }
                }

                __break(1u);
                goto LABEL_48;
              }

              goto LABEL_53;
            }

LABEL_38:
            __swift_destroy_boxed_opaque_existential_1Tm(v122);
            v78 = 0;
            v75 = v119;
            if (!v74)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_39:
    v97 = OUTLINED_FUNCTION_5_12(&a11);
    v100 = v120;
LABEL_45:
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
LABEL_46:
    __swift_destroy_boxed_opaque_existential_1Tm(v124);
    OUTLINED_FUNCTION_100();
  }
}

unint64_t sub_1D7F21230()
{
  result = qword_1ECA0DB68;
  if (!qword_1ECA0DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DB68);
  }

  return result;
}

unint64_t sub_1D7F21288()
{
  result = qword_1ECA0DB70;
  if (!qword_1ECA0DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DB70);
  }

  return result;
}

unint64_t sub_1D7F212E0()
{
  result = qword_1ECA0DB78;
  if (!qword_1ECA0DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DB78);
  }

  return result;
}

unint64_t sub_1D7F21338()
{
  result = qword_1ECA0DB80;
  if (!qword_1ECA0DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DB80);
  }

  return result;
}

unint64_t sub_1D7F21390()
{
  result = qword_1EDBB64E8;
  if (!qword_1EDBB64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB64E8);
  }

  return result;
}

unint64_t sub_1D7F213E8()
{
  result = qword_1EDBB64E0;
  if (!qword_1EDBB64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB64E0);
  }

  return result;
}

unint64_t sub_1D7F21440()
{
  result = qword_1ECA0DB88;
  if (!qword_1ECA0DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DB88);
  }

  return result;
}

_BYTE *sub_1D7F21514(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D7F21764(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA7142D0](a1, a2, v7);
      sub_1D7E0A1A8(0, &qword_1ECA11F60);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D7E0A1A8(0, &qword_1ECA11F60);
    if (sub_1D8192084() == *(a4 + 36))
    {
      sub_1D8192094();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1D8191CB4();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1D8191CC4();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

uint64_t sub_1D7F21970(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_1D7E0E768(*(a5 + 56) + 40 * a2, result);
    sub_1D8190DB4();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D7F21A00(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);
    sub_1D8190DB4();
    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D7F21AB0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 56);
  v7 = sub_1D818F824();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1D7F21B70(uint64_t a1, uint64_t a2)
{
  sub_1D7EE5A18();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F21C10()
{
  v0 = sub_1D81924B4();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7F21C6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7F21C10();
  *a1 = result;
  return result;
}

uint64_t sub_1D7F21C9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7E51D20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7F21CC8()
{
  v1 = *(v0 + 27);
  v2 = v0[25];
  v3 = CACurrentMediaTime();
  sub_1D81921A4();
  v0[2] = 0.0;
  v0[3] = -2.68156159e154;
  MEMORY[0x1DA713260](0x3D656D6974, 0xE500000000000000);
  countAndFlagsBits = BlueprintPipelineRecorder.format(start:end:)(v2, v3)._countAndFlagsBits;
  MEMORY[0x1DA713260](countAndFlagsBits);

  MEMORY[0x1DA713260](0x3D726F727265202CLL, 0xE800000000000000);
  *(v0 + 4) = v1;
  sub_1D7E0631C(0, &qword_1EDBB2BC0);
  v5 = sub_1D8192334();
  OUTLINED_FUNCTION_2_28(v5, *(v0 + 2));

  v6 = sub_1D818FD94();
  sub_1D818FDD4();
  v7 = sub_1D8191B24();
  result = sub_1D8191E34();
  if (result)
  {
    if (!*(v0 + 21))
    {
      __break(1u);
      return result;
    }

    v9 = *(v0 + 11);
    v10 = *(v0 + 12);
    v11 = *(v0 + 10);

    sub_1D818FE04();

    if ((*(v9 + 88))(v10, v11) != *MEMORY[0x1E69E93E8])
    {
      (*(*(v0 + 11) + 8))(*(v0 + 12), *(v0 + 10));
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D818FD74();
    OUTLINED_FUNCTION_1_27(&dword_1D7DFF000, v6, v7, v13);
    MEMORY[0x1DA715D00](v12, -1, -1);
  }

  v14 = *(v0 + 23);
  v15 = v6;
  v16 = *(v0 + 16);
  v17 = *(v0 + 14);

  v14(v16, v17);
  swift_willThrow();

  v18 = *(v0 + 1);

  return v18();
}

uint64_t getEnumTagSinglePayload for BlueprintPipelineRecorder.Signpost(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BlueprintPipelineRecorder.Signpost(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t Settings.Shine.Generation.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D81924B4();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Settings.Shine.Generation.rawValue.getter()
{
  v1 = 0x63696D616E7964;
  if (*v0 != 1)
  {
    v1 = 0x636974617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D7F22200@<X0>(uint64_t *a1@<X8>)
{
  result = Settings.Shine.Generation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7F22228(uint64_t a1)
{
  v2 = sub_1D7F22868();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7F2227C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7F22868();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7F222D8(uint64_t a1)
{
  v2 = sub_1D7F22868();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D7F2232C()
{
  v0 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7F228BC();
  v14 = v12;
  v18 = 0;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D6E90], v6);
  sub_1D7F2296C();
  sub_1D7F229C4();
  *(swift_allocObject() + 16) = xmmword_1D81A1B70;
  v17 = 0;
  sub_1D818EC14();
  v16 = 1;
  sub_1D818EC14();
  v15 = 2;
  sub_1D818EC14();
  (*(v2 + 104))(v5, *MEMORY[0x1E69D6EA0], v0);
  sub_1D7F22A14();
  result = sub_1D818EC34();
  qword_1EDBBC5E8 = result;
  return result;
}

uint64_t static Settings.Shine.generation.getter()
{
  if (qword_1EDBBC5E0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D7F2268C()
{
  result = qword_1EDBBC608;
  if (!qword_1EDBBC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC608);
  }

  return result;
}

_BYTE *_s5ShineVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s5ShineV10GenerationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F22868()
{
  result = qword_1EDBBC600;
  if (!qword_1EDBBC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC600);
  }

  return result;
}

void sub_1D7F228BC()
{
  if (!qword_1EDBBC588)
  {
    sub_1D7F22918();
    v0 = sub_1D818EC54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC588);
    }
  }
}

unint64_t sub_1D7F22918()
{
  result = qword_1EDBBC5F0;
  if (!qword_1EDBBC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC5F0);
  }

  return result;
}

void sub_1D7F2296C()
{
  if (!qword_1EDBB2CD8)
  {
    sub_1D7F229C4();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2CD8);
    }
  }
}

void sub_1D7F229C4()
{
  if (!qword_1EDBBC5A0)
  {
    v0 = sub_1D818EC24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC5A0);
    }
  }
}

unint64_t sub_1D7F22A14()
{
  result = qword_1EDBBC5F8;
  if (!qword_1EDBBC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC5F8);
  }

  return result;
}

uint64_t FloatingTabBarNavigationTitleViewLayout.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

void sub_1D7F22B20(uint64_t a1@<X8>)
{
  *a1 = sub_1D7F22B7C();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_1D7F22B7C()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentInsets;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1D7F22BC8()
{
  OUTLINED_FUNCTION_155();
  v5 = (v0 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentInsets);
  result = swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

id sub_1D7F22C88(id result)
{
  if (*(v1 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_visibility) != (result & 1))
  {
    [v1 setNeedsLayout];

    return [v1 layoutIfNeeded];
  }

  return result;
}

id sub_1D7F22CE8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_visibility);
  *(v1 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_visibility) = a1 & 1;
  return sub_1D7F22C88(v2);
}

double sub_1D7F22D04()
{
  if (v0[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_showExpandedHeight] != 1)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  [v0 height];
  return v1 + -44.0 + -12.0;
}

id FloatingTabBarNavigationTitleView.init(contentView:layout:)(void *a1, char *a2)
{
  v4 = *a2;
  v5 = &v2[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentInsets];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v5 = *MEMORY[0x1E69DDCE0];
  v5[1] = v6;
  v2[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_showExpandedHeight] = 0;
  v2[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_visibility] = 1;
  v7 = &v2[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastLeadingItemsRect];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &v2[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastTrailingItemsRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  *&v2[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentView] = a1;
  v2[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_layout] = v4;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for FloatingTabBarNavigationTitleView();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 addSubview_];
  [v10 setHideStandardTitle_];

  return v10;
}

id FloatingTabBarNavigationTitleView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void FloatingTabBarNavigationTitleView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_showExpandedHeight) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_visibility) = 1;
  v3 = v0 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastLeadingItemsRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = v0 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastTrailingItemsRect;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D7F23074()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FloatingTabBarNavigationTitleView();
  v2 = objc_msgSendSuper2(&v6, sel_description);
  v3 = sub_1D8190F14();

  BYTE8(v5) = 0;
  sub_1D81921A4();
  MEMORY[0x1DA713260](0x74756F79616C202CLL, 0xE90000000000003DLL);
  OUTLINED_FUNCTION_7_15();
  MEMORY[0x1DA713260](0x696269736976202CLL, 0xED00003D7974696CLL);
  *&v5 = v1[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_visibility];
  OUTLINED_FUNCTION_7_15();
  sub_1D8190DB4();
  MEMORY[0x1DA713260](*(&v5 + 1), 0xE000000000000000);

  return v3;
}

id sub_1D7F231C0(id a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_layout))
  {
    v4 = [a1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 != 1)
    {
      v18 = [a1 _uip_sidebar];
      v19 = [v18 _isVisible];

      v20 = [*(v2 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentView) superview];
      v21 = sub_1D8043988(v20);

      if (v21)
      {
        v22 = (*&v21[OBJC_IVAR____TtC5TeaUI25StatusBannerContainerView_isStatusBannerVisibleCheck])();

        if ((v19 | v22))
        {
          goto LABEL_10;
        }
      }

      else if (v19)
      {
        goto LABEL_10;
      }

      v23 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v23 = 1;
LABEL_13:
    sub_1D7F22CE8(v23);
    goto LABEL_14;
  }

  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  [result bounds];
  v9 = v8;

  result = [a1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = result;
  [result bounds];
  v12 = v11;

  v13 = [a1 _uip_sidebar];
  v14 = [v13 _isVisible];

  sub_1D7F22CE8(1);
  v15 = [a1 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == 1)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v17 = (v9 < v12) | v14 ^ 1;
LABEL_15:

  return sub_1D7F239AC((v17 & 1));
}

id sub_1D7F23454()
{
  v6 = v0;
  v46.receiver = v0;
  v46.super_class = type metadata accessor for FloatingTabBarNavigationTitleView();
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  v7 = [v0 overlays];
  OUTLINED_FUNCTION_0_30();
  if (v8)
  {
    v9 = v8;
    sub_1D8191C04();
    v2 = v47;
    v3 = v48;
    v4 = v49;
    v5 = v50;

    v10 = OUTLINED_FUNCTION_4_19();
    if (!v11)
    {
      v2 = v10;
      v3 = v10;
      v4 = v10;
      v5 = v10;
    }
  }

  v12 = [v6 overlays];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v12)
  {
    v16 = v12;
    sub_1D8191C14();
    v1 = v51;
    v13 = v52;
    v14 = v53;
    v15 = v54;

    v17 = OUTLINED_FUNCTION_4_19();
    if (!v11)
    {
      v1 = v17;
      v13 = v17;
      v14 = v17;
      v15 = v17;
    }
  }

  v18 = &v6[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastLeadingItemsRect];
  *v18 = v2;
  v18[1] = v3;
  v18[2] = v4;
  v18[3] = v5;
  *(v18 + 32) = 0;
  v19 = &v6[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastTrailingItemsRect];
  *v19 = v1;
  v19[1] = v13;
  v19[2] = v14;
  v19[3] = v15;
  *(v19 + 32) = 0;
  v55.origin.x = OUTLINED_FUNCTION_5_13();
  MaxX = CGRectGetMaxX(v55);
  OUTLINED_FUNCTION_2_29();
  Width = CGRectGetWidth(v56);
  v57.origin.x = OUTLINED_FUNCTION_3_30();
  v22 = Width - CGRectGetMinX(v57);
  if (MaxX > v22)
  {
    v22 = MaxX;
  }

  v23 = v22 + 6.0;
  if (v6[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_showExpandedHeight] == 1)
  {
    OUTLINED_FUNCTION_2_29();
    Height = CGRectGetHeight(v58);
    v25 = v6;
    v26 = (Height - sub_1D7F22D04() + -44.0) * 0.5;
    if (v26 < 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v26;
    }

    v28 = *&v6[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentView];
    [v6 safeAreaInsets];
    v30 = v29;
    v31 = sub_1D7F22D04() + v27;
    OUTLINED_FUNCTION_2_29();
    v32 = CGRectGetWidth(v59) - (v23 + v23);
    [v6 safeAreaInsets];
    v35 = v32 - (v33 + v34);
    OUTLINED_FUNCTION_1_28();
    v36 = 44.0;
  }

  else
  {
    v28 = *&v6[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_contentView];
    v25 = &selRef_attemptTransitionToState_animated_;
    [v6 safeAreaInsets];
    v30 = v37;
    OUTLINED_FUNCTION_2_29();
    v31 = v38;
    OUTLINED_FUNCTION_2_29();
    v39 = CGRectGetWidth(v60);
    [v6 safeAreaInsets];
    v41 = v40;
    v43 = v42;
    OUTLINED_FUNCTION_2_29();
    v36 = fmin(CGRectGetHeight(v61), 44.0);
    v35 = v39 - (v23 + v23) - (v41 + v43);
    OUTLINED_FUNCTION_1_28();
  }

  [v28 setFrame_];
  if ((v6[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_visibility] & 1) == 0)
  {
    result = [v28 isHidden];
    if (result)
    {
      return result;
    }

    v44 = 1;
    return [v28 setHidden_];
  }

  [v28 frame];
  v44 = CGRectGetWidth(v62) < 100.0;
  result = [v28 isHidden];
  if (v44 != result)
  {
    return [v28 setHidden_];
  }

  return result;
}

id sub_1D7F237E8()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FloatingTabBarNavigationTitleView();
  objc_msgSendSuper2(&v8, sel_contentDidChange);
  v2 = [v0 overlays];
  OUTLINED_FUNCTION_0_30();
  if (v3)
  {
    v4 = v3;
    sub_1D8191C04();

    OUTLINED_FUNCTION_4_19();
  }

  v5 = [v1 overlays];
  if (v5)
  {
    v6 = v5;
    sub_1D8191C14();

    OUTLINED_FUNCTION_4_19();
  }

  if ((*(v1 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastLeadingItemsRect + 32) & 1) != 0 || (v9.origin.x = OUTLINED_FUNCTION_5_13(), !CGRectEqualToRect(v9, v11)) || (*(v1 + OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_lastTrailingItemsRect + 32) & 1) != 0 || (v10.origin.x = OUTLINED_FUNCTION_3_30(), result = CGRectEqualToRect(v10, v12), (result & 1) == 0))
  {
    [v1 setNeedsLayout];
    return [v1 layoutIfNeeded];
  }

  return result;
}

id sub_1D7F239AC(id result)
{
  if (v1[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_showExpandedHeight] != (result & 1))
  {
    v1[OBJC_IVAR____TtC5TeaUI33FloatingTabBarNavigationTitleView_showExpandedHeight] = result & 1;
    v2 = 102.0;
    if ((result & 1) == 0)
    {
      v2 = 0.0;
    }

    [v1 setHeight_];
    [v1 setNeedsLayout];

    return [v1 layoutIfNeeded];
  }

  return result;
}

id FloatingTabBarNavigationTitleView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v5 = objc_allocWithZone(v4);

  return [v5 initWithFrame_];
}

id FloatingTabBarNavigationTitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBarNavigationTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D7F23BF0()
{
  result = qword_1ECA0DBC8;
  if (!qword_1ECA0DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DBC8);
  }

  return result;
}

_BYTE *sub_1D7F23DA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F23E84()
{
  result = qword_1ECA0DBD8;
  if (!qword_1ECA0DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DBD8);
  }

  return result;
}

uint64_t sub_1D7F23F08()
{
  v1 = v0[1];
  v43 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  if (!v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v41 = v0[5];
  v42 = v0[4];
  v9 = v0[7];
  v10 = v0[6];
  v11 = v0[9];
  v12 = v0[8];
  v13 = *v0;
  sub_1D8190DB4();
  sub_1D7EE4E58();
  v15 = v14;
  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    OUTLINED_FUNCTION_2_10(v16);
    OUTLINED_FUNCTION_1_29();
    v15 = v32;
  }

  *(v15 + 16) = v17 + 1;
  v18 = (v15 + 32 * v17);
  v18[4] = 6580516;
  v18[5] = 0xE300000000000000;
  v18[6] = v13;
  v18[7] = v1;
  v7 = v12;
  v8 = v11;
  v4 = v10;
  v6 = v9;
  v5 = v41;
  v2 = v42;
  if (v3)
  {
LABEL_7:
    sub_1D8190DB4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v33;
    }

    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_2_10(v19);
      OUTLINED_FUNCTION_1_29();
      v15 = v34;
    }

    *(v15 + 16) = v20 + 1;
    v21 = (v15 + 32 * v20);
    v21[4] = 0x616D6568637324;
    v21[5] = 0xE700000000000000;
    v21[6] = v43;
    v21[7] = v3;
  }

LABEL_12:
  if (v5)
  {
    sub_1D8190DB4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v35;
    }

    v23 = *(v15 + 16);
    v22 = *(v15 + 24);
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_2_10(v22);
      OUTLINED_FUNCTION_1_29();
      v15 = v36;
    }

    *(v15 + 16) = v23 + 1;
    v24 = (v15 + 32 * v23);
    v24[4] = 0x746E656D6D6F6324;
    v24[5] = 0xE800000000000000;
    v24[6] = v2;
    v24[7] = v5;
  }

  if (v6)
  {
    sub_1D8190DB4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v37;
    }

    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    if (v26 >= v25 >> 1)
    {
      OUTLINED_FUNCTION_2_10(v25);
      OUTLINED_FUNCTION_1_29();
      v15 = v38;
    }

    *(v15 + 16) = v26 + 1;
    v27 = (v15 + 32 * v26);
    v27[4] = 0x656C74697424;
    v27[5] = 0xE600000000000000;
    v27[6] = v4;
    v27[7] = v6;
  }

  if (v8)
  {
    sub_1D8190DB4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_31();
      v15 = v39;
    }

    v29 = *(v15 + 16);
    v28 = *(v15 + 24);
    if (v29 >= v28 >> 1)
    {
      OUTLINED_FUNCTION_2_10(v28);
      OUTLINED_FUNCTION_1_29();
      v15 = v40;
    }

    *(v15 + 16) = v29 + 1;
    v30 = (v15 + 32 * v29);
    v30[4] = 0x7470697263736564;
    v30[5] = 0xEB000000006E6F69;
    v30[6] = v7;
    v30[7] = v8;
  }

  return v15;
}

uint64_t sub_1D7F241C4()
{
  sub_1D81905D4();
  sub_1D7F244D8();
  sub_1D7F246BC();
  return sub_1D8190AF4();
}

uint64_t sub_1D7F24270()
{
  v0 = sub_1D7F23F08();
  sub_1D7FDF060(v0);

  swift_getKeyPath();
  sub_1D7F245A0();
  sub_1D7F24664();
  sub_1D7F24764(&qword_1ECA0DC00, sub_1D7F245A0);
  sub_1D7F24764(&qword_1ECA0DC10, sub_1D7F24664);
  return sub_1D8190AD4();
}

uint64_t sub_1D7F2439C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1D7E50D2C();
  sub_1D8190DB4();
  sub_1D8190DB4();
  result = sub_1D8190814();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = result;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8 & 1;
  *(a3 + 48) = v9;
  return result;
}

double sub_1D7F24428@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7F2439C(*(a1 + 8), *(a1 + 16), v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

void sub_1D7F244D8()
{
  if (!qword_1ECA0DBE0)
  {
    sub_1D7F245A0();
    sub_1D7F24664();
    sub_1D7F24764(&qword_1ECA0DC00, sub_1D7F245A0);
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0DBE0);
    }
  }
}

void sub_1D7F245A0()
{
  if (!qword_1ECA0DBE8)
  {
    sub_1D7F245F8();
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0DBE8);
    }
  }
}

void sub_1D7F245F8()
{
  if (!qword_1ECA0DBF0)
  {
    sub_1D7EE5958();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0DBF0);
    }
  }
}

void sub_1D7F24664()
{
  if (!qword_1ECA0DBF8)
  {
    v0 = type metadata accessor for VerticallyLabeledContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0DBF8);
    }
  }
}

unint64_t sub_1D7F246BC()
{
  result = qword_1ECA0DC08;
  if (!qword_1ECA0DC08)
  {
    sub_1D7F244D8();
    sub_1D7F24764(&qword_1ECA0DC10, sub_1D7F24664);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DC08);
  }

  return result;
}

uint64_t sub_1D7F24764(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7F247AC()
{
  result = qword_1ECA0DC18;
  if (!qword_1ECA0DC18)
  {
    sub_1D7F24838();
    sub_1D7F246BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DC18);
  }

  return result;
}

void sub_1D7F24838()
{
  if (!qword_1ECA0DC20)
  {
    sub_1D7F244D8();
    v0 = sub_1D8190B14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0DC20);
    }
  }
}

uint64_t static Commands.reportRadar.getter()
{
  if (qword_1EDBB3758 != -1)
  {
    swift_once();
  }
}

double sub_1D7F248FC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>)
{
  v5 = v4;
  v7 = a1[1];
  v80 = *a1;
  v81 = v7;
  v82 = *(a1 + 4);
  v8 = sub_1D7F24D1C(&v80, 270.0);
  v10 = v9;
  v78 = v12;
  v79 = v11;
  v13 = *(&v80 + 1);
  v14 = v81;
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_1D8190DB4();
  v15 = sub_1D8048238();
  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = sub_1D7F3A980(v13, v14, v15);
  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB980]];
  [v19 lineHeight];
  v21 = v20;
  [v19 descender];
  v23 = v22;
  [v17 boundingRectWithSize:1 options:0 context:{240.0, 1.79769313e308}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v72 = v10;
  v73 = v8;
  v83.origin.x = v8;
  v83.origin.y = v10;
  v83.size.height = v78;
  v83.size.width = v79;
  v77 = v23 - v21 + CGRectGetMaxY(v83) + 56.0;
  v84.origin.x = v25;
  v84.origin.y = v27;
  v84.size.width = v29;
  v84.size.height = v31;
  Height = CGRectGetHeight(v84);
  v32 = v82;
  if (v82)
  {
    v33 = v17;
    v34 = *(&v81 + 1);
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    sub_1D8190DB4();
    v35 = sub_1D804841C();
    v36 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v37 = v34;
    v17 = v33;
    v38 = sub_1D7F3A980(v37, v32, v35);
    v39 = [v18 systemFontOfSize_];
    [v39 lineHeight];
    v41 = v40;
    [v39 &_OBJC_LABEL_PROTOCOL___TUPageViewControllerDataSource + 3];
    v43 = v42;
    [v38 boundingRectWithSize:1 options:0 context:{240.0, 1.79769313e308}];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = 15.0;
    v85.origin.x = 15.0;
    v85.size.height = Height;
    v85.origin.y = v77;
    v85.size.width = 240.0;
    v53 = v43 - v41 + CGRectGetMaxY(v85) + 29.0;
    v86.origin.x = v45;
    v86.origin.y = v47;
    v86.size.width = v49;
    v86.size.height = v51;
    v54 = CGRectGetHeight(v86);

    v55 = 15.0;
    v56 = 240.0;
  }

  else
  {
    sub_1D7F24E34();
    v38 = sub_1D8049DF0();
    v52 = 15.0;
    v55 = 0.0;
    v53 = 0.0;
    v56 = 0.0;
    v54 = 0.0;
  }

  v87.origin.x = v55;
  v87.origin.y = v53;
  v87.size.width = v56;
  v87.size.height = v54;
  MaxY = CGRectGetMaxY(v87);
  v88.origin.x = v52;
  v88.origin.y = v77;
  v88.size.width = 240.0;
  v88.size.height = Height;
  v58 = CGRectGetMaxY(v88);
  if (MaxY > v58)
  {
    v59 = MaxY;
  }

  else
  {
    v59 = v58;
  }

  v60 = [v18 systemFontOfSize_];
  [v60 descender];
  v62 = v61;

  v63.f64[0] = a3;
  v63.f64[1] = a4;
  v64 = vaddq_f64(v63, xmmword_1D81A4480);
  __asm { FMOV            V1.2D, #0.5 }

  *a2 = vmulq_f64(v64, _Q1);
  *(a2 + 16) = 0x4070E00000000000;
  v70 = v59 + v62 + 46.0;
  *(a2 + 24) = v70;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0x4070E00000000000;
  *(a2 + 56) = v70;
  *(a2 + 64) = v73;
  *(a2 + 72) = v72;
  *(a2 + 80) = v79;
  *(a2 + 88) = v78;
  *(a2 + 96) = 0x402E000000000000;
  *(a2 + 104) = v77;
  *(a2 + 112) = 0x406E000000000000;
  *(a2 + 120) = Height;
  *(a2 + 128) = v17;
  result = v53;
  *(a2 + 136) = v55;
  *(a2 + 144) = v53;
  *(a2 + 152) = v56;
  *(a2 + 160) = v54;
  *(a2 + 168) = v38;
  return result;
}

double sub_1D7F24D1C(id *a1, double a2)
{
  if (!*a1)
  {
    return 0.0;
  }

  v3 = *a1;
  [v3 size];
  v5 = v4;
  [v3 size];
  v7 = v6;

  v8 = 92.0;
  if (v7 >= v5)
  {
    v8 = v5 * (92.0 / v7);
  }

  return (a2 - v8) * 0.5;
}

uint64_t sub_1D7F24DD8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7F24E34()
{
  result = qword_1EDBB3168;
  if (!qword_1EDBB3168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3168);
  }

  return result;
}

uint64_t StatusBarColorStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

Swift::Void __swiftcall UISplitViewController.togglePrimaryViewVisibility(animated:)(Swift::Bool animated)
{
  v25 = UISplitViewController.toggleDisplayMode(from:)([isEscapingClosureAtFileLocation displayMode]);
  if (!v25.is_nil)
  {
    value = v25.value;
    switch([isEscapingClosureAtFileLocation displayMode])
    {
      case 1uLL:
        if (value == 2 || value == 4)
        {
          goto LABEL_12;
        }

        goto LABEL_3;
      case 2uLL:
      case 4uLL:
        if (value != 1)
        {
          goto LABEL_3;
        }

LABEL_12:
        if (!animated)
        {
          goto LABEL_16;
        }

        v6 = [objc_opt_self() defaultCenter];
        if (qword_1EDBB55C0 == -1)
        {
          goto LABEL_14;
        }

        goto LABEL_21;
      default:
LABEL_3:
        if (animated)
        {
          v4 = 0;
LABEL_15:
          v7 = objc_opt_self();
          OUTLINED_FUNCTION_0_32();
          v8 = swift_allocObject();
          *(v8 + 16) = isEscapingClosureAtFileLocation;
          *(v8 + 24) = value;
          v23 = sub_1D7F25A88;
          v24 = v8;
          v19 = MEMORY[0x1E69E9820];
          v20 = 1107296256;
          v21 = sub_1D7E64940;
          v22 = &block_descriptor_20;
          v9 = _Block_copy(&v19);
          v10 = isEscapingClosureAtFileLocation;

          OUTLINED_FUNCTION_0_32();
          v11 = swift_allocObject();
          *(v11 + 16) = v4;
          *(v11 + 24) = v10;
          v23 = sub_1D7F256A4;
          v24 = v11;
          v19 = MEMORY[0x1E69E9820];
          v20 = 1107296256;
          v21 = sub_1D7EB30D4;
          v22 = &block_descriptor_26;
          v12 = _Block_copy(&v19);
          v13 = v10;

          [v7 animateWithDuration:v9 animations:v12 completion:0.15];
          _Block_release(v12);
          _Block_release(v9);
          return;
        }

LABEL_16:
        v14 = objc_opt_self();
        OUTLINED_FUNCTION_0_32();
        v6 = swift_allocObject();
        v6[2] = isEscapingClosureAtFileLocation;
        v6[3] = value;
        OUTLINED_FUNCTION_0_32();
        value = swift_allocObject();
        *(value + 16) = sub_1D7F25670;
        *(value + 24) = v6;
        v23 = sub_1D7E74D44;
        v24 = value;
        v19 = MEMORY[0x1E69E9820];
        v20 = 1107296256;
        v21 = sub_1D7E74D74;
        v22 = &block_descriptor_7;
        v15 = _Block_copy(&v19);
        isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

        [v14 performWithoutAnimation_];
        _Block_release(v15);
        LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

        if (v15)
        {
          __break(1u);
        }

        else
        {
          value = swift_allocObject();
          *(value + 16) = isEscapingClosureAtFileLocation;
          OUTLINED_FUNCTION_0_32();
          v16 = swift_allocObject();
          *(v16 + 16) = sub_1D7F25680;
          *(v16 + 24) = value;
          v23 = sub_1D7F159BC;
          v24 = v16;
          v19 = MEMORY[0x1E69E9820];
          v20 = 1107296256;
          v21 = sub_1D7E74D74;
          v22 = &block_descriptor_13_0;
          v17 = _Block_copy(&v19);
          v18 = isEscapingClosureAtFileLocation;

          [v14 performWithoutAnimation_];
          _Block_release(v17);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }
        }

        __break(1u);
LABEL_21:
        swift_once();
LABEL_14:
        [v6 postNotificationName:qword_1EDBB55C8 object:isEscapingClosureAtFileLocation];

        v4 = 1;
        goto LABEL_15;
    }
  }
}

UISplitViewControllerDisplayMode_optional __swiftcall UISplitViewController.toggleDisplayMode()()
{
  v1 = UISplitViewController.toggleDisplayMode(from:)([v0 displayMode]);
  v1.is_nil &= 1u;
  return v1;
}

void sub_1D7F253F8(int a1, char a2, id a3)
{
  if (a2)
  {
    v4 = [a3 view];
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsLayout];

      v6 = [a3 view];
      if (v6)
      {
        v7 = v6;
        [v6 layoutIfNeeded];

        v8 = [objc_opt_self() defaultCenter];
        if (qword_1EDBB55D8 != -1)
        {
          swift_once();
        }

        [v8 postNotificationName:qword_1EDBB55E0 object:a3];

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:
  type metadata accessor for CardSplitViewController();
  if (!swift_dynamicCastClass())
  {
    UISplitViewController.resetPreferredDisplayMode()();
  }
}

Swift::Void __swiftcall UISplitViewController.resetPreferredDisplayMode()()
{
  v1 = v0;
  type metadata accessor for TabBarSplitViewController();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    if ((TabBarSplitViewController.isImmersiveSidebarAllowed.getter() & 1) == 0 && [v3 preferredDisplayMode] != 1)
    {
      [v3 setPreferredDisplayMode_];
    }
  }
}

void sub_1D7F255BC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UISplitViewController.togglePrimaryViewVisibility(animated:)(a3);
}

UISplitViewControllerDisplayMode_optional __swiftcall UISplitViewController.toggleDisplayMode(from:)(UISplitViewControllerDisplayMode from)
{
  if ((from - 2) >= 5)
  {
    if (from)
    {
      if (from == UISplitViewControllerDisplayModeSecondaryOnly)
      {
        type metadata accessor for CardSplitViewController();
        swift_dynamicCastClass();
        v1 = 0;
        from = UISplitViewControllerDisplayModeOneBesideSecondary;
        goto LABEL_8;
      }

      from = UISplitViewControllerDisplayModeAutomatic;
    }

    v1 = 1;
    goto LABEL_8;
  }

  v1 = 0;
  from = UISplitViewControllerDisplayModeSecondaryOnly;
LABEL_8:
  result.value = from;
  result.is_nil = v1;
  return result;
}

unint64_t UISplitViewController.statusBarColorStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = [v1 isCollapsed];
  result = [v1 displayMode];
  *a1 = ((result & 0xFFFFFFFFFFFFFFFELL) == 2) & ~v3;
  return result;
}

uint64_t sub_1D7F25710()
{
  v0 = sub_1D818E454();
  __swift_allocate_value_buffer(v0, qword_1EDBB30A8);
  __swift_project_value_buffer(v0, qword_1EDBB30A8);
  sub_1D8190EE4();
  return sub_1D818E424();
}

uint64_t static UISplitViewController.willPresentModalNotification.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBB30A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D818E454();
  v3 = __swift_project_value_buffer(v2, qword_1EDBB30A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1D7F25944()
{
  result = qword_1ECA0DC28;
  if (!qword_1ECA0DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DC28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusBarColorStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

id ScreenScaleImageProcessor.process(_:)(uint64_t a1)
{
  sub_1D7E0E768(a1, &v28);
  sub_1D7E0631C(0, qword_1EDBB74A8);
  type metadata accessor for ScreenScaleImageRequest();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = v22;
  v2 = sub_1D8190DB4();
  sub_1D7F1E6C0(v2, &v22);

  if (!v23)
  {

    sub_1D7F25CC8(&v22);
    return 0;
  }

  v28 = v22;
  v29 = v23;
  sub_1D7E05450(&v24, &v30);

  sub_1D7E05450(&v30, v34);
  v3 = v35;
  v4 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v5 = AssetHandleType.image.getter(v3, v4);
  if (!v5)
  {
LABEL_9:

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    return 0;
  }

  v6 = v5;
  v7 = [v5 CGImage];
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = *(v1 + 40);
  v9 = v7;
  v10 = [v6 imageOrientation];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 scale:v10 orientation:v8];

  if (*(v1 + 40) == *(v1 + 48))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    return v11;
  }

  else
  {
    [v11 size];
    UIImage.with(size:supplementActions:)(0, 0, v14, v15, v16, v17, v18, v19, v21, v22, v23, v24, *(&v24 + 1), v25, v26, v27, v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34[0], v34[1], v34[2]);
    v12 = v20;

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return v12;
}

uint64_t sub_1D7F25CC8(uint64_t a1)
{
  sub_1D7F25D24();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F25D24()
{
  if (!qword_1EDBB3410)
  {
    sub_1D7F25D7C();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3410);
    }
  }
}

void sub_1D7F25D7C()
{
  if (!qword_1EDBB3418)
  {
    sub_1D7E0631C(255, &qword_1EDBBB318);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB3418);
    }
  }
}

uint64_t sub_1D7F25E80()
{
  result = swift_allocObject();
  *(result + 40) = &type metadata for DimContentSelectionStyle;
  *(result + 48) = &protocol witness table for DimContentSelectionStyle;
  *(result + 16) = 0x3FE0000000000000;
  *(result + 24) = 0;
  qword_1EDBBA410 = result | 0x4000000000000000;
  return result;
}

unint64_t static SelectionBehavior.defaultKeyboard.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDBBA408 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBBA410;
  *a1 = qword_1EDBBA410;

  return sub_1D7F25F40(v2);
}

unint64_t sub_1D7F25F40(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7F25F78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D7F25FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

id sub_1D7F26040(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [Strong *a1];

  return v4;
}

id GlassBarCompressionAnimation.__allocating_init(viewController:bottomCompression:)(void *a1, char *a2)
{
  v4 = *a2;
  v8 = 1;
  v7 = v4;
  v5 = objc_allocWithZone(v2);
  return GlassBarCompressionAnimation.init(viewController:topCompression:bottomCompression:)(a1, &v8, &v7);
}

id GlassBarCompressionAnimation.init(viewController:topCompression:bottomCompression:)(void *a1, _BYTE *a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_scrollView] = 0;
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_topCompression] = a2;
  v3[OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_bottomCompression] = a3;
  v8 = [a1 tabBarController];
  v9 = [v8 ts_floatingTabBarContainerView];

  *&v3[OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_floatingTabBarContainerView] = v9;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

Swift::Void __swiftcall GlassBarCompressionAnimation.attached(to:)(UIScrollView *to)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_scrollView);
  *(v1 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_scrollView) = to;

  v3 = to;
}

Swift::Void __swiftcall GlassBarCompressionAnimation.detached(from:)(UIScrollView *from)
{
  v2 = OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_scrollView;
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_scrollView);
  if (v3)
  {
    v4 = [v3 bottomEdgeEffect];
    [v4 setHidden_];

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;
}

Swift::Void __swiftcall GlassBarCompressionAnimation.detached()()
{
  sub_1D7F26434(1.0);

  sub_1D7F265FC(1.0);
}

void sub_1D7F26434(double a1)
{
  v2 = v1;
  v4 = sub_1D7F26040(&selRef_navigationController);
  if (v4)
  {
    if (*(v1 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_topCompression) == 1)
    {
      v18 = v4;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        if (a1 == 0.0)
        {
          v7 = UIViewController.effectiveNavigationItem.getter();
          v8 = [v7 _preferredNavigationBarVisibility];

          if (v8 != 2)
          {
            v9 = UIViewController.effectiveNavigationItem.getter();
            [v9 _setPreferredNavigationBarVisibility_];

            v6 = v9;
          }
        }
      }

      v10 = [v18 navigationBar];
      [v10 setAlpha_];

      v11 = *(v2 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_floatingTabBarContainerView);
      if (v11)
      {
        v12 = sub_1D7F26A2C();
        v13 = 1.0;
        if (v12)
        {
          v13 = a1;
        }

        [v11 setAlpha_];
      }

      v14 = swift_unknownObjectWeakLoadStrong();
      v4 = v18;
      if (v14)
      {
        if (a1 > 0.0)
        {
          v15 = UIViewController.effectiveNavigationItem.getter();
          v16 = [v15 _preferredNavigationBarVisibility];

          if (v16)
          {
            v17 = UIViewController.effectiveNavigationItem.getter();
            [v17 _setPreferredNavigationBarVisibility_];

            v14 = v17;
          }
        }

        v4 = v18;
      }
    }
  }
}

void sub_1D7F265FC(double a1)
{
  v3 = sub_1D7F26040(&selRef_tabBarController);
  if (!v3)
  {
    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_bottomCompression);
  if (v4 >= 2)
  {
    v20 = v3;
    if (v4 == 2)
    {
      v5 = [v3 tabBar];
      [v5 setAlpha_];

      v6 = [v20 bottomAccessory];
      if (!v6)
      {
        goto LABEL_14;
      }

      v7 = v6;
      v8 = [v6 contentView];

      v9 = v8;
    }

    else
    {
      v10 = [v3 bottomAccessory];
      if (v10)
      {

        v11 = [v20 tabBar];
        [v11 setAlpha_];

        v12 = [v20 bottomAccessory];
        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = v12;
        v8 = [v12 contentView];

        [v8 setAlpha_];
LABEL_13:

LABEL_14:
        v14 = *(v1 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_scrollView);
        v3 = v20;
        if (v14)
        {
          v15 = v14;
          v16 = [v20 tabBar];
          [v16 alpha];
          v18 = v17;

          v19 = [v15 bottomEdgeEffect];
          [v19 setHidden_];

          v3 = v20;
        }

        goto LABEL_16;
      }

      v9 = [v20 tabBar];
      v8 = v9;
    }

    [v9 setAlpha_];
    goto LABEL_13;
  }

LABEL_16:
}

void GlassBarCompressionAnimation.update(withPercentage:)(double a1)
{
  v1 = 1.0 - a1;
  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  if (v1 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  sub_1D7F26434(v2);

  sub_1D7F265FC(v2);
}

Swift::Void __swiftcall GlassBarCompressionAnimation.reload(with:)(UITraitCollection_optional with)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI28GlassBarCompressionAnimation_floatingTabBarContainerView);
  if (v2)
  {
    v8 = v2;
    if (sub_1D7F26A2C())
    {
      v3 = sub_1D7F26040(&selRef_navigationController);
      if (v3)
      {
        v4 = v3;
        v5 = [v3 navigationBar];
        [v5 alpha];
        v7 = v6;

        [v8 setAlpha_];
      }
    }

    else
    {
      [v8 setAlpha_];
    }
  }
}

id sub_1D7F26A2C()
{
  v0 = sub_1D7F26040(&selRef_tabBarController);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    v4 = [v1 sidebar];
    v5 = [v4 isHidden];

    v1 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static GlassBarCompressionAnimation.TopCompression.options.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_33(a1, &qword_1EDBBC5B8, &type metadata for GlassBarCompressionAnimation.TopCompression);
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D7F08FAC(0, 2, 0);
  v7 = 0;
  v8 = 0;
  v9 = v19;
  v16[1] = "op with alpha transition";
  do
  {
    v10 = v7;
    if (*(&unk_1F52E3FB0 + v8 + 32))
    {
      v18 = 1;
    }

    else
    {
      v17 = 0;
      OUTLINED_FUNCTION_1_30();
    }

    sub_1D818EC14();
    v19 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D7F08FAC(v11 > 1, v12 + 1, 1);
      v9 = v19;
    }

    *(v9 + 16) = v12 + 1;
    OUTLINED_FUNCTION_2_30();
    (*(v3 + 32))(v13 + v14 * v12, v6, v1);
    v7 = 1;
    v8 = 1u;
  }

  while ((v10 & 1) == 0);
  return v9;
}

TeaUI::GlassBarCompressionAnimation::TopCompression_optional __swiftcall GlassBarCompressionAnimation.TopCompression.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t GlassBarCompressionAnimation.TopCompression.rawValue.getter()
{
  if (*v0)
  {
    return 1701077350;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_1D7F26E74@<X0>(uint64_t *a1@<X8>)
{
  result = GlassBarCompressionAnimation.TopCompression.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7F26E9C(uint64_t a1)
{
  v2 = sub_1D7F279D4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7F26EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7F279D4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7F26F4C(uint64_t a1)
{
  v2 = sub_1D7F279D4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t static GlassBarCompressionAnimation.BottomCompression.options.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_33(a1, &qword_1EDBBC5B0, &type metadata for GlassBarCompressionAnimation.BottomCompression);
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - v5;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D7F08FCC(0, 4, 0);
  v7 = 0;
  v8 = v19;
  v14[4] = "Fade When No Accessory";
  v14[5] = "Never: No compression";
  v14[2] = " transition in any state";
  v14[3] = " accessory attached";
  v14[1] = "op with alpha transition";
  do
  {
    switch(byte_1F52E4050[v7 + 32])
    {
      case 1:
        v16 = 1;
        break;
      case 2:
        v17 = 2;
        break;
      case 3:
        v18 = 3;
        break;
      default:
        v15 = 0;
        OUTLINED_FUNCTION_1_30();
        break;
    }

    sub_1D818EC14();
    v19 = v8;
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1D7F08FCC(v9 > 1, v10 + 1, 1);
      v8 = v19;
    }

    ++v7;
    *(v8 + 16) = v10 + 1;
    OUTLINED_FUNCTION_2_30();
    (*(v3 + 32))(v11 + v12 * v10, v6, v1);
  }

  while (v7 != 4);
  return v8;
}

TeaUI::GlassBarCompressionAnimation::BottomCompression_optional __swiftcall GlassBarCompressionAnimation.BottomCompression.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GlassBarCompressionAnimation.BottomCompression.rawValue.getter()
{
  result = 0x726576656ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6F446C6C6F726373;
      break;
    case 2:
      result = 1701077350;
      break;
    case 3:
      result = 0x63416F4E65646166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7F27378@<X0>(uint64_t *a1@<X8>)
{
  result = GlassBarCompressionAnimation.BottomCompression.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7F273A0(uint64_t a1)
{
  v2 = sub_1D7F27980();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7F273F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7F27980();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7F27450(uint64_t a1)
{
  v2 = sub_1D7F27980();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

id GlassBarCompressionAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GlassBarCompressionAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D7F275BC()
{
  result = qword_1EDBB6508[0];
  if (!qword_1EDBB6508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB6508);
  }

  return result;
}

unint64_t sub_1D7F27640()
{
  result = qword_1EDBB64F8;
  if (!qword_1EDBB64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB64F8);
  }

  return result;
}

uint64_t sub_1D7F276C4(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7F27728(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7F27728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for GlassBarCompressionAnimation.TopCompression(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for GlassBarCompressionAnimation.BottomCompression(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F27980()
{
  result = qword_1EDBB64F0;
  if (!qword_1EDBB64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB64F0);
  }

  return result;
}

unint64_t sub_1D7F279D4()
{
  result = qword_1EDBB6500;
  if (!qword_1EDBB6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB6500);
  }

  return result;
}

uint64_t TabBarSplitViewImmersiveSidebarState.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D7F27ACC()
{
  result = qword_1ECA0DC78;
  if (!qword_1ECA0DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TabBarSplitViewImmersiveSidebarState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t PageBlueprintManager.__allocating_init(blueprint:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0();
  v2 = swift_allocObject();
  PageBlueprintManager.init(blueprint:)(a1);
  return v2;
}

uint64_t PageBlueprintManager.init(blueprint:)(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v22 = v20 - v7;
  v21 = sub_1D8191AA4();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = sub_1D8191A84();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v15 = sub_1D8190C34();
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_15();
  v16 = sub_1D7E11E0C();
  v20[0] = "shouldAlwaysScrollToTopOnTap";
  v20[1] = v16;
  sub_1D8190BF4();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D7E10248(&unk_1EDBB3180, MEMORY[0x1E69E8030]);
  sub_1D7E2798C();
  sub_1D7E10248(&qword_1EDBB3300, sub_1D7E2798C);
  sub_1D8192004();
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8090], v21);
  *(v1 + 24) = sub_1D8191AE4();
  sub_1D818F194();
  v17 = v23;
  (*(v5 + 16))(v22, v23, v3);
  v18 = sub_1D818F134();
  (*(v5 + 8))(v17, v3);
  *(v2 + 16) = v18;
  return v2;
}

uint64_t PageBlueprintManager.modify<A>(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a2;
  v43 = a3;
  v10 = *v6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D8190C64();
  OUTLINED_FUNCTION_9();
  v40 = v14;
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v39 = v16 - v15;
  v17 = (*(a5 + 24))(a4, a5);
  v18 = sub_1D7F284F4(v17);

  if ((v18 & 1) != 0 && [objc_opt_self() isMainThread])
  {
    v19 = dispatch_semaphore_create(0);
    MEMORY[0x1EEE9AC00](v19);
    *(&v38 - 4) = a4;
    *(&v38 - 3) = a5;
    *(&v38 - 2) = v6;
    *(&v38 - 1) = a1;
    type metadata accessor for PageBlueprintModifierResult();
    sub_1D818FC14();
    v20 = sub_1D818EE74();
    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a5;
    v23 = v42;
    v22 = v43;
    v21[4] = v42;
    v21[5] = v22;
    sub_1D7E19F24(v23);
    sub_1D818FAE4();

    v24 = sub_1D818EE74();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v22;
    sub_1D7E19F24(v23);
    sub_1D818FB04();

    *(swift_allocObject() + 16) = v19;
    v26 = v19;
    v27 = sub_1D818FA14();
    sub_1D818FB54();

    v28 = v39;
    sub_1D8190C44();
    sub_1D8191B64();

    return (*(v40 + 8))(v28, v41);
  }

  else
  {
    (*(v11 + 16))(&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
    v30 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = *(v10 + 80);
    *(v31 + 3) = a4;
    *(v31 + 4) = a5;
    (*(v11 + 32))(&v31[v30], &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    type metadata accessor for PageBlueprintModifierResult();
    sub_1D818FC04();

    v32 = sub_1D818EE74();
    v33 = swift_allocObject();
    v33[2] = a4;
    v33[3] = a5;
    v35 = v42;
    v34 = v43;
    v33[4] = v42;
    v33[5] = v34;
    sub_1D7E19F24(v35);
    sub_1D818FAE4();

    v36 = sub_1D818EE74();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v34;
    sub_1D7E19F24(v35);
    sub_1D818FB04();
  }
}

uint64_t sub_1D7F284F4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  v2 = sub_1D8192824() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

BOOL sub_1D7F28578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D81927E4();
  sub_1D8190FF4();
  v6 = sub_1D8192824();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1D8192634();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL sub_1D7F28664(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  if (!*(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_31();
  sub_1D7E10248(v10, v11);
  v12 = sub_1D8190E54();
  v13 = a2 + 56;
  v21 = a2;
  v14 = ~(-1 << *(a2 + 32));
  do
  {
    v15 = v12 & v14;
    v16 = (1 << (v12 & v14)) & *(v13 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    v17 = v16 != 0;
    if (!v16)
    {
      break;
    }

    (*(v5 + 16))(v9, *(v21 + 48) + *(v5 + 72) * v15, v3);
    OUTLINED_FUNCTION_2_31();
    sub_1D7E10248(&qword_1EDBBC6B0, v18);
    v19 = sub_1D8190ED4();
    (*(v5 + 8))(v9, v3);
    v12 = v15 + 1;
  }

  while ((v19 & 1) == 0);
  return v17;
}

uint64_t sub_1D7F28834()
{
  type metadata accessor for PageBlueprintModifierResult();
  sub_1D818FBB4();
  return sub_1D818FB94();
}

void sub_1D7F28940(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v21[1] = a4;
  v6 = type metadata accessor for PageBlueprint();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = type metadata accessor for PageBlueprintModifierResult();
  OUTLINED_FUNCTION_9();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v21 - v15);
  (*(v17 + 16))(v21 - v15, a1, v12, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v16;
      if (a3)
      {
        v22 = *v16;
        v20 = v19;
        a3(&v22);

        sub_1D7E95CA0(v22);
      }

      else
      {
      }
    }

    else if (a3)
    {
      v22 = 0;
      a3(&v22);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v16, v6);
    swift_getWitnessTable();
    sub_1D818F184();
    if (a3)
    {
      v22 = 1;
      a3(&v22);
    }

    (*(v8 + 8))(v11, v6);
  }
}

void sub_1D7F28BC0(void *a1, void (*a2)(id *))
{
  if (a2)
  {
    v4 = a1;
    v3 = a1;
    a2(&v4);
    sub_1D7E95CA0(v4);
  }
}

uint64_t objectdestroy_5Tm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7F28CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = a5;
  v12 = *(*a6 + 80);
  v13 = type metadata accessor for PageBlueprint();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  sub_1D818F154();
  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a1;
  v17[6] = a2;
  v18 = *(a8 + 32);

  v18(v16, sub_1D7F28F94, v17, a7, a8);

  return (*(v14 + 8))(v16, v13);
}

uint64_t PageBlueprintManager.deinit()
{

  return v0;
}

uint64_t PageBlueprintManager.__deallocating_deinit()
{
  PageBlueprintManager.deinit();
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7F28EE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *UIKeyCommand.init(title:image:action:priorityInput:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  sub_1D7E7B91C(a8, v16);
  v13 = a3;
  v14 = sub_1D8191984();
  [v14 setWantsPriorityOverSystemBehavior_];

  sub_1D7E7BAAC(a8);
  return v14;
}

char *sub_1D7F290D0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC5TeaUI17SectionFooterView_separator;
  *&v4[v10] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v11 = OBJC_IVAR____TtC5TeaUI17SectionFooterView_button;
  v12 = objc_allocWithZone(type metadata accessor for TouchInsetsButton());
  *&v4[v11] = OUTLINED_FUNCTION_4(v12, sel_initWithFrame_);
  v13 = OBJC_IVAR____TtC5TeaUI17SectionFooterView_onButtonTap;
  sub_1D7E40308();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC5TeaUI17SectionFooterView_separator];
  v17 = v15;
  [v17 addSubview_];
  v18 = OBJC_IVAR____TtC5TeaUI17SectionFooterView_button;
  [v17 addSubview_];
  [*&v17[v18] addTarget:*&v17[OBJC_IVAR____TtC5TeaUI17SectionFooterView_onButtonTap] action:sel_handleAction forControlEvents:64];

  return v17;
}

void sub_1D7F29244()
{
  v1 = OBJC_IVAR____TtC5TeaUI17SectionFooterView_separator;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI17SectionFooterView_button;
  v3 = objc_allocWithZone(type metadata accessor for TouchInsetsButton());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC5TeaUI17SectionFooterView_onButtonTap;
  sub_1D7E40308();
  *(v0 + v4) = [objc_allocWithZone(v5) init];
  sub_1D81923A4();
  __break(1u);
}

id SectionFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SectionFooterView.prepareForReuse()()
{
  v0 = sub_1D7F293FC();
}

id sub_1D7F293FC()
{

  v0 = sub_1D818F214();
  sub_1D7E734B0(v0);

  sub_1D818F234();

  return v2;
}

Swift::Void __swiftcall CALayer.setAnchorPointWithoutChangingPosition(newAnchorPoint:)(CGPoint newAnchorPoint)
{
  y = newAnchorPoint.y;
  x = newAnchorPoint.x;
  OUTLINED_FUNCTION_1_31();
  v5 = v4 * x;
  OUTLINED_FUNCTION_1_31();
  v7 = v6 * y;
  OUTLINED_FUNCTION_1_31();
  v9 = v8;
  [v1 anchorPoint];
  v11 = v9 * v10;
  OUTLINED_FUNCTION_1_31();
  v13 = v12;
  [v1 anchorPoint];
  v15 = v13 * v14;
  [v1 transform];
  v16 = CATransform3DGetAffineTransform(&v38, &v39);
  OUTLINED_FUNCTION_0_34(v16, v17, v18, v19, v20, v21, v22, v23, *&v38.a);
  v40.x = v5;
  v40.y = v7;
  v25 = CGPointApplyAffineTransform(v40, v24);
  [v1 transform];
  v26 = CATransform3DGetAffineTransform(&v38, &v39);
  OUTLINED_FUNCTION_0_34(v26, v27, v28, v29, v30, v31, v32, v33, *&v38.a);
  v41.x = v11;
  v41.y = v15;
  v35 = CGPointApplyAffineTransform(v41, v34);
  [v1 position];
  [v1 setPosition_];
  [v1 setAnchorPoint_];
}

void sub_1D7F2961C(void *a1, double a2, double a3)
{
  v5 = a1;
  CALayer.setAnchorPointWithoutChangingPosition(newAnchorPoint:)(__PAIR128__(*&a3, *&a2));
}

void sub_1D7F2967C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  Height = CGRectGetHeight(v32);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = Height;
  if (Width <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = Width % 16;
  v12 = (16 - v11);
  if (!v11)
  {
    v12 = 0.0;
  }

  v13 = Width + v12;
  sub_1D7F29900();
  sub_1D7F29944();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A4C50;
  v15 = *MEMORY[0x1E696CDE0];
  v16 = MEMORY[0x1E69E7DE0];
  *(inited + 32) = *MEMORY[0x1E696CDE0];
  *(inited + 40) = v13;
  v17 = *MEMORY[0x1E696CD90];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = v10;
  v18 = *MEMORY[0x1E696CD80];
  *(inited + 104) = v16;
  *(inited + 112) = v18;
  *(inited + 120) = v13 * 4.0;
  v19 = *MEMORY[0x1E696CD70];
  *(inited + 144) = v16;
  *(inited + 152) = v19;
  v20 = MEMORY[0x1E696CD78];
  *(inited + 160) = v10 * (v13 * 4.0);
  v21 = *v20;
  *(inited + 184) = v16;
  *(inited + 192) = v21;
  v22 = MEMORY[0x1E69E6530];
  *(inited + 200) = 4;
  v23 = *MEMORY[0x1E696CDA0];
  *(inited + 224) = v22;
  *(inited + 232) = v23;
  *(inited + 264) = MEMORY[0x1E69E7668];
  *(inited + 240) = 1111970369;
  type metadata accessor for IOSurfacePropertyKey();
  sub_1D7EF8F6C();
  sub_1D7F29A0C();
  v24 = v15;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v28 = v21;
  v29 = v23;
  sub_1D8190D94();
  v30 = sub_1D7F29A64();
  if (v30)
  {
    v31 = v30;
    [v30 lockWithOptions:1 seed:0];
    [objc_allocWithZone(MEMORY[0x1E695F658]) initWithIOSurface_];
    [v31 unlockWithOptions:1 seed:0];
  }
}

unint64_t sub_1D7F29900()
{
  result = qword_1ECA0DC98;
  if (!qword_1ECA0DC98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA0DC98);
  }

  return result;
}

void sub_1D7F29944()
{
  if (!qword_1ECA0DCA0)
  {
    sub_1D7F2999C();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0DCA0);
    }
  }
}

void sub_1D7F2999C()
{
  if (!qword_1ECA0DCA8)
  {
    type metadata accessor for IOSurfacePropertyKey();
    sub_1D7EF8F6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0DCA8);
    }
  }
}

unint64_t sub_1D7F29A0C()
{
  result = qword_1ECA0CE50;
  if (!qword_1ECA0CE50)
  {
    type metadata accessor for IOSurfacePropertyKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0CE50);
  }

  return result;
}

id sub_1D7F29A64()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for IOSurfacePropertyKey();
  sub_1D7EF8F6C();
  sub_1D7F29A0C();
  v1 = sub_1D8190D44();

  v2 = [v0 initWithProperties_];

  return v2;
}

double Double.adjustedSpace(between:and:)(void *a1, int a2, id a3, double a4, uint64_t a5)
{
  v8 = 0.0;
  v9 = 0.0;
  if (a1)
  {
    [a1 descender];
    v9 = -v10;
  }

  if (a3)
  {
    [a3 pointSize];
    v8 = *&a5 - v11;
  }

  return a4 - v8 - v9;
}

uint64_t sub_1D7F29BE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1D7F29C24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t CopyCommandContext.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CopyCommandContext() + 20);

  return sub_1D7E1B288(v3, a1);
}

uint64_t CopyCommandContext.init<A>(url:object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E6968FB0];
  sub_1D7F2A4CC(a1, a3, &qword_1EDBBD088, MEMORY[0x1E6968FB0]);
  v7 = (a3 + *(type metadata accessor for CopyCommandContext() + 20));
  v7[3] = a2;
  __swift_allocate_boxed_opaque_existential_0(v7);
  OUTLINED_FUNCTION_3_0();
  (*(v8 + 32))();
  return sub_1D7F2A548(a1, &qword_1EDBBD088, v6);
}

void *static ContextMenuItem.copy(url:)(uint64_t a1)
{
  v2 = MEMORY[0x1E6968FB0];
  sub_1D7E19388(0, &qword_1EDBBD088, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = OUTLINED_FUNCTION_50(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = sub_1D818E644();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7F2A4CC(a1, v6, &qword_1EDBBD088, v2);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    OUTLINED_FUNCTION_0_35();
    sub_1D7F2A548(v6, v11, v12);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_1EDBBC920 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDBBC928;

    v15 = sub_1D818E5B4();
    v17 = v16;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    OUTLINED_FUNCTION_2_32();
    v20 = OUTLINED_FUNCTION_6_15();
    v22 = v21;

    v23 = [objc_opt_self() ts_link];
    swift_allocObject();
    v13 = sub_1D7F2A32C(v14, v15, v17, v20, v22, v23, 0, 0, 0);
    (*(v8 + 8))(v10, v7);
  }

  return v13;
}

void *static ContextMenuItem.copy(context:)(uint64_t a1)
{
  sub_1D7E19388(0, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext, MEMORY[0x1E69E6720]);
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = type metadata accessor for CopyCommandContext();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  sub_1D7F2A4CC(a1, v5, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    OUTLINED_FUNCTION_1_32();
    sub_1D7F2A548(v5, v13, v14);
    return 0;
  }

  else
  {
    sub_1D7F2A5B4(v5, v12);
    if (qword_1EDBBC908 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDBBC910;
    sub_1D7F2A618(v12, v9);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = objc_opt_self();

    v19 = [v18 bundleForClass_];
    OUTLINED_FUNCTION_2_32();
    v20 = OUTLINED_FUNCTION_6_15();
    v22 = v21;

    v23 = [objc_opt_self() ts_link];
    swift_allocObject();
    v15 = sub_1D7F2A67C(v16, v9, v20, v22, v23, 0, 0, 0);
    sub_1D7F2A8C4(v12);
  }

  return v15;
}

void *sub_1D7F2A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a1 + 24);
  v9[2] = *(a1 + 16);
  v9[3] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  v9[4] = sub_1D7F2AE90;
  v9[5] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  v9[6] = sub_1D7F2AE8C;
  v9[7] = v19;
  v9[8] = sub_1D804F25C;
  v9[9] = 0;
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v9[10] = sub_1D7F2AE60;
  v9[11] = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  v9[12] = sub_1D7F2AE88;
  v9[13] = v21;
  v9[14] = OUTLINED_FUNCTION_4_6;
  v9[15] = 0;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  v9[16] = sub_1D7F2AE7C;
  v9[17] = v22;
  sub_1D8190DB4();

  sub_1D8190DB4();
  return v9;
}

uint64_t sub_1D7F2A4CC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7E19388(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_3_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7F2A548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7E19388(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D7F2A5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyCommandContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F2A618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CopyCommandContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D7F2A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v29 = a3;
  v30 = a4;
  v14 = type metadata accessor for CopyCommandContext();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = *(a1 + 24);
  v8[2] = *(a1 + 16);
  v8[3] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  v8[4] = sub_1D7F2A948;
  v8[5] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  v8[6] = sub_1D7F2A950;
  v8[7] = v19;
  v8[8] = sub_1D804F25C;
  v8[9] = 0;
  sub_1D7F2A618(a2, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v15 + 80);
  v21 = swift_allocObject();
  v22 = v28;
  v21[2] = a7;
  v21[3] = v22;
  v21[4] = a1;
  sub_1D7F2A5B4(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + ((v20 + 40) & ~v20));
  v8[10] = sub_1D7F2AB98;
  v8[11] = v21;
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = v29;
  *(v23 + 24) = v24;
  v8[12] = sub_1D7F2AC24;
  v8[13] = v23;
  v8[14] = OUTLINED_FUNCTION_4_6;
  v8[15] = 0;
  sub_1D7F2A5B4(a2, &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  sub_1D7F2A5B4(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + ((v20 + 24) & ~v20));
  v8[16] = sub_1D7F2ADD4;
  v8[17] = v25;
  sub_1D8190DB4();

  return v8;
}

uint64_t sub_1D7F2A8C4(uint64_t a1)
{
  v2 = type metadata accessor for CopyCommandContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7F2A958(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    a4();
  }

  ObjectType = swift_getObjectType();
  v16[0] = a7;
  v16[1] = a8;
  v14 = *(a2 + 8);
  sub_1D8190DB4();
  v14(a6, v16, a3, MEMORY[0x1E69E6158], ObjectType, a2);
}

uint64_t sub_1D7F2AA28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D7E19388(0, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext, MEMORY[0x1E69E6720]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  if (a4)
  {
    a4(v13);
  }

  ObjectType = swift_getObjectType();
  sub_1D7F2A618(a7, v15);
  v17 = type metadata accessor for CopyCommandContext();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  (*(a2 + 8))(a6, v15, a3, v17, ObjectType, a2);
  return sub_1D7F2A548(v15, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
}

uint64_t sub_1D7F2AB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CopyCommandContext();
  OUTLINED_FUNCTION_50(v7);
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1D7F2AA28(a1, a2, a3, v9, v10, v11, v12);
}

uint64_t sub_1D7F2AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11[0] = a4;
  v11[1] = a5;
  sub_1D8190DB4();
  LOBYTE(a4) = CommandCenterType.canExecute<A>(command:context:)(a3, v11, ObjectType, a2);

  return a4 & 1;
}

uint64_t sub_1D7F2ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7E19388(0, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  ObjectType = swift_getObjectType();
  sub_1D7F2A618(a4, v9);
  v11 = type metadata accessor for CopyCommandContext();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  LOBYTE(a4) = CommandCenterType.canExecute<A>(command:context:)(a3, v9, ObjectType, a2);
  sub_1D7F2A548(v9, &unk_1EDBB0FC8, type metadata accessor for CopyCommandContext);
  return a4 & 1;
}

uint64_t sub_1D7F2ADD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CopyCommandContext();
  OUTLINED_FUNCTION_50(v5);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_1D7F2ACB0(a1, a2, v7, v8);
}

unint64_t sub_1D7F2AF98(uint64_t a1)
{
  result = sub_1D7F2AFC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7F2AFC0()
{
  result = qword_1ECA0DCB0;
  if (!qword_1ECA0DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DCB0);
  }

  return result;
}

unint64_t sub_1D7F2B014(uint64_t a1)
{
  result = sub_1D7F2B03C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7F2B03C()
{
  result = qword_1ECA0DCB8;
  if (!qword_1ECA0DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DCB8);
  }

  return result;
}

unint64_t sub_1D7F2B090(uint64_t a1)
{
  result = sub_1D7F2B0B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7F2B0B8()
{
  result = qword_1ECA0DCC0;
  if (!qword_1ECA0DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DCC0);
  }

  return result;
}

uint64_t SwipeActionPresentation.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

unint64_t sub_1D7F2B1F8()
{
  result = qword_1ECA0DCC8;
  if (!qword_1ECA0DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DCC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SwipeActionPresentation(_BYTE *result, int a2, int a3)
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

void CopyLinkCommandHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_opt_self() generalPasteboard];
  sub_1D7F2B4FC(a4, a5, v7);
}

void CopyLink2CommandHandler.handle(commandCenter:command:with:source:)()
{
  OUTLINED_FUNCTION_1_33();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_0_36();

  sub_1D7F2B554(v0, v1, v2);
}

BOOL CopyLink2CommandHandler.canHandle(commandCenter:command:with:source:)()
{
  OUTLINED_FUNCTION_1_33();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_0_36();

  return sub_1D7F2B674(v0, v1, v2);
}

void sub_1D7F2B464()
{
  OUTLINED_FUNCTION_1_33();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_0_36();

  sub_1D7F2B554(v0, v1, v2);
}

BOOL sub_1D7F2B4B0()
{
  OUTLINED_FUNCTION_1_33();
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_0_36();

  return sub_1D7F2B674(v0, v1, v2);
}

void sub_1D7F2B4FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();
  [a3 setString_];
}

void sub_1D7F2B554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7F2B76C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7F2B7C4(a3, v6);
  v7 = sub_1D818E644();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D7F2B828(v6);
  }

  else
  {
    v8 = sub_1D818E5B4();
    v10 = v9;
    (*(*(v7 - 8) + 8))(v6, v7);
    v11 = [objc_opt_self() generalPasteboard];
    sub_1D806DEAC(v8, v10, v11);
  }
}

BOOL sub_1D7F2B674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7F2B76C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7F2B7C4(a3, v6);
  v7 = sub_1D818E644();
  v8 = __swift_getEnumTagSinglePayload(v6, 1, v7) != 1;
  sub_1D7F2B828(v6);
  return v8;
}

void sub_1D7F2B76C()
{
  if (!qword_1EDBBD088)
  {
    sub_1D818E644();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBD088);
    }
  }
}

uint64_t sub_1D7F2B7C4(uint64_t a1, uint64_t a2)
{
  sub_1D7F2B76C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F2B828(uint64_t a1)
{
  sub_1D7F2B76C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContextMenuGroup.title.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t ContextMenuGroup.subtitle.getter()
{
  v1 = *(v0 + 32);
  sub_1D8190DB4();
  return v1;
}

void *ContextMenuGroup.image.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t ContextMenuGroup.__allocating_init(title:subtitle:image:style:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  OUTLINED_FUNCTION_0_37();
  result = swift_allocObject();
  v15 = *a6;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = v15;
  *(result + 64) = a7;
  return result;
}

uint64_t ContextMenuGroup.init(title:subtitle:image:style:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v8 = *a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = v8;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t static ContextMenuGroup.inline(items:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_0_37();
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v5 + 56) = 2;
  *(v5 + 64) = a1;
  a2[3] = v2;
  a2[4] = &protocol witness table for ContextMenuGroup;
  *a2 = v5;

  return sub_1D8190DB4();
}

uint64_t static ContextMenuGroup.debug(items:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D7F2BB88(0, &qword_1ECA0CF80, sub_1D7F2BB54, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D819FAB0;
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  v7 = sub_1D7E47238();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D81A4FB0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v7;
  *(v8 + 56) = 0;
  *(v8 + 64) = a1;
  *(v6 + 56) = v3;
  *(v6 + 64) = &protocol witness table for ContextMenuGroup;
  *(v6 + 32) = v8;
  static ContextMenuGroup.inline(items:)(v6, a2);
  sub_1D8190DB4();
}

void sub_1D7F2BB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7F2BBEC()
{
  result = qword_1EDBB9558[0];
  if (!qword_1EDBB9558[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB9558);
  }

  return result;
}

uint64_t ContextMenuGroup.deinit()
{

  return v0;
}

uint64_t ContextMenuGroup.__deallocating_deinit()
{
  ContextMenuGroup.deinit();
  OUTLINED_FUNCTION_0_37();

  return swift_deallocClassInstance();
}

uint64_t ContextMenuGroup.build(commandCenter:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 64);
  v24 = MEMORY[0x1E69E7CC0];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    sub_1D8190DB4();
    sub_1D8190DB4();
    v11 = v7;
    do
    {
      sub_1D7F2BEE8(v10, v23);
      sub_1D7F2BEE8(v23, &v18);
      if (v19)
      {
        sub_1D7E05450(&v18, v20);
        v12 = v21;
        v13 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        v14 = (*(v13 + 8))(a1, a2, a3, v12, v13);
        sub_1D7F2BF4C(v23);
        v15 = __swift_destroy_boxed_opaque_existential_1Tm(v20);
        if (v14)
        {
          MEMORY[0x1DA713500](v15);
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D81913B4();
          }

          sub_1D8191404();
        }
      }

      else
      {
        sub_1D7F2BF4C(v23);
        sub_1D7F2BF4C(&v18);
      }

      v10 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v16 = v7;
    sub_1D8190DB4();
    sub_1D8190DB4();
  }

  sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
  return sub_1D8191C44();
}

uint64_t sub_1D7F2BEE8(uint64_t a1, uint64_t a2)
{
  sub_1D7F2BB54(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F2BF4C(uint64_t a1)
{
  sub_1D7F2BB54(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7F2BFF8()
{
  v1 = OBJC_IVAR____TtC5TeaUI14BouncingButton_isBouncingEnabled;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t sub_1D7F2C030(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI14BouncingButton_isBouncingEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1D7F2C104()
{
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI14BouncingButton_touchInsets);
  swift_beginAccess();
  return *v0;
}

uint64_t sub_1D7F2C16C()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI14BouncingButton_touchInsets);
  result = swift_beginAccess();
  *v0 = v4;
  v0[1] = v3;
  v0[2] = v2;
  v0[3] = v1;
  return result;
}

void sub_1D7F2C1C4(uint64_t a1@<X8>)
{
  *a1 = sub_1D7F2C104();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

id BouncingButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *BouncingButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  *(v0 + OBJC_IVAR____TtC5TeaUI14BouncingButton_isBouncingEnabled) = 1;
  v1 = OBJC_IVAR____TtC5TeaUI14BouncingButton_onTap;
  sub_1D7E40308();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI14BouncingButton_touchInsets);
  v4 = type metadata accessor for BouncingButton();
  *v3 = 0u;
  v3[1] = 0u;
  v10 = v4;
  v5 = OUTLINED_FUNCTION_80();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v10);
  [v8 addTarget:*&v8[OBJC_IVAR____TtC5TeaUI14BouncingButton_onTap] action:sel_handleAction forControlEvents:64];
  return v8;
}

id BouncingButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void BouncingButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI14BouncingButton_isBouncingEnabled) = 1;
  v1 = OBJC_IVAR____TtC5TeaUI14BouncingButton_onTap;
  sub_1D7E40308();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI14BouncingButton_touchInsets);
  *v3 = 0u;
  v3[1] = 0u;
  sub_1D81923A4();
  __break(1u);
}

unint64_t sub_1D7F2C4D8()
{
  result = qword_1ECA0DCE8;
  if (!qword_1ECA0DCE8)
  {
    sub_1D7E0A1A8(255, &qword_1ECA11F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DCE8);
  }

  return result;
}

uint64_t sub_1D7F2C560(uint64_t a1, uint64_t a2, SEL *a3, uint64_t (*a4)(void))
{
  sub_1D7E0A1A8(0, &qword_1ECA11F60);
  sub_1D7F2C4D8();
  v8 = sub_1D8191604();
  v10.receiver = v4;
  v10.super_class = type metadata accessor for BouncingButton();
  objc_msgSendSuper2(&v10, *a3, v8, a2);

  return a4();
}

uint64_t sub_1D7F2C640(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t (*a6)(void))
{
  sub_1D7E0A1A8(0, &qword_1ECA11F60);
  sub_1D7F2C4D8();
  v10 = sub_1D8191614();
  v11 = a4;
  v12 = a1;
  sub_1D7F2C560(v10, a4, a5, a6);
}

BOOL sub_1D7F2C6F8(CGFloat a1, CGFloat a2)
{
  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_1_34(OBJC_IVAR____TtC5TeaUI14BouncingButton_touchInsets);
  swift_beginAccess();
  v16.origin.x = UIEdgeInsetsInsetRect(v7, v9, v11, v13, *v2, v2[1]);
  v15.x = a1;
  v15.y = a2;
  return CGRectContainsPoint(v16, v15);
}

void sub_1D7F2C800()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI14BouncingButton_isBouncingEnabled;
  OUTLINED_FUNCTION_10();
  if (*(v1 + v2) == 1 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = objc_opt_self();
    [v3 begin];
    [v3 setDisableActions_];
    sub_1D7E0A1A8(0, &unk_1ECA0DCF0);
    v4 = OUTLINED_FUNCTION_2_34();
    v6 = sub_1D80D7434(v4, v5);
    [v6 setDuration_];
    v7 = v6;
    v8 = sub_1D818ED14();
    OUTLINED_FUNCTION_4_21(v8, sel_setFromValue_);

    v9 = sub_1D818ED14();
    OUTLINED_FUNCTION_4_21(v9, sel_setToValue_);

    v10 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v11) = 1045220557;
    LODWORD(v12) = 1041865114;
    LODWORD(v13) = 1.0;
    v14 = [v10 initWithControlPoints__:v11 :{0.0, v12, v13}];
    OUTLINED_FUNCTION_4_21(v14, sel_setTimingFunction_);

    [v7 setFillMode_];
    [v7 setRemovedOnCompletion_];

    v15 = [v1 layer];
    sub_1D80D7A40(v7, 0xD000000000000012, 0x80000001D81C86D0, v15);

    [v3 commit];
  }
}

void sub_1D7F2C9E8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI14BouncingButton_isBouncingEnabled;
  OUTLINED_FUNCTION_10();
  if (*(v1 + v2) == 1 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = objc_opt_self();
    [v3 begin];
    [v3 setDisableActions_];
    sub_1D7E0A1A8(0, &unk_1ECA0DCF0);
    v4 = OUTLINED_FUNCTION_2_34();
    v6 = sub_1D80D7434(v4, v5);
    [v6 setMass_];
    [v6 setStiffness_];
    [v6 setDamping_];
    [v6 setInitialVelocity_];
    v7 = v6;
    [v7 settlingDuration];
    [v7 setDuration_];
    v8 = v7;
    v9 = sub_1D818ED14();
    OUTLINED_FUNCTION_4_21(v9, sel_setFromValue_);

    v10 = sub_1D818ED14();
    OUTLINED_FUNCTION_4_21(v10, sel_setToValue_);

    v11 = objc_allocWithZone(MEMORY[0x1E69793D0]);
    LODWORD(v12) = 1045220557;
    LODWORD(v13) = 1.0;
    LODWORD(v14) = 1045220557;
    v15 = [v11 initWithControlPoints__:v12 :{0.0, v14, v13}];
    OUTLINED_FUNCTION_4_21(v15, sel_setTimingFunction_);

    [v8 setFillMode_];
    [v8 setRemovedOnCompletion_];

    v16 = [v1 layer];
    OUTLINED_FUNCTION_2_34();
    v17 = sub_1D8190EE4();
    [v16 removeAnimationForKey_];

    v18 = [v1 layer];
    sub_1D80D7A40(v8, 0xD000000000000010, 0x80000001D81C86F0, v18);

    [v3 commit];
  }
}

void sub_1D7F2CC88()
{
  v0 = sub_1D7F293FC();
}

id BouncingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncingButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F2CE90()
{
  v0 = sub_1D818E794();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E784();
  v4 = sub_1D818E764();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void static TransitionContainerIdentifier.dynamic.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1D7F2CE90;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t TransitionContainerIdentifier.identifier.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return v1();
    }

    else
    {
      (v1)(&v3);
      v1 = v3;
    }
  }

  else
  {
    sub_1D8190DB4();
  }

  return v1;
}

uint64_t TransitionContainerIdentifier.childIdentifier.getter()
{
  if (*(v0 + 16) >= 2u)
  {
    (*v0)(&v2);
  }

  return OUTLINED_FUNCTION_109();
}

TeaUI::TransitionContainerIdentifier::Model __swiftcall TransitionContainerIdentifier.Model.init(identifier:childIdentifier:)(Swift::String identifier, Swift::String_optional childIdentifier)
{
  v2->value = identifier;
  v2[1] = childIdentifier;
  result.childIdentifier = childIdentifier;
  result.identifier = identifier;
  return result;
}

uint64_t TransitionContainerViewController.disableInstallBarButtonItems.getter()
{
  v1 = OBJC_IVAR___TSTransitionContainerViewController_disableInstallBarButtonItems;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t sub_1D7F2D15C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TSTransitionContainerViewController_disableInstallBarButtonItems;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void TransitionContainerViewController.disableInstallBarButtonItems.setter(char a1)
{
  v3 = OBJC_IVAR___TSTransitionContainerViewController_disableInstallBarButtonItems;
  OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  TransitionContainerViewController.installBarButtonItems()();
}

uint64_t TransitionContainerViewController.disableInstallBarButtonItems.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D7F2D248(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    TransitionContainerViewController.installBarButtonItems()();
  }
}

uint64_t TransitionContainerViewController.doneButtonPlacement.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___TSTransitionContainerViewController_doneButtonPlacement;
  result = OUTLINED_FUNCTION_10();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TransitionContainerViewController.doneButtonPlacement.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___TSTransitionContainerViewController_doneButtonPlacement;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = v2;
  return result;
}

uint64_t TransitionContainerViewController.doneButtonStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___TSTransitionContainerViewController_doneButtonStyle;
  result = OUTLINED_FUNCTION_10();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t TransitionContainerViewController.doneButtonStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___TSTransitionContainerViewController_doneButtonStyle;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = v2;
  return result;
}

uint64_t TransitionContainerViewController.hideDoneButton.getter()
{
  v1 = OBJC_IVAR___TSTransitionContainerViewController_hideDoneButton;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t TransitionContainerViewController.hideDoneButton.setter(char a1)
{
  v3 = OBJC_IVAR___TSTransitionContainerViewController_hideDoneButton;
  result = OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
  return result;
}

char *sub_1D7F2D4F8()
{
  v1 = OBJC_IVAR___TSTransitionContainerViewController____lazy_storage___doneBarButtonItem;
  v2 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController____lazy_storage___doneBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController____lazy_storage___doneBarButtonItem);
  }

  else
  {
    v4 = sub_1D7F2D55C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_1D7F2D55C(uint64_t a1)
{
  v2 = OBJC_IVAR___TSTransitionContainerViewController_doneButtonStyle;
  swift_beginAccess();
  if (*(a1 + v2))
  {
    if ((sub_1D8190B24() & 1) == 0)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F10);
      v9 = static UIButton.closeButton.getter();
      v10 = *&v9[OBJC_IVAR____TtC5TeaUI12ActionButton_onTap];
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = v10;

      type metadata accessor for BlockBarButtonItem();
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
      v13 = sub_1D8190EE4();
      [v6 setIdentifier_];

      v14 = &v6[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier];
      swift_beginAccess();
      *v14 = 0x6F642E6975616574;
      *(v14 + 1) = 0xEA0000000000656ELL;

      v15 = OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor;
      swift_beginAccess();
      v6[v15] = 1;
      sub_1D7E49240();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D81A5090;
      v17 = objc_opt_self();
      *(v16 + 32) = [v17 labelColor];
      *(v16 + 40) = [v17 secondarySystemFillColor];
      BlockBarButtonItem.recolor(with:)(v16);

      goto LABEL_7;
    }

    type metadata accessor for BlockBarButtonItem();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v3 = static BlockBarButtonItem.doneBarButtonItem(actionHandler:)();

    v4 = v3;
  }

  else
  {
    type metadata accessor for BlockBarButtonItem();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = BlockBarButtonItem.__allocating_init(barButtonSystemItem:actionHandler:)(0, sub_1D7F2FC34, v5);
  }

  v6 = v4;
  v7 = sub_1D8190EE4();
  [v6 setIdentifier_];

  v8 = &v6[OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_barButtonItemIdentifier];
  swift_beginAccess();
  *v8 = 0x6F642E6975616574;
  *(v8 + 1) = 0xEA0000000000656ELL;
LABEL_7:

  return v6;
}

void sub_1D7F2D8C0()
{
  v1 = sub_1D8096518(v0);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 popViewControllerAnimated_];
  }

  else
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

char *TransitionContainerViewController.__allocating_init(rootViewController:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  return TransitionContainerViewController.__allocating_init(rootViewController:containerIdentifier:)();
}

char *TransitionContainerViewController.__allocating_init(rootViewController:containerIdentifier:)()
{
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = 0;
  OUTLINED_FUNCTION_0_8();
  *(swift_allocObject() + 16) = 0;
  v1 = objc_allocWithZone(type metadata accessor for Transition());
  Transition.init(presentationTransitionFactory:dismissalTransitionFactory:presentationControllerFactory:)();
  v2 = objc_allocWithZone(v0);
  return TransitionContainerViewController.init(rootViewController:containerIdentifier:transition:)();
}

char *TransitionContainerViewController.__allocating_init(rootViewController:transition:)()
{
  OUTLINED_FUNCTION_10_18();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = objc_allocWithZone(v0);
  v5 = v2;
  return TransitionContainerViewController.init(rootViewController:containerIdentifier:transition:)();
}

char *TransitionContainerViewController.__allocating_init(rootViewController:containerIdentifier:transition:)()
{
  OUTLINED_FUNCTION_10_18();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_24_4();
  return TransitionContainerViewController.init(rootViewController:containerIdentifier:transition:)();
}

void sub_1D7F2DBFC()
{
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7F2D8C0();
  }
}

void sub_1D7F2DC44()
{
  OUTLINED_FUNCTION_10();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7F2D8C0();
  }
}

void sub_1D7F2DC8C()
{
  *(v0 + OBJC_IVAR___TSTransitionContainerViewController_disableInstallBarButtonItems) = 0;
  *(v0 + OBJC_IVAR___TSTransitionContainerViewController_doneButtonPlacement) = 1;
  *(v0 + OBJC_IVAR___TSTransitionContainerViewController_doneButtonStyle) = 0;
  *(v0 + OBJC_IVAR___TSTransitionContainerViewController_hideDoneButton) = 0;
  *(v0 + OBJC_IVAR___TSTransitionContainerViewController_backBarButtonItem) = 0;
  v1 = v0 + OBJC_IVAR___TSTransitionContainerViewController_nextDisplayMode;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR___TSTransitionContainerViewController____lazy_storage___doneBarButtonItem) = 0;
  sub_1D81923A4();
  __break(1u);
}

uint64_t TransitionContainerViewController.description.getter()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000023, 0x80000001D81C8710);
  sub_1D8192334();
  MEMORY[0x1DA713260](0x6669746E65646920, 0xEC0000003D726569);
  v0 = TransitionContainerViewController.identifier.getter();
  MEMORY[0x1DA713260](v0);

  MEMORY[0x1DA713260](62, 0xE100000000000000);
  return 0;
}

uint64_t TransitionContainerViewController.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController_containerIdentifier);
  if (*(v0 + OBJC_IVAR___TSTransitionContainerViewController_containerIdentifier + 16))
  {
    if (*(v0 + OBJC_IVAR___TSTransitionContainerViewController_containerIdentifier + 16) == 1)
    {
      v1();
    }

    else
    {
      (v1)(&v3);
    }
  }

  else
  {
    sub_1D8190DB4();
  }

  return OUTLINED_FUNCTION_109();
}

id TransitionContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TransitionContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TransitionContainerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1);
  v3 = &v1[OBJC_IVAR___TSTransitionContainerViewController_nextDisplayMode];
  *v3 = 0;
  v3[8] = 1;
}

Swift::Void __swiftcall TransitionContainerViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_setEditing_animated_, _, animated);
  [*&v2[OBJC_IVAR___TSTransitionContainerViewController_rootViewController] setEditing:_ animated:animated];
}

uint64_t sub_1D7F2E240()
{
  v1 = [v0 presentingViewController];
  if (!v1 || (v1, (v2 = [v0 parentViewController]) != 0) && (v3 = v2, objc_opt_self(), v4 = swift_dynamicCastObjCClass(), v3, v4) || (UIViewController.isPreviewing.getter() & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7 = OBJC_IVAR___TSTransitionContainerViewController_hideDoneButton;
    swift_beginAccess();
    v5 = *(v0 + v7) ^ 1;
  }

  return v5 & 1;
}

id sub_1D7F2E320(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1D7E0A1A8(0, &qword_1EDBB31D0);
  v5 = sub_1D8191304();

  return v5;
}

id (*TransitionContainerViewController.hidesBottomBarWhenPushed.modify(uint64_t a1))(void **a1)
{
  v3 = *(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  *a1 = v3;
  *(a1 + 8) = [v3 hidesBottomBarWhenPushed];
  return sub_1D7F2E4C8;
}

id TransitionContainerViewController.tabBarItem.getter()
{
  v1 = [*(v0 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController) tabBarItem];

  return v1;
}

void TransitionContainerViewController.tabBarItem.setter(void *a1)
{
  [*(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController) setTabBarItem_];
}

void (*TransitionContainerViewController.tabBarItem.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  a1[1] = v3;
  *a1 = [v3 tabBarItem];
  return sub_1D7F2E670;
}

void sub_1D7F2E670(id *a1)
{
  v1 = *a1;
  [a1[1] setTabBarItem_];
}

uint64_t TransitionContainerViewController.tabBarNavigationBarVisiblity.getter@<X0>(_BYTE *a1@<X8>)
{
  v28 = *(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &unk_1EDBB1D08);
  v3 = v28;
  v4 = swift_dynamicCast();
  if (v4)
  {
    OUTLINED_FUNCTION_21_6(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25, v26, v27, v28, v29[0]);
    v12 = sub_1D7E4B110();
    if (!v12)
    {
      OUTLINED_FUNCTION_17_9(0, v13, v14, v15, v16, v17, v18, v19, v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3]);
      v21 = OUTLINED_FUNCTION_8_9();
      v22(v21);
      return __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    result = sub_1D7E9DD24(&v23, &qword_1EDBB1D00, &unk_1EDBB1D08);
  }

  *a1 = 1;
  return result;
}

uint64_t TransitionContainerViewController.shouldSelectOnCollapse.getter()
{
  v0 = sub_1D7E4B110();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  v2 = [v0 topViewController];
  if (!v2)
  {

    OUTLINED_FUNCTION_0_38();
LABEL_9:
    sub_1D7E9DD24(&v17, &qword_1EDBB1D00, &unk_1EDBB1D08);
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  v16 = v2;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &unk_1EDBB1D08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_38();
    goto LABEL_8;
  }

  if (!v19)
  {
LABEL_8:

    goto LABEL_9;
  }

  v3 = sub_1D7E05450(&v17, v21);
  OUTLINED_FUNCTION_17_9(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17, *(&v17 + 1), v18, v19, v20, v21[0], v21[1], v21[2], v21[3]);
  v11 = OUTLINED_FUNCTION_8_9();
  v13 = v12(v11);

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v13 & 1;
}

Swift::Void __swiftcall TransitionContainerViewController.tabBarSplitViewWillChangeDisplayMode(to:)(UISplitViewControllerDisplayMode to)
{
  v2 = v1 + OBJC_IVAR___TSTransitionContainerViewController_nextDisplayMode;
  *v2 = to;
  *(v2 + 8) = 0;
  TransitionContainerViewController.installBarButtonItems()();
}

Swift::Void __swiftcall TransitionContainerViewController.set(previewing:)(Swift::Bool previewing)
{
  v20 = *(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  v3 = sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v4 = sub_1D7E0631C(0, &qword_1EDBAFF48);
  v5 = v20;
  v6 = OUTLINED_FUNCTION_7_17();
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_15_6(v6, v7);
    OUTLINED_FUNCTION_16_12(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v20, v21[0], v21[1], v21[2], v21[3]);
    (*(v4 + 8))(previewing, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v19, &qword_1ECA0DD50, &qword_1EDBAFF48);
    v16 = swift_dynamicCastObjCProtocolConditional();
    if (v16)
    {
      [v16 setPreviewing_];
    }
  }
}

uint64_t TransitionContainerViewController.cardSplitViewPresentation(for:)(char *a1)
{
  v2 = *a1;
  v50 = *(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  v3 = v50;
  v4 = sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBB0C88);
  v5 = v50;
  OUTLINED_FUNCTION_12_11(v5, v6, v7, v8, v9, v10, v11, v12, v42, v44, v46[0]);
  v13 = swift_dynamicCast();
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_15_6(v13, v14);
    OUTLINED_FUNCTION_16_12(v15, v16, v17, v18, v19, v20, v21, v22, v43, v45, v46[0], v46[1], v46[2], v47, v48, v49, v50, v51[0], v51[1], v51[2], v52);
    LOBYTE(v46[0]) = v2;
    (*(v4 + 16))(v46, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  OUTLINED_FUNCTION_0_38();
  sub_1D7E9DD24(v46, &qword_1EDBB0C80, &qword_1EDBB0C88);
  v23 = sub_1D7E4B110();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 childViewControllers];
    v26 = sub_1D8191314();

    if (sub_1D7E36AB8(v26))
    {
      OUTLINED_FUNCTION_20_5();
      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1DA714420](0, v26);
      }

      else
      {
        v27 = *(v26 + 32);
      }

      v28 = v27;

      v50 = v28;
      OUTLINED_FUNCTION_12_11(v29, v30, v31, v32, v33, v34, v35, v36, v43, v45, v46[0]);
      v37 = swift_dynamicCast();
      if (v37)
      {
        if (v47)
        {
          OUTLINED_FUNCTION_15_6(v37, v38);
          v39 = v52;
          v40 = v53;
          __swift_project_boxed_opaque_existential_1(v51, v52);
          LOBYTE(v46[0]) = v2;
          (*(v40 + 16))(v46, v39, v40);

          return __swift_destroy_boxed_opaque_existential_1Tm(v51);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_38();
      }
    }

    else
    {

      OUTLINED_FUNCTION_0_38();
    }

    sub_1D7E9DD24(v46, &qword_1EDBB0C80, &qword_1EDBB0C88);
  }

  result = OUTLINED_FUNCTION_1_35();
  __break(1u);
  return result;
}

uint64_t TransitionContainerViewController.cardSplitViewShouldBePreserved.getter()
{
  v32 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBB0C88);
  v1 = v32;
  v2 = OUTLINED_FUNCTION_7_17();
  if (v2)
  {
    OUTLINED_FUNCTION_15_6(v2, v3);
    OUTLINED_FUNCTION_27_0(v33);
    v4 = OUTLINED_FUNCTION_3_1();
    v6 = v5(v4);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    return v6 & 1;
  }

  OUTLINED_FUNCTION_0_38();
  sub_1D7E9DD24(v28, &qword_1EDBB0C80, &qword_1EDBB0C88);
  v7 = sub_1D7E4B110();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 childViewControllers];
    v10 = sub_1D8191314();

    if (sub_1D7E36AB8(v10))
    {
      OUTLINED_FUNCTION_20_5();
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA714420](0, v10);
      }

      else
      {
        v11 = *(v10 + 32);
      }

      v12 = v11;

      v32 = v12;
      v13 = OUTLINED_FUNCTION_7_17();
      if (v13)
      {
        if (v29)
        {
          v15 = OUTLINED_FUNCTION_15_6(v13, v14);
          OUTLINED_FUNCTION_16_12(v15, v16, v17, v18, v19, v20, v21, v22, v26, v27, v28[0], v28[1], v28[2], v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3]);
          v23 = OUTLINED_FUNCTION_8_9();
          v6 = v24(v23);

          goto LABEL_10;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_38();
      }
    }

    else
    {

      OUTLINED_FUNCTION_0_38();
    }

    sub_1D7E9DD24(v28, &qword_1EDBB0C80, &qword_1EDBB0C88);
  }

  result = OUTLINED_FUNCTION_1_35();
  __break(1u);
  return result;
}

void TransitionContainerViewController.cardViewBehavior.getter(uint64_t a1@<X8>)
{
  v27 = *(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBB0218);
  v3 = v27;
  v4 = swift_dynamicCast();
  if (v4)
  {
    v12 = OUTLINED_FUNCTION_21_6(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23, v24, v25, v26, v27, v28[0]);
    OUTLINED_FUNCTION_17_9(v12, v13, v14, v15, v16, v17, v18, v19, v22, *(&v22 + 1), v23, v24, v25, v26, v27, v28[0], v28[1], v28[2], v28[3]);
    v20 = OUTLINED_FUNCTION_8_9();
    v21(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(&v22, &qword_1EDBB0210, &qword_1EDBB0218);
    static CardViewBehavior.default.getter(a1);
  }
}

uint64_t TransitionContainerViewController.tabBarSplitViewPresentation(for:)(char a1)
{
  v40 = *(v1 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, qword_1EDBB0758);
  v3 = v40;
  OUTLINED_FUNCTION_12_11(v3, v4, v5, v6, v7, v8, v9, v10, v34, v36, v38[0]);
  v11 = swift_dynamicCast();
  if (v11)
  {
    OUTLINED_FUNCTION_15_6(v11, v12);
    v13 = v42;
    v14 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v14 + 8))(a1 & 1, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  OUTLINED_FUNCTION_0_38();
  sub_1D7E9DD24(v38, &qword_1ECA0DD60, qword_1EDBB0758);
  v15 = sub_1D7E4B110();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 childViewControllers];
    v18 = sub_1D8191314();

    if (sub_1D7E36AB8(v18))
    {
      OUTLINED_FUNCTION_20_5();
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA714420](0, v18);
      }

      else
      {
        v19 = *(v18 + 32);
      }

      v20 = v19;

      v40 = v20;
      OUTLINED_FUNCTION_12_11(v21, v22, v23, v24, v25, v26, v27, v28, v35, v37, v38[0]);
      v29 = swift_dynamicCast();
      if (v29)
      {
        if (v39)
        {
          OUTLINED_FUNCTION_15_6(v29, v30);
          v31 = v42;
          v32 = v43;
          __swift_project_boxed_opaque_existential_1(v41, v42);
          (*(v32 + 8))(a1 & 1, v31, v32);

          return __swift_destroy_boxed_opaque_existential_1Tm(v41);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_38();
      }
    }

    else
    {

      OUTLINED_FUNCTION_0_38();
    }

    sub_1D7E9DD24(v38, &qword_1ECA0DD60, qword_1EDBB0758);
  }

  result = OUTLINED_FUNCTION_1_35();
  __break(1u);
  return result;
}

Swift::Void __swiftcall TransitionContainerViewController.textBeginEditing()()
{
  v17 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1ECA0DD68);
  v1 = v17;
  v2 = OUTLINED_FUNCTION_9_9();
  if (v2)
  {
    OUTLINED_FUNCTION_21_6(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, v15, v16, v17, v18[0]);
    OUTLINED_FUNCTION_27_0(v18);
    v10 = OUTLINED_FUNCTION_3_1();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(&v12, &qword_1ECA0DD70, &qword_1ECA0DD68);
  }
}

Swift::Void __swiftcall TransitionContainerViewController.textEndEditing()()
{
  v17 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1ECA0DD68);
  v1 = v17;
  v2 = OUTLINED_FUNCTION_9_9();
  if (v2)
  {
    OUTLINED_FUNCTION_21_6(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, v15, v16, v17, v18[0]);
    OUTLINED_FUNCTION_27_0(v18);
    v10 = OUTLINED_FUNCTION_3_1();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(&v12, &qword_1ECA0DD70, &qword_1ECA0DD68);
  }
}

uint64_t TransitionContainerViewController.backdropGroupName.getter()
{
  v18 = *(v0 + OBJC_IVAR___TSTransitionContainerViewController_rootViewController);
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBB7300);
  v1 = v18;
  v2 = OUTLINED_FUNCTION_9_9();
  if (v2)
  {
    OUTLINED_FUNCTION_21_6(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19[0]);
    OUTLINED_FUNCTION_27_0(v19);
    v10 = OUTLINED_FUNCTION_3_1();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(&v13, &unk_1EDBB72F0, &qword_1EDBB7300);
  }

  return OUTLINED_FUNCTION_109();
}

id sub_1D7F2F730(void *a1)
{
  v1 = a1;
  v2 = UIViewController.ts_transitionContainerViewController.getter();

  return v2;
}

id UIViewController.ts_transitionContainerViewController.getter()
{
  type metadata accessor for TransitionContainerViewController();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    v4 = [v0 parentViewController];
    v2 = [v4 ts_transitionContainerViewController];
  }

  return v2;
}

void sub_1D7F2F804(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setIdentifier_];
}

unint64_t sub_1D7F2F8BC()
{
  result = qword_1ECA0DD78;
  if (!qword_1ECA0DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DD78);
  }

  return result;
}

unint64_t sub_1D7F2F914()
{
  result = qword_1ECA0DD80;
  if (!qword_1ECA0DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0DD80);
  }

  return result;
}

unint64_t sub_1D7F2F968(uint64_t a1)
{
  result = sub_1D7F2F990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7F2F990()
{
  result = qword_1EDBAF4D8;
  if (!qword_1EDBAF4D8)
  {
    type metadata accessor for TransitionContainerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAF4D8);
  }

  return result;
}

uint64_t sub_1D7F2FA00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D7F2FA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1D7F2FACC(_BYTE *result, unsigned int a2, unsigned int a3)
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