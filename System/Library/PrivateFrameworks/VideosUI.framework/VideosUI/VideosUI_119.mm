Swift::Void __swiftcall DocumentViewController.storeNavigationBarAppearanceValues()()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v4 = [v0 vuiNavigationController];
  if (v4)
  {
    v5 = v4;
    v28 = [v4 navigationBar];
  }

  else
  {
    v28 = 0;
  }

  v6 = [v2 vuiNavigationItem];
  v7 = [v6 largeTitleDisplayMode];

  if (v7 == 1)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = v7 == 3;
    if (!v7)
    {
      LOBYTE(v8) = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x458))(v8);
    }
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarPrefersLargeTitles) = v8 & 1;
  v9 = [v2 vuiNavigationItem];
  sub_1E3B62028();
  v11 = v10;

  v12 = v2 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity;
  *v12 = v11;
  v12[8] = 0;
  if (sub_1E39E01A4())
  {
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v15 = OUTLINED_FUNCTION_33_14();
    v16(v15);
    v17 = v2;
    v18 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      v19 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_100();
      *v19 = 136315138;
      v20 = DocumentViewController.logPrefix.getter();
      OUTLINED_FUNCTION_49_1(v20, v21);
      OUTLINED_FUNCTION_34_3();
      *(v19 + 4) = v1;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v22, v23, "%s storeNavigationBarAppearanceValues: store navBarTintColor");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v24 = OUTLINED_FUNCTION_13_8();
    v25(v24);
    v26 = [v29 tintColor];

    v27 = *(v17 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor);
    *(v17 + OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor) = v26;

    OUTLINED_FUNCTION_54_0();
  }
}

Swift::Bool __swiftcall DocumentViewController.navigationBarPrefersLargeTitle()()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 752))();
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = *(v3 + 64);

    if (!v4)
    {
LABEL_16:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    OUTLINED_FUNCTION_8();
    if (!(*(v5 + 488))())
    {
LABEL_15:

      goto LABEL_16;
    }

    v21[3] = &unk_1F5D5DBE8;
    v21[4] = &off_1F5D5C9D8;
    LOBYTE(v21[0]) = 0;
    LOBYTE(v3) = sub_1E39C29F0(v21, 1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v6 = [v1 vuiNavigationController];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 topViewController];

      if (v8)
      {

        if (v8 == v1)
        {
          v9 = [v1 vuiNavigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 viewControllers];

            sub_1E3280A90(0, &qword_1EE23B250);
            OUTLINED_FUNCTION_22_53();
            v12 = sub_1E42062B4();

            v13 = sub_1E4012160(1, v12);
            v17 = sub_1E400DF14(v13, v14, v15, v16);
            swift_unknownObjectRelease();
            if (v17)
            {
              type metadata accessor for CanonicalDocumentViewController();
              v18 = swift_dynamicCastClass();
              if (!v18)
              {

                return v3 & 1;
              }

              if (v3)
              {
                v3 = [v18 vuiNavigationItem];
                v19 = [v3 largeTitleDisplayMode];

                LOBYTE(v3) = v19 != 2;
                return v3 & 1;
              }

              goto LABEL_15;
            }
          }
        }
      }
    }
  }

  return v3 & 1;
}

uint64_t sub_1E4012160(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = sub_1E32AE9B0(a2);
  if (__OFSUB__(v4, a1))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v12 = sub_1E4207704();

    return v12;
  }

  v5 = (v4 - a1) & ~((v4 - a1) >> 63);
  v6 = sub_1E32AE9B0(a2);
  v7 = sub_1E380055C(0, v5, v6);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(0, a2);
  sub_1E37EFABC(v9, a2);
  if ((a2 & 0xC000000000000001) != 0 && v9)
  {
    sub_1E3280A90(0, &qword_1EE23B250);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_1E42074F4();
      v10 = v11;
    }

    while (v9 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void *DocumentViewController.barButtonContentView(from:existing:)()
{
  v0 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v1 = v0;
  v2 = OUTLINED_FUNCTION_16_0();
  v5 = sub_1E393D9C4(v2, v3, v4, 0);

  sub_1E325F748(v7, &qword_1ECF296C0);
  return v5;
}

void DocumentViewController.didConfigureNavigationBar(with:)()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 432))();
  if (v2)
  {
    v6 = v2;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v6))
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v0, ObjectType, v4);
    }
  }
}

Swift::Void __swiftcall DocumentViewController.scrollToTop(animated:needsFocusUpdate:)(Swift::Bool animated, Swift::Bool needsFocusUpdate)
{
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 432))();
  if (v6)
  {
    v8 = v6;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v8))
    {
      OUTLINED_FUNCTION_49_4();
      ObjectType = swift_getObjectType();
      (*(v2 + 8))(animated, needsFocusUpdate, ObjectType);
    }
  }
}

UINavigationItemLargeTitleDisplayMode __swiftcall DocumentViewController.defaultLargeTitleDisplayMode()()
{
  if (![v0 vuiIsNavigationRoot])
  {
    return 1;
  }

  v1 = [v0 presentingViewController];
  if (v1)
  {

    return 1;
  }

  if (sub_1E39DFFC8())
  {
    return 3;
  }

  if ([objc_opt_self() isPad])
  {
    return 1;
  }

  return 3;
}

id DocumentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*sub_1E4012858())(void *)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 624))();
  return sub_1E37C55D4;
}

void (*sub_1E4012960())(void *)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 648))();
  return sub_1E37C55D4;
}

void (*sub_1E4012A68())(void *)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 672))();
  return sub_1E37C55D4;
}

void (*sub_1E4012B70())(void *)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_57_36(v2);
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 696))();
  return sub_1E37C4BF8;
}

Swift::Void __swiftcall DocumentViewController.navigationController(_:didShow:animated:)(UINavigationController *_, UIViewController *didShow, Swift::Bool animated)
{
  v6 = [(UINavigationController *)_ viewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  v7 = sub_1E42062B4();

  sub_1E32AE9B0(v7);
  OUTLINED_FUNCTION_104_17();

  v8 = [(UINavigationController *)_ interactivePopGestureRecognizer];
  v9 = v8;
  if (v4 < 2)
  {
    if (v8)
    {
      [(UIGestureRecognizer *)v8 setEnabled:0];
    }

    v11 = [(UINavigationController *)_ interactivePopGestureRecognizer];
    if (v11)
    {
      v12 = v11;
      [(UIGestureRecognizer *)v11 setDelegate:0];
      goto LABEL_10;
    }
  }

  else
  {
    if (v8)
    {
      [(UIGestureRecognizer *)v8 setEnabled:1];
    }

    v10 = [(UINavigationController *)_ interactivePopGestureRecognizer];
    if (v10)
    {
      v12 = v10;
      [(UIGestureRecognizer *)v10 setDelegate:v3];
LABEL_10:
    }
  }
}

Swift::Void __swiftcall DocumentViewController.reportPageEvent()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & v4) + 0x2F0))();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = v6[7];

    if (v7)
    {
      OUTLINED_FUNCTION_8();
      (*(v8 + 576))();
      OUTLINED_FUNCTION_122();

      (*(*v6 + 128))(v9);
      OUTLINED_FUNCTION_16_5();

      v10 = objc_opt_self();
      v11 = [v10 sharedInstance];
      v12 = [v11 lastRecordedPageEventData];

      v13 = [v12 generateMetricsDataDictionary];
      sub_1E4205C64();

      v14 = [v10 sharedInstance];
      v15 = OUTLINED_FUNCTION_122();
      sub_1E3744600(v15);
      OUTLINED_FUNCTION_6_19();

      v16 = sub_1E4205C44();

      v17 = sub_1E4205C44();

      LOBYTE(v12) = [v10 arePageEventsIdentical:v16 previousPage:v17];

      if (v12)
      {
        sub_1E324FBDC();
        v18 = OUTLINED_FUNCTION_33_14();
        v19(v18);
        v20 = v1;
        v21 = sub_1E41FFC94();
        v22 = sub_1E4206814();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = OUTLINED_FUNCTION_6_21();
          v29 = OUTLINED_FUNCTION_100();
          *v23 = 136315138;
          v24 = DocumentViewController.logPrefix.getter();
          v26 = sub_1E3270FC8(v24, v25, &v29);

          *(v23 + 4) = v26;
          OUTLINED_FUNCTION_126_0(&dword_1E323F000, v21, v22, "%s VUIMetricsReportPageOverrideDelegate reportPageEvent called but page event is same as last one");
          OUTLINED_FUNCTION_5_21();
          OUTLINED_FUNCTION_21_0();
        }

        v27 = OUTLINED_FUNCTION_13_8();
        v28(v27);
      }

      else
      {
        (*((*v3 & *v1) + 0x410))();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40131E4(char a1)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if ((byte_1EE29AC60 & 1) == 0)
  {
    byte_1EE29AC60 = 1;
    sub_1E4206B94();
    v3 = VUISignpostLogObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E4297BE0;
    v5 = sub_1E4123DE4(a1);
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1E3283528();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_1E41FFBE4();
    sub_1E41FFB94();

    v8 = OUTLINED_FUNCTION_16_0();
    v9(v8);
  }
}

void sub_1E4013378()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = sub_1E324FBDC();
  (*(v7 + 16))(v1, v9, v5);
  v10 = v0;
  v11 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_26_8();
    *v4 = 136315138;
    v12 = DocumentViewController.logPrefix.getter();
    OUTLINED_FUNCTION_58_0(v12, v13);
    OUTLINED_FUNCTION_94_1();

    *(v4 + 4) = v2;
    OUTLINED_FUNCTION_50_52();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v1, v5);
  (*((*MEMORY[0x1E69E7D40] & *v10) + 0x438))(0, 1.0);
  [v4 vui:v10 didMoveToParentViewController:?];
  [v4 vui_endAppearanceTransition];
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4013548(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = 0;
  if (a2)
  {
    v79 = MEMORY[0x1E69E7CC0];
    v5 = sub_1E32AE9B0(a2);
    for (i = 0; v5 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E6911E60](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v7 = *(a2 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        goto LABEL_63;
      }

      if ([v7 isSystemItem] && objc_msgSend(v8, sel_systemItem) == 6)
      {
      }

      else
      {
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }
    }

    v9 = v79;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v75 = sub_1E32AE9B0(a1);
  while (1)
  {
    if (v75 == v10)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_12_5();
    v12 += 54;
    v13 = *v12;
    v19 = (*v12)(v14, v15, v16, v17, v18);
    if (v19)
    {
      v20 = v19;
      swift_getObjectType();
      v21 = OUTLINED_FUNCTION_22_53();
      if (dynamic_cast_existential_1_conditional(v21))
      {
        v23 = v22;
        ObjectType = swift_getObjectType();
        v25 = (*(v23 + 8))(v11, ObjectType, v23);

        if (v25)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v81 = &unk_1F5D5D0A8;
    v82 = &off_1F5D5C758;
    LOBYTE(v79) = 13;
    sub_1E4016A3C();
    sub_1E39C2B80();
    __swift_destroy_boxed_opaque_existential_1(&v79);
    if (v78 != 2)
    {
      LOBYTE(v79) = v78;
      LOBYTE(v77) = 1;
      sub_1E3751D5C();
      if (sub_1E4205E84())
      {
        v26 = sub_1E3F8A0A4();
        v28 = v27;
        sub_1E3280A90(0, qword_1EE23B2E0);
        sub_1E3280A90(0, &unk_1ECF3BDE0);
        OUTLINED_FUNCTION_4_0();
        v29 = v9;
        v30 = swift_allocObject();
        v35 = v13(v30, v31, v32, v33, v34);
        swift_unknownObjectWeakInit();

        OUTLINED_FUNCTION_5_10();
        v36 = swift_allocObject();
        v36[2] = v30;
        v36[3] = v26;
        v9 = v29;
        v36[4] = v28;

        v69 = 0;
        v70 = 0;
        v72 = sub_1E4016A90;
        v73 = v36;
        v71 = 0;
        OUTLINED_FUNCTION_25();
        sub_1E4206FA4();
        v25 = sub_1E4206864();

LABEL_41:
        if (sub_1E39DFFC8())
        {
          v81 = &unk_1F5D5DAC8;
          v82 = &off_1F5D5C998;
          LOBYTE(v79) = 44;
          v45 = sub_1E39C29F0(&v79, 1);
          __swift_destroy_boxed_opaque_existential_1(&v79);
          [v25 _setPrefersNoPlatter_];
        }

        v46 = type metadata accessor for Accessibility();
        OUTLINED_FUNCTION_47_0();
        (*(v47 + 320))(v48, v49, v50, v51, v52);
        sub_1E40A7DC8();
        OUTLINED_FUNCTION_49_4();

        v53 = v25;
        v54 = OUTLINED_FUNCTION_94_1();
        sub_1E37FB7F0(v54, v46, v25, &selRef_setAccessibilityIdentifier_);
        v81 = &unk_1F5D5DAC8;
        v82 = &off_1F5D5C998;
        LOBYTE(v79) = 1;
        sub_1E39C29A4(&v79);
        OUTLINED_FUNCTION_49_4();
        __swift_destroy_boxed_opaque_existential_1(&v79);
        if (v46)
        {
          [v25 setIsAccessibilityElement_];
          sub_1E37FB7F0(v11, v46, v25, &selRef_setAccessibilityLabel_);
        }

        v55 = v83;
        if (v83)
        {
          if (v83 >> 62)
          {
            if (sub_1E4207384())
            {
              goto LABEL_48;
            }
          }

          else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            if ((sub_1E39DFFC8() & 1) == 0)
            {
              sub_1E3280A90(0, qword_1EE23B2E0);
              v56 = sub_1E4206864();
              [v56 setWidth_];
              v57 = v56;
              MEMORY[0x1E6910BF0](v57, v58, v59, v60, v61);
              OUTLINED_FUNCTION_131_14();
              if (v62)
              {
                OUTLINED_FUNCTION_141_10();
              }

              sub_1E4206324();

              v55 = v83;
              if (!v83)
              {
                goto LABEL_52;
              }
            }
          }
        }

        else
        {
LABEL_52:
          v55 = MEMORY[0x1E69E7CC0];
        }

        v83 = v55;
        v63 = v25;
        MEMORY[0x1E6910BF0](v63, v64, v65, v66, v67);
        OUTLINED_FUNCTION_131_14();
        if (v62)
        {
          OUTLINED_FUNCTION_141_10();
        }

        sub_1E4206324();
        v68 = [v63 customView];
        sub_1E4013D28();

        goto LABEL_56;
      }
    }

    if (v9 && (v78 = v9, v79 = v10, v80 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAF8), sub_1E328FCF4(&qword_1EE23B4B0, &qword_1ECF3BAF8), sub_1E38D2054(&v79, &v77), (v37 = v77) != 0))
    {
      v38 = [v77 customView];
    }

    else
    {
      v38 = 0;
    }

    OUTLINED_FUNCTION_12_5();
    v40 = (*(v39 + 1120))(v11, v38);

    if (v40)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        v42 = v41;
        v43 = v40;
        if (a4)
        {
          v44 = sub_1E4205ED4();
        }

        else
        {
          v44 = 0;
        }

        [v42 setBackdropGroupName_];
      }

      v25 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

      if (v25)
      {
        goto LABEL_41;
      }
    }

LABEL_56:

    ++v10;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

void sub_1E4013D28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  if (!v3)
  {
    goto LABEL_16;
  }

  v42 = &unk_1F5D5D0A8;
  v43 = &off_1F5D5C758;
  LOBYTE(v41[0]) = 7;
  v14 = v3;
  v15 = sub_1E39C29A4(v41);
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (!v17)
  {

LABEL_16:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 isPlaybackUIBeingShown];

  if (v19)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v20(v10);

    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_6_21();
      v41[0] = OUTLINED_FUNCTION_26_8();
      *v1 = 136315138;
      v23 = OUTLINED_FUNCTION_53();
      sub_1E3270FC8(v23, v24, v25);
      OUTLINED_FUNCTION_104_17();

      *(v1 + 4) = v15;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v26, v22, "UnifiedMessaging::skipping adding bubble tip %s due to playback ui being shown");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
    goto LABEL_16;
  }

  v27 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x230))();
  if (v27)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v28(v13);

    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_6_21();
      v41[0] = OUTLINED_FUNCTION_26_8();
      *v1 = 136315138;
      v31 = OUTLINED_FUNCTION_53();
      sub_1E3270FC8(v31, v32, v33);
      OUTLINED_FUNCTION_104_17();

      *(v1 + 4) = v15;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v34, v30, "UnifiedMessaging::skipping adding bubble tip %s due to already existing bubble tip");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v6 + 8))(v13, v4);
    goto LABEL_16;
  }

  v35 = [objc_opt_self() defaultLocationManager];
  if (v35)
  {
    v36 = v35;
    OUTLINED_FUNCTION_4_0();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v15;
    v38[4] = v17;
    v38[5] = v14;
    v43 = sub_1E4016B34;
    v44 = v38;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 1107296256;
    v41[2] = sub_1E39EBA28;
    v42 = &block_descriptor_155;
    v39 = _Block_copy(v41);
    v40 = v14;

    [v36 fetchAuthorizationStatus_];
    _Block_release(v39);

    goto LABEL_16;
  }

  __break(1u);
}

void sub_1E4014164()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  if (!v9)
  {
    goto LABEL_29;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_19_3();
  v52 = swift_dynamicCastObjCClass();
  if (!v52)
  {
    goto LABEL_29;
  }

  v49 = v1;
  v51 = v5;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
LABEL_8:
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v25 = v52;
    if (swift_unknownObjectWeakLoadStrong())
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_8_9();
      v27 = *(v26 + 568);
      swift_unknownObjectRetain();
      v27(v52);
    }

    swift_unknownObjectRetain();
    [v52 setModalPresentationStyle_];
    v28 = [v52 popoverPresentationController];
    v29 = v49;
    if (v28)
    {
      v5 = v28;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      [v5 setDelegate_];
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_50();
    swift_unknownObjectRetain();
    [v52 setDelegate_];

    v31 = [v52 popoverPresentationController];
    if (v31)
    {
      v32 = v31;
      [v31 setSourceView_];
    }

    v33 = [v52 popoverPresentationController];
    if (v33)
    {
      v34 = v33;
      [v29 frame];
      v35 = CGRectGetWidth(v54) * 0.5;
      [v29 frame];
      [v34 setSourceRect_];
    }

    v36 = [objc_opt_self() sharedInstance];
    v37 = [v36 appController];

    if (v37)
    {
      v38 = [v37 appRootViewController];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 view];
        if (v40)
        {
          v41 = v40;
          v42 = [v52 popoverPresentationController];
          swift_unknownObjectRelease();
          if (v42)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
            OUTLINED_FUNCTION_5_10();
            v43 = swift_allocObject();
            *(v43 + 16) = xmmword_1E4298880;
            *(v43 + 32) = v41;
            v41 = v41;
            sub_1E4016718(v43, v42);
          }

          v29 = v50;
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v25 = v52;
        goto LABEL_28;
      }
    }

    swift_unknownObjectRelease();
LABEL_28:
    v44 = [v25 loadPromise];
    OUTLINED_FUNCTION_50();
    swift_unknownObjectRelease();
    v45 = swift_allocObject();
    v45[2] = v7;
    v45[3] = v29;
    v45[4] = v51;
    v45[5] = v3;
    v45[6] = v25;
    v53[4] = sub_1E4016F0C;
    v53[5] = v45;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 1107296256;
    v53[2] = sub_1E326FFE4;
    v53[3] = &block_descriptor_65_0;
    v46 = _Block_copy(v53);
    swift_unknownObjectRetain();

    v47 = v29;

    OUTLINED_FUNCTION_19_36(v48, sel_addFinishBlock_);
    _Block_release(v46);
    swift_unknownObjectRelease();

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v18 = *(v17 + 560);
  v19 = v3;
  v20 = swift_unknownObjectRetain();
  v21 = v18(v20);

  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v22, v10);

  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_6_21();
    v53[0] = OUTLINED_FUNCTION_16_2();
    *v19 = 136315138;
    *(v19 + 4) = sub_1E3270FC8(v51, v19, v53);
    _os_log_impl(&dword_1E323F000, v23, v24, "UnifiedMessaging::skipping adding bubble tip %s due to already existing bubble tip", v19, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_7_9();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v12 + 8))(v16, v10);
LABEL_29:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E401478C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v23 = v6;
  v8 = v7;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v24 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v8;
  v18[4] = v23;
  v18[5] = v5;
  v18[6] = v3;
  v26[4] = sub_1E4016F6C;
  v26[5] = v18;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v26[2] = v19;
  v26[3] = &block_descriptor_72_1;
  v20 = _Block_copy(v26);
  v21 = v8;

  v22 = v3;

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  sub_1E40172E0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  OUTLINED_FUNCTION_134_8();
  MEMORY[0x1E6911380]();
  _Block_release(v20);

  (*(v11 + 8))(v0, v9);
  (*(v14 + 8))(v1, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4014A94()
{
  OUTLINED_FUNCTION_31_1();
  v53 = v3;
  v54 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  v20 = Strong;
  v21 = [v7 window];
  if (!v21)
  {
    v27 = sub_1E324FBDC();
    (*(v10 + 16))(v18, v27, v8);

    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_6_21();
      v55 = OUTLINED_FUNCTION_100();
      *(v30 + 4) = OUTLINED_FUNCTION_84_22(4.8149e-34);
      OUTLINED_FUNCTION_126_0(&dword_1E323F000, v28, v29, "UnifiedMessaging::bubble tip %s overlay anchor is no longer visible.");
      OUTLINED_FUNCTION_24_18();
      OUTLINED_FUNCTION_21_0();

      (*(v10 + 8))(v18, v8);
    }

    else
    {

      (*(v10 + 8))(v18, v8);
    }

    goto LABEL_25;
  }

  v52 = v10;
  v22 = v8;

  v23 = v20;
  v24 = [v23 presentedViewController];
  v25 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x230))();
  v26 = v25;
  if (!v24)
  {
    v24 = v25;
    if (!v25)
    {
LABEL_16:

      v43 = sub_1E324FBDC();
      v44 = v52;
      (*(v52 + 16))(v1, v43, v8);

      v45 = sub_1E41FFC94();
      v46 = sub_1E4206814();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_6_21();
        v55 = OUTLINED_FUNCTION_100();
        *(v47 + 4) = OUTLINED_FUNCTION_84_22(4.8149e-34);
        OUTLINED_FUNCTION_126_0(&dword_1E323F000, v45, v46, "UnifiedMessaging::bubble tip %s is already presented.");
        OUTLINED_FUNCTION_24_18();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      (*(v44 + 8))(v1, v8);
      goto LABEL_25;
    }

    goto LABEL_10;
  }

  if (!v25)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v24 == v26)
  {
    goto LABEL_16;
  }

