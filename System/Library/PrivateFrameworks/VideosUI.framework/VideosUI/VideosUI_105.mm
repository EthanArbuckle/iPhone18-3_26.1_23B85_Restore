void sub_1E3EDDBC4()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v0;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageViewController);
  if (!v11)
  {
    goto LABEL_79;
  }

  v121 = v119 - v10;
  type metadata accessor for UnifiedMessagingAccountMessageViewModel();
  v122 = v11;
  v12 = sub_1E375D4BC();
  v125 = v4;
  if (!v12)
  {
    v128 = 0u;
    v129 = 0u;
    goto LABEL_7;
  }

  *&v128 = sub_1E4205F14();
  *(&v128 + 1) = v13;
  sub_1E4207414();
  sub_1E375D7E8(v127, v12, &v128);
  sub_1E375D84C(v127);
  if (!*(&v129 + 1))
  {
LABEL_7:
    sub_1E325F748(&v128, &unk_1ECF296E0);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v14 = v127[0];
    goto LABEL_9;
  }

LABEL_8:
  v14 = 1;
LABEL_9:
  v124 = v14;
  v15 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_pastFirstViewDidAppear;
  v16 = *(v0 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_pastFirstViewDidAppear);
  v17 = MEMORY[0x1E69E7D40];
  v126 = v0 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (v16)
  {
    v18 = v1;
    v19 = v6;
    v20 = v12;
    v21 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8);
    v22 = v21();
    [v22 contentOffset];
    v24 = v23;

    v25 = v21();
    v12 = v20;
    v6 = v19;
    v1 = v18;
    v26 = v25;
    [v25 adjustedContentInset];
    v28 = v27;

    v17 = MEMORY[0x1E69E7D40];
    v29 = v24 == -v28;
  }

  else
  {
    v29 = 1;
  }

  v30 = *((*v17 & *v3) + 0x1B8);
  v123 = (*v17 & *v3) + 440;
  v31 = v30();
  v32 = [v31 visibleCells];

  sub_1E3280A90(0, &qword_1EE23B120);
  v33 = sub_1E42062B4();

  v34 = sub_1E32AE9B0(v33);

  if (v34 || *(v3 + v15) == 1)
  {
    if (!v29)
    {
LABEL_26:
      v120 = 0;
      goto LABEL_27;
    }

    if (v124)
    {
      v120 = 0;
      goto LABEL_17;
    }

LABEL_23:
    if (*(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_viewIsVisibleForAccountMessage) == 1)
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v35 = v125;
      v45(v2);
      v46 = sub_1E41FFC94();
      v47 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v47))
      {
        v48 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_37_7(v48);
        OUTLINED_FUNCTION_82_0();
        _os_log_impl(v49, v50, v51, v52, v53, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v118 = *(v6 + 8);
      v117 = v2;
      goto LABEL_78;
    }

    goto LABEL_26;
  }

  v120 = v124;
  if (v29)
  {
    if (v124)
    {
      v120 = 1;
LABEL_17:
      if ((*(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_viewIsVisibleForAccountMessage) & 1) == 0)
      {

        sub_1E324FBDC();
        OUTLINED_FUNCTION_2_26();
        v35 = v125;
        v36(v121);
        v37 = sub_1E41FFC94();
        v38 = sub_1E4206814();
        if (OUTLINED_FUNCTION_161(v38))
        {
          v39 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_37_7(v39);
          OUTLINED_FUNCTION_82_0();
          _os_log_impl(v40, v41, v42, v43, v44, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v117 = OUTLINED_FUNCTION_110_12();
LABEL_78:
        v118(v117, v35);
        goto LABEL_79;
      }

      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_27:
  LODWORD(v121) = v29;
  v54 = [v3 vuiParentViewController];
  if (!v54)
  {
    v54 = *(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController);
    v55 = v54;
  }

  v56 = [v3 vuiView];
  if (!v56)
  {
    __break(1u);
    goto LABEL_81;
  }

  v57 = v56;
  v58 = [v56 window];

  if (v58)
  {
    goto LABEL_31;
  }

  Height = 0.0;
  if (!v54)
  {
    v58 = 0;
    goto LABEL_45;
  }

  v63 = [v54 vuiView];
  if (!v63)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v64 = v63;
  v58 = [v63 window];

  if (v58)
  {
    goto LABEL_31;
  }

  v65 = [v54 navigationController];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 vuiView];

    if (!v67)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v58 = [v67 window];

    if (v58)
    {
LABEL_31:
      v59 = [v58 windowScene];
      Height = 0.0;
      if (v59)
      {
        v61 = v59;
        v62 = [v59 statusBarManager];

        if (v62)
        {
          [v62 statusBarFrame];
          OUTLINED_FUNCTION_3();

          v130.origin.x = OUTLINED_FUNCTION_6();
          Height = CGRectGetHeight(v130);
        }
      }

LABEL_45:
      v119[1] = v12;
      v70 = [v3 view];
      if (v70)
      {
        v71 = v70;
        [v70 safeAreaInsets];
        v73 = v72;

        if (v73 <= Height)
        {
          v78 = 44.0;
        }

        else
        {
          v74 = [v3 view];
          if (!v74)
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v75 = v74;
          [v74 safeAreaInsets];
          v77 = v76;

          v78 = v77 - Height;
        }

        v79 = [v3 vuiView];
        if (v79)
        {
          v80 = v79;
          [v79 bounds];
          OUTLINED_FUNCTION_9_10();

          v131.origin.x = OUTLINED_FUNCTION_24_0();
          if (CGRectGetWidth(v131) == 0.0)
          {
            if (!v54)
            {
              v84 = 0.0;
              v86 = 0.0;
LABEL_58:
              v87 = v122;
              v88 = [v87 vuiView];
              if (v88)
              {
                v89 = v88;
                [v88 sizeThatFits_];
                v91 = v90;

                v92 = v30();
                [v92 contentInset];
                [v92 setContentInset_];

                v93 = -(Height + v91);
                (*((*MEMORY[0x1E69E7D40] & *v3) + 0x340))(v93);
                [v3 vui:v87 addChildViewController:?];
                v94 = [v3 &selRef_viewControllerWithDocumentDataSource_appContext_documentOptions_ + 3];
                if (v94)
                {
                  v95 = v94;
                  v96 = [v87 &selRef_viewControllerWithDocumentDataSource_appContext_documentOptions_ + 3];

                  [v95 vui:v96 addSubview:0 oldView:?];
                  sub_1E3A51640(*&Height, 0);
                  v97 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
                  OUTLINED_FUNCTION_3_0();
                  *(v87 + v97) = 1;
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_2_26();
                  v98(v1);
                  v99 = sub_1E41FFC94();
                  v100 = sub_1E4206814();
                  if (os_log_type_enabled(v99, v100))
                  {
                    v101 = swift_slowAlloc();
                    *v101 = 67109632;
                    *(v101 + 4) = v121;
                    *(v101 + 8) = 1024;
                    *(v101 + 10) = v124;
                    *(v101 + 14) = 1024;
                    *(v101 + 16) = v120;
                    _os_log_impl(&dword_1E323F000, v99, v100, "    StackTemplateController:: account message: presenting visibily inserting = %{BOOL}d,\n    animated = %{BOOL}d, deferring animation = %{BOOL}d", v101, 0x14u);
                    OUTLINED_FUNCTION_6_0();
                  }

                  v102 = OUTLINED_FUNCTION_24_4();
                  v104 = v103(v102);
                  if (!v121)
                  {
                    goto LABEL_73;
                  }

                  if (v120)
                  {

                    OUTLINED_FUNCTION_140_1();

                    v105 = (v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset);
                    *v105 = 0.0;
                    v105[1] = v93;
                    *(v105 + 16) = 0;
                    *(v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageNeedsDeferredAnimationIn) = 1;
LABEL_79:
                    OUTLINED_FUNCTION_20_0();
                    return;
                  }

                  v106 = (v30)(v104);
                  [v106 contentOffset];
                  v108 = v107;
                  v110 = v109;

                  if (v108 == 0.0 && v110 == v93)
                  {
LABEL_73:

                    OUTLINED_FUNCTION_140_1();

                    goto LABEL_79;
                  }

                  if (v124)
                  {
                    v112 = (v3 + OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageAdditionTargetOffset);
                    *v112 = 0.0;
                    v112[1] = v93;
                    *(v112 + 16) = 0;
                  }

                  v113 = [v3 vuiView];
                  if (v113)
                  {
                    v114 = v113;
                    OUTLINED_FUNCTION_140_1();

                    v115 = v124;
                    [v114 setVuiUserInteractionEnabled_];

                    v116 = v30();
                    [v116 setContentOffset:v115 animated:{0.0, v93}];

                    goto LABEL_79;
                  }

                  goto LABEL_88;
                }

                goto LABEL_84;
              }

LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v81 = [v54 vuiView];
            if (v81)
            {
LABEL_56:
              v82 = v81;
              [v81 bounds];
              v84 = v83;
              v86 = v85;

              goto LABEL_58;
            }

            __break(1u);
          }

          v81 = [v3 vuiView];
          if (!v81)
          {
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          goto LABEL_56;
        }

LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v68 = [v54 tabBarController];
  v58 = v68;
  if (!v68)
  {
    goto LABEL_45;
  }

  v69 = [v68 vuiView];

  if (v69)
  {
    v58 = [v69 window];

    if (!v58)
    {
      goto LABEL_45;
    }

    goto LABEL_31;
  }

LABEL_90:
  __break(1u);
}

void sub_1E3EDE75C()
{
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  if ((sub_1E39DFFC8() & 1) == 0 || (OUTLINED_FUNCTION_12_5(), (v7 = (*(v6 + 2056))()) == 0))
  {
LABEL_28:
    OUTLINED_FUNCTION_10_3();
    return;
  }

  v8 = v7;
  v9 = [v0 vuiParentViewController];
  if (!v9)
  {
    v9 = *&v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_targetParentController];
    v10 = v9;
  }

  v11 = [v0 vuiView];
  if (!v11)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11;
  v13 = [v11 window];

  if (v13)
  {
    goto LABEL_7;
  }

  Height = 0.0;
  if (!v9)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v18 = [v9 vuiView];
  if (!v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  v13 = [v18 window];

  if (v13)
  {
    goto LABEL_7;
  }

  v20 = [v9 navigationController];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 vuiView];

    if (!v22)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = [v22 window];

    if (v13)
    {
LABEL_7:
      v14 = [v13 windowScene];
      Height = 0.0;
      if (v14)
      {
        v16 = v14;
        v17 = [v14 statusBarManager];

        if (v17)
        {
          [v17 statusBarFrame];
          OUTLINED_FUNCTION_3();

          v36.origin.x = OUTLINED_FUNCTION_6();
          Height = CGRectGetHeight(v36);
        }
      }

LABEL_21:
      v25 = [v0 view];
      if (v25)
      {
        v26 = v25;
        [v25 safeAreaInsets];
        v28 = v27;

        if (v28 - Height <= 0.0)
        {
          v29 = 44.0;
        }

        else
        {
          v29 = v28 - Height;
        }

        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v30(v1);
        v31 = sub_1E41FFC94();
        v32 = sub_1E4206814();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_49_0();
          *v33 = 134218240;
          *(v33 + 4) = -v29;
          *(v33 + 12) = 2048;
          *(v33 + 14) = v29;
          _os_log_impl(&dword_1E323F000, v31, v32, "StackTemplateController:: account message: updateContentInset to: %f, navHeight:%f", v33, 0x16u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v4 + 8))(v1, v2);
        OUTLINED_FUNCTION_36_3();
        v35 = (*((*MEMORY[0x1E69E7D40] & v34) + 0x1B8))();
        [v35 contentInset];
        [v35 setContentInset_];

        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  v23 = [v9 tabBarController];
  v13 = v23;
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = [v23 vuiView];

  if (v24)
  {
    v13 = [v24 window];

    if (!v13)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

LABEL_33:
  __break(1u);
}

void sub_1E3EDEBA0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_26_3();
  v9 = (*((*MEMORY[0x1E69E7D40] & v8) + 0x808))();
  if (!v9)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_5();
  v10 += 55;
  v11 = *v10;
  v12 = (*v10)();
  [v12 contentOffset];
  v14 = v13;

  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  if (v14 >= 0.0)
  {
    v27 = OUTLINED_FUNCTION_69_2();
    v28(v27);
    v29 = sub_1E41FFC94();
    sub_1E4206814();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v31);
      OUTLINED_FUNCTION_51_42(&dword_1E323F000, v32, v3, "StackTemplateController:: account message: initiating non animated removal");
      OUTLINED_FUNCTION_21_0();
    }

    v33 = OUTLINED_FUNCTION_74();
    v34(v33);
    sub_1E3ED7938();
    goto LABEL_10;
  }

  v15(v3);
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v17))
  {
    v18 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v18);
    OUTLINED_FUNCTION_51_42(&dword_1E323F000, v19, v2, "StackTemplateController:: account message: initiating animated removal");
    OUTLINED_FUNCTION_21_0();
  }

  (*(v5 + 8))(v3, v1);
  v20 = &v0[OBJC_IVAR____TtC8VideosUI23StackTemplateController_accountMessageDismissalTargetOffset];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = [v0 vuiView];
  if (v21)
  {
    v22 = v21;
    [v21 setVuiUserInteractionEnabled_];

    v23 = v11();
    v24 = OUTLINED_FUNCTION_1_36();
    [v25 v26];

LABEL_10:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E3EDEE44(void *a1)
{
  v6 = *&v1[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView];
  *&v1[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView] = a1;
  v2 = a1;
  v3 = [v1 contentView];
  v4 = OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView;
  [v3 vui:*&v1[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView] addSubview:v6 oldView:?];

  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    [v1 setNeedsLayout];
  }

LABEL_4:
}

id sub_1E3EDEF0C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = type metadata accessor for MessageHeaderView();
  v8 = OUTLINED_FUNCTION_111_10(v13, sel_initWithContentView_, v2, v3, v4, v5, v6, v7, v0);
  v10 = objc_msgSendSuper2(v8, v9);

  v11 = v10;
  [v11 _setDisplaysWhenSearchActive_];
  [v11 setMinimumHeight_];

  return v11;
}

void sub_1E3EDEFD0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MessageHeaderView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUIP33_C6F969CD23FF47EE8479F5EB0AECFF9A17MessageHeaderView_messageView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 sizeThatFits_];
    v4 = v3;
    v5 = OUTLINED_FUNCTION_1_36();
    [v2 v6];
    [v0 preferredHeight];
    if (v4 != v7)
    {
      [v0 setPreferredHeight_];
    }
  }

  else
  {
    [v0 setPreferredHeight_];
  }
}

id sub_1E3EDF148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StackTemplateController()
{
  result = qword_1EE2985C0;
  if (!qword_1EE2985C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3EDF1D8(double *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_7_4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v3 + 2048))(v2);
  }
}

void sub_1E3EDF258(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1E3D54BE8();

  v4 = *sub_1E3D54C24();
  type metadata accessor for UnifiedMessagingSignalProvider();
  v5 = v4;
  sub_1E3D595AC(a1);
  OUTLINED_FUNCTION_75();
  v6 = sub_1E3D595C0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v8 = sub_1E3B58240();
  v9 = *(v8 + 1);
  *(inited + 32) = *v8;
  *(inited + 40) = v9;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0);
  *(inited + 48) = v6;

  sub_1E4205CB4();
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x230))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v10 + 576))();
    OUTLINED_FUNCTION_11_5();

    if (v3)
    {
      v12 = v3;
      (*(*v3 + 128))(v11);
      OUTLINED_FUNCTION_38();

      v13 = sub_1E3B5824C();
      v14 = *v13;
      v15 = v13[1];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      *&v18 = v12;
      sub_1E329504C(&v18, v17);

      swift_isUniquelyReferenced_nonNull_native();
      sub_1E32A87C0(v17, v14, v15);
    }
  }

  v16 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  sub_1E3B58258();

  sub_1E3B584A8();
}

void sub_1E3EDF4EC()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarGradientView;
    if (*&Strong[OBJC_IVAR____TtC8VideosUI23StackTemplateController_statusBarGradientView])
    {
      v3 = [Strong traitCollection];
      v4 = [v3 userInterfaceStyle];

      if (v4 == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      v6 = [objc_opt_self() effectWithStyle_];
      v7 = *&v1[v2];
      if (v7)
      {
        v8 = v7;
        [v8 setEffect_];

        v1 = v8;
      }
    }
  }
}

void sub_1E3EDF5D0()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3ED2490();
    v2 = [v1 vuiView];
    if (v2)
    {
      v3 = v2;
      [v2 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3EDF650(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3EDF8B0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E3EDF6FC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1E3280A90(0, qword_1EE23B2E0);
  OUTLINED_FUNCTION_19_3();
  v4 = sub_1E42062B4();

  return v4;
}

void sub_1E3EDF764(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setExternalMediaContentIdentifier_];
}

uint64_t sub_1E3EDF8B0(uint64_t result, uint64_t a2, unint64_t a3)
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
        sub_1E3280A90(0, qword_1EE23B2E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1EE23B4B0, &qword_1ECF3BAF8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BAF8);
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

unint64_t sub_1E3EDFA48()
{
  result = qword_1EE249910[0];
  if (!qword_1EE249910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE249910);
  }

  return result;
}

uint64_t objectdestroy_97Tm()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

void sub_1E3EDFB9C(uint64_t a1)
{
  sub_1E41FE874();
  v3 = *(v1 + 16);

  sub_1E3EDD80C(a1, v3);
}

void sub_1E3EDFC10()
{
  OUTLINED_FUNCTION_7_4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v2 = (*(v1 + 440))();

    OUTLINED_FUNCTION_12_5();
    (*(v3 + 184))(1);
  }
}

void OUTLINED_FUNCTION_62_33()
{
  *(v1 + *v0) = 0;
  v2 = (v1 + v0[1]);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  *(v1 + v0[2]) = 0;
  *(v1 + v0[3]) = 0;
}

uint64_t OUTLINED_FUNCTION_100_9()
{

  return sub_1E42062F4();
}

id OUTLINED_FUNCTION_106_17()
{

  return [v0 (v1 + 3716)];
}

uint64_t OUTLINED_FUNCTION_109_8()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_132_11()
{

  return sub_1E42072E4();
}

void OUTLINED_FUNCTION_133_9()
{

  JUMPOUT(0x1E6909170);
}

unint64_t OUTLINED_FUNCTION_135_5(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 160));
}

id OUTLINED_FUNCTION_137_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_138_9()
{

  return [v0 (v1 + 2808)];
}

void sub_1E3EDFEE0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_5_0();
  v4 = *&v1[v3];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_6:
    [a1 removeFromSuperview];
    v6 = *&v1[v3];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    MEMORY[0x1EEE9AC00](v7);
    v8 = v6;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970);
    sub_1E4148DE0(sub_1E3EE0DA4);
  }
}

void sub_1E3EE0008(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1E3EDFEE0(v4);
}

char *sub_1E3EE00A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  type metadata accessor for CarouselViewLayout();
  *&v0[v3] = sub_1E3A2BC54();
  *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl] = 0;
  v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView] = 0;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  OUTLINED_FUNCTION_18_3();

  v5 = objc_allocWithZone(MEMORY[0x1E69D6108]);
  v6 = OUTLINED_FUNCTION_17_4();
  v9 = [v7 v8];
  *&v1[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView] = v9;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = *&v10[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];
  v12 = v10;
  [v11 setAutoscrollInterval_];
  [v11 setShouldScaleOnIdleFocus_];
  [v11 setScrollMode_];
  [v11 setShowsPageControl_];
  [v12 addSubview_];

  return v12;
}

void sub_1E3EE0240()
{
  v1 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  type metadata accessor for CarouselViewLayout();
  *(v0 + v1) = sub_1E3A2BC54();
  *(v0 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3EE0304(char a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OUTLINED_FUNCTION_170();
  objc_msgSendSuper2(v7, v8, v6, v3, ObjectType);
  if (a1)
  {
    v9 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
    OUTLINED_FUNCTION_5_0();
    v10 = *(**&v3[v9] + 304);

    v12 = COERCE_DOUBLE(v10(v11));
    LOBYTE(v10) = v13;

    v14 = 0.0;
    if ((v10 & 1) == 0)
    {
      v14 = v12;
    }

    if (sub_1E3EE0A1C(a2, v14) != 0.0)
    {
      sub_1E3EE0C1C();
      CGRectGetHeight(v46);
      VUIRoundValue();
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    v15 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
    OUTLINED_FUNCTION_5_0();
    v16 = *&v3[v15];
    if (v16)
    {
      v17 = v16;
      v18 = OUTLINED_FUNCTION_170();
      [v19 v20];
      v22 = v21;
      v24 = v23;
      v25 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
      OUTLINED_FUNCTION_5_0();
      v26 = *(**&v3[v25] + 1728);

      v26(v45, v27);

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0);
      sub_1E4148C68(sub_1E3C2FC84, v28, v43);
      v29 = v44;
      [v3 bounds];
      [v17 setFrame_];
      [v17 center];
      [v17 setCenter_];
    }

    v31 = *&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];
    sub_1E3EE08F0();
    [v31 setFrame_];
    [v3 bounds];
    sub_1E3EE0C1C();
    v36 = v35;
    v38 = v37;
    v39 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
    OUTLINED_FUNCTION_5_0();
    v40 = *&v3[v39];
    if (v40)
    {
      v41 = v40;
      [v41 frame];
      OUTLINED_FUNCTION_2_6();
      v47.origin.x = OUTLINED_FUNCTION_170();
      v47.size.width = v36;
      v47.size.height = v38;
      if (!CGRectEqualToRect(v47, v48))
      {
        [v3 effectiveUserInterfaceLayoutDirection];
        [v3 bounds];
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_170();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v41 setFrame_];
      }
    }
  }

  OUTLINED_FUNCTION_170();
}

void sub_1E3EE0704(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl;
  OUTLINED_FUNCTION_5_0();
  if (v2[v4] == 1)
  {
    if (a1 >= 1)
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
      [v5 setNumberOfPages_];
      [v5 setCurrentPage_];
      [v5 addTarget:v2 action:sel_pageChangeEventWithSender_ forControlEvents:4096];
      v6 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
      swift_beginAccess();
      v7 = *&v2[v6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB28);
      sub_1E4148DE0(sub_1E3EE087C);

      [v2 addSubview_];
      v8 = *&v2[v6];
      *&v2[v6] = v5;
    }
  }

  else
  {
    v9 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
    OUTLINED_FUNCTION_5_0();
    v10 = *&v2[v9];
    if (v10)
    {
      [v10 removeFromSuperview];
    }
  }
}

