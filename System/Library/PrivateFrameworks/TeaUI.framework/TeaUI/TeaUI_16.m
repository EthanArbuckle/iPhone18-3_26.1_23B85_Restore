void __swiftcall TabBarSplitViewController.splitViewController(_:separateSecondaryFrom:)(UIViewController_optional *__return_ptr retstr, UISplitViewController *_, UIViewController *separateSecondaryFrom)
{
  sub_1D7F773B4(0, &qword_1EDBBC538);
  v100 = v5;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v99 = v85 - v9;
  type metadata accessor for TabBarContainerController();
  OUTLINED_FUNCTION_25();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v103 = v3;
    v86 = v10;
    v11 = *&v10[OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController];
    v12 = separateSecondaryFrom;
    if ([(UIViewController *)v11 selectedViewController])
    {
      OUTLINED_FUNCTION_76_0();
      isEscapingClosureAtFileLocation = type metadata accessor for TabBarNavigationController();
      OUTLINED_FUNCTION_31();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v85[0] = v12;
        v88 = v11;
        v87 = v14;
        v117.receiver = v14;
        v117.super_class = isEscapingClosureAtFileLocation;
        v15 = &off_1E84F7000;
        v89 = separateSecondaryFrom;
        v16 = [(UIViewController_optional *)&v117 viewControllers];
        sub_1D7E0A1A8(0, &qword_1EDBB31B0);
        OUTLINED_FUNCTION_25();
        v85[1] = v17;
        v18 = sub_1D8191314();

        sub_1D7F6ECE8(1, v18);
        v20 = v19;
        v22 = v21;
        if (v21)
        {
          sub_1D81926B4();
          swift_unknownObjectRetain_n();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            swift_unknownObjectRelease();
            v28 = MEMORY[0x1E69E7CC0];
          }

          v29 = *(v28 + 16);

          if (__OFSUB__(v22 >> 1, v20))
          {
            goto LABEL_43;
          }

          if (v29 == (v22 >> 1) - v20)
          {
            v26 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            v27 = v88;
            if (v26)
            {
              goto LABEL_16;
            }

            v26 = MEMORY[0x1E69E7CC0];
LABEL_15:
            swift_unknownObjectRelease();
LABEL_16:
            v30 = v87;
            v31 = [v87 topViewController];
            OUTLINED_FUNCTION_57_3();
            v32 = v103;
            sub_1D7F7190C(v31);

            v33 = sub_1D7F719CC(v27, v30, v32);
            TabBarController.revoke(tabBarNavigationController:shouldSelectPrimary:)(v33, 1);
            v34 = [(UIViewController *)v27 tabBar];

            [v34 setHidden_];
            v35 = TabBarController.primaryTabBarNavigationController.getter();
            [v35 setHidesBottomBarWhenPushed_];

            v36 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
            OUTLINED_FUNCTION_7();
            swift_beginAccess();
            v37 = *&v33[v36];
            v38 = *(v32 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_commands);
            v39 = *(v38 + 16);
            v40 = *(v38 + 24);
            v20 = objc_allocWithZone(isEscapingClosureAtFileLocation);
            v22 = v37;
            swift_unknownObjectRetain();
            v91 = TabBarNavigationController.init(rootViewController:commandCenter:)(v22, v39, v40);
            if (!sub_1D7E36AB8(v26))
            {

              v107.receiver = v33;
              v107.super_class = isEscapingClosureAtFileLocation;
              v41 = objc_msgSendSuper2(&v107, v15[311]);
              v26 = sub_1D8191314();
            }

            v42 = sub_1D7E36AB8(v26);
            if (v42)
            {
              v43 = v42;
              if (v42 < 1)
              {
                goto LABEL_42;
              }

              v97 = v26 & 0xC000000000000001;
              v98 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_presentationContextCache;
              OUTLINED_FUNCTION_7();
              swift_beginAccess();
              OUTLINED_FUNCTION_48_4();
              v44 = 0;
              v96 = (v7 + 16);
              v95 = (v7 + 8);
              v90 = &v110;
              v94 = v33;
              v93 = v26;
              v92 = v43;
              while (1)
              {
                if (v97)
                {
                  v45 = MEMORY[0x1DA714420](v44, v26);
                }

                else
                {
                  v45 = *(v26 + 8 * v44 + 32);
                }

                v46 = v45;
                v47 = v103;
                v48 = v99;
                v49 = v100;
                (*v96)(v99, &v103[v98], v100);
                v116 = v46;
                sub_1D818EEA4();
                (*v95)(v48, v49);
                v7 = v110;
                v22 = v111;
                v15 = v112;
                v106 = aBlock;
                v50 = v46;
                sub_1D7F6EF94(v46, &aBlock, &v114);

                if (v115)
                {
                  sub_1D7E05450(&v114, &v116);
                  v102 = objc_opt_self();
                  sub_1D7E0E768(&v116, &v114);
                  v51 = swift_allocObject();
                  v51[2] = v47;
                  sub_1D7E05450(&v114, (v51 + 3));
                  v52 = v91;
                  v51[8] = v50;
                  v51[9] = v52;
                  v101 = v50;
                  v53 = v47;
                  v54 = v52;
                  sub_1D7E418F4(v105, v104);
                  OUTLINED_FUNCTION_0_32();
                  v55 = swift_allocObject();
                  v105 = sub_1D7F76ED8;
                  *(v55 + 16) = sub_1D7F76ED8;
                  *(v55 + 24) = v51;
                  v112 = sub_1D7EA8F68;
                  v113 = v55;
                  aBlock = MEMORY[0x1E69E9820];
                  v109 = 1107296256;
                  OUTLINED_FUNCTION_18_12();
                  v110 = v56;
                  v111 = &block_descriptor_44;
                  v57 = _Block_copy(&aBlock);
                  v20 = v113;

                  [v102 performWithoutAnimation_];
                  OUTLINED_FUNCTION_1_45();
                  OUTLINED_FUNCTION_30_7(v58, v59, v60, v61, v62, v63, v64);
                  _Block_release(v57);

                  __swift_destroy_boxed_opaque_existential_1Tm(&v116);
                  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                  if (isEscapingClosureAtFileLocation)
                  {
                    __break(1u);
LABEL_42:
                    __break(1u);
LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }

                  v104 = v51;
                }

                else
                {

                  OUTLINED_FUNCTION_1_45();
                  OUTLINED_FUNCTION_30_7(v65, v66, v67, v68, v69, v70, v71);
                  OUTLINED_FUNCTION_15_13();
                  sub_1D7F78760();
                }

                ++v44;
                v33 = v94;
                v26 = v93;
                if (v92 == v44)
                {
                  goto LABEL_31;
                }
              }
            }

            OUTLINED_FUNCTION_48_4();
LABEL_31:

            v72 = &v103[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_secondaryNavigationControllerIdentifierBeforeCollapse];
            *v72 = 0;
            *(v72 + 1) = 0;

            v73 = v88;
            v74 = TabBarController.primaryTabBarNavigationController.getter();

            v75 = [v87 presentedViewController];
            if (v75)
            {
              v76 = v75;
              v77 = v104;
            }

            else
            {
              v78 = [v86 presentedViewController];
              v77 = v104;
              if (!v78)
              {

                OUTLINED_FUNCTION_57_3();
LABEL_39:
                sub_1D7E418F4(v105, v77);
                return;
              }

              v76 = v78;
            }

            v116 = v76;
            sub_1D7E0631C(0, &qword_1ECA0E1E0);
            v79 = v76;
            if (swift_dynamicCast())
            {
              __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
              OUTLINED_FUNCTION_0_32();
              v80 = swift_allocObject();
              v81 = v91;
              *(v80 + 16) = v91;
              *(v80 + 24) = v79;
              v112 = sub_1D7F76E98;
              v113 = v80;
              aBlock = MEMORY[0x1E69E9820];
              v109 = 1107296256;
              v110 = sub_1D7E64940;
              v111 = &block_descriptor_34;
              v82 = _Block_copy(&aBlock);
              v83 = v81;
              v84 = v79;

              [v84 dismissViewControllerAnimated:0 completion:v82];

              OUTLINED_FUNCTION_57_3();
              _Block_release(v82);
            }

            else
            {

              OUTLINED_FUNCTION_57_3();
            }

            goto LABEL_39;
          }

LABEL_44:
          swift_unknownObjectRelease();
        }

        v23 = OUTLINED_FUNCTION_109();
        sub_1D7F76850(v23, v24, v20, v22);
        v26 = v25;
        v27 = v88;
        goto LABEL_15;
      }

      v12 = v11;
    }

    else
    {
      separateSecondaryFrom = v11;
    }
  }
}

id sub_1D7F7190C(void *a1)
{
  v2 = v1;
  result = [v2 isViewLoaded];
  if (result)
  {
    if (a1)
    {
      [a1 ts:1 setAppearanceTransitionsAreDisabled:?];
      v5 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_appearanceViewControllers;
      v6 = swift_beginAccess();
      MEMORY[0x1DA713500](v6);
      sub_1D7E2893C(*((*(v2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1D8191404();
      return swift_endAccess();
    }
  }

  return result;
}

id sub_1D7F719CC(uint64_t a1, id a2, uint64_t a3)
{
  v4 = TabBarController.primaryTabBarNavigationController.getter();

  if (v4 == a2)
  {
    v6 = TabBarController.tabBarNavigationControllers.getter();
    v7 = sub_1D7E36AB8(v6);
    v8 = 0;
    v9 = (a3 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_secondaryNavigationControllerIdentifierBeforeCollapse);
    while (1)
    {
      if (v7 == v8)
      {

        v17 = TabBarController.tabBarNavigationControllers.getter();
        v18 = sub_1D7E36AB8(v17);
        for (i = 0; v18 != i; ++i)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1DA714420](i, v17);
          }

          else
          {
            if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v20 = *(v17 + 8 * i + 32);
          }

          v11 = v20;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v20 != a2)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_38;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA714420](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 != a2)
      {
        v12 = TabBarNavigationController.identifier.getter();
        v14 = v9[1];
        if (v14)
        {
          if (v12 == *v9 && v14 == v13)
          {

LABEL_33:

            return v11;
          }

          v16 = sub_1D8192634();

          if (v16)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      ++v8;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:

    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

void sub_1D7F71BF4(uint64_t a1, void *a2, unsigned __int8 *a3, void *a4)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 8))(&v12, 1, v6, v7);
  v10 = v12;
  v11 = v13;
  sub_1D7F6F3C0(&v10, a3, 1u, a4, 0, 0);
  v8 = v10;
  v9 = v11;

  sub_1D7EFB554(v8, *(&v8 + 1), v9);
}

void sub_1D7F71CB4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() sharedApplication];
  OUTLINED_FUNCTION_0_32();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v15[4] = a4;
  v15[5] = v10;
  OUTLINED_FUNCTION_2_1();
  v15[1] = 1107296256;
  OUTLINED_FUNCTION_17();
  v15[2] = v11;
  v15[3] = a5;
  v12 = _Block_copy(v15);
  v13 = a1;
  v14 = a2;

  [v9 ts:v12 performBlockAfterCATransactionCommits:?];
  _Block_release(v12);
}

BOOL sub_1D7F71DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v55 = a3;
  v8 = sub_1D818F5F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = *(a2 + 8);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  LODWORD(v10) = *(a2 + 40);
  *&v61 = *a2;
  *(&v61 + 1) = v11;
  v62 = v14;
  v63 = v13;
  v64 = v15;
  v54 = v10;
  v65 = v10;
  v58 = v5;
  v59 = a1;
  sub_1D7F6EF94(a1, &v61, &v66);
  v16 = v68;
  if (v68)
  {
    v44 = v13;
    v45 = v11;
    v51 = v68;
    v52 = v9;
    v53 = v8;
    sub_1D7E05450(&v66, v69);
    v18 = v70;
    v17 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v17 + 8))(&v61, 0, v18, v17);
    v19 = v61;
    v20 = v62;
    v21 = v70;
    v22 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v22 + 8))(&v66, 1, v21, v22);
    v23 = v66;
    v24 = v67;
    sub_1D7EFB42C(v19, *(&v19 + 1), v20);
    sub_1D7EFB42C(v23, *(&v23 + 1), v24);
    v49 = *(&v19 + 1);
    v50 = v19;
    v48 = v20;
    sub_1D7EFB554(v19, *(&v19 + 1), v20);
    v46 = *(&v23 + 1);
    v47 = v23;
    v25 = v24;
    sub_1D7EFB554(v23, *(&v23 + 1), v24);
    if ((v20 & 0xE0) == 0x40 || (v24 & 0xE0) == 0x40)
    {
      v26 = v45;
      *&v61 = v12;
      *(&v61 + 1) = v45;
      v27 = v44;
      v62 = v14;
      v63 = v44;
      v64 = v15;
      v28 = v54;
      v65 = v54;
      v29 = v59;
      v60 = v59;
      swift_beginAccess();
      v30 = v29;
      sub_1D7F783FC(v12, v26, v14, v27, v15, v28, sub_1D7EFB42C);
      sub_1D7F773B4(0, &qword_1EDBBC538);
      sub_1D818EEB4();
      swift_endAccess();
    }

    v31 = [objc_opt_self() areAnimationsEnabled];
    v32 = MEMORY[0x1E69D6810];
    sub_1D7F76D38(0, &qword_1EDBB2CC0, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
    v33 = v52;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D819FAC0;
    sub_1D818F5E4();
    sub_1D818F5D4();
    *&v61 = v34;
    sub_1D7E2D284(&qword_1EDBBC470, MEMORY[0x1E69D6810]);
    sub_1D7F76D38(0, &qword_1EDBB33C8, v32, MEMORY[0x1E69E62F8]);
    sub_1D7E26188();
    v35 = v57;
    v36 = v53;
    sub_1D8192004();
    v37 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_1D7E0E768(v69, &v61);
    v38 = swift_allocObject();
    sub_1D7E05450(&v61, v38 + 16);
    v39 = v59;
    *(v38 + 56) = v37;
    *(v38 + 64) = v39;
    v40 = v55;
    v41 = v56;
    *(v38 + 72) = v55;
    *(v38 + 80) = v41;
    *(v38 + 88) = v31;
    v42 = v39;

    sub_1D7E19F24(v40);
    sub_1D818EF44();

    sub_1D7EFB554(v50, v49, v48);
    sub_1D7EFB554(v47, v46, v25);
    (*(v33 + 8))(v35, v36);

    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    v16 = v51;
  }

  else
  {
    sub_1D7F78760();
  }

  return v16 != 0;
}

uint64_t sub_1D7F723AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7F773B4(0, &qword_1EDBBC538);
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_presentationContextCache;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v8 + 16))(v11, v3 + v12, v6);
  *&v25[0] = a2;
  sub_1D818EEA4();
  (*(v8 + 8))(v11, v6);
  v25[0] = v28;
  v25[1] = v29;
  v26 = v30;
  v27 = v31;
  OUTLINED_FUNCTION_7();
  LOBYTE(v3) = sub_1D7F71DFC(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1_45();
  sub_1D7F783FC(v17, v18, v19, v20, v21, v22, v23);
  return v3 & 1;
}

uint64_t sub_1D7F72524(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, void *))
{
  if (a5)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    v13 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v14 = a3;
    v15 = a4;
    v13 = a1;
  }

  v16 = a6(v13, a4);

  sub_1D7F77534(v18, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8);
  return v16 & 1;
}

Swift::Void __swiftcall TabBarSplitViewController.splitViewController(_:willChangeTo:)(UISplitViewController *_, UISplitViewControllerDisplayMode willChangeTo)
{
  v4 = [objc_opt_self() defaultCenter];
  if (willChangeTo == UISplitViewControllerDisplayModeOneOverSecondary)
  {
    if (qword_1EDBB5590 != -1)
    {
      OUTLINED_FUNCTION_20_11();
    }

    v5 = &qword_1EDBB5598;
  }

  else
  {
    if (qword_1EDBB55A8 != -1)
    {
      swift_once();
    }

    v5 = &qword_1EDBB55B0;
  }

  [v4 postNotificationName:*v5 object:v2];

  v6 = [v2 childViewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_17_7();
  v7 = sub_1D8191314();

  sub_1D7F6B1E4(v7, v2, willChangeTo);
}

uint64_t TabBarSplitViewController.prepare(_:forPreviewWithContext:)(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 40);
  swift_beginAccess();
  v7 = a1;
  sub_1D7EFB42C(v3, v4, v5);
  v8 = OUTLINED_FUNCTION_111();
  sub_1D7EFB42C(v8, v9, v6);
  sub_1D7F773B4(0, &qword_1EDBBC538);
  sub_1D818EEB4();
  return swift_endAccess();
}

uint64_t sub_1D7F728E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = [Strong isCollapsed];

  (*(v10 + 8))(&aBlock, v12 ^ 1, v9, v10);
  v13 = aBlock;
  v14 = v32;
  v15 = v33;
  v16 = swift_allocObject();
  v17 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v13;
  *(v18 + 32) = v14;
  *(v18 + 40) = v15;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  v19 = a4;
  *(v18 + 64) = a5;
  if (a6)
  {

    sub_1D7E19F24(a4);
    v20 = a3;
    sub_1D7EFB42C(v13, v14, v15);
    sub_1D7F72C10(v16, v13, v14, v15, v20, v19, a5);

    v21 = 0;
    v22 = 0;
LABEL_4:
    v28 = swift_unknownObjectUnownedLoadStrong();
    sub_1D7F6D9F0();

    sub_1D7EFB554(v13, v14, v15);
    return sub_1D7E418F4(v21, v22);
  }

  v30 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D7F785BC;
  *(v22 + 24) = v18;
  v23 = swift_allocObject();
  v21 = sub_1D7E74D44;
  *(v23 + 16) = sub_1D7E74D44;
  *(v23 + 24) = v22;
  v35 = sub_1D7EA8F68;
  v36 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D7E74D74;
  v34 = &block_descriptor_167;
  v24 = _Block_copy(&aBlock);
  sub_1D7E19F24(v19);
  v25 = a3;
  sub_1D7EFB42C(v13, v14, v15);

  [v30 performWithoutAnimation_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_1D7F72C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5, void (*a6)(), void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    LOBYTE(v16) = a4;
    sub_1D7F6F3C0(&v15, a5, [Strong isCollapsed] ^ 1, 0, a6, a7);
  }
}