LABEL_11:
  v31 = [v23 presentedViewController];

  v32 = sub_1E324FBDC();
  v33 = *(v52 + 16);
  if (v31)
  {
    v33(v14, v32, v8);

    v34 = v31;
    v35 = sub_1E41FFC94();
    v36 = sub_1E4206814();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_49_0();
      v38 = OUTLINED_FUNCTION_160();
      v53 = v35;
      v39 = v38;
      v40 = OUTLINED_FUNCTION_100();
      v55 = v40;
      *v37 = 136315394;
      *(v37 + 4) = sub_1E3270FC8(v54, v5, &v55);
      *(v37 + 12) = 2112;
      *(v37 + 14) = v34;
      *v39 = v31;
      v41 = v34;
      v42 = v53;
      _os_log_impl(&dword_1E323F000, v53, v36, "UnifiedMessaging::bubble tip %s another controller %@ is already presented", v37, 0x16u);
      sub_1E325F748(v39, &unk_1ECF28E30);
      OUTLINED_FUNCTION_46_1();
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_7();
    }

    else
    {
    }

    (*(v52 + 8))(v14, v22);
  }

  else
  {
    v33(v0, v32, v8);

    v48 = sub_1E41FFC94();
    v49 = sub_1E4206814();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_6_21();
      v55 = OUTLINED_FUNCTION_100();
      *(v50 + 4) = OUTLINED_FUNCTION_84_22(4.8149e-34);
      OUTLINED_FUNCTION_126_0(&dword_1E323F000, v48, v49, "UnifiedMessaging::presenting bubble tip %s");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v52 + 8))(v0, v8);
    [v23 presentViewController:v53 animated:1 completion:0];
  }

LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E401505C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isPlaybackUIBeingShown];

  if (v1)
  {
    OUTLINED_FUNCTION_21();
    v3 = (*(v2 + 560))();
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
    }

    OUTLINED_FUNCTION_21();
    v6 = *(v5 + 568);

    v6(0);
  }
}

void sub_1E401517C(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity];
  if ((a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity + 8] & 1) == 0 && *v1 <= 0.0)
  {
    v3 = sub_1E3827728([a1 vuiNavigationItem], &selRef_title);
    v4 = &a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitle];
    *v4 = v3;
    v4[1] = v5;

    v6 = OUTLINED_FUNCTION_150_7();
    [v6 setTitle_];

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_150_7();
      v8 = [v7 titleView];

      if (!v8 || (type metadata accessor for UberNavigationBarTitleView(), OUTLINED_FUNCTION_20_2(), v9 = swift_dynamicCastClass(), v8, !v9))
      {
        v10 = OUTLINED_FUNCTION_150_7();
        v11 = [v10 titleView];

        v12 = *&a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView];
        *&a1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTitleView] = v11;

        v13 = OUTLINED_FUNCTION_150_7();
        [v13 setTitleView_];
      }
    }
  }
}

void sub_1E4015310()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_161();
  v3 = (*(v2 + 752))();
  if (v3)
  {
    OUTLINED_FUNCTION_35_10(v3);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = v0[7];

    if (v4)
    {

      sub_1E3905190();
      if ((sub_1E4205E84() & 1) == 0)
      {
        v5 = [objc_opt_self() sharedInstance];
        v6 = [v5 isFullscreenPlaybackUIBeingShown];

        if ((v6 & 1) == 0)
        {
          v7 = [v1 view];
          if (v7)
          {
            v8 = v7;
            v9 = [v7 window];

            if (v9)
            {

              OUTLINED_FUNCTION_12_5();
              (*(v10 + 1040))();
            }
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

uint64_t sub_1E40154B8()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FDEE4();
  v3 = v1;
  v0();

  v4 = OUTLINED_FUNCTION_53();
  return v5(v4);
}

void DocumentViewController.messageViewController(_:didUpdate:)()
{
  OUTLINED_FUNCTION_93();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v6 = sub_1E324FBDC();
  (*(v4 + 16))(v0, v6, v2);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_16_2();
    *v1 = 136315138;
    v9 = sub_1E4206E64();
    v11 = sub_1E3270FC8(v9, v10, &v14);

    *(v1 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v7, v8, "UnifiedMessaging::didUpdate newSize %s", v1, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_7_9();
  }

  v12 = OUTLINED_FUNCTION_16_0();
  v13(v12);
  OUTLINED_FUNCTION_54_0();
}

uint64_t DocumentViewController.messageViewController(_:didFailWithError:)()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v5 = sub_1E324FBDC();
  (*(v3 + 16))(v0, v5, v1);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_126_9();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  v13 = OUTLINED_FUNCTION_16_0();
  return v14(v13);
}

void DocumentViewController.messageViewController(_:didSelectActionWith:)()
{
  OUTLINED_FUNCTION_31_1();
  v79 = v0;
  v2 = v1;
  v73 = v3;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v74 = v5;
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v72 = v7 - v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v77 = (v12 - v13);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v71 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v76 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  v21 = sub_1E324FBDC();
  v22 = *(v10 + 16);
  v23 = v8;
  v22(v20, v21, v8);
  v24 = v2;
  v25 = sub_1E41FFC94();
  v26 = sub_1E42067E4();

  v27 = &selRef_needsAdamIdToCanonicalIdConversion;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = OUTLINED_FUNCTION_49_0();
    v80 = v10;
    v29 = v28;
    v30 = swift_slowAlloc();
    *v29 = 138412546;
    *(v29 + 4) = v24;
    *v30 = v24;
    *(v29 + 12) = 2112;
    v31 = [v24 originalRequest];
    *(v29 + 14) = v31;
    v30[1] = v31;
    _os_log_impl(&dword_1E323F000, v25, v26, "UnifiedMessaging::Action dialogResult: %@, request: %@", v29, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
    swift_arrayDestroy();
    v27 = &selRef_needsAdamIdToCanonicalIdConversion;
    OUTLINED_FUNCTION_6_0();
    v10 = v80;
    OUTLINED_FUNCTION_6_0();
  }

  v32 = *(v10 + 8);
  v33 = v23;
  v80 = v10 + 8;
  v78 = v32;
  v32(v20, v23);
  [v79 dismissViewControllerAnimated:1 completion:0];
  v34 = [v24 v27[138]];
  v35 = [v24 selectedActionIdentifier];
  v36 = sub_1E4205F14();
  v38 = v37;

  v39 = sub_1E3A7C950(v36, v38, v34);
  if (v39)
  {
    if ([v39 style] == 2)
    {
      v40 = v76;
      v22(v76, v21, v33);
      v41 = sub_1E41FFC94();
      v42 = sub_1E42067E4();
      if (os_log_type_enabled(v41, v42))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_62(&dword_1E323F000, v43, v44, "UnifiedMessaging::Action Cancel");
        OUTLINED_FUNCTION_7_9();
      }

      v78(v40, v33);
    }

    else
    {
      v57 = [v39 deepLink];
      if (v57)
      {
        v58 = v57;
        v59 = v72;
        sub_1E41FE3C4();

        v60 = _s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
        v61 = *v60;
        OUTLINED_FUNCTION_38();
        sub_1E3B60024();

        v62 = *v60;
        nullsub_1(v63, v64);

        (*(v74 + 8))(v59, v75);
      }

      else
      {
        v65 = v71;
        v22(v71, v21, v33);
        v66 = sub_1E41FFC94();
        v67 = sub_1E42067E4();
        if (os_log_type_enabled(v66, v67))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_62(&dword_1E323F000, v68, v69, "UnifiedMessaging::Action Deeplink does not exist");
          OUTLINED_FUNCTION_7_9();
        }

        v78(v65, v33);
      }
    }
  }

  else
  {
    v45 = v77;
    v22(v77, v21, v33);
    v46 = v24;
    v47 = sub_1E41FFC94();
    v48 = sub_1E42067E4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v45;
      v50 = OUTLINED_FUNCTION_6_21();
      v81 = OUTLINED_FUNCTION_100();
      *v50 = 136315138;
      v51 = [v46 selectedActionIdentifier];
      v52 = sub_1E4205F14();
      v54 = v53;

      v55 = sub_1E3270FC8(v52, v54, &v81);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_1E323F000, v47, v48, "UnifiedMessaging::Action Could not find action for %s", v50, 0xCu);
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_65_0();

      v56 = v49;
    }

    else
    {

      v56 = v45;
    }

    v78(v56, v33);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t DocumentViewController.messageViewController(_:enqueueEventWithFields:inTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    sub_1E4205F14();
  }

  v4 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_32_0();
  sub_1E3B5A7AC();
}

uint64_t DocumentViewController.deeplinkURLWasHandled(_:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_139();
  v5 = [v1 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  OUTLINED_FUNCTION_22_53();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);

  v8 = sub_1E41FE414();
  if (v7)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    v12 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL;
    OUTLINED_FUNCTION_11_3();
    sub_1E38DAEEC(v2, v1 + v12);
    swift_endAccess();
    OUTLINED_FUNCTION_26_3();
    v14 = (*((*MEMORY[0x1E69E7D40] & v13) + 0x498))(a1);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_13_8();
    v16(v15);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
    v17 = OBJC_IVAR____TtC8VideosUI22DocumentViewController_pendingDeeplinkURL;
    OUTLINED_FUNCTION_11_3();
    sub_1E38DAEEC(v2, v1 + v17);
    swift_endAccess();
    v14 = 0;
  }

  return v14 & 1;
}

_OWORD *sub_1E4016360(_OWORD *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E37C375C(a2);
  if (__OFADD__(v5[2], (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E4D8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_1E37C375C(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    type metadata accessor for Key(0);
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    v13 = (v12[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v13);

    return sub_1E329504C(a1, v13);
  }

  else
  {
    sub_1E4016498(v8, a2, a1, v12);

    return a2;
  }
}

_OWORD *sub_1E4016498(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E329504C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t type metadata accessor for DocumentViewController()
{
  result = qword_1EE29AC48;
  if (!qword_1EE29AC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E401654C(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_1E40172E0(&qword_1EE23B100, type metadata accessor for Key);
  v3 = sub_1E4205C44();

  [a2 setLargeTitleTextAttributes_];
}

uint64_t sub_1E4016610(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_319();
  sub_1E40172E0(v4, v5);
  OUTLINED_FUNCTION_32_0();
  v6 = sub_1E4205C64();

  return v6;
}

uint64_t sub_1E40166A8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1E3280A90(0, qword_1EE23B2E0);
  OUTLINED_FUNCTION_19_3();
  v4 = sub_1E42062B4();

  return v4;
}

void sub_1E4016718(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23AE80);
  v3 = sub_1E42062A4();

  [a2 setPassthroughViews_];
}

uint64_t sub_1E40167AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40167F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E4016878(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 52))
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

uint64_t sub_1E40168CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1E4016948()
{
  sub_1E3286EF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E4016A3C()
{
  result = qword_1EE27C300[0];
  if (!qword_1EE27C300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27C300);
  }

  return result;
}

uint64_t sub_1E4016A90()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v5[3] = sub_1E3280A90(0, &qword_1EE23B250);
    v5[0] = v3;
    v4 = v3;
    v1(v5);

    return sub_1E325F748(v5, &unk_1ECF296E0);
  }

  return result;
}

void sub_1E4016B34(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_1E3D54BE8();

  v6 = *sub_1E3D54C24();
  type metadata accessor for UnifiedMessagingSignalProvider();
  v7 = v6;
  sub_1E3D595AC(a1);
  v8 = sub_1E3D595C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v10 = sub_1E3B58240();
  v11 = *(v10 + 1);
  *(inited + 32) = *v10;
  *(inited + 40) = v11;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0);
  *(inited + 48) = v8;

  sub_1E4205CB4();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (OUTLINED_FUNCTION_71(), OUTLINED_FUNCTION_64(), v13 = (*(v12 + 752))(), v8, !v13) || (OUTLINED_FUNCTION_25(), swift_beginAccess(), v14 = *(v13 + 56), , , !v14))
  {
    v28 = 0u;
    v29 = 0u;
    goto LABEL_8;
  }

  LOBYTE(v27[0]) = 1;
  OUTLINED_FUNCTION_8();
  (*(v15 + 776))(&v28, v27, &unk_1F5D5D1C8, &off_1F5D5C798);

  if (!*(&v29 + 1))
  {
LABEL_8:
    sub_1E325F748(&v28, &unk_1ECF296E0);
    goto LABEL_9;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    v17 = *&v27[0];
    v18 = sub_1E3B5824C();
    v19 = *v18;
    v20 = v18[1];
    *(&v29 + 1) = v16;
    *&v28 = v17;
    sub_1E329504C(&v28, v27);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(v27, v19, v20);
  }

LABEL_9:
  v21 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_4_0();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  v24 = v21;

  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v3;
  v25[4] = v4;
  v25[5] = v5;

  v26 = v5;
  sub_1E3B584A8();
}

uint64_t objectdestroy_54Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

void sub_1E4016FD4()
{
  v1 = *(v0 + 32);
  [*(v0 + 16) setAlpha_];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v2 + 1152))(v1);
  }
}

void sub_1E401707C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (([a1 isCancelled] & 1) == 0)
  {
    if (v2)
    {
      type metadata accessor for DocumentViewController();
      OUTLINED_FUNCTION_19_3();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = v2;
        v3(v5);
      }
    }
  }
}

void sub_1E4017118()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((sub_1E39E01A4() & 1) == 0 && *&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarTintColor])
  {
    [v2 setTintColor_];
  }

  if ((sub_1E39DFFC8() & 1) == 0 && (v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity + 8] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC8VideosUI22DocumentViewController_navBarOpacity];
    v4 = [v1 navigationItem];
    sub_1E3B62038(v3);
  }

  sub_1E40D90A0();
}

id sub_1E40171B8()
{
  v1 = *(v0 + 16);
  v2 = *sub_1E3E60700();

  return [v1 setTintColor_];
}

uint64_t objectdestroy_111Tm()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

void sub_1E401723C(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if ([a1 isCancelled])
  {
    if (v3)
    {
      type metadata accessor for DocumentViewController();
      OUTLINED_FUNCTION_22_53();
      if (swift_dynamicCastClass())
      {
        v5 = v3;
        [v2 transitionDuration];
        sub_1E400B304(v4);
      }
    }
  }
}

uint64_t sub_1E40172E0(unint64_t *a1, void (*a2)(uint64_t))
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

void *OUTLINED_FUNCTION_74_22()
{
  sub_1E3251BE8((v0 - 160), v0 - 120);
  v1 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
}

id OUTLINED_FUNCTION_83_21()
{

  return [v0 (v1 + 703)];
}

unint64_t OUTLINED_FUNCTION_84_22(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 120);

  return sub_1E3270FC8(v5, v1, (v3 - 112));
}

id OUTLINED_FUNCTION_88_18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

unint64_t OUTLINED_FUNCTION_89_18(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 176));
}

void OUTLINED_FUNCTION_103_14()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 1024;
  *(v0 + 14) = *(v2 - 180);
}

id OUTLINED_FUNCTION_110_13()
{

  return [v0 (v1 + 679)];
}

uint64_t OUTLINED_FUNCTION_112_16()
{
}

id OUTLINED_FUNCTION_116_14()
{

  return [v0 (v1 + 2611)];
}

unint64_t OUTLINED_FUNCTION_119_9(float a1)
{
  *v1 = a1;

  return DocumentViewController.logPrefix.getter();
}

id OUTLINED_FUNCTION_138_10(void **a1)
{
  v2 = *a1;

  return v2;
}

void OUTLINED_FUNCTION_139_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_141_10()
{

  return sub_1E42062F4();
}

BOOL OUTLINED_FUNCTION_148_9()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_150_7()
{

  return [v0 (v1 + 703)];
}

id OUTLINED_FUNCTION_152_8(void *a1)
{

  return [a1 (v1 + 4088)];
}

double sub_1E40175B0()
{
  [objc_msgSend(v0 container)];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

void type metadata accessor for NSDirectionalEdgeInsets()
{
  if (!qword_1EE23B048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B048);
    }
  }
}

unint64_t sub_1E401765C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModelKeys.rawValue.getter(0);
  sub_1E3277E60(v10, v11, a1, &v27);

  v12 = v28;
  sub_1E329505C(&v27);
  if (v12)
  {
    sub_1E327F454(a2, &v27);
    type metadata accessor for Document();
    v13 = swift_allocObject();
    sub_1E4017B78(a1, &v27);
    sub_1E327F454(a2, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
    type metadata accessor for DocumentServiceRequestContext();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_8();
      v15 = *(v14 + 200);

      v15(v16);
    }

    __swift_destroy_boxed_opaque_existential_1(a2);
  }

  else
  {
    ViewModelKeys.rawValue.getter(2);
    sub_1E3277E60(v17, v18, a1, &v27);

    if (v28)
    {
      sub_1E329505C(&v27);
      v19 = type metadata accessor for DocumentFragment();
      sub_1E327F454(a2, &v27);
      sub_1E3BC87A0(a1, &v27);
      v20 = OUTLINED_FUNCTION_50();
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v19 | 0x8000000000000000;
    }

    else
    {

      sub_1E329505C(&v27);
      v21 = sub_1E324FBDC();
      (*(v6 + 16))(v9, v21, v4);
      v22 = sub_1E41FFC94();
      v23 = sub_1E42067F4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1E323F000, v22, v23, "MultiPartDocument:returned an unknown response for the request.", v24, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      __swift_destroy_boxed_opaque_existential_1(a2);
      (*(v6 + 8))(v9, v4);
      return 0xF000000000000007;
    }
  }

  return v13;
}

uint64_t sub_1E4017924()
{
  OUTLINED_FUNCTION_15_162();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_13_8();
  sub_1E4017B78(v1, v2);
  return v0;
}

unint64_t sub_1E4017968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1E401765C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t Document.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*Document.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E4017AC4;
}