id sub_1E3EE088C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView);
  sub_1E3EE08F0();

  return [v1 setFrame_];
}

void sub_1E3EE08F0()
{
  [v0 bounds];
  sub_1E3EE0C1C();
  OUTLINED_FUNCTION_18_3();
  v2 = v1;
  v4 = v3;
  v5 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_5_0();
  if (*&v0[v5])
  {
    v9.origin.x = OUTLINED_FUNCTION_17_4();
    v9.size.width = v2;
    v9.size.height = v4;
    CGRectGetMaxY(v9);
  }

  VUIRoundValue();
  [v0 bounds];
  CGRectGetWidth(v10);
  v6 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_5_0();
  v7 = *(**&v0[v6] + 304);

  v7(v8);

  OUTLINED_FUNCTION_17_4();
}

double sub_1E3EE0A1C(double a1, double a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_5_0();
  v6 = *(**(v2 + v5) + 432);

  v8 = COERCE_DOUBLE(v6(v7));
  v10 = v9;

  if ((v10 & 1) == 0 && v8 > 0.0)
  {
    v11 = *(**(v3 + v5) + 352);

    v13 = COERCE_DOUBLE(v11(v12));
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      a2 = v13;
      VUIFloorValue();
      if (v16 <= v13)
      {
        return v16;
      }
    }
  }

  return a2;
}

void sub_1E3EE0C1C()
{
  OUTLINED_FUNCTION_0_8();
  v1 = objc_opt_self();
  v11.origin.x = OUTLINED_FUNCTION_2_0();
  [v1 vui:CGRectGetWidth(v11) paddingForWindowWidth:?];
  OUTLINED_FUNCTION_2_6();
  v2 = OUTLINED_FUNCTION_2_0();
  UIEdgeInsetsInsetRect(v2, v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_18_3();
  Width = CGRectGetWidth(v12);
  v9 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_0_12();
  v10 = *(v0 + v9);
  if (v10)
  {
    [v10 sizeThatFits_];
  }

  OUTLINED_FUNCTION_17_4();
}

id sub_1E3EE0CD4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView);
  v3 = [a1 currentPage];

  return [v2 centerItemAtPageIndex_];
}

void sub_1E3EE0DD0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v49 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for LibraryDownloadLockup();
  v15 = v14[9];
  *(v7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  swift_storeEnumTagMultiPayload();
  v16 = (v7 + v14[10]);
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_3_211();
  sub_1E3EE480C(v17, v18);
  *v16 = sub_1E4201754();
  v16[1] = v19;
  v20 = v14[11];
  *(v7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v21 = v7 + v14[12];
  v52[0] = 1;
  sub_1E42038E4();
  v22 = v50[1];
  *v21 = v50[0];
  *(v21 + 8) = v22;
  *v7 = v5;
  type metadata accessor for ContextMenuModel();
  swift_retain_n();
  v23 = sub_1E3E6CDBC();
  v25 = *v23;
  v24 = v23[1];
  v50[0] = v25;
  v50[1] = v24;

  sub_1E4207414();
  (*(v9 + 104))(v13, *MEMORY[0x1E697E660], v49);

  *(v7 + 208) = sub_1E4188148(v26, v13);
  memcpy((v7 + 8), v3, 0xC3uLL);
  type metadata accessor for CardViewInteractor(0);
  sub_1E375C1CC(v3, v50);

  v27 = sub_1E3AB85C4(v5, v3, v1);
  j__OUTLINED_FUNCTION_18();
  sub_1E3AB9000();
  sub_1E3ABC8B4(&v51);
  *(v7 + 224) = sub_1E38074D0;
  *(v7 + 232) = v27;
  *(v7 + 240) = 0;
  v28 = *(*v5 + 392);

  v30 = v28(v29);

  if (!v30)
  {
    goto LABEL_4;
  }

  type metadata accessor for LibraryLockupLayout();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {

LABEL_4:
    type metadata accessor for LibraryLockupLayout();
    v31 = sub_1E3F6D980();
  }

  *(v7 + 216) = v31;
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v32, v33);
  v34 = sub_1E4200BC4();
  v35 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v50, (v34 + v35), 0x58uLL);
  sub_1E3743538(v50, v52, &qword_1ECF322C8);

  if (v50[7])
  {
    v36 = v50[1];

    sub_1E325F69C(v50, &qword_1ECF322C8);
    if (v36)
    {
      type metadata accessor for ImageViewModel();
      v37 = swift_dynamicCastClass();
      if (v37)
      {
        v38 = v37;
        OUTLINED_FUNCTION_26_0();
        v40 = *(v39 + 392);

        v42 = v40(v41);

        if (v42)
        {
          v44 = (*(*v42 + 1560))(v43);
        }

        else
        {
          v44 = 7;
        }

        v45 = j__OUTLINED_FUNCTION_18();
        v46 = (*(*v38 + 1048))(v44, v45 & 1);
        if (!v46)
        {
          v46 = [objc_opt_self() blackColor];
        }

        v47 = v46;
        OUTLINED_FUNCTION_8();
        (*(v48 + 1880))();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LibraryDownloadLockup()
{
  result = qword_1EE29BC70;
  if (!qword_1EE29BC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3EE1364()
{
  OUTLINED_FUNCTION_9_4();
  v91 = v7;
  v8 = type metadata accessor for LibraryDownloadLockup();
  v88 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = v9;
  v90 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v83 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v13 - v12);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB38);
  OUTLINED_FUNCTION_0_10();
  v73 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_50_1();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB40);
  OUTLINED_FUNCTION_0_10();
  v75 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8_4();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB50);
  OUTLINED_FUNCTION_0_10();
  v79 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB60);
  OUTLINED_FUNCTION_0_10();
  v86 = v30;
  v87 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  sub_1E3EE1BE8();
  v33 = v1[26];
  v34 = v1;
  v35 = sub_1E374AD40(&qword_1ECF3BB68, &qword_1ECF3BB30);
  v36 = v33;
  v37 = v71;
  sub_1E4187EA8(v36, v71, v35);
  sub_1E325F69C(v16, &qword_1ECF3BB30);
  v38 = *v1;
  v93 = v37;
  v94 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v72;
  sub_1E4035F10(v38, v72, OpaqueTypeConformance2);
  (*(v73 + 8))(v0, v40);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v41, v42);
  OUTLINED_FUNCTION_32_0();
  v43 = sub_1E4200BC4();
  v44 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0();
  v45 = *(v43 + v44);

  if (v45 && (OUTLINED_FUNCTION_8(), (*(v46 + 152))(&v93), v3 = v93, v4 = v94, v5 = v95, v6 = v96, , (v97 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v47, v48, v49, v50);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v51 = sub_1E4202734();
  (*(v75 + 32))(v2, v22, v77);
  v52 = v2 + *(v76 + 36);
  *v52 = v51;
  *(v52 + 8) = v3;
  *(v52 + 16) = v4;
  *(v52 + 24) = v5;
  *(v52 + 32) = v6;
  *(v52 + 40) = 0;
  v53 = v81;
  sub_1E4202474();
  sub_1E3EE34D0();
  v54 = v74;
  OUTLINED_FUNCTION_32_0();
  sub_1E4203224();
  (*(v83 + 8))(v53, v85);
  v55 = sub_1E325F69C(v2, &qword_1ECF3BB48);
  v56 = (*(*v38 + 1184))(v55);
  v57 = v90;
  sub_1E3EE3610(v34, v90);
  v58 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v59 = swift_allocObject();
  sub_1E3EE3674(v57, v59 + v58);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1E3EE36D8;
  *(v60 + 24) = v59;
  v61 = v78;
  (*(v79 + 32))(v78, v54, v80);
  v62 = v84;
  *(v61 + *(v84 + 52)) = v56;
  v63 = (v61 + *(v62 + 56));
  *v63 = sub_1E379E500;
  v63[1] = v60;
  v92 = v38;
  sub_1E3EE3610(v34, v57);
  v64 = swift_allocObject();
  sub_1E3EE3674(v57, v64 + v58);
  type metadata accessor for LibLockupViewModel();
  sub_1E374AD40(&qword_1ECF3BB78, &qword_1ECF3BB58);
  sub_1E3EE480C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel);
  swift_retain_n();
  v65 = v82;
  sub_1E4203524();

  v66 = OUTLINED_FUNCTION_57();
  sub_1E325F69C(v66, v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB80);
  v69 = v91;
  sub_1E3AB3A44(v38, (v91 + *(v68 + 36)));
  (*(v86 + 32))(v69, v65, v87);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3EE1BE8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  type metadata accessor for LibraryDownloadLockup();
  sub_1E3AB3B98(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F69C(v14, &qword_1ECF31FF0);
    v16 = 1;
  }

  else
  {
    MEMORY[0x1E690E3F0](v15);
    sub_1E325F69C(v14, &qword_1ECF31FC8);
    v17 = sub_1E4203BF4();
    (*(v6 + 8))(v10, v4);
    v16 = v17 ^ 1;
  }

  v18 = *v1;
  v19 = *(*v1 + 24);
  if (v19)
  {
    v20 = *(*v1 + 24);
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v26 - 4) = v1;
  *(&v26 - 3) = v21;
  *(&v26 - 2) = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBD0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBD8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBE0);
  v24 = sub_1E3EE4860();
  v26 = v23;
  v27 = v24;
  OUTLINED_FUNCTION_10_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v22;
  v27 = MEMORY[0x1E69E6158];
  v28 = OpaqueTypeConformance2;
  v29 = MEMORY[0x1E69E6168];
  swift_getOpaqueTypeConformance2();
  sub_1E40424BC(v18, v16 & 1, sub_1E3EE4854, v3);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EE1EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBD8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1E3EE1FE8();
  v14[2] = a2;
  v14[3] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBE0);
  v12 = sub_1E3EE4860();
  v14[0] = v11;
  v14[1] = v12;
  OUTLINED_FUNCTION_10_6();
  swift_getOpaqueTypeConformance2();
  sub_1E4203184();
  return (*(v7 + 8))(v10, v5);
}

void sub_1E3EE1FE8()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v0;
  v63 = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  *v9 = sub_1E4201D44();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC10);
  v61 = v9;
  sub_1E3EE2590();
  v59 = sub_1E4201B84();
  v67 = 1;
  v58 = sub_1E39C408C(57);
  type metadata accessor for TextBadgePresenter();
  v60 = v5;
  v10 = *(**(v5 + 216) + 1856);
  v11 = v10();
  v57 = sub_1E3789F30(v11);
  v12 = sub_1E39C408C(233);
  v13 = v12;
  if (v12 && *v12 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {

    v13 = 0;
  }

  v74[0] = 0;
  type metadata accessor for VUIDownloadState(0);
  v14 = sub_1E42038E4();
  v64 = v75;
  v56 = v76;
  if ((v10)(v14) && (OUTLINED_FUNCTION_26_0(), (*(v15 + 152))(v69), v1 = v69[0], v2 = v69[1], v3 = v69[2], v4 = v69[3], , (v69[4] & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v79 = 0;
  v20 = sub_1E4202734();
  v21 = v79;
  v80 = 0;
  if (sub_1E39C408C(57))
  {

    v22 = 0;
    v23 = 0;
  }

  else
  {

    v22 = nullsub_1(v24, v25);
    v23 = v26;
  }

  v27 = v57;
  v65[0] = v58;
  v65[1] = v57;
  v65[2] = v13;
  v65[3] = v64;
  v55 = v13;
  v28 = v56;
  v65[4] = v56;
  v65[5] = sub_1E3B56CA0;
  v65[6] = 0;
  LOBYTE(v65[7]) = v21;
  *(&v65[7] + 1) = v68[0];
  HIDWORD(v65[7]) = *(v68 + 3);
  LOBYTE(v65[8]) = v20;
  HIDWORD(v54) = v20;
  *(&v65[8] + 1) = v81[0];
  HIDWORD(v65[8]) = *(v81 + 3);
  v65[9] = v1;
  v65[10] = v2;
  v65[11] = v3;
  v65[12] = v4;
  LOBYTE(v65[13]) = 0;
  memcpy(v74, v65, 0x69uLL);
  v78 = 0;
  v29 = v58;
  sub_1E3743538(v65, &v75, &qword_1ECF3BC20);
  v30 = OUTLINED_FUNCTION_57();
  sub_1E3B57E20(v30);
  v31 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v31);
  v32 = v78;
  v33 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v33);
  v75 = v29;
  v76 = v27;
  v77[0] = v55;
  v77[1] = v64;
  v77[2] = v28;
  v77[3] = sub_1E3B56CA0;
  v77[4] = 0;
  LOBYTE(v77[5]) = v21;
  *(&v77[5] + 1) = v68[0];
  HIDWORD(v77[5]) = *(v68 + 3);
  LOBYTE(v77[6]) = BYTE4(v54);
  *(&v77[6] + 1) = v81[0];
  HIDWORD(v77[6]) = *(v81 + 3);
  v77[7] = v1;
  v77[8] = v2;
  v77[9] = v3;
  v77[10] = v4;
  LOBYTE(v77[11]) = 0;
  sub_1E325F69C(&v75, &qword_1ECF3BC20);
  memcpy(v68, v74, 0x70uLL);
  v68[14] = 0;
  LOBYTE(v68[15]) = v32;
  *(&v68[15] + 1) = v65[0];
  HIDWORD(v68[15]) = *(v65 + 3);
  v68[16] = v22;
  v68[17] = v23;
  memcpy(v69, v74, 0x70uLL);
  v69[14] = 0;
  v70 = v32;
  *v71 = v65[0];
  *&v71[3] = *(v65 + 3);
  v72 = v22;
  v73 = v23;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v34, v35, v36);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v37, v38);
  memcpy(&v66[7], v68, 0x90uLL);
  v39 = v67;
  v40 = sub_1E4203D44();
  v42 = v41;
  v43 = v59;
  v74[0] = v59;
  v74[1] = 0;
  LOBYTE(v74[2]) = v39;
  memcpy(&v74[2] + 1, v66, 0x97uLL);
  v74[21] = v40;
  v74[22] = v42;
  v45 = v61;
  v44 = v62;
  memcpy(&v61[*(v62 + 36)], v74, 0xB8uLL);
  v75 = v43;
  v76 = 0;
  LOBYTE(v77[0]) = v39;
  memcpy(v77 + 1, v66, 0x97uLL);
  v77[19] = v40;
  v77[20] = v42;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v46, v47, v48);
  OUTLINED_FUNCTION_82();
  v51 = sub_1E325F69C(v49, v50);
  (*(**(v60 + 216) + 552))(v65, v51);
  if (v65[4])
  {
    v52 = 0.0;
  }

  else
  {
    v52 = *v65;
  }

  v53 = sub_1E3EE4860();
  sub_1E391F8C0(v44, v53, v52);
  sub_1E325F69C(v45, &qword_1ECF3BBE0);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3EE2590()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v26 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC30);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC38);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  sub_1E3EE27D0();
  v22 = *v2;

  sub_1E3EE2BA4();
  sub_1E3EE4944();
  sub_1E40933F4(v22, v0, v4, v13);
  sub_1E3743538(v21, v18, &qword_1ECF3BC38);
  sub_1E3743538(v13, v10, &qword_1ECF3BC30);
  v23 = v26;
  sub_1E3743538(v18, v26, &qword_1ECF3BC38);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC58);
  sub_1E3743538(v10, v23 + *(v24 + 48), &qword_1ECF3BC30);
  sub_1E325F69C(v13, &qword_1ECF3BC30);
  sub_1E325F69C(v21, &qword_1ECF3BC38);
  sub_1E325F69C(v10, &qword_1ECF3BC30);
  sub_1E325F69C(v18, &qword_1ECF3BC38);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE27D0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v34 - v12;
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v13, v14);
  v15 = sub_1E4200BC4();
  v16 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0();
  memcpy(v46, (v15 + v16), 0x58uLL);
  sub_1E3743538(v46, v42, &qword_1ECF322C8);

  if (v46[7] && (v17 = v46[1], , sub_1E325F69C(v46, &qword_1ECF322C8), v17))
  {
    memcpy(v37, (v2 + 8), 0x5BuLL);
    v18 = *&v37[89];
    OUTLINED_FUNCTION_8();
    v34 = v4;
    v20 = *(v19 + 1736);
    v21 = sub_1E375C2C0(v37, v42);
    v22 = *v20(v21);
    v23 = (*(v22 + 744))();

    sub_1E375C31C(v37);
    memcpy(v43, (v2 + 8), 0x50uLL);
    v43[10] = v23;
    v44 = 0;
    v45 = v18;
    memcpy(v38, (v2 + 8), sizeof(v38));
    v39 = v23;
    v40 = 0;
    v41 = v18;
    sub_1E375C2C0(v43, v42);
    sub_1E375C31C(v38);
    v24 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v17, v43, 0, v24 & 1, 0, 0, v1);
    *(v1 + *(v35 + 36)) = 256;
    sub_1E4203DA4();
    sub_1E42015C4();
    sub_1E375C31C(v43);

    sub_1E3741EA0(v1, v10, &qword_1ECF2FEC0);
    memcpy((v10 + *(v6 + 36)), v42, 0x70uLL);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v25, v26, v27);
    v28 = v34;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v29, v30, v31);
    v32 = v28;
    v33 = 0;
  }

  else
  {
    v32 = v4;
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v32, v33, 1, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE2BA4()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v0;
  v53[2] = v7;
  v53[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_4();
  v21 = type metadata accessor for LibraryDownloadLockup();
  sub_1E3AB3B98(v1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
  if (__swift_getEnumTagSinglePayload(v1, 1, v22) == 1)
  {
    sub_1E325F69C(v1, &qword_1ECF31FF0);
    goto LABEL_5;
  }

  MEMORY[0x1E690E3F0](v22);
  sub_1E325F69C(v1, &qword_1ECF31FC8);
  v23 = sub_1E4203BF4();
  (*(v14 + 8))(v18, v12);
  if ((v23 & 1) == 0)
  {
LABEL_5:
    v33 = sub_1E39C408C(233);
    if (v33)
    {
      v34 = v33;
      if (*v33 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {
        v35 = v6 + *(v21 + 48);
        v36 = *(v35 + 8);
        LOBYTE(v54[0]) = *v35;
        v54[1] = v36;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
        sub_1E4203914();
        sub_1E3F66914(v34, 0, v58[0], v58[1], v58[2], v55);
        OUTLINED_FUNCTION_11_156();
        OUTLINED_FUNCTION_11_156();
        sub_1E4203DA4();
        sub_1E4200D94();
        OUTLINED_FUNCTION_11_156();
        if (LOBYTE(v54[0]) == 1 && (OUTLINED_FUNCTION_8(), (*(v37 + 1808))(), OUTLINED_FUNCTION_26_0(), (*(v38 + 152))(v56), v2 = v56[0], v3 = v56[1], v4 = v56[2], v5 = v56[3], , (v57 & 1) == 0))
        {
          OUTLINED_FUNCTION_13_3(v39, v40, v41, v42);
        }

        else
        {
          OUTLINED_FUNCTION_5_8();
        }

        OUTLINED_FUNCTION_3();
        v43 = sub_1E4202734();
        v55[88] = 0;
        v44 = sub_1E417311C();
        v46 = v45;

        v55[96] = v46 & 1;
        memcpy(v54, v55, 0x58uLL);
        LOBYTE(v54[11]) = v43;
        v54[12] = v2;
        v54[13] = v3;
        v54[14] = v4;
        v54[15] = v5;
        LOBYTE(v54[16]) = 0;
        v54[17] = v44;
        LOBYTE(v54[18]) = v46 & 1;
        nullsub_1(v47, v48);
        memcpy(v58, v54, 0x91uLL);
        goto LABEL_14;
      }
    }

    sub_1E3B57E18(v58);
LABEL_14:
    memcpy(v54, v58, 0x91uLL);
    memcpy(v10, v54, 0x91uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E28);
    OUTLINED_FUNCTION_8_169();
    sub_1E3EE49FC(v49, v50, v51, v52);
    sub_1E3B57D68();
    OUTLINED_FUNCTION_18_5();
    sub_1E4201F44();
    goto LABEL_15;
  }

  sub_1E3EE30D0();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v24, v25, v26);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33E28);
  OUTLINED_FUNCTION_8_169();
  OUTLINED_FUNCTION_82();
  sub_1E3EE49FC(v27, v28, v29, v30);
  sub_1E3B57D68();
  sub_1E4201F44();
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v31, v32);
LABEL_15:
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3EE30D0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v46 = v4;
  v47 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v45 = v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  if (*(v0 + *(type metadata accessor for LibraryDownloadLockup() + 40)))
  {
    OUTLINED_FUNCTION_8();
    v13 = *(v12 + 408);

    v13(v50, v14);

    v15 = *(*v0 + 16);
    v16 = *(*v0 + 24);
    OUTLINED_FUNCTION_8();
    v18 = *(v17 + 240);

    v20 = v18(v19);

    v21 = sub_1E3AB391C(v15, v16, v20);

    v22 = &v52;
    v23 = v54;
    if (v21)
    {
      v23 = &v53;
    }

    v24 = *v23;
    if (v21)
    {
      v22 = &v51;
    }

    if (v24)
    {
      v25 = *v22;
      memcpy(v57, (v1 + 8), 0x5BuLL);

      v26 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v24, v57, v25, v26 & 1, 0, 0, v45);
      if (v25)
      {
        OUTLINED_FUNCTION_8();
        v28 = *(v27 + 200);

        v28(v29);

        v30 = *(*v25 + 304);

        v30(v31);
      }

      sub_1E4203DA4();
      sub_1E4200D94();

      sub_1E3844FE0(v50);

      (*(v46 + 32))(v10, v45, v47);
      v34 = v48;
      v35 = (v10 + *(v48 + 36));
      v36 = v55;
      *v35 = *&v54[88];
      v35[1] = v36;
      v35[2] = v56;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v37, v38, v39);
      v33 = v49;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v40, v41, v42);
      v32 = 0;
    }

    else
    {
      sub_1E3844FE0(v50);
      v32 = 1;
      v34 = v48;
      v33 = v49;
    }

    __swift_storeEnumTagSinglePayload(v33, v32, 1, v34);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_3_211();
    sub_1E3EE480C(v43, v44);
    OUTLINED_FUNCTION_82();
    sub_1E4201744();
    __break(1u);
  }
}