void sub_1D7F72CC8(void *a1, id a2, void (*a3)(), void *a4)
{
  v9 = [a2 presentedViewController];
  if (!v9)
  {
    goto LABEL_4;
  }

  v33 = v9;
  if ([v9 isBeingDismissed])
  {

LABEL_4:
    if (a2 != v4 && [a1 modalPresentationStyle] != 4)
    {
      if ([a1 modalPresentationStyle] != 6)
      {
        [a1 setModalPresentationStyle_];
      }

      v10 = [a1 presentationController];
      if (v10)
      {
        v11 = v10;
        [v10 ts:1 containerIgnoresDirectTouchEvents:?];
      }
    }

    v12 = [objc_opt_self() defaultCenter];
    if (qword_1EDBB30A0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D818E454();
    __swift_project_value_buffer(v13, qword_1EDBB30A8);
    v14 = sub_1D818E404();
    [v12 postNotification_];

    v15 = [objc_opt_self() areAnimationsEnabled];
    if (a3)
    {
      v39 = a3;
      v40 = a4;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1D7E64940;
      v38 = &block_descriptor_124;
      a3 = _Block_copy(&aBlock);
    }

    [a2 presentViewController:a1 animated:v15 completion:a3];
    _Block_release(a3);
    return;
  }

  v16 = v33;
LABEL_16:
  v34 = v16;
  while (1)
  {
    v17 = [v16 presentedViewController];
    if (!v17)
    {
      break;
    }

    v18 = [v34 presentedViewController];
    v16 = v34;
    if (v18)
    {
      if (![v18 isBeingDismissed])
      {

        v16 = v18;
        goto LABEL_16;
      }

      break;
    }
  }

  if (sub_1D7F732B4(v34, a1))
  {
  }

  else
  {
    if ([v34 modalPresentationStyle] == 7)
    {
      v19 = [v34 presentingViewController];
      if (v19)
      {
        v20 = v19;
        v21 = [a1 modalPresentationStyle];
        if (v21 <= 8 && ((1 << v21) & 0x121) != 0)
        {
          v22 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v23 = swift_allocObject();
          v23[2] = v22;
          v23[3] = a1;
          v23[4] = a2;
          v39 = sub_1D7F783F0;
          v40 = v23;
          aBlock = MEMORY[0x1E69E9820];
          v36 = 1107296256;
          v37 = sub_1D7E64940;
          v38 = &block_descriptor_134;
          v24 = _Block_copy(&aBlock);
          v25 = a1;
          v26 = a2;

          [v20 dismissViewControllerAnimated:1 completion:v24];
          _Block_release(v24);

          return;
        }
      }
    }

    if (a2 != v4 && [a1 modalPresentationStyle] != 4)
    {
      if ([a1 modalPresentationStyle] != 6)
      {
        [a1 setModalPresentationStyle_];
      }

      v27 = [a1 presentationController];
      if (v27)
      {
        v28 = v27;
        [v27 ts:1 containerIgnoresDirectTouchEvents:?];
      }
    }

    v29 = [objc_opt_self() defaultCenter];
    if (qword_1EDBB30A0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D818E454();
    __swift_project_value_buffer(v30, qword_1EDBB30A8);
    v31 = sub_1D818E404();
    [v29 postNotification_];

    v32 = [objc_opt_self() areAnimationsEnabled];
    if (a3)
    {
      v39 = a3;
      v40 = a4;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1D7E64940;
      v38 = &block_descriptor_127;
      a3 = _Block_copy(&aBlock);
    }

    [v34 presentViewController:a1 animated:v32 completion:a3];
    _Block_release(a3);
  }
}

uint64_t sub_1D7F732B4(void *a1, void *a2)
{
  if (!a1)
  {
    if (a2)
    {
      goto LABEL_25;
    }

LABEL_27:
    v19 = 1;
    return v19 & 1;
  }

  v3 = a1;
  if (a2)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v3 = v3;
    v4 = a2;
    v5 = sub_1D8191CC4();

    if (v5)
    {
      goto LABEL_27;
    }
  }

  *&v21 = v3;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBBC530);
  v6 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_26;
  }

  if (!*(&v25 + 1))
  {
LABEL_26:
    sub_1D7F78760();
LABEL_31:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D7E05450(&v24, v27);
  if (!a2 || (v7 = a2, (swift_dynamicCast() & 1) == 0))
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_29;
  }

  if (!*(&v22 + 1))
  {
LABEL_29:
    sub_1D7F78760();
LABEL_30:
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    goto LABEL_31;
  }

  sub_1D7E05450(&v21, &v24);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  if (sub_1D818EF94() == 0x296C6C756E28 && v8 == 0xE600000000000000)
  {
    goto LABEL_33;
  }

  v10 = sub_1D8192634();

  if (v10)
  {
LABEL_34:
    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  if (sub_1D818EF94() == 0x296C6C756E28 && v11 == 0xE600000000000000)
  {
LABEL_33:

    goto LABEL_34;
  }

  v13 = sub_1D8192634();

  if (v13)
  {
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(v27, v28);
  v14 = sub_1D818EF94();
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  if (v14 == sub_1D818EF94() && v16 == v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1D8192634();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v19 & 1;
}

void sub_1D7F735CC(uint64_t a1, int a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D7F72CC8(a2, a3);
  }
}

uint64_t sub_1D7F73644(_BYTE *a1, void *a2)
{
  if (*a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a2;
      return v3;
    }

    v12 = [v2 viewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v13 = sub_1D8191314();

    v14 = sub_1D7E36AB8(v13);

    if (v14 >= 2)
    {
      v15 = [v2 viewControllers];
      v16 = sub_1D8191314();

      sub_1D7E33DD8(1, (v16 & 0xC000000000000001) == 0, v16);
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA714420](1, v16);
      }

      else
      {
        v17 = *(v16 + 40);
      }

      v11 = v17;

      goto LABEL_14;
    }

    return 0;
  }

  v5 = [v2 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v6 = sub_1D8191314();

  if (!sub_1D7E36AB8(v6))
  {

    return 0;
  }

  sub_1D7E33DD8(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA714420](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  type metadata accessor for TabBarContainerController();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    return 0;
  }

  v10 = *(v9 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController);
  v11 = [v10 selectedViewController];

  if (!v11)
  {
    return 0;
  }

LABEL_14:
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
  }

  return v3;
}

void sub_1D7F7387C(void *a1, void *a2)
{
  [a1 addChildViewController_];
  v4 = [a1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [a2 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  [v5 addSubview_];

  [a2 didMoveToParentViewController_];
  v18 = [a2 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = [a1 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v18 setFrame_];
}

void sub_1D7F739E0(uint64_t a1, uint64_t a2)
{
  sub_1D7F773B4(0, &qword_1EDBBC538);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  swift_beginAccess();
  v9 = [*(a1 + 16) presentedViewController];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v11 = OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_stagedModalContextCache;
      swift_beginAccess();
      (*(v6 + 16))(v8, a2 + v11, v5);
      *&v40 = v10;
      sub_1D818EEA4();
      (*(v6 + 8))(v8, v5);
      v12 = v44;
      if ((~v44 & 0xFE) != 0)
      {
        v13 = v43;
        v15 = *(&v44 + 1);
        v14 = *&v45[0];
        v16 = BYTE8(v45[0]);
        swift_beginAccess();
        v17 = [*(a1 + 16) topViewController];
        if (v17)
        {
          v36 = v17;
          v18 = v10;
          v37 = *(&v13 + 1);
          v38 = v13;
          v19 = v15;
          v20 = v15;
          v21 = v14;
          sub_1D7F783FC(v13, *(&v13 + 1), v12, v20, v14, v16, sub_1D7EFB42C);
          v22 = [v18 presentationController];
          if (v22)
          {
            v23 = v22;
            v35 = v16;
            objc_opt_self();
            v24 = swift_dynamicCastObjCClass();
            if (v24)
            {
              v25 = v24;
              v26 = [v24 _wantsBottomAttachedInCompactHeight];
              v34 = [v25 _widthFollowsPreferredContentSizeWhenBottomAttached];
              v27 = [v25 _shouldDismissWhenTappedOutside];

              if (v34)
              {
                v28 = 256;
              }

              else
              {
                v28 = 0;
              }

              v29 = v28 | v26;
              if (v27)
              {
                v30 = 0x10000;
              }

              else
              {
                v30 = 0;
              }

              v31 = v29 | v30;
            }

            else
            {

              v31 = 2;
            }

            v16 = v35;
          }

          else
          {
            v31 = 2;
          }

          *&v43 = v18;
          WORD4(v43) = v31;
          BYTE10(v43) = BYTE2(v31);
          v32 = v37;
          *&v44 = v38;
          *(&v44 + 1) = v37;
          LOBYTE(v45[0]) = v12;
          *(&v45[0] + 1) = v19;
          *&v45[1] = v21;
          BYTE8(v45[1]) = v16;
          v40 = v43;
          v41 = v44;
          v42[0] = v45[0];
          *(v42 + 9) = *(v45 + 9);
          v33 = v36;
          v39[11] = v36;
          swift_beginAccess();
          v36 = v33;
          sub_1D7F78478(&v43, v39);
          sub_1D7F773B4(0, &qword_1EDBBC540);
          sub_1D818EEB4();
          swift_endAccess();
          sub_1D7F783FC(v38, v32, v12, v19, v21, v16, sub_1D7EFB554);

          sub_1D7F784D4(&v43);
        }

        else
        {
          sub_1D7F783FC(v13, *(&v13 + 1), v12, v15, v14, v16, sub_1D7EFB554);
        }
      }

      [v10 dismissViewControllerAnimated:objc_msgSend(objc_opt_self() completion:{sel_areAnimationsEnabled), 0}];
    }
  }
}

id sub_1D7F73E14()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = result;
  v4 = [result window];

  if (v4)
  {
    v5 = [v4 windowScene];

    if (v5)
    {
      v6 = [v5 activationState];

      if (v6 == 2)
      {
        return 0;
      }
    }
  }

  if ((TabBarSplitViewController.isImmersiveSidebarAllowed.getter() & 1) == 0)
  {
    if ([v1 preferredDisplayMode] == 2)
    {
      UISplitViewController.resetPreferredDisplayMode()();
    }

    return 0;
  }

  if (![objc_opt_self() areAnimationsEnabled])
  {
    [v1 setPreferredDisplayMode_];
    return 0;
  }

  if ([v1 displayMode] != 2)
  {
    return 0;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  v8 = [result snapshotViewAfterScreenUpdates_];

  if (!v8)
  {
    return 0;
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v8 setFrame_];
    v18 = objc_allocWithZone(type metadata accessor for CurtainViewController());
    v19 = v8;
    v20 = CurtainViewController.init(view:)(v19);
    v23 = 1;
    v21 = sub_1D7F6CD48(&v23, 0);
    if (v21)
    {
      v22 = v21;
      [v21 pushViewController:v20 animated:0];
    }

    [v1 setPreferredDisplayMode_];

    return v20;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_1D7F74078(void *a1)
{
  v12 = a1;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBBC530);
  v9 = a1;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v10, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v2 = sub_1D818EF94();
    TabBarController.tabBarNavigationController(identifier:)(v2, v3);
    v5 = v4;

    if (v5)
    {
      TabBarController.revoke(tabBarNavigationController:shouldSelectPrimary:)(v5, 0);
      v6 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
      swift_beginAccess();
      v7 = *&v5[v6];

      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D7F78760();
  }

  return v9;
}

uint64_t sub_1D7F741FC(void *a1)
{
  v9 = a1;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E0631C(0, &qword_1EDBBC530);
  v2 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D7F78760();
LABEL_6:
    sub_1D7E71FB0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D81A50A0;
    *(v4 + 32) = v2;
    v5 = v2;
    return v4;
  }

  sub_1D7E05450(v7, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);

  *&v7[0] = sub_1D818EF94();
  *(&v7[0] + 1) = v3;
  sub_1D818FCA4();

  v4 = v9;
  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v4;
}

uint64_t sub_1D7F743A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (!*(*(a4 + OBJC_IVAR____TtC5TeaUI16TabBarController_tabBarOrder) + 16))
    {
      return 0;
    }

    sub_1D8190DB4();
    sub_1D7E11428(a1, a2);
    if ((v6 & 1) == 0)
    {

      return 0;
    }
  }

  else
  {
    v12 = a3;
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    sub_1D7E0631C(0, &unk_1EDBB1D08);
    v8 = a3;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_1D7F78760();
      return 0;
    }

    sub_1D7E05450(v10, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    a1 = sub_1D818EF94();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return a1;
}

void __swiftcall TabBarSplitViewController.viewController(for:)(UIViewController_optional *__return_ptr retstr, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = &off_1E84F7000;
  v7 = OUTLINED_FUNCTION_40_4();
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v8 = sub_1D8191314();

  if (!sub_1D7E36AB8(v8))
  {

    return;
  }

  v9 = OUTLINED_FUNCTION_13_12();
  sub_1D7E33DD8(v9, v10, v11);
  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v12 = MEMORY[0x1DA714420](0, v8);
  }

  else
  {
    v12 = *(v8 + 32);
  }

  v13 = v12;

  type metadata accessor for TabBarContainerController();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    return;
  }

  v15 = *(v14 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController);
  v16 = OUTLINED_FUNCTION_14_0();
  TabBarController.tabBarNavigationController(identifier:)(v16, v17);
  if (v18)
  {
    v19 = v18;

    v20 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    *&v19[v20];

    return;
  }

  LOBYTE(v39[0]) = [v3 isCollapsed] ^ 1;
  v42 = xmmword_1D81A7850;
  v21 = sub_1D7F73644(v39, 0);
  v3 = v21;
  if (!v21)
  {

    return;
  }

  v22 = [v21 *(v6 + 2488)];
  v6 = sub_1D8191314();

  v23 = sub_1D7E36AB8(v6);
  if (!v23)
  {

    return;
  }

  v24 = v23;
  v36 = countAndFlagsBits;
  v37 = object;
  v32 = v3;
  v33 = v15;
  v25 = 0;
  object = v6 & 0xC000000000000001;
  v34 = v13;
  v35 = v6 & 0xFFFFFFFFFFFFFF8;
  countAndFlagsBits = MEMORY[0x1E69D6488];
  v26 = v6;
  v38 = v6;
  while (1)
  {
    if (object)
    {
      v27 = MEMORY[0x1DA714420](v25, v26);
      goto LABEL_16;
    }

    if (v25 >= *(v35 + 16))
    {
      break;
    }

    v27 = *(v26 + 8 * v25 + 32);
LABEL_16:
    v8 = v27;
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    v41 = v27;
    v6 = sub_1D7E0631C(0, &qword_1EDBBC530);
    v3 = v8;
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v39, &v42);
      v6 = v43;
      __swift_project_boxed_opaque_existential_1(&v42, v43);
      if (sub_1D818EF94() == v36 && v29 == v37)
      {

LABEL_31:

        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        return;
      }

      v31 = sub_1D8192634();

      if (v31)
      {

        goto LABEL_31;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v42);
      v26 = v38;
    }

    else
    {

      v40 = 0;
      memset(v39, 0, sizeof(v39));
      sub_1D7F78760();
    }

    ++v25;
    if (v28 == v24)
    {

      return;
    }
  }

  __break(1u);
}

void TabBarSplitViewController.keyCommands.getter()
{
  sub_1D7E0A1A8(0, &qword_1EDBB3260);
  v1 = sub_1D7E3DCEC(110, 0xE100000000000000, 0x100000, sel_openNewWindow);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_7();
  sub_1D818E514();

  v4 = OUTLINED_FUNCTION_111();
  sub_1D7F76CD4(v4, v5, v1);
  if ([v0 isCollapsed])
  {
    OUTLINED_FUNCTION_0_57();
    v6 = OUTLINED_FUNCTION_27_7();
    sub_1D7E71FB0(v6, v7, v8, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D81A50A0;
    v11 = (v10 + 32);
  }

  else
  {
    v12 = sub_1D7E3DCEC(9, 0xE100000000000000, 0, sel_toggleResponderPane);
    v13 = sub_1D7E3DCEC(9, 0xE100000000000000, 0x20000, sel_toggleResponderPane);
    OUTLINED_FUNCTION_0_57();
    v14 = OUTLINED_FUNCTION_27_7();
    sub_1D7E71FB0(v14, v15, v16, v17);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D81A7870;
    *(v18 + 32) = v12;
    *(v18 + 40) = v13;
    v11 = (v18 + 48);
  }

  *v11 = v1;
  OUTLINED_FUNCTION_17_6();
}

void sub_1D7F74AF8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCE80]) init];
  v1 = [objc_opt_self() sharedApplication];
  v6[4] = sub_1D7F32150;
  v6[5] = 0;
  OUTLINED_FUNCTION_2_1();
  v6[1] = 1107296256;
  v6[2] = sub_1D806D054;
  v6[3] = &block_descriptor_108;
  v2 = _Block_copy(v6);
  v3 = v0;
  OUTLINED_FUNCTION_7();
  [v4 v5];
  _Block_release(v2);
}

void sub_1D7F74C24()
{
  if (([v0 isCollapsed] & 1) == 0)
  {
    v1 = OUTLINED_FUNCTION_41_0();
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_14_0();
    v2 = sub_1D8191314();

    v3 = sub_1D7E36AB8(v2);

    if (v3 >= 2)
    {
      v4 = OUTLINED_FUNCTION_41_0();
      v5 = OUTLINED_FUNCTION_60_3();

      sub_1D7E33DD8(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;

      v8 = sub_1D808F510(v7);

      v9 = OUTLINED_FUNCTION_41_0();
      v10 = OUTLINED_FUNCTION_58_3();

      sub_1D7E33DD8(1, (v10 & 0xC000000000000001) == 0, v10);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA714420](1, v10);
      }

      else
      {
        v11 = *(v10 + 40);
      }

      v12 = v11;

      v13 = sub_1D808F510(v12);

      if (([v13 isFirstResponder] & 1) != 0 || (objc_msgSend(v13, sel_canBecomeFirstResponder) & 1) == 0)
      {
        v15 = swift_dynamicCastObjCProtocolConditional();
        if (v15)
        {
          [v15 startTraversingWithDirection_];
        }

        else
        {
          [v8 becomeFirstResponder];
        }

        *&v0[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_splitViewFocus] = 1;
        v16 = [v0 childViewControllers];
        OUTLINED_FUNCTION_58_3();

        v17 = OUTLINED_FUNCTION_109();
        sub_1D7F6B3F8(v17, v18);
      }

      else
      {
        v14 = swift_dynamicCastObjCProtocolConditional();
        if (v14)
        {
          [v14 startTraversingWithDirection_];
        }

        else
        {
          [v13 becomeFirstResponder];
        }

        *&v0[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_splitViewFocus] = 2;
        v19 = [v0 childViewControllers];
        OUTLINED_FUNCTION_58_3();

        v20 = OUTLINED_FUNCTION_109();
        sub_1D7F6B418(v20, v21);
      }
    }
  }

  OUTLINED_FUNCTION_17_6();
}

void sub_1D7F74F10()
{
  TabBarSplitViewController.immersiveSidebarState.getter(&v15);
  if (v15 == 1)
  {
    [v0 togglePrimaryViewVisibilityAnimated_];
    v1 = OUTLINED_FUNCTION_41_0();
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_14_0();
    v2 = sub_1D8191314();

    v3 = sub_1D7E36AB8(v2);

    if (v3 < 2)
    {
      OUTLINED_FUNCTION_17_6();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_41_0();
      v5 = OUTLINED_FUNCTION_60_3();

      sub_1D7E33DD8(1, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](1, v5);
      }

      else
      {
        v6 = *(v5 + 40);
      }

      v7 = v6;

      v14 = sub_1D808F510(v7);

      if ([v14 canBecomeFirstResponder] && (objc_msgSend(v14, sel_isFirstResponder) & 1) == 0)
      {
        [v14 becomeFirstResponder];
        *&v0[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_splitViewFocus] = 2;
        v8 = [v0 childViewControllers];
        sub_1D8191314();

        v9 = OUTLINED_FUNCTION_109();
        sub_1D7F6B438(v9, v10);
      }

      OUTLINED_FUNCTION_17_6();
    }
  }

  else
  {
    if (qword_1EDBBCFC0 != -1)
    {
      swift_once();
    }

    sub_1D81919E4();
    OUTLINED_FUNCTION_17_6();

    sub_1D818FD44();
  }
}

void TabBarSplitViewController.toggleSplitViewFocus(to:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_40_4();
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  OUTLINED_FUNCTION_14_0();
  v4 = sub_1D8191314();

  v5 = sub_1D7E36AB8(v4);

  if (v5 < 2)
  {
    OUTLINED_FUNCTION_17_6();
    return;
  }

  v6 = OUTLINED_FUNCTION_40_4();
  v7 = OUTLINED_FUNCTION_58_3();

  sub_1D7E33DD8(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA714420](0, v7);
  }

  else
  {
    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = sub_1D808F510(v9);

  v11 = OUTLINED_FUNCTION_40_4();
  v12 = sub_1D8191314();

  sub_1D7E33DD8(1, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1DA714420](1, v12);
  }

  else
  {
    v13 = *(v12 + 40);
  }

  v14 = v13;

  v23 = sub_1D808F510(v14);

  if (a1 == 2)
  {
    if ([v23 canBecomeFirstResponder])
    {
      if (([v23 isFirstResponder] & 1) == 0)
      {
        [v23 becomeFirstResponder];
      }

      *&v1[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_splitViewFocus] = 2;
      v15 = [v1 childViewControllers];
      OUTLINED_FUNCTION_60_3();

      v16 = OUTLINED_FUNCTION_109();
      sub_1D7F6B438(v16, v17);
LABEL_17:
    }
  }

  else
  {
    if (a1 != 1)
    {
      sub_1D81926E4();
      __break(1u);
      return;
    }

    if ([v10 canBecomeFirstResponder])
    {
      if (([v10 isFirstResponder] & 1) == 0)
      {
        [v10 becomeFirstResponder];
      }

      *&v1[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_splitViewFocus] = 1;
      v18 = [v1 childViewControllers];
      OUTLINED_FUNCTION_60_3();

      v19 = OUTLINED_FUNCTION_109();
      sub_1D7F6B458(v19, v20);
      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_17_6();
}

void TabBarSplitViewController.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for Commands();
  if (qword_1EDBB3708 != -1)
  {
    OUTLINED_FUNCTION_8_7();
  }

  if (static Commands.~= infix(_:_:)(qword_1EDBB3710, a3))
  {
    v6 = [v4 isCollapsed];
    v14 = OUTLINED_FUNCTION_39_4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v17, SWORD2(v17), SBYTE6(v17), HIBYTE(v17));
    if (v14)
    {
      v16 = v14;
    }
  }
}