void sub_1E4017AC4()
{
  OUTLINED_FUNCTION_106_2();
  *(v0[5] + 40) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

void sub_1E4017B78(uint64_t a1, void *a2)
{
  v120 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v107 - v11;
  v113 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v112 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_242();
  v2[2] = v17;
  v2[3] = v18;
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[9] = 0;
  v2[7] = 0;
  *&v111 = v2 + 7;
  v2[8] = 0;
  v115 = v2 + 8;
  ViewModelKeys.rawValue.getter(1);
  sub_1E3277E60(v19, v20, a1, &v126);

  v21 = MEMORY[0x1E69E6158];
  v109 = v12;
  v116 = v6;
  if (*(&v127[0] + 1))
  {
    v22 = a2;
    if (swift_dynamicCast())
    {
      v24 = *(&v123 + 1);
      v23 = v123;
      goto LABEL_6;
    }
  }

  else
  {
    v22 = a2;
    sub_1E329505C(&v126);
  }

  v24 = 0xEB00000000657079;
  v23 = 0x546E776F6E6B6E55;
LABEL_6:
  sub_1E4206BA4();
  v25 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1E4297BE0;
  *(v26 + 56) = v21;
  *(v26 + 64) = sub_1E3283528();
  *(v26 + 32) = v23;
  *(v26 + 40) = v24;
  v27 = v112;
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_24_106();
  sub_1E41FFB94();

  v30 = *(v14 + 8);
  v28 = v14 + 8;
  v29 = v30;
  v30(v27, v113);
  v31 = v22[3];
  v32 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v31);
  v33 = (*(v32 + 16))(v31, v32);
  v34 = v117;
  OUTLINED_FUNCTION_3_0();
  swift_unknownObjectWeakAssign();

  sub_1E327F454(v22, &v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
  type metadata accessor for DocumentServiceRequestContext();
  if (swift_dynamicCast())
  {
    v35 = v123;
  }

  else
  {
    v35 = 0;
  }

  ViewModelKeys.rawValue.getter(0);
  sub_1E3277E60(v36, v37, a1, &v126);

  if (!*(&v127[0] + 1))
  {
    sub_1E329505C(&v126);
    OUTLINED_FUNCTION_16_148();
    goto LABEL_49;
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  swift_dynamicCast();
  OUTLINED_FUNCTION_16_148();
  if ((v38 & 1) == 0)
  {
    goto LABEL_49;
  }

  v39 = v123;
  if (!*(v123 + 16))
  {

LABEL_49:
    v90 = sub_1E324FBDC();
    v91 = v116;
    v92 = v119;
    (*(v116 + 16))(v119, v90, v31);

    v93 = sub_1E41FFC94();
    v94 = sub_1E42067F4();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = OUTLINED_FUNCTION_6_21();
      v96 = swift_slowAlloc();
      *&v126 = v96;
      *v95 = 136315138;
      *&v123 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF347A0);
      v97 = sub_1E42070D4();
      v99 = sub_1E3270FC8(v97, v98, &v126);

      *(v95 + 4) = v99;
      _os_log_impl(&dword_1E323F000, v93, v94, "Document:: Failed to create document from JSON <%s>.", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v91 + 8))(v119, v120);
    }

    else
    {

      (*(v91 + 8))(v92, v31);
    }

    goto LABEL_52;
  }

  v107[0] = v29;
  v107[1] = v28;
  v107[2] = v35;
  v108 = v22;
  type metadata accessor for PagePerformanceReporter();
  v40 = sub_1E3C69AA0(v39);
  OUTLINED_FUNCTION_3_0();
  v34[9] = v40;

  v118 = v39;
  v43 = *(v39 + 64);
  v42 = v39 + 64;
  v41 = v43;
  v44 = 1 << *(v42 - 32);
  v45 = v120;
  v46 = -1;
  if (v44 < 64)
  {
    v46 = ~(-1 << v44);
  }

  v47 = v46 & v41;
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3_0();
  v48 = 0;
  v49 = (v44 + 63) >> 6;
  v115 = (v116 + 16);
  v116 += 8;
  *&v50 = 136315138;
  v111 = v50;
  v51 = v114;
  v119 = v42;
  if (!v47)
  {
LABEL_16:
    while (1)
    {
      v52 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v52 >= v49)
      {
        v47 = 0;
        v125 = 0u;
        v124 = 0u;
        v123 = 0u;
        goto LABEL_21;
      }

      v47 = *(v42 + 8 * v52);
      ++v48;
      if (v47)
      {
        v48 = v52;
        goto LABEL_20;
      }
    }

    __break(1u);
    return;
  }

  while (1)
  {
    v52 = v48;
LABEL_20:
    v53 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v54 = v53 | (v52 << 6);
    v55 = (*(v118 + 48) + 16 * v54);
    v57 = *v55;
    v56 = v55[1];
    sub_1E328438C(*(v118 + 56) + 32 * v54, v122);
    *&v123 = v57;
    *(&v123 + 1) = v56;
    sub_1E329504C(v122, &v124);

LABEL_21:
    v126 = v123;
    v127[0] = v124;
    v127[1] = v125;
    v58 = *(&v123 + 1);
    if (!*(&v123 + 1))
    {

      sub_1E4206B94();
      v88 = VUISignpostLogObject();
      v89 = v112;
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_24_106();
      sub_1E41FFBA4();

      (v107[0])(v89, v113);
      goto LABEL_47;
    }

    v59 = v126;
    sub_1E329504C(v127, &v123);
    if (!swift_dynamicCast())
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_241();
      v64(v51);

      v65 = sub_1E41FFC94();
      v66 = v51;
      v67 = sub_1E42067F4();

      if (os_log_type_enabled(v65, v67))
      {
        OUTLINED_FUNCTION_6_21();
        v68 = OUTLINED_FUNCTION_16_2();
        v69 = OUTLINED_FUNCTION_6_208(v68);

        *(v45 + 4) = v69;
        _os_log_impl(&dword_1E323F000, v65, v67, "Document:: Invalid response for type <%s>.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        v34 = v117;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_16_148();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_3_244();
      v75(v66, v45);
      v51 = v66;
      goto LABEL_36;
    }

    v60 = *&v122[0];

    OUTLINED_FUNCTION_13_8();
    if (sub_1E41240F4() != 31)
    {
      break;
    }

    sub_1E384EE08(100);
    if (v59 == v62 && v61 == v58)
    {

LABEL_40:
      OUTLINED_FUNCTION_10_163();
      v76 = OUTLINED_FUNCTION_13_8();
      sub_1E3A7CD30(v76, v77, v78, 0);
      OUTLINED_FUNCTION_50();

      __swift_destroy_boxed_opaque_existential_1(&v123);
      v51 = v114;
      if (v60)
      {
        OUTLINED_FUNCTION_8();
        v80 = *(v79 + 656);

        v80(v81);
        v34[8] = v60;

        OUTLINED_FUNCTION_16_148();
      }

      else
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_2_241();
        v82 = v110;
        v45 = v120;
        v83(v110);
        v84 = sub_1E41FFC94();
        v85 = sub_1E42067E4();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_1E323F000, v84, v85, "Document::Failed to create nav bar view model from dictionary", v86, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        OUTLINED_FUNCTION_3_244();
        v87(v82, v45);
      }

      goto LABEL_36;
    }

    OUTLINED_FUNCTION_13_8();
    v45 = sub_1E42079A4();

    if (v45)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_16_148();
    v51 = v114;
LABEL_36:
    v42 = v119;
    if (!v47)
    {
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_10_163();
  v71 = sub_1E3A7C9B4(v70, &v123);
  __swift_destroy_boxed_opaque_existential_1(&v123);
  if (v71)
  {

    OUTLINED_FUNCTION_8();
    v73 = *(v72 + 656);

    v73(v74);

    v34[7] = v71;

    goto LABEL_36;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_241();
  v100 = v109;
  v101(v109);

  v102 = sub_1E41FFC94();
  v103 = sub_1E42067F4();

  if (os_log_type_enabled(v102, v103))
  {
    OUTLINED_FUNCTION_6_21();
    v104 = OUTLINED_FUNCTION_16_2();
    v105 = OUTLINED_FUNCTION_6_208(v104);

    *(v45 + 4) = v105;
    _os_log_impl(&dword_1E323F000, v102, v103, "Document:: Invalid template response for template <%s>.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_244();
  v106(v100, v45);
LABEL_47:
  v22 = v108;
LABEL_52:
  __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E401885C()
{
  OUTLINED_FUNCTION_15_162();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_50();
  sub_1E4018890(v1);
  return v0;
}

void *sub_1E4018890(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_242();
  v2[2] = v4;
  v2[3] = v5;
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  OUTLINED_FUNCTION_3_0();
  v2[7] = a1;
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 656);
    swift_retain_n();

    v7(v8);
  }

  return v2;
}

uint64_t sub_1E4018954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_15_0();
  if (swift_unknownObjectWeakLoadStrong() && (swift_getObjectType(), v6 = OUTLINED_FUNCTION_23_98(), v8 = v7(v6), swift_unknownObjectRelease(), (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_23_98();
    v9 = sub_1E4018A10(v10, v11, v12, v13, a5);
  }

  return v9 & 1;
}

uint64_t sub_1E4018A10(unsigned int a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v99 = a4;
  v95 = a3;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v91 - v16;
  v18 = sub_1E324FBDC();
  v19 = *(v11 + 16);
  v97 = v18;
  v98 = v11 + 16;
  v96 = v19;
  (v19)(v17);
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();
  v22 = os_log_type_enabled(v20, v21);
  v100 = a1;
  v101 = v11;
  v102 = v15;
  if (v22)
  {
    OUTLINED_FUNCTION_6_21();
    v23 = v9;
    v24 = OUTLINED_FUNCTION_16_2();
    *&v106 = v24;
    *v5 = 136315138;
    v25 = ViewModelEvent.description.getter(a1);
    v27 = sub_1E3270FC8(v25, v26, &v106);

    *(v5 + 4) = v27;
    _os_log_impl(&dword_1E323F000, v20, v21, "Document::received view model event:<%s>", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_6_0();
    v9 = v23;
    v11 = v101;
    OUTLINED_FUNCTION_6_0();
  }

  v28 = *(v11 + 8);
  v28(v17, v9);
  type metadata accessor for LibViewModel();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for LibEpisodeViewModel();
    if (!swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30_1();
      (*(v30 + 648))();

      if (a5)
      {
        goto LABEL_6;
      }

LABEL_8:
      OUTLINED_FUNCTION_30_1();
      v29 = (*(v31 + 544))();
      if (!v29)
      {
        return 0;
      }

      goto LABEL_9;
    }
  }

  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v29 = a5;
LABEL_9:
  v93 = v28;
  v94 = v29;
  v32 = a5;

  v33 = a2;
  while (1)
  {
    LOBYTE(v109) = 1;
    v34 = OUTLINED_FUNCTION_22_97();
    v35(v34);
    if (*(&v107 + 1))
    {
      v36 = swift_dynamicCast();
      if (v36 && (v109 & 1) != 0)
      {
        v41 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v36 = sub_1E329505C(&v106);
    }

    v37 = (*(*v33 + 624))(v36);

    if (!v37)
    {
      break;
    }

    type metadata accessor for TemplateViewModel();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_23;
    }

    LOBYTE(v109) = 0;
    v38 = OUTLINED_FUNCTION_22_97();
    v39(v38);
    sub_1E3294F34(&v106, &v109);
    if (v110)
    {
      if (swift_dynamicCast() && (v105 & 1) != 0)
      {
        OUTLINED_FUNCTION_8();
        v33 = (*(v40 + 1192))();

        sub_1E329505C(&v106);
        if (!v33)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1E329505C(&v106);
LABEL_23:

        v33 = v37;
      }
    }

    else
    {
      sub_1E329505C(&v106);

      sub_1E329505C(&v109);
      v33 = v37;
    }
  }

  v33 = 0;
LABEL_26:
  v41 = 1;
LABEL_27:
  OUTLINED_FUNCTION_30_1();
  v43 = (*(v42 + 552))();
  if (!v43)
  {
    v43 = sub_1E4205CB4();
  }

  v44 = v43;
  if (v33)
  {
    v45 = v41;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    v46 = *(*v33 + 672);

    v48 = v46(v47);
    *(&v107 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *&v106 = v48;
    sub_1E329504C(&v106, &v109);
    swift_isUniquelyReferenced_nonNull_native();
    v105 = v44;
    sub_1E32A87C0(&v109, 0xD00000000000001BLL, 0x80000001E427AD00);

    v44 = v105;
  }

  OUTLINED_FUNCTION_30_1();
  (*(v49 + 776))(&v106);
  v50 = MEMORY[0x1E69E6158];
  if (*(&v107 + 1))
  {
    if (swift_dynamicCast())
    {
      v52 = *(&v109 + 1);
      v51 = v109;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1E329505C(&v106);
  }

  v51 = 0;
  v52 = 0;
LABEL_39:
  v53 = sub_1E4205F14();
  v55 = v54;
  *(&v107 + 1) = v50;
  if (v52)
  {
    v56 = v51;
  }

  else
  {
    v56 = 0;
  }

  v57 = 0xE000000000000000;
  if (v52)
  {
    v57 = v52;
  }

  *&v106 = v56;
  *(&v106 + 1) = v57;
  sub_1E329504C(&v106, &v109);
  swift_isUniquelyReferenced_nonNull_native();
  v105 = v44;
  sub_1E32A87C0(&v109, v53, v55);

  v92 = v105;
  v58 = v99;
  Strong = v99;
  v60 = v102;
  if (!v99)
  {
    OUTLINED_FUNCTION_30_1();
    if (!(*(v88 + 648))() || (OUTLINED_FUNCTION_5_0(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
    {
      type metadata accessor for TVAppLauncher();
      v89 = [swift_getObjCClassFromMetadata() sharedInstance];
      v90 = [v89 appController];

      if (v90)
      {
        Strong = [v90 appContext];
      }

      else
      {
        Strong = 0;
      }
    }
  }

  OUTLINED_FUNCTION_30_1();
  v62 = (*(v61 + 648))(v58);
  if (v62)
  {
  }

  *&v106 = Strong;
  v99 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E5D0);
  v63 = sub_1E4205F84();
  v65 = v64;
  v96(v60, v97, v9);
  v66 = v60;
  v67 = sub_1E41FFC94();
  v68 = sub_1E4206814();
  if (os_log_type_enabled(v67, v68))
  {
    v66 = swift_slowAlloc();
    *&v106 = swift_slowAlloc();
    *v66 = 136315394;
    v69 = sub_1E3270FC8(v63, v65, &v106);

    *(v66 + 4) = v69;
    *(v66 + 12) = 2080;
    v70 = sub_1E328692C(v62 != 0);
    v72 = sub_1E3270FC8(v70, v71, &v106);

    *(v66 + 14) = v72;
    _os_log_impl(&dword_1E323F000, v67, v68, "Document::handleEvent appContext:<%s>, is document valid: <%s>", v66, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v73 = v102;
  }

  else
  {

    v73 = v66;
  }

  v93(v73, v9);
  v74 = [objc_opt_self() isSUIEnabled];
  v75 = v100;
  if (v74 && (*(&v107 + 1) = &unk_1F5D5E7B8, v108 = &off_1F5D5CC78, LOBYTE(v106) = 0, v76 = j__OUTLINED_FUNCTION_18(), v66 = a2, v77 = sub_1E39C29F0(&v106, v76 & 1), __swift_destroy_boxed_opaque_existential_1(&v106), (v77 & 1) == 0) && (v78 = sub_1E40C4340(), OUTLINED_FUNCTION_5_0(), (v79 = *v78) != 0) && (v106 = 0u, v107 = 0u, LOBYTE(v108) = 1, v80 = *((*MEMORY[0x1E69E7D40] & *v79) + 0x1D0), v81 = v79, v104 = v80(v75, a2, 0, &v106), v103 = 3, sub_1E4019714(), v66 = sub_1E4205E84(), v81, (v66 & 1) == 0))
  {

    v86 = 1;
  }

  else
  {
    v82 = objc_opt_self();
    ViewModelEvent.description.getter(v75);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_50();

    v83 = v94;
    sub_1E3744600(v92);

    v84 = sub_1E4205C44();

    v85 = v99;
    v86 = [v82 handleEvent:v66 targetResponder:v95 appContext:v99 routerDataSource:v83 supplementaryData:v84 extraInfo:0];
  }

  return v86;
}

uint64_t Document.deinit()
{

  sub_1E32AF6F8(v0 + 32);
  MEMORY[0x1E69144A0](v0 + 48);

  return v0;
}

uint64_t Document.__deallocating_deinit()
{
  Document.deinit();
  v0 = OUTLINED_FUNCTION_15_162();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40195DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4017924();
  *a1 = result;
  return result;
}

uint64_t static Document.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    v4 = *(a1 + 56);
    OUTLINED_FUNCTION_5_0();
    v5 = *(a2 + 56);
    if (v4)
    {
      if (v5)
      {
        type metadata accessor for TemplateViewModel();
        sub_1E39E4288();

        v6 = sub_1E4205E84();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = v5 == 0;
    }
  }

  return v6 & 1;
}

unint64_t sub_1E4019714()
{
  result = qword_1ECF3E5D8;
  if (!qword_1ECF3E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E5D8);
  }

  return result;
}

id sub_1E401979C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = [objc_opt_self() systemFontOfSize_];
    v6 = OUTLINED_FUNCTION_17_1();
    [v6 v7];

    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E4019878()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v6 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v6, sel_setFont_);

    type metadata accessor for MetricsCellPresentationUtilities();
    v7 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v7, sel_setTextColor_);

    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E4019978()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    type metadata accessor for MetricsCellPresentationUtilities();
    v6 = sub_1E3B625A8();
    OUTLINED_FUNCTION_13_0(v6, sel_setTextColor_);

    [v5 setTextAlignment_];
    v7 = [objc_opt_self() systemFontOfSize_];
    OUTLINED_FUNCTION_13_0(v7, sel_setFont_);

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setAdjustsFontSizeToFitWidth_];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E4019A8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin];
  }

  else
  {
    v4 = [v0 contentView];
    v5 = [v4 layoutMarginsGuide];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E4019B28(uint64_t a1)
{
  OUTLINED_FUNCTION_4_243(&OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  if (v3)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MetricsDataFieldCell();
  v5 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v4);

  v6 = v5;
  sub_1E4019CC0();

  return v6;
}

void sub_1E4019C38()
{
  OUTLINED_FUNCTION_4_243(&OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E4019CC0()
{
  [v0 setSelectionStyle_];
  v1 = [v0 contentView];
  v2 = sub_1E401979C();
  v3 = OUTLINED_FUNCTION_17_1();
  [v3 v4];

  v5 = [v0 contentView];
  v6 = sub_1E4019978();
  v7 = OUTLINED_FUNCTION_17_1();
  [v7 v8];

  v9 = [v0 contentView];
  v10 = sub_1E4019878();
  v11 = OUTLINED_FUNCTION_17_1();
  [v11 v12];

  v13 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel;
  v14 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldNameLabel] leadingAnchor];
  v15 = sub_1E4019A8C();
  v16 = [v15 &selRef_loadFairPlayStreamingKeyRequests_completion_ + 1];

  v17 = [v14 constraintEqualToAnchor_];
  [v17 setActive_];

  v18 = [*&v0[v13] trailingAnchor];
  v19 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___viewMargin] centerXAnchor];
  v20 = OUTLINED_FUNCTION_17_1();
  v22 = [v20 v21];

  OUTLINED_FUNCTION_2_11();
  v23 = [*&v0[v13] topAnchor];
  v24 = [OUTLINED_FUNCTION_2_242() &selRef_validationResults_fromIndex_];
  v25 = OUTLINED_FUNCTION_17_1();
  v27 = [v25 v26];

  OUTLINED_FUNCTION_2_11();
  v28 = [*&v0[v13] heightAnchor];
  v29 = [OUTLINED_FUNCTION_2_242() heightAnchor];
  v30 = OUTLINED_FUNCTION_17_1();
  v32 = [v30 v31];

  OUTLINED_FUNCTION_2_11();
  v33 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel;
  v34 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldSubtitleLabel] leadingAnchor];
  v35 = [OUTLINED_FUNCTION_2_242() leadingAnchor];
  v36 = OUTLINED_FUNCTION_17_1();
  v38 = [v36 v37];

  OUTLINED_FUNCTION_2_11();
  v39 = [*&v0[v33] trailingAnchor];
  v40 = [OUTLINED_FUNCTION_2_242() trailingAnchor];
  v41 = OUTLINED_FUNCTION_17_1();
  v43 = [v41 v42];

  OUTLINED_FUNCTION_2_11();
  v44 = [*&v0[v33] heightAnchor];
  v45 = [OUTLINED_FUNCTION_2_242() heightAnchor];
  v46 = OUTLINED_FUNCTION_17_1();
  v48 = [v46 v47];

  OUTLINED_FUNCTION_2_11();
  v49 = [*&v0[v33] bottomAnchor];
  v50 = [OUTLINED_FUNCTION_2_242() bottomAnchor];
  v51 = OUTLINED_FUNCTION_17_1();
  v53 = [v51 v52];

  OUTLINED_FUNCTION_2_11();
  v54 = OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel;
  v55 = [*&v0[OBJC_IVAR____TtC8VideosUI20MetricsDataFieldCell____lazy_storage___fieldValueLabel] leadingAnchor];
  v56 = [OUTLINED_FUNCTION_2_242() centerXAnchor];
  v57 = OUTLINED_FUNCTION_17_1();
  v59 = [v57 v58];

  OUTLINED_FUNCTION_2_11();
  v60 = [*&v0[v54] trailingAnchor];
  v61 = [OUTLINED_FUNCTION_2_242() trailingAnchor];
  v62 = OUTLINED_FUNCTION_17_1();
  v64 = [v62 v63];

  OUTLINED_FUNCTION_2_11();
  v65 = [*&v0[v54] topAnchor];
  v66 = [OUTLINED_FUNCTION_2_242() topAnchor];
  v67 = OUTLINED_FUNCTION_17_1();
  v69 = [v67 v68];

  OUTLINED_FUNCTION_2_11();
  v70 = [*&v0[v54] bottomAnchor];
  v71 = [OUTLINED_FUNCTION_2_242() bottomAnchor];
  v72 = [v18 &selRef_disableBackgroundMediaPlayback + 5];

  [v72 setActive_];
}

void sub_1E401A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1E401979C();
  sub_1E390E98C(a1, a2, v12);

  v13 = sub_1E4019978();
  sub_1E390E98C(a3, a4, v13);

  v14 = sub_1E4019878();
  sub_1E390E98C(a5, a6, v14);
}

id sub_1E401A334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsDataFieldCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E401A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return MEMORY[0x1E690DE70](v7, a5, &type metadata for ContentOffsetModifier, a6);
}

unint64_t sub_1E401A408()
{
  result = qword_1EE29C140[0];
  if (!qword_1EE29C140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29C140);
  }

  return result;
}

uint64_t sub_1E401A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E5E0);
  (*(*(v14 - 8) + 16))(a6, a1, v14);
  v15 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E5E8) + 36));
  *v15 = sub_1E401A6EC;
  v15[1] = v12;
  v15[2] = sub_1E401A734;
  v15[3] = v13;
  swift_bridgeObjectRetain_n();
  return swift_retain_n();
}

uint64_t sub_1E401A5B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1E4201F84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  sub_1E4202274();
  sub_1E4200E84();
  v11 = v10;
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  *a3 = v11;
  a3[1] = v13;
  return result;
}

uint64_t objectdestroyTm_57()
{

  return swift_deallocObject();
}

unint64_t sub_1E401A760()
{
  result = qword_1EE289A80;
  if (!qword_1EE289A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E5E8);
    sub_1E32752B0(&qword_1EE2888F8, &qword_1ECF3E5E0);
    sub_1E32752B0(&qword_1EE2888A8, &qword_1ECF3E5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A80);
  }

  return result;
}