unint64_t sub_1E3EE34D0()
{
  result = qword_1ECF3BB70;
  if (!qword_1ECF3BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB30);
    sub_1E374AD40(&qword_1ECF3BB68, &qword_1ECF3BB30);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BB70);
  }

  return result;
}

uint64_t sub_1E3EE3610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryDownloadLockup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3EE3674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryDownloadLockup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3EE36D8()
{
  v0 = type metadata accessor for LibraryDownloadLockup();
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v1, v2);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  sub_1E3AB9E3C();
}

uint64_t objectdestroyTm_48()
{
  v1 = type metadata accessor for LibraryDownloadLockup();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1E3264CE0();
  v3 = v2 + *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
    if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v6 + 8))(v3 + v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3EE39BC()
{
  v0 = type metadata accessor for LibraryDownloadLockup();
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_277();
  sub_1E3EE480C(v1, v2);
  OUTLINED_FUNCTION_57();
  sub_1E4200BC4();
  sub_1E3AB9E3C();
}

uint64_t sub_1E3EE3AAC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BB98);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_50_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v63 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBB8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v25 = *v3;
  if (*v3)
  {
    v59 = v15;
    v60 = &v59 - v24;
    v61 = v23;
    v62 = a1;

    *v8 = sub_1E4201B84();
    *(v8 + 1) = 0;
    v8[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBC0);
    sub_1E3EE4088(v25, v3, v26, v27, v28, v29, v30, v31, v59, v60, v61, v62, v63, v64, v65, v66, v67, *(&v67 + 1), v68, v69);
    v32 = *(v3 + 16);
    if (v32)
    {
      v33 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel;
      OUTLINED_FUNCTION_5_0();
      v32 = *&v32[v33];
      v34 = sub_1E40A0988();
    }

    else
    {
      type metadata accessor for VUIDownloadState(0);
      v34 = sub_1E3B4F980();
    }

    v36 = swift_allocObject();
    OUTLINED_FUNCTION_17_126(v36);
    sub_1E3741EA0(v8, v1, &qword_1ECF3BB98);
    *(v1 + *(v9 + 52)) = v34;
    v37 = (v1 + *(v9 + 56));
    *v37 = sub_1E3EE468C;
    v37[1] = v32;
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_17_126(v38);
    sub_1E3741EA0(v1, v14, &qword_1ECF3BBA0);
    v39 = &v14[*(v11 + 36)];
    *v39 = sub_1E3EE4740;
    v39[1] = v32;
    v39[2] = 0;
    v39[3] = 0;
    sub_1E3EE47D4(v3, &v67);
    sub_1E3EE47D4(v3, &v67);
    v67 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF8);
    sub_1E42038F4();
    v40 = 0.0;
    if (v70 == 2 || (v67 = *(v3 + 24), sub_1E42038F4(), v70 == 1))
    {
      v41 = v59;
    }

    else
    {
      type metadata accessor for RentalPresenterWrapper(0);
      OUTLINED_FUNCTION_9_155();
      sub_1E3EE480C(v53, v54);
      OUTLINED_FUNCTION_32_0();
      sub_1E4200BC4();
      OUTLINED_FUNCTION_26_0();
      v56 = (*(v55 + 184))();

      v41 = v59;
      if (v56)
      {
        OUTLINED_FUNCTION_8();
        v58 = (*(v57 + 400))();

        if (v58)
        {
          v40 = 1.0;
        }

        else
        {
          v40 = 0.0;
        }
      }
    }

    v42 = v14;
    v43 = v63;
    sub_1E3741EA0(v42, v63, &qword_1ECF3BBA8);
    *(v43 + *(v41 + 36)) = v40;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF0);
    type metadata accessor for RentalPresenterWrapper(0);
    OUTLINED_FUNCTION_9_155();
    sub_1E3EE480C(v45, v46);
    sub_1E4200BC4();
    v47 = sub_1E3D7998C();

    sub_1E3741EA0(v43, v21, &qword_1ECF3BBB0);
    v48 = v60;
    v49 = v61;
    v50 = (v21 + *(v61 + 36));
    *v50 = KeyPath;
    v50[1] = v47;
    sub_1E3741EA0(v21, v48, &qword_1ECF3BBB8);
    v51 = v48;
    v52 = v62;
    sub_1E3741EA0(v51, v62, &qword_1ECF3BBB8);
    return __swift_storeEnumTagSinglePayload(v52, 0, 1, v49);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
  }
}

void sub_1E3EE4088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8);
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  v42 = *(v23 + 8);

  OUTLINED_FUNCTION_18();
  sub_1E3FC96D0(v25, v42, v31);
  sub_1E3EE480C(qword_1EE23BBE8, type metadata accessor for TextBadge);
  View.accessibilityIdentifier(key:location:)();
  sub_1E3811660(v31);
  v43 = *(v34 + 16);
  v43(v38, v41, v32);
  v43(v27, v38, v32);
  v44 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BBC8) + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = *(v34 + 8);
  v45(v41, v32);
  v45(v38, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE4318()
{
  type metadata accessor for LibLockupViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LibraryLockupLayout();
      if (v2 <= 0x3F)
      {
        sub_1E3ABD168();
        if (v3 <= 0x3F)
        {
          sub_1E3AB3F5C();
          if (v4 <= 0x3F)
          {
            sub_1E3AB3FC0();
            if (v5 <= 0x3F)
            {
              sub_1E38D5D68();
              if (v6 <= 0x3F)
              {
                sub_1E3B57AC4(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
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
}

unint64_t sub_1E3EE4458()
{
  result = qword_1ECF3BB88;
  if (!qword_1ECF3BB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BB58);
    type metadata accessor for LibLockupViewModel();
    sub_1E374AD40(&qword_1ECF3BB78, &qword_1ECF3BB58);
    sub_1E3EE480C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E3EE480C(&qword_1ECF3BB90, type metadata accessor for CollectionViewCellEditableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BB88);
  }

  return result;
}

uint64_t sub_1E3EE45D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1E3EE4614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_20Tm_0()
{

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E3EE4740()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel;
    OUTLINED_FUNCTION_5_0();
    [*(v1 + v2) downloadState];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33DF8);
  return sub_1E4203904();
}

uint64_t sub_1E3EE480C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3EE4860()
{
  result = qword_1ECF3BBE8;
  if (!qword_1ECF3BBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBE0);
    sub_1E374AD40(&qword_1ECF3BBF0, &unk_1ECF3BBF8);
    sub_1E374AD40(&qword_1ECF3BC00, &unk_1ECF3BC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BBE8);
  }

  return result;
}

unint64_t sub_1E3EE4944()
{
  result = qword_1ECF3BC40;
  if (!qword_1ECF3BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BC28);
    sub_1E3EE49FC(&qword_1ECF3BC48, &qword_1ECF3BC50, &unk_1E42DBCC0, sub_1E3868018);
    sub_1E3B57D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC40);
  }

  return result;
}

uint64_t sub_1E3EE49FC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1E3EE4A74()
{
  result = qword_1ECF3BC80;
  if (!qword_1ECF3BC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBB8);
    sub_1E3EE4B2C();
    sub_1E374AD40(&qword_1EE288800, &unk_1ECF33E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC80);
  }

  return result;
}

unint64_t sub_1E3EE4B2C()
{
  result = qword_1ECF3BC88;
  if (!qword_1ECF3BC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBB0);
    sub_1E3EE4BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC88);
  }

  return result;
}

unint64_t sub_1E3EE4BB8()
{
  result = qword_1ECF3BC90;
  if (!qword_1ECF3BC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BBA8);
    sub_1E374AD40(&qword_1ECF3BC98, &unk_1ECF3BBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BC90);
  }

  return result;
}

void sub_1E3EE4C70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = sub_1E4200A74() & 1;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10 & 1;
  swift_unknownObjectWeakInit();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 40) = a3;
  swift_unknownObjectWeakAssign();
}

void sub_1E3EE4CFC(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201B84();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCA0);
  sub_1E3EE4D4C();
}

void sub_1E3EE4D4C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v49 = v3;
  sub_1E4202054();
  OUTLINED_FUNCTION_0_10();
  v45 = v4;
  v46 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD00);
  OUTLINED_FUNCTION_0_10();
  v42 = v9;
  v43 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_2_5();
  v48 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v42 - v18;
  v19 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();

  v20 = sub_1E4200544();
  v21 = *(v2 + 8);
  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  LOBYTE(v50) = *(v2 + 16);
  v51 = v22;
  LOBYTE(v52) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD18);
  sub_1E4200A64();
  v50 = v20;
  v51 = v19;
  v52 = v21;
  v53 = v55;
  v54 = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD20);
  v25 = sub_1E3EE7F58();
  sub_1E40443A0();

  sub_1E4202044();
  v50 = v24;
  v51 = v25;
  v52 = &off_1F5D8C148;
  swift_getOpaqueTypeConformance2();
  sub_1E3EE8878(&qword_1EE2889F0, MEMORY[0x1E697C720]);
  v26 = v42;
  v27 = v45;
  sub_1E4202D94();
  (*(v46 + 8))(v8, v27);
  (*(v43 + 8))(v13, v26);
  v28 = sub_1E3EE5208();
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  v31 = (v28 & 1) == 0;
  v32 = v44;
  *(v30 + 16) = v31;
  v33 = (v0 + *(v32 + 36));
  *v33 = KeyPath;
  v33[1] = sub_1E37E09AC;
  v33[2] = v30;
  sub_1E3EE5208();
  sub_1E3EE7FBC();
  v34 = v47;
  OUTLINED_FUNCTION_32_0();
  sub_1E4203354();
  sub_1E325F69C(v0, &qword_1ECF3BD08);
  v35 = v48;
  OUTLINED_FUNCTION_68(v34, v48);
  v36 = v49;
  OUTLINED_FUNCTION_68(v35, v49);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD28) + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v38, v39);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v40, v41);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EE5208()
{
  v0 = sub_1E39C408C(60);
  v1 = v0 != 0;
  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 544))();
  if (v3)
  {

    return 1;
  }

  return v1;
}

uint64_t sub_1E3EE5294(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3EE52D0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }
  }

  return result;
}

void *sub_1E3EE5324(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }

    *(result + 17) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }
  }

  return result;
}

void sub_1E3EE536C()
{
  sub_1E3BF5F74();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_DWORD *sub_1E3EE540C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_27;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        LODWORD(v11) = v8 + (v11 | v16);
        break;
      default:
        goto LABEL_27;
    }

    return OUTLINED_FUNCTION_17_7(v11);
  }

LABEL_27:
  if ((v6 & 0x80000000) == 0)
  {
    v11 = *result;
    if (*result >= 0xFFFFFFFFuLL)
    {
      LODWORD(v11) = -1;
    }

    return OUTLINED_FUNCTION_17_7(v11);
  }

  return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
}

void sub_1E3EE554C(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = (a1 + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v20 = (a2 - 1);
            }

            *a1 = v20;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_32_0();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3EE573C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (a1)
    {
LABEL_6:
      OUTLINED_FUNCTION_111();
      return (*(v5 + 392))();
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v2 = *(*a2 + 1624);
  v3 = *(a1 + 98);

  v4 = v2(v3, 0);

  if (!v4)
  {
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_1E3EE5808@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  LODWORD(v120) = a2;
  v139 = a3;
  v131 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v129 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v7 - v6);
  v144 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v145 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v11 - v10);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCB0);
  OUTLINED_FUNCTION_0_10();
  v124 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_2_5();
  v126 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(&v118 - v18);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCC8);
  OUTLINED_FUNCTION_0_10();
  v133 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v118 - v23;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v118 - v26;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v29);
  v30 = sub_1E39C408C(26);
  if (v30)
  {
    if (*v30 == _TtC8VideosUI13TextViewModel)
    {
      v143 = v30;
      goto LABEL_6;
    }
  }

  v143 = 0;
LABEL_6:
  v31 = sub_1E39C408C(23);
  if (v31)
  {
    if (*v31 == _TtC8VideosUI13TextViewModel)
    {
      v142 = v31;
      goto LABEL_11;
    }
  }

  v142 = 0;
LABEL_11:
  v32 = sub_1E39C408C(15);
  if (v32)
  {
    if (*v32 == _TtC8VideosUI13TextViewModel)
    {
      v140 = v32;
      goto LABEL_16;
    }
  }

  v140 = 0;
LABEL_16:
  if (!sub_1E39C408C(39))
  {
LABEL_19:
    v146 = 0;
    goto LABEL_20;
  }

  type metadata accessor for ImageViewModel();
  v146 = swift_dynamicCastClass();
  if (!v146)
  {

    goto LABEL_19;
  }

LABEL_20:
  v33 = sub_1E39C408C(31);
  v138 = v27;
  if (v33)
  {
    type metadata accessor for ImageViewModel();
    v33 = swift_dynamicCastClass();
    if (!v33)
    {

      v33 = 0;
    }
  }

  v121 = v33;
  v34 = sub_1E39C408C(26);
  if (v34 && *v34 != _TtC8VideosUI13TextViewModel)
  {
  }

  v35 = sub_1E39C408C(23);
  v132 = v24;
  if (v35 && *v35 != _TtC8VideosUI13TextViewModel)
  {
  }

  v36 = sub_1E39C408C(15);
  if (v36 && *v36 != _TtC8VideosUI13TextViewModel)
  {
  }

  v38 = sub_1E3EE573C(v37, a1);

  if (v38)
  {
    type metadata accessor for TextLayout();
    v39 = swift_dynamicCastClass();
    if (!v39)
    {
    }
  }

  else
  {
    v39 = 0;
  }

  v41 = sub_1E3EE573C(v40, a1);

  if (v41)
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
    }
  }

  else
  {
    v42 = 0;
  }

  v119 = a1;
  v44 = sub_1E3EE573C(v43, a1);

  if (v44)
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
    }

    if (!v39)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v45 = 0;
    if (!v39)
    {
      goto LABEL_47;
    }
  }

  v46 = *(*v39 + 152);

  v46(&v149, v47);

  if ((v150 & 1) == 0)
  {
    if (!v45)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_47:
  if (v42)
  {
    OUTLINED_FUNCTION_111();
    (*(v48 + 152))(&v151);
    if (!v45)
    {
      goto LABEL_54;
    }
  }

  else if (!v45)
  {
    goto LABEL_54;
  }

LABEL_53:
  v49 = *(*v45 + 152);

  v49(__src, v50);

  if ((__src[4] & 1) == 0)
  {
    v54 = *&__src[2];

    goto LABEL_60;
  }

LABEL_54:
  if (v42)
  {
    OUTLINED_FUNCTION_111();
    (*(v51 + 152))(__dst);

    v52 = OUTLINED_FUNCTION_22_85(&v152);
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0.0;
    }
  }

  else
  {

    v54 = 0.0;
  }

LABEL_60:
  v55 = sub_1E39C408C(39);
  v56 = v119;
  if (!v119)
  {
    if (v55)
    {
      goto LABEL_65;
    }

LABEL_70:
    v63 = 0.0;
    goto LABEL_71;
  }

  if (!v55)
  {
    goto LABEL_70;
  }

  v57 = *(*v119 + 1624);
  v58 = *(v55 + 98);

  v59 = v57(v58, 0);

  if (v59)
  {
    goto LABEL_66;
  }

LABEL_65:
  OUTLINED_FUNCTION_111();
  if (!(*(v60 + 392))())
  {

    goto LABEL_70;
  }

LABEL_66:
  OUTLINED_FUNCTION_8();
  (*(v61 + 152))(__dst);

  v62 = OUTLINED_FUNCTION_22_85(&v153);
  if (v53)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0.0;
  }

LABEL_71:
  v64 = sub_1E39C408C(26);
  v65 = v64;
  if (v64)
  {
    if (*v64 == _TtC8VideosUI13TextViewModel)
    {
    }

    else
    {

      v65 = 0;
    }
  }

  v66 = sub_1E3EE573C(v65, v56);

  if (!v66)
  {
    goto LABEL_81;
  }

  type metadata accessor for TextLayout();
  if (!swift_dynamicCastClass())
  {

LABEL_81:

    v71 = 2.0;
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_30();
  v68 = *(v67 + 152);

  v68(__dst, v69);

  v70 = OUTLINED_FUNCTION_22_85(&v152);
  if (v53)
  {
    v71 = v70;
  }

  else
  {
    v71 = 2.0;
  }

LABEL_82:
  v119 = sub_1E39C408C(60);
  v72 = sub_1E4201B84();
  v73 = v141;
  *v141 = v72;
  *(v73 + 1) = v63;
  *(v73 + 16) = 0;
  v118 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCE0) + 44));

  v74 = sub_1E4201D54();
  LOBYTE(v151) = 0;
  v75 = v120 & 1;
  v76 = v143;

  v77 = v140;

  __src[0] = v74;
  *&__src[1] = v71;
  LOBYTE(__src[2]) = v151;
  __src[3] = v76;
  LOBYTE(__src[4]) = v75;
  __src[5] = v78;
  LOBYTE(__src[6]) = v75;
  __src[7] = v77;
  LOBYTE(__src[8]) = v75;
  v79 = v135;
  sub_1E4202474();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCE8);
  v81 = sub_1E3A1558C(&qword_1EE2884E8, &qword_1ECF3BCE8);
  v82 = v122;
  sub_1E4203224();
  v83 = *(v145 + 8);
  v145 += 8;
  v120 = v83;
  v83(v79, v144);
  memcpy(__dst, __src, 0x41uLL);
  sub_1E325F69C(__dst, &qword_1ECF3BCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270);
  v84 = v129;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1E4297BE0;
  sub_1E4201CA4();
  __src[0] = v85;
  sub_1E3EE8878(&qword_1EE289298, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278);
  sub_1E3A1558C(&qword_1EE23B5D8, &qword_1ECF35278);
  v86 = v128;
  v87 = v131;
  sub_1E42072E4();
  __src[0] = v80;
  __src[1] = v81;
  swift_getOpaqueTypeConformance2();
  v88 = v123;
  v89 = v125;
  sub_1E4203294();
  (*(v84 + 8))(v86, v87);
  (*(v124 + 8))(v82, v89);
  v90 = v126;
  OUTLINED_FUNCTION_68(v88, v126);
  v91 = v118;
  *v118 = v146;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCF0);
  OUTLINED_FUNCTION_68(v90, v91 + *(v92 + 48));

  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v93, v94);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v95, v96);

  sub_1E4202474();
  OUTLINED_FUNCTION_9_0();
  sub_1E3A1558C(v97, &qword_1ECF3BCC0);
  v98 = v132;
  v99 = v141;
  sub_1E4203224();
  v120(v79, v144);
  sub_1E325F69C(v99, &qword_1ECF3BCC0);
  sub_1E4202744();
  v100 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v53)
  {
    v100 = sub_1E4202774();
  }

  sub_1E4200A54();
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v138;
  (*(v133 + 32))(v138, v98, v134);
  OUTLINED_FUNCTION_141();
  v111 = v109 + v110;
  *v111 = v100;
  *(v111 + 8) = v102;
  *(v111 + 16) = v104;
  *(v111 + 24) = v106;
  *(v111 + 32) = v108;
  *(v111 + 40) = 0;
  sub_1E4202754();
  v112 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v53)
  {
    v112 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v113 = v137;
  sub_1E3741EA0(v109, v137, &qword_1ECF3BCD0);
  OUTLINED_FUNCTION_141();
  v115 = v113 + v114;
  *v115 = v112;
  *(v115 + 8) = v102;
  *(v115 + 16) = v54;
  *(v115 + 24) = v104;
  *(v115 + 32) = v106;
  *(v115 + 40) = 0;
  v116 = v139;
  sub_1E3741EA0(v113, v139, &qword_1ECF3BCD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BCF8);
  *(v116 + *(result + 36)) = 256;
  return result;
}

void sub_1E3EE68D4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v44 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v42 - v4;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v42 - v17;
  sub_1E3EB9BB4(v54);
  v19 = OUTLINED_FUNCTION_18();
  v43 = v5;
  sub_1E37E8BE8(v1, v54, 0, v19 & 1, 0, 0, v5);
  v20 = sub_1E375C31C(v54);
  v21 = *(*v1 + 392);
  v53 = *v1 + 392;
  v52 = v21;
  if (v21(v20))
  {
    OUTLINED_FUNCTION_30();
    v51 = (*(v22 + 248))();
    v50 = v23;
  }

  else
  {
    v51 = 0;
    v50 = 1;
  }

  v49 = v1;
  OUTLINED_FUNCTION_13_151();
  v25 = v24();
  v47 = v8;
  if (v25)
  {
    (*(*v25 + 352))();
  }

  sub_1E4203DA4();
  v26 = 1;
  sub_1E42015C4();
  v27 = v47;
  (*(v44 + 32))(v47, v43, v45);
  OUTLINED_FUNCTION_141();
  memcpy((v27 + v28), v55, 0x70uLL);
  OUTLINED_FUNCTION_13_151();
  if (v29())
  {
    OUTLINED_FUNCTION_30();
    v31 = (*(v30 + 432))();
    v26 = v32;
  }

  else
  {
    v31 = 0;
  }

  sub_1E3741EA0(v27, v11, &qword_1ECF2FE60);
  OUTLINED_FUNCTION_141();
  v34 = &v11[v33];
  *v34 = v31;
  v34[8] = v26 & 1;
  v34[9] = 0;
  OUTLINED_FUNCTION_13_151();
  if (!v35() || (OUTLINED_FUNCTION_30(), v37 = (*(v36 + 744))(), , !v37))
  {
    v37 = [objc_opt_self() clearColor];
  }

  v38 = sub_1E38F08C4(v37);

  v39 = sub_1E4202734();
  v40 = v48;
  sub_1E3741EA0(v11, v48, &qword_1ECF3BD38);
  v41 = v40 + *(v12 + 36);
  *v41 = v38;
  *(v41 + 8) = v39;
  sub_1E3741EA0(v40, v18, &qword_1ECF3BD40);
  *&v18[*(v15 + 36)] = 256;
  sub_1E3EE8530();
  sub_1E4203594();
  sub_1E325F69C(v18, &qword_1ECF3BD48);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3EE6F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_35_65();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BD30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  if (v21)
  {
    type metadata accessor for ImageViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_31_4();

      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_8();
      v29 = (*(v28 + 1000))(0);
      if (v30 != 0xFF)
      {
        v31 = v29;
        v32 = v30;
        sub_1E3EE68D4();
        OUTLINED_FUNCTION_8();
        v34 = *(v33 + 344);

        v36 = v34(v35);

        sub_1E379098C(v31, v32);

        v27[*(v24 + 36)] = v36 & 1;
        sub_1E3741EA0(v27, v20, &qword_1ECF3BD30);
        v37 = OUTLINED_FUNCTION_22_1();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v24);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
}