void *TabBarSplitViewController.canHandle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for Commands();
  if (qword_1EDBB3708 != -1)
  {
    OUTLINED_FUNCTION_8_7();
  }

  if ((static Commands.~= infix(_:_:)(qword_1EDBB3710, a3) & 1) == 0)
  {
    return 0;
  }

  v6 = [v4 isCollapsed];
  result = OUTLINED_FUNCTION_39_4(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20, SWORD2(v20), SBYTE6(v20), HIBYTE(v20));
  if (result)
  {
    v15 = result;
    v16 = [result viewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_14();
    v17 = sub_1D8191314();

    v18 = sub_1D7E36AB8(v17);

    return (v18 > 1);
  }

  return result;
}

Swift::Void __swiftcall TabBarSplitViewController.setOverlayToolbarItems(_:animated:)(Swift::OpaquePointer_optional _, Swift::Bool animated)
{
  v3 = *(v2 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar);
  if (_.value._rawValue)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31D0);
    OUTLINED_FUNCTION_17_7();
    v4 = sub_1D8191304();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setItems_animated_];
}

void TabBarSplitViewController.setOverlayToolbarHidden(_:animated:completion:)(char a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  if ((a2 & 1) != 0 && (v8 = objc_opt_self(), [v8 areAnimationsEnabled]))
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v10 = a1 & 1;
    *(v9 + 24) = a1 & 1;
    v21 = sub_1D7F76F50;
    v22 = v9;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D7E64940;
    v20 = &block_descriptor_50;
    v11 = _Block_copy(&v17);
    v12 = v4;

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    v21 = sub_1D7F76F80;
    v22 = v13;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D7EB30D4;
    v20 = &block_descriptor_56;
    v14 = _Block_copy(&v17);
    v15 = v12;
    sub_1D7E19F24(a3);

    [v8 animateWithDuration:v11 animations:v14 completion:0.3];
    _Block_release(v14);
    _Block_release(v11);
  }

  else
  {
    v16 = 1.0;
    if (a1)
    {
      v16 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar] setAlpha_];
    if (a3)
    {
      a3(1);
    }
  }

  OUTLINED_FUNCTION_50_3();
}

id sub_1D7F759A4(char a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  v6 = 1.0;
  if (a3)
  {
    v6 = 0.0;
  }

  result = [*(a2 + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar) setAlpha_];
  if (a4)
  {
    return a4(a1 & 1);
  }

  return result;
}

void sub_1D7F75A0C()
{
  if (!qword_1EDBB2068)
  {
    sub_1D7F75A68();
    v0 = sub_1D818EF84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2068);
    }
  }
}

unint64_t sub_1D7F75A68()
{
  result = qword_1EDBAFF68[0];
  if (!qword_1EDBAFF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBAFF68);
  }

  return result;
}

void sub_1D7F75ABC()
{
  if (!qword_1EDBB1F80)
  {
    sub_1D7E49448();
    v0 = sub_1D818FC94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB1F80);
    }
  }
}

uint64_t type metadata accessor for TabBarSplitViewController()
{
  result = qword_1EDBB7308;
  if (!qword_1EDBB7308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TabBarSplitViewController.popCurtainIfNeeded(popViewController:)(void (*a1)(void))
{
  v3 = v1;
  v5 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_14();
  v9 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v73 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock) = [v1 isCollapsed] ^ 1;
  v15 = sub_1D7F6CD48(&aBlock, 0);
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v70 = v5;
  v71 = v2;
  v17 = v9;
  v69 = v7;
  v18 = [v15 viewControllers];
  v19 = sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v20 = sub_1D8191314();

  v21 = sub_1D7E36AB8(v20);

  v22 = v16;
  if (v21 < 2)
  {
LABEL_19:

LABEL_20:
    a1();
LABEL_21:
    OUTLINED_FUNCTION_50_3();
    return;
  }

  v23 = [v16 viewControllers];
  v24 = sub_1D8191314();

  v25 = sub_1D7E36AB8(v24);

  v26 = v25 - 2;
  if (__OFSUB__(v25, 2))
  {
    __break(1u);
  }

  else
  {
    v27 = [v16 viewControllers];
    v19 = sub_1D8191314();

    sub_1D7E33DD8(v26, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) == 0)
    {
      v28 = *(v19 + 8 * v26 + 32);
      goto LABEL_6;
    }
  }

  v28 = MEMORY[0x1DA714420](v26, v19);
LABEL_6:
  v72 = v28;

  type metadata accessor for CurtainViewController();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {

    v22 = v72;
    goto LABEL_19;
  }

  v30 = v17;
  v31 = [v29 view];
  if (!v31)
  {
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  [v31 frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = [v3 view];
  v42 = v71;
  if (!v41)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v43 = v41;
  [v41 frame];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v78.origin.x = v34;
  v78.origin.y = v36;
  v78.size.width = v38;
  v78.size.height = v40;
  v79.origin.x = v45;
  v79.origin.y = v47;
  v79.size.width = v49;
  v79.size.height = v51;
  if (CGRectEqualToRect(v78, v79))
  {
    v52 = [v3 traitCollection];
    v53 = [v52 userInterfaceIdiom];

    if (v53 == 1 && (TabBarSplitViewController.isImmersiveSidebarAllowed.getter() & 1) != 0 && [v3 displayMode] == 1)
    {
      a1();
      v54 = [v16 transitionCoordinator];
      if (v54)
      {
        v55 = v54;
        OUTLINED_FUNCTION_0_8();
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_0_32();
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *(v57 + 24) = v16;
        OUTLINED_FUNCTION_11_17(v57);
        v75 = 1107296256;
        OUTLINED_FUNCTION_16_13();
        v76 = v58;
        v77 = &block_descriptor_69;
        v59 = _Block_copy(&aBlock);
        v60 = v16;

        [v55 animateAlongsideTransition:0 completion:v59];
        _Block_release(v59);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
        v63 = sub_1D8191AB4();
        OUTLINED_FUNCTION_0_8();
        v64 = swift_allocObject();
        *(v64 + 16) = v16;
        OUTLINED_FUNCTION_11_17(v64);
        v75 = 1107296256;
        OUTLINED_FUNCTION_17();
        v76 = v65;
        v77 = &block_descriptor_62;
        v66 = _Block_copy(&aBlock);
        v67 = v16;

        sub_1D8190BF4();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1D7E2D284(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
        sub_1D7F76D38(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D7EBCDB4();
        v68 = v70;
        sub_1D8192004();
        MEMORY[0x1DA713CE0](0, v14, v42, v66);
        _Block_release(v66);

        (*(v69 + 8))(v42, v68);
        (*(v73 + 8))(v14, v30);
      }

      goto LABEL_21;
    }
  }

  sub_1D7F761FC(v16);
  a1();

  OUTLINED_FUNCTION_50_3();
}

void sub_1D7F761FC(void *a1)
{
  v2 = [a1 viewControllers];
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  v3 = sub_1D8191314();

  v4 = sub_1D7E36AB8(v3);
  v5 = 0;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA714420](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v3 + 32 + 8 * i);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v15 = v7;
    type metadata accessor for CurtainViewController();
    if (swift_dynamicCastClass())
    {
      break;
    }

    v5 -= 8;
  }

  v8 = [a1 viewControllers];
  v9 = sub_1D8191314();

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v9 = sub_1D80E75C4(v9);
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 <= i)
  {
    goto LABEL_23;
  }

  v11 = v10 - 1;
  v12 = ~i;
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * i + 0x20);
  sub_1D80E75B8((v9 & 0xFFFFFFFFFFFFFF8) - v5 + 40, v12 + v10, (v9 & 0xFFFFFFFFFFFFFF8) - v5 + 32);
  *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;

  v14 = sub_1D8191304();

  [a1 setViewControllers_];
}

void sub_1D7F76424(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a3 topViewController];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for CurtainViewController();
      if (swift_dynamicCastClass())
      {

        v7 = [objc_allocWithZone(MEMORY[0x1E6979538]) init];
        [v7 setDuration_];
        v8 = objc_allocWithZone(MEMORY[0x1E69793D0]);
        LODWORD(v9) = 1061997773;
        LODWORD(v10) = *"fff?";
        LODWORD(v11) = 0.5;
        v12 = [v8 initWithControlPoints__:v9 :{0.0, v10, v11}];
        [v7 setTimingFunction_];

        [v7 setType_];
        v13 = [v5 view];
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = v13;
        v15 = [v13 layer];

        [v15 addAnimation:v7 forKey:0];
        [v5 setPreferredDisplayMode_];
        sub_1D7F761FC(a3);
      }

      v5 = v7;
    }
  }
}

void sub_1D7F765F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      OUTLINED_FUNCTION_0_57();
      sub_1D7E71FB0(0, v7, v8, v9);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v5;
      v10[3] = 2 * ((v11 - 32) / 48);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D7F766CC()
{
  v0 = OUTLINED_FUNCTION_13_12();
  sub_1D7F785FC(v0, v1, v2, type metadata accessor for CardContainerController.CardItem, v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_32_3();
  sub_1D7F52DC4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_10_21();
  sub_1D7F78684();
  v6 = OUTLINED_FUNCTION_38_4();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v6;
  v8 = sub_1D7F061FC(v6, 0);
  v9 = OUTLINED_FUNCTION_31();
  sub_1D7F7870C(v9, v10);
  v11 = OUTLINED_FUNCTION_45_4();
  v14 = sub_1D7F776C8(v11, v12, v13);
  sub_1D7F78760();
  if (v14 != v7)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

void sub_1D7F76850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1D7E71FB0(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB31B0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1D7F76958(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      OUTLINED_FUNCTION_0_57();
      v7 = OUTLINED_FUNCTION_27_7();
      sub_1D7E71FB0(v7, v8, v9, v10);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v5;
      v11[3] = (2 * ((v12 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for SwipeActionView();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D7F76A3C()
{
  v0 = OUTLINED_FUNCTION_13_12();
  sub_1D7F785FC(v0, v1, v2, type metadata accessor for UIKitCardItem, v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_32_3();
  sub_1D7F7759C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_10_21();
  sub_1D7E39248();
  v6 = OUTLINED_FUNCTION_38_4();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v6;
  v8 = sub_1D7F061FC(v6, 0);
  v9 = OUTLINED_FUNCTION_31();
  sub_1D7F7870C(v9, v10);
  v11 = OUTLINED_FUNCTION_45_4();
  v14 = sub_1D7F77AB0(v11, v12, v13);
  sub_1D7F78760();
  if (v14 != v7)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1D7F76BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D7F057B4();
  sub_1D7F05B88(&v7, v3 + 32, v1, a1);
  v5 = v4;
  sub_1D8190DB4();
  OUTLINED_FUNCTION_111();
  sub_1D7E4507C();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D7F76C7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1D81920A4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1D7F76CD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setDiscoverabilityTitle_];
}

void sub_1D7F76D38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_17_7();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D7F76DE0()
{
  if (!qword_1ECA0DD60)
  {
    sub_1D7E0631C(255, qword_1EDBB0758);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0DD60);
    }
  }
}

void sub_1D7F76EE8()
{
  if (!qword_1EDBBC520)
  {
    sub_1D7E0631C(255, &qword_1EDBBC530);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC520);
    }
  }
}

id sub_1D7F76F50()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC5TeaUI25TabBarSplitViewController_overlayToolbar) setAlpha_];
}

uint64_t objectdestroy_8Tm()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

unint64_t sub_1D7F76FE0()
{
  result = qword_1ECA0E1E8;
  if (!qword_1ECA0E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E1E8);
  }

  return result;
}

unint64_t sub_1D7F77038()
{
  result = qword_1ECA0E1F0;
  if (!qword_1ECA0E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E1F0);
  }

  return result;
}

unint64_t sub_1D7F77090()
{
  result = qword_1EDBAFF58;
  if (!qword_1EDBAFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFF58);
  }

  return result;
}

unint64_t sub_1D7F770E8()
{
  result = qword_1EDBAFF50;
  if (!qword_1EDBAFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFF50);
  }

  return result;
}

void sub_1D7F77144()
{
  sub_1D7F773B4(319, &qword_1EDBBC538);
  if (v0 <= 0x3F)
  {
    sub_1D7F773B4(319, &qword_1EDBBC540);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D7F773B4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_17_7();
    v3 = sub_1D818EE94();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TabBarSplitViewController.Event(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D7F774E0()
{
  result = qword_1EDBAFF60;
  if (!qword_1EDBAFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAFF60);
  }

  return result;
}

uint64_t sub_1D7F77534(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7E71FB0(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D7F7759C()
{
  if (!qword_1EDBAE3B0)
  {
    sub_1D7F785FC(255, &qword_1EDBAE2A0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, sub_1D7E39248);
    sub_1D7F77638();
    v0 = sub_1D8192344();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE3B0);
    }
  }
}

unint64_t sub_1D7F77638()
{
  result = qword_1EDBAE2A8;
  if (!qword_1EDBAE2A8)
  {
    sub_1D7F785FC(255, &qword_1EDBAE2A0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, sub_1D7E39248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBAE2A8);
  }

  return result;
}

uint64_t sub_1D7F776C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7F52DC4();
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a2;
  v30 = a3;
  sub_1D7F785FC(0, &qword_1EDBAE290, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, sub_1D7F78684);
  v23 = v10;
  v25 = v3;
  v26 = sub_1D7F787B4;
  v27 = &v28;
  sub_1D7F76D38(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  v12 = v11;
  sub_1D7F78818();
  sub_1D7F788A0(0, &qword_1EDBAE628, &qword_1EDBAE630, type metadata accessor for CardContainerController.CardItem);
  sub_1D8191174();
  if ((v32 & 1) == 0)
  {
    a3 = v31[2];
    v31[0] = *v3;
    sub_1D7F78684();
    sub_1D8191794();
    sub_1D7F78394(v3, a1);
    return a3;
  }

  v24 = v12;
  sub_1D7F7870C(v3, v9);
  v13 = *(v22 + 36);
  v14 = *v3;
  result = sub_1D7F78344();
  *(v9 + v13) = v14;
  if (!a2)
  {
    sub_1D7F7891C(v9, a1);
    return 0;
  }

  v21 = a1;
  if (!a3)
  {
LABEL_9:
    sub_1D7F7891C(v9, v21);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v22 = v9[1];
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (*(v9 + v13) == v22)
      {
        sub_1D7F7891C(v9, v21);
        return v16;
      }

      v31[0] = *v9;
      v31[1] = v22;
      sub_1D7F78684();
      sub_1D8191754();
      v18 = sub_1D81918F4();
      v20 = *v19;

      v18(v31, 0);
      result = sub_1D81917C4();
      *(a2 + 8 * v16++) = v20;
      if (v17 == a3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7F77AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7F7759C();
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a2;
  v30 = a3;
  sub_1D7F785FC(0, &qword_1EDBAE2A0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, sub_1D7E39248);
  v23 = v10;
  v25 = v3;
  v26 = sub_1D7F78224;
  v27 = &v28;
  sub_1D7F76D38(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  v12 = v11;
  sub_1D7F782BC();
  sub_1D7F788A0(0, &qword_1EDBAE638, &qword_1EDBAE640, type metadata accessor for UIKitCardItem);
  sub_1D8191174();
  if ((v32 & 1) == 0)
  {
    a3 = v31[2];
    v31[0] = *v3;
    sub_1D7E39248();
    sub_1D8191794();
    sub_1D7F78394(v3, a1);
    return a3;
  }

  v24 = v12;
  sub_1D7F7870C(v3, v9);
  v13 = *(v22 + 36);
  v14 = *v3;
  result = sub_1D7F78344();
  *(v9 + v13) = v14;
  if (!a2)
  {
    sub_1D7F7891C(v9, a1);
    return 0;
  }

  v21 = a1;
  if (!a3)
  {
LABEL_9:
    sub_1D7F7891C(v9, v21);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v22 = v9[1];
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (*(v9 + v13) == v22)
      {
        sub_1D7F7891C(v9, v21);
        return v16;
      }

      v31[0] = *v9;
      v31[1] = v22;
      sub_1D7E39248();
      sub_1D8191754();
      v18 = sub_1D81918F4();
      v20 = *v19;
      v18(v31, 0);
      result = sub_1D81917C4();
      *(a2 + 8 * v16++) = v20;
      if (v17 == a3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D7F77E98(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t, void *))
{
  sub_1D7F785FC(0, &qword_1EDBAE290, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, sub_1D7F78684);
  sub_1D7F76D38(0, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
  sub_1D7F78684();
  sub_1D8191724();
  v6 = sub_1D81917A4();
  result = sub_1D81917A4();
  if (__OFADD__(v6, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  if (result + v6 < v6)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a1)
  {
    v9 = a1 + 8 * v6;
  }

  else
  {
    v9 = 0;
  }

  result = a4(&v11, v9, v8);
  if (!v10)
  {
    return v11;
  }

  return result;
}

void *sub_1D7F77FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t, void *))
{
  sub_1D7F785FC(0, &qword_1EDBAE2A0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, sub_1D7E39248);
  sub_1D7F76D38(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  sub_1D7E39248();
  sub_1D8191724();
  v6 = sub_1D81917A4();
  result = sub_1D81917A4();
  if (__OFADD__(v6, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  if (result + v6 < v6)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a1)
  {
    v9 = a1 + 8 * v6;
  }

  else
  {
    v9 = 0;
  }

  result = a4(&v11, v9, v8);
  if (!v10)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1D7F78160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a2;
    }

    a5(0);
    swift_arrayInitWithCopy();
    a1 += 8 * v6;
  }

  return a1;
}

uint64_t sub_1D7F781F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  result = sub_1D7F78160(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1D7F78254@<X0>(uint64_t (*a1)(void)@<X5>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1D7F782BC()
{
  result = qword_1EDBB2000[0];
  if (!qword_1EDBB2000[0])
  {
    sub_1D7F76D38(255, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB2000);
  }

  return result;
}

uint64_t sub_1D7F78344()
{
  v1 = OUTLINED_FUNCTION_76_0();
  sub_1D7F785FC(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(v0);
  return v0;
}

uint64_t sub_1D7F78394(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_55_5(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_8();
  v9 = OUTLINED_FUNCTION_109();
  v10(v9);
  return a2;
}

void sub_1D7F783FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if ((~a3 & 0xFELL) != 0)
  {
    a7();

    (a7)(a4, a5, a6);
  }
}

void sub_1D7F78528()
{
  if (!qword_1EDBB1D00)
  {
    sub_1D7E0631C(255, &unk_1EDBB1D08);
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB1D00);
    }
  }
}

void sub_1D7F785FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1D7F76D38(255, a3, a4, MEMORY[0x1E69D6AD8]);
    a5();
    v7 = sub_1D81927A4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7F78684()
{
  result = qword_1EDBB1FD0;
  if (!qword_1EDBB1FD0)
  {
    sub_1D7F76D38(255, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB1FD0);
  }

  return result;
}

uint64_t sub_1D7F7870C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_55_5(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_8();
  v9 = OUTLINED_FUNCTION_109();
  v10(v9);
  return a2;
}

uint64_t sub_1D7F78760()
{
  v1 = OUTLINED_FUNCTION_76_0();
  v2(v1);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1D7F78818()
{
  result = qword_1EDBB1FD8;
  if (!qword_1EDBB1FD8)
  {
    sub_1D7F76D38(255, &qword_1EDBB1FC8, type metadata accessor for CardContainerController.CardItem, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB1FD8);
  }

  return result;
}

void sub_1D7F788A0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7F76D38(255, a3, a4, MEMORY[0x1E69E6040]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D7F7891C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_113();
  v4(v3);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_109();
  v6(v5);
  return a2;
}

char *sub_1D7F78A18()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_label;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v27.receiver = v0;
  v27.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.6 green:0.8 blue:0.996078431 alpha:1.0];
  v6 = OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_backgroundView;
  [*&v4[OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_backgroundView] setBackgroundColor_];
  v7 = [*&v4[v6] layer];
  [v7 setCornerRadius_];

  v8 = [*&v4[v6] layer];
  [v8 setCornerCurve_];

  [v4 addSubview_];
  v9 = OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_label;
  v10 = *&v4[OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_label];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 whiteColor];
  [v12 setTextColor_];

  v14 = *&v4[v9];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 systemFontOfSize_];
  [v16 setFont_];

  v18 = *&v4[v9];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = v18;
  v22 = [v20 bundleForClass_];
  v23 = sub_1D818E514();
  v25 = v24;

  sub_1D7FC8234(v23, v25, v21);
  [v4 addSubview_];

  return v4;
}

void sub_1D7F78D44()
{
  v1 = OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7F78E08()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_backgroundView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_label];
  [v2 sizeToFit];
  [v2 frame];
  Width = CGRectGetWidth(v6);
  [v2 frame];
  return [v2 setFrame_];
}

double sub_1D7F78F2C()
{
  v1 = sub_1D81925E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC5TeaUI33OnboardingAdPrivacyHeaderIconView_label);
  [v6 sizeToFit];
  [v6 frame];
  v8 = v7 + 40.0;
  v10 = v9 + 10.0;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E7040], v1);
  v11 = sub_1D7F79074(v5, v8, v10);
  (*(v2 + 8))(v5, v1);
  return v11;
}

double sub_1D7F79074(uint64_t a1, double a2, double a3)
{
  v6 = sub_1D81925E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v25 = a2;
  v14 = *(v7 + 16);
  v14(&v22 - v12, a1, v6, v11);
  v23 = v7;
  v15 = *(v7 + 88);
  v16 = v15(v13, v6);
  v17 = MEMORY[0x1E69E7030];
  v18 = *MEMORY[0x1E69E7038];
  if (v16 == *MEMORY[0x1E69E7038])
  {
    v19 = round(a2);
  }

  else if (v16 == *MEMORY[0x1E69E7030])
  {
    v19 = rint(a2);
  }

  else
  {
    if (v16 == *MEMORY[0x1E69E7040])
    {
      goto LABEL_6;
    }

    if (v16 == *MEMORY[0x1E69E7048])
    {
      goto LABEL_8;
    }

    if (v16 == *MEMORY[0x1E69E7020])
    {
      v19 = trunc(a2);
      goto LABEL_11;
    }

    if (v16 != *MEMORY[0x1E69E7028])
    {
      v22 = a1;
      sub_1D81915B4();
      a1 = v22;
      (*(v23 + 8))(v13, v6);
      v19 = v25;
      goto LABEL_12;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v19 = floor(a2);
    }

    else
    {
LABEL_6:
      v19 = ceil(a2);
    }
  }

LABEL_11:
  v25 = v19;
LABEL_12:
  v24 = a3;
  (v14)(v9, a1, v6);
  v20 = v15(v9, v6);
  if (v20 != v18 && v20 != *v17 && v20 != *MEMORY[0x1E69E7040] && v20 != *MEMORY[0x1E69E7048] && v20 != *MEMORY[0x1E69E7020] && v20 != *MEMORY[0x1E69E7028])
  {
    sub_1D81915B4();
    (*(v23 + 8))(v9, v6);
  }

  return v19;
}

TeaUI::BlueprintLayoutCollectionPinTrait::Edge_optional __swiftcall BlueprintLayoutCollectionPinTrait.Edge.init(rawValue:)(Swift::String rawValue)
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

uint64_t BlueprintLayoutCollectionPinTrait.Edge.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1D7F795A0@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintLayoutCollectionPinTrait.Edge.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BlueprintLayoutCollectionPinTrait.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7F79CA0(0, &qword_1ECA0E270, MEMORY[0x1E69E6F48]);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7F798E4();
  sub_1D81928A4();
  if (!v2)
  {
    sub_1D7F79938();
    OUTLINED_FUNCTION_1_46();
    switch(v19)
    {
      case 1:
        OUTLINED_FUNCTION_3_41();
        sub_1D7F7998C();
        OUTLINED_FUNCTION_1_46();
        v16 = OUTLINED_FUNCTION_2_46();
        v17(v16);
        v9 = v19;
        v8 = 1;
        break;
      case 2:
        v12 = OUTLINED_FUNCTION_2_46();
        v13(v12);
        v9 = 0;
        v8 = 3;
        break;
      case 3:
        OUTLINED_FUNCTION_3_41();
        sub_1D7F7998C();
        OUTLINED_FUNCTION_1_46();
        v14 = OUTLINED_FUNCTION_2_46();
        v15(v14);
        v9 = v19;
        v8 = 2;
        break;
      case 4:
        v10 = OUTLINED_FUNCTION_2_46();
        v11(v10);
        v8 = 3;
        v9 = 1;
        break;
      default:
        OUTLINED_FUNCTION_3_41();
        sub_1D7F799E0();
        OUTLINED_FUNCTION_1_46();
        v6 = OUTLINED_FUNCTION_2_46();
        v7(v6);
        v8 = 0;
        v9 = v19;
        break;
    }

    *a2 = v9;
    *(a2 + 8) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D7F798E4()
{
  result = qword_1ECA0E278;
  if (!qword_1ECA0E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E278);
  }

  return result;
}

unint64_t sub_1D7F79938()
{
  result = qword_1ECA0E280;
  if (!qword_1ECA0E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E280);
  }

  return result;
}