uint64_t sub_1E401A868()
{
  ObjectType = swift_getObjectType();
  v1 = *MEMORY[0x1E69D5AE8];
  v2 = MEMORY[0x1E69E6158];
  sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
  sub_1E4123590(v1, v2, v16);
  v3 = v16[0];
  v4 = v16[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v6;
  if (v4)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v4)
  {
    v8 = v4;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v9;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v10;
  *(inited + 96) = sub_1E4205F14();
  *(inited + 104) = v11;
  *(inited + 112) = sub_1E4205F14();
  *(inited + 120) = v12;
  v13 = sub_1E4205CB4();
  v14 = sub_1E37E4D10(v13);

  return sub_1E3FF09E4(v14);
}

uint64_t sub_1E401AA28(void *a1, void *a2)
{
  [a1 elapsedTime];
  v5 = v4;
  result = [a1 currentMediaItem];
  if (result)
  {
    swift_getObjectType();
    v7 = *MEMORY[0x1E69D5D08];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E5F8);
    sub_1E4123590(v7, v8, &v50);
    if (v50)
    {
      v9 = v50;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1E32AE9B0(v9);
    v47 = a2;
    if (result)
    {
      v10 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v48 = result;
      v49 = 0;
      v11 = 0;
      v12 = v9 & 0xC000000000000001;
      v13 = 0xE000000000000000;
      v14 = &selRef_setWaitingForTransactionToStart_;
      v15 = &selRef_dismissPresentedViewController;
      do
      {
        if (v12)
        {
          v16 = MEMORY[0x1E6911E60](v11, v9);
        }

        else
        {
          v16 = *(v9 + 8 * v11 + 32);
        }

        v17 = v16;
        [v16 v14[271]];
        v19 = v18;
        [v17 v14[271]];
        v21 = v20;
        [v17 v15[102]];
        if (v19 <= v5 && v5 < v21 + v22 && (v23 = [v17 adamID]) != 0)
        {
          v24 = v23;

          v25 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
          v26 = [v25 stringFromNumber_];
          if (v26)
          {
            v27 = v26;
            v49 = sub_1E4205F14();
            v28 = v9;
            v29 = v14;
            v30 = v12;
            v31 = v15;
            v33 = v32;

            v13 = v33;
            v15 = v31;
            v12 = v30;
            v14 = v29;
            v9 = v28;
            v10 = v48;
          }

          else
          {

            v49 = 0;
            v13 = 0xE000000000000000;
          }
        }

        else
        {
        }

        ++v11;
      }

      while (v10 != v11);
    }

    else
    {
      v49 = 0;
      v13 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v35;
    v36 = v13;
    v37 = [v47 canonicalId];
    v38 = sub_1E4205F14();
    v40 = v39;

    *(inited + 48) = v38;
    *(inited + 56) = v40;
    *(inited + 64) = sub_1E4205F14();
    *(inited + 72) = v41;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v42;
    *(inited + 96) = sub_1E4205F14();
    *(inited + 104) = v43;
    *(inited + 112) = sub_1E4205F14();
    *(inited + 120) = v44;
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v45;
    *(inited + 144) = v49;
    *(inited + 152) = v36;
    v46 = sub_1E4205CB4();
    sub_1E37E4D10(v46);

    sub_1E3FF0BCC();

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1E401AE60()
{
  result = qword_1ECF3C2E0;
  if (!qword_1ECF3C2E0)
  {
    type metadata accessor for SportsCanonicalBannerPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C2E0);
  }

  return result;
}

uint64_t sub_1E401AED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8);
  swift_storeEnumTagMultiPayload();
  *(a3 + v6[7]) = 0;
  *(a3 + v6[8]) = 0;
  *(a3 + v6[9]) = 0;
  *(a3 + v6[10]) = 0;
  *(a3 + v6[11]) = 0;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  *(a3 + v6[14]) = 0;
  *(a3 + v6[15]) = 0;
  *(a3 + v6[18]) = 0;
  *(a3 + v6[17]) = a2;
  v8 = (a3 + v6[6]);
  type metadata accessor for SportsCanonicalBannerPresenter(0);
  sub_1E401AE60();

  *v8 = sub_1E42010C4();
  v8[1] = v9;
  v10 = (*(*a1 + 392))();
  if (v10)
  {
    if (*v10 == _TtC8VideosUI37LegacySportsCanonicalBannerViewLayout)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for LegacySportsCanonicalBannerViewLayout();
  v10 = sub_1E37C2700();
LABEL_5:
  *(a3 + v6[16]) = v10;
  sub_1E401B0E8();
}

uint64_t sub_1E401B0E8()
{
  v1 = v0;
  OUTLINED_FUNCTION_106();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v0 + 464))(v6);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1E32AE9B0(v10);
  if (v11)
  {
    v13 = v11;
    if (v11 < 1)
    {
      __break(1u);
LABEL_57:
      JUMPOUT(0);
    }

    v14 = 0;
    v15 = v10 & 0xC000000000000001;
    v43[1] = v0 + 8;
    v47 = (v4 + 8);
    v48 = (v4 + 16);
    *&v12 = 136315138;
    v44 = v12;
    v46 = v10;
    v49 = v11;
    v50 = v10 & 0xC000000000000001;
    do
    {
      if (v15)
      {
        v18 = MEMORY[0x1E6911E60](v14, v10);
      }

      else
      {
        v18 = *(v10 + 8 * v14 + 32);
      }

      v19 = *(v18 + 98);
      if (!(!v17 & v16))
      {
        switch(*(v18 + 98))
        {
          case 0xF:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 36);
            goto LABEL_51;
          case 0x10:
          case 0x12:
          case 0x13:
          case 0x14:
          case 0x15:
          case 0x16:
            goto LABEL_25;
          case 0x11:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 52);
            goto LABEL_51;
          case 0x17:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 40);
            goto LABEL_51;
          case 0x18:
            if (*v18 != _TtC8VideosUI13TextViewModel)
            {

              v18 = 0;
            }

            v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 44);
            goto LABEL_51;
          default:
            goto LABEL_57;
        }
      }

      switch(v19)
      {
        case 3:
          if (*v18 != _TtC8VideosUI13TextViewModel)
          {

            v18 = 0;
          }

          v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 56);
          goto LABEL_51;
        case 4:
          if (*v18 != _TtC8VideosUI13TextViewModel)
          {

            v18 = 0;
          }

          v0 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 48);
LABEL_51:

          *(v1 + v0) = v18;
          goto LABEL_52;
        case 34:
          type metadata accessor for ImageViewModel();
          v39 = swift_dynamicCastClass();
          v0 = v39;
          if (!v39)
          {
          }

          v38 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 60);
          break;
        case 40:
          type metadata accessor for ImageViewModel();
          v37 = swift_dynamicCastClass();
          v0 = v37;
          if (!v37)
          {
          }

          v38 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 72);
          break;
        case 234:
          type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
          if (swift_dynamicCastClass())
          {
            v20 = OUTLINED_FUNCTION_106();
            v21 = *(type metadata accessor for LegacySportsCanonicalBannerView(v20) + 28);

            v13 = v49;

            *(v1 + v21) = v0;
            v22 = *(*v0 + 1936);

            v22(v23);
            v10 = v46;
          }

          else
          {
            v40 = *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 28);
            v0 = *(v1 + v40);

            *(v1 + v40) = 0;
          }

          goto LABEL_47;
        default:
LABEL_25:
          v24 = sub_1E3E37F30();
          (*v48)(v8, v24, v2);

          v0 = sub_1E41FFC94();
          v25 = sub_1E4206814();

          if (os_log_type_enabled(v0, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v51 = v27;
            *v26 = v44;
            sub_1E384EE08(v19);
            v30 = sub_1E3270FC8(v28, v29, &v51);
            v45 = v0;
            v31 = v1;
            v32 = v8;
            v33 = v2;
            v34 = v30;

            *(v26 + 4) = v34;
            v2 = v33;
            v8 = v32;
            v1 = v31;
            v0 = v45;
            _os_log_impl(&dword_1E323F000, v45, v25, "LegacySportsCanonicalBannerView: unhandled view model type [%s]", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v27);
            v35 = v27;
            v10 = v46;
            MEMORY[0x1E69143B0](v35, -1, -1);
            v36 = v26;
            v15 = v50;
            MEMORY[0x1E69143B0](v36, -1, -1);
          }

          (*v47)(v8, v2);
          v13 = v49;
          goto LABEL_52;
      }

      *(v1 + v38) = v0;
LABEL_47:
      v15 = v50;
LABEL_52:
      ++v14;
    }

    while (v13 != v14);
  }

  v41 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  v51 = *(v1 + *(v41 + 28));
  MEMORY[0x1EEE9AC00](v41);
  v43[-2] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420);
  sub_1E4148DE0(sub_1E401D10C);
}

uint64_t sub_1E401B7BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(**a1 + 1640))(v8);
  sub_1E32752B0(&qword_1ECF3C600, &qword_1ECF2B4C8);
  v11 = sub_1E42006B4();
  (*(v6 + 8))(v10, v4);
  if (*(a2 + *(type metadata accessor for LegacySportsCanonicalBannerView(0) + 32)))
  {
    OUTLINED_FUNCTION_8();
    v13 = *(v12 + 1120);

    v13(v11);
  }
}

uint64_t sub_1E401B964@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  OUTLINED_FUNCTION_0_10();
  v58 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v59 = v5;
  OUTLINED_FUNCTION_17_3(&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E708);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  *&v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  *v9 = sub_1E4201D44();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E710) + 44);
  v22 = *(v1 + *(v2 + 28));
  v60 = v1;
  if (v22)
  {
    __src[0] = v22;
    sub_1E401BF0C(__src, v1, &v9[v21]);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E718);
    __swift_storeEnumTagSinglePayload(&v9[v21], 1, 1, v23);
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v9, v13, &qword_1ECF3E708);
  memcpy(&v13[*(v10 + 36)], __src, 0x70uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v25 = sub_1E4202764();
  *(inited + 32) = v25;
  v26 = sub_1E4202784();
  *(inited + 33) = v26;
  v27 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v25)
  {
    v27 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v26)
  {
    v27 = sub_1E4202774();
  }

  v28 = v60;
  sub_1E37C26C0();
  sub_1E4200A54();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1E3741EA0(v13, v16, &qword_1ECF3E6F8);
  v37 = &v16[*(v57 + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_1E4202754();
  v39 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v38)
  {
    v39 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v40 + 176))(v64);
  v41 = v65;
  v42 = 0uLL;
  v43 = 0uLL;
  if ((v65 & 1) == 0)
  {
    sub_1E3952BD8(v64[0], v64[1], v64[2]);
    sub_1E4200A54();
    *(&v43 + 1) = v44;
    *(&v42 + 1) = v45;
  }

  v56 = v43;
  v57 = v42;
  sub_1E3741EA0(v16, v20, &qword_1ECF3E6E8);
  v46 = &v20[*(v17 + 36)];
  *v46 = v39;
  *(v46 + 24) = v56;
  *(v46 + 8) = v57;
  v46[40] = v41 & 1;
  v47 = v61;
  sub_1E401CF2C(v28, v61);
  v48 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v49 = swift_allocObject();
  sub_1E401D0B4(v47, v49 + v48);
  OUTLINED_FUNCTION_3_245();
  sub_1E401CDF0(v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v54 & 1);

  return sub_1E401D04C(v20);
}