void sub_1E3EE70CC()
{
  OUTLINED_FUNCTION_35_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_20_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v4);
  if (v0)
  {

    sub_1E3F23370();
    sub_1E4202754();
    OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v5)
    {
      sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v6 + 152))(&v20);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v12 = OUTLINED_FUNCTION_31_72();
    v13(v12);
    OUTLINED_FUNCTION_19_123();
    OUTLINED_FUNCTION_38_58();
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1E3EE7310()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_35_65();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  if (v1)
  {
    v22 = v8;
    type metadata accessor for Accessibility();
    v11 = *(*v1 + 320);
    v21 = v0;

    v11(v12);
    sub_1E40A7DC8();

    sub_1E3F23370();
    swift_getOpaqueTypeConformance2();
    sub_1E4202EA4();

    (*(v5 + 8))(v2, v3);
    sub_1E3741EA0(v10, v21, &qword_1ECF2EF50);
    v13 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v22);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

void sub_1E3EE7558()
{
  OUTLINED_FUNCTION_35_65();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_20_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v4);
  if (v0)
  {

    sub_1E3F23370();
    sub_1E4202744();
    OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v5)
    {
      sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v6 + 152))(v20);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v12 = OUTLINED_FUNCTION_31_72();
    v13(v12);
    OUTLINED_FUNCTION_19_123();
    OUTLINED_FUNCTION_38_58();
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v14, v15, v16);
    v17 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1E3EE779C()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_21_1();
  sub_1E3A1558C(v1, v2);
  return sub_1E42006B4();
}

void sub_1E3EE7820()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v28 = v0;
  v4 = v3;
  v30 = v5;
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = sub_1E42039A4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_29();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v29 = &v27 - v21;
  (*(v7 + 16))(v11, v2, v4, v20);
  v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v14;
  (*(v7 + 32))(v23 + v22, v11, v4);
  v31 = v13;
  v32 = v14;
  v33 = v28;
  sub_1E4203964();
  OUTLINED_FUNCTION_6_185();
  swift_getWitnessTable();
  v24 = *(v17 + 16);
  v25 = v29;
  v24(v29, v1, v15);
  v26 = *(v17 + 8);
  v26(v1, v15);
  v24(v30, v25, v15);
  v26(v25, v15);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3EE7A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for RichHeaderButtonView();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 36), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_1E3EE7BD8()
{
  type metadata accessor for RichHeaderButtonView();
  memset(v30, 0, sizeof(v30));
  v31 = 1;
  sub_1E40421AC(2, 0, v30, v25);
  v0 = v25[0];
  v1 = v26;
  v19 = v28;
  v20 = v27;
  v2 = v29;
  v3 = sub_1E39C408C(60);
  if (!v3)
  {
    goto LABEL_16;
  }

  type metadata accessor for SeeAllButton();
  if ((sub_1E3DFBA90(v3) & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = sub_1E39BE4D0();
  if (v4)
  {
    v5 = v4;
    v32 = 9;
    OUTLINED_FUNCTION_111();
    (*(v6 + 776))(v21, &v32, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (*(&v22 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v32)
        {
          OUTLINED_FUNCTION_111();
          v8 = v3;
          v9 = (*(v7 + 624))();
          if (v9)
          {
            while (1)
            {
              type metadata accessor for CollectionViewModel();
              if (swift_dynamicCastClass())
              {
                OUTLINED_FUNCTION_30();
                v11 = v10;
                if (type metadata accessor for SearchCollectionViewModel() != v10)
                {
                  break;
                }
              }

              v8 = v9;
              (*(*v9 + 624))();
              OUTLINED_FUNCTION_31_4();
            }

            v12 = *(v11 + 1440);

            v12(v13);
            OUTLINED_FUNCTION_31_4();

            sub_1E3744600(v5);

            sub_1E3744600(v8);

            v17 = objc_allocWithZone(VUIRouterDataSource);
            OUTLINED_FUNCTION_31_4();
            v18 = sub_1E37C07A4();
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      sub_1E325F69C(v21, &unk_1ECF296E0);
    }

    OUTLINED_FUNCTION_111();
    v18 = (*(v14 + 544))();
LABEL_15:
    v1 = v18;
    sub_1E38E5014(v25);

LABEL_16:
    LOBYTE(v21[0]) = v0;
    v21[1] = v1;
    v22 = v20;
    v23 = v19;
    v24 = v2;
    v15 = v1;
    sub_1E4200524();
  }

  sub_1E38E5014(v25);
}

unint64_t sub_1E3EE7F58()
{
  result = qword_1EE29CFC0[0];
  if (!qword_1EE29CFC0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29CFC0);
  }

  return result;
}

unint64_t sub_1E3EE7FBC()
{
  result = qword_1EE289938;
  if (!qword_1EE289938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD00);
    sub_1E4202054();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD20);
    sub_1E3EE7F58();
    swift_getOpaqueTypeConformance2();
    sub_1E3EE8878(&qword_1EE2889F0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE288760, &qword_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289938);
  }

  return result;
}

uint64_t sub_1E3EE8168(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

void *sub_1E3EE81B8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3EE8214(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

void *sub_1E3EE8264(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      return OUTLINED_FUNCTION_25_9(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3EE82BC()
{
  result = qword_1EE2894A0;
  if (!qword_1EE2894A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCF8);
    sub_1E3EE8348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894A0);
  }

  return result;
}

unint64_t sub_1E3EE8348()
{
  result = qword_1EE2895C0;
  if (!qword_1EE2895C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCD8);
    sub_1E3EE83D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895C0);
  }

  return result;
}

unint64_t sub_1E3EE83D4()
{
  result = qword_1EE289908;
  if (!qword_1EE289908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BCC0);
    sub_1E3A1558C(&qword_1EE288600, &qword_1ECF3BCC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289908);
  }

  return result;
}

unint64_t sub_1E3EE8530()
{
  result = qword_1EE289450;
  if (!qword_1EE289450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD48);
    sub_1E3EE85E8();
    sub_1E3A1558C(&qword_1EE289E00, &unk_1ECF2A1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289450);
  }

  return result;
}

unint64_t sub_1E3EE85E8()
{
  result = qword_1EE289510;
  if (!qword_1EE289510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD40);
    sub_1E3EE86A0();
    sub_1E3A1558C(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289510);
  }

  return result;
}

unint64_t sub_1E3EE86A0()
{
  result = qword_1EE289708;
  if (!qword_1EE289708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD38);
    sub_1E39B5D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289708);
  }

  return result;
}

uint64_t sub_1E3EE872C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1E3EE87A4()
{
  result = qword_1EE289C78;
  if (!qword_1EE289C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EF50);
    swift_getOpaqueTypeConformance2();
    sub_1E3EE8878(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C78);
  }

  return result;
}

uint64_t sub_1E3EE8878(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3EE88BC()
{
  result = qword_1EE289840;
  if (!qword_1EE289840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD30);
    sub_1E3EE8948();
    sub_1E38680BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289840);
  }

  return result;
}

unint64_t sub_1E3EE8948()
{
  result = qword_1EE2886A0;
  if (!qword_1EE2886A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BD48);
    sub_1E3EE8530();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886A0);
  }

  return result;
}

uint64_t sub_1E3EE8A24()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 24) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE43620](v2);
}

uint64_t sub_1E3EE8AC4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E383612C, 0, 0);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_18_115();

    return v7(v6);
  }
}

uint64_t sub_1E3EE8C20(uint64_t a1, const void *a2)
{
  v4 = sub_1E41FDDF4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  sub_1E41FDDA4();
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1E3EE8D38;

  return static VUIUTSNetworkManagerProxy.execute(request:)(v5);
}

uint64_t sub_1E3EE8D38(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *v2;
  *v7 = *v2;

  v9 = v5[5];
  (*(v5[3] + 8))(v5[4], v5[2]);
  if (v3)
  {
    v10 = sub_1E41FE264();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = v8[1];

  return v11();
}

uint64_t sub_1E3EE8F1C()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 24) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_33(v1);

  return MEMORY[0x1EEE43610](v2);
}

uint64_t sub_1E3EE8FDC(uint64_t a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_53_0();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;

  return sub_1E38364EC(a6, v10);
}

uint64_t sub_1E3EE9054(uint64_t a1, const void *a2)
{
  v4 = sub_1E41FDDF4();
  v2[2] = v4;
  v2[3] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[4] = v5;
  v2[5] = _Block_copy(a2);
  sub_1E41FDDA4();
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1E3EE916C;

  return static VUIUTSNetworkManagerProxy.cancel(request:)(v5);
}

uint64_t sub_1E3EE916C()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_27_0();
  v6(v5);
  v2[2](v2);
  _Block_release(v2);

  OUTLINED_FUNCTION_54();

  return v7();
}

uint64_t sub_1E3EE92EC()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 16) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1E3EE9398;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE43608](v2);
}

uint64_t sub_1E3EE9398()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3EE94D4, 0, 0);
  }

  else
  {

    v6 = OUTLINED_FUNCTION_18_115();

    return v7(v6);
  }
}

uint64_t sub_1E3EE94D4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3EE95AC(char a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1E3EE964C;

  return static VUIUTSNetworkManagerProxy.fetchConfiguration(force:)(a1);
}

uint64_t sub_1E3EE964C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  v8 = *(v5 + 16);
  if (v2)
  {
    v9 = sub_1E41FE264();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, v4, 0);
    _Block_release(v8);
  }

  v10 = *(v6 + 8);

  return v10();
}

void static VUIUTSNetworkManagerProxy.createURLRequest(from:urlRequest:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a1;
  v109 = a2;
  v4 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v113 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_3();
  v105 = v7;
  v106 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v104 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v103 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v88 - v12;
  v14 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v88 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v88 - v32;
  v34 = *(v113 + 16);
  v35 = v109;
  v109 = v4;
  v34(a3, v35, v4, v31);
  sub_1E41FDDC4();
  if (__swift_getEnumTagSinglePayload(v33, 1, v14))
  {
    sub_1E325F748(v33, &unk_1ECF363C0);
    sub_1E3EEA35C();
    OUTLINED_FUNCTION_206();
    *v36 = 1;
    swift_willThrow();
    v37 = a3;
LABEL_25:
    (*(v113 + 8))(v37, v109);
    return;
  }

  v99 = v29;
  v94 = v26;
  v98 = v19;
  v95 = v13;
  v100 = a3;
  v38 = v108;
  v39 = *(v108 + 16);
  v92 = v108 + 16;
  v91 = v39;
  v39(v22, v33, v14);
  sub_1E325F748(v33, &unk_1ECF363C0);
  v101 = sub_1E41FE314();
  v41 = v40;
  v42 = *(v38 + 8);
  v93 = v22;
  v97 = v42;
  v96 = v38 + 8;
  v42(v22, v14);
  v43 = v107;
  v44 = [v107 httpMethod];
  v90 = sub_1E4205F14();
  v102 = v45;

  v46 = [v43 headers];
  v47 = v14;
  v48 = sub_1E4205C64();

  v49 = [v43 queryParameters];
  v50 = sub_1E4205C64();

  v51 = [v43 timeout];
  v52 = [v43 options];
  v53 = v43;
  v54 = [v43 options];
  v55 = OUTLINED_FUNCTION_305();
  v56 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v56 = v55 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

    OUTLINED_FUNCTION_19_124();

    return;
  }

  v89 = v52;
  v57 = v99;
  sub_1E41FE404();

  if (__swift_getEnumTagSinglePayload(v57, 1, v47) == 1)
  {

    OUTLINED_FUNCTION_19_124();
    sub_1E325F748(v57, &unk_1ECF363C0);
    sub_1E3EEA35C();
    OUTLINED_FUNCTION_206();
    *v58 = 1;
    swift_willThrow();

LABEL_24:
    v37 = v100;
    goto LABEL_25;
  }

  v59 = v47;
  v101 = v48;
  v60 = v108 + 32;
  v61 = v98;
  v88 = *(v108 + 32);
  v88(v98, v57, v59);
  v62 = objc_opt_self();
  v63 = sub_1E3EEA608(v50, v62);
  if (!v63)
  {
    OUTLINED_FUNCTION_305();

    OUTLINED_FUNCTION_19_124();
    sub_1E3EEA35C();
    OUTLINED_FUNCTION_206();
    *v67 = 0;
    swift_willThrow();

    v97(v61, v59);
    goto LABEL_24;
  }

  v64 = v63;
  v108 = v60;
  v99 = v51;
  v65 = v95;
  sub_1E41FDFB4();
  if (!*(v64 + 16))
  {

    v68 = v105;
    v69 = v97;
    goto LABEL_27;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v106);
  if ((v54 & 2) != 0)
  {
    if (!EnumTagSinglePayload)
    {
      sub_1E41FDFA4();
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (EnumTagSinglePayload)
  {
LABEL_17:

    goto LABEL_19;
  }

  sub_1E41FDF94();
LABEL_19:
  v70 = v106;
  if (__swift_getEnumTagSinglePayload(v65, 1, v106))
  {
    OUTLINED_FUNCTION_305();

    v71 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v59);
    v69 = v97;
LABEL_23:
    sub_1E325F748(v71, &unk_1ECF363C0);
    sub_1E3EEA35C();
    OUTLINED_FUNCTION_206();
    *v75 = 1;
    swift_willThrow();

    v76 = OUTLINED_FUNCTION_13_152();
    v69(v76);
    sub_1E325F748(v65, &qword_1ECF304A8);
    goto LABEL_24;
  }

  v72 = v104;
  v73 = v103;
  (*(v104 + 16))(v103, v65, v70);
  v71 = v94;
  sub_1E41FDFC4();
  (*(v72 + 8))(v73, v70);
  v74 = __swift_getEnumTagSinglePayload(v71, 1, v59);
  v69 = v97;
  if (v74 == 1)
  {
    OUTLINED_FUNCTION_305();

    OUTLINED_FUNCTION_19_124();
    goto LABEL_23;
  }

  v61 = v98;
  v77 = OUTLINED_FUNCTION_13_152();
  v69(v77);
  v88(v61, v71, v59);
  v68 = v105;
LABEL_27:
  v91(v93, v61, v59);
  sub_1E41FE944();
  sub_1E41FDDB4();
  (*(v113 + 40))(v100, v68, v109);
  sub_1E41FDD64();
  sub_1E3EEA6B0(v53);
  sub_1E41FDDE4();
  v78 = v101;
  if (*(v101 + 16))
  {
    v79 = v59;
    v80 = v101 + 64;
    v81 = 1 << *(v101 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(v101 + 64);
    v84 = (v81 + 63) >> 6;

    v85 = 0;
    if (v83)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v86 >= v84)
      {

        v65 = v95;
        v69 = v97;
        v59 = v79;
        goto LABEL_43;
      }

      v83 = *(v80 + 8 * v86);
      ++v85;
      if (v83)
      {
        v85 = v86;
        do
        {
LABEL_35:
          v87 = __clz(__rbit64(v83)) | (v85 << 6);
          sub_1E374E74C(*(v78 + 48) + 40 * v87, v111);
          sub_1E328438C(*(v78 + 56) + 32 * v87, v112);
          sub_1E374E74C(v111, v110);
          if (swift_dynamicCast())
          {
            sub_1E328438C(v112, v110);
            if (swift_dynamicCast())
            {
              sub_1E41FDDD4();
            }

            v78 = v101;
          }

          v83 &= v83 - 1;
          sub_1E325F748(v111, &qword_1ECF28E40);
        }

        while (v83);
      }
    }

    __break(1u);
  }

  else
  {

LABEL_43:
    if ((v89 & 8) != 0)
    {
      sub_1E41FDD74();

      (v69)(v98, v59);
    }

    else
    {
      (v69)(v98, v59);
    }

    sub_1E325F748(v65, &qword_1ECF304A8);
  }
}

unint64_t sub_1E3EEA35C()
{
  result = qword_1ECF3BD60;
  if (!qword_1ECF3BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD60);
  }

  return result;
}

id VUIUTSNetworkManagerProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIUTSNetworkManagerProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIUTSNetworkManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSNetworkManagerProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3EEA608(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  v4 = [a2 vui:v3 sortedQueryItemsFromDictionary:?];

  if (!v4)
  {
    return 0;
  }

  sub_1E41FDF74();
  v5 = sub_1E42062B4();

  return v5;
}

uint64_t sub_1E3EEA6B0(void *a1)
{
  v1 = [a1 httpBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E41FE464();

  return v3;
}

unint64_t sub_1E3EEA73C()
{
  result = qword_1ECF3BD68;
  if (!qword_1ECF3BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD68);
  }

  return result;
}

unint64_t sub_1E3EEA794()
{
  result = qword_1ECF3BD70;
  if (!qword_1ECF3BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD70);
  }

  return result;
}

unint64_t sub_1E3EEA7EC()
{
  result = qword_1ECF3BD78;
  if (!qword_1ECF3BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD78);
  }

  return result;
}

unint64_t sub_1E3EEA844()
{
  result = qword_1ECF3BD80;
  if (!qword_1ECF3BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD80);
  }

  return result;
}

unint64_t sub_1E3EEA89C()
{
  result = qword_1ECF3BD88;
  if (!qword_1ECF3BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BD88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VUIUTSNetworkManagerProxy.UTSManagerProxyError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3EEA9DC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_186(v5);

  return v7(v1, v3, v2);
}

uint64_t sub_1E3EEAA7C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_186(v1);
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3EEAB18()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_186(v1);
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3EEABB4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(0, v4, v3, v5);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3EEAC3C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(0, v4, v3, v5);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3EEACC4()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    v3 = sub_1E3B050E8();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_54();
    v1 = sub_1E3BBD964(2, v4, v3, v5);
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3EEAD80()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3EEAE30();
  if ((TVAppFeature.isEnabled.getter(20) & 1) == 0)
  {
    v4 = sub_1E3EEABB4();
    sub_1E3C37EC8(v4, &unk_1F5D8C500);

    v2 = sub_1E3EEAC3C();
    v3 = &unk_1F5D8C528;
    goto LABEL_6;
  }

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    v2 = sub_1E3EEABB4();
    v3 = &unk_1F5D8C4D8;
LABEL_6:
    sub_1E3C37EC8(v2, v3);
  }

  return v1;
}