unint64_t sub_1D7F7998C()
{
  result = qword_1ECA0E288;
  if (!qword_1ECA0E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E288);
  }

  return result;
}

unint64_t sub_1D7F799E0()
{
  result = qword_1ECA0E290;
  if (!qword_1ECA0E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E290);
  }

  return result;
}

uint64_t BlueprintLayoutCollectionPinTrait.encode(to:)(void *a1)
{
  sub_1D7F79CA0(0, &qword_1ECA0E298, MEMORY[0x1E69E6F58]);
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v15 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7F798E4();
  sub_1D81928C4();
  switch(v11)
  {
    case 1:
      LOBYTE(v16) = 1;
      v18 = 0;
      sub_1D7F79D04();
      OUTLINED_FUNCTION_0_58();
      sub_1D8192574();
      if (!v2)
      {
        v16 = v10;
        v18 = 1;
        sub_1D7F79D58();
        goto LABEL_12;
      }

      break;
    case 2:
      LOBYTE(v16) = 3;
      v18 = 0;
      sub_1D7F79D04();
      OUTLINED_FUNCTION_0_58();
      sub_1D8192574();
      if (!v2)
      {
        v16 = v10;
        v17 = 0;
        OUTLINED_FUNCTION_3_41();
        sub_1D7F79D58();
        OUTLINED_FUNCTION_0_58();
        sub_1D8192554();
      }

      break;
    case 3:
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 2;
      }

      LOBYTE(v16) = v12;
      v18 = 0;
      sub_1D7F79D04();
      goto LABEL_12;
    default:
      LOBYTE(v16) = 0;
      v18 = 0;
      sub_1D7F79D04();
      OUTLINED_FUNCTION_0_58();
      sub_1D8192574();
      if (!v2)
      {
        LOBYTE(v16) = v10 & 1;
        OUTLINED_FUNCTION_3_41();
        sub_1D7F79DAC();
LABEL_12:
        OUTLINED_FUNCTION_0_58();
        sub_1D8192574();
      }

      break;
  }

  return (*(v15 + 8))(v9, v5);
}

void sub_1D7F79CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7F798E4();
    v7 = a3(a1, &type metadata for BlueprintLayoutCollectionPinTrait.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7F79D04()
{
  result = qword_1ECA0E2A0;
  if (!qword_1ECA0E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2A0);
  }

  return result;
}

unint64_t sub_1D7F79D58()
{
  result = qword_1ECA0E2A8;
  if (!qword_1ECA0E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2A8);
  }

  return result;
}

unint64_t sub_1D7F79DAC()
{
  result = qword_1ECA0E2B0;
  if (!qword_1ECA0E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2B0);
  }

  return result;
}

uint64_t sub_1D7F79E00()
{
  v0 = sub_1D81924B4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7F79E54()
{
  v0 = sub_1D81924B4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D7F79EA0(char a1)
{
  result = 1701274725;
  switch(a1)
  {
    case 1:
      result = 0x6465786966;
      break;
    case 2:
      result = 0x6E6F6974636573;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D7F79F4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7F79E00();
  *a1 = result;
  return result;
}

uint64_t sub_1D7F79F7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7EC11AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7F79FB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7F79E00();
  *a1 = result;
  return result;
}

uint64_t sub_1D7F79FD8(uint64_t a1)
{
  v2 = sub_1D7F798E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7F7A014(uint64_t a1)
{
  v2 = sub_1D7F798E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7F7A074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7F79E54();
  *a1 = result;
  return result;
}

unint64_t sub_1D7F7A0A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D7F79EA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL static BlueprintLayoutCollectionPinTrait.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 != 1)
      {
        return 0;
      }

      return v2 == v3;
    case 2:
      if (v4 != 2)
      {
        return 0;
      }

      return v2 == v3;
    case 3:
      if (v2 == 0.0)
      {
        if (v4 != 3 || *&v3 != 0)
        {
          return 0;
        }
      }

      else if (v4 != 3 || *&v3 != 1)
      {
        return 0;
      }

      return 1;
    default:
      if (*(a2 + 8))
      {
        return 0;
      }

      if (LOBYTE(v2))
      {
        v5 = 0x676E696C69617274;
      }

      else
      {
        v5 = 0x676E696461656CLL;
      }

      if (LOBYTE(v2))
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v6 = 0xE700000000000000;
      }

      if (LOBYTE(v3))
      {
        v7 = 0x676E696C69617274;
      }

      else
      {
        v7 = 0x676E696461656CLL;
      }

      if (LOBYTE(v3))
      {
        v8 = 0xE800000000000000;
      }

      else
      {
        v8 = 0xE700000000000000;
      }

      if (v5 != v7 || v6 != v8)
      {
        v10 = sub_1D8192634();

        return v10 & 1;
      }

      return 1;
  }
}

unint64_t sub_1D7F7A2E4()
{
  result = qword_1ECA0E2B8;
  if (!qword_1ECA0E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlueprintLayoutCollectionPinTrait(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for BlueprintLayoutCollectionPinTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7F7A3C0(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutCollectionPinTrait.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D7F7A4C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D7F7A5A4()
{
  result = qword_1ECA0E2C0;
  if (!qword_1ECA0E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2C0);
  }

  return result;
}

unint64_t sub_1D7F7A5FC()
{
  result = qword_1ECA0E2C8;
  if (!qword_1ECA0E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2C8);
  }

  return result;
}

unint64_t sub_1D7F7A654()
{
  result = qword_1ECA0E2D0;
  if (!qword_1ECA0E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2D0);
  }

  return result;
}

unint64_t sub_1D7F7A6AC()
{
  result = qword_1ECA0E2D8;
  if (!qword_1ECA0E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2D8);
  }

  return result;
}

unint64_t sub_1D7F7A700()
{
  result = qword_1ECA0E2E0;
  if (!qword_1ECA0E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2E0);
  }

  return result;
}

unint64_t sub_1D7F7A754()
{
  result = qword_1ECA0E2E8;
  if (!qword_1ECA0E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0E2E8);
  }

  return result;
}

uint64_t ScreenScaleImageRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_1D8190DB4();
  return v1;
}

uint64_t ScreenScaleImageRequest.__allocating_init(assetHandle:screenScale:assetScale:)(void *a1, double a2, double a3)
{
  v6 = swift_allocObject();
  ScreenScaleImageRequest.init(assetHandle:screenScale:assetScale:)(a1, a2, a3);
  return v6;
}

uint64_t ScreenScaleImageRequest.init(assetHandle:screenScale:assetScale:)(void *a1, double a2, double a3)
{
  sub_1D7F7A9E0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  *(inited + 32) = 0x6567616D69;
  *(inited + 40) = 0xE500000000000000;
  sub_1D7E0E768(a1, inited + 48);
  sub_1D7F7AAA0();
  *(v3 + 16) = sub_1D8190D94();
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v14 = (*(v9 + 32))(v8, v9);
  v15 = v10;
  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  v11 = sub_1D81915A4();
  MEMORY[0x1DA713260](v11);

  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  v12 = sub_1D81915A4();
  MEMORY[0x1DA713260](v12);

  *(v3 + 24) = v14;
  *(v3 + 32) = v15;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

void sub_1D7F7A9E0()
{
  if (!qword_1EDBAE2B8)
  {
    sub_1D7F7AA38();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE2B8);
    }
  }
}

void sub_1D7F7AA38()
{
  if (!qword_1EDBAE610)
  {
    sub_1D7F7AAA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBAE610);
    }
  }
}

unint64_t sub_1D7F7AAA0()
{
  result = qword_1EDBBB318;
  if (!qword_1EDBBB318)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBB318);
  }

  return result;
}

uint64_t ScreenScaleImageRequest.deinit()
{

  return v0;
}

uint64_t ScreenScaleImageRequest.__deallocating_deinit()
{
  ScreenScaleImageRequest.deinit();

  return swift_deallocClassInstance();
}

void sub_1D7F7ACBC()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_3();
  v9 = *(v8 + 88);
  v11 = *(v10 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52();
  v27 = v12;
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v24 = v14;
  v25 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v26 = &v21 - v16;
  sub_1D7F7AC1C();
  *&v32 = v5;
  *(&v32 + 1) = v3;
  type metadata accessor for ObjectReuseManager.InUseObject();
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_10_22();

  v28 = v7;
  if (!v30)
  {
    v23 = v11;
    goto LABEL_6;
  }

  v22 = v5;
  MEMORY[0x1EEE9AC00](v17);
  *(&v21 - 4) = v11;
  *(&v21 - 3) = v9;
  *(&v21 - 2) = v1;
  swift_getWitnessTable();
  sub_1D81911C4();

  if (!v32)
  {
    v23 = v11;
    v5 = v22;
LABEL_6:
    sub_1D7E90420();
    *&v32 = v5;
    *(&v32 + 1) = v3;
    v18 = v27;
    sub_1D8191484();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_10_22();

    v19 = v30;
    if (v30)
    {
      v22 = v1;
      *&v32 = v30;
      OUTLINED_FUNCTION_4_7();
      swift_getWitnessTable();
      v20 = v26;
      sub_1D8191844();
      if (__swift_getEnumTagSinglePayload(v20, 1, v18) != 1)
      {
        (*(*(v18 - 8) + 32))(v28, v20, v18);
        *&v30 = v19;
        sub_1D8190DB4();
        sub_1D8191894();
        v30 = v32;
        v31 = v33;
        sub_1D8191FA4();
        swift_getWitnessTable();
        v29 = sub_1D81914A4();
        *&v30 = v5;
        *(&v30 + 1) = v3;
        OUTLINED_FUNCTION_15_2();
        sub_1D8190E14();
        sub_1D8190E34();
        swift_endAccess();
        goto LABEL_11;
      }

      (*(v24 + 8))(v20, v25);
    }

    (*(v9 + 32))(v5, v3, v23, v9);
LABEL_11:
    sub_1D7F7BB28();
    goto LABEL_12;
  }

  (*(*(v27 - 8) + 16))(v28, v32 + *(*v32 + 96));

LABEL_12:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F7B138(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == a2;
  }

  return result;
}

void sub_1D7F7B19C()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_1_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v44 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v43 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = OUTLINED_FUNCTION_9_13();
  v46 = v12;
  v47 = v11;
  v45 = v13;
  v14 = (v13)(v10);
  if (!v15)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v14;
  v17 = v15;
  sub_1D7F7AC1C();
  v49 = v16;
  v50 = v17;
  type metadata accessor for ObjectReuseManager.InUseObject();
  v48 = sub_1D8191484();
  sub_1D8190E24();

  v18 = v51;
  if (!v51)
  {
LABEL_10:
    OUTLINED_FUNCTION_100();
    return;
  }

  v55 = sub_1D8190D34();
  v19 = OUTLINED_FUNCTION_9_13();
  v20 = v45(v19, v47);
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v20;
  v23 = v21;
  sub_1D7E90420();
  v49 = v22;
  v50 = v23;
  v24 = sub_1D8191484();
  sub_1D8190E24();

  v25 = v51;
  v43[1] = v0;
  v43[2] = v4;
  if (!v51)
  {
    v25 = sub_1D81913C4();
  }

  v54 = v25;
  sub_1D8190DB4();
  v26 = sub_1D8191324();
  v49 = v26;
  if (v26 != sub_1D8191414())
  {
    v37 = (v44 + 16);
    do
    {
      v38 = sub_1D81913E4();
      sub_1D81913A4();
      if (v38)
      {
        v39 = *(v18 + 32 + 8 * v26);
      }

      else
      {
        v39 = sub_1D8192204();
      }

      sub_1D8191454();
      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v41 = Strong, swift_unknownObjectRelease(), v41 == v2))
      {
        (*v37)(v9, v39 + *(*v39 + 96), AssociatedTypeWitness);
        sub_1D8191434();
      }

      else
      {
        v51 = v39;
        sub_1D8191434();
      }

      v42 = sub_1D8191414();
      v26 = v49;
    }

    while (v49 != v42);
  }

  v44 = v24;

  v27 = OUTLINED_FUNCTION_9_13();
  v28 = v47;
  v29 = v45;
  v30 = v45(v27, v47);
  if (!v31)
  {
    goto LABEL_24;
  }

  v52 = v31;
  v53 = v55;
  v51 = v30;
  OUTLINED_FUNCTION_15_2();
  sub_1D8190E14();
  sub_1D8190DB4();
  sub_1D8190E34();
  swift_endAccess();
  v32 = OUTLINED_FUNCTION_9_13();
  v33 = v29(v32, v28);
  if (v34)
  {
    v35 = v33;
    v36 = v34;

    v52 = v36;
    v53 = v54;
    v51 = v35;
    OUTLINED_FUNCTION_15_2();
    sub_1D8190E14();
    sub_1D8190E34();
    swift_endAccess();
    goto LABEL_10;
  }

LABEL_25:
  __break(1u);
}