uint64_t sub_1E401BF0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29BF8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v42 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D758);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(&v42 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(&v42 - v13);
  v14 = type metadata accessor for SportsBannerScoreboardView(0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 312);
  v20 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  v21 = *(a2 + v20[17]);
  v22 = *(a2 + v20[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = *(a2 + v20[10]);
  *(inited + 40) = *(a2 + v20[12]);
  v24 = MEMORY[0x1E69E7CC0];
  __src[0] = MEMORY[0x1E69E7CC0];

  v46 = v18;

  v45 = v19;

  v44 = v21;

  v43 = v22;
  v25 = v17;
  v26 = v50;

  for (i = 0; i != 2; ++i)
  {
    if (*(inited + 8 * i + 32))
    {

      MEMORY[0x1E6910BF0](v29);
      if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v24 = __src[0];
    }
  }

  swift_setDeallocating();
  sub_1E3CAF5C0();
  v30 = *(a2 + v20[14]);
  v31 = *(a2 + v20[15]);
  v32 = *(a2 + v20[7]);
  if (v32)
  {
    OUTLINED_FUNCTION_8();
    v34 = *(v33 + 392);

    v36 = v34(v35);
    v32 = v36;
    if (v36 && *v36 != _TtCC8VideosUI37LegacySportsCanonicalBannerViewLayout20ScoreboardViewLayout)
    {

      v32 = 0;
    }

    v26 = v50;
  }

  else
  {
  }

  v37 = v47;
  sub_1E3F36C98(v36);
  v38 = v49;
  sub_1E3F34424();
  sub_1E3F36C9C();
  sub_1E3F34494(v37, v38, v26, v43, v24, v25, v30, v31, v32);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  v39 = v48;
  sub_1E401D0B4(v25, v48);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E718);
  memcpy((v39 + *(v40 + 36)), __src, 0x70uLL);
  return __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
}

double sub_1E401C48C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E401C570()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E401C5E0()
{
  v1 = OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__opacity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__containerWidth, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1E401C6B0()
{
  v0 = swift_allocObject();
  sub_1E401C6E8();
  return v0;
}

uint64_t sub_1E401C6E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__opacity;
  v12 = 0x3FF0000000000000;
  sub_1E4200634();
  v8 = *(v3 + 32);
  v8(v0 + v7, v6, v1);
  v9 = OBJC_IVAR____TtC8VideosUI26SportsCanonicalBannerProxy__containerWidth;
  v12 = 0;
  sub_1E4200634();
  v8(v0 + v9, v6, v1);
  return v0;
}

uint64_t sub_1E401C810()
{
  OUTLINED_FUNCTION_8();
  sub_1E401AE60();
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E401C8B0()
{
  v1 = OBJC_IVAR____TtC8VideosUI30SportsCanonicalBannerPresenter_badgePresenter;
  type metadata accessor for TextBadgePresenter();
  v2 = OUTLINED_FUNCTION_106();
  *(v0 + v1) = sub_1E3789F30(v2);

  return sub_1E3B500B4();
}

uint64_t sub_1E401C914()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E401C9CC()
{
  sub_1E401CC04(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  OUTLINED_FUNCTION_39_6();
  if (!(!v2 & v1))
  {
    sub_1E38FED58();
    OUTLINED_FUNCTION_39_6();
    if (!(!v2 & v1))
    {
      sub_1E3F16858();
      OUTLINED_FUNCTION_39_6();
      if (!(!v2 & v1))
      {
        sub_1E401CC04(319, &qword_1ECF3C388, type metadata accessor for SportsCanonicalBannerScoreboardViewModel, MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_39_6();
        if (!(!v2 & v1))
        {
          sub_1E401CC04(319, &qword_1ECF3C390, type metadata accessor for SportStatsViewModel, MEMORY[0x1E69E6720]);
          OUTLINED_FUNCTION_39_6();
          if (!(!v2 & v1))
          {
            sub_1E401CC04(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
            OUTLINED_FUNCTION_39_6();
            if (!(!v2 & v1))
            {
              sub_1E401CC04(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
              OUTLINED_FUNCTION_39_6();
              if (!(!v2 & v1))
              {
                v3 = type metadata accessor for LegacySportsCanonicalBannerViewLayout();
                if (v4 > 0x3F)
                {
                  return v3;
                }

                v3 = type metadata accessor for SportsCanonicalBannerProxy(319);
                if (v5 > 0x3F)
                {
                  return v3;
                }

                else
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1E401CC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E401CC90()
{
  sub_1E401CD20();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E401CD20()
{
  if (!qword_1EE28A0A8)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A0A8);
    }
  }
}

uint64_t sub_1E401CDF0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E401CE74()
{
  result = qword_1ECF3E6F0;
  if (!qword_1ECF3E6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E6F8);
    sub_1E32752B0(&qword_1ECF3E700, &qword_1ECF3E708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E6F0);
  }

  return result;
}

uint64_t sub_1E401CF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E401CF90()
{
  v1 = type metadata accessor for LegacySportsCanonicalBannerView(0);
  result = OUTLINED_FUNCTION_17_2(v1);
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(result + 36)))
  {
    OUTLINED_FUNCTION_8();
    result = (*(v4 + 1256))();
    if (result)
    {
      (result)();
      v5 = OUTLINED_FUNCTION_32_0();

      return sub_1E37FAED8(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1E401D04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E401D0B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

uint64_t sub_1E401D114(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v48 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v48, v4);

    v49 = v7;
    v50 = sub_1E41FFC94();
    v51 = sub_1E4206814();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v61[0] = v53;
      *v52 = 136315138;
      sub_1E384EE08(a1[49]);
      v56 = sub_1E3270FC8(v54, v55, v61);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1E323F000, v50, v51, "SportsFavoritesLockupCell: Failed to get correct cell for [%s]", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1E69143B0](v53, -1, -1);
      MEMORY[0x1E69143B0](v52, -1, -1);
    }

    (*(v5 + 8))(v49, v4);
    goto LABEL_29;
  }

  v8 = *(*a1 + 488);
  v9 = a2;
  v10 = v8();
  if (!v10)
  {
LABEL_13:

    v32 = v9;
    return a2;
  }

  v11 = v10;
  if (!*(v10 + 16))
  {

    goto LABEL_13;
  }

  v12 = (*(*a1 + 392))();
  if (v12)
  {
    if (*v12 == _TtC8VideosUI31SportsFavoritesLockupCellLayout)
    {
      v13 = MEMORY[0x1E69E7D40];
      v14 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x98);

      v14(v57);
      type metadata accessor for UIFactory();
      v15 = sub_1E373E010(23, v11);
      OUTLINED_FUNCTION_0_320();
      v17 = (*(v16 + 216))();
      sub_1E3280A90(0, &qword_1EE23AD40);
      OUTLINED_FUNCTION_1_277();
      v19 = sub_1E393D92C(v15, v17, v18, 0);

      sub_1E325F748(v61, &qword_1ECF296C0);
      OUTLINED_FUNCTION_0_320();
      (*(v20 + 224))(v19);
      v21 = sub_1E373E010(39, v11);

      OUTLINED_FUNCTION_0_320();
      v23 = (*(v22 + 240))();
      sub_1E3280A90(0, &qword_1EE23B360);
      OUTLINED_FUNCTION_1_277();
      v25 = sub_1E393D92C(v21, v23, v24, 0);

      sub_1E325F748(v61, &qword_1ECF296C0);
      OUTLINED_FUNCTION_0_320();
      v27 = (*(v26 + 248))(v25);
      v28 = (*((*v13 & *v9) + 0x120))(v27);
      v59 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E720);
      OUTLINED_FUNCTION_2_243();

      v29 = (*((*v13 & *v9) + 0x128))(v61[0]);
      v30 = (*((*v13 & *v9) + 0x138))(v29);
      v59 = v30;
      OUTLINED_FUNCTION_2_243();

      (*((*v13 & *v9) + 0x140))(v61[0]);
      if ((sub_1E373F6E0() & 1) == 0)
      {
        if (sub_1E373F6E0())
        {
          OUTLINED_FUNCTION_0_320();
          v34 = (*(v33 + 264))();
          if (!v34)
          {
            v34 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
          }

          v35 = v34;
          v36 = objc_opt_self();
          v37 = sub_1E401DD48(0x6568632D7473696CLL, 0xEC0000006E6F7276, v36);
          [v35 setImage_];
          v38 = [objc_opt_self() systemGrayColor];
          [v35 _setTintColor_];

          v39 = *((*v13 & *v9) + 0x110);
          v40 = v35;
          v39(v35);
          OUTLINED_FUNCTION_0_320();
          (*(v41 + 176))(0);
          OUTLINED_FUNCTION_0_320();
          (*(v42 + 200))(1);
        }

        else if (sub_1E373F6E0())
        {
          OUTLINED_FUNCTION_0_320();
          (*(v43 + 176))(1);
          OUTLINED_FUNCTION_0_320();
          (*(v44 + 200))(0);
        }

        goto LABEL_23;
      }

      (*(*a1 + 672))();
      v62 = &type metadata for ViewModelKeys;
      v63 = &off_1F5D7BCA8;
      LOBYTE(v61[0]) = 11;
      OUTLINED_FUNCTION_4_244();

      if (v60)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        if ((OUTLINED_FUNCTION_3_246() & 1) == 0)
        {
          goto LABEL_21;
        }

        __swift_destroy_boxed_opaque_existential_1(v61);
        v62 = &unk_1F5D5D528;
        v63 = &off_1F5D5C868;
        LOBYTE(v61[0]) = 0;
        OUTLINED_FUNCTION_4_244();

        if (v60)
        {
          if (OUTLINED_FUNCTION_3_246())
          {
            v31 = v58;
            __swift_destroy_boxed_opaque_existential_1(v61);
            sub_1E401DB1C(v9, v31);
LABEL_22:
            OUTLINED_FUNCTION_0_320();
            (*(v45 + 176))(0);
            OUTLINED_FUNCTION_0_320();
            (*(v46 + 200))(1);
LABEL_23:

            return a2;
          }

LABEL_21:
          __swift_destroy_boxed_opaque_existential_1(v61);
          goto LABEL_22;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v61);
      sub_1E325F748(&v59, &unk_1ECF296E0);
      goto LABEL_22;
    }
  }

LABEL_29:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E401DADC@<X0>(void *a1@<X8>)
{
  type metadata accessor for SeparatorView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void sub_1E401DB1C(void *a1, char a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x108))();
  if (!v5)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
  }

  v6 = v5;
  v7 = objc_opt_self();
  if (a2)
  {
    v8 = sub_1E4205ED4();
    v9 = [v7 imageForResourceName_];

    v10 = objc_opt_self();
    v16 = v9;
    v11 = [v10 systemRedColor];
    [v6 _setTintColor_];
  }

  else
  {
    v12 = sub_1E4205ED4();
    v13 = [v7 imageForResourceName_];

    v16 = v13;
    [v6 _setTintColor_];
  }

  [v6 setImage_];

  v14 = *((*v4 & *a1) + 0x110);
  v15 = v6;
  v14(v6);
}

id sub_1E401DD48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 imageForResourceName_];

  return v5;
}

uint64_t sub_1E401DDD4()
{
  if (!*(v0 + 408) || (OUTLINED_FUNCTION_8(), (result = (*(v1 + 392))()) == 0))
  {
    if (*(v0 + 416))
    {
      OUTLINED_FUNCTION_8();
      return (*(v3 + 392))();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1E401DE60()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v124 = v2;
  v80 = v3;
  memcpy(v185, v0, sizeof(v185));
  v112 = *(v1 + 104);
  v113 = *(v1 + 96);
  v4 = *(v1 + 112);
  v111 = *(v1 + 120);
  v5 = *(v1 + 136);
  v114 = *(v1 + 128);
  v115 = *(v1 + 144);
  v6 = *(v1 + 152);
  v116 = *(v1 + 168);
  v117 = *(v1 + 160);
  v88 = *(v1 + 176);
  v7 = *(v1 + 177);
  v118 = *(v1 + 178);
  v82 = *(v1 + 193);
  v84 = *(v1 + 192);
  v81 = *(v1 + 194);
  v89 = *(v1 + 184);
  v90 = *(v1 + 208);
  v8 = *(v1 + 216);
  v119 = *(v1 + 217);
  v120 = *(v1 + 218);
  v121 = *(v1 + 224);
  v122 = *(v1 + 240);
  v123 = *(v1 + 256);
  v91 = *(v1 + 200);
  v92 = *(v1 + 272);
  v9 = *(v1 + 280);
  v85 = *(v1 + 264);
  v86 = *(v1 + 281);
  v93 = *(v1 + 288);
  v87 = *(v1 + 296);
  v10 = *(v1 + 304);
  v11 = *(v1 + 312);
  v12 = *(v1 + 320);
  v13 = *(v1 + 328);
  type metadata accessor for CGSize(0);
  OUTLINED_FUNCTION_30_82();
  v79 = *&__src[0];
  v109 = *&__src[1];
  *&v126[8] = 0;
  *v126 = 0;
  OUTLINED_FUNCTION_30_82();
  v77 = *(&__src[0] + 1);
  v78 = __src[0];
  v108 = *&__src[1];
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_16_149(&qword_1EE283350);
  v14 = sub_1E4201754();
  v106 = v15;
  v107 = v14;
  memcpy(__dst, v1, sizeof(__dst));
  if (sub_1E3748B78(__dst) == 1)
  {

    v16 = sub_1E3EBA288();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    memcpy(__src, v16, sizeof(__src));
    v11 = *(&__src[19] + 1);
    v10 = *&__src[19];
    v13 = *(&__src[20] + 1);
    v12 = *&__src[20];
    v86 = BYTE9(__src[17]);
    v87 = BYTE8(__src[18]);
    v9 = BYTE8(__src[17]);
    v85 = BYTE8(__src[16]);
    v92 = *&__src[17];
    v93 = *&__src[18];
    v123 = *&__src[16];
    v121 = __src[14];
    v122 = __src[15];
    v120 = BYTE10(__src[13]);
    v119 = BYTE9(__src[13]);
    v90 = *&__src[13];
    v91 = *(&__src[12] + 1);
    v8 = BYTE8(__src[13]);
    v81 = BYTE2(__src[12]);
    v82 = BYTE1(__src[12]);
    v84 = __src[12];
    v89 = *(&__src[11] + 1);
    v118 = BYTE2(__src[11]);
    v116 = *(&__src[10] + 1);
    v117 = *&__src[10];
    v88 = __src[11];
    v7 = BYTE1(__src[11]);
    v6 = BYTE8(__src[9]);
    v114 = *&__src[8];
    v115 = *&__src[9];
    v5 = BYTE8(__src[8]);
    v113 = *&__src[6];
    v111 = *(&__src[7] + 1);
    v112 = *(&__src[6] + 1);
    v4 = __src[7];
    sub_1E37E6E1C(__src, v126);
    memcpy(v184, __src, sizeof(v184));
  }

  else
  {
    memcpy(v184, v185, sizeof(v184));
  }

  memcpy(v179, v184, 0x5BuLL);
  v102 = v4 & 1;
  v165 = v4 & 1;
  v164 = v5 & 1;
  v103 = v6 & 1;
  v163 = v6 & 1;
  v104 = v7 & 1;
  v162 = v7 & 1;
  v76 = v8 & 1;
  v167 = v8 & 1;
  v166 = v9 & 1;
  v169 = 0;
  _s21EpicInlinePlatterInfoCMa(0);
  sub_1E3294EE4(v1, __src, &qword_1ECF2B5C0);
  v105 = sub_1E3BEF768();
  v17 = *(*v124 + 392);

  if (v17())
  {
    type metadata accessor for EpicInlineLayout();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      goto LABEL_9;
    }
  }

  type metadata accessor for EpicInlineLayout();
  v19 = sub_1E3D48404();
LABEL_9:

  memcpy(v182, v1, sizeof(v182));
  v20 = sub_1E3748B78(v182);
  v21 = 0uLL;
  if (v20 != 1)
  {
    v22 = vdup_n_s32(LOBYTE(v182[27]));
    v23.i64[0] = v22.u32[0];
    v23.i64[1] = v22.u32[1];
    v21 = vandq_s8(*&v182[25], vcgezq_s64(vshlq_n_s64(v23, 0x3FuLL)));
  }

  *v126 = v21;

  v24 = OUTLINED_FUNCTION_30_82();
  v74 = *(&__src[0] + 1);
  v75 = *&__src[0];
  v73 = *&__src[1];
  v25 = *(*v124 + 488);
  v26 = (v25)(v24);
  if (v26)
  {
    v101 = sub_1E373E010(138, v26);
  }

  else
  {
    v101 = 0;
  }

  v27 = (v25)(v26);
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = sub_1E373E010(117, v27);

  if (!v28)
  {
    goto LABEL_19;
  }

  type metadata accessor for CollectionViewModel();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {

LABEL_19:
    v100 = 0;
    goto LABEL_20;
  }

  v100 = v29;
LABEL_20:
  v30 = v25();
  if (v30 && (v31 = sub_1E373E010(1, v30), v30 = , v31))
  {
    type metadata accessor for BackgroundPlaybackModel(0);
    sub_1E3D41778();

    v32 = sub_1E3F45D7C();
    (*(*v32 + 432))(1);
    v33 = *(*v32 + 320);

    v110 = v32;
    v33(v34);
    v126[0] = 4;
    (*(*v31 + 776))(__src, v126, &unk_1F5D5D258, &off_1F5D5C7B8);
    if (*(&__src[1] + 1))
    {
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_8();
        (*(v35 + 408))();
      }
    }

    else
    {

      v30 = sub_1E325F69C(__src, &unk_1ECF296E0);
    }
  }

  else
  {
    v110 = 0;
  }

  v36 = (v25)(v30);
  if (!v36)
  {
    goto LABEL_31;
  }

  v37 = sub_1E373E010(97, v36);

  if (!v37)
  {
    goto LABEL_31;
  }

  *&__src[0] = (*(*v37 + 464))(v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  sub_1E374AD40(&qword_1EE23B540, &unk_1ECF2C790);
  v39 = sub_1E4149048(v38);

  if (v39)
  {

LABEL_31:
    v99 = 0;
    v98 = 1;
    goto LABEL_32;
  }

  v99 = v37;
  v98 = 0;
LABEL_32:
  v40 = (v25)(v36);

  if (v40)
  {
    v41 = sub_1E373E010(40, v40);

    if (v41)
    {
      type metadata accessor for ImageViewModel();
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41;
      }

      v96 = v43;
      v97 = v42;

      v95 = 1;
    }

    else
    {
      v96 = 0;
      v97 = 0;
      v95 = 0;
    }
  }

  else
  {
    v96 = 0;
    v97 = 0;
    v95 = 0;
  }

  v44 = sub_1E3C3E4E0();
  v94 = *v44;
  (*(*v19 + 176))(v180, *v44);

  if (v181)
  {
    type metadata accessor for CollectionLayoutFactory();
    sub_1E3C11D38(__src);
    v46 = *(&__src[0] + 1);
    v45 = *&__src[0];
    v48 = *(&__src[1] + 1);
    v47 = *&__src[1];

    v49.n128_f64[0] = OUTLINED_FUNCTION_6();
  }

  else
  {
    v45 = v180[3];
    v46 = v180[2];
    v47 = v180[1];
    v48 = v180[0];

    v49.n128_f64[0] = OUTLINED_FUNCTION_2_0();
  }

  j_nullsub_1(v49, v50, v51, v52);
  OUTLINED_FUNCTION_3();
  v68 = v54;
  v69 = v53;
  v70 = v55;
  v71 = v56;

  sub_1E325F69C(v1, &qword_1ECF2B5C0);
  v72 = v82 & 1;
  memcpy(v126, v179, 0x60uLL);
  *&v126[96] = v113;
  *&v126[104] = v112;
  v126[112] = v102;
  *&v126[113] = *v178;
  *&v126[116] = *&v178[3];
  *&v126[120] = v111;
  *&v126[128] = v114;
  v126[136] = v5 & 1;
  *&v126[137] = *v177;
  *&v126[140] = *&v177[3];
  *&v126[144] = v115;
  v126[152] = v103;
  *&v126[156] = *&v176[3];
  *&v126[153] = *v176;
  *&v126[160] = v117;
  *&v126[168] = v116;
  v126[176] = v88;
  v126[177] = v104;
  v126[178] = v118;
  v126[183] = v175;
  *&v126[179] = v174;
  *&v126[184] = v89;
  v126[192] = v84 & 1;
  v126[193] = v82 & 1;
  v126[194] = v81 & 1;
  *&v126[195] = v172;
  v126[199] = v173;
  *&v126[200] = v91;
  *&v126[208] = v90;
  v126[216] = v76;
  v126[217] = v119;
  v126[218] = v120;
  v126[223] = v171;
  *&v126[219] = v170;
  *&v126[224] = v121;
  *&v126[240] = v122;
  *&v126[256] = v123;
  v126[264] = v85 & 1;
  OUTLINED_FUNCTION_33_84();
  *&v126[268] = v57;
  *&v126[272] = v92;
  v126[280] = v9 & 1;
  v126[281] = v86 & 1;
  OUTLINED_FUNCTION_31_87();
  *&v126[286] = v58;
  *&v126[288] = v93;
  v126[296] = v87 & 1;
  OUTLINED_FUNCTION_41_67();
  *&v126[300] = v59;
  *&v126[304] = v10;
  *&v126[312] = v11;
  *&v126[320] = v12;
  *&v126[328] = v13;
  *&v126[336] = v124;
  *&v126[344] = v101;
  *&v126[352] = v45;
  *&v126[360] = v46;
  *&v126[368] = v47;
  *&v126[376] = v48;
  *&v126[384] = v100;
  *&v126[392] = 0;
  *&v126[400] = v110;
  *&v126[408] = v97;
  *&v126[416] = v96;
  *&v126[424] = v94;
  v126[432] = v95;
  OUTLINED_FUNCTION_39_65();
  *&v126[436] = v60;
  *&v126[440] = v99;
  v126[448] = v98;
  OUTLINED_FUNCTION_38_71();
  *&v126[452] = v61;
  *&v126[456] = v105;
  *&v126[464] = v62;
  *&v126[489] = *v168;
  *&v126[472] = sub_1E379F17C;
  *&v126[480] = 0;
  *&v126[492] = *&v168[3];
  v83 = v169;
  v126[488] = v169;
  *&v126[496] = v79;
  *&v126[504] = *(&v78 + 1);
  *&v126[512] = v109;
  *&v126[520] = v78;
  *&v126[528] = v77;
  *&v126[536] = v108;
  *&v126[544] = v107;
  *&v126[552] = v106;
  *&v126[560] = v75;
  *&v126[568] = v74;
  *&v126[576] = v73;
  memcpy(__src, v179, 0x60uLL);
  *&__src[6] = v113;
  *(&__src[6] + 1) = v112;
  LOBYTE(__src[7]) = v102;
  *(&__src[7] + 1) = v111;
  *&__src[8] = v114;
  BYTE8(__src[8]) = v5 & 1;
  *&__src[9] = v115;
  BYTE8(__src[9]) = v103;
  *&__src[10] = v117;
  *(&__src[10] + 1) = v116;
  LOBYTE(__src[11]) = v88;
  BYTE1(__src[11]) = v104;
  BYTE2(__src[11]) = v118;
  *(&__src[11] + 1) = v89;
  LOBYTE(__src[12]) = v84 & 1;
  BYTE1(__src[12]) = v72;
  BYTE2(__src[12]) = v81 & 1;
  *(&__src[12] + 1) = v91;
  *&__src[13] = v90;
  BYTE8(__src[13]) = v76;
  *(&__src[7] + 1) = *v178;
  DWORD1(__src[7]) = *&v178[3];
  *(&__src[8] + 9) = *v177;
  HIDWORD(__src[8]) = *&v177[3];
  HIDWORD(__src[9]) = *&v176[3];
  *(&__src[9] + 9) = *v176;
  BYTE7(__src[11]) = v175;
  *(&__src[11] + 3) = v174;
  *(&__src[12] + 3) = v172;
  BYTE7(__src[12]) = v173;
  BYTE9(__src[13]) = v119;
  BYTE10(__src[13]) = v120;
  HIBYTE(__src[13]) = v171;
  *(&__src[13] + 11) = v170;
  __src[14] = v121;
  __src[15] = v122;
  *&__src[16] = v123;
  BYTE8(__src[16]) = v85 & 1;
  OUTLINED_FUNCTION_33_84();
  HIDWORD(__src[16]) = v63;
  *&__src[17] = v92;
  BYTE8(__src[17]) = v9 & 1;
  BYTE9(__src[17]) = v86 & 1;
  OUTLINED_FUNCTION_31_87();
  HIWORD(__src[17]) = v64;
  *&__src[18] = v93;
  BYTE8(__src[18]) = v87 & 1;
  OUTLINED_FUNCTION_41_67();
  HIDWORD(__src[18]) = v65;
  *&__src[19] = v10;
  *(&__src[19] + 1) = v11;
  *&__src[20] = v12;
  *(&__src[20] + 1) = v13;
  v128 = v124;
  v129 = v101;
  v130 = v71;
  v131 = v70;
  v132 = v69;
  v133 = v68;
  v134 = v100;
  v135 = 0;
  v136 = v110;
  v137 = v97;
  v138 = v96;
  v139 = v94;
  v140 = v95;
  OUTLINED_FUNCTION_39_65();
  v141 = v66;
  v142 = v99;
  v143 = v98;
  OUTLINED_FUNCTION_38_71();
  v144 = v67;
  v145 = v105;
  v146 = v19;
  v147 = sub_1E379F17C;
  v148 = 0;
  v149 = v83;
  *v150 = *v168;
  *&v150[3] = *&v168[3];
  v151 = v79;
  v152 = *(&v78 + 1);
  v153 = v109;
  v154 = v78;
  v155 = v77;
  v156 = v108;
  v157 = v107;
  v158 = v106;
  v159 = v75;
  v160 = v74;
  v161 = v73;
  sub_1E401ECE4(v126, v125);
  sub_1E3A57B4C(__src);
  memcpy(v80, v126, 0x248uLL);
  OUTLINED_FUNCTION_42();
}

void sub_1E401ED1C()
{
  OUTLINED_FUNCTION_41_5();
  v73 = v3;
  v5 = v4;
  if (!*(v0 + 440))
  {
    goto LABEL_11;
  }

  v6 = v1;
  v7 = v2;
  OUTLINED_FUNCTION_8();
  if (!(*(v8 + 392))())
  {
    goto LABEL_11;
  }

  type metadata accessor for VerticalStackLayout();
  if (!swift_dynamicCastClass())
  {

LABEL_11:
    v37 = OUTLINED_FUNCTION_5_8();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v7 = 0.0;
    goto LABEL_35;
  }

  v9 = sub_1E3A24FDC(v6);
  type metadata accessor for LayoutGrid();
  v10.n128_f64[0] = sub_1E3A25914();
  v14 = j_nullsub_1(v10, v11, v12, v13);
  v70 = v15;
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_30_1();
  v21 = *(v20 + 152);

  v21(v83, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
  sub_1E4148C68(sub_1E3C2FC84, v23, &v80);
  v25.n128_u64[0] = *(&v80 + 1);
  v24.n128_u64[0] = v80;
  v26.n128_u64[0] = v81;
  v27.n128_u64[0] = v82;
  v28 = j_nullsub_1(v24, v25, v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v71 = v9;
  v72 = v14 + v28;
  if (v9 & 1) != 0 && (*(v0 + 432))
  {
    if (sub_1E401DDD4())
    {
      OUTLINED_FUNCTION_30();
      (*(v35 + 176))(v83);

      if (v84)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = *v83;
      }
    }

    else
    {
      v36 = 0.0;
    }

    v81 = *(v0 + 536);
    v80 = *(v0 + 520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
    sub_1E42038F4();
    v72 = v72 + v36 + v79[2];
  }

  type metadata accessor for ViewRepresentableProperties();
  OUTLINED_FUNCTION_17_145(&qword_1EE24D450);
  v49 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_bottomBaseline;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v50 = *v49;
  v51 = *(v49 + 8);

  if (v51 & 1 | (v50 <= 0.0))
  {
    v41 = v17 + v32;
  }

  else
  {
    v41 = v17 + v32 - v50;
  }

  OUTLINED_FUNCTION_30_1();
  v53 = *(v52 + 248);
  *&v80 = v53();
  BYTE8(v80) = v54 & 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E4148C68(sub_1E37E8788, v55, v79);
  v80 = *(v0 + 496);
  v81 = *(v0 + 512);
  v77 = *(v0 + 496);
  v78 = *(v0 + 512);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  v45 = v7 - *(&v75 + 1) - v41 - v72;
  OUTLINED_FUNCTION_30_1();
  v57 = (*(v56 + 200))();
  if ((v58 & 1) == 0)
  {
    *&v79[0] = v57;
  }

  OUTLINED_FUNCTION_30_1();
  v60 = COERCE_DOUBLE((*(v59 + 304))());
  if ((v61 & 1) == 0)
  {
    v45 = v60;
  }

  v39 = v70 + v30;
  v43 = v19 + v34;
  if (v71)
  {
    v44 = v73 - v39 - v43;
    v79[0] = v44;
  }

  else
  {
    v44 = v79[0];
  }

  v62 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI27ViewRepresentableProperties_size;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v63 = *(v62 + 8);
  LODWORD(v62) = *(v62 + 16);

  if (v62)
  {
    v47 = INFINITY;
  }

  else
  {
    v47 = v63;
  }

  v65 = (v53)(v64);
  v67 = v66;

  *&v75 = v65;
  BYTE8(v75) = v67 & 1;
  MEMORY[0x1EEE9AC00](v68);
  sub_1E4148C68(sub_1E3DFBA34, v55, &v74);
  if (v44 >= v74)
  {
    v46 = v74;
  }

  else
  {
    v46 = v44;
  }

  if (v47 >= v45)
  {
    v47 = v45;
  }

  if (v71)
  {
    v75 = v80;
    v76 = v81;
    sub_1E42038F4();
    OUTLINED_FUNCTION_8();
    (*(v69 + 96))(0.0);
  }

  v48 = v73;
  v37 = v72;
LABEL_35:
  *v5 = v44;
  v5[1] = v45;
  v5[2] = v46;
  v5[3] = v47;
  v5[4] = v37;
  v5[5] = v39;
  v5[6] = v41;
  v5[7] = v43;
  v5[8] = v48;
  v5[9] = v7;
  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E401F340@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (!*(v2 + 392))
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_8();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  result = sub_1E32AE9B0(v6);
  v9 = result;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      goto LABEL_24;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v26 == v24 && v27 == v25)
    {
      break;
    }

    v12 = sub_1E42079A4();

    if (v12)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  type metadata accessor for ImageViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_30();
  v14 = (*(v13 + 1032))(a1);
  v16 = v15;

  if ((v16 & 1) == 0 && v14)
  {
    v17 = sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    if (v14 == 2)
    {
      v19 = MEMORY[0x1E697DBA8];
    }

    else
    {
      v19 = MEMORY[0x1E697DBB8];
    }

    (*(v18 + 104))(a2, *v19, v17);
    v20 = OUTLINED_FUNCTION_22_1();
    v23 = v17;
  }

  else
  {
LABEL_24:
    sub_1E4200B44();
    v20 = OUTLINED_FUNCTION_10_2();
  }

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

void sub_1E401F5C4(uint64_t a1)
{
  if (*(v1 + 392))
  {
    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 464))();
    if (v7)
    {
      v8 = v7;
      sub_1E32AE9B0(v7);
      OUTLINED_FUNCTION_36_71();
      while (1)
      {
        if (v2 == v3)
        {

          return;
        }

        if (v4)
        {
          MEMORY[0x1E6911E60](v3, v8);
        }

        else
        {
          if (v3 >= *(a1 + 16))
          {
            goto LABEL_24;
          }
        }

        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_42_69();
        OUTLINED_FUNCTION_39_0();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_0();
        sub_1E4206254();
        if (v15 == v13 && v16 == v14)
        {
          break;
        }

        v10 = sub_1E42079A4();

        if (v10)
        {
          goto LABEL_18;
        }

        ++v3;
      }

LABEL_18:

      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass() && (j__OUTLINED_FUNCTION_18(), OUTLINED_FUNCTION_8(), (*(v11 + 1048))(a1, v12 & 1)))
      {
        sub_1E4203644();
      }

      else
      {
      }
    }
  }
}

void sub_1E401F7B4(uint64_t a1)
{
  if (*(v1 + 392))
  {
    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 464))();
    if (v7)
    {
      v8 = v7;
      sub_1E32AE9B0(v7);
      OUTLINED_FUNCTION_36_71();
      while (1)
      {
        if (v2 == v3)
        {

          return;
        }

        if (v4)
        {
          MEMORY[0x1E6911E60](v3, v8);
        }

        else
        {
          if (v3 >= *(a1 + 16))
          {
            goto LABEL_23;
          }
        }

        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_42_69();
        OUTLINED_FUNCTION_39_0();
        sub_1E4206254();
        OUTLINED_FUNCTION_39_0();
        sub_1E4206254();
        if (v14 == v12 && v15 == v13)
        {
          break;
        }

        v10 = sub_1E42079A4();

        if (v10)
        {
          goto LABEL_18;
        }

        ++v3;
      }

LABEL_18:

      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        (*(v11 + 1040))(a1);
      }

      else
      {
      }
    }
  }
}