uint64_t sub_1E3EEAE30()
{
  LOBYTE(v521[0]) = 16;
  sub_1E3C3DE00(&unk_1F5D995F0);
  LOBYTE(v476) = v517[0];
  sub_1E3C3DE00(&unk_1F5D995F0);
  LOBYTE(v537) = v542[0];
  sub_1E3C3DE00(&unk_1F5D995F0);
  LOBYTE(v516) = v532;
  v1 = OUTLINED_FUNCTION_19_125();
  sub_1E3C2FCB8(v1, v2);
  OUTLINED_FUNCTION_37_66();
  OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC();
  LOBYTE(v529) = 4;
  LOBYTE(__src[0]) = 1;
  sub_1E3C3DE00(&unk_1F5D99680);
  LOBYTE(v517[0]) = 16;
  sub_1E3C3DE00(&unk_1F5D99680);
  LOBYTE(v542[0]) = v476;
  sub_1E3C3DE00(&unk_1F5D99680);
  LOBYTE(v532) = v537;
  sub_1E3C3DE00(&unk_1F5D99680);
  LOBYTE(v514) = v516;
  v3 = OUTLINED_FUNCTION_19_125();
  sub_1E3C2FCB8(v3, v4);
  OUTLINED_FUNCTION_37_66();
  OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC();
  if (TVAppFeature.isEnabled.getter(20))
  {
    v5 = 0x4089000000000000;
  }

  else
  {
    v5 = 0x4087200000000000;
  }

  OUTLINED_FUNCTION_33_73(v5);
  *&v529 = 0x407E000000000000;
  BYTE8(v529) = 0;
  v6 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_199();
  v7 = sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_5_197(v7, v8, v9, v10, v11, v12, v13, v14, v446, v461, v476, v492);
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_9_156();
  OUTLINED_FUNCTION_45_60();
  sub_1E3C2FCB8(v15, v16);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36_62();
  sub_1E3C2FDFC();
  v526 = 0;
  LOBYTE(v527) = 1;
  v524 = 0x406FC00000000000;
  LOBYTE(v525) = 0;
  if (TVAppFeature.isEnabled.getter(20))
  {
    v17 = 0x4089000000000000;
  }

  else
  {
    v17 = 0x4087200000000000;
  }

  OUTLINED_FUNCTION_33_73(v17);
  *&v529 = 0x407E000000000000;
  BYTE8(v529) = 0;
  OUTLINED_FUNCTION_26_99();
  v18 = sub_1E3C2FC98();
  OUTLINED_FUNCTION_6_187(v18, v19, v20, v21, v22, v23, v24, v25, v447, v462, v477, v493);
  OUTLINED_FUNCTION_45_60();
  sub_1E3C2FCB8(v26, v27);
  memcpy(__dst, v521, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36_62();
  sub_1E3C2FDFC();
  *&v529 = 0;
  BYTE8(v529) = 1;
  OUTLINED_FUNCTION_42_63();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_2_212();
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_4_212();
  sub_1E3C3DE00(v6);
  v522 = v514;
  LOBYTE(v523) = v515;
  v28 = OUTLINED_FUNCTION_19_125();
  sub_1E3C2FCB8(v28, v29);
  OUTLINED_FUNCTION_17_127();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC();
  *&v529 = 0x4048000000000000;
  BYTE8(v529) = 0;
  OUTLINED_FUNCTION_26_99();
  v30 = sub_1E3C2FC98();
  OUTLINED_FUNCTION_5_197(v30, v31, v32, v33, v34, v35, v36, v37, v448, v463, v478, v494);
  sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_9_156();
  v38 = OUTLINED_FUNCTION_29_87();
  sub_1E3C3DE00(v38);
  OUTLINED_FUNCTION_12_144();
  sub_1E3C3DE00(v6);
  v519 = v522;
  LOBYTE(v520) = v523;
  v39 = OUTLINED_FUNCTION_13_153();
  sub_1E3C2FCB8(v39, v40);
  OUTLINED_FUNCTION_17_127();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC();
  CTFontHasExuberatedLineHeight();
  memset(v517, 0, 32);
  LOBYTE(v517[4]) = 1;
  TVAppFeature.isEnabled.getter(20);
  sub_1E3952C58();
  v479 = v41;
  v495 = v42;
  v503[0] = v43;
  v503[1] = v44;
  LOBYTE(v505) = 0;
  TVAppFeature.isEnabled.getter(20);
  sub_1E3952C58();
  OUTLINED_FUNCTION_4_167(v45, v46, v47, v48);
  sub_1E3952C94();
  OUTLINED_FUNCTION_34_67(v49, v50, v51, v52);
  type metadata accessor for UIEdgeInsets();
  v54 = v53;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_39_59();
  v55 = OUTLINED_FUNCTION_29_87();
  sub_1E3C3DE00(v55);
  sub_1E3C2FCB8(v517, __dst);
  OUTLINED_FUNCTION_38_59();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_18_116();
  sub_1E3C2FDFC();
  v56 = TVAppFeature.isEnabled.getter(10);
  v57 = MEMORY[0x1E69DDCE0];
  if ((v56 & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    v58 = sub_1E3EEABB4();
    (*(*v58 + 2048))(v58);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_3_11();
    (*(v59 + 872))(0);

    OUTLINED_FUNCTION_36();
    v61 = (v60 + 2096);
    v62 = *(v60 + 2096);

    v62(v63);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_3_11();
    (*(v64 + 872))(0);

    objc_opt_self();
    OUTLINED_FUNCTION_112();

    v465 = v61;
    *&v529 = [v61 whiteColor];
    v65 = sub_1E3755B54();
    sub_1E3C2FC98();
    v521[0] = *&__src[0];
    v66 = OUTLINED_FUNCTION_22_86();
    sub_1E3C3DE00(v66);
    v480 = v517[0];
    sub_1E3C3DE00(v65);
    v537 = v542[0];
    sub_1E3C3DE00(v65);
    v67 = OUTLINED_FUNCTION_40_61();
    sub_1E3C3DE00(v67);
    v68 = OUTLINED_FUNCTION_19_125();
    OUTLINED_FUNCTION_21_97(v68, v69);
    v70 = __dst[0];
    v71 = __dst[1];
    v72 = __dst[2];
    v529 = __dst[0];
    v530 = __dst[1];
    v531 = __dst[2];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v73 = OUTLINED_FUNCTION_18_116();
    v74(v73, 24);

    v526 = 0x4048000000000000;
    LOBYTE(v527) = 0;
    v524 = 0x4050800000000000;
    LOBYTE(v525) = 0;

    v75 = TVAppFeature.isEnabled.getter(20);
    v76 = 0x4042000000000000;
    if (v75)
    {
      v76 = 0x4048000000000000;
    }

    OUTLINED_FUNCTION_33_73(v76);
    *&v529 = 0;
    BYTE8(v529) = 1;
    v77 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v78 = sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_6_187(v78, v79, v80, v81, v82, v83, v84, v85, v449, v465, v480, v495);
    sub_1E3C2FCB8(&v526, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v86 = OUTLINED_FUNCTION_36_62();
    v87(v86, 6);

    OUTLINED_FUNCTION_32_74();
    v521[0] = 0x4050800000000000;
    LOBYTE(v521[1]) = 0;

    sub_1E3C2FC98();
    v481 = v517[0];
    v496 = v517[1];
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_0_278();
    sub_1E3C2FCB8(v88, v89);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v90 = OUTLINED_FUNCTION_18_116();
    v91(v90, 8);

    OUTLINED_FUNCTION_32_74();

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v92 = sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_5_197(v92, v93, v94, v95, v96, v97, v98, v99, v450, v466, v481, v496);
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_9_156();
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_12_144();
    sub_1E3C3DE00(v77);
    v522 = v516;
    LOBYTE(v523) = 1;
    v100 = OUTLINED_FUNCTION_15_137();
    OUTLINED_FUNCTION_47_49(v100, v101);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v102 = OUTLINED_FUNCTION_18_116();
    v103(v102, 7);

    OUTLINED_FUNCTION_32_74();

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v104 = sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_5_197(v104, v105, v106, v107, v108, v109, v110, v111, v451, v467, v482, v497);
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_9_156();
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_12_144();
    sub_1E3C3DE00(v77);
    v522 = v516;
    LOBYTE(v523) = 1;
    v112 = OUTLINED_FUNCTION_15_137();
    OUTLINED_FUNCTION_47_49(v112, v113);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v114 = OUTLINED_FUNCTION_18_116();
    v115(v114, 2);

    v522 = 0;
    LOBYTE(v523) = 1;
    v519 = 0x4070900000000000;
    LOBYTE(v520) = 0;

    v116 = TVAppFeature.isEnabled.getter(20);
    v117 = 0x406FC00000000000;
    if (v116)
    {
      v117 = 0x4070900000000000;
    }

    v517[12] = v117;
    LOBYTE(v518) = 0;
    v118 = TVAppFeature.isEnabled.getter(20);
    v119 = 0x407F400000000000;
    if (v118)
    {
      v119 = 0x4078600000000000;
    }

    OUTLINED_FUNCTION_33_73(v119);
    *&v529 = 0x406E000000000000;
    BYTE8(v529) = 0;
    v517[0] = 0x4070400000000000;
    LOBYTE(v517[1]) = 0;
    OUTLINED_FUNCTION_45_60();
    sub_1E3C2FCB8(v120, v121);
    memcpy(__dst, v521, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v122 = OUTLINED_FUNCTION_36_62();
    v123(v122, 4);

    TVAppFeature.isEnabled.getter(20);
    v124 = TVAppFeature.isEnabled.getter(20);
    v125 = 0x4071800000000000;
    if (v124)
    {
      v125 = 0x406B800000000000;
    }

    OUTLINED_FUNCTION_33_73(v125);
    *&v529 = 0x406B800000000000;
    BYTE8(v529) = 0;
    LOBYTE(v498) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00(v77);
    OUTLINED_FUNCTION_45_60();
    sub_1E3C2FCB8(v126, v127);
    memcpy(__dst, v517, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v128 = OUTLINED_FUNCTION_36_62();
    v129(v128, 3);

    if (TVAppFeature.isEnabled.getter(20))
    {
      v130 = 12.0;
    }

    else
    {
      v130 = 8.0;
    }

    v131 = sub_1E3952C10(v130, 8.0);
    OUTLINED_FUNCTION_34_67(v131, v132, v133, v134);
    if (TVAppFeature.isEnabled.getter(20))
    {
      v135 = 0.0;
    }

    else
    {
      v135 = 8.0;
    }

    v537 = sub_1E3952C10(24.0, v135);
    v538 = v136;
    v539 = v137;
    v540 = v138;
    LOBYTE(v541) = 0;
    if (TVAppFeature.isEnabled.getter(20))
    {
      v139 = 12.0;
    }

    else
    {
      v139 = 8.0;
    }

    v532 = sub_1E3952C10(v139, 8.0);
    v533 = v140;
    v534 = v141;
    v535 = v142;
    LOBYTE(v536) = 0;
    if (TVAppFeature.isEnabled.getter(20))
    {
      v143 = sub_1E3952C10(14.0, 0.0);
    }

    else
    {
      v143 = *MEMORY[0x1E69DDCE0];
      v144 = *(MEMORY[0x1E69DDCE0] + 8);
      v145 = *(MEMORY[0x1E69DDCE0] + 16);
      v146 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    OUTLINED_FUNCTION_4_167(v143, v144, v145, v146);
    OUTLINED_FUNCTION_26_99();
    sub_1E3C2FC98();
    sub_1E3C3DE00(v54);
    sub_1E3C2FCB8(v542, __dst);
    OUTLINED_FUNCTION_38_59();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v147 = OUTLINED_FUNCTION_18_116();
    v148(v147, 0);

    if ((TVAppFeature.isEnabled.getter(20) & 1) == 0)
    {
      sub_1E39DFFC8();
    }

    v149 = *(**(v0 + 104) + 2048);

    v149(v150);

    v483 = [v468 blackColor];
    if (TVAppFeature.isEnabled.getter(20))
    {
      v151 = *sub_1E3E5FD88();
    }

    else
    {
      v152 = [v468 whiteColor];
    }

    [v468 whiteColor];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_48_45();
    v153 = OUTLINED_FUNCTION_46_52();
    OUTLINED_FUNCTION_25_87(v153, v154, v155, v156, v157, v158, v159, v160, v452, v468, v483, v498, v503[0], v503[1], v505, v507, v508, v510, v512);
    v161 = v529;
    v162 = v530;
    v163 = v531;
    v484 = v529;
    v499 = *(&v529 + 1);
    *v504 = v530;
    v506 = v531;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v172 = OUTLINED_FUNCTION_41_61(v164, v165, v166, v167, v168, v169, v170, v171, v453, v469, v484);
    v173(v172);

    v174 = *(**(v0 + 104) + 2096);

    v174(v175);

    v485 = [v470 blackColor];
    if (TVAppFeature.isEnabled.getter(20))
    {
      v176 = *sub_1E3E5FD88();
      v177 = &selRef_vui_disableLocalAsset;
    }

    else
    {
      v178 = [v470 whiteColor];
      v177 = &selRef_vui_disableLocalAsset;
    }

    [v470 v177[176]];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_48_45();
    v179 = OUTLINED_FUNCTION_46_52();
    OUTLINED_FUNCTION_25_87(v179, v180, v181, v182, v183, v184, v185, v186, v454, v470, v485, v499, v504[0], v504[1], v506, *(&v506 + 1), v509, v511, v513);
    v187 = v529;
    v188 = v530;
    v189 = v531;
    v486 = v529;
    v495 = BYTE8(v529);
    *v503 = v530;
    LOBYTE(v505) = v531;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v198 = OUTLINED_FUNCTION_41_61(v190, v191, v192, v193, v194, v195, v196, v197, v455, v471, v486);
    v199(v198);

    if (TVAppFeature.isEnabled.getter(20))
    {
      OUTLINED_FUNCTION_8();
      v201 = *(v200 + 2096);

      v203 = v201(v202);

      (*(*v203 + 2072))(7);

      OUTLINED_FUNCTION_36();
      v205 = *(v204 + 2096);

      v207 = v205(v206);

      (*(*v207 + 2168))(10);
    }

    *&v529 = *sub_1E3E5FA50();
    v208 = v529;
    sub_1E3C2CA00();

    OUTLINED_FUNCTION_36();
    v210 = *(v209 + 2048);

    v210(v211);
    OUTLINED_FUNCTION_112();

    OUTLINED_FUNCTION_3_11();
    (*(v212 + 1720))(7);

    v213 = TVAppFeature.isEnabled.getter(20);
    v57 = MEMORY[0x1E69DDCE0];
    if (v213)
    {
      OUTLINED_FUNCTION_8();
      v215 = *(v214 + 2048);

      v215(v216);
      OUTLINED_FUNCTION_112();

      OUTLINED_FUNCTION_3_11();
      (*(v217 + 1696))(7);
    }
  }

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 && (TVAppFeature.isEnabled.getter(20) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    sub_1E3EEAC3C();
    *&v529 = 0x4048000000000000;
    BYTE8(v529) = 0;
    OUTLINED_FUNCTION_43_60();
    v521[0] = 0x4042000000000000;
    LOBYTE(v521[1]) = 0;
    v517[0] = 0;
    LOBYTE(v517[1]) = 1;
    v218 = MEMORY[0x1E69E7DE0];
    v219 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_5_197(v219, v220, v221, v222, v223, v224, v225, v226, v449, v464, v479, v495);
    sub_1E3C3DE00(v218);
    OUTLINED_FUNCTION_9_156();
    OUTLINED_FUNCTION_13_153();
    OUTLINED_FUNCTION_31_73();
    sub_1E3C2FCB8(v227, v228);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v229 = OUTLINED_FUNCTION_18_116();
    v230(v229, 6);

    OUTLINED_FUNCTION_23_89();
    OUTLINED_FUNCTION_43_60();

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_199();
    v231 = sub_1E3C3DE00(v218);
    OUTLINED_FUNCTION_5_197(v231, v232, v233, v234, v235, v236, v237, v238, v456, v472, v487, v500);
    sub_1E3C3DE00(v218);
    OUTLINED_FUNCTION_9_156();
    sub_1E3C3DE00(v218);
    OUTLINED_FUNCTION_11_157();
    sub_1E3C2FCB8(v239, v240);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v241 = OUTLINED_FUNCTION_18_116();
    v242(v241, 8);

    OUTLINED_FUNCTION_23_89();

    sub_1E3C2FC98();
    v521[0] = *&__src[0];
    LOBYTE(v521[1]) = BYTE8(__src[0]);
    v243 = OUTLINED_FUNCTION_22_86();
    sub_1E3C3DE00(v243);
    v244 = OUTLINED_FUNCTION_3_212();
    sub_1E3C3DE00(v244);
    OUTLINED_FUNCTION_2_212();
    sub_1E3C3DE00(v218);
    OUTLINED_FUNCTION_4_212();
    sub_1E3C3DE00(v218);
    OUTLINED_FUNCTION_1_249();
    OUTLINED_FUNCTION_21_97(v245, v246);
    OUTLINED_FUNCTION_17_127();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v247 = OUTLINED_FUNCTION_18_116();
    v248(v247, 7);

    if (TVAppFeature.isEnabled.getter(10))
    {
      *&v529 = 0;
      BYTE8(v529) = 1;
      OUTLINED_FUNCTION_43_60();

      v249 = MEMORY[0x1E69E7DE0];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_7_199();
      v250 = sub_1E3C3DE00(v249);
      OUTLINED_FUNCTION_5_197(v250, v251, v252, v253, v254, v255, v256, v257, v457, v473, v488, v501);
      sub_1E3C3DE00(v249);
      OUTLINED_FUNCTION_9_156();
      v258 = OUTLINED_FUNCTION_29_87();
      sub_1E3C3DE00(v258);
      OUTLINED_FUNCTION_11_157();
      sub_1E3C2FCB8(v259, v260);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v261 = OUTLINED_FUNCTION_18_116();
      v262(v261, 2);

      OUTLINED_FUNCTION_3_11();
      v264 = *(v263 + 2096);

      v264(v265);

      *&v529 = 0;
      BYTE8(v529) = 1;
      OUTLINED_FUNCTION_43_60();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_7_199();
      v266 = sub_1E3C3DE00(v249);
      OUTLINED_FUNCTION_5_197(v266, v267, v268, v269, v270, v271, v272, v273, v458, v474, v489, v502);
      sub_1E3C3DE00(v249);
      OUTLINED_FUNCTION_9_156();
      v274 = OUTLINED_FUNCTION_29_87();
      sub_1E3C3DE00(v274);
      OUTLINED_FUNCTION_11_157();
      sub_1E3C2FCB8(v275, v276);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v277 = OUTLINED_FUNCTION_18_116();
      v278(v277, 2);

      v279 = *(MEMORY[0x1E69DDCE0] + 16);
      __src[0] = *MEMORY[0x1E69DDCE0];
      __src[1] = v279;
      LOBYTE(__src[2]) = 0;
      OUTLINED_FUNCTION_8();
      v281 = *(v280 + 160);

      v281(__src);
    }

    else
    {
      *&v529 = 0;
      BYTE8(v529) = 1;

      sub_1E3C2FC98();
      v521[0] = *&__src[0];
      LOBYTE(v521[1]) = BYTE8(__src[0]);
      v282 = OUTLINED_FUNCTION_22_86();
      sub_1E3C3DE00(v282);
      v283 = OUTLINED_FUNCTION_3_212();
      sub_1E3C3DE00(v283);
      OUTLINED_FUNCTION_2_212();
      sub_1E3C3DE00(v218);
      OUTLINED_FUNCTION_4_212();
      sub_1E3C3DE00(v218);
      OUTLINED_FUNCTION_1_249();
      OUTLINED_FUNCTION_21_97(v284, v285);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v286 = OUTLINED_FUNCTION_18_116();
      v287(v286, 2);

      OUTLINED_FUNCTION_23_89();
      *&__src[0] = 0x4070900000000000;
      BYTE8(__src[0]) = 0;
      v521[0] = 0x406FC00000000000;
      LOBYTE(v521[1]) = 0;
      v517[0] = 0x407F400000000000;
      OUTLINED_FUNCTION_42_63();
      v542[0] = 0x4070400000000000;
      LOBYTE(v542[1]) = 0;

      v288 = OUTLINED_FUNCTION_19_125();
      sub_1E3C2FCB8(v288, v289);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v290 = OUTLINED_FUNCTION_18_116();
      v291(v290, 4);

      OUTLINED_FUNCTION_23_89();
      *&__src[0] = 0x4071800000000000;
      BYTE8(__src[0]) = 0;
      v521[0] = 0x406B800000000000;
      LOBYTE(v521[1]) = 0;
      v517[0] = 0x4069000000000000;
      LOBYTE(v517[1]) = 0;

      v292 = sub_1E3C2FC98();
      OUTLINED_FUNCTION_5_197(v292, v293, v294, v295, v296, v297, v298, v299, v457, v473, v488, v501);
      sub_1E3C3DE00(v218);
      OUTLINED_FUNCTION_9_156();
      OUTLINED_FUNCTION_13_153();
      OUTLINED_FUNCTION_31_73();
      sub_1E3C2FCB8(v300, v301);
      OUTLINED_FUNCTION_17_127();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v302 = OUTLINED_FUNCTION_18_116();
      v303(v302, 3);

      v304 = sub_1E3952C10(8.0, 8.0);
      OUTLINED_FUNCTION_4_167(v304, v305, v306, v307);
      *&__src[0] = sub_1E3952C10(24.0, 8.0);
      *(&__src[0] + 1) = v308;
      *&__src[1] = v309;
      *(&__src[1] + 1) = v310;
      LOBYTE(__src[2]) = 0;
      v521[0] = sub_1E3952C10(8.0, 8.0);
      v521[1] = v311;
      v521[2] = v312;
      v521[3] = v313;
      LOBYTE(v521[4]) = 0;
      v314 = v57[1];
      *v517 = *v57;
      *&v517[2] = v314;
      LOBYTE(v517[4]) = 0;
      OUTLINED_FUNCTION_26_99();
      sub_1E3C2FC98();
      *v542 = *v490;
      v543 = *v503;
      LOBYTE(v544) = v505;
      sub_1E3C3DE00(v54);
      OUTLINED_FUNCTION_39_59();
      OUTLINED_FUNCTION_13_153();
      OUTLINED_FUNCTION_31_73();
      sub_1E3C2FCB8(v315, v316);
      OUTLINED_FUNCTION_38_59();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v317 = OUTLINED_FUNCTION_18_116();
      v318(v317, 0);
    }

    v319 = *(v0 + 112);
    v320 = *(*v319 + 2048);
    v321 = (*v319 + 2048);

    v320(v322);

    v323 = objc_opt_self();
    *&v529 = [v323 blackColor];
    v521[0] = OUTLINED_FUNCTION_10_144();
    v517[0] = OUTLINED_FUNCTION_10_144();
    sub_1E3755B54();
    v324 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_50_45(v324, v325, v326, v327, v328, v329, v330, v331, v459, v475, v490[0]);
    v532 = v537;
    v332 = OUTLINED_FUNCTION_29_87();
    sub_1E3C3DE00(v332);
    v333 = OUTLINED_FUNCTION_13_153();
    OUTLINED_FUNCTION_49_54(v333, v334);
    v336 = *(&__dst[0] + 1);
    v335 = *&__dst[0];
    v337 = *&__dst[1];
    OUTLINED_FUNCTION_24_94();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v338 = OUTLINED_FUNCTION_18_116();
    v339(v338, 21);

    v340 = *(**(v0 + 112) + 2096);

    v340(v341);

    *&v529 = [v323 blackColor];
    v521[0] = OUTLINED_FUNCTION_10_144();
    v517[0] = OUTLINED_FUNCTION_10_144();
    OUTLINED_FUNCTION_26_99();
    v342 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_50_45(v342, v343, v344, v345, v346, v347, v348, v349, v460, v0, v491);
    v532 = v537;
    v350 = OUTLINED_FUNCTION_29_87();
    sub_1E3C3DE00(v350);
    v351 = OUTLINED_FUNCTION_13_153();
    OUTLINED_FUNCTION_49_54(v351, v352);
    v353 = __dst[0];
    v355 = *(&__dst[1] + 1);
    v354 = *&__dst[1];
    v356 = __dst[2];
    v529 = __dst[0];
    v530 = __dst[1];
    v531 = __dst[2];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v357 = OUTLINED_FUNCTION_18_116();
    v358(v357, 21);

    *&__dst[0] = *sub_1E3E5FA50();
    v359 = *&__dst[0];
    sub_1E3C2CA00();

    OUTLINED_FUNCTION_36();
    v361 = *(v360 + 2048);

    v363 = v361(v362);

    (*(*v363 + 1720))(7);

    v57 = MEMORY[0x1E69DDCE0];
  }

  result = TVAppFeature.isEnabled.getter(20);
  if (result)
  {
    result = TVAppFeature.isEnabled.getter(10);
    if ((result & 1) == 0)
    {
      result = sub_1E39DFFC8();
      if ((result & 1) == 0)
      {
        result = TVAppFeature.isEnabled.getter(10);
        if ((result & 1) == 0)
        {
          result = sub_1E39DFFC8();
          if ((result & 1) == 0)
          {
            v365 = sub_1E3EEACC4();
            v366 = (*(*v365 + 2096))(v365);

            (*(*v366 + 872))(0);

            v367 = *(v0 + 120);
            v368 = objc_opt_self();

            v369 = [v368 whiteColor];
            v370 = [v369 colorWithAlphaComponent_];

            OUTLINED_FUNCTION_36();
            (*(v371 + 752))(v370);

            OUTLINED_FUNCTION_16_117();
            v372 = [v368 blackColor];
            v373 = [v372 colorWithAlphaComponent_];

            OUTLINED_FUNCTION_36();
            (*(v374 + 1984))(v373);

            OUTLINED_FUNCTION_16_117();
            v375.n128_u64[0] = 1.0;
            *&__src[0] = j__OUTLINED_FUNCTION_7_78(v375);
            *(&__src[0] + 1) = v376;
            *&__src[1] = v377;
            *(&__src[1] + 1) = v378;
            LOBYTE(__src[2]) = 0;
            (*(*v367 + 1960))(__src);

            OUTLINED_FUNCTION_16_117();
            v379 = *sub_1E3E60E58();
            v380 = *(*v367 + 1936);
            v381 = v379;
            v380(v379);

            *&v529 = 0x4048000000000000;
            BYTE8(v529) = 0;
            v521[0] = 0x4050800000000000;
            LOBYTE(v521[1]) = 0;

            v382 = MEMORY[0x1E69E7DE0];
            OUTLINED_FUNCTION_22_86();
            sub_1E3C2FC98();
            v383 = OUTLINED_FUNCTION_3_212();
            sub_1E3C3DE00(v383);
            OUTLINED_FUNCTION_2_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_4_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_0_278();
            sub_1E3C2FCB8(v384, v385);
            OUTLINED_FUNCTION_17_127();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_14();
            v386 = OUTLINED_FUNCTION_18_116();
            v387(v386, 6);

            OUTLINED_FUNCTION_14_149();
            OUTLINED_FUNCTION_22_86();
            sub_1E3C2FC98();
            v388 = OUTLINED_FUNCTION_3_212();
            sub_1E3C3DE00(v388);
            OUTLINED_FUNCTION_2_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_4_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_0_278();
            sub_1E3C2FCB8(v389, v390);
            OUTLINED_FUNCTION_17_127();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_14();
            v391 = OUTLINED_FUNCTION_18_116();
            v392(v391, 8);

            OUTLINED_FUNCTION_14_149();
            OUTLINED_FUNCTION_22_86();
            sub_1E3C2FC98();
            v393 = OUTLINED_FUNCTION_3_212();
            sub_1E3C3DE00(v393);
            OUTLINED_FUNCTION_2_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_4_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_0_278();
            sub_1E3C2FCB8(v394, v395);
            OUTLINED_FUNCTION_17_127();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_14();
            v396 = OUTLINED_FUNCTION_18_116();
            v397(v396, 7);

            OUTLINED_FUNCTION_14_149();
            OUTLINED_FUNCTION_22_86();
            sub_1E3C2FC98();
            v398 = OUTLINED_FUNCTION_3_212();
            sub_1E3C3DE00(v398);
            OUTLINED_FUNCTION_2_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_4_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_0_278();
            sub_1E3C2FCB8(v399, v400);
            OUTLINED_FUNCTION_17_127();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_14();
            v401 = OUTLINED_FUNCTION_18_116();
            v402(v401, 2);

            OUTLINED_FUNCTION_14_149();
            OUTLINED_FUNCTION_22_86();
            sub_1E3C2FC98();
            v403 = OUTLINED_FUNCTION_3_212();
            sub_1E3C3DE00(v403);
            OUTLINED_FUNCTION_2_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_4_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_0_278();
            sub_1E3C2FCB8(v404, v405);
            OUTLINED_FUNCTION_17_127();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_14();
            v406 = OUTLINED_FUNCTION_18_116();
            v407(v406, 4);

            OUTLINED_FUNCTION_14_149();
            OUTLINED_FUNCTION_22_86();
            sub_1E3C2FC98();
            v408 = OUTLINED_FUNCTION_3_212();
            sub_1E3C3DE00(v408);
            OUTLINED_FUNCTION_2_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_4_212();
            sub_1E3C3DE00(v382);
            OUTLINED_FUNCTION_0_278();
            sub_1E3C2FCB8(v409, v410);
            OUTLINED_FUNCTION_17_127();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_14();
            v411 = OUTLINED_FUNCTION_18_116();
            v412(v411, 3);

            v413 = v57[1];
            *v521 = *v57;
            *&v521[2] = v413;
            LOBYTE(v521[4]) = 0;
            OUTLINED_FUNCTION_8();
            v415 = *(v414 + 160);

            v415(v521);

            OUTLINED_FUNCTION_36();
            v417 = *(v416 + 1888);

            v417(0);

            memset(v517, 0, 32);
            LOBYTE(v517[4]) = 1;
            OUTLINED_FUNCTION_8();
            v419 = *(v418 + 560);

            v419(v517);

            OUTLINED_FUNCTION_3_11();
            v421 = (v420 + 2096);
            v422 = *(v420 + 2096);

            v422(v423);

            *&v529 = [v368 blackColor];
            v424 = *sub_1E3E5FD88();
            v542[0] = [v368 whiteColor];
            v537 = [v368 whiteColor];
            sub_1E3755B54();
            sub_1E3C2FC98();
            v425 = OUTLINED_FUNCTION_40_61();
            sub_1E3C3DE00(v425);
            v426 = OUTLINED_FUNCTION_19_125();
            sub_1E3C2FCB8(v426, v427);
            v428 = __dst[0];
            v429 = *&__dst[1];
            OUTLINED_FUNCTION_24_94();
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_14();
            v430 = OUTLINED_FUNCTION_18_116();
            v431(v430, 21);

            OUTLINED_FUNCTION_16_117();
            *&__dst[0] = *sub_1E3E5FA50();
            v432 = *&__dst[0];
            sub_1E3C2CA00();

            OUTLINED_FUNCTION_36();
            v434 = *(v433 + 2096);

            v434(v435);
            OUTLINED_FUNCTION_112();

            OUTLINED_FUNCTION_3_11();
            (*(v436 + 2144))(0x4031000000000000, 0);

            OUTLINED_FUNCTION_36();
            v438 = *(v437 + 2096);

            v438(v439);
            OUTLINED_FUNCTION_112();

            v440 = [v368 &selRef_adaptivePresentationStyleForPresentationController_];
            OUTLINED_FUNCTION_3_11();
            (*(v441 + 680))();

            OUTLINED_FUNCTION_36();
            v443 = *(v442 + 2096);

            v445 = v443(v444);

            (*(*v445 + 2024))(3, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E3EED6A8(uint64_t a1, uint64_t a2)
{
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0 && (sub_1E39DFFC8() & 1) == 0)
  {
    if (a2)
    {

      if (TVAppFeature.isEnabled.getter(20))
      {
        LOBYTE(v25[0]) = 18;
        (*(*a2 + 776))(__src, v25, &unk_1F5D5D0A8, &off_1F5D5C758);
        if (!__src[3])
        {

          sub_1E329505C(__src);
          return sub_1E3C35CA4(a1);
        }

        if (swift_dynamicCast())
        {
          if (LOBYTE(v25[0]) == 1)
          {
            v7 = sub_1E3EEACC4();
          }

          else
          {

            v7 = sub_1E3C35CA4(a1);
          }

          return v7;
        }
      }
    }

    return sub_1E3C35CA4(a1);
  }

  type metadata accessor for ButtonLayout();
  v4 = j__OUTLINED_FUNCTION_18();
  v5 = sub_1E3B050E8();
  v6 = j__OUTLINED_FUNCTION_18();
  v7 = sub_1E3BBD964(1, v4 & 1, v5, v6 & 1);
  if (TVAppFeature.isEnabled.getter(10) & 1) != 0 || (sub_1E39DFFC8())
  {
    if (TVAppFeature.isEnabled.getter(20))
    {
      v8 = 12.0;
    }

    else
    {
      v8 = 8.0;
    }

    v48[0] = sub_1E3952C10(v8, 8.0);
    v48[1] = v9;
    v48[2] = v10;
    v48[3] = v11;
    v49 = 0;
    if (TVAppFeature.isEnabled.getter(20))
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 8.0;
    }

    v43 = sub_1E3952C10(24.0, v12);
    v44 = v13;
    v45 = v14;
    v46 = v15;
    v47 = 0;
    if (TVAppFeature.isEnabled.getter(20))
    {
      v16 = 12.0;
    }

    else
    {
      v16 = 8.0;
    }

    sub_1E3952C10(v16, 8.0);
    v38 = sub_1E3952C10(14.0, 0.0);
    v39 = v17;
    v40 = v18;
    v41 = v19;
    v42 = 0;
    type metadata accessor for UIEdgeInsets();
    v21 = v20;
    sub_1E3C2FC98();
    v32 = v35;
    v33 = v36;
    v34 = v37;
    sub_1E3C3DE00(v21);
    v26 = v29;
    v27 = v30;
    v28 = v31;
    sub_1E3C2FCB8(v48, __src);
    memcpy(v25, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v22 + 1600))(v25, 0, v23 & 1, v21);
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_48_45()
{

  return sub_1E3C3DE00(v0);
}

id sub_1E3EEDA18()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3EEDA5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardView;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1E3EEDAF8()
{
  v1 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel))
  {
    OUTLINED_FUNCTION_8();
    v3 = *(v2 + 392);

    v5 = v3(v4);

    if (v5)
    {
      type metadata accessor for ImageLayout();
      if (OUTLINED_FUNCTION_4_84())
      {
        OUTLINED_FUNCTION_30();
        v7 = *(v6 + 552);

        v7(&v14, v8);

        if ((v15 & 1) == 0)
        {
          OUTLINED_FUNCTION_16_130();
          v1 = sub_1E3952BE8(v9, v10, v11, v12);
        }
      }
    }
  }

  return v1;
}

void sub_1E3EEDC08()
{
  OUTLINED_FUNCTION_58_34();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 136))();
  OUTLINED_FUNCTION_7_5();
  v12 = (*((*v2 & v4) + 0x120))();

  if (v12)
  {
    swift_getObjectType();
    v5 = dynamic_cast_existential_1_conditional(v12);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v9 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected;
      OUTLINED_FUNCTION_5_0();
      v10 = *(v0 + v9);
      ObjectType = swift_getObjectType();
      (*(v8 + 72))(v10, ObjectType, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_1E3EEDD50()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EEDDA4(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E3EEDE0C()
{
  OUTLINED_FUNCTION_58_34();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 136))();
  OUTLINED_FUNCTION_7_5();
  v12 = (*((*v2 & v4) + 0x120))();

  if (v12)
  {
    swift_getObjectType();
    v5 = dynamic_cast_existential_1_conditional(v12);
    if (v5)
    {
      v7 = v5;
      v8 = v6;
      v9 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden;
      OUTLINED_FUNCTION_5_0();
      v10 = *(v0 + v9);
      ObjectType = swift_getObjectType();
      (*(v8 + 96))(v10, ObjectType, v8);
    }

    else
    {
    }
  }
}

uint64_t sub_1E3EEDF54()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EEDFA8(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E3EEE010()
{
  OUTLINED_FUNCTION_58_34();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 136);
  v4();
  OUTLINED_FUNCTION_7_5();
  v6 = (*((*v2 & v5) + 0x120))();

  if (v6)
  {
    v7 = [v6 layer];

    v8 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
    OUTLINED_FUNCTION_5_0();
    v9 = 0;
    if (v0[v8] == 1)
    {
      v10 = [objc_opt_self() whiteColor];
      v9 = [v10 CGColor];
    }

    [v7 setBorderColor_];
  }

  v11 = (v4)();
  v12 = (*((*v2 & *v11) + 0x120))();

  if (v12)
  {
    v14 = [v12 layer];

    v15 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
    OUTLINED_FUNCTION_5_0();
    v16 = 0.0;
    if (v0[v15])
    {
      v16 = 2.0;
    }

    [v14 setBorderWidth_];
  }

  v17 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout;
  if (!*&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout])
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_8();
  v19 = *(v18 + 552);

  v19(&v36, v20);
  v21 = v37;

  if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*&v0[v17])
  {
    OUTLINED_FUNCTION_8();
    v23 = *(v22 + 1920);

    v25 = v23(v24);

    (*(*v25 + 552))(&v38, v26);
    v21 = v39;
  }

  else
  {
LABEL_13:
    v21 = 1;
  }

LABEL_14:
  (v4)(v13);
  OUTLINED_FUNCTION_7_5();
  v28 = (*((*v2 & v27) + 0x120))();

  if (v28)
  {
    v29 = [v28 layer];

    v30 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
    OUTLINED_FUNCTION_5_0();
    v31 = 0.0;
    if (!(v21 & 1 | ((v0[v30] & 1) == 0)))
    {
      OUTLINED_FUNCTION_5_111();
      v31 = sub_1E3952BE8(v32, v33, v34, v35);
    }

    [v29 setCornerRadius_];
  }
}

uint64_t sub_1E3EEE408()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3EEE45C(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_3_0();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1E3EEE4AC(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3EEE514(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E3EEE558()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  OUTLINED_FUNCTION_5_0();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3EEE5A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1E3EEE64C()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  type metadata accessor for CardView();
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_2_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardView) = sub_1E3890DAC();
  v8 = type metadata accessor for CardCollectionViewCell();
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v1, v8);
  [v6 setAutoresizingMask_];
  return v6;
}

void sub_1E3EEE770()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  *v1 = 0;
  v1[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3EEE8B8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v4, sel_vui_prepareForReuse);
  *&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout] = 0;

  *&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel] = 0;

  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  (*((*v1 & v3) + 0x1B0))();
}

void sub_1E3EEE9CC()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v0;
  v4 = v3;
  v5 = v1;
  if (v6)
  {
    if (v1 == 1.79769313e308 || v1 == 0.0)
    {
      v5 = 0.0;
    }

    v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();

    sub_1E3C8B764(v9, v5, v4);
    goto LABEL_8;
  }

  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  [v10 setFrame_];

  v11 = OUTLINED_FUNCTION_46_53();
  v12 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_2_34(v12, sel_setVuiBackgroundColor_);

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout))
  {
    OUTLINED_FUNCTION_111();
    v14 = *(v13 + 600);

    v16 = v14(v15);
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_111();
      (*(v18 + 552))(&v37);
      type metadata accessor for GraphicsUtilities();
      OUTLINED_FUNCTION_16_130();
      v24 = sub_1E418AA20(v20, v21, v22, v23, v5, v4);
      v25 = OUTLINED_FUNCTION_46_53();
      v26 = [v25 vuiLayer];

      [v26 setShadowPath_];
      v27 = OUTLINED_FUNCTION_46_53();
      v28 = [v27 vuiLayer];

      if (v28)
      {
        [v17 shadowOffset];
        [v28 setShadowOffset_];
      }

      v29 = OUTLINED_FUNCTION_46_53();
      v30 = [v29 vuiLayer];

      if (v30)
      {
        [v17 shadowBlurRadius];
        [v30 setShadowRadius_];
      }

      v36 = sub_1E40B0254();
      MEMORY[0x1EEE9AC00](v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
      sub_1E4148DE0(sub_1E3EF466C);

      v31 = OUTLINED_FUNCTION_46_53();
      v32 = [v31 vuiLayer];

      if (v32)
      {
        LODWORD(v33) = 1.0;
        [v32 setShadowOpacity_];
      }

      v34 = OUTLINED_FUNCTION_46_53();
      v35 = [v34 vuiLayer];

      if (v35)
      {
        [v35 setMasksToBounds_];
      }

      goto LABEL_23;
    }

    v19 = OUTLINED_FUNCTION_46_53();
    v8 = [v19 vuiLayer];

    if (!v8)
    {
LABEL_23:

      goto LABEL_24;
    }

    [v8 setShadowOpacity_];
LABEL_8:

    goto LABEL_23;
  }

LABEL_24:
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3EEEEA8()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v41, sel_vui_cellWillBeDisplayed);
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v4 = (*(v3 + 136))();
  v5 = (*((*v2 & *v4) + 0x120))();

  if (!v5 || (v38[0] = v5, sub_1E3280A90(0, &qword_1EE23AE80), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0), OUTLINED_FUNCTION_4_5(v6, v7, v8, v6, v9, v10, v11, v12, v35), v13 = swift_dynamicCast(), (v13 & 1) == 0))
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_6;
  }

  if (!*(&v36 + 1))
  {
LABEL_6:
    sub_1E325F748(&v35, &unk_1ECF3BDC0);
    goto LABEL_7;
  }

  v21 = OUTLINED_FUNCTION_4_5(v13, v14, v15, v16, v17, v18, v19, v20, v35);
  sub_1E3251BE8(v21, v22);
  v23 = v39;
  v24 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v24 + 24))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_7:
  v25 = sub_1E3285D14();
  v26 = *((*v2 & *v1) + 0x120);
  v27 = *v25;
  v33 = v26(v27, v28, v29, v30, v31, v32);
  (*((*v2 & *v27) + 0x118))(v33);
}