void sub_1D7F7B640()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_1_3();
  v2 = *(v1 + 88);
  v4 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v45 = v6;
  OUTLINED_FUNCTION_44();
  v37 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v37 - v9;
  v38 = v0;
  sub_1D7F7AC1C();
  v39 = v4;
  v40 = v2;
  type metadata accessor for ObjectReuseManager.InUseObject();
  sub_1D8191484();
  sub_1D8190DD4();

  v10 = 0;
  OUTLINED_FUNCTION_3_42();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v41 = v16;
  if ((v13 & v12) != 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v17 >= v16)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v10;
    if (v14)
    {
      v10 = v17;
      do
      {
LABEL_6:
        sub_1D8190DB4();
        v48 = sub_1D8191324();
        if (v48 != sub_1D8191414())
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v46 = *(AssociatedConformanceWitness + 8);
          do
          {
            v19 = sub_1D81913E4();
            sub_1D81913A4();
            if (v19)
            {
            }

            else
            {
              sub_1D8192204();
            }

            sub_1D8191454();
            (v46)(AssociatedTypeWitness, AssociatedConformanceWitness);
          }

          while (v48 != sub_1D8191414());
        }

        v14 &= v14 - 1;

        v16 = v41;
        v11 = v42;
      }

      while (v14);
    }
  }

  sub_1D7E90420();
  sub_1D8191484();
  sub_1D8190DD4();

  v20 = 0;
  OUTLINED_FUNCTION_3_42();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v46 = (v45 + 16);
  v27 = (v45 + 8);
  v41 = v26;
  if ((v23 & v22) != 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      OUTLINED_FUNCTION_100();
      return;
    }

    v24 = *(v21 + 8 * v28);
    ++v20;
    if (v24)
    {
      v20 = v28;
      do
      {
LABEL_20:
        v29 = *(*(v43 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v24)))));
        sub_1D8190DB4();
        v30 = sub_1D8191324();
        v48 = v30;
        if (v30 != sub_1D8191414())
        {
          v31 = swift_getAssociatedConformanceWitness();
          v32 = *(v31 + 8);
          do
          {
            v33 = sub_1D81913E4();
            sub_1D81913A4();
            if (v33)
            {
              v34 = v44;
              (*(v45 + 16))(v44, v29 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, AssociatedTypeWitness);
            }

            else
            {
              v36 = sub_1D8192204();
              if (v37 != 8)
              {
                goto LABEL_33;
              }

              v47 = v36;
              v34 = v44;
              (*v46)(v44, &v47, AssociatedTypeWitness);
              swift_unknownObjectRelease();
            }

            sub_1D8191454();
            v32(AssociatedTypeWitness, v31);
            (*v27)(v34, AssociatedTypeWitness);
            v35 = sub_1D8191414();
            v30 = v48;
          }

          while (v48 != v35);
        }

        v24 &= v24 - 1;

        v26 = v41;
        v21 = v42;
      }

      while (v24);
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_1D7F7BB28()
{
  OUTLINED_FUNCTION_120();
  v13[0] = v0;
  v13[1] = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_1_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  sub_1D7F7AC1C();
  v14 = v5;
  v15 = v5;
  v16 = v3;
  type metadata accessor for ObjectReuseManager.InUseObject();
  sub_1D8191484();
  sub_1D8190DB4();
  sub_1D8190E24();

  v12 = v17;
  if (!v17)
  {
    v12 = sub_1D81913C4();
  }

  v20 = v12;
  (*(v8 + 16))(v11, v13[0], AssociatedTypeWitness);
  swift_unknownObjectRetain();
  v15 = sub_1D7F7BD5C(v11);
  sub_1D8191434();
  v18 = v3;
  v19 = v20;
  v17 = v14;
  OUTLINED_FUNCTION_15_2();
  sub_1D8190E14();
  sub_1D8190DB4();
  sub_1D8190E34();
  swift_endAccess();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F7BDA8(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = *(*v1 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1D7F7BEB4()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  sub_1D7E166A0(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_1D7F7BF78()
{
  sub_1D7F7BEB4();

  return swift_deallocClassInstance();
}

uint64_t *ObjectReuseManager.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

void SingletonObjectManager.dequeue(for:owner:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v23 = v4;
  OUTLINED_FUNCTION_1_3();
  v6 = *(v5 + 232);
  v8 = *(v7 + 224);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v22 = v21 - v13;
  sub_1D7F7AC1C();
  v24 = v3;
  v25 = v1;
  type metadata accessor for ObjectReuseManager.InUseObject();
  OUTLINED_FUNCTION_52();
  v21[1] = v14;
  sub_1D8191484();
  sub_1D8190DB4();
  sub_1D8190E24();

  if (v26 && (v24 = v26, OUTLINED_FUNCTION_4_7(), swift_getWitnessTable(), sub_1D8191844(), v15 = v26, , v15))
  {
    (*(v11 + 16))(v23, v15 + *(*v15 + 96), AssociatedTypeWitness);
  }

  else
  {
    v21[0] = AssociatedTypeWitness;
    v16 = v23;
    (*(v6 + 32))(v3, v1, v8, v6);
    sub_1D7E49240();
    swift_allocObject();
    sub_1D8190DB4();
    v17 = sub_1D8191394();
    v19 = v18;
    v20 = v22;
    (*(v11 + 16))(v22, v16, v21[0]);
    swift_unknownObjectRetain();
    *v19 = sub_1D7F7BD5C(v20);
    v27 = v1;
    v28 = v17;
    v26 = v3;
    OUTLINED_FUNCTION_15_2();
    sub_1D8190E14();
    sub_1D8190E34();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7F7C344(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t SingletonObjectManager.init(objectFactory:)(uint64_t a1)
{
  v3 = *(*v1 + 224);
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_44();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  (*(v4 + 16))(&v10 - v7, a1, v3, v6);
  ObjectReuseManager.init(objectFactory:)(v8);
  (*(v4 + 8))(a1, v3);
  return v1;
}

uint64_t _s5TeaUI18ObjectReuseManagerCfD_0()
{
  ObjectReuseManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D7F7C638(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a2 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  (*(v6 + 32))(v8 + v7, a1, a2);
  return sub_1D7F7C754;
}

id PillView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *PillView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI8PillView_contentView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI8PillView_titleLabel;
  *(v0 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC5TeaUI8PillView_iconImageView;
  v5 = objc_allocWithZone(type metadata accessor for ImageView());
  *(v0 + v4) = OUTLINED_FUNCTION_4(v5, sel_initWithFrame_);
  v6 = (v0 + OBJC_IVAR____TtC5TeaUI8PillView_touchInsets);
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *v6 = *MEMORY[0x1E69DDCE0];
  v6[1] = v7;
  v8 = OUTLINED_FUNCTION_80();
  v11 = objc_msgSendSuper2(v9, v10, v8, v0, ObjectType);
  v12 = OBJC_IVAR____TtC5TeaUI8PillView_contentView;
  v13 = *&v11[OBJC_IVAR____TtC5TeaUI8PillView_contentView];
  v14 = v11;
  [v14 addSubview_];
  [*&v11[v12] addSubview_];
  [*&v11[v12] addSubview_];

  return v14;
}

void sub_1D7F7C984()
{
  v1 = OBJC_IVAR____TtC5TeaUI8PillView_contentView;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI8PillView_titleLabel;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI8PillView_iconImageView;
  v4 = objc_allocWithZone(type metadata accessor for ImageView());
  *(v0 + v3) = OUTLINED_FUNCTION_4(v4, sel_initWithFrame_);
  v5 = (v0 + OBJC_IVAR____TtC5TeaUI8PillView_touchInsets);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v5 = *MEMORY[0x1E69DDCE0];
  v5[1] = v6;
  sub_1D81923A4();
  __break(1u);
}

id PillView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CommandRawState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_15;
      }

      v21 = OUTLINED_FUNCTION_1_47();
      sub_1D7F7CD3C(v21, v22, 1);
      v23 = OUTLINED_FUNCTION_2_4();
      sub_1D7F7CD3C(v23, v24, 1);
      v11 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v11 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_15;
      }

      v12 = OUTLINED_FUNCTION_1_47();
      sub_1D7F7CD3C(v12, v13, 2);
      v14 = OUTLINED_FUNCTION_2_4();
      sub_1D7F7CD3C(v14, v15, 2);
      v16 = *&v2 == *&v5;
      goto LABEL_10;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_15;
      }

      v17 = OUTLINED_FUNCTION_1_47();
      sub_1D7F7CD3C(v17, v18, 3);
      v19 = OUTLINED_FUNCTION_2_4();
      sub_1D7F7CD3C(v19, v20, 3);
      v16 = v2 == v5;
LABEL_10:
      v11 = v16;
      return v11 & 1;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_15;
      }

      v7 = OUTLINED_FUNCTION_1_47();
      sub_1D7F7CD3C(v7, v8, 4);
      v9 = OUTLINED_FUNCTION_2_4();
      sub_1D7F7CD3C(v9, v10, 4);
      v11 = *&v2 == *&v5;
      return v11 & 1;
    default:
      if (*(a2 + 16))
      {
        sub_1D8190DB4();
LABEL_15:
        v25 = OUTLINED_FUNCTION_2_4();
        sub_1D7F7CD28(v25, v26, v6);
        v27 = OUTLINED_FUNCTION_1_47();
        sub_1D7F7CD3C(v27, v28, v4);
        v29 = OUTLINED_FUNCTION_2_4();
        sub_1D7F7CD3C(v29, v30, v6);
        v11 = 0;
        return v11 & 1;
      }

      v32 = *a1;
      if (*&v2 == *&v5 && v3 == *(a2 + 8))
      {
        sub_1D7F7CD28(*&v32, v3, 0);
        v45 = OUTLINED_FUNCTION_0_59();
        sub_1D7F7CD28(v45, v46, v47);
        v48 = OUTLINED_FUNCTION_0_59();
        sub_1D7F7CD3C(v48, v49, v50);
        v51 = OUTLINED_FUNCTION_0_59();
        sub_1D7F7CD3C(v51, v52, v53);
        v11 = 1;
        return v11 & 1;
      }

      v34 = sub_1D8192634();
      v35 = OUTLINED_FUNCTION_2_4();
      sub_1D7F7CD28(v35, v36, 0);
      v37 = OUTLINED_FUNCTION_0_59();
      sub_1D7F7CD28(v37, v38, v39);
      v40 = OUTLINED_FUNCTION_0_59();
      sub_1D7F7CD3C(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_2_4();
      sub_1D7F7CD3C(v43, v44, 0);
      return v34 & 1;
  }
}

uint64_t sub_1D7F7CD28(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_1D8190DB4();
  }

  return result;
}

uint64_t sub_1D7F7CD3C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t CommandRawState.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      if (v1)
      {
        return 1702195828;
      }

      else
      {
        return 0x65736C6166;
      }

    case 2:
      v2 = sub_1D81915E4();
      goto LABEL_6;
    case 3:
      v2 = sub_1D81915A4();
      goto LABEL_6;
    case 4:
      sub_1D7F01D3C();
      v2 = sub_1D8191F24();
LABEL_6:
      v1 = v2;
      break;
    default:
      sub_1D8190DB4();
      break;
  }

  return v1;
}

uint64_t Bool.rawState.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t RawRepresentable<>.rawState.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8191294();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1D7F7CE98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_1D7F7CED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D7F7CF68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D7F7CFA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t UIApplicationLaunchOptionsKey.applicationStateLaunchOptionKey.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  v5 = v5 && v1 == v4;
  if (v5)
  {

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_63:
    v29 = MEMORY[0x1E69D69A0];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v6)
  {

    goto LABEL_68;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_68:
    v29 = MEMORY[0x1E69D69C8];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v8)
  {

    goto LABEL_70;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_70:
    v29 = MEMORY[0x1E69D69A8];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v10)
  {

    goto LABEL_72;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_72:
    v29 = MEMORY[0x1E69D69B0];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v12)
  {

    goto LABEL_74;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_74:
    v29 = MEMORY[0x1E69D69E0];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v14)
  {

    goto LABEL_76;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_76:
    v29 = MEMORY[0x1E69D69E8];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v16)
  {

    goto LABEL_78;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_78:
    v29 = MEMORY[0x1E69D6998];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v18)
  {

    goto LABEL_80;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_80:
    v29 = MEMORY[0x1E69D69C0];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v20)
  {

    goto LABEL_82;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_82:
    v29 = MEMORY[0x1E69D69F8];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v22)
  {

    goto LABEL_84;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_84:
    v29 = MEMORY[0x1E69D69D8];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v24)
  {

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0_61();
  OUTLINED_FUNCTION_3_43();

  if (v2)
  {
LABEL_86:
    v29 = MEMORY[0x1E69D69D0];
    goto LABEL_64;
  }

  sub_1D8190F14();
  OUTLINED_FUNCTION_1_49();
  OUTLINED_FUNCTION_2_47();
  if (v5 && v1 == v26)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    OUTLINED_FUNCTION_3_43();

    if ((v2 & 1) == 0)
    {
      *a1 = sub_1D8190F14();
      a1[1] = v28;
      v29 = MEMORY[0x1E69D69F0];
      goto LABEL_64;
    }
  }

  v29 = MEMORY[0x1E69D69B8];
LABEL_64:
  v30 = *v29;
  v31 = sub_1D818F7C4();
  v32 = *(*(v31 - 8) + 104);

  return v32(a1, v30, v31);
}

uint64_t Dictionary<>.applicationStateLaunchOptions.getter()
{
  type metadata accessor for LaunchOptionsKey();
  sub_1D818F7C4();
  sub_1D7F7D5A0(&qword_1ECA0CD28, type metadata accessor for LaunchOptionsKey);
  sub_1D7F7D5A0(&qword_1ECA0E310, MEMORY[0x1E69D6A00]);
  return sub_1D8190D84();
}

uint64_t sub_1D7F7D5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dragItems<A>(from:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[1] = a1;
  v34[2] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v38[0] = v12;
  v38[1] = AssociatedTypeWitness;
  v38[2] = AssociatedConformanceWitness;
  v39 = v14;
  v15 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - v19;
  v35 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v34 - v24;
  BlueprintProviderType.blueprint.getter(a3, a4);
  Blueprint.subscript.getter();
  (*(v17 + 8))(v20, v15);
  (*(v8 + 16))(v11, v25, AssociatedTypeWitness);
  sub_1D7F7DA54();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1D7F7DAB0(v36);
LABEL_6:
    (*(v22 + 8))(v25, v35);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E05450(v36, v38);
  v26 = v39;
  v27 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v27 + 8))(v36, v26, v27);
  v28 = *&v36[0];
  if (!*&v36[0])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    goto LABEL_6;
  }

  v29 = sub_1D8190EE4();
  [v28 ts:v29 setTitle:?];

  v30 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];
  v31 = sub_1D8190EE4();
  [v30 setSuggestedName_];

  sub_1D7E49240();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D81A50A0;
  *(v32 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  sub_1D7F7DB64(v28);

  (*(v22 + 8))(v25, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v32;
}

uint64_t DragItem.init(dragUrl:dragTitle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_1D7F7DA54()
{
  result = qword_1ECA0E318;
  if (!qword_1ECA0E318)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0E318);
  }

  return result;
}

uint64_t sub_1D7F7DAB0(uint64_t a1)
{
  sub_1D7F7DB0C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7F7DB0C()
{
  if (!qword_1ECA0E320)
  {
    sub_1D7F7DA54();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0E320);
    }
  }
}

void *sub_1D7F7DB64(void *result)
{
  if (result)
  {
  }

  return result;
}

double Gutters.contentWidth(bounds:)(double result)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      v3 = *(*&v2 + 16);
      while (v3)
      {
        if (v3 > *(*&v2 + 16))
        {
          __break(1u);
          return result;
        }

        v4 = v3 - 1;
        Width = *(*&v2 + 24 + 8 * v3);
        v11.origin.x = OUTLINED_FUNCTION_80();
        result = CGRectGetWidth(v11);
        v3 = v4;
        if (Width <= result)
        {
          return Width;
        }
      }
    }

    v6 = OUTLINED_FUNCTION_80();

    return CGRectGetWidth(*&v6);
  }

  else
  {
    v12.origin.x = OUTLINED_FUNCTION_80();
    Width = CGRectGetWidth(v12);
    if (Width > v2)
    {
      return v2;
    }

    return Width;
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI7GuttersO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

id CardViewTitleView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *CardViewTitleView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_titleLabel;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_separatorView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_closeAffordanceButton;
  type metadata accessor for TouchInsetsButton();
  *(v0 + v3) = [swift_getObjCClassFromMetadata() buttonWithType_];
  v4 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_contentView;
  *(v0 + v4) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v5 = OUTLINED_FUNCTION_80();
  v8 = objc_msgSendSuper2(v6, v7, v5);
  v9 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_contentView;
  v10 = *&v8[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_contentView];
  v11 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_titleLabel;
  v12 = *&v8[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_titleLabel];
  v13 = v8;
  [v10 addSubview_];
  [*&v8[v9] addSubview_];
  [v13 addSubview_];
  v14 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_closeAffordanceButton;
  [v13 addSubview_];
  v15 = *&v8[v11];
  v16 = [v15 accessibilityTraits];
  [v15 setAccessibilityTraits_];

  v17 = *&v13[v14];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = v17;
  v21 = [v19 bundleForClass_];
  v22 = sub_1D818E514();
  v24 = v23;

  sub_1D806B194(v22, v24, v20);
  [*&v13[v14] setShowsLargeContentViewer_];
  v25 = *&v13[v14];
  sub_1D7E471D0();
  v26 = v25;
  v27 = sub_1D7E47238();
  [v26 setLargeContentImage_];

  v28 = *&v13[v14];
  v29 = [v19 bundleForClass_];
  v30 = sub_1D818E514();
  v32 = v31;

  sub_1D7F7E8B8(v30, v32, v28);
  v33 = *&v13[v14];
  v34 = objc_allocWithZone(MEMORY[0x1E69DCC18]);
  v35 = v33;
  v36 = [v34 init];
  [v35 addInteraction_];

  [v13 setShouldGroupAccessibilityChildren_];
  return v13;
}

id CardViewTitleView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CardViewTitleView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_titleLabel;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_separatorView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_closeAffordanceButton;
  type metadata accessor for TouchInsetsButton();
  *(v0 + v3) = [swift_getObjCClassFromMetadata() buttonWithType_];
  v4 = OBJC_IVAR____TtC5TeaUI17CardViewTitleView_contentView;
  *(v0 + v4) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall CardViewTitleView.layoutSubviews()()
{
  v55.receiver = v0;
  v55.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v55, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_contentView];
  OUTLINED_FUNCTION_2_48();
  [v1 setFrame_];
  v2 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  if (v2 == 1)
  {
    [*&v0[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_closeAffordanceButton] sizeToFit];
    OUTLINED_FUNCTION_3_44();
    CGRectGetWidth(v56);
    OUTLINED_FUNCTION_3_44();
    CGRectGetHeight(v57);
    v3 = OUTLINED_FUNCTION_6_25();
    [v4 v5];
    OUTLINED_FUNCTION_2_48();
    Width = CGRectGetWidth(v58);
    OUTLINED_FUNCTION_3_44();
    v7 = Width - CGRectGetMaxX(v59);
    OUTLINED_FUNCTION_7_24();
    v9 = v7 - v8 + -8.0;
    v10 = *&v0[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_titleLabel];
    OUTLINED_FUNCTION_2_48();
    CGRectGetHeight(v60);
    v11 = OUTLINED_FUNCTION_6_25();
    [v12 v13];
    v15 = v14;
    v17 = v16;
    OUTLINED_FUNCTION_2_48();
    v18 = CGRectGetWidth(v61);
    OUTLINED_FUNCTION_7_24();
    v20 = v19;
    OUTLINED_FUNCTION_3_44();
    v21 = CGRectGetWidth(v62);
    OUTLINED_FUNCTION_2_48();
    Height = CGRectGetHeight(v63);
    OUTLINED_FUNCTION_3_44();
    v23 = CGRectGetHeight(v64);
    if (v15 >= v9)
    {
      v24 = v9;
    }

    else
    {
      v24 = v15;
    }

    [v10 setFrame_];
    [v10 setTextAlignment_];
LABEL_11:
    v44 = *&v0[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_separatorView];
    OUTLINED_FUNCTION_2_48();
    v45 = CGRectGetHeight(v72);
    v46 = objc_opt_self();
    v47 = [v46 mainScreen];
    [v47 scale];
    v49 = v48;

    v50 = v45 - 1.0 / v49;
    OUTLINED_FUNCTION_2_48();
    v51 = CGRectGetWidth(v73);
    v52 = [v46 mainScreen];
    [v52 scale];
    v54 = v53;

    [v44 setFrame_];
    return;
  }

  if (!v2)
  {
    [*&v0[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_closeAffordanceButton] sizeToFit];
    OUTLINED_FUNCTION_2_48();
    CGRectGetWidth(v65);
    OUTLINED_FUNCTION_3_44();
    CGRectGetWidth(v66);
    OUTLINED_FUNCTION_3_44();
    CGRectGetHeight(v67);
    v25 = OUTLINED_FUNCTION_6_25();
    [v26 v27];
    OUTLINED_FUNCTION_3_44();
    MinX = CGRectGetMinX(v68);
    OUTLINED_FUNCTION_7_24();
    v30 = MinX - v29 + -8.0;
    v31 = *&v0[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_titleLabel];
    OUTLINED_FUNCTION_2_48();
    CGRectGetHeight(v69);
    v32 = OUTLINED_FUNCTION_6_25();
    [v33 v34];
    v36 = v35;
    v38 = v37;
    OUTLINED_FUNCTION_7_24();
    v40 = v39;
    OUTLINED_FUNCTION_2_48();
    v41 = CGRectGetHeight(v70);
    OUTLINED_FUNCTION_3_44();
    v42 = CGRectGetHeight(v71);
    if (v36 >= v30)
    {
      v43 = v30;
    }

    else
    {
      v43 = v36;
    }

    [v31 setFrame_];
    [v31 setTextAlignment_];
    goto LABEL_11;
  }

  sub_1D81923A4();
  __break(1u);
}