void sub_1E401F990()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v229 = v2;
  sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v227 = v4;
  v228 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v226 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E728);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v216 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v214 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E730);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v210 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v209 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E738);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v212 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v239 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E740);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v215 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v240 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CB80);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v213 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25_3();
  v236 = v30;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E748);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v238 = &v198 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E750);
  OUTLINED_FUNCTION_0_10();
  v219 = v34;
  v220 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  v218 = &v198 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E758);
  OUTLINED_FUNCTION_0_10();
  v223 = v38;
  v224 = v37;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v198 - v40;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E760);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  v225 = &v198 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80);
  v45 = OUTLINED_FUNCTION_17_2(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_5();
  v208 = v46;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v198 - v48;
  v243 = *(v0 + 560);
  *&v244 = *(v0 + 576);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
  sub_1E42038F4();
  v50 = v251;
  OUTLINED_FUNCTION_8();
  *&v52 = COERCE_DOUBLE((*(v51 + 304))());
  if (v53)
  {
    v243 = *(v0 + 560);
    *&v244 = *(v0 + 576);
    sub_1E42038F4();
    v54 = v252;
  }

  else
  {
    v54 = *&v52;
  }

  v211 = (v0 + 560);
  type metadata accessor for LayoutGrid();
  v55 = sub_1E3A2579C(v50);
  sub_1E3C2AE10();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_1E401ED1C();
  v232 = v244;
  v233 = v243;
  v230 = v246;
  v231 = v245;
  v62 = v247;
  OUTLINED_FUNCTION_8();
  if ((*(v63 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v64 + 1640))(v57, v59, v61);
  }

  LODWORD(v206) = v61;
  LODWORD(v207) = v57;
  v241 = v49;
  v65 = *(v0 + 344);
  if (v65)
  {
    OUTLINED_FUNCTION_30_1();
    if ((*(v66 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v67 + 1640))(v207, v59, v206);
    }
  }

  v234 = v59;
  v235 = v55;
  v68 = sub_1E3A25914();
  v72 = v41;
  if (v65)
  {
    v73 = v68;
    v74 = v69;
    v75 = v70;
    v76 = v71;
    OUTLINED_FUNCTION_30_1();
    v78 = (*(v77 + 392))();
    if (v78)
    {
      *&v243 = v73;
      *(&v243 + 1) = v74;
      *&v244 = v75;
      *(&v244 + 1) = v76;
      LOBYTE(v245) = 0;
      (*(*v78 + 184))(&v243);
    }
  }

  v79 = *(v0 + 392);
  v80 = v238;
  v237 = v1;
  v222 = v72;
  if (!v79)
  {
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_8();
  v82 = (*(v81 + 464))();
  if (!v82)
  {
    goto LABEL_35;
  }

  v83 = v82;
  v84 = sub_1E32AE9B0(v82);
  v85 = 0;
  v242 = v83 & 0xC000000000000001;
  while (1)
  {
    if (v84 == v85)
    {

      goto LABEL_33;
    }

    if (v242)
    {
      v86 = MEMORY[0x1E6911E60](v85, v83);
    }

    else
    {
      if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v86 = *(v83 + 8 * v85 + 32);
    }

    if (__OFADD__(v85, 1))
    {
      break;
    }

    LOWORD(v266[0]) = *(v86 + 98);
    LOWORD(v260) = 39;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (*&v251 == v250[0] && *&v252 == v250[1])
    {

LABEL_29:

      type metadata accessor for ImageViewModel();
      v89 = swift_dynamicCastClass();
      v90 = v207;
      v91 = v206;
      if (v89)
      {
        OUTLINED_FUNCTION_30();
        v93 = *(v92 + 392);

        v95 = v93(v94);

        v1 = v237;
        v80 = v238;
        if (v95)
        {
          OUTLINED_FUNCTION_8();
          (*(v96 + 1640))(v90, v234, v91);
        }

LABEL_35:

        if (v62 > 0.0)
        {
          v54 = v62;
        }

        v266[1] = v232;
        v266[0] = v233;
        v266[3] = v230;
        v266[2] = v231;
        v97 = v235;
        sub_1E401F340(v235, v241);
        sub_1E401F7B4(v97);
        v99 = v98;
        sub_1E401F5C4(v97);
        v242 = v100;
        *v80 = sub_1E4201D54();
        *(v80 + 1) = 0;
        v80[16] = 0;
        sub_1E4020B54();
        v101 = sub_1E4203D94();
        v102 = v240;
        *v240 = v101;
        v102[1] = v103;
        v104 = sub_1E4203D54();
        v105 = v239;
        *v239 = v104;
        v105[1] = v106;
        v107 = *(v1 + 50);
        if (v107)
        {
          swift_retain_n();
          *&v108 = COERCE_DOUBLE(sub_1E3F46400());
          v206 = v109;
          v207 = v108;
          v111 = v110;
          sub_1E4203DA4();
          OUTLINED_FUNCTION_59();
          sub_1E4200D94();

          v112 = v260;
          v113 = v261;
          v114 = v262;
          v115 = v263;
          v116 = v264;
          v117 = v265;
        }

        else
        {
          v206 = 0;
          *&v207 = 0.0;
          v111 = 0.0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v116 = 0;
          v117 = 0;
        }

        v118 = *(v1 + 53);
        v203 = v107;
        v202 = v99;
        v199 = v114;
        v200 = v111;
        v234 = v112;
        *&v233 = v113;
        *&v232 = v115;
        *&v231 = v116;
        *&v230 = v117;
        if (v118 && (v1[432] & 1) != 0)
        {
          v119 = v118;
          v205 = sub_1E381AC64();
          v204 = 65537;
        }

        else
        {
          v205 = 0;
          v204 = 0;
        }

        v201 = &v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E768) + 44)];
        v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E770);
        v198 = v240 + *(v120 + 44);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E778);
        v122 = v239 + *(v121 + 44);
        v123 = v209;
        sub_1E4020DE4();
        v124 = v210;
        sub_1E3294EE4(v123, v210, &qword_1ECF3E730);
        v126 = v206;
        v125 = *&v207;
        v250[0] = v207;
        v127 = v199;
        v128 = v200;
        *&v250[1] = v200;
        v250[2] = v206;
        v250[3] = v234;
        v250[4] = v233;
        v250[5] = v199;
        v250[6] = v232;
        v250[7] = v231;
        v250[8] = v230;
        memcpy(v122, v250, 0x48uLL);
        *(v122 + 9) = v205;
        *(v122 + 10) = 0;
        v129 = v204;
        v122[90] = BYTE2(v204);
        *(v122 + 44) = v129;
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E780);
        sub_1E3294EE4(v124, &v122[*(v130 + 64)], &qword_1ECF3E730);
        sub_1E3294EE4(v250, &v243, &qword_1ECF3E788);

        OUTLINED_FUNCTION_40_13();
        sub_1E325F69C(v131, v132);
        OUTLINED_FUNCTION_40_13();
        sub_1E325F69C(v133, v134);

        v251 = v125;
        v252 = v128;
        v253 = v126;
        v254 = v234;
        v255 = v233;
        v256 = v127;
        v257 = v232;
        v258 = v231;
        v259 = v230;
        sub_1E325F69C(&v251, &qword_1ECF3E788);
        v135 = v208;
        v136 = sub_1E3294EE4(v241, v208, &qword_1ECF33D80);
        MEMORY[0x1EEE9AC00](v136);
        *(&v198 - 8) = v237;
        *(&v198 - 7) = v50;
        *(&v198 - 6) = v54;
        *(&v198 - 40) = v202 & 1;
        *(&v198 - 4) = v242;
        *(&v198 - 24) = v235;
        *(&v198 - 2) = v266;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E790);
        OUTLINED_FUNCTION_40_13();
        sub_1E374AD40(v137, v138);
        v139 = v214;
        sub_1E3BFFA24(v135, sub_1E4022228, v214);
        v140 = v239;
        v141 = v212;
        OUTLINED_FUNCTION_18_5();
        sub_1E3294EE4(v142, v143, v144);
        sub_1E3294EE4(v139, v216, &qword_1ECF3E728);
        OUTLINED_FUNCTION_18_5();
        sub_1E3294EE4(v145, v146, v147);
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7A0);
        OUTLINED_FUNCTION_28_87(v148);
        OUTLINED_FUNCTION_40_13();
        sub_1E325F69C(v149, v150);
        OUTLINED_FUNCTION_29_2(v140);
        OUTLINED_FUNCTION_40_13();
        sub_1E325F69C(v151, v152);
        OUTLINED_FUNCTION_29_2(v141);
        v153 = v236;
        v154 = v213;
        OUTLINED_FUNCTION_18_5();
        sub_1E3294EE4(v155, v156, v157);
        sub_1E3294EE4(v240, v215, &qword_1ECF3E740);
        OUTLINED_FUNCTION_18_5();
        sub_1E3294EE4(v158, v159, v160);
        v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7A8);
        OUTLINED_FUNCTION_28_87(v161);
        v162 = v237;
        OUTLINED_FUNCTION_40_13();
        sub_1E325F69C(v163, v164);
        OUTLINED_FUNCTION_29_2(v153);
        OUTLINED_FUNCTION_40_13();
        sub_1E325F69C(v165, v166);
        OUTLINED_FUNCTION_29_2(v154);
        v248 = *v211;
        v249 = *(v211 + 2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
        sub_1E4203914();
        v167 = v243;
        v168 = v244;
        v169 = sub_1E374AD40(&qword_1ECF3E7B0, &qword_1ECF3E748);
        v170 = v217;
        v171 = OUTLINED_FUNCTION_51_1();
        v172 = v218;
        v173 = v238;
        sub_1E41DBF30(v167, *(&v167 + 1), v171 & 1, v170, v169, *&v168, *(&v168 + 1));

        sub_1E325F69C(v173, &qword_1ECF3E748);
        v175 = v226;
        v174 = v227;
        v176 = v228;
        (*(v227 + 104))(v226, *MEMORY[0x1E697E668], v228);
        OUTLINED_FUNCTION_32_84();
        v177 = swift_allocObject();
        memcpy((v177 + 16), v162, 0x248uLL);
        sub_1E401ECE4(v162, &v243);
        *&v243 = v170;
        *(&v243 + 1) = v169;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v179 = v220;
        v180 = OUTLINED_FUNCTION_51_1();
        v181 = v222;
        sub_1E3D951F8(v175, v180 & 1, sub_1E4022244, v177, v179, OpaqueTypeConformance2);

        (*(v174 + 8))(v175, v176);
        (*(v219 + 8))(v172, v179);
        LOBYTE(v179) = sub_1E4202744();
        v182 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v179)
        {
          v182 = sub_1E4202774();
        }

        v183 = *(v162 + 46);
        sub_1E4200A54();
        v185 = v184;
        v187 = v186;
        v189 = v188;
        v191 = v190;
        v192 = v225;
        (*(v223 + 32))(v225, v181, v224);
        v193 = v192 + *(v221 + 36);
        *v193 = v182;
        *(v193 + 8) = v185;
        *(v193 + 16) = v187;
        *(v193 + 24) = v189;
        *(v193 + 32) = v191;
        *(v193 + 40) = 0;
        v194 = sub_1E4202754();
        v195 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v194)
        {
          v195 = sub_1E4202774();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();

        v196 = v229;
        sub_1E329E454(v192, v229, &qword_1ECF3E760);
        v197 = v196 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7B8) + 36);
        *v197 = v195;
        *(v197 + 8) = v183;
        *(v197 + 16) = v185;
        *(v197 + 24) = v187;
        *(v197 + 32) = v189;
        *(v197 + 40) = 0;
        sub_1E325F69C(v241, &qword_1ECF33D80);
        OUTLINED_FUNCTION_42();
        return;
      }

LABEL_33:
      v1 = v237;
      v80 = v238;
      goto LABEL_35;
    }

    v88 = sub_1E42079A4();

    if (v88)
    {
      goto LABEL_29;
    }

    ++v85;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1E4020B54()
{
  OUTLINED_FUNCTION_9_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CBE0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = *(v0 + 344);
  if (v14)
  {

    OUTLINED_FUNCTION_25();
    v18 = sub_1E39E19A0(v15, v16, v17);
    if ((*(*v14 + 392))(v18))
    {
      OUTLINED_FUNCTION_30();
      (*(v19 + 176))(&v45);

      *&v20 = OUTLINED_FUNCTION_40_71();
      if ((v22 & 1) == 0)
      {
        v23.n128_f64[0] = OUTLINED_FUNCTION_6();
        *&v20 = j_nullsub_1(v23, v24, v25, v26);
        *(&v21 + 1) = v27;
        *(&v20 + 1) = v28;
      }
    }

    else
    {
      *&v20 = OUTLINED_FUNCTION_40_71();
    }

    v43 = v21;
    v44 = v20;
    v34 = sub_1E4202734();

    (*(v3 + 32))(v10, v6, v1);
    v35 = &v10[*(v7 + 36)];
    *v35 = v34;
    v36 = v44;
    *(v35 + 24) = v43;
    *(v35 + 8) = v36;
    v35[40] = 0;
    sub_1E329E454(v10, v13, &qword_1ECF2CBA0);
    OUTLINED_FUNCTION_21_1();
    sub_1E329E454(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v7);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }
}

void sub_1E4020DE4()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E868);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E870);
  OUTLINED_FUNCTION_0_10();
  v51 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E878);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  if (v1[432])
  {
    *&v49 = v7;
    v50 = v3;
    sub_1E4021BFC(v1, v6);
    OUTLINED_FUNCTION_32_84();
    v17 = swift_allocObject();
    memcpy((v17 + 16), v1, 0x248uLL);
    sub_1E401ECE4(v1, v52);
    sub_1E402298C();
    v18 = OUTLINED_FUNCTION_51_1();
    sub_1E40AB6EC(v18 & 1);

    sub_1E325F69C(v6, &qword_1ECF3E868);
    if (sub_1E401DDD4())
    {
      OUTLINED_FUNCTION_30();
      (*(v19 + 152))(v52);

      *&v20 = OUTLINED_FUNCTION_40_71();
      v22 = v49;
      if ((v23 & 1) == 0)
      {
        v24.n128_f64[0] = OUTLINED_FUNCTION_6();
        *&v20 = j_nullsub_1(v24, v25, v26, v27);
        *(&v21 + 1) = v28;
        *(&v20 + 1) = v29;
      }
    }

    else
    {
      *&v20 = OUTLINED_FUNCTION_40_71();
      v22 = v49;
    }

    v48 = v21;
    v49 = v20;
    v35 = sub_1E4202734();
    (*(v51 + 32))(v15, v11, v22);
    v36 = &v15[*(v12 + 36)];
    *v36 = v35;
    v37 = v49;
    *(v36 + 24) = v48;
    *(v36 + 8) = v37;
    v36[40] = 0;
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_18_5();
    sub_1E329E454(v38, v39, v40);
    OUTLINED_FUNCTION_18_5();
    sub_1E329E454(v41, v42, v43);
    OUTLINED_FUNCTION_37_6();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }
}

uint64_t sub_1E4021120@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BOOL4 a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v75 = a5;
  v72 = a4;
  v70 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7D0);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v76 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v73 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7D8);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v71 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v78 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7E0);
  v24 = OUTLINED_FUNCTION_17_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v77 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7E8);
  v30 = v29 - 8;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v74 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  v34 = v33;
  v35 = sub_1E4203D94();
  v68 = a6;
  *a6 = v35;
  a6[1] = v36;
  v37 = *(a1 + 440) != 0;
  v81[0] = *(a1 + 400);
  v79 = v81[0];

  sub_1E3294EE4(v81, v80, &qword_1ECF35218);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35218);
  sub_1E4148C68(sub_1E3BFFB6C, v38, v80);
  sub_1E325F69C(v81, &qword_1ECF35218);
  v69 = v34;
  sub_1E3BEF930(v70, v37, a3, v34, a7, a8);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  sub_1E4200D94();
  v39 = (v34 + *(v30 + 44));
  v40 = v80[1];
  *v39 = v80[0];
  v39[1] = v40;
  v39[2] = v80[2];
  *v28 = sub_1E4201D54();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v41 = v28;
  v67 = v28;
  LOBYTE(v28) = v72;
  v42 = sub_1E3A24FDC(v72);
  v43 = v78;
  sub_1E40216A0(v28, v78);
  LOBYTE(v30) = sub_1E3A24FDC(v28);
  v72 = (v30 & 1) == 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7F0);
  v75 = v68 + *(v44 + 44);
  v45 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E7F8) + 44)];
  v46 = v73;
  sub_1E4021884();
  v47 = v43;
  v48 = v71;
  sub_1E3294EE4(v47, v71, &qword_1ECF3E7D8);
  v49 = v76;
  sub_1E3294EE4(v46, v76, &qword_1ECF3E7D0);
  *v45 = 0;
  v45[8] = (v42 & 1) == 0;
  v45[9] = v42 & 1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E800);
  sub_1E3294EE4(v48, &v45[v50[12]], &qword_1ECF3E7D8);
  v51 = &v45[v50[16]];
  *v51 = 0;
  v51[8] = v72;
  v51[9] = v30 & 1;
  sub_1E3294EE4(v49, &v45[v50[20]], &qword_1ECF3E7D0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v52, v53);
  sub_1E325F69C(v78, &qword_1ECF3E7D8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v54, v55);
  sub_1E325F69C(v48, &qword_1ECF3E7D8);
  v56 = v69;
  v57 = v74;
  sub_1E3294EE4(v69, v74, &qword_1ECF3E7E8);
  v58 = v77;
  sub_1E3294EE4(v67, v77, &qword_1ECF3E7E0);
  v59 = v75;
  sub_1E3294EE4(v57, v75, &qword_1ECF3E7E8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E808);
  sub_1E3294EE4(v58, v59 + *(v60 + 48), &qword_1ECF3E7E0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v61, v62);
  sub_1E325F69C(v56, &qword_1ECF3E7E8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v63, v64);
  return sub_1E325F69C(v57, &qword_1ECF3E7E8);
}

uint64_t sub_1E40216A0@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E828);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*(v3 + 440))
  {

    sub_1E3A24FDC(a1);
    type metadata accessor for BaseImpressionManager();
    v14 = static BaseImpressionManager.getImpressionableChildren(_:)();
    sub_1E4021D4C(v14, v13);

    *v9 = sub_1E4201D44();
    *(v9 + 1) = 0;
    v9[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E830);
    sub_1E4021DF4();

    sub_1E329E454(v9, a2, &qword_1ECF3E828);
    v15 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v6);
    return sub_1E325F69C(v13, &qword_1ECF2B7B0);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_10_2();

    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v6);
  }
}

void sub_1E4021884()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v0;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E810);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E818);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43[-v16 - 8];
  if (*(v5 + 384))
  {

    v18 = sub_1E3EBA288();
    v42 = v7;
    v19 = v18;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    memcpy(v43, v19, 0x150uLL);
    memcpy(v44, v19, 0xE0uLL);
    memcpy(v47, v19 + 256, sizeof(v47));
    *&v44[25] = *(v5 + 200);
    LOBYTE(v44[27]) = *(v5 + 216);
    type metadata accessor for CollectionLayoutFactory();
    sub_1E37E6E1C(v43, v46);
    sub_1E3C11D38(v46);
    v20.n128_u64[0] = v46[0];
    v21.n128_u64[0] = v46[1];
    v22.n128_u64[0] = v46[2];
    v23.n128_u64[0] = v46[3];
    j_nullsub_1(v20, v21, v22, v23);
    OUTLINED_FUNCTION_3();
    memcpy(v45, v44, 0xE0uLL);
    v45[28] = v1;
    v45[29] = v2;
    v45[30] = v3;
    v45[31] = v4;
    memcpy(&v45[32], v47, 0x50uLL);
    memcpy(v44, v45, sizeof(v44));
    nullsub_1(v24, v25);
    memcpy(v46, v44, 0x150uLL);
    OUTLINED_FUNCTION_25();
    sub_1E3A546A4(v26, v27, v28, v29, v30);
    *&v11[*(v8 + 36)] = 256;
    OUTLINED_FUNCTION_32_84();
    v31 = swift_allocObject();
    memcpy((v31 + 16), v5, 0x248uLL);
    sub_1E401ECE4(v5, v43);
    sub_1E4022660();
    v32 = OUTLINED_FUNCTION_51_1();
    sub_1E40AB6EC(v32 & 1);

    sub_1E375B760(v45);
    sub_1E325F69C(v11, &qword_1ECF3E810);
    (*(v14 + 32))(v42, v17, v12);
    OUTLINED_FUNCTION_37_6();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  }
}

uint64_t sub_1E4021BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = *(a1 + 408);
  if (v10)
  {

    sub_1E3EB9BB4(v19);
    v11 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v10, v19, 0, v11 & 1, 0, 0, v9);

    sub_1E375C31C(v19);
    (*(v6 + 32))(a2, v9, v4);
    v12 = OUTLINED_FUNCTION_22_1();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_10_2();

    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v4);
  }
}

uint64_t sub_1E4021D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1E4204724();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1E4021DF4()
{
  OUTLINED_FUNCTION_9_4();
  LODWORD(v43) = v2;
  v42 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v47 = v10;
  sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v40 = v12;
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E838);
  OUTLINED_FUNCTION_0_10();
  v45 = v16;
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v44 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v48 = v19;
  v20 = *v7;
  v21 = v7[1];
  v22 = *(v5 + 448);
  type metadata accessor for ViewRepresentableProperties();
  OUTLINED_FUNCTION_17_145(&qword_1EE24D450);

  v23 = sub_1E4200BC4();
  sub_1E3D983F0(v9, v22, v23, v55, v20, v21);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  sub_1E4200D94();
  LOBYTE(v9) = sub_1E4202764();
  v24 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v9)
  {
    v24 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v55[88] = 0;
  memcpy(v53, v55, 0x58uLL);
  LOBYTE(v53[11]) = v24;
  *&v53[12] = v20;
  *&v53[13] = v21;
  v53[14] = v0;
  v53[15] = v1;
  LOBYTE(v53[16]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E840);
  sub_1E4022758(&qword_1ECF3E848, &qword_1ECF3E840, &unk_1E42E6070, sub_1E40227D8);
  sub_1E3B29C44();
  sub_1E3B29C48();
  (*(v40 + 8))(v14, v41);
  memcpy(v54, v53, 0x81uLL);
  sub_1E325F69C(v54, &qword_1ECF3E840);
  if (v43)
  {
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    LODWORD(v42) = 0;
    v43 = v53[0];
    v40 = v53[4];
    v41 = v53[2];
    v51 = 1;
    v50 = v53[1];
    v49 = v53[3];
    v25 = 1;
    v26 = LOBYTE(v53[1]);
    v38 = LOBYTE(v53[3]);
    v39 = v53[5];
    v52 = 0;
  }

  else
  {
    v43 = 0;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v26 = 0;
    v25 = 0;
    LODWORD(v42) = 1;
  }

  v28 = v44;
  v27 = v45;
  v29 = *(v45 + 16);
  v30 = v48;
  v31 = v46;
  v29(v44, v48, v46);
  v32 = v47;
  v29(v47, v28, v31);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E860) + 48);
  *v33 = 0;
  *(v33 + 8) = v25;
  *(v33 + 16) = v43;
  *(v33 + 24) = v26;
  v34 = v38;
  *(v33 + 32) = v41;
  *(v33 + 40) = v34;
  v35 = v39;
  *(v33 + 48) = v40;
  *(v33 + 56) = v35;
  *(v33 + 64) = v42;
  v36 = *(v27 + 8);
  v36(v30, v31);
  v36(v28, v31);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E4022244()
{
  v1 = *(v0 + 416);
  if (v1)
  {

    v5.origin.x = OUTLINED_FUNCTION_2_0();
    v3 = 0;
    if (CGRectGetMinY(v5) >= 0.0)
    {
      v6.origin.x = OUTLINED_FUNCTION_2_0();
      MaxY = CGRectGetMaxY(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028);
      sub_1E42038F4();
      if (v4 >= MaxY)
      {
        v3 = 1;
      }
    }

    if (v3 != ((*(*v1 + 200))() & 1))
    {
      (*(*v1 + 208))(v3);
    }
  }
}

uint64_t sub_1E402239C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 584))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 336);
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

uint64_t sub_1E40223DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 568) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 584) = 1;
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
      *(result + 336) = (a2 - 1);
      return result;
    }

    *(result + 584) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E40224C4()
{
  result = qword_1ECF3E7C8;
  if (!qword_1ECF3E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E748);
    sub_1E374AD40(&qword_1ECF3E7B0, &qword_1ECF3E748);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E7C8);
  }

  return result;
}

unint64_t sub_1E4022660()
{
  result = qword_1ECF3E820;
  if (!qword_1ECF3E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E810);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E820);
  }

  return result;
}

uint64_t sub_1E4022704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4022758(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E40227D8()
{
  result = qword_1ECF3E850;
  if (!qword_1ECF3E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E858);
    sub_1E3D9848C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E850);
  }

  return result;
}