uint64_t sub_1E3EEF11C()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v30, sel_vui_cellDidEndDisplaying);
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  v4 = (*((*v1 & v3) + 0x120))();

  if (v4 && (v29[0] = v4, sub_1E3280A90(0, &qword_1EE23AE80), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0), OUTLINED_FUNCTION_4_5(v5, v6, v7, v5, v8, v9, v10, v11, v26), v12 = swift_dynamicCast(), (v12 & 1) != 0))
  {
    if (*(&v27 + 1))
    {
      v20 = OUTLINED_FUNCTION_4_5(v12, v13, v14, v15, v16, v17, v18, v19, v26);
      sub_1E3251BE8(v20, v21);
      v22 = v29[4];
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v23 = OUTLINED_FUNCTION_50();
      v24(v23, v22);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  return sub_1E325F748(&v26, &unk_1ECF3BDC0);
}

uint64_t sub_1E3EEF2D0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v7, sel_vui_cellDidSelect);
  v1 = *sub_1E3285D14();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x120);
  v4 = v1;
  v5 = v3();
  (*((*v2 & *v4) + 0x118))(v5);
}

id sub_1E3EEF410(unint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CardCollectionViewCell();
  result = objc_msgSendSuper2(&v4, sel_dragStateDidChange_, a1);
  if (a1 <= 2)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))((6u >> (a1 & 7)) & 1);
  }

  return result;
}

uint64_t sub_1E3EEF4F4(uint64_t isEscapingClosureAtFileLocation, void *a2, _OWORD *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v46 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = a4;
  if (!a4)
  {
    OUTLINED_FUNCTION_111();
    v16 = (*(v17 + 392))();
  }

  if (a2)
  {
    type metadata accessor for CardCollectionViewCell();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v47 = a3;
      if (v16)
      {
        v48 = v5;
        v19 = v18;
        type metadata accessor for CardCollectionViewCellLayout();
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          v37 = v10;

          goto LABEL_35;
        }

        v21 = v20;
        OUTLINED_FUNCTION_111();
        v23 = *(v22 + 672);

        v24 = a2;
        v23();
        v51 = &type metadata for ViewModelKeys;
        v52 = &off_1F5D7BCA8;
        LOBYTE(aBlock[0]) = 11;
        OUTLINED_FUNCTION_67_26();

        if (v55)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
          v25 = v19;
          if (OUTLINED_FUNCTION_66_32())
          {
            __swift_destroy_boxed_opaque_existential_1(aBlock);
            v51 = &unk_1F5D5E608;
            v52 = &off_1F5D5CC28;
            OUTLINED_FUNCTION_67_26();

            v26 = v21;
            if (v55)
            {
              v27 = v47;
              if ((OUTLINED_FUNCTION_66_32() & 1) == 0)
              {
                __swift_destroy_boxed_opaque_existential_1(aBlock);
                goto LABEL_21;
              }

              LODWORD(v46) = v49;
              __swift_destroy_boxed_opaque_existential_1(aBlock);
              OUTLINED_FUNCTION_111();
              if (!(*(v28 + 392))())
              {
                goto LABEL_21;
              }

              v29 = swift_dynamicCastClass();
              if (!v29)
              {

                goto LABEL_21;
              }

              v30 = (*(*v29 + 2088))();

              if (v30 == 20)
              {
LABEL_21:
                v31 = objc_opt_self();
                v10 = swift_allocObject();
                *(v10 + 16) = v26;
                *(v10 + 24) = v48;
                *(v10 + 32) = v25;
                *(v10 + 40) = isEscapingClosureAtFileLocation;
                v32 = v27[1];
                *(v10 + 48) = *v27;
                *(v10 + 64) = v32;
                *(v10 + 75) = *(v27 + 27);
                v33 = swift_allocObject();
                *(v33 + 16) = sub_1E3EF4730;
                *(v33 + 24) = v10;
                v52 = sub_1E379E500;
                v53 = v33;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1E3839B50;
                v51 = &block_descriptor_131;
                v34 = _Block_copy(aBlock);
                v15 = v53;
                v35 = v24;

                [v31 vui:v34 performWithoutAnimation:?];

                _Block_release(v34);
                isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                if ((isEscapingClosureAtFileLocation & 1) == 0)
                {
                  return v25;
                }

                __break(1u);
                goto LABEL_33;
              }

              if (sub_1E3D240F8(v30, 6))
              {
                goto LABEL_15;
              }

              if ((sub_1E3D240F8(v30, 15) & 1) == 0)
              {
                if (v49)
                {
                  LOBYTE(aBlock[0]) = v30;
                  v54[0] = 16;
                  sub_1E3AA77D0();
                  if ((sub_1E4205E84() & 1) == 0)
                  {
                    v30 = 10;
                  }
                }

                goto LABEL_16;
              }

              if (v49)
              {
LABEL_15:
                v30 = 15;
              }

LABEL_16:
              (*(*v26 + 2096))(v30);
              goto LABEL_21;
            }

            __swift_destroy_boxed_opaque_existential_1(aBlock);
            sub_1E325F748(v54, &unk_1ECF296E0);
LABEL_20:
            v27 = v47;
            goto LABEL_21;
          }

          __swift_destroy_boxed_opaque_existential_1(aBlock);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          sub_1E325F748(v54, &unk_1ECF296E0);
          v25 = v19;
        }

        v26 = v21;
        goto LABEL_20;
      }
    }
  }

LABEL_33:
  v37 = v10;