void __swiftcall CardViewTitleView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = [(UIView_optional *)&v11 hitTest:isa withEvent:x, y];
  v8 = v7;
  if (v7)
  {
    v9 = *&v3[OBJC_IVAR____TtC5TeaUI17CardViewTitleView_closeAffordanceButton];

    if (v8 == v9)
    {
      v10 = v9;
    }
  }
}

id CardViewTitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7F7E8B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setLargeContentTitle_];
}

uint64_t PromiseCardViewController.cardViewBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_6();
  if (v3 < 0)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_11_18();
    return v9();
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardViewBehavior + 8);
    v5 = *(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardViewBehavior + 9);
    v6 = *(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardViewBehavior + 10);
    v7 = *(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardViewBehavior + 16);
    *a1 = *(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardViewBehavior);
    *(a1 + 8) = v4;
    *(a1 + 9) = v5;
    *(a1 + 10) = v6;
    *(a1 + 16) = v7;

    return sub_1D8190DB4();
  }
}

void PromiseCardViewController.__allocating_init(promise:defaultCardViewBehavior:defaultCardSplitViewPresentationForState:)()
{
  OUTLINED_FUNCTION_13_13();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_24_7();
  PromiseCardViewController.init(promise:defaultCardViewBehavior:defaultCardSplitViewPresentationForState:)();
}

void PromiseCardViewController.init(promise:defaultCardViewBehavior:defaultCardSplitViewPresentationForState:)()
{
  OUTLINED_FUNCTION_86();
  v19 = v4;
  v20 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_13_13();
  ObjectType = swift_getObjectType();
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 9);
  v12 = *(v2 + 10);
  v13 = v2[2];
  v14 = OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_activityIndicatorView;
  *&v0[v14] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  *&v0[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_activityIndicatorOffset] = xmmword_1D81A8600;
  v15 = &v0[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState];
  *v15 = v3;
  *(v15 + 24) = 0u;
  *(v15 + 8) = 0u;
  v16 = &v0[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardViewBehavior];
  *v16 = v9;
  v16[8] = v10;
  v16[9] = v11;
  v16[10] = v12;
  *(v16 + 2) = v13;
  v17 = &v0[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardSplitViewPresentationForState];
  *v17 = v1;
  *(v17 + 1) = v7;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  OUTLINED_FUNCTION_87();
}

void sub_1D7F7EBBC()
{
  v1 = OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_activityIndicatorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  *(v0 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_activityIndicatorOffset) = xmmword_1D81A8600;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall PromiseCardViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D7F7EE18();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v35.receiver = v1;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, sel_viewDidLoad, v4);
  if ((*&v1[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState + 32] & 0x8000000000000000) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState];
    sub_1D8191564();
    OUTLINED_FUNCTION_33_5();
    sub_1D8191534();
    v6 = OUTLINED_FUNCTION_5_25();
    sub_1D7F7F368(v6, v7, v8, v9, v10);
    v11 = v1;
    v12 = sub_1D8191524();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v15 = v14;
    v13[4] = v11;
    OUTLINED_FUNCTION_32_4(v13, v16, v17, v18, v13);

    OUTLINED_FUNCTION_33_5();
    v19 = OUTLINED_FUNCTION_5_25();
    sub_1D7F7F368(v19, v20, v21, v22, v23);
    v24 = v11;
    v25 = sub_1D8191524();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v15;
    v26[4] = v5;
    v26[5] = v24;
    OUTLINED_FUNCTION_32_4(v26, v27, v28, v29, v26);
    v30 = OUTLINED_FUNCTION_5_25();
    sub_1D7F80220(v30, v31, v32, v33, v34);
  }
}

void sub_1D7F7EE18()
{
  if (!qword_1EDBB32B8)
  {
    sub_1D8191564();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB32B8);
    }
  }
}

uint64_t sub_1D7F7EE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D8192314();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1D8191534();
  v4[6] = sub_1D8191524();
  v7 = sub_1D81914D4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D7F7EF64, v7, v6);
}

uint64_t sub_1D7F7EF64()
{
  OUTLINED_FUNCTION_6();
  sub_1D8192744();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D7F7F02C;

  return sub_1D803C0F0();
}

uint64_t sub_1D7F7F02C()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1D7F7F2FC;
  }

  else
  {
    v8 = sub_1D7F7F1C0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

id sub_1D7F7F1C0()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState + 32) & 0x8000000000000000) != 0)
  {

    goto LABEL_6;
  }

  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_activityIndicatorView);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *(v0 + 16);
  [result center];
  v7 = v6;
  v9 = v8;

  [v2 setCenter_];
  result = [v5 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = result;

  [v10 addSubview_];

  [v2 startAnimating];
LABEL_6:

  OUTLINED_FUNCTION_10_6();

  return v11();
}

uint64_t sub_1D7F7F2FC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_10_6();

  return v2();
}

id sub_1D7F7F368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1D7F7F374()
{
  OUTLINED_FUNCTION_9_14();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_14(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_14_13(v5);

  return sub_1D7F7EE70(v7, v1, v2, v3);
}

uint64_t sub_1D7F7F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_12_17(v11, v19);
  v12 = sub_1D8191564();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D7F81538(v5);
  }

  else
  {
    sub_1D8191554();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D7F81538(v7);
    OUTLINED_FUNCTION_0_32();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1D81914D4();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D8190FB4();
  OUTLINED_FUNCTION_0_32();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  v17 = swift_task_create();

  sub_1D7F81538(v7);

  return v17;
}

uint64_t sub_1D7F7F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_12_17(v11, v19);
  v12 = sub_1D8191564();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D7F81538(v5);
  }

  else
  {
    sub_1D8191554();
    (*(*(v12 - 8) + 8))(v5, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D7F81538(v7);
    OUTLINED_FUNCTION_0_32();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    sub_1D7F818E4();
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1D81914D4();
  swift_unknownObjectRelease();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1D8190FB4();
  OUTLINED_FUNCTION_0_32();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  sub_1D7F818E4();

  v17 = swift_task_create();

  sub_1D7F81538(v7);

  return v17;
}

uint64_t sub_1D7F7F8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a5;
  v5[23] = sub_1D8191534();
  v5[24] = sub_1D8191524();
  v6 = swift_task_alloc();
  v5[25] = v6;
  *v6 = v5;
  v6[1] = sub_1D7F7F9AC;

  return MEMORY[0x1EEE44EE0](v5 + 14);
}

uint64_t sub_1D7F7F9AC()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_9_12();
  v2 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v3 = v2;
  *(v4 + 208) = v0;

  v6 = sub_1D81914D4();
  if (v0)
  {
    v7 = sub_1D7F7FFA4;
  }

  else
  {
    v7 = sub_1D7F7FAF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

id sub_1D7F7FAF8()
{
  v54 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 136);
  v50 = *(v0 + 128);
  v4 = *(v0 + 144);
  [*(v0 + 176) addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  result = [*(v0 + 176) view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = result;
  v17 = *(v0 + 176);
  [result setAlpha_];

  result = [v17 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = *(v0 + 176);

  [v18 addSubview_];

  [v1 didMoveToParentViewController_];
  v49 = objc_opt_self();
  v21 = swift_allocObject();
  v21[2] = v1;
  v21[3] = v2;
  v21[4] = v50;
  v21[5] = v3;
  v22 = v3;
  v21[6] = v4;
  v21[7] = v20;
  *(v0 + 48) = sub_1D7F819C4;
  *(v0 + 56) = v21;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1D7E64940;
  *(v0 + 40) = &block_descriptor_17;
  v23 = _Block_copy((v0 + 16));
  v24 = v1;
  v25 = v20;

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v0 + 96) = sub_1D7F819F8;
  *(v0 + 104) = v26;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1D7EB30D4;
  *(v0 + 88) = &block_descriptor_28_0;
  v27 = _Block_copy((v0 + 64));
  v28 = v25;

  [v49 animateWithDuration:2 delay:v23 options:v27 animations:0.3 completion:0.0];
  _Block_release(v27);
  _Block_release(v23);
  v29 = v4 | 0x8000000000000000;
  v30 = &v28[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState];
  v31 = *&v28[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState];
  v32 = *&v28[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState + 8];
  v33 = *&v28[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState + 16];
  v34 = *&v28[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState + 24];
  v35 = *&v28[OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_viewControllerState + 32];
  *v30 = v24;
  *(v30 + 1) = v2;
  *(v30 + 2) = v50;
  *(v30 + 3) = v22;
  *(v30 + 4) = v29;
  v36 = v24;
  sub_1D7F80220(v31, v32, v33, v34, v35);
  sub_1D7F80304();
  sub_1D7F803AC();
  v37 = UIViewController.cardContainerController.getter();
  if (v37)
  {
    v39 = v37;
    v40 = v38;
    v41 = *(v0 + 176);
    ObjectType = swift_getObjectType();
    v43 = (*(v40 + 144))(v41, ObjectType, v40);
    if ((v44 & 1) != 0 || (v45 = v43, (v46 = [*(v0 + 176) splitViewController]) == 0))
    {
    }

    else
    {
      v47 = v46;
      v52 = [v46 isCollapsed] ^ 1;
      PromiseCardViewController.cardSplitViewPresentation(for:)(&v52);
      switch(v51 >> 5)
      {
        case 1:
        case 2:
        case 3:
        case 4:
          break;
        default:
          v53 = v51;
          CardContainerControllerType.setCard(at:to:animated:completion:)(v45, &v53, 1, 0, 0, ObjectType, v40);
          break;
      }
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_6();

  return v48();
}

uint64_t sub_1D7F7FFA4()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[26];

  sub_1D81919C4();
  sub_1D7F35180(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D819FAB0;
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  v0[21] = v1;
  sub_1D7E0631C(0, &qword_1EDBB2BC0);
  sub_1D8192334();
  v4 = v0[19];
  v3 = v0[20];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D7E13BF4();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  sub_1D7E0A1A8(0, &qword_1EDBBE110);
  v5 = sub_1D8191E44();
  sub_1D818FD44();

  v6 = UIViewController.cardContainerController.getter();
  v8 = v0[26];
  if (v6)
  {
    v9 = v6;
    v10 = v7;
    v11 = v0[22];
    ObjectType = swift_getObjectType();
    j__OUTLINED_FUNCTION_0_255(v11, 0, 0, 0, ObjectType, v10);
  }

  OUTLINED_FUNCTION_10_6();

  return v13();
}

uint64_t sub_1D7F80174()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_14(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_13(v6);

  return sub_1D7F7F8F0(v8, v1, v2, v4, v3);
}

void sub_1D7F80220(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

id sub_1D7F8022C(id *a1, uint64_t a2)
{
  result = [*a1 view];
  if (result)
  {
    v4 = result;
    [result setAlpha_];

    v5 = *(a2 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_activityIndicatorView);

    return [v5 setAlpha_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F802B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_activityIndicatorView);
  [v2 stopAnimating];

  return [v2 removeFromSuperview];
}

uint64_t sub_1D7F80304()
{
  sub_1D7EB0890(v4);
  v1 = v5;
  if (!v5)
  {
    return sub_1D7F35110(v4, &qword_1EDBAF778, qword_1EDBAF780, &protocol descriptor for CardContainerAppearanceDelegate);
  }

  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v0, &protocol witness table for PromiseCardViewController, v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1D7F803AC()
{
  sub_1D7EB0890(v4);
  v1 = v5;
  if (!v5)
  {
    return sub_1D7F35110(v4, &qword_1EDBAF778, qword_1EDBAF780, &protocol descriptor for CardContainerAppearanceDelegate);
  }

  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v0, &protocol witness table for PromiseCardViewController, v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t PromiseCardViewController.cardSplitViewPresentation(for:)(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_26_6();
  if (v4 < 0)
  {
    v7 = *v3;
    v8 = v3[1];
    ObjectType = swift_getObjectType();
    v11 = v7;
    v10 = v2;
    return (*(v8 + 16))(&v10, ObjectType, v8);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC5TeaUI25PromiseCardViewController_defaultCardSplitViewPresentationForState);
    v12 = v2;
    return v5(&v12);
  }
}

id PromiseCardViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PromiseCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7F806C8()
{
  swift_getObjectType();

  return sub_1D818EA44();
}

uint64_t sub_1D7F80720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1D7F80788()
{
  swift_getObjectType();

  return sub_1D818EA54();
}

uint64_t sub_1D7F807F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

void sub_1D7F8087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_6_26();
  if (v9 < 0)
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_16_14();
    v12 = *(v11 + 8);
    v13 = v10;
    v14 = OUTLINED_FUNCTION_3_45();
    v12(v14);
    v15 = OUTLINED_FUNCTION_8_17();
    sub_1D7F80220(v15, v16, v17, a9, v9);
  }

  OUTLINED_FUNCTION_29();
}

void PromiseCardViewController.cardViewAnimationCoordinator(_:willTransitionTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_6_26();
  if (v9 < 0)
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_16_14();
    v12 = *(v11 + 24);
    v13 = v10;
    v14 = OUTLINED_FUNCTION_3_45();
    v12(v14);
    v15 = OUTLINED_FUNCTION_8_17();
    sub_1D7F80220(v15, v16, v17, a9, v9);
  }

  OUTLINED_FUNCTION_29();
}

void PromiseCardViewController.cardViewAnimationCoordinator(_:willTransitionTo:usingTimingParameters:)()
{
  OUTLINED_FUNCTION_86();
  v25 = v5;
  v26 = v6;
  OUTLINED_FUNCTION_6_26();
  if (v0 < 0)
  {
    v8 = v7;
    OUTLINED_FUNCTION_21_10();
    v10 = *v9;
    ObjectType = swift_getObjectType();
    v24[0] = v10;
    v12 = *(v3 + 32);
    v4;
    v13 = v12(v2, v1, v24, v8, ObjectType, v3);
    OUTLINED_FUNCTION_34_5(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }

  OUTLINED_FUNCTION_87();
}

void PromiseCardViewController.cardViewAnimationCoordinator(_:didTransitionTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_6_26();
  if (v9 < 0)
  {
    OUTLINED_FUNCTION_4_31();
    OUTLINED_FUNCTION_16_14();
    v12 = *(v11 + 40);
    v13 = v10;
    v14 = OUTLINED_FUNCTION_3_45();
    v12(v14);
    v15 = OUTLINED_FUNCTION_8_17();
    sub_1D7F80220(v15, v16, v17, a9, v9);
  }

  OUTLINED_FUNCTION_29();
}

void PromiseCardViewController.cardViewAnimationCoordinator(_:didDragTo:)()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_6_26();
  if (v0 < 0)
  {
    v5 = v4;
    v6 = v2;
    v7 = v1;
    v8 = *(v3 + 16);
    v9 = *v3;
    ObjectType = swift_getObjectType();
    v11 = *(v8 + 48);
    v9;
    v11(v7, v6, ObjectType, v8, v5);
    OUTLINED_FUNCTION_8_17();
    OUTLINED_FUNCTION_87();

    sub_1D7F80220(v12, v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_87();
  }
}

void PromiseCardViewController.cardViewAnimationCoordinator(_:shouldRestorePositionWith:)()
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_6_26();
  if (v0 < 0)
  {
    OUTLINED_FUNCTION_13_13();
    v2 = *(v1 + 16);
    v3 = *v1;
    v7 = *(v1 + 8);
    v8 = *(v1 + 24);
    swift_getObjectType();
    v6 = *(v2 + 56);
    v4 = v3;
    v5 = OUTLINED_FUNCTION_24_7();
    v6(v5);
    sub_1D7F80220(v3, v7, v2, v8, v0);
  }

  OUTLINED_FUNCTION_87();
}

void PromiseCardViewController.cardViewAnimationCoordinator(_:shouldRecognizeSimultaneouslyWith:presentationState:)()
{
  OUTLINED_FUNCTION_86();
  v26 = v5;
  v27 = v6;
  OUTLINED_FUNCTION_6_26();
  if (v0 < 0)
  {
    v8 = v7;
    OUTLINED_FUNCTION_21_10();
    v10 = *v9;
    ObjectType = swift_getObjectType();
    v25[0] = v10;
    v12 = *(v3 + 64);
    v13 = v4;
    v14 = v12(v2, v1, v8, v25, ObjectType, v3);
    OUTLINED_FUNCTION_34_5(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  OUTLINED_FUNCTION_87();
}

uint64_t PromiseCardViewController.cardSplitViewShouldBePreserved.getter()
{
  OUTLINED_FUNCTION_26_6();
  if (v1 < 0)
  {
    v3 = *(v0 + 8);
    ObjectType = swift_getObjectType();
    v2 = (*(v3 + 8))(ObjectType, v3);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id PromiseCardViewController.cardViewAppearance.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_26_6();
  if (v2 < 0)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_11_18();
    return v6();
  }

  else
  {
    if (qword_1ECA0C340 != -1)
    {
      swift_once();
    }

    v3 = *algn_1ECA10558;
    v7 = qword_1ECA10550;
    *a1 = qword_1ECA10550;
    a1[1] = v3;
    v4 = v3;

    return v7;
  }
}

unint64_t sub_1D7F81250()
{
  result = qword_1ECA0E370;
  if (!qword_1ECA0E370)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31B0);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0E370);
  }

  return result;
}

uint64_t sub_1D7F8133C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 268435454;
    }

    else
    {
      v3 = *(a1 + 32);
      v2 = (((v3 >> 36) >> 27) & 0xF0000001 | (2 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | (*(a1 + 16) >> 50) & 0x3C00 | ((*(a1 + 16) & 7) << 7) & 0x3FFF | (*(a1 + 24) >> 43) & 0x1E0000 | ((*(a1 + 24) & 7) << 14) & 0x7FFFFFF | (v3 >> 36) & 0x7000000 | ((v3 & 7) << 21) & 0x7FFFFFF))) ^ 0xFFFFFFF;
      if (v2 >= 0xFFFFFFE)
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

uint64_t sub_1D7F813D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0xFFFFFFF;
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x7FFFFFF) - (a2 << 27);
      v4 = vdupq_n_s64(v3);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1D81A8610), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1D81A8620), vdupq_n_s64(0xF000000000000000)));
      *(result + 32) = ((v3 >> 21) | (v3 << 36)) & 0xF000000000000007;
    }
  }

  return result;
}

int8x16_t sub_1D7F81498(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFF8;
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  result = vandq_s8(*(a1 + 8), vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D7F814D4(uint64_t a1, uint64_t a2)
{
  sub_1D7F7EE18();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7F81538(uint64_t a1)
{
  sub_1D7F7EE18();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7F81594()
{
  OUTLINED_FUNCTION_9_14();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_14(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_14_13(v2);

  return v6(v4);
}

uint64_t sub_1D7F81678(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D7F81770;

  return v6(a1);
}

uint64_t sub_1D7F81770()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v1 = *v0;
  OUTLINED_FUNCTION_3_4();
  *v2 = v1;

  OUTLINED_FUNCTION_10_6();

  return v3();
}

uint64_t sub_1D7F81854()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_27_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_4(v1);

  return v4(v3);
}

void sub_1D7F818E4()
{
  if (!qword_1EDBB0618)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB0618);
    }
  }
}