uint64_t objectdestroyTm_58()
{

  sub_1E3264CE0();

  OUTLINED_FUNCTION_32_84();

  return swift_deallocObject();
}

unint64_t sub_1E402298C()
{
  result = qword_1ECF3E880;
  if (!qword_1ECF3E880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E868);
    sub_1E3DDBA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E880);
  }

  return result;
}

double sub_1E4022A1C(char a1, double a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 == 0.0 && a3 == 0.0)
  {
    return 0.0;
  }

  v7 = OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8)
  {
    type metadata accessor for LayoutGrid();
    v9 = v8;
    sub_1E3A258E4(a2);
    v11 = v10;
    v13 = a2 - v10 - v12;
    sub_1E3A286D4();
    sub_1E41DA724();
    [v9 sizeThatFits_];
    if ((a1 & 1) == 0)
    {
      [v9 setFrame_];
    }
  }

  return a2;
}

id sub_1E4022BB8()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_viewModel) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E4022C44(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_bubbleTipContentView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI29UnifiedMessagingBubbleTipView_viewModel] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void *sub_1E4022D90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController);
  v2 = v1;
  return v1;
}

void sub_1E4022E1C(void *a1)
{
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController);
  *(v1 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController);
  v4 = v3;
  v5 = a1;
  sub_1E4023EB8(v3, v6);
}

id sub_1E4022EA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationBarTraits);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  result = sub_1E4022F3C(v4, v5, v6, v7, v8, v9, v10);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

id sub_1E4022F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a7 != 1)
  {
    return a7;
  }

  return result;
}

uint64_t sub_1E4022F4C(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationBarTraits);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v11;
  *(v3 + 2) = *(a1 + 32);
  v3[6] = *(a1 + 48);
  return sub_1E4022FC0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E4022FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
    return MEMORY[0x1EEE66C48]();
  }

  return result;
}

id sub_1E4023030()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_50();
  return sub_1E4023060(v2);
}

id sub_1E4023060(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = (v2 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_sourceId);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController;
  *(v2 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_wasLegacyLibraryControllerShown) = 0;
  v13 = v2 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationItemCancellable;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = (v2 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationBarTraits);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  v14[6] = 1;
  v15 = [a1 contextData];
  if (!v15 || (v16 = sub_1E3751A20(v15)) == 0 || (v17 = sub_1E374BD08(v16), , !v17))
  {

LABEL_14:

    sub_1E325F748(v13, &qword_1ECF322D8);
    sub_1E4022FC0(*v14, v14[1], v14[2], v14[3], v14[4], v14[5], v14[6]);
    type metadata accessor for LibTransitionDetailsViewController();
    OUTLINED_FUNCTION_19_3();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v43 = v6;
  v18 = sub_1E37FAF8C();
  v44 = v17;
  v19 = *v18;
  v20 = v18[1];

  v21 = v19;
  v22 = v44;
  sub_1E3277E60(v21, v20, v44, &v45);

  if (!v46)
  {

    sub_1E325F748(&v45, &unk_1ECF296E0);
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
LABEL_13:
    sub_1E325F748(&v47, &qword_1ECF28EB8);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_12;
  }

  if (!*(&v48 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1E3251BE8(&v47, v50);
  sub_1E41A3110();
  v23 = OUTLINED_FUNCTION_123_3();
  v24(v23);

  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v42 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v47 = v28;
    *v27 = 136315138;
    v29 = sub_1E4205C74();
    v31 = sub_1E3270FC8(v29, v30, &v47);

    *(v27 + 4) = v31;
    v22 = v44;
    _os_log_impl(&dword_1E323F000, v25, v42, "LibTransitionDetailsViewController:: init with context data %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v43 + 8))(v10, v4);
  sub_1E327F454(v50, v2 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_mediaEntity);
  v34 = sub_1E37FAFC8();
  v35 = *v34;
  v36 = v34[1];

  sub_1E3277E60(v35, v36, v22, &v47);

  if (*(&v48 + 1))
  {
    v37 = swift_dynamicCast();
    v39 = *(&v45 + 1);
    v38 = v45;
    if (!v37)
    {
      v38 = 0;
      v39 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v47, &unk_1ECF296E0);
    v38 = 0;
    v39 = 0;
  }

  *v11 = v38;
  v11[1] = v39;

  type metadata accessor for LibTransitionDetailsViewController();
  OUTLINED_FUNCTION_25();
  v32 = objc_msgSendSuper2(v40, v41);

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v32;
}

void sub_1E4023524()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_sourceId);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_wasLegacyLibraryControllerShown) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationItemCancellable;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationBarTraits;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E40235EC()
{
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v21.receiver = v0;
  v21.super_class = type metadata accessor for LibTransitionDetailsViewController();
  objc_msgSendSuper2(&v21, sel_vui_viewDidLoad);
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 setBackgroundColor_];

    if (TVAppFeature.isEnabled.getter(12))
    {
      sub_1E41FF204();
      sub_1E41FF1F4();
      v9 = sub_1E41FF1E4();

      if ((v9 & 1) == 0)
      {
LABEL_4:
        v10 = sub_1E324FBDC();
        (*(v5 + 16))(v1, v10, v3);
        v11 = sub_1E41FFC94();
        v12 = sub_1E42067E4();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 67109120;
          _os_log_impl(&dword_1E323F000, v11, v12, "LibrarySideBarManager:: will show library details with network reachable status: %{BOOL}d", v13, 8u);
          OUTLINED_FUNCTION_6_0();
        }

        v14 = OUTLINED_FUNCTION_74();
        v15(v14);
        goto LABEL_14;
      }
    }

    else
    {
      v16 = [objc_opt_self() sharedInstance];
      v17 = [v16 isNetworkReachable];

      if ((v17 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v18 = OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_mediaEntity;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E327F454(v2 + v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    type metadata accessor for LibMPBaseMediaEntity();
    if (OUTLINED_FUNCTION_11_178())
    {
      if ((*(*v19[0] + 464))())
      {
        sub_1E4024850();

        return;
      }
    }

    sub_1E327F454(v2 + v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
    if (OUTLINED_FUNCTION_11_178())
    {
      __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_14:
      sub_1E4024850();
      return;
    }

    sub_1E40242F0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E4023930()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for LibTransitionDetailsViewController();
  objc_msgSendSuper2(&v14, sel_vui_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_detailsViewController];
  if (v1)
  {
    v2 = [v1 vuiView];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 vuiView];
      if (v4)
      {
        v5 = v4;
        [v4 frame];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_1E4023A60(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LibTransitionDetailsViewController();
  objc_msgSendSuper2(&v10, sel_vui_viewWillAppear_, a1 & 1);
  v3 = [v1 vuiNavigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 interactivePopGestureRecognizer];

    if (v5)
    {
      [v5 setEnabled_];
    }
  }

  v6 = [v1 vuiNavigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 interactivePopGestureRecognizer];

    if (v8)
    {
      [v8 setDelegate_];
    }
  }

  return sub_1E40257DC();
}

void sub_1E4023BA8(char a1)
{
  v3 = v1;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v23.receiver = v3;
  v23.super_class = type metadata accessor for LibTransitionDetailsViewController();
  objc_msgSendSuper2(&v23, sel_vui_viewWillDisappear_, a1 & 1);
  sub_1E3F6FD54(v3, &v24);
  v24 = v24;
  v25 = v25;
  v26 = v26;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x168))(&v24);
  v9 = OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_wasLegacyLibraryControllerShown;
  if (*(v3 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_wasLegacyLibraryControllerShown) == 1)
  {
    type metadata accessor for TVAppLauncher();
    v10 = [swift_getObjCClassFromMetadata() sharedInstance];
    v11 = [v10 appWindow];

    if (v11)
    {
      [v11 bounds];
      v13 = v12;

      v14 = [v3 vuiNavigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        type metadata accessor for LayoutGrid();
        sub_1E3A258E4(v13);
        [v16 setLayoutMargins_];
      }
    }

    else
    {
      v17 = sub_1E324FBDC();
      (*(v7 + 16))(v2, v17, v5);
      v18 = sub_1E41FFC94();
      v19 = sub_1E42067F4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1E323F000, v18, v19, "LibrarySideBarManager::makeLibraryNavigationControllerWith set navbar margin but no window", v20, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v21 = OUTLINED_FUNCTION_74();
      v22(v21);
    }

    *(v3 + v9) = 0;
  }
}

void sub_1E4023EB8(void *a1, void *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E8B8);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_41();
  if (a2)
  {
    v8 = [a2 vuiView];
    if (!v8)
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = v8;
    [v8 vui_removeFromSuperView];
  }

  [a2 vui_removeFromParentViewController];
  v10 = OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationItemCancellable;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E4025C58(v4 + v10, &v22);
  if (v23)
  {
    sub_1E327F454(&v22, v21);
    sub_1E325F748(&v22, &qword_1ECF322D8);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    OUTLINED_FUNCTION_35_0();
    sub_1E4200484();
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (!a1)
    {
      return;
    }
  }

  else
  {
    sub_1E325F748(&v22, &qword_1ECF322D8);
    if (!a1)
    {
      return;
    }
  }

  v11 = a1;
  [v4 vui:v11 addChildViewController:?];
  [v11 vui:v4 willMoveToParentViewController:?];
  v12 = [v4 vuiView];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v11 vuiView];
  [v13 vui:v14 addSubview:0 oldView:?];

  [v11 vui:v4 didMoveToParentViewController:?];
  type metadata accessor for DocumentViewController();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    sub_1E41FE2F4();

    OUTLINED_FUNCTION_4_0();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v11;
    sub_1E32752B0(&unk_1ECF3E8C0, &qword_1ECF3E8B8);
    v17 = v11;
    sub_1E4200844();
    OUTLINED_FUNCTION_35_0();

    v18 = OUTLINED_FUNCTION_74();
    v19(v18);
    v23 = sub_1E42004F4();
    v24 = MEMORY[0x1E695BF08];
    v22 = v3;
    swift_beginAccess();
    sub_1E3ABD288(&v22, v4 + v10);
    swift_endAccess();
    sub_1E3F6FD54(v4, &v22);
    v22 = v22;
    v23 = v23;
    v25 = v25;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x168))(&v22);
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_wasLegacyLibraryControllerShown) = 1;
    v20 = [v11 navigationItem];
    sub_1E4025508(v20);
  }
}

void sub_1E40242F0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_mediaEntity;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E327F454(v0 + v2, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v4 + 88))(v3, v4);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v6)
  {

    sub_1E4024724();
  }

  else
  {
    sub_1E327F454(v1 + v2, v12);
    v7 = v13;
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v8 + 24))(v7, v8);
    if (v9)
    {

      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_1E327F454(v1 + v2, v12);
      OUTLINED_FUNCTION_4_0();
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      v11 = v1;
      sub_1E41A3244(v12, sub_1E4025D40, v10);

      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_1E4024850();
    }
  }
}

uint64_t sub_1E402445C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v20 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v19 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v14 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_1E4025D48;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_156;
  v17 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v13, v2, v17);
  _Block_release(v17);

  (*(v20 + 8))(v2, v5);
  return (*(v9 + 8))(v13, v19);
}

void sub_1E4024724()
{
  v0 = sub_1E4025164();
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 appController];

    if (v3)
    {
      v4 = [v3 appContext];

      if (v4)
      {
        v5 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v8 = v4;
        sub_1E3D50594();
        v7 = v6;

        sub_1E4022E1C(v7);

        return;
      }
    }
  }

  sub_1E4024850();
}

void sub_1E4024850()
{
  sub_1E3280A90(0, &qword_1EE23B308);
  v1 = OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_mediaEntity;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E327F454(v0 + v1, v13);
  v2 = v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_sourceId;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_sourceId);
  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_sourceId + 8);

  v5 = sub_1E4024A40(v13, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v13);
  if (v5)
  {
    sub_1E327F454(v0 + v1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    type metadata accessor for LibFamilySharingBaseMediaEntity();
    if (swift_dynamicCast())
    {

      v6 = *(v2 + 8);
      if (!v6)
      {
LABEL_9:
        v12 = [objc_opt_self() viewControllerForMediaEntity:v5 withFamilyMember:v6];
        sub_1E4022E1C(v12);

        return;
      }

      v7 = objc_allocWithZone(MEMORY[0x1E696ADA0]);

      v8 = [v7 init];
      OUTLINED_FUNCTION_74();
      v9 = sub_1E4205ED4();

      v10 = [v8 numberFromString_];

      if (v10)
      {
        v11 = [objc_allocWithZone(VUIFamilyMember) init];
        v6 = v11;
        if (v11)
        {
          [v11 setMemberIdentifier_];
        }

        goto LABEL_9;
      }
    }

    v6 = 0;
    goto LABEL_9;
  }
}

uint64_t sub_1E4024A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E327F454(a1, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  v6 = type metadata accessor for LibMPBaseMediaEntity();
  OUTLINED_FUNCTION_4_245(v6, v7, v8, v9, v10, v11, v12, v13, v84, v87, v92, v96, v100);
  if (swift_dynamicCast())
  {
    type metadata accessor for LibMPShowMediaEntity();
    OUTLINED_FUNCTION_19_3();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_mediaCollection);
      v16 = objc_opt_self();
      v98 = v15;
      v89 = v16;
      v17 = [v16 defaultManager];
      v94 = [v17 deviceMediaLibrary];

      v18 = *(**sub_1E3B7B1C8() + 696);

      v20 = v18(v19);

      v22 = *(v20 + 16);
      if (!v22)
      {
LABEL_15:

LABEL_30:
        v76 = v94;
        v77 = v98;
        goto LABEL_31;
      }

      v23 = 0;
      v24 = v20 + 32;
      while (1)
      {
        if (v23 >= *(v20 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1E327F454(v24, &v100);
        v26 = v101;
        v25 = v102;
        __swift_project_boxed_opaque_existential_1(&v100, v101);
        v27 = (*(v25 + 16))(v26, v25);
        if (a3)
        {
          if (v27 == a2 && v28 == a3)
          {

LABEL_28:

            sub_1E3251BE8(&v100, v103);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
            v65 = type metadata accessor for LibHomeSharingSource();
            OUTLINED_FUNCTION_4_245(v65, v66, v67, v68, v69, v70, v71, v72, v85, v89, v94, v98, v100);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_30;
            }

            v73 = v100;
            sub_1E3280A90(0, &qword_1ECF3E8A8);
            v74 = (*((*MEMORY[0x1E69E7D40] & *v73) + 0x1F0))();
            v75 = sub_1E4025A60(v74, 1, [v91 defaultManager]);

            v76 = v75;
            v77 = v98;
LABEL_31:
            v62 = v76;
            v40 = VUIMediaEntityFetchRequestAllPropertiesSet();
            sub_1E4206624();

            v78 = objc_allocWithZone(VUIMPShowMediaCollection);
            v79 = OUTLINED_FUNCTION_35_0();
            sub_1E4025AC4(v79, v77);
            OUTLINED_FUNCTION_50();

LABEL_32:

            return v40;
          }

          v30 = sub_1E42079A4();

          if (v30)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

        ++v23;
        result = __swift_destroy_boxed_opaque_existential_1(&v100);
        v24 += 40;
        if (v22 == v23)
        {
          goto LABEL_15;
        }
      }
    }

    v63 = objc_opt_self();
    v64 = *(v100 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);
    v40 = [v63 _mediaItemWithMPMediaItem_];

LABEL_26:

    return v40;
  }

  sub_1E327F454(a1, v103);
  v31 = type metadata accessor for LibSidebandBaseMediaEntity();
  OUTLINED_FUNCTION_4_245(v31, v32, v33, v34, v35, v36, v37, v38, v85, v88, v93, v97, v100);
  if (swift_dynamicCast())
  {
    v39 = *(v100 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v41 = objc_opt_self();
      v42 = v39;
      v43 = [v41 defaultManager];
      v44 = [v43 sidebandMediaLibrary];

      v45 = VUIMediaEntityFetchRequestAllPropertiesSet();
      sub_1E4206624();

      v46 = objc_allocWithZone(VUISidebandMediaItem);
      v40 = sub_1E4025B50(v44, v40);
    }

    goto LABEL_26;
  }

  sub_1E327F454(a1, v103);
  v47 = type metadata accessor for LibFamilySharingBaseMediaEntity();
  OUTLINED_FUNCTION_4_245(v47, v48, v49, v50, v51, v52, v53, v54, v86, v90, v95, v99, v100);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  type metadata accessor for LibFamilySharingShowMediaEntity();
  OUTLINED_FUNCTION_19_3();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
LABEL_34:
    v40 = *(v100 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict);
    v80 = objc_opt_self();

    sub_1E3744600(v81);

    v82 = sub_1E4205C44();

    v83 = [v80 mediaEntityFromAMSEntityDictionary_];
    OUTLINED_FUNCTION_50();

    return v40;
  }

  v56 = *(*v55 + 584);

  v58 = v56(v57);
  if (!v58)
  {

    goto LABEL_34;
  }

  v59 = *(v58 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict);

  v60 = objc_opt_self();
  sub_1E3744600(v59);

  v61 = sub_1E4205C44();

  v62 = [v60 mediaEntityFromAMSEntityDictionary_];

  if (!v62)
  {

    return 0;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (!v40)
  {

    goto LABEL_32;
  }

  v40 = [objc_opt_self() mediaCollectionWithAMSMediaItem_];

  return v40;
}

id sub_1E4025164()
{
  v1 = OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_mediaEntity;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E327F454(v0 + v1, v92);
  v2 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v3 = OUTLINED_FUNCTION_50();
  v4(v3, v2);
  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v92);
    return 0;
  }

  v6 = __swift_destroy_boxed_opaque_existential_1(v92);
  OUTLINED_FUNCTION_16_150(v6, v7, v8, v9, v10, v11, v12, v13, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  OUTLINED_FUNCTION_3_247(v14, v15, v16, v17, v18, v19, v20, v21, v85, v91[0]);
  v22 = swift_dynamicCast();
  if (!v22)
  {
    OUTLINED_FUNCTION_16_150(v22, v23, v24, v25, v26, v27, v28, v29, v86);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
    OUTLINED_FUNCTION_3_247(v30, v31, v32, v30, v33, v34, v35, v36, v87, v91[0]);
    if (!swift_dynamicCast())
    {

      return 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v91);
  v37 = [objc_allocWithZone(VUIDocumentDataSource) init];
  v38 = sub_1E4205F14();
  sub_1E3A04E34(v38, v39, v37);
  v48 = OUTLINED_FUNCTION_16_150(v40, v41, v42, v43, v44, v45, v46, v47, v86);
  OUTLINED_FUNCTION_3_247(v48, v49, v50, v51, v52, v53, v54, v55, v88, v91[0]);
  v56 = swift_dynamicCast();
  v64 = v56;
  if (v56)
  {
    v56 = __swift_destroy_boxed_opaque_existential_1(v91);
  }

  OUTLINED_FUNCTION_16_150(v56, v57, v58, v59, v60, v61, v62, v63, v89);
  v65 = type metadata accessor for LibSidebandMovieMediaEntity();
  OUTLINED_FUNCTION_3_247(v65, v66, v67, v65, v68, v69, v70, v71, v90, v91[0]);
  if (swift_dynamicCast())
  {
    (*(**v91 + 928))();

    if ((v64 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((v64 & 1) == 0)
  {
LABEL_12:
    sub_1E4205F14();
    v73 = v79;
    v74 = sub_1E3280A90(0, &qword_1ECF3E8B0);
    OUTLINED_FUNCTION_74();
    sub_1E4025494();
    goto LABEL_13;
  }

  sub_1E4205F14();
  v73 = v72;
  v74 = objc_allocWithZone(VUIDocumentContextDataTVShow);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_25();
  sub_1E39DF1C8(v75, v76, v77, v78);
LABEL_13:
  v80 = OUTLINED_FUNCTION_35_0();
  sub_1E4025C00(v80, v73, v37);
  v81 = sub_1E4205ED4();

  [v37 setDocumentRef_];

  [v37 setContextData_];
  v82 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
  [v82 setType_];
  [v82 setAnimated_];
  [v37 setUiConfiguration_];

  return v37;
}

id sub_1E4025494()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithMovieID_];

  return v2;
}

void sub_1E4025508(void *a1)
{
  v3 = [v1 navigationItem];
  v4 = sub_1E3B61CD0();
  sub_1E3B61DA4(v4);

  v5 = OUTLINED_FUNCTION_6_209();
  sub_1E3B62028();
  sub_1E3B62038(v6);

  v7 = OUTLINED_FUNCTION_6_209();
  if (sub_1E3EDF6FC(a1, &selRef_leftBarButtonItems))
  {
    sub_1E3280A90(0, qword_1EE23B2E0);
    v8 = sub_1E42062A4();
  }

  else
  {
    v8 = 0;
  }

  v9 = OUTLINED_FUNCTION_123_3();
  [v9 v10];

  v11 = OUTLINED_FUNCTION_6_209();
  v12 = OUTLINED_FUNCTION_50();
  sub_1E3FBD320(v12);
  if (v13)
  {
    v14 = sub_1E4205ED4();
  }

  else
  {
    v14 = 0;
  }

  v15 = OUTLINED_FUNCTION_123_3();
  [v15 v16];

  v17 = OUTLINED_FUNCTION_6_209();
  v18 = [a1 titleView];
  v19 = OUTLINED_FUNCTION_123_3();
  [v19 v20];

  v21 = OUTLINED_FUNCTION_6_209();
  v22 = [a1 _largeTitleAccessoryView];
  v23 = OUTLINED_FUNCTION_123_3();
  [v23 v24];

  v25 = OUTLINED_FUNCTION_6_209();
  [v25 setLargeTitleDisplayMode_];

  v26 = OUTLINED_FUNCTION_6_209();
  [v26 _setSupportsTwoLineLargeTitles_];

  v27 = OUTLINED_FUNCTION_6_209();
  if (sub_1E3EDF6FC(a1, &selRef_rightBarButtonItems))
  {
    sub_1E3280A90(0, qword_1EE23B2E0);
    OUTLINED_FUNCTION_19_3();
    v28 = sub_1E42062A4();
  }

  else
  {
    v28 = 0;
  }

  [v27 setRightBarButtonItems_];
}

void *sub_1E40257DC()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x160))(v10);
  v2 = v14;
  if (v14 != 1)
  {
    v3 = v13;
    v4 = v11;
    v5 = v12;
    v7 = v10[1];
    v6 = v10[2];
    v8 = v10[0];
    v9 = OUTLINED_FUNCTION_5_11();
    sub_1E3F6FED8(v0, v8 & 1, v7, v9, v6, v4 & 1, v5, v3 & 1, v2);
    return sub_1E325F748(v10, &qword_1ECF3E8D0);
  }

  return result;
}