LABEL_35:
  v38 = sub_1E324FBDC();
  (*(v46 + 16))(v15, v38, v37);

  v39 = sub_1E41FFC94();
  v40 = sub_1E4206814();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315138;
    sub_1E384EE08(*(isEscapingClosureAtFileLocation + 98));
    v45 = sub_1E3270FC8(v43, v44, aBlock);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1E323F000, v39, v40, "CardCollectionViewCell: Failed to get correct cell for [%s]", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v46 + 8))(v15, v37);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3EEFBB4()
{
  OUTLINED_FUNCTION_21_5();
  v206 = v1;
  v204 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v14 = *(v13 + 136);
  v205 = v0;
  v15 = v14();
  v16 = MEMORY[0x1E69E7CC0];
  v221 = MEMORY[0x1E69E7CC0];
  v17 = (*((*v12 & *v15) + 0x138))();
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v203 = v18;
  OUTLINED_FUNCTION_25_5();
  v196 = *(v19 + 216);
  v195 = v19 + 216;
  v20 = v196();
  if (!v20)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v194 = v20;
  *&v205[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout] = v206;
  swift_retain_n();

  OUTLINED_FUNCTION_25_5();
  v21 = OUTLINED_FUNCTION_15_18();
  v22(v21);
  OUTLINED_FUNCTION_0_44();
  v222 = (*(v23 + 464))();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  sub_1E4148C68(sub_1E3819AD4, v24, &v220);

  v210 = v220;
  v208 = v15;
  v201 = v4;
  v197 = v5;
  v198 = v11;
  if (sub_1E32AE9B0(v220))
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_30_1();
  v26 = (*(v25 + 488))();
  if (!v26)
  {
    goto LABEL_50;
  }

  v27 = v26;
  if (!*(v26 + 16))
  {
    goto LABEL_49;
  }

  v193 = v7;
  v28 = v26 + 64;
  OUTLINED_FUNCTION_4_4();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;

  LODWORD(v209) = 0;
  v15 = 0;
  v34 = 0;
  while (v31)
  {
LABEL_15:
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    if (**(*(v27 + 56) + ((v34 << 9) | (8 * v36))) == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_35_66();
      v215 = 16;
      sub_1E3742F1C();

      sub_1E4206254();
      sub_1E4206254();
      v39 = v222 == v216 && v223 == v217;
      if (v39)
      {

        v41 = 1;
      }

      else
      {
        v40 = sub_1E42079A4();

        v41 = v40 | v209;
      }

      LODWORD(v209) = v41;

      v15 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_60_2();
      v37 = swift_retain_n();
      MEMORY[0x1E6910BF0](v37);
      v38 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
      {
        OUTLINED_FUNCTION_35(v38);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v210 = v220;
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_133:
      __break(1u);
      return;
    }

    if (v35 >= v33)
    {
      break;
    }

    v31 = *(v28 + 8 * v35);
    ++v34;
    if (v31)
    {
      v34 = v35;
      goto LABEL_15;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_63_28();
    v7 = v193;
    if (!v39 & v42)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_44_55();
    if (!v39)
    {
      v45 = &unk_1F5D8C550;
      goto LABEL_40;
    }

    if ((v44 & 3) != 0)
    {
      v45 = &unk_1F5D8C578;
      goto LABEL_40;
    }

    if (v43 != 13)
    {
LABEL_36:
      v46 = &unk_1F5D8C618;
      v47 = &unk_1F5D8C5F0;
    }

    else
    {
      v46 = &unk_1F5D8C5C8;
      v47 = &unk_1F5D8C5A0;
    }

    if (v209)
    {
      v45 = v47;
    }

    else
    {
      v45 = v46;
    }

LABEL_40:
    v15 = *(v45 + 2);
    if (v15)
    {
      v48 = (v45 + 32);
      do
      {
        if (*(v27 + 16))
        {
          sub_1E3740AE8(*v48);
          if (v49)
          {
            v50 = swift_retain_n();
            MEMORY[0x1E6910BF0](v50);
            v51 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v51 >> 1)
            {
              OUTLINED_FUNCTION_35(v51);
              sub_1E42062F4();
            }

            sub_1E4206324();

            v210 = v220;
          }
        }

        ++v48;
        --v15;
      }

      while (v15);
    }

    OUTLINED_FUNCTION_54_42();
  }

  else
  {
    OUTLINED_FUNCTION_54_42();
    v7 = v193;
  }

LABEL_49:

LABEL_50:
  v52 = sub_1E32AE9B0(v210);
  if (v52)
  {
    v53 = v52;
    if (v52 >= 1)
    {
      v193 = v7;
      v54 = 0;
      OUTLINED_FUNCTION_245_0();
      v209 = v55 & 0xC000000000000001;
      v56 = 0.0;
      v57 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_53_8();
        if (v58)
        {
          MEMORY[0x1E6911E60](v54, v210);
        }

        else
        {
          OUTLINED_FUNCTION_245_0();
        }

        OUTLINED_FUNCTION_30_1();
        if ((*(v59 + 392))())
        {
          OUTLINED_FUNCTION_30();
          v61 = (*(v60 + 936))();

          if (v61 != 2 && (v61 & 1) != 0)
          {
            goto LABEL_68;
          }
        }

        type metadata accessor for ImageViewModel();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_35_66();
        v215 = 39;
        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        if (v222 == v216 && v223 == v217)
        {
        }

        else
        {
          v63 = sub_1E42079A4();

          if ((v63 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        OUTLINED_FUNCTION_6_188();
        (*(v64 + 1920))();
        OUTLINED_FUNCTION_30();
        v56 = (*(v65 + 2288))();
        v57 = v66;

LABEL_68:

        if (v53 == ++v54)
        {
          OUTLINED_FUNCTION_21_98();
          v67 = 0;
          v192 = v193 + 16;
          v193 += 8;
          *&v68 = 136315138;
          v191 = v68;
          while (1)
          {
            OUTLINED_FUNCTION_53_8();
            if (v69)
            {
              v70 = MEMORY[0x1E6911E60](v67, v210);
            }

            else
            {
              OUTLINED_FUNCTION_245_0();
              v70 = *(v71 + 8 * v67 + 32);
            }

            OUTLINED_FUNCTION_30_1();
            if ((*(v72 + 392))())
            {
              OUTLINED_FUNCTION_30();
              v74 = (*(v73 + 936))();

              if (v74 != 2 && (v74 & 1) != 0)
              {
                break;
              }
            }

            v75 = *(v70 + 98);
            if (v75 == 39)
            {
              type metadata accessor for ImageViewModel();
              v76 = swift_dynamicCastClass();
              if (!v76)
              {
                break;
              }

              v77 = v76;
              OUTLINED_FUNCTION_61_25();
              v79 = (*v78 == 2) | ~*v78;

              sub_1E3DF9E68(&v222);
              v80 = v225[41];
              v81 = v79 & 1;
              LOBYTE(v213[0]) = 0;
              type metadata accessor for UIFactory();
              OUTLINED_FUNCTION_45();
              v83 = *(v82 + 240);
              v15 = v82 + 240;

              v83(v84);
              OUTLINED_FUNCTION_54_42();
              v86 = v85;
              v87 = v213[0];
              OUTLINED_FUNCTION_59_32(&unk_1F5D869A0);
              v219 = &off_1F5D868A0;
              v88 = swift_allocObject();
              v216 = v88;
              *(v88 + 16) = v56;
              *(v88 + 24) = v57;
              *(v88 + 32) = v87;
              OUTLINED_FUNCTION_19_126(v88, &v222);
              *(v89 + 96) = v81;
              *(v89 + 97) = v80;
              sub_1E3280A90(0, &qword_1EE23B360);
              v90 = sub_1E393D92C(v77, v86, &v216, 0);

              sub_1E325F748(&v216, &qword_1ECF296C0);
              sub_1E3EF3A48(v90, v77);
              OUTLINED_FUNCTION_60_2();

              v207 = v90;
            }

            else
            {
              if (*v70 == _TtC8VideosUI13TextViewModel)
              {
                if (v221 >> 62)
                {
                  v91 = sub_1E4207384();
                }

                else
                {
                  v91 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                type metadata accessor for UIFactory();
                v213[0] = v203;
                v216 = v91;
                LOBYTE(v217) = 0;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50);
                sub_1E3EF47F8();
                sub_1E38D2054(&v216, &v212);
                v92 = v212;
                sub_1E3280A90(0, &qword_1EE23AD40);
                v93 = OUTLINED_FUNCTION_14_150();
                v95 = sub_1E393D92C(v93, v92, v94, 0);

                v96 = sub_1E325F748(&v216, &qword_1ECF296C0);
                v216 = v95;
                MEMORY[0x1EEE9AC00](v96);
                *(&v191 - 2) = &v221;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB58);
                sub_1E4148DE0(sub_1E3EF485C);

                goto LABEL_106;
              }

              if (sub_1E3850584())
              {
                OUTLINED_FUNCTION_6_188();
                (*(v97 + 672))();
                OUTLINED_FUNCTION_59_32(&type metadata for ViewModelKeys);
                v219 = &off_1F5D7BCA8;
                LOBYTE(v216) = 11;
                OUTLINED_FUNCTION_65_32();

                if (!v214)
                {
                  goto LABEL_103;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_104;
                }

                __swift_destroy_boxed_opaque_existential_1(&v216);
                OUTLINED_FUNCTION_59_32(&unk_1F5D5E608);
                v219 = &off_1F5D5CC28;
                OUTLINED_FUNCTION_65_32();

                if (v214)
                {
                  if (swift_dynamicCast())
                  {
                    v98 = v212;
                    __swift_destroy_boxed_opaque_existential_1(&v216);
                    if (v98 == 1)
                    {
                      OUTLINED_FUNCTION_30_1();
                      v100 = (*(v99 + 488))();
                      if (v100)
                      {
                        v101 = v100;
                        if (*(v100 + 16) && (v102 = sub_1E3740AE8(234), (v103 & 1) != 0))
                        {
                          v104 = *(*(v101 + 56) + 8 * v102);

                          LOWORD(v212) = *(v104 + 98);
                          v211 = 234;
                          sub_1E3742F1C();
                          sub_1E4206254();
                          sub_1E4206254();
                          if (v216 != v213[0] || v217 != v213[1])
                          {
                            sub_1E42079A4();
                          }
                        }

                        else
                        {
                        }
                      }
                    }

                    goto LABEL_105;
                  }

LABEL_104:
                  __swift_destroy_boxed_opaque_existential_1(&v216);
                }

                else
                {
LABEL_103:
                  __swift_destroy_boxed_opaque_existential_1(&v216);
                  sub_1E325F748(v213, &unk_1ECF296E0);
                }

LABEL_105:
                sub_1E3ACF3E8();
                v113 = v112;
                v115 = v114;
                v117 = v116;
                v118 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                v15 = (*MEMORY[0x1E69E7D40] & *v15) + 288;
                v119 = *v15;
                v120 = v118;
                v119();
                OUTLINED_FUNCTION_54_42();
                v122 = v121;
                OUTLINED_FUNCTION_59_32(&type metadata for OverlayFactoryContext);
                v219 = &off_1F5D6F838;
                v216 = v113;
                v217 = v115;
                v218 = v117 & 0x101;
                v123 = sub_1E393D9C4(v70, v122, &v216, 0);

                sub_1E325F748(&v216, &qword_1ECF296C0);
                v202 = v123;
                goto LABEL_106;
              }

              if (v75 == 233)
              {
                type metadata accessor for DownloadStateIndicatorView();
                OUTLINED_FUNCTION_45();
                v125 = (*(v124 + 360))();
                v126 = sub_1E3D08E94(v70, 0, v125);

                v127 = v225;
              }

              else
              {
                if (v75 != 67)
                {
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_36_5();
                  v128 = v197;
                  v129(v198);
                  v130 = v201;

                  v131 = sub_1E41FFC94();
                  v132 = sub_1E42067D4();

                  if (os_log_type_enabled(v131, v132))
                  {
                    v133 = swift_slowAlloc();
                    v134 = swift_slowAlloc();
                    v216 = v134;
                    *v133 = v191;
                    v135 = (*(*v130 + 376))();
                    v137 = sub_1E3270FC8(v135, v136, &v216);

                    *(v133 + 4) = v137;
                    _os_log_impl(&dword_1E323F000, v131, v132, "CardCollectionViewCell: unexpected child viewModel of type = %s", v133, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v134);
                    OUTLINED_FUNCTION_6_0();
                    OUTLINED_FUNCTION_6_0();

                    OUTLINED_FUNCTION_36_5();
                    v139 = v198;
                    v140 = v197;
                  }

                  else
                  {

                    OUTLINED_FUNCTION_36_5();
                    v139 = v198;
                    v140 = v128;
                  }

                  v138(v139, v140);
                  goto LABEL_106;
                }

                OUTLINED_FUNCTION_45();
                v107 = *(v106 + 336);

                v109 = v107(v108);
                if (v109)
                {
                  v110 = v109;
                  type metadata accessor for ContextMenuButton();
                  v111 = OUTLINED_FUNCTION_4_84();
                  if (!v111)
                  {
                  }
                }

                else
                {
                  v111 = 0;
                }

                type metadata accessor for UIFactory();
                OUTLINED_FUNCTION_106();
                type metadata accessor for ContextMenuButton();
                v141 = OUTLINED_FUNCTION_14_150();
                v126 = sub_1E393D92C(v141, v111, v142, 0);
                OUTLINED_FUNCTION_60_2();

                sub_1E325F748(&v216, &qword_1ECF296C0);
                if (!v126)
                {
                  v199 = 0;
                  goto LABEL_106;
                }

                v143 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel;
                OUTLINED_FUNCTION_3_0();
                *(v126 + v143) = v201;

                v127 = &v224;
              }

              *(v127 - 32) = v126;
            }

LABEL_106:
            if (v53 == ++v67)
            {
              goto LABEL_122;
            }
          }

          goto LABEL_106;
        }
      }
    }

    goto LABEL_133;
  }

  OUTLINED_FUNCTION_21_98();
LABEL_122:

  v144 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v146 = *(v145 + 224);
  v147 = v194;
  v148 = OUTLINED_FUNCTION_15_18();
  v146(v148);
  OUTLINED_FUNCTION_57_34();
  v150 = *(*(v149 + 1920))();
  (*(v150 + 552))(&v216);

  v152 = 0.0;
  if ((v219 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_130();
    v152 = sub_1E3952BE8(v153, v154, v155, v156);
  }

  v157 = (v196)(v151);
  v158 = [v157 vuiLayer];

  [v158 setCornerRadius_];
  OUTLINED_FUNCTION_25_5();
  v160 = *(v159 + 248);
  v161 = v207;
  v162 = OUTLINED_FUNCTION_15_18();
  v160(v162);
  v163 = *((*v144 & *v15) + 0x140);

  v163(v164);
  OUTLINED_FUNCTION_39();
  v166 = *((*v144 & v165) + 0x128);
  v167 = v202;
  v168 = OUTLINED_FUNCTION_15_18();
  v166(v168);
  OUTLINED_FUNCTION_39();
  if (!(*((*v144 & v169) + 0x198))())
  {
    type metadata accessor for SeparatorView();
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  OUTLINED_FUNCTION_25_5();
  (*(v170 + 416))();
  OUTLINED_FUNCTION_39();
  v172 = *((*v144 & v171) + 0x158);
  v173 = v199;
  v174 = OUTLINED_FUNCTION_15_18();
  v172(v174);
  OUTLINED_FUNCTION_39();
  v176 = *((*v144 & v175) + 0x170);
  v177 = v200;
  v178 = v200;
  v179 = OUTLINED_FUNCTION_15_18();
  v176(v179);
  v180 = [v15 superview];
  if (v180)
  {
    v181 = v180;
  }

  else
  {
    v182 = v205;
    v183 = [v205 vuiContentView];
    [v183 addSubview_];

    v181 = [v182 vuiContentView];
    OUTLINED_FUNCTION_57_34();
    v185 = (*(v184 + 744))();
    if (!v185)
    {
      v185 = [objc_opt_self() clearColor];
    }

    v177 = v185;

    OUTLINED_FUNCTION_2_34(v186, sel_setVuiBackgroundColor_);
  }

  OUTLINED_FUNCTION_6_188();
  v188 = (*(v187 + 744))();
  v189 = v205;
  [v205 setBackgroundColor_];

  v190 = (*(*v177 + 864))();
  [v189 setHighlightedBackgroundColor_];

  OUTLINED_FUNCTION_20_0();
}

void sub_1E3EF1438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v28;
  a26 = v29;
  v306 = v30;
  v32 = v31;
  v297 = v33;
  OUTLINED_FUNCTION_106();
  v288 = sub_1E41FFCB4();
  v300 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288 - 8);
  OUTLINED_FUNCTION_5();
  v289 = v35 - v34;
  v36 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v38 = *(v37 + 136);
  v302 = v26;
  v39 = v38();
  v40 = MEMORY[0x1E69E7CC0];
  v319 = MEMORY[0x1E69E7CC0];
  v41 = (*((*v36 & *v39) + 0x138))();
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = *&v40;
  }

  v298 = *&v42;
  v43 = (*((*v36 & *v39) + 0xD8))();
  if (!v43)
  {
    v43 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v292 = v43;
  type metadata accessor for CardView();
  v44 = v306;
  OUTLINED_FUNCTION_30_1();
  (*(v45 + 1920))();
  [v302 vuiBounds];
  Width = CGRectGetWidth(v329);
  sub_1E3AA6900(Width);
  v48 = v47;
  v50 = v49;

  *&v302[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout] = v306;
  OUTLINED_FUNCTION_60_2();
  swift_retain_n();

  v51 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  (*(v52 + 200))(v44);
  v53 = v297;
  OUTLINED_FUNCTION_0_44();
  v320[0] = (*(v54 + 464))();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  sub_1E4148C68(sub_1E381AC40, v55, &v318);

  v56 = v318;
  v304 = v39;
  if (!sub_1E32AE9B0(v318))
  {
    OUTLINED_FUNCTION_30_1();
    v58 = (*(v57 + 488))();
    if (v58)
    {
      v59 = v58;
      if (!*(v58 + 16))
      {
        goto LABEL_41;
      }

      v53 = v58 + 64;
      OUTLINED_FUNCTION_4_4();
      v27 = v61 & v60;
      v63 = (v62 + 63) >> 6;

      LODWORD(v310) = 0;
      v39 = 0;
      while (v27)
      {
LABEL_15:
        v65 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        if (**(*(v59 + 56) + ((v39 << 9) | (8 * v65))) == _TtC8VideosUI13TextViewModel)
        {
          LODWORD(v310) = 1;
        }

        else
        {
          v66 = swift_retain_n();
          MEMORY[0x1E6910BF0](v66);
          v67 = *((v318 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v318 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v67 >> 1)
          {
            OUTLINED_FUNCTION_35(v67);
            sub_1E42062F4();
          }

          sub_1E4206324();

          v56 = v318;
        }
      }

      while (1)
      {
        v64 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_181;
        }

        if (v64 >= v63)
        {
          break;
        }

        v27 = *(v53 + 8 * v64);
        ++v39;
        if (v27)
        {
          v39 = v64;
          goto LABEL_15;
        }
      }

      if ((v310 & 1) == 0)
      {
LABEL_40:
        OUTLINED_FUNCTION_25_88();
LABEL_41:

        v51 = MEMORY[0x1E69E7D40];
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_63_28();
      if (!(!v77 & v68))
      {
        OUTLINED_FUNCTION_44_55();
        if (!v77)
        {
          v71 = &unk_1F5D8C550;
LABEL_31:
          isa = v71[2].isa;
          if (isa)
          {
            v39 = &v71[4];
            do
            {
              if (*(v59 + 16))
              {
                sub_1E3740AE8(*v39);
                if (v73)
                {
                  v74 = swift_retain_n();
                  MEMORY[0x1E6910BF0](v74);
                  v53 = *((v318 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v75 = *((v318 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (v53 >= v75 >> 1)
                  {
                    OUTLINED_FUNCTION_35(v75);
                    sub_1E42062F4();
                  }

                  sub_1E4206324();

                  v56 = v318;
                }
              }

              v39 += 2;
              isa = (isa - 1);
            }

            while (isa);
          }

          goto LABEL_40;
        }

        if ((v70 & 3) != 0)
        {
          v71 = &unk_1F5D8C578;
          goto LABEL_31;
        }

        if (v69 == 13)
        {
          v71 = &unk_1F5D8C5C8;
          goto LABEL_31;
        }
      }

      v71 = &unk_1F5D8C618;
      goto LABEL_31;
    }
  }

LABEL_42:
  v76 = *v32;
  v296 = *v32;
  v291 = v76;
  v77 = v76 == 2 || (v296 & 0x100) == 0;
  if (v77)
  {
LABEL_63:
    type metadata accessor for LibLockupViewModel();
    v309 = v56;
    if (swift_dynamicCastClass())
    {
      v310 = sub_1E32AE9B0(v56);
      if (v310)
      {
        v53 = 0;
        v83 = (*v306 + 1624);
        v307 = *v83;
        v305 = v83;
        v308 = v56 & 0xC000000000000001;
        v303 = (v56 & 0xFFFFFFFFFFFFFF8);
        v84 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          OUTLINED_FUNCTION_53_8();
          if (v85)
          {
            v27 = MEMORY[0x1E6911E60](v53, v309);
          }

          else
          {
            OUTLINED_FUNCTION_61_25();
            if (v53 >= *(v86 + 16))
            {
              goto LABEL_182;
            }

            OUTLINED_FUNCTION_245_0();
            v27 = *(v87 + 8 * v53 + 32);
          }

          v88 = (v53 + 1);
          if (__OFADD__(v53, 1))
          {
            goto LABEL_179;
          }

          v89 = *(v27 + 98);

          v90 = v307(v89, v27);

          if (v90)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v320[0] = v84;
            v91 = sub_1E3740AE8(v89);
            if (__OFADD__(v84[2], (v92 & 1) == 0))
            {
              goto LABEL_180;
            }

            v39 = v91;
            v93 = v92;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDF0);
            if (sub_1E4207644())
            {
              v94 = sub_1E3740AE8(v89);
              v51 = MEMORY[0x1E69E7D40];
              if ((v93 & 1) != (v95 & 1))
              {
                goto LABEL_185;
              }

              v39 = v94;
            }

            else
            {
              v51 = MEMORY[0x1E69E7D40];
            }

            v84 = v320[0];
            if (v93)
            {
              *(*(v320[0] + 56) + 8 * v39) = v90;
            }

            else
            {
              *(v320[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
              *(v84[6] + 2 * v39) = v89;
              *(v84[7] + 8 * v39) = v90;

              v97 = v84[2];
              v98 = __OFADD__(v97, 1);
              v99 = v97 + 1;
              if (v98)
              {
                goto LABEL_183;
              }

              v84[2] = v99;
            }

            OUTLINED_FUNCTION_25_88();
          }

          else
          {
            sub_1E3740AE8(v89);
            if (v96)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v320[0] = v84;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDF0);
              v51 = MEMORY[0x1E69E7D40];
              sub_1E4207644();
              v84 = v320[0];

              type metadata accessor for ViewLayout();
              sub_1E37414E0();
              sub_1E4207664();
            }
          }

          ++v53;
          if (v88 == v310)
          {
            goto LABEL_88;
          }
        }
      }
    }

    v84 = MEMORY[0x1E69E7CC8];
LABEL_88:
    OUTLINED_FUNCTION_32_75();
    v100 = sub_1E32AE9B0(v53);
    v301 = v84;
    if (v100)
    {
      if (v100 < 1)
      {
        goto LABEL_184;
      }

      OUTLINED_FUNCTION_11_158();
      v101 = 0;
      v102 = v291 == 2;
      v307 = (v53 & 0xC000000000000001);
      v286 = v300 + 16;
      v287 = v300 + 8;
      v291 = v48;
      v290 = v50;
      LODWORD(v296) = v102 || (v296 & 1) == 0;
      v300 = 1;
      *&v103 = 136315138;
      v285 = v103;
      v308 = v104;
      while (1)
      {
        if (v307)
        {
          v105 = MEMORY[0x1E6911E60](v101, v53);
        }

        else
        {
          v105 = *(v53 + 8 * v101 + 32);
        }

        OUTLINED_FUNCTION_111();
        if (*(v106 + 392))() && (OUTLINED_FUNCTION_30(), v108 = (*(v107 + 936))(), , v108 != 2) && (v108)
        {
        }

        else
        {
          v109 = v84[2];
          v310 = v27;
          if (v109 && (v110 = sub_1E3740AE8(*(v105 + 98)), (v111 & 1) != 0))
          {
            v112 = *(v84[7] + 8 * v110);
          }

          else
          {
            v112 = 0;
          }

          v113 = *(v105 + 98);
          if (v113 == 32)
          {
            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_1_250();
            v120 += 33;
            v121 = *v120;
            v53 = v120;

            v123 = v39;
            v121(v122);
            OUTLINED_FUNCTION_32_75();
            v125 = v124;
            sub_1E3280A90(0, &qword_1EE23B360);
            v126 = OUTLINED_FUNCTION_0_279();
            OUTLINED_FUNCTION_48_46(v126, v127, v128);
            OUTLINED_FUNCTION_17_128();

            sub_1E325F748(&v312, &qword_1ECF296C0);
            v129 = &v328;
            goto LABEL_108;
          }

          if (v113 == 39)
          {
            type metadata accessor for ImageViewModel();
            v114 = OUTLINED_FUNCTION_4_84();
            if (v114)
            {
              v115 = v114;

              sub_1E3DF9E68(v320);
              v53 = v323[41];
              LOBYTE(v324) = 0;
              v116 = *(*v115 + 392);

              v118 = v116(v117);
              if (v118)
              {
                v119 = (*(*v118 + 1560))();
              }

              else
              {
                v119 = 7;
              }

              v299 = (*(*v115 + 1032))(v119);
              v300 = v155;
              type metadata accessor for UIFactory();
              OUTLINED_FUNCTION_1_250();
              v157 = (*(v156 + 240))();
              v158 = LOBYTE(v324);
              v316 = &unk_1F5D869A0;
              v317 = &off_1F5D868A0;
              v159 = swift_allocObject();
              v312 = v159;
              *(v159 + 16) = v48;
              *(v159 + 24) = v50;
              *(v159 + 32) = v158;
              OUTLINED_FUNCTION_19_126(v159, v320);
              *(v160 + 96) = v296;
              *(v160 + 97) = v53;
              sub_1E3280A90(0, &qword_1EE23B360);
              v161 = sub_1E393D92C(v115, v157, &v312, v112);

              OUTLINED_FUNCTION_61_25();

              sub_1E325F748(&v312, &qword_1ECF296C0);
              sub_1E3EF3A48(v161, v115);

              v303 = v161;
              v84 = v301;
              goto LABEL_122;
            }

            goto LABEL_123;
          }

          if (*v105 == _TtC8VideosUI13TextViewModel)
          {
            if (v319 >> 62)
            {
              v130 = sub_1E4207384();
            }

            else
            {
              v130 = *((v319 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            type metadata accessor for UIFactory();
            v324 = v298;
            v312 = v130;
            LOBYTE(v313) = 0;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50);
            sub_1E3EF47F8();
            sub_1E38D2054(&v312, &v311);
            v131 = v311;
            sub_1E3280A90(0, &qword_1EE23AD40);
            v132 = OUTLINED_FUNCTION_0_279();
            v135 = OUTLINED_FUNCTION_48_46(v132, v133, v134);

            v136 = sub_1E325F748(&v312, &qword_1ECF296C0);
            v53 = &v283;
            v312 = v135;
            MEMORY[0x1EEE9AC00](v136);
            *(&v283 - 2) = &v319;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB58);
            sub_1E4148DE0(sub_1E3EF48D0);

LABEL_122:
            OUTLINED_FUNCTION_32_75();
            goto LABEL_123;
          }

          if (!sub_1E3850584())
          {
            switch(v113)
            {
              case 233:
                v167 = type metadata accessor for DownloadStateIndicatorView();
                OUTLINED_FUNCTION_1_250();
                v169 = (*(v168 + 360))();
                v123 = v167;
                sub_1E3D08E94(v105, 0, v169);
                OUTLINED_FUNCTION_50();

                v129 = &v321;
                break;
              case 67:
                OUTLINED_FUNCTION_1_250();
                v164 = *(v163 + 336);

                v123 = v39;
                if (v164(v165))
                {
                  OUTLINED_FUNCTION_106();
                  type metadata accessor for ContextMenuButton();
                  v166 = swift_dynamicCastClass();
                  if (!v166)
                  {
                  }
                }

                else
                {
                  v166 = 0;
                }

                type metadata accessor for UIFactory();
                OUTLINED_FUNCTION_106();
                type metadata accessor for ContextMenuButton();
                v182 = OUTLINED_FUNCTION_0_279();
                sub_1E393D92C(v182, v166, v183, v112);
                OUTLINED_FUNCTION_17_128();

                sub_1E325F748(&v312, &qword_1ECF296C0);
                if (!v39)
                {
                  v294 = 0;
                  goto LABEL_123;
                }

                v184 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel;
                OUTLINED_FUNCTION_3_0();
                *(v39 + v184) = v297;

                v129 = &v322;
                break;
              case 63:
                type metadata accessor for UIFactory();
                OUTLINED_FUNCTION_1_250();
                v148 = *(v147 + 336);

                v123 = v39;
                v150 = v148(v149);
                v51 = MEMORY[0x1E69E7D40];
                v151 = v150;
                sub_1E3280A90(0, &qword_1EE23AE80);
                v152 = OUTLINED_FUNCTION_0_279();
                OUTLINED_FUNCTION_48_46(v152, v153, v154);
                OUTLINED_FUNCTION_17_128();

                sub_1E325F748(&v312, &qword_1ECF296C0);
                v129 = v323;
                break;
              default:
                sub_1E324FBDC();
                OUTLINED_FUNCTION_36_5();
                v170 = v288;
                v171(v289);
                v172 = v297;

                v173 = sub_1E41FFC94();
                v39 = sub_1E42067D4();

                if (os_log_type_enabled(v173, v39))
                {
                  v174 = swift_slowAlloc();
                  v284 = swift_slowAlloc();
                  v312 = v284;
                  *v174 = v285;
                  v175 = *(*v172 + 376);
                  v283 = v173;
                  v176 = v175();
                  v53 = sub_1E3270FC8(v176, v177, &v312);

                  *(v174 + 4) = v53;
                  OUTLINED_FUNCTION_32_75();
                  v178 = v283;
                  _os_log_impl(&dword_1E323F000, v283, v39, "CardCollectionViewCell: unexpected child viewModel of type = %s", v174, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v284);
                  OUTLINED_FUNCTION_6_0();
                  OUTLINED_FUNCTION_6_0();

                  OUTLINED_FUNCTION_36_5();
                  v180 = v289;
                  v181 = v288;
                }

                else
                {

                  OUTLINED_FUNCTION_36_5();
                  v180 = v289;
                  v181 = v170;
                }

                v179(v180, v181);
                OUTLINED_FUNCTION_25_88();
                goto LABEL_123;
            }

LABEL_108:
            *(v129 - 32) = v123;
LABEL_123:
            v27 = v310;
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_51_1();
          sub_1E3ACF3E8();
          v138 = v137;
          v140 = v139;
          v142 = v141;
          v143 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v144 = *((*v51 & *v39) + 0x120);
          v39 = v143;
          v145 = v144();
          v51 = MEMORY[0x1E69E7D40];
          v53 = v145;
          v316 = &type metadata for OverlayFactoryContext;
          v317 = &off_1F5D6F838;
          v312 = v138;
          v313 = v140;
          v314 = v142 & 1;
          v146 = (v142 >> 8) & 1;
          v84 = v301;
          v315 = v146;
          sub_1E393D9C4(v105, v145, &v312, v112);
          OUTLINED_FUNCTION_50();

          OUTLINED_FUNCTION_25_88();
          OUTLINED_FUNCTION_32_75();

          sub_1E325F748(&v312, &qword_1ECF296C0);
          v27 = v39;
        }

LABEL_124:
        if (v308 == ++v101)
        {
          goto LABEL_140;
        }
      }
    }

    OUTLINED_FUNCTION_11_158();
    v300 = 1;
LABEL_140:

    LOBYTE(v324) = 0;
    OUTLINED_FUNCTION_6_188();
    (*(v185 + 776))(&v312, &v324, &unk_1F5D5E0F8, &off_1F5D5CAF8);
    if (v316)
    {
      v186 = swift_dynamicCast();
      v187 = v293;
      if (v186)
      {
        v189 = v324;
        v188 = v325;
        v190 = sub_1E3285D14();
        v191 = v51;
        v192 = *((*v51 & **v190) + 0x110);
        v193 = *v190;
        v194 = v192(*&v189, *&v188);

        if (v194)
        {
          OUTLINED_FUNCTION_21();
          (*(v195 + 296))(COERCE_DOUBLE(*&v189), COERCE_DOUBLE(*&v188));
          OUTLINED_FUNCTION_22_87();
          v197 = *((*v191 & v196) + 0x180);
          v198 = v39;
          v199 = v197();
          if (v199)
          {
            v198 = v199;
            [v199 frame];
            OUTLINED_FUNCTION_16_73();
          }

          v201 = *v190;
          v202 = *((*v191 & **v190) + 0x108);
          v203 = v201;
          v204 = OUTLINED_FUNCTION_50();
          v205 = v202(v204);
          v51 = MEMORY[0x1E69E7D40];
          v206 = v205;

          OUTLINED_FUNCTION_22_87();
          v208 = (*((*v51 & v207) + 0x188))(v206);
          v209 = (v197)(v208);
          if (v209)
          {
            v210 = v209;
            OUTLINED_FUNCTION_5_111();
            [v211 v212];
          }
        }

        else
        {

          v51 = v191;
        }

        v200 = v292;
        OUTLINED_FUNCTION_32_75();
      }

      else
      {
        v200 = v292;
      }
    }

    else
    {
      sub_1E325F748(&v312, &unk_1ECF296E0);
      v200 = v292;
      v187 = v293;
    }

    if ((v300 & 1) == 0)
    {
      if (!v27 || (v213 = [v27 vuiOverrideUserInterfaceStyle], v213 != v299))
      {
        [v27 vui:v299 setOverrideUserInterfaceStyle:?];
      }
    }

    OUTLINED_FUNCTION_1_250();
    v215 = *(v214 + 224);
    v216 = OUTLINED_FUNCTION_38_60(v200, &a12);
    v215(v216);
    OUTLINED_FUNCTION_1_250();
    v218 = *(v217 + 248);
    v219 = OUTLINED_FUNCTION_38_60(v303, &a11);
    v218(v219);
    OUTLINED_FUNCTION_22_87();
    v221 = *((*v51 & v220) + 0x110);
    v222 = OUTLINED_FUNCTION_38_60(v305, &a10);
    v221(v222);
    v223 = *((*v51 & *v39) + 0x140);

    v223(v224);
    OUTLINED_FUNCTION_22_87();
    v226 = *((*v51 & v225) + 0x128);
    v307 = v27;
    v226(v27);
    v227 = v294;
    v228 = v294;
    if (!v294)
    {
      v228 = v295;
      v229 = v295;
      v227 = v294;
    }

    v305 = v227;

    OUTLINED_FUNCTION_22_87();
    (*((*v51 & v230) + 0x158))(v228);
    OUTLINED_FUNCTION_22_87();
    v232 = *((*v51 & v231) + 0x170);
    v233 = v187;
    v232(v187);
    OUTLINED_FUNCTION_22_87();
    (*((*v51 & v234) + 0x1A0))(0);
    OUTLINED_FUNCTION_22_87();
    v236 = (*((*v51 & v235) + 0x150))();
    v312 = v236;
    MEMORY[0x1EEE9AC00](v236);
    *(&v283 - 2) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970);
    sub_1E4148DE0(sub_1E3EF4860);

    v237 = v302;
    OUTLINED_FUNCTION_16_89();
    v239 = *(v238 + 136);
    v240 = v239();
    [v240 setVuiContentMode_];

    v241 = v239();
    v242 = *sub_1E3E932E0();
    v243 = *sub_1E3E932EC();
    v303 = v233;
    if (v242)
    {
      if ((v243 & ~v242) == 0)
      {
        goto LABEL_164;
      }
    }

    else if (!v243)
    {
      v242 = 0;
      goto LABEL_164;
    }

    v242 |= v243;
LABEL_164:
    [v241 setVuiAutoresizingMask_];

    if (*&v237[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout])
    {
      OUTLINED_FUNCTION_30_1();
      v245 = *(v244 + 552);
      OUTLINED_FUNCTION_60_2();
      v246 = swift_retain_n();
      v247 = v245(&v324, v246);
      v248 = 0.0;
      if ((v328 & 1) == 0)
      {
        v248 = sub_1E3952BE8(v324, v325, v326, v327);
      }

      v249 = v302;
      v250 = (v239)(v247);
      v251 = [v250 vuiLayer];

      [v251 setCornerRadius_];
      v252 = v239();
      v253 = [v252 superview];

      if (!v253)
      {
        v253 = [v249 vuiContentView];
        v254 = v239();
        [v253 addSubview_];
      }

      v255 = [v249 vuiContentView];
      OUTLINED_FUNCTION_0_44();
      v257 = (*(v256 + 744))();

      if (!v257)
      {
        v257 = [objc_opt_self() clearColor];
      }

      [v255 setVuiBackgroundColor_];

      OUTLINED_FUNCTION_0_44();
      v259 = *(*(v258 + 1920))();
      (*(v259 + 552))(&v312);

      v261 = 0.0;
      if ((v317 & 1) == 0)
      {
        OUTLINED_FUNCTION_16_130();
        v261 = sub_1E3952BE8(v262, v263, v264, v265);
      }

      v266 = v302;
      v267 = v302;
      (v239)(v260);
      OUTLINED_FUNCTION_71();
      v39 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_64();
      v269 = (*(v268 + 216))();

      v270 = [v269 vuiLayer];
      [v270 setCornerRadius_];

      v271 = [v266 vuiContentView];
      v272 = [v271 vuiLayer];

      v237 = v266;
      [v272 setCornerRadius_];

      OUTLINED_FUNCTION_25_88();
    }

    v273 = v237;
    v239();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_16_89();
    v275 = (*(v274 + 168))();

    if (v275)
    {
      v273 = v239();
      v276 = [objc_opt_self() randomColor];
      [v273 setVuiBackgroundColor_];
    }

    OUTLINED_FUNCTION_6_188();
    v278 = (*(v277 + 744))();
    [v237 setBackgroundColor_];

    v279 = (*(*v273 + 864))();
    OUTLINED_FUNCTION_2_34(v279, sel_setHighlightedBackgroundColor_);

    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_61_25();

    OUTLINED_FUNCTION_245_0();
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v324 = v40;
  v78 = sub_1E32AE9B0(v56);
  v79 = 0;
  v80 = v56 & 0xC000000000000001;
  v39 = v56 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v78 == v79)
    {

      v56 = *&v324;
      OUTLINED_FUNCTION_25_88();
      v51 = MEMORY[0x1E69E7D40];
      goto LABEL_63;
    }

    if (v80)
    {
      v27 = v56;
      v53 = MEMORY[0x1E6911E60](v79, v56);
    }

    else
    {
      if (v79 >= *(v39 + 16))
      {
        goto LABEL_178;
      }

      v27 = v56;
      v53 = *(v56 + 8 * v79 + 32);
    }

    if (__OFADD__(v79, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_35_66();
    LOWORD(v311) = 39;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v320[0] == v312 && v320[1] == v313)
    {
    }

    else
    {
      v82 = sub_1E42079A4();

      if ((v82 & 1) == 0)
      {

        goto LABEL_60;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
LABEL_60:
    ++v79;
    v56 = v27;
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  sub_1E4207A74();
  __break(1u);
}

id sub_1E3EF3638()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for FeaturedCardCollectionViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3EF36A8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FeaturedCardCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3EF3750(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1E3EF3788@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  [v6 vui:a2 sizeThatFits:1.79769313e308];
  v14 = v13;
  v16 = v15;
  v17.n128_f64[0] = sub_1E41A300C(v35);
  if (*(v6 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout) && (OUTLINED_FUNCTION_8(), v19 = *(v18 + 2088), v20 = , v21 = v19(v20), , v21 != 20) && (sub_1E3D23FE4(v21) & 1) != 0)
  {
    sub_1E41A2FE8(v14, v16);
    *&v35[6] = a3;
    *&v35[7] = a4;
    v35[8] = 0;
    *&v35[9] = a6;
  }

  else
  {
    v22 = MEMORY[0x1E69E7D40];
    v23 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);
    v23(v17);
    OUTLINED_FUNCTION_7_5();
    (*((*v22 & v24) + 0x1B8))(a2);

    sub_1E41A2FE8(v14, v16);
    sub_1E3952C94();
    v35[2] = v25;
    v35[3] = v26;
    v35[4] = v27;
    v35[5] = v28;
    *&v35[6] = a3;
    *&v35[7] = a4;
    *&v35[8] = a5;
    *&v35[9] = a6;
    (v23)();
    OUTLINED_FUNCTION_7_5();
    v30 = (*((*v22 & v29) + 0x138))();

    if (v30)
    {
      v31 = sub_1E37CB21C(v30);

      if (v31)
      {
        [v31 bottomMarginWithBaselineMargin_];
        v33 = v32;

        v35[8] = v33;
      }
    }
  }

  memcpy(__dst, v35, sizeof(__dst));
  return memcpy(a1, __dst, 0x50uLL);
}

id sub_1E3EF3A48(void *a1, uint64_t a2)
{
  v3 = v2;
  v11 = 0;
  (*(*a2 + 776))(v12, &v11, &unk_1F5D5D408, &off_1F5D5C818);
  if (v12[3])
  {
    result = swift_dynamicCast();
    if (result && (v11 & 1) != 0)
    {
      if (a1)
      {
        [a1 setUserInteractionEnabled_];
        result = [a1 addTarget:v2 action:sel_imageViewHandler_ forControlEvents:64];
      }

      (*(*a2 + 320))(result);
      if (v7)
      {

        if (a1)
        {
          type metadata accessor for Accessibility();
          sub_1E40A8408();
          if (v9)
          {
            v10 = sub_1E4205ED4();
          }

          else
          {
            v10 = 0;
          }

          OUTLINED_FUNCTION_2_34(v8, sel_setVuiAccessibilityIdentifier_);
        }
      }

      *(v3 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel) = a2;
    }
  }

  else
  {
    result = sub_1E325F748(v12, &unk_1ECF296E0);
  }

  if (a1)
  {
    return [a1 setUserInteractionEnabled_];
  }

  return result;
}

uint64_t sub_1E3EF3C1C()
{
  type metadata accessor for BaseImpressionManager();
  v1 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v0);
  OUTLINED_FUNCTION_45();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v4 = (*(v3 + 216))();

  if (*&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel])
  {
    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 800);

    v7 = v4;
    v6(2, v1, v4, 0);
  }
}

id sub_1E3EF3DA0()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  v4 = (*((*v1 & v3) + 0x180))();

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 contextMenuItems];

  if (v5)
  {
    sub_1E3280A90(0, &unk_1ECF3BDE0);
    v6 = sub_1E42062B4();

    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = (v6 & 0xFFFFFFFFFFFFFF8);
      }

      sub_1E3280A90(0, &qword_1ECF2BA40);

      sub_1E42076C4();
      OUTLINED_FUNCTION_17_128();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1ECF2BA40);

      return v6;
    }
  }

  return v5;
}