uint64_t sub_1D7F81934()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_27_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_4(v1);

  return v4(v3);
}

id sub_1D7F819C4()
{
  v1 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v1;
  v2 = *(v0 + 56);
  v5 = *(v0 + 48);
  return sub_1D7F8022C(v4, v2);
}

uint64_t sub_1D7F81A00()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_27_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_4(v1);

  return v4(v3);
}

id sub_1D7F81AA4()
{
  [*(v0 + 24) setHidden_];
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  return [v1 setHidden_];
}

uint64_t BlueprintGutterViewManager.__allocating_init()()
{
  v0 = swift_allocObject();
  BlueprintGutterViewManager.init()();
  return v0;
}

uint64_t BlueprintGutterViewManager.init()()
{
  *(v0 + 16) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = sub_1D7F81B64();
  *(v0 + 32) = sub_1D7F81B64();
  return v0;
}

id sub_1D7F81B64()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v0 setUserInteractionEnabled_];
  v1 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor_];

  [v0 setHidden_];
  return v0;
}

id sub_1D7F81C10(void *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result addSubview_];

  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  [result addSubview_];

  return swift_unknownObjectWeakAssign();
}

void sub_1D7F81CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v10 = Strong;
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(&v55, ObjectType, a3);
  if (v55 != 1)
  {

LABEL_8:
    OUTLINED_FUNCTION_4_32();
    return;
  }

  v54 = (*(a5 + 56))(a4, a5);
  if (![v54 ts_safeAreaWidthExceedsReadableWidth])
  {
    [v54 safeAreaInsets];
    if (v41 <= 0.0)
    {

      v49 = OUTLINED_FUNCTION_0_63();
      [v50 v51];
      v40 = OUTLINED_FUNCTION_0_63();
      goto LABEL_13;
    }

    v42 = OUTLINED_FUNCTION_0_63();
    [v43 v44];
    [v54 bounds];
    Width = CGRectGetWidth(v61);
    [v54 layoutMargins];
    v47 = v46;
    [v54 layoutMargins];

    v48 = [v10 view];
    if (v48)
    {
      [v48 bounds];
      OUTLINED_FUNCTION_2_49();
      v62.origin.x = OUTLINED_FUNCTION_1_50();
      CGRectGetHeight(v62);
      v38 = OUTLINED_FUNCTION_3_46();
      v40 = Width - v47;
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v12 = *(v5 + 24);
  v13 = [v54 readableContentGuide];
  [v13 layoutFrame];
  v15 = v14;

  v16 = [v10 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v56.origin.x = v19;
  v56.origin.y = v21;
  v56.size.width = v23;
  v56.size.height = v25;
  [v12 setFrame_];
  v26 = [v54 readableContentGuide];
  [v26 layoutFrame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v57.origin.x = v28;
  v57.origin.y = v30;
  v57.size.width = v32;
  v57.size.height = v34;
  MaxX = CGRectGetMaxX(v57);
  [v54 bounds];
  CGRectGetWidth(v58);
  v36 = [v54 readableContentGuide];

  [v36 layoutFrame];
  OUTLINED_FUNCTION_2_49();
  v59.origin.x = OUTLINED_FUNCTION_1_50();
  CGRectGetMaxX(v59);
  v37 = [v10 view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v37 bounds];
  OUTLINED_FUNCTION_2_49();
  v60.origin.x = OUTLINED_FUNCTION_1_50();
  CGRectGetHeight(v60);
  v38 = OUTLINED_FUNCTION_3_46();
  v40 = MaxX;
LABEL_13:
  [v38 v39];

  OUTLINED_FUNCTION_4_32();
}

uint64_t BlueprintGutterViewManager.__deallocating_deinit()
{
  BlueprintGutterViewManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1D7F820F4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_textColor);
  *(v1 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_textColor) = a1;
  v3 = a1;

  sub_1D7F82958();
}

void sub_1D7F8214C(uint64_t a1, char a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_buttons;
    swift_beginAccess();
    v8 = *&v2[v7];
    v9 = v8 >> 62 ? sub_1D81920A4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 > a1)
    {
      v10 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex;
      v11 = *&v2[OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex];
      OUTLINED_FUNCTION_0_64();
      OUTLINED_FUNCTION_6_27();
      if (v4)
      {
        MEMORY[0x1DA714420](v11, v3);
      }

      else
      {
        v12 = *(v3 + 8 * v11 + 32);
      }

      OUTLINED_FUNCTION_8_18();
      [v11 setSelected_];

      v13 = *&v2[v10];
      OUTLINED_FUNCTION_0_64();
      OUTLINED_FUNCTION_6_27();
      if (v4)
      {
        MEMORY[0x1DA714420](v13, v3);
      }

      else
      {
        v14 = *(v3 + 8 * v13 + 32);
      }

      OUTLINED_FUNCTION_8_18();
      v15 = [v13 titleLabel];

      if (v15)
      {
        [v15 setFont_];
      }

      OUTLINED_FUNCTION_0_64();
      OUTLINED_FUNCTION_1_51();
      if (v15)
      {
        v24 = OUTLINED_FUNCTION_11_0();
        MEMORY[0x1DA714420](v24);
      }

      else
      {
        v16 = *(v13 + a1 + 4);
      }

      OUTLINED_FUNCTION_8_18();
      [v13 setSelected_];

      OUTLINED_FUNCTION_0_64();
      OUTLINED_FUNCTION_1_51();
      if (v15)
      {
        v25 = OUTLINED_FUNCTION_11_0();
        MEMORY[0x1DA714420](v25);
      }

      else
      {
        v17 = *(v13 + a1 + 4);
      }

      OUTLINED_FUNCTION_8_18();
      v18 = [v13 titleLabel];

      if (v18)
      {
        [v18 setFont_];
      }

      *&v2[v10] = a1;
      OUTLINED_FUNCTION_0_64();
      OUTLINED_FUNCTION_1_51();
      if (v18)
      {
        v26 = OUTLINED_FUNCTION_11_0();
        v19 = MEMORY[0x1DA714420](v26);
      }

      else
      {
        v19 = *(v13 + a1 + 4);
      }

      v20 = v19;
      swift_endAccess();
      v21 = [v20 titleLabel];

      if (v21 && (sub_1D7F83EA4(v21), v22))
      {
        v23 = sub_1D8190EE4();
      }

      else
      {
        v23 = 0;
      }

      [v2 setAccessibilityValue_];

      sub_1D7F83278(a2 & 1);
    }
  }
}

double sub_1D7F823E8()
{
  v1 = *MEMORY[0x1E69DE788];
  [*(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView) contentSize];
  return v1;
}

uint64_t sub_1D7F8242C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_dataSource + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1D7F8247C();

  return swift_unknownObjectRelease();
}

id sub_1D7F8247C()
{
  *&v0[OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex] = 0;
  sub_1D7F824BC();

  return [v0 setNeedsLayout];
}

uint64_t sub_1D7F824BC()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_buttons;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = sub_1D7E36AB8(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      sub_1D7F83F7C();
      sub_1D8190DB4();
      v31 = sub_1D81923B4();
      goto LABEL_22;
    }

    v1 = v4 & 0xC000000000000001;
    sub_1D8190DB4();
    for (i = 0; i != v6; ++i)
    {
      if (v1)
      {
        v8 = MEMORY[0x1DA714420](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      [v8 removeFromSuperview];
    }
  }

  *(v2 + v3) = MEMORY[0x1E69E7CC0];

  v10 = v2 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = *(v10 + 8);
  ObjectType = swift_getObjectType();
  v41 = v13;
  v14 = (*(v13 + 8))(v2);
  if (v14 < 0)
  {
    goto LABEL_30;
  }

  v1 = v14;
  if (v14)
  {
    v39 = *(v13 + 16);
    v36 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_unselectedButtonFont;
    v38 = *(v2 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView);
    v37 = type metadata accessor for ActionButton();
    v15 = 0;
    do
    {
      v16 = v1;
      v17 = [objc_allocWithZone(v37) initWithFrame_];
      v18 = v12;
      v19 = v39(v2, v15, ObjectType, v41);
      v21 = v20;
      v22 = v17;
      sub_1D7F83F14(v19, v21, 0, v22);
      sub_1D806B194(v19, v21, v22);
      v23 = *&v22[OBJC_IVAR____TtC5TeaUI12ActionButton_onTap];
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v15;
      v26 = v23;

      v27 = [v22 titleLabel];

      if (v27)
      {
        [v27 setFont_];
      }

      v28 = [v22 titleLabel];

      if (v28)
      {
        [v28 setTextAlignment_];
      }

      sub_1D7F83600(v22);
      swift_beginAccess();
      v29 = v22;
      MEMORY[0x1DA713500]();
      v12 = v18;
      if (*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      ++v15;
      sub_1D8191404();
      swift_endAccess();
      [v38 addSubview_];

      v1 = v16;
    }

    while (v16 != v15);
  }

  v30 = *(v2 + v3);
  if (v30 >> 62)
  {
    goto LABEL_31;
  }

  swift_bridgeObjectRetain_n();
  sub_1D81926A4();
  sub_1D7F83F7C();
  v31 = v30;
LABEL_22:

  sub_1D7F836FC(v31);

  sub_1D7F82ED4();
  v32 = *(v2 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView);
  [v32 adjustedContentInset];
  [v32 setContentOffset_];
  v34 = *(v2 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex);
  if (v34 >= v1)
  {
    if (v1 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v1;
    }

    v34 = v35 - 1;
    *(v2 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex) = v35 - 1;
  }

  sub_1D7F8214C(v34, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F82958()
{
  v1 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_buttons;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_1D81920A4();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D8190DB4();
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      sub_1D7F83600(v6);
    }
  }

  return result;
}

double sub_1D7F82A38()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView);
  [v1 contentSize];
  v3 = v2;
  [v1 frame];
  v5 = v3 - v4;
  [v1 adjustedContentInset];
  return v5 + v6;
}

char *sub_1D7F82AA4()
{
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_spacing) = 0x4038000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_minWidth) = 0x4046000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_maxWidth) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_defaultInset) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_height) = 0x403B000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_textAlpha) = 0x3FE6666666666666;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_highlightedTextAlpha) = 0x3FECCCCCCCCCCCCDLL;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedTextAlpha) = 0x3FF0000000000000;
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI19SectionSelectorView_delegate);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI19SectionSelectorView_dataSource);
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_buttons) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_unselectedButtonFont;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB978]];
  v4 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedButtonFont;
  *(v0 + v4) = [v3 systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB980]];
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_textColor) = v6;
  v7 = OUTLINED_FUNCTION_80();
  v10 = objc_msgSendSuper2(v8, v9, v7);
  v11 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView;
  v12 = *&v10[OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView];
  v13 = v10;
  [v13 addSubview_];
  v14 = *&v10[v11];
  v26.origin.x = OUTLINED_FUNCTION_80();
  Width = CGRectGetWidth(v26);
  v27.origin.x = OUTLINED_FUNCTION_80();
  [v14 setFrame_];

  sub_1D7F82ED4();
  v16 = *&v10[v11];
  v17 = [v5 clearColor];
  [v16 setBackgroundColor_];

  [*&v10[v11] setDecelerationRate_];
  [*&v10[v11] setShowsVerticalScrollIndicator_];
  [*&v10[v11] setShowsHorizontalScrollIndicator_];
  [*&v10[v11] setAlwaysBounceVertical_];
  [*&v10[v11] setAlwaysBounceHorizontal_];
  [*&v10[v11] setDelegate_];
  [v13 setIsAccessibilityElement_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_1D818E514();

  v20 = OUTLINED_FUNCTION_11_0();
  sub_1D806B194(v20, v21, v13);
  v22 = *MEMORY[0x1E69DD9A8];
  v23 = [v13 accessibilityTraits];
  if ((v22 & ~v23) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  [v13 setAccessibilityTraits_];

  return v13;
}

id sub_1D7F82ED4()
{
  [v0 bounds];
  Width = CGRectGetWidth(v11);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView];
  [v2 contentSize];
  v4 = Width - v3;
  [v2 contentSize];
  v6 = v5;
  [v0 bounds];
  v7 = CGRectGetWidth(v12);
  v8 = v4 * 0.5;
  if (v6 >= v7)
  {
    v8 = 8.0;
  }

  return [v2 setContentInset_];
}

void sub_1D7F82FB8()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_spacing) = 0x4038000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_minWidth) = 0x4046000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_maxWidth) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_defaultInset) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_height) = 0x403B000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_textAlpha) = 0x3FE6666666666666;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_highlightedTextAlpha) = 0x3FECCCCCCCCCCCCDLL;
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedTextAlpha) = 0x3FF0000000000000;
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI19SectionSelectorView_delegate);
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI19SectionSelectorView_dataSource);
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_buttons) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_unselectedButtonFont;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB978]];
  v4 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedButtonFont;
  *(v0 + v4) = [v3 systemFontOfSize:13.0 weight:*MEMORY[0x1E69DB980]];
  sub_1D81923A4();
  __break(1u);
}

void sub_1D7F83194()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 bounds];
  v16.origin.x = v10;
  v16.origin.y = v11;
  v16.size.width = v12;
  v16.size.height = v13;
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  if (!CGRectEqualToRect(v15, v16))
  {
    [v0 bounds];
    [v1 setFrame_];
    sub_1D7F82ED4();
    sub_1D7F83278(0);
  }
}

void sub_1D7F83278(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_buttons;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (!sub_1D81920A4())
    {
      return;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v5 = *(v1 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex);
  swift_beginAccess();
  v6 = *(v1 + v3);
  sub_1D7E33DD8(v5, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA714420](v5, v6);
  }

  else
  {
    v7 = *(v6 + 8 * v5 + 32);
  }

  v8 = v7;
  swift_endAccess();
  [v8 center];
  v10 = v9;
  v11 = *(v1 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView);
  [v11 bounds];
  v12 = v10 + CGRectGetWidth(v16) * -0.5;
  v13 = sub_1D7F82A38();
  [v11 adjustedContentInset];
  v15 = -v14;
  if (v12 >= -v14)
  {
    v15 = v12;
  }

  if (v15 < v13)
  {
    v13 = v15;
  }

  [v11 contentOffset];
  [v11 setContentOffset:a1 & 1 animated:v13];
}

void sub_1D7F8354C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7F83600(void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_textColor;
  v4 = [*(v1 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_textColor) colorWithAlphaComponent_];
  [a1 setTitleColor:v4 forState:0];

  v5 = [*(v1 + v3) colorWithAlphaComponent_];
  [a1 setTitleColor:v5 forState:1];

  v6 = [*(v1 + v3) colorWithAlphaComponent_];
  [a1 setTitleColor:v6 forState:4];
}

uint64_t sub_1D7F836FC(uint64_t a1)
{
  result = sub_1D7E36AB8(a1);
  if (result)
  {
    v3 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v27 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_unselectedButtonFont;
    v28 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedButtonFont;
    v5 = 0.0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 titleLabel];
      v9 = [v8 font];

      if (!v9)
      {
        v9 = *(v29 + v27);
      }

      v10 = [v7 titleLabel];
      if (v10)
      {
        v11 = v10;
        [v10 setFont_];
      }

      v12 = v7;
      [v12 intrinsicContentSize];
      [v12 frame];
      [v12 setFrame_];
      [v12 frame];
      [v12 setFrame_];
      [v12 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      Width = CGRectGetWidth(v31);
      v22 = [v12 titleLabel];
      if (v22)
      {
        v23 = v22;
        v24 = v9;
        [v23 setFont_];
      }

      ++v4;
      v5 = v5 + Width + 24.0;
    }

    while (v3 != v4);
    v25 = v5 + -24.0;
  }

  else
  {
    v25 = -24.0;
  }

  v26 = *(v29 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView);

  return [v26 setContentSize_];
}

void sub_1D7F8399C(uint64_t a1, double *a2)
{
  v4 = v2;
  v6 = OBJC_IVAR____TtC5TeaUI19SectionSelectorView_buttons;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = sub_1D7E36AB8(v7);
  sub_1D8190DB4();
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      v3 = 0;
      goto LABEL_12;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA714420](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v3 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v18 = v3;
      sub_1D8190DB4();
      v14 = MEMORY[0x1DA714420](0, v7);

LABEL_17:
      type metadata accessor for ActionButton();
      v15 = sub_1D8191CC4();

      if (v15)
      {
        [*(v4 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_scrollView) adjustedContentInset];
        MinX = -v16;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    [v10 frame];
    if (*a2 < CGRectGetMidX(v19))
    {
      break;
    }
  }

LABEL_12:
  v11 = *a2;
  if (sub_1D7F82A38() <= v11)
  {
    MinX = sub_1D7F82A38();
    goto LABEL_21;
  }

  if (!v3)
  {
    return;
  }

  v7 = *(v4 + v6);
  if (sub_1D7E36AB8(v7))
  {
    sub_1D7E33DD8(0, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_25;
    }

    v12 = *(v7 + 32);
    v13 = v3;
    v14 = v12;
    goto LABEL_17;
  }

LABEL_20:
  [v3 frame];
  MinX = CGRectGetMinX(v20);
LABEL_21:
  *a2 = MinX;
}

uint64_t sub_1D7F83C08()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_4_33();
  result = v3(v2);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex);
  if (v4 != result - 1)
  {
    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v5 = 0;
LABEL_7:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = OUTLINED_FUNCTION_3_47();
    v7(v6);
    swift_unknownObjectRelease();
  }

  sub_1D7F8214C(v5, 1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F83D5C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_4_33();
  result = v3(v2);
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = *(v0 + OBJC_IVAR____TtC5TeaUI19SectionSelectorView_selectedIndex);
  if (v5)
  {
    v4 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      goto LABEL_12;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = OUTLINED_FUNCTION_3_47();
    v7(v6);
    swift_unknownObjectRelease();
  }

  sub_1D7F8214C(v4, 1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7F83EA4(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D8190F14();

  return v3;
}

void sub_1D7F83F14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D8190EE4();
  [a4 setTitle:v6 forState:a3];
}

unint64_t sub_1D7F83F7C()
{
  result = qword_1EDBB2F10;
  if (!qword_1EDBB2F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2F10);
  }

  return result;
}

uint64_t sub_1D7F83FC0@<X0>(void *a1@<X0>, uint64_t (**a2)(double *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D7F84CC8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D7E19F24(v4);
}

uint64_t sub_1D7F84060(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D7F84C90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D7E19F24(v3);
  return sub_1D7E0E10C(v8);
}

uint64_t MicaView.onScreenClosure.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure);
  swift_beginAccess();
  v2 = *v1;
  sub_1D7E19F24(*v1);
  return v2;
}

uint64_t MicaView.onScreenClosure.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1D7E0E10C(v6);
}

Swift::Void __swiftcall MicaView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC5TeaUI8MicaView_packageSize];
    if ((v0[OBJC_IVAR____TtC5TeaUI8MicaView_packageSize + 16] & 1) == 0)
    {
      v3 = *v2;
      if (*v2 > 0.0)
      {
        v4 = v2[1];
        if (v4 > 0.0)
        {
          v5 = v1;
          [v0 bounds];
          v6 = CGRectGetWidth(v11) / v3;
          [v0 bounds];
          v7 = CGRectGetHeight(v12) / v4;
          memcpy(&v9, MEMORY[0x1E69792E8], sizeof(v9));
          [v5 setTransform_];
          [v0 bounds];
          v8 = CGRectGetWidth(v13) * 0.5;
          [v0 bounds];
          [v5 setPosition_];
          CATransform3DMakeScale(&v9, v6, v7, 1.0);
          [v5 setTransform_];
        }
      }
    }
  }
}