uint64_t sub_1E4025910()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_mediaEntity);

  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationItemCancellable, &qword_1ECF322D8);
  v1 = OUTLINED_FUNCTION_17_98(v0 + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_navigationBarTraits);

  return sub_1E4022FC0(v1, v2, v3, v4, v5, v6, v7);
}

id sub_1E4025998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibTransitionDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E4025A60(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMPMediaLibrary:a1 type:a2 manager:a3];

  return v5;
}

id sub_1E4025AC4(void *a1, void *a2)
{
  v5 = sub_1E4206614();

  v6 = [v2 initWithMediaLibrary:a1 mediaItemCollection:a2 requestedProperties:v5];

  return v6;
}

id sub_1E4025B50(void *a1, void *a2)
{
  v5 = sub_1E4206614();

  v6 = [v2 initWithMediaLibrary:a1 videoManagedObject:a2 requestedProperties:v5];

  return v6;
}

void sub_1E4025C00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setControllerRef_];
}

uint64_t sub_1E4025C58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E4025CC8()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 navigationItem];
    sub_1E4025508(v4);
  }
}

void sub_1E4025D48()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = Strong + OBJC_IVAR____TtC8VideosUI34LibTransitionDetailsViewController_mediaEntity;
      swift_beginAccess();
      v5 = *(v4 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v4, *(v4 + 24));
      v6 = *(v5 + 96);

      v7 = OUTLINED_FUNCTION_74();
      v6(v7);
      swift_endAccess();
      sub_1E4024724();
    }

    else
    {
      sub_1E4024850();
    }
  }
}

void sub_1E4025E2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E8D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v112 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v125 = v12;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E8E0);
  OUTLINED_FUNCTION_0_10();
  v126 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v123 = v15;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E8E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v129 = v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E8F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v131 = v19;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E8F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v132 = v21;
  v22 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v134 = v29;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E908);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v136 = v31;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E910);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v138 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E918);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v139 = &v112 - v39;
  v40 = (*(*a1 + 392))(v38);
  if (!v40)
  {
    goto LABEL_20;
  }

  v41 = v40;
  v42 = (*(*v40 + 1624))(17, 0);
  if (!v42)
  {
LABEL_19:

LABEL_20:
    *v10 = nullsub_1;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E920);
    sub_1E4026B38();
    sub_1E4026E20();
    OUTLINED_FUNCTION_7_216();
    return;
  }

  v43 = v42;
  v121 = v34;
  type metadata accessor for TextLayout();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {

    goto LABEL_19;
  }

  v45 = v44;
  v119 = v7;
  v120 = v43;
  v46 = [objc_opt_self() vui_videosUIBundle];
  sub_1E4203834();
  (*(v24 + 104))(v27, *MEMORY[0x1E6981630], v22);
  v118 = sub_1E4203824();

  v47 = (*(v24 + 8))(v27, v22);
  v48 = *(*v41 + 200);
  v116 = *v41 + 200;
  v117 = v48;
  v49 = (v48)(v47);
  (*(*v41 + 304))(v49);
  sub_1E4203DA4();
  sub_1E4200D94();
  v146 = 1;
  *&v145[6] = v147;
  *&v145[22] = v148;
  *&v145[38] = v149;
  v50 = [objc_opt_self() sharedInstance];
  if (!v50)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = v50;
  v115 = a2;
  v52 = sub_1E3741090(0xD000000000000017, 0x80000001E428E470, v50);
  v54 = v53;

  if (!v54)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v141[0] = v52;
  v141[1] = v54;
  sub_1E32822E0();
  v55 = sub_1E4202C44();
  v57 = v56;
  v59 = v58;
  sub_1E4203704();
  v60 = sub_1E4202B94();
  v113 = v61;
  v114 = v60;
  v63 = v62;
  v112 = v64;

  sub_1E37434B8(v55, v57, v59 & 1);

  v65 = *(*v45 + 1152);

  v67 = COERCE_DOUBLE(v65(v66));
  LOBYTE(v57) = v68;

  if (v57)
  {
    v69 = 6.0;
  }

  else
  {
    v69 = v67;
  }

  v70 = sub_1E4202734();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v143 = v63 & 1;
  v142 = 0;
  v71 = (*(*v45 + 2048))();
  if (v72)
  {
    v73 = 2;
  }

  else
  {
    v73 = v71;
  }

  if (v73 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  KeyPath = swift_getKeyPath();
  v144 = 0;
  v75 = swift_getKeyPath();
  v140[0] = v114;
  v140[1] = v113;
  LOBYTE(v140[2]) = v63 & 1;
  v140[3] = v112;
  LOBYTE(v140[4]) = v70;
  *&v140[5] = v69;
  v140[6] = v2;
  v140[7] = v3;
  v140[8] = v4;
  LOBYTE(v140[9]) = 0;
  v140[10] = KeyPath;
  v140[11] = v73;
  LOBYTE(v140[12]) = 0;
  v140[13] = v75;
  LOBYTE(v140[14]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E970);
  sub_1E4026EAC();
  v76 = v123;
  sub_1E42033F4();
  memcpy(v141, v140, 0x71uLL);
  v77 = sub_1E325F6F0(v141, &qword_1ECF3E970);
  (*(*v45 + 1808))(v77);
  v78 = sub_1E42028E4();
  v79 = v125;
  __swift_storeEnumTagSinglePayload(v125, 1, 1, v78);
  v80 = sub_1E42029B4();
  sub_1E325F6F0(v79, &qword_1ECF335F8);
  v81 = swift_getKeyPath();
  v82 = v129;
  (*(v126 + 32))(v129, v76, v128);
  v83 = (v82 + *(v122 + 36));
  *v83 = v81;
  v83[1] = v80;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_3_248();
  v84 = v82;
  v85 = v131;
  sub_1E379E528(v84, v131, &qword_1ECF3E8E8);
  memcpy((v85 + *(v127 + 36)), v150, 0x70uLL);
  sub_1E4202764();
  v117();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v86 = v132;
  sub_1E379E528(v85, v132, &qword_1ECF3E8F0);
  OUTLINED_FUNCTION_4_52(v86 + *(v130 + 36));
  v87 = sub_1E4203DA4();
  v89 = v88;
  v90 = v134;
  v91 = v134 + *(v124 + 36);
  sub_1E379E528(v86, v91, &qword_1ECF3E8F8);
  v92 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E960) + 36));
  *v92 = v87;
  v92[1] = v89;
  *(v90 + 64) = *&v145[46];
  v93 = *&v145[16];
  *(v90 + 50) = *&v145[32];
  v94 = *v145;
  *(v90 + 34) = v93;
  *v90 = v118;
  *(v90 + 8) = 0;
  *(v90 + 16) = 1;
  *(v90 + 17) = 0;
  *(v90 + 18) = v94;
  sub_1E4203D54();
  OUTLINED_FUNCTION_3_248();
  v95 = v90;
  v96 = v136;
  sub_1E379E528(v95, v136, &qword_1ECF3E900);
  memcpy((v96 + *(v133 + 36)), v140, 0x70uLL);
  v97 = sub_1E4202744();
  v98 = *(*v41 + 176);
  v98(v151);
  if ((v152 & 1) == 0)
  {
    sub_1E3952BD8(v151[0], v151[1], v151[2]);
  }

  sub_1E4200A54();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v107 = v96;
  v108 = v138;
  sub_1E379E528(v107, v138, &qword_1ECF3E908);
  v109 = v108 + *(v135 + 36);
  *v109 = v97;
  *(v109 + 8) = v100;
  *(v109 + 16) = v102;
  *(v109 + 24) = v104;
  *(v109 + 32) = v106;
  *(v109 + 40) = 0;
  sub_1E4202784();
  v98(v153);
  if ((v154 & 1) == 0)
  {
    sub_1E3952BE0(v153[0], v153[1], v153[2], v153[3]);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v110 = v137;
  sub_1E379E528(v108, v137, &qword_1ECF3E910);
  OUTLINED_FUNCTION_4_52(v110 + *(v121 + 36));
  v111 = v139;
  sub_1E379E528(v110, v139, &qword_1ECF3E918);
  sub_1E32E0598(v111, v10);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E920);
  sub_1E4026B38();
  sub_1E4026E20();
  OUTLINED_FUNCTION_7_216();

  sub_1E32E0600(v111);
}

unint64_t sub_1E4026B38()
{
  result = qword_1ECF3E928;
  if (!qword_1ECF3E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E918);
    sub_1E4026BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E928);
  }

  return result;
}

unint64_t sub_1E4026BC4()
{
  result = qword_1ECF3E930;
  if (!qword_1ECF3E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E910);
    sub_1E4026C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E930);
  }

  return result;
}

unint64_t sub_1E4026C50()
{
  result = qword_1ECF3E938;
  if (!qword_1ECF3E938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E908);
    sub_1E4026CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E938);
  }

  return result;
}

unint64_t sub_1E4026CDC()
{
  result = qword_1ECF3E940;
  if (!qword_1ECF3E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E900);
    sub_1E4026D94();
    sub_1E32752B0(&qword_1ECF3E958, &qword_1ECF3E960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E940);
  }

  return result;
}

unint64_t sub_1E4026D94()
{
  result = qword_1ECF3E948;
  if (!qword_1ECF3E948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E950);
    sub_1E37AE314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E948);
  }

  return result;
}

unint64_t sub_1E4026E20()
{
  result = qword_1ECF3E968;
  if (!qword_1ECF3E968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E968);
  }

  return result;
}

unint64_t sub_1E4026EAC()
{
  result = qword_1ECF3E978;
  if (!qword_1ECF3E978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E970);
    sub_1E4026F64();
    sub_1E32752B0(&qword_1EE2887C0, &qword_1ECF2A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E978);
  }

  return result;
}

unint64_t sub_1E4026F64()
{
  result = qword_1ECF3E980;
  if (!qword_1ECF3E980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E988);
    sub_1E402701C();
    sub_1E32752B0(&qword_1EE288770, &qword_1ECF2A238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E980);
  }

  return result;
}

unint64_t sub_1E402701C()
{
  result = qword_1ECF3E990;
  if (!qword_1ECF3E990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E990);
  }

  return result;
}

unint64_t sub_1E40270CC()
{
  result = qword_1ECF3E9A0;
  if (!qword_1ECF3E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E9A8);
    sub_1E4026B38();
    sub_1E4026E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E9A0);
  }

  return result;
}

uint64_t sub_1E402718C()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  v1 = sub_1E3C2F9A0();

  sub_1E4027368();

  return v1;
}

uint64_t sub_1E40271E0()
{
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_1_278(0x4028000000000000);
  v2 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v2);
  OUTLINED_FUNCTION_0_321();
  sub_1E3C2FCB8(v3, v4);
  OUTLINED_FUNCTION_40_8(v5, v6, v7, v8, v9, v10, v11, v12, v55[0]);
  v13 = OUTLINED_FUNCTION_18();
  v14 = *(*v1 + 1600);
  (v14)(v55, 52, v13 & 1, v2);
  OUTLINED_FUNCTION_1_278(2);
  v15 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v15);
  OUTLINED_FUNCTION_0_321();
  sub_1E3C2FCB8(v16, v17);
  OUTLINED_FUNCTION_40_8(v18, v19, v20, v21, v22, v23, v24, v25, v55[0]);
  v26 = OUTLINED_FUNCTION_18();
  v34 = OUTLINED_FUNCTION_17_8(v26, v27, v28, v29, v30, v31, v32, v33, v55[0]);
  v14(v34, 62);
  OUTLINED_FUNCTION_1_278(0x4018000000000000);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00(v2);
  OUTLINED_FUNCTION_0_321();
  sub_1E3C2FCB8(v35, v36);
  OUTLINED_FUNCTION_40_8(v37, v38, v39, v40, v41, v42, v43, v44, v55[0]);
  v45 = OUTLINED_FUNCTION_18();
  v53 = OUTLINED_FUNCTION_17_8(v45, v46, v47, v48, v49, v50, v51, v52, v55[0]);
  v14(v53, 10);
  return sub_1E3C37CBC(v1, 17);
}

uint64_t sub_1E4027368()
{
  sub_1E40271E0();
  *v52 = sub_1E3952C10(60.0, 40.0);
  *&v52[8] = v1;
  *&v52[16] = v2;
  *&v52[24] = v3;
  v52[32] = 0;
  v76 = sub_1E3952C10(30.0, 30.0);
  v77 = v4;
  v78 = v5;
  v79 = v6;
  v80 = 0;
  v71 = sub_1E3952C10(60.0, 40.0);
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v75 = 0;
  v66 = sub_1E3952C10(60.0, 40.0);
  v67 = v10;
  v68 = v11;
  v69 = v12;
  v70 = 0;
  type metadata accessor for UIEdgeInsets();
  v14 = v13;
  sub_1E3C3DE00(v13);
  v60 = v63;
  v61 = v64;
  v62 = v65;
  sub_1E3C3DE00(v14);
  v53 = v57;
  v54 = v58;
  LOBYTE(v55) = v59;
  sub_1E3C2FCB8(v52, __src);
  memcpy(v52, __src, 0xE9uLL);
  v15 = OUTLINED_FUNCTION_18();
  v16 = *(*v0 + 1600);
  (v16)(v52, 1, v15 & 1, v14);
  OUTLINED_FUNCTION_5_228(0x4049000000000000uLL);
  sub_1E3C2FC98();
  v17 = OUTLINED_FUNCTION_6_210();
  OUTLINED_FUNCTION_3_249(v17, v18, v19, v20, v21, v22, v23, v24, *v52, *&v52[8], *&v52[16], *&v52[24], *&v52[32], *&v52[40], *&v52[48], *&v52[56], *&v52[64], *&v52[72], *&v52[80], *&v52[88], *&v52[96], *&v52[104], *&v52[112], *&v52[120], *&v52[128], *&v52[136], *&v52[144], *&v52[152], *&v52[160], *&v52[168], *&v52[176], *&v52[184], *&v52[192], *&v52[200], *&v52[208], *&v52[216], *&v52[224], *&v52[232], v53, SBYTE8(v53), v54, *(&v54 + 1), v55, v56, v57, SBYTE8(v57));
  memcpy(v52, __src, 0x59uLL);
  v25 = OUTLINED_FUNCTION_18();
  v33 = OUTLINED_FUNCTION_17_8(v25, v26, v27, v28, v29, v30, v31, v32, *v52);
  v16(v33, 6);
  OUTLINED_FUNCTION_5_228(0x406B400000000000uLL);
  sub_1E3C2FC98();
  v34 = OUTLINED_FUNCTION_6_210();
  OUTLINED_FUNCTION_3_249(v34, v35, v36, v37, v38, v39, v40, v41, *v52, *&v52[8], *&v52[16], *&v52[24], *&v52[32], *&v52[40], *&v52[48], *&v52[56], *&v52[64], *&v52[72], *&v52[80], *&v52[88], *&v52[96], *&v52[104], *&v52[112], *&v52[120], *&v52[128], *&v52[136], *&v52[144], *&v52[152], *&v52[160], *&v52[168], *&v52[176], *&v52[184], *&v52[192], *&v52[200], *&v52[208], *&v52[216], *&v52[224], *&v52[232], v53, SBYTE8(v53), v54, *(&v54 + 1), v55, v56, v57, SBYTE8(v57));
  memcpy(v52, __src, 0x59uLL);
  v42 = OUTLINED_FUNCTION_18();
  v50 = OUTLINED_FUNCTION_17_8(v42, v43, v44, v45, v46, v47, v48, v49, *v52);
  return (v16)(v50, 2);
}

uint64_t sub_1E40275A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (v0 + 16);
  if (v2 == 1)
  {
    *v3 = 0;
    v3[1] = 0;
  }

  sub_1E37EA628(v1, v2);
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E40275F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E4027600(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40275A8();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E4027640()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

uint64_t sub_1E40276BC()
{
  if (!*(v0 + 40))
  {
    [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) persistentID];
    *(v0 + 32) = sub_1E4207944();
    *(v0 + 40) = v1;
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E4027760(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return OUTLINED_FUNCTION_11_10();
}

uint64_t sub_1E402776C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40276BC();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40277AC(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 32) = *a1;
  *(v1 + 40) = v2;
}

uint64_t sub_1E40277C0()
{
  v1 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_];
    if (v2)
    {
      sub_1E4207264();
      v2 = swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    OUTLINED_FUNCTION_0_119(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, v22, *(&v22 + 1), v23);
    if (v10)
    {
      sub_1E376948C();
      if (OUTLINED_FUNCTION_40_6())
      {
        v11 = [v21 stringValue];

        v1 = sub_1E4205F14();
        v13 = v12;

LABEL_10:
        v14 = *(v0 + 48);
        v15 = *(v0 + 56);
        *(v0 + 48) = v1;
        *(v0 + 56) = v13;

        sub_1E37E9E48(v14, v15);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E325F6F0(v24, &unk_1ECF296E0);
    }

    v1 = 0;
    v13 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v16 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v16, v17);
  return v1;
}

uint64_t sub_1E4027910(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E402791C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40277C0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E402795C()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

uint64_t sub_1E40279D8()
{
  if (!*(v0 + 72))
  {
    *(v0 + 64) = sub_1E3A0D3D4();
    *(v0 + 72) = v1;
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E4027A50(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return OUTLINED_FUNCTION_11_10();
}

uint64_t sub_1E4027A5C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40279D8();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E4027A9C(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 64) = *a1;
  *(v1 + 72) = v2;
}

uint64_t sub_1E4027AB0()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui:1 isLocalCheckingSidebandLibrary:?];
    if (v2)
    {
      v3 = v2;
      LOBYTE(v1) = [v2 BOOLValue];
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    *(v0 + 80) = v1;
  }

  return v1 & 1;
}

_BYTE *(*sub_1E4027B38(void *a1))(_BYTE *result)
{
  OUTLINED_FUNCTION_69_1(a1);
  *(v1 + 8) = sub_1E4027AB0() & 1;
  return sub_1E4027B80;
}

uint64_t sub_1E4027B90()
{
  v1 = *(v0 + 88);
  if (*(v0 + 96) == 1)
  {
    v2 = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_];
    if (v2)
    {
      sub_1E4207264();
      v2 = swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    OUTLINED_FUNCTION_0_119(v2, v3, v4, v5, v6, v7, v8, v9, v17, v19, v21, *(&v21 + 1), v22);
    if (v10)
    {
      if (OUTLINED_FUNCTION_40_6())
      {
        v1 = v18;
        v11 = v20;
LABEL_10:
        v12 = *(v0 + 88);
        v13 = *(v0 + 96);
        *(v0 + 88) = v1;
        *(v0 + 96) = v11;

        sub_1E37E9E48(v12, v13);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E325F6F0(v23, &unk_1ECF296E0);
    }

    v1 = 0;
    v11 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v14 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v14, v15);
  return v1;
}

uint64_t sub_1E4027CA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E4027CB4(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E4027B90();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E4027CF4()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

uint64_t sub_1E4027D70()
{
  OUTLINED_FUNCTION_5_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E4027DB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1E4027E78(char a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_1E4027F00@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) artworkCatalog];
  v4 = (*(*v1 + 336))();
  v6 = v5;
  result = (*(*v1 + 360))();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = result & 1;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1E4027FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  v10 = OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___addedDate;
  OUTLINED_FUNCTION_5_0();
  sub_1E379D7E4(v1 + v10, v9, &qword_1ECF2CDE0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return sub_1E3889AF0(v9, a1);
  }

  sub_1E325F6F0(v9, &qword_1ECF2CDE0);
  v12 = [*(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) dateAdded];
  sub_1E41FE584();

  sub_1E41FE5D4();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1E379D7E4(a1, v6, &unk_1ECF28E20);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v11);
  OUTLINED_FUNCTION_11_3();
  sub_1E393FD78(v6, v1 + v10);
  return swift_endAccess();
}

void (*sub_1E40281B0(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E4027FDC(v5);
  return sub_1E4028244;
}

uint64_t sub_1E402825C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  v14 = OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___releaseDate;
  OUTLINED_FUNCTION_5_0();
  sub_1E379D7E4(v1 + v14, v13, &qword_1ECF2CDE0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) != 1)
  {
    return sub_1E3889AF0(v13, a1);
  }

  sub_1E325F6F0(v13, &qword_1ECF2CDE0);
  v15 = [*(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) releaseDate];
  if (v15)
  {
    v16 = v15;
    sub_1E41FE584();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v19 = sub_1E41FE5D4();
  __swift_storeEnumTagSinglePayload(v6, v17, 1, v19);
  sub_1E3889AF0(v6, a1);
  sub_1E379D7E4(a1, v10, &unk_1ECF28E20);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v3);
  OUTLINED_FUNCTION_11_3();
  sub_1E393FD78(v10, v1 + v14);
  return swift_endAccess();
}

uint64_t sub_1E402848C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1E3889AF0(a1, &v15 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = *a2;
  OUTLINED_FUNCTION_11_3();
  sub_1E393FD78(v8, v2 + v13);
  return swift_endAccess();
}

void (*sub_1E402855C(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E402825C(v5);
  return sub_1E40285F0;
}

void sub_1E4028608(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1E379D7E4(*(a1 + 16), v4, &unk_1ECF28E20);
    a3(v4);
    sub_1E325F6F0(v5, &unk_1ECF28E20);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1E40286B0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre + 8) == 1)
  {
    v2 = sub_1E3A28B78();
    v3 = *v1;
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;

    sub_1E37E9E48(v3, v4);
  }

  v6 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v6, v7);
  return v2;
}

uint64_t sub_1E4028748(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre);
  *v3 = a1;
  v3[1] = a2;
  return OUTLINED_FUNCTION_0_64(v4);
}

uint64_t sub_1E4028760(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E40286B0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E40287A0()
{
  OUTLINED_FUNCTION_26_7();
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity____lazy_storage___genre);
  *v2 = v3;
  v2[1] = v0;
  if (v4)
  {

    v5 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v5, v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v8, v9);
  }
}