uint64_t sub_1E3EF3F80()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  v4 = (*((*v1 & v3) + 0x150))();

  if (v4)
  {
    type metadata accessor for ContextMenuButton();
    result = OUTLINED_FUNCTION_4_84();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void *sub_1E3EF4028()
{
  v0 = sub_1E3EF3F80();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor;
  OUTLINED_FUNCTION_5_0();
  v3 = *&v1[v2];
  v4 = v3;

  return v3;
}

void sub_1E3EF4088(void *a1)
{
  v1 = sub_1E3EF3F80();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor;
    OUTLINED_FUNCTION_3_0();
    v4 = *&v2[v3];
    *&v2[v3] = a1;
  }

  else
  {
  }
}

uint64_t sub_1E3EF4118()
{
  v0 = sub_1E3EF3F80();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1E3EF4194(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E3EF3F80();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate;
    OUTLINED_FUNCTION_3_0();
    *(v5 + 8) = a2;
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1E3EF423C(void **a1)
{
  a1[1] = v1;
  *a1 = sub_1E3EF4028();
  return OUTLINED_FUNCTION_116();
}

void sub_1E3EF4280(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1E3EF4088(v2);
  }

  else
  {
    sub_1E3EF4088(*a1);
  }
}

uint64_t sub_1E3EF42F0(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1E3EF4118();
  a1[1] = v3;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3EF4334(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1E3EF4194(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  sub_1E3EF4194(v3, v2);

  return swift_unknownObjectRelease();
}

id sub_1E3EF43A4()
{
  OUTLINED_FUNCTION_58_34();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 136))();
  OUTLINED_FUNCTION_64();
  v4 = (*(v3 + 240))();

  if (v4)
  {
    [v4 bounds];
    OUTLINED_FUNCTION_16_73();
  }

  else
  {
    [v0 bounds];
    OUTLINED_FUNCTION_16_73();
  }

  if (*&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout])
  {
    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 1920);

    v8 = v6(v7);

    (*(*v8 + 552))(v18, v9);
    v10 = *v18;
    v11 = *&v18[1];
    v13 = *&v18[2];
    v12 = *&v18[3];

    if ((v19 & 1) == 0)
    {
      sub_1E3952BE8(v10, v11, v13, v12);
    }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_111();
  v16 = [v14 v15];

  return v16;
}