void MicaView.apply(package:)(void *a1)
{
  MicaView.prepareForReuse()();
  v3 = [a1 rootLayer];
  if (v3)
  {
    v4 = v3;
    [v3 setGeometryFlipped_];
    v11[4] = sub_1D7F845E4;
    v11[5] = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D7F845F8;
    v11[3] = &block_descriptor_18;
    v5 = _Block_copy(v11);
    [a1 foreachLayer_];
    _Block_release(v5);
    v6 = [v1 layer];
    [v6 addSublayer_];

    [v4 bounds];
    v7 = &v1[OBJC_IVAR____TtC5TeaUI8MicaView_packageSize];
    *v7 = v8;
    *(v7 + 1) = v9;
    v7[16] = 0;
    v10 = *&v1[OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer];
    *&v1[OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer] = v4;
  }
}

Swift::Void __swiftcall MicaView.prepareForReuse()()
{
  v1 = OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer);
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v3 = (v0 + OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure);
  swift_beginAccess();
  v4 = *v3;
  *v3 = 0;
  v3[1] = 0;
  sub_1D7E0E10C(v4);
  OUTLINED_FUNCTION_0_65(OBJC_IVAR____TtC5TeaUI8MicaView_packageSize);
  *(v5 + 16) = 1;
  v6 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_1D7F845F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void MicaView.start(mediaTiming:)(uint64_t a1, double a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 65);
  v11 = OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer;
  v12 = *(v2 + OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer);
  if (v12)
  {
    v13 = *(a1 + 12);
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v17 = v12;
    [v17 setBeginTime_];

    v18 = *(v2 + v11);
    if (v18)
    {
      v19 = 0.0;
      if (!((v5 == 1) | v16 & 1))
      {
        v19 = v15;
      }

      [v18 setTimeOffset_];
      v20 = *(v2 + v11);
      if (v20)
      {
        LODWORD(a2) = 1.0;
        if (!((v5 == 1) | v14 & 1))
        {
          *&a2 = v13;
        }

        [v20 setSpeed_];
      }
    }
  }

  if (v5)
  {
    if (v5 == 1)
    {
LABEL_27:
      OUTLINED_FUNCTION_3_48();
      return;
    }

    v21 = *(v2 + v11);
    if (v21)
    {
      [v21 setFillMode_];
    }
  }

  if ((v4 & 1) == 0)
  {
    v22 = *(v2 + v11);
    if (v22)
    {
      [v22 setDuration_];
    }
  }

  if ((v7 & 1) == 0)
  {
    v23 = *(v2 + v11);
    if (v23)
    {
      LODWORD(a2) = v6;
      [v23 setRepeatCount_];
    }
  }

  if ((v9 & 1) == 0)
  {
    v24 = *(v2 + v11);
    if (v24)
    {
      [v24 setRepeatDuration_];
    }
  }

  if (v10 == 2 || !*(v2 + v11))
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_3_48();

  [v25 v26];
}

Swift::Void __swiftcall MicaView.pause(seek:)(Swift::Double seek)
{
  v2 = OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer;
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer);
  if (v3)
  {
    [v3 setSpeed_];
    v5 = *(v1 + v2);
    if (v5)
    {
      [v5 setTimeOffset_];
      v6 = *(v1 + v2);
      if (v6)
      {

        [v6 setBeginTime_];
      }
    }
  }
}

id MicaView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id MicaView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_65(OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure);
  *(v0 + OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer) = 0;
  OUTLINED_FUNCTION_0_65(OBJC_IVAR____TtC5TeaUI8MicaView_packageSize);
  *(v1 + 16) = 1;
  v7 = v2;
  v3 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v4, v5, v3, v0, v7);
}

id MicaView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MicaView.init(coder:)(void *a1)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_65(OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure);
  *&v1[OBJC_IVAR____TtC5TeaUI8MicaView_packageLayer] = 0;
  OUTLINED_FUNCTION_0_65(OBJC_IVAR____TtC5TeaUI8MicaView_packageSize);
  *(v3 + 16) = 1;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id MicaView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MicaView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC5TeaUI8MicaView_onScreenClosure];
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {

    [v3 bounds];
    if (CGRectGetHeight(v18) > 0.0)
    {
      v8 = *(a2 + 16);
      [v3 bounds];
      [v8 convertRect:v3 fromCoordinateSpace:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [v8 bounds];
      v22.origin.x = v10;
      v22.origin.y = v12;
      v22.size.width = v14;
      v22.size.height = v16;
      v20 = CGRectIntersection(v19, v22);
      Height = CGRectGetHeight(v20);
      [v3 bounds];
      if (Height / CGRectGetHeight(v21) > 0.0)
      {
        v7();
      }
    }

    return sub_1D7E0E10C(v7);
  }

  return result;
}

uint64_t sub_1D7F84C90(double a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id sub_1D7F84D08(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a1[1];
  v7 = *(a1 + 4);
  v6 = *(a1 + 5);
  v8 = *(a2 + 40);
  if (!a4)
  {
    return OUTLINED_FUNCTION_0_66(v8, v6, v7, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, *a1, v5, v51, v52, v53, v54);
  }

  v12 = OUTLINED_FUNCTION_0_66(v8, v6, v7, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, *a1, v5, v51, v52, v53, v54);
  v13 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  if (!a5)
  {
    goto LABEL_7;
  }

  if (a5 == 1)
  {
    v14 = [a4 CGImage];
    if (v14)
    {
      v15 = v14;
      [a4 scale];
      v17 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v15 scale:4 orientation:v16];

      [v13 setImage_];
      goto LABEL_8;
    }

LABEL_7:
    [v13 setImage_];
  }

LABEL_8:
  v19 = [v13 image];
  if (v19)
  {
    v20 = v19;
    [a3 capHeight];
    v22 = v21;
    [v20 size];
    v24 = (v22 - v23) * 0.5;
    [v20 size];
    [v13 setBounds_];
  }

  v27 = [objc_opt_self() attributedStringWithAttachment_];
  sub_1D7E0A1A8(0, &qword_1EDBB3168);
  v28 = sub_1D8049DF0();
  [v12 appendAttributedString_];

  [v12 appendAttributedString_];
  sub_1D7F854E8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  v30 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  *(inited + 40) = a3;
  type metadata accessor for Key();
  sub_1D7E4DB28();
  v31 = v30;
  v32 = a3;
  sub_1D8190D94();
  v33 = sub_1D8190D44();

  v18 = v12;
  [v18 addAttributes:v33 range:{0, objc_msgSend(v18, sel_length)}];

  return v18;
}

id sub_1D7F85040(uint64_t *a1, uint64_t *a2)
{
  v54 = a1[1];
  v55 = *a1;
  v2 = a1[3];
  v3 = *(a1 + 4);
  v4 = a1[5];
  v5 = a2[1];
  v52 = *a2;
  v53 = a1[2];
  v7 = a2[2];
  v6 = a2[3];
  v8 = *(a2 + 4);
  v56 = a2[5];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v9 setAlignment_];
  [v9 setLineHeightMultiple_];
  if (v5)
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
    sub_1D8190DB4();
    v51 = v7;
    v11 = v7;
    v12 = [v10 init];
    [v12 setAlignment_];
    [v12 setLineHeightMultiple_];
    sub_1D7F854E8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D81A1B70;
    v14 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v50 = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
    *(inited + 40) = v11;
    v15 = *MEMORY[0x1E69DB688];
    *(inited + 64) = v50;
    *(inited + 72) = v15;
    v49 = sub_1D7E0A1A8(0, &unk_1EDBB31C0);
    *(inited + 80) = v12;
    v16 = *MEMORY[0x1E69DB660];
    *(inited + 104) = v49;
    *(inited + 112) = v16;
    *(inited + 144) = MEMORY[0x1E69E7DE0];
    *(inited + 120) = v56;
    type metadata accessor for Key();
    sub_1D7E4DB28();
    v17 = v14;
    v18 = v15;
    v19 = v16;
    v47 = v17;
    v46 = v18;
    v20 = v19;
    sub_1D8190DB4();
    v21 = v11;
    v48 = v12;
    v22 = sub_1D8190D94();
    v23 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v24 = sub_1D7F85540(v52, v5, v22);
    sub_1D7E0A1A8(0, &qword_1EDBB3168);
    v25 = sub_1D8049DF0();
    [v24 appendAttributedString_];

    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1D81A1B70;
    *(v26 + 32) = v47;
    *(v26 + 40) = v53;
    *(v26 + 64) = v50;
    *(v26 + 72) = v46;
    *(v26 + 80) = v9;
    *(v26 + 104) = v49;
    *(v26 + 112) = v20;
    *(v26 + 144) = MEMORY[0x1E69E7DE0];
    *(v26 + 120) = v4;
    sub_1D8190DB4();
    v27 = v53;
    v28 = v9;
    v29 = sub_1D8190D94();
    v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v31 = sub_1D7F3A980(v55, v54, v29);
    [v24 appendAttributedString_];

    sub_1D7F855E8(v52, v5, v51);
  }

  else
  {
    sub_1D7F854E8();
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1D81A1B70;
    v33 = *MEMORY[0x1E69DB650];
    *(v32 + 32) = *MEMORY[0x1E69DB650];
    v34 = sub_1D7E0A1A8(0, &qword_1EDBB2F68);
    *(v32 + 40) = v53;
    v35 = *MEMORY[0x1E69DB688];
    *(v32 + 64) = v34;
    *(v32 + 72) = v35;
    v36 = sub_1D7E0A1A8(0, &unk_1EDBB31C0);
    *(v32 + 80) = v9;
    v37 = *MEMORY[0x1E69DB660];
    *(v32 + 104) = v36;
    *(v32 + 112) = v37;
    *(v32 + 144) = MEMORY[0x1E69E7DE0];
    *(v32 + 120) = v4;
    type metadata accessor for Key();
    sub_1D7E4DB28();
    sub_1D8190DB4();
    v38 = v53;
    v39 = v9;
    v40 = v33;
    v41 = v35;
    v42 = v37;
    v43 = sub_1D8190D94();
    v44 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v24 = sub_1D7F85540(v55, v54, v43);
  }

  return v24;
}

void sub_1D7F854E8()
{
  if (!qword_1EDBB2C30)
  {
    sub_1D7F66EA4();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2C30);
    }
  }
}

id sub_1D7F85540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D8190EE4();

  if (a3)
  {
    type metadata accessor for Key();
    sub_1D7E4DB28();
    v6 = sub_1D8190D44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

void sub_1D7F855E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void *StatusBannerContainerController.statusBannerViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController);
  v2 = v1;
  return v1;
}

id StatusBannerContainerController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

BOOL sub_1D7F857F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1D7E488A8();
  }

  else
  {
    return 0;
  }

  return v2;
}

void sub_1D7F85864()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7F85A3C();
  }
}

id sub_1D7F858B8()
{
  if ((sub_1D8190B24() & 1) == 0)
  {
    return [*&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController] _shouldOverlayTabBar];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusBannerContainerController();
  return objc_msgSendSuper2(&v2, sel__shouldOverlayTabBar);
}

void *sub_1D7F85978()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController);
  v2 = v1;
  return v1;
}

id sub_1D7F859A8(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController) contentScrollViewForEdge_];

  return v2;
}

id sub_1D7F85A3C()
{
  v1 = objc_opt_self();
  if ([v1 areAnimationsEnabled])
  {
    if (sub_1D7E488A8())
    {
      result = [*&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController] view];
      if (!result)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      v3 = result;
      [result setHidden_];
    }

    OUTLINED_FUNCTION_0_8();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1D7F87430;
    *(v5 + 24) = v4;
    v21 = sub_1D7E74D6C;
    v22 = v5;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1D7E74D74;
    v20 = &block_descriptor_19;
    v6 = _Block_copy(&v17);
    v7 = v0;

    [v1 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      result = [v7 view];
      if (result)
      {
        v8 = result;
        [result setNeedsLayout];

        OUTLINED_FUNCTION_0_8();
        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        v21 = sub_1D7F87438;
        v22 = v9;
        v17 = MEMORY[0x1E69E9820];
        v18 = 1107296256;
        v19 = sub_1D7E64940;
        v20 = &block_descriptor_17;
        v10 = _Block_copy(&v17);
        v11 = v7;

        OUTLINED_FUNCTION_0_8();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        v21 = sub_1D7F87440;
        v22 = v12;
        v17 = MEMORY[0x1E69E9820];
        v18 = 1107296256;
        v19 = sub_1D7EB30D4;
        v20 = &block_descriptor_23_0;
        v13 = _Block_copy(&v17);
        v14 = v11;

        [v1 animateWithDuration:v10 animations:v13 completion:0.3];
        _Block_release(v13);
        _Block_release(v10);
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_14;
  }

  result = [*&v0[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController] view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = result;
  [result setHidden_];

  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  [result setNeedsLayout];

  return [v0 _updateTabBarLayout];
}

void sub_1D7F85E1C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id sub_1D7F85EC8(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v3 = result;
    [result layoutIfNeeded];

    return [a1 setNeedsStatusBarAppearanceUpdate];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7F85F34(uint64_t a1, char *a2)
{
  if (!sub_1D7E488A8())
  {
    result = [*&a2[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController] view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    [result setHidden_];
  }

  return [a2 _updateTabBarLayout];
}

id StatusBannerContainerController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id StatusBannerContainerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusBannerContainerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StatusBannerContainerController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for StatusBannerContainerController();
  objc_msgSendSuper2(&v5, sel_setEditing_animated_, _, animated);
  [*&v2[OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController] setEditing:_ animated:animated];
}

id StatusBannerContainerController.tabBarItem.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController) tabBarItem];

  return v1;
}

void StatusBannerContainerController.tabBarItem.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController) setTabBarItem_];
}

uint64_t StatusBannerContainerController.tabBarNavigationBarVisiblity.getter@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_5_26();
  sub_1D7E0631C(0, &unk_1EDBB1D08);
  v2 = v14;
  v3 = OUTLINED_FUNCTION_12_1();
  if (v3)
  {
    OUTLINED_FUNCTION_16_15(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16[0]);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v12 = v18;
      v13 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v13 + 16))(v12, v13);
      return __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    result = sub_1D7E9DD24(v16, &qword_1EDBB1D00, &unk_1EDBB1D08);
  }

  *a1 = 1;
  return result;
}

uint64_t StatusBannerContainerController.shouldSelectOnCollapse.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v1;
    if ([v2 topViewController])
    {
      sub_1D7E194D0();
      sub_1D7E0631C(0, &unk_1EDBB1D08);
      if (swift_dynamicCast())
      {
        if (v8)
        {
          sub_1D7E05450(&v7, v9);
          v4 = v10;
          v5 = v11;
          __swift_project_boxed_opaque_existential_1(v9, v10);
          LOBYTE(v2) = (*(v5 + 24))(v4, v5);

          __swift_destroy_boxed_opaque_existential_1Tm(v9);
          return v2 & 1;
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

    sub_1D7E9DD24(&v7, &qword_1EDBB1D00, &unk_1EDBB1D08);
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t StatusBannerContainerController.identifier.getter()
{
  OUTLINED_FUNCTION_5_26();
  v0 = sub_1D7E0631C(0, &unk_1EDBB1D08);
  OUTLINED_FUNCTION_8_19(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  if (OUTLINED_FUNCTION_2_50())
  {
    sub_1D7E05450(v11, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v8 = sub_1D818EF94();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v11, &qword_1EDBB1D00, &unk_1EDBB1D08);
    return 0;
  }

  return v8;
}

Swift::Void __swiftcall StatusBannerContainerController.set(previewing:)(Swift::Bool previewing)
{
  v8 = *(v1 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_rootViewController);
  sub_1D7E194D0();
  sub_1D7E0631C(0, &qword_1EDBAFF48);
  v3 = v8;
  if (OUTLINED_FUNCTION_12_1())
  {
    sub_1D7E05450(v7, v9);
    v4 = v9[3];
    v5 = v9[4];
    OUTLINED_FUNCTION_17_12(v9);
    (*(v5 + 8))(previewing, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_0_38();
    sub_1D7E9DD24(v7, &qword_1ECA0DD50, &qword_1EDBAFF48);
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      [v6 setPreviewing_];
    }
  }
}

uint64_t StatusBannerContainerController.cardSplitViewPresentation(for:)(char *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7_25();
  sub_1D7E0631C(0, &qword_1EDBB0C88);
  v2 = v42;
  OUTLINED_FUNCTION_18_2(v2, v3, v4, v5, v6, v7, v8, v9, v38, v40, v42, v44, v46[0]);
  v10 = swift_dynamicCast();
  if (v10)
  {
    OUTLINED_FUNCTION_19_10(v10, v11, v12, v13);
    v14 = v50;
    v15 = v51;
    OUTLINED_FUNCTION_17_12(v49);
    v46[0] = v1;
    (*(v15 + 16))(v46, v14, v15);
    return __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  OUTLINED_FUNCTION_2_3();
  sub_1D7E9DD24(v46, &qword_1EDBB0C80, &qword_1EDBB0C88);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = v2;
    v19 = [v17 childViewControllers];
    sub_1D7E194D0();
    v20 = sub_1D8191314();

    if (sub_1D7E36AB8(v20))
    {
      sub_1D7E33DD8(0, (v20 & 0xC000000000000001) == 0, v20);
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1DA714420](0, v20);
      }

      else
      {
        v21 = *(v20 + 32);
      }

      v22 = v21;

      v48 = v22;
      OUTLINED_FUNCTION_18_2(v23, v24, v25, v26, v27, v28, v29, v30, v39, v41, v43, v45, v46[0]);
      v31 = swift_dynamicCast();
      if (v31)
      {
        if (v47)
        {
          OUTLINED_FUNCTION_19_10(v31, v32, v33, v34);
          v35 = v50;
          v36 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v46[0] = v1;
          (*(v36 + 16))(v46, v35, v36);

          return __swift_destroy_boxed_opaque_existential_1Tm(v49);
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
      }
    }

    else
    {

      OUTLINED_FUNCTION_2_3();
    }

    sub_1D7E9DD24(v46, &qword_1EDBB0C80, &qword_1EDBB0C88);
  }

  result = OUTLINED_FUNCTION_3_49();
  __break(1u);
  return result;
}

uint64_t StatusBannerContainerController.cardSplitViewShouldBePreserved.getter()
{
  OUTLINED_FUNCTION_7_25();
  sub_1D7E0631C(0, &qword_1EDBB0C88);
  v0 = v33;
  OUTLINED_FUNCTION_18_2(v0, v1, v2, v3, v4, v5, v6, v7, v29, v31, v33, v35, v37);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v37, v40);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v8 = OUTLINED_FUNCTION_4_1();
    v10 = v9(v8);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return v10 & 1;
  }

  OUTLINED_FUNCTION_2_3();
  sub_1D7E9DD24(&v37, &qword_1EDBB0C80, &qword_1EDBB0C88);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = v0;
    v14 = [v12 childViewControllers];
    sub_1D7E194D0();
    v15 = sub_1D8191314();

    if (sub_1D7E36AB8(v15))
    {
      sub_1D7E33DD8(0, (v15 & 0xC000000000000001) == 0, v15);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA714420](0, v15);
      }

      else
      {
        v16 = *(v15 + 32);
      }

      v17 = v16;

      v39 = v17;
      OUTLINED_FUNCTION_18_2(v18, v19, v20, v21, v22, v23, v24, v25, v30, v32, v34, v36, v37);
      if (swift_dynamicCast())
      {
        if (v38)
        {
          sub_1D7E05450(&v37, v40);
          v26 = v41;
          v27 = v42;
          __swift_project_boxed_opaque_existential_1(v40, v41);
          v10 = (*(v27 + 8))(v26, v27);

          goto LABEL_10;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
      }
    }

    else
    {

      OUTLINED_FUNCTION_2_3();
    }

    sub_1D7E9DD24(&v37, &qword_1EDBB0C80, &qword_1EDBB0C88);
  }

  result = OUTLINED_FUNCTION_3_49();
  __break(1u);
  return result;
}