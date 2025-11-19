id sub_188AED428(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _UITraitMonochromaticTreatment, &off_1EE43C038, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

void sub_188AED750()
{
  v1 = [v0 navigationBar];
  v2 = [v1 _focusSystem];

  if (v2)
  {

    v3 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentFocusContainerGuide;
    if (!*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentFocusContainerGuide])
    {
      v4 = [objc_allocWithZone(UIFocusContainerGuide) init];
      v5 = *&v0[v3];
      *&v0[v3] = v4;
      v6 = v4;

      v7 = [v0 navigationBar];
      v8 = v6;
      [v7 addLayoutGuide_];

      v9 = sub_18A4A7258();
      [v8 setIdentifier_];

      v10 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_18A64B810;
      v12 = [v8 topAnchor];

      v13 = [v0 navigationBar];
      v14 = [v13 topAnchor];

      v15 = [v12 constraintEqualToAnchor_];
      *(v11 + 32) = v15;
      v16 = [v8 leadingAnchor];

      v17 = [v0 navigationBar];
      v18 = [v17 leadingAnchor];

      v19 = [v16 constraintEqualToAnchor_];
      *(v11 + 40) = v19;
      v20 = [v8 trailingAnchor];

      v21 = [v0 navigationBar];
      v22 = [v21 trailingAnchor];

      v23 = [v20 constraintEqualToAnchor_];
      *(v11 + 48) = v23;
      v24 = [v8 bottomAnchor];

      v25 = [v0 navigationBar];
      v26 = [v25 bottomAnchor];

      v27 = [v24 constraintEqualToAnchor_];
      *(v11 + 56) = v27;
      sub_188A34624(0, &qword_1ED48CFF0);
      v28 = sub_18A4A7518();

      [v10 activateConstraints_];
    }
  }
}

void sub_188AEDB34()
{
  v1 = v0;
  v2 = [v0 stack];
  v3 = [v2 topEntry];

  if (v3)
  {
    v4 = [v3 item];
    v5 = [v4 _navigationBarVisibility];

    v6 = v5 != 0;
    v7 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isHidden];
    if (v6 == v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isHidden])
    {
      return;
    }
  }

  else
  {
    v7 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isHidden];
    if ((v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isHidden] & 1) == 0)
    {
      return;
    }

    v6 = 0;
  }

  v8 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hiddenFilter;
  v9 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hiddenFilter];
  v10 = MEMORY[0x1E6979AA0];
  if (v9)
  {
    v41 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_hiddenFilter];
    v11 = 0x1FADAE000;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v13 = *&v1[v8];
    *&v1[v8] = v12;
    v14 = v12;

    v15 = sub_18A4A7258();
    [v14 setName_];

    LODWORD(v15) = *v7;
    v16 = objc_opt_self();
    v17 = &selRef_clearColor;
    if (!v15)
    {
      v17 = &selRef_whiteColor;
    }

    v18 = [v16 *v17];
    v19 = v14;
    v20 = [v18 CGColor];
    [v19 setValue:v20 forKey:*v10];

    v21 = [v1 navigationBar];
    v22 = [v21 layer];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18A64BFB0;
    *(v23 + 56) = sub_188A34624(0, &qword_1ED48EE50);
    *(v23 + 32) = v19;
    v41 = v19;
    v24 = sub_18A4A7518();

    [v22 setFilters_];

    v11 = &selRef_keyboardSceneDelegate_inputViewSetVisibilityDidChange_includedReset_;
  }

  v25 = objc_opt_self();
  v26 = v9;
  v27 = &selRef_whiteColor;
  if (v6)
  {
    v27 = &selRef_clearColor;
  }

  v28 = [v25 *v27];
  v29 = [v1 navigationBar];
  v30 = [v29 v11 + 2168];

  v31 = [v28 CGColor];
  v32 = [v41 name];

  if (v32)
  {
    v33 = sub_18A4A7288();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  MEMORY[0x18CFE22D0](v33, v35);

  MEMORY[0x18CFE22D0](46, 0xE100000000000000);
  v36 = sub_18A4A7288();
  MEMORY[0x18CFE22D0](v36);

  v37 = sub_18A4A7258();

  [v30 setValue:v31 forKeyPath:v37];

  *v7 = v6;
  v38 = [v1 navigationBar];
  v39 = [v38 _privateDelegate];

  if (v39)
  {
    if ([v39 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v40 = [v1 navigationBar];
      [v39 _navigationBarDidUpdateVisibility_];

      swift_unknownObjectRelease_n();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_188AEE120()
{
  v1 = v0;
  v2 = [v0 stack];
  v76 = [v2 topEntry];

  v3 = [v1 navigationBar];
  v4 = [v3 window];

  if (v4)
  {

    goto LABEL_3;
  }

  if (v76)
  {
    v12 = [v76 item];
    v73 = [v12 _navigationBar];
  }

  else
  {
    v73 = 0;
  }

  v27 = [v1 navigationBar];
  if (!v73)
  {
    if (v27)
    {

      goto LABEL_35;
    }

LABEL_3:
    v5 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_assistant];
    v6 = [v5 previewContainer];
    [v6 setFrame_];

    sub_188AE4B20(v76, 0);
    v7 = [v1 stack];
    v8 = [v7 topEntry];

    if (v8)
    {
      v9 = [v8 isSearchActive];
      v10 = [(_UINavigationBarItemStackEntry *)v8 _typedStorage];
      if (v9)
      {
        v11 = sub_18901F25C();
      }

      else
      {
        v11 = sub_18901F250();
      }

      v13 = v11;

      if (!*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
      {
        if (v13)
        {
          v74 = 0;
          if (*(v13 + 80))
          {
LABEL_25:
            v22 = [v1 stack];
            v23 = [v22 topEntry];

            if (v23)
            {
              v24 = [v23 isSearchActive];
              v25 = [(_UINavigationBarItemStackEntry *)v23 _typedStorage];
              v26 = v24 ? sub_18901F250() : sub_18901F25C();
              v30 = v26;

              if (v30)
              {
                if (v74)
                {
                  sub_18A4A80E8();
                  MEMORY[0x18CFE22D0](0xD00000000000007ELL, 0x800000018A6A61F0);
                  v31 = [v1 stack];
                  v32 = [v31 topEntry];

                  if (v32)
                  {
                    v33 = [v32 description];

                    v34 = sub_18A4A7288();
                    v36 = v35;
                  }

                  else
                  {
                    v36 = 0xE300000000000000;
                    v34 = 7104878;
                  }

                  MEMORY[0x18CFE22D0](v34, v36);

                  v37 = sub_18A4A7258();

                  __UIKIT_SOFT_ASSERT_FAIL(v37);
                }

                else
                {

                  sub_188CC5D78(v13);
                }
              }
            }

            goto LABEL_49;
          }

LABEL_16:
          v14 = v13;
          v15 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
          if (v15)
          {
            v16 = *&v15[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper];
            v17 = v15;
            sub_189172D50();

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {

              v19 = swift_unknownObjectWeakLoadStrong();
              if (v19)
              {
                v20 = v19;
                [v19 _setDonatedTitleView_];
              }

              swift_unknownObjectWeakAssign();
            }

            [v17 removeFromSuperview];
          }

          v21 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel];
          if (v21)
          {
            [v21 removeFromSuperview];
          }

          v13 = v14;
          goto LABEL_25;
        }

LABEL_15:
        v74 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      if (!*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
      {
        goto LABEL_15;
      }
    }

LABEL_49:
    v38 = [v1 navigationBar];
    [v38 _contentMargin];
    v40 = v39;

    if (v76)
    {
      v41 = [v76 item];
    }

    else
    {
      v41 = 0;
    }

    v42 = [v41 _topPalette];
    v43 = [v41 _bottomPalette];
    v75 = v43;
    if (v42)
    {
      v44 = v42;
      v45 = sub_18A4A7258();
      [v44 setAssistantIdentifier_];

      v43 = v75;
      [v44 setAssistant_];
    }

    if (v43)
    {
      v46 = v43;
      v47 = sub_18A4A7258();
      [v46 setAssistantIdentifier_];

      [v46 setAssistant_];
    }

    v48 = [v41 _bottomPalette];
    sub_188B2C014(v42, v48, v40);

    v49 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v50 = [v1 &selRef_needsAssistantHost];
    v51 = [v50 semanticContentAttribute];

    [v49 setSemanticContentAttribute_];
    sub_188B2C88C(1);
    sub_188B2C99C();
    v52 = [v1 stack];
    v53 = [v52 backItem];

    sub_188B2A9B4(v41, v53, 0);
    v54 = [v1 stack];
    v55 = [v54 itemCount];

    v56 = [v1 &selRef_needsAssistantHost];
    [v56 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    if (v55 < 1)
    {
      v69 = sub_188B39FF8();
      v70 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
      v68 = v75;
      if (v70)
      {
        [v70 setFrame_];
      }
    }

    else
    {
      sub_188B2D758(v58, v60, v62, v64);
      v65 = [v1 &selRef_needsAssistantHost];
      [v65 _contentMargin];
      v67 = v66;

      v68 = v75;
      if (v40 != v67)
      {
        sub_188B2C014(0, v75, v67);
      }

      sub_1890CAFA8(v13, 0);
    }

    sub_188AEDB34();
    sub_188B2CDC8();
    sub_188B2E094();
    sub_188B2D280();
    v71 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer];
    if (v71)
    {
      v72 = v71;
      [v72 invalidateLayout];
    }

    return;
  }

  if (!v27)
  {

    v29 = v73;
    goto LABEL_42;
  }

  sub_188A34624(0, &qword_1ED48C8F8);
  v28 = sub_18A4A7C88();

  if (v28)
  {
    goto LABEL_3;
  }

LABEL_35:
  v29 = v76;
LABEL_42:
}

void _WrapItemsAndAddToArray(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 _stackEntry];
        if (!v10)
        {
          v10 = [_UINavigationBarItemStackEntry newEntryForItem:v9];
        }

        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

uint64_t sub_188AEEE74()
{
  result = sub_18A4A2C48();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_188AEEF78()
{
  result = sub_18A4A2C48();
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

uint64_t sub_188AEF03C()
{
  result = _s4ItemCMa();
  if (v1 <= 0x3F)
  {
    result = sub_18A4A29D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_188AEF140()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_188AEF21C()
{
  v1 = *MEMORY[0x1E69796E8];
  xmmword_1ED48D028 = xmmword_18A665A70;
  unk_1ED48D038 = xmmword_18A665A70;
  xmmword_1ED48D048 = xmmword_18A665A70;
  unk_1ED48D058 = xmmword_18A665A70;
  qword_1ED48D068 = v1;
  word_1ED48D070 = 256;
  sub_188A85484(0xC000000000000008);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000008);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000008);
  sub_188A854E0(0xF000000000000007);

  return v1;
}

void sub_188AEF2F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD000000000000015 && 0x800000018A6A6060 == v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_18A4A86C8();
    }
  }

  else
  {
    v6 = 0;
  }

  byte_1EA930D91 = v6 & 1;
}

char *sub_188AEF46C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____UIFloatingBarContainerView__edgesRequiringContentMargin] = 0;
  *&v4[OBJC_IVAR____UIFloatingBarContainerView__adjacentBarEdges] = 0;
  type metadata accessor for ToolbarModel(0);
  swift_allocObject();
  v10 = sub_1890AB7A0(1, 0);
  v11 = OBJC_IVAR____UIFloatingBarContainerView_model;
  *&v5[OBJC_IVAR____UIFloatingBarContainerView_model] = v10;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BCA0));
  v13 = swift_retain_n();
  v14 = sub_1890AD3C4(v13, v10);
  v15 = OBJC_IVAR____UIFloatingBarContainerView_hostingView;
  *&v5[OBJC_IVAR____UIFloatingBarContainerView_hostingView] = v14;
  v16 = *(v14 + *((*MEMORY[0x1E69E7D40] & *v14) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = v14;
    v20 = v16;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v21 = v14;
    v22 = v16;
  }

  if (sub_18A4A46F8())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890AD778();
    v23 = v14;
    sub_18A4A4708();
  }

  sub_188BAC830();
  sub_18A4A46A8();

  v24 = *&v5[v15];
  v25 = objc_allocWithZone(type metadata accessor for ToolbarPointerInteractionAssistant());
  *&v5[OBJC_IVAR____UIFloatingBarContainerView_pointerAssistant] = sub_188AF1A38(v24);
  v26 = *&v5[v15];
  v27 = objc_allocWithZone(type metadata accessor for ToolbarAccessibilityHUDAssistant());
  *&v5[OBJC_IVAR____UIFloatingBarContainerView_axHUDAssistant] = sub_188AF1B84(v26);
  v28 = *&v5[v11];
  v29 = *&v5[v15];
  v30 = type metadata accessor for ToolbarKeyboardAssistant();
  v31 = objc_allocWithZone(v30);
  swift_unknownObjectWeakInit();
  v31[OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_alwaysAvoidsKeyboard] = 0;
  v31[OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_observationEnabled] = 0;
  *&v31[OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_toolbarModel] = v28;
  *&v31[OBJC_IVAR____TtC5UIKit24ToolbarKeyboardAssistant_view] = v29;
  v69.receiver = v31;
  v69.super_class = v30;

  v32 = v29;
  v33 = objc_msgSendSuper2(&v69, sel_init);
  *&v5[OBJC_IVAR____UIFloatingBarContainerView_keyboardAssistant] = v33;
  v34 = *&v5[v15];
  v35 = *(v34 + *((*MEMORY[0x1E69E7D40] & *v34) + 0x60));
  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    v38 = v33;
    v39 = v34;
    v40 = v35;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v41 = v33;
    v42 = v34;
    v43 = v35;
  }

  if (sub_18A4A46F8())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890AD778();
    v44 = v34;
    sub_18A4A4708();
  }

  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  v68.receiver = v5;
  v68.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  v46 = [(UIView *)v45 _traitOverrides];
  v47 = [(_UITraitOverrides *)v46 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v47;
  v67 = inited;
  sub_18914E584(2);
  sub_1890B30B4(1);
  v49 = v45;
  v50 = [(UIView *)v49 _traitOverrides];
  v51 = *(v67 + 16);
  [(_UITraitOverrides *)v50 _replaceWithOverrides:v51];

  [v49 _setHostsLayoutEngine_];
  v52 = OBJC_IVAR____UIFloatingBarContainerView_hostingView;
  _UIBarsSetAccessibilityLimits(*&v49[OBJC_IVAR____UIFloatingBarContainerView_hostingView]);
  [v49 addSubview_];
  v53 = [*(*&v49[OBJC_IVAR____UIFloatingBarContainerView_pointerAssistant] + OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_pointerAssistant) previewContainer];
  [v49 addSubview_];

  *(*&v49[OBJC_IVAR____UIFloatingBarContainerView_axHUDAssistant] + OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_delegate + 8) = &off_1EFAE2F78;
  swift_unknownObjectWeakAssign();

  *&v59 = 0;
  BYTE8(v59) = 1;
  v60 = 0;
  v61 = 1;
  v62 = 0;
  v63 = 1;
  v64 = 0;
  v65 = 1;
  v66 = &unk_1EFAB9238;
  UIView.cornerConfiguration.setter(&v59);

  type metadata accessor for _UIToolbarSettingsDomain();
  v58.receiver = swift_getObjCClassFromMetadata();
  v58.super_class = &OBJC_METACLASS____TtC5UIKit24_UIToolbarSettingsDomain;
  result = objc_msgSendSuper2(&v58, sel_rootSettings);
  if (result)
  {
    v55 = result;
    type metadata accessor for _UIToolbarSpec();
    v56 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);

    [v56 addKeyObserver_];

    return v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s4ItemCMa()
{
  result = qword_1ED48DD88;
  if (!qword_1ED48DD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_188AEFB04(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed] = 0;
  swift_weakInit();
  swift_weakInit();
  sub_18A4A2C38();
  *&v1[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem] = a1;
  v4 = a1;
  v5 = [v4 _requiresOwnSection];
  v1[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection] = v5;
  v6 = [v4 isHidden];
  v1[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__isHidden] = v6;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = *&v7[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v9 = v7;
  [v8 _setViewOwner_];

  return v9;
}

uint64_t sub_188AEFC0C()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC5UIKit12ToolbarModel___observationRegistrar;
  v92 = v1;
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  v86 = v2;
  sub_18A4A2C08();

  swift_beginAccess();
  v3 = *(v1 + 296);
  v4 = sub_188AF0950(MEMORY[0x1E69E7CC0]);
  if (v3 >> 62)
  {
    goto LABEL_74;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v87 = v1;

  if (!v5)
  {
LABEL_23:
    v12 = v4;

    swift_getKeyPath();
    v25 = v87;
    sub_18A4A2C08();

    v91 = v87;
    swift_getKeyPath();
    sub_18A4A2C28();

    swift_beginAccess();
    v26 = *(v87 + 37);
    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      v28 = v86;
    }

    else
    {
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v26 = *(v87 + 37);
      v28 = v86;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!(v26 >> 62))
        {
          v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_28;
        }

        goto LABEL_81;
      }
    }

    if (v26 >> 62)
    {
      v80 = sub_18A4A7F68();
      if (sub_18A4A7F68() < 0)
      {
        goto LABEL_83;
      }

      v81 = sub_18A4A7F68();
      if (v80 < 0 || (v30 = v80, v81 < v80))
      {
        __break(1u);
        goto LABEL_80;
      }
    }

    else
    {
      v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    *(v87 + 37) = sub_188AF0A60(0, v30);

    goto LABEL_33;
  }

  v6 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = sub_188E4B00C(v6, v3);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v9 = *(v3 + 8 * v6 + 32);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v5 = sub_18A4A7F68();
        goto LABEL_3;
      }
    }

    v1 = v5;
    v11 = *&v9[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
    v12 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v4;
    v14 = sub_188A403F4(v11);
    v16 = *(v4 + 2);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_72;
    }

    v20 = v15;
    if (*(v4 + 3) < v19)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v24 = v14;
    sub_188FA6C94();
    v14 = v24;
    v4 = v91;
    if (v20)
    {
LABEL_5:
      v7 = *(v4 + 7);
      v8 = *(v7 + 8 * v14);
      *(v7 + 8 * v14) = v12;

      goto LABEL_6;
    }

LABEL_16:
    *&v4[8 * (v14 >> 6) + 64] |= 1 << v14;
    *(*(v4 + 6) + 8 * v14) = v11;
    *(*(v4 + 7) + 8 * v14) = v12;

    v22 = *(v4 + 2);
    v18 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v18)
    {
      goto LABEL_73;
    }

    *(v4 + 2) = v23;
LABEL_6:
    ++v6;
    v5 = v1;
    if (v10 == v1)
    {
      goto LABEL_23;
    }
  }

  sub_188C19934(v19, isUniquelyReferenced_nonNull_native);
  v14 = sub_188A403F4(v11);
  if ((v20 & 1) == (v21 & 1))
  {
LABEL_15:
    v4 = v91;
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_84:
  v82 = sub_18A4A87A8();
  __break(1u);
  while (1)
  {
    v29 = v82;
    v28 = v86;
    v25 = v87;
LABEL_28:
    sub_188CD8738(0, v29);
LABEL_33:
    swift_endAccess();
    v91 = v25;
    swift_getKeyPath();
    sub_18A4A2C18();

    if (*(v25 + 40))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v91 = v25;
      v32 = 0;
      sub_18A4A2BF8();
    }

    else
    {
      v32 = 0;
    }

    swift_getKeyPath();
    v91 = v25;
    v33 = v28;
    sub_18A4A2C08();

    v34 = *(v25 + 2);
    v35 = v34 >> 62 ? sub_18A4A7F68() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v12;
    if (!v35)
    {
      break;
    }

    if (v35 >= 1)
    {
      v37 = v34 & 0xC000000000000001;

      v38 = 0;
      v84 = v35;
      v85 = v34;
      v83 = v34 & 0xC000000000000001;
      while (1)
      {
        v39 = v37 ? sub_188E49ABC(v38, v34) : *(v34 + 8 * v38 + 32);
        v40 = v39;
        if (([v39 isHidden] & 1) == 0)
        {
          break;
        }

LABEL_42:
        if (v35 == ++v38)
        {

          goto LABEL_62;
        }
      }

      v89 = v36;
      if (*(v36 + 2) && (v41 = sub_188A403F4(v40), (v42 & 1) != 0))
      {
        v88 = v32;
        v43 = *(*(v36 + 7) + 8 * v41);
        v44 = v33;
      }

      else
      {
        v45 = _s4ItemCMa();
        v46 = objc_allocWithZone(v45);
        *&v46[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed] = 0;
        swift_weakInit();
        swift_weakInit();
        v47 = v40;
        sub_18A4A2C38();
        *&v46[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem] = v47;
        v48 = v47;
        v49 = [v48 _requiresOwnSection];
        v46[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection] = v49;
        v50 = [v48 isHidden];
        v46[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__isHidden] = v50;
        v90.receiver = v46;
        v90.super_class = v45;
        v51 = objc_msgSendSuper2(&v90, sel_init);
        v52 = *&v51[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
        v53 = v51;
        [v52 _setViewOwner_];

        v54 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v54);
        v91 = v53;
        sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa);
        sub_18A4A2BF8();
        v88 = v32;
        v25 = v87;

        v44 = v86;
        v43 = v53;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v89;
        sub_188EA0F80(v43, v48, v55);
        v89 = v91;
      }

      swift_getKeyPath();
      v91 = v25;
      v56 = v43;
      sub_18A4A2C08();

      v91 = v25;
      swift_getKeyPath();
      sub_18A4A2C28();

      v57 = swift_beginAccess();
      MEMORY[0x18CFE2450](v57);
      if (*((*(v25 + 37) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v25 + 37) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      swift_endAccess();
      v91 = v25;
      swift_getKeyPath();
      v33 = v44;
      sub_18A4A2C18();

      if ([v40 _isSearchBarPlacementItem])
      {
        v58 = *(v25 + 40);
        v36 = v89;
        if (v58)
        {
          _s4ItemCMa();
          v59 = v56;
          v60 = v58;
          v61 = sub_18A4A7C88();

          v32 = v88;
          if (v61)
          {
            v62 = *(v25 + 40);
            *(v25 + 40) = v56;

            v33 = v86;
LABEL_60:
            v35 = v84;
            v34 = v85;
            v37 = v83;
            goto LABEL_42;
          }
        }

        else
        {
          v63 = v56;
          v32 = v88;
        }

        v64 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v64);
        v91 = v25;
        v33 = v86;
        sub_18A4A2BF8();

        goto LABEL_60;
      }

      v32 = v88;
      v36 = v89;
      goto LABEL_60;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    v82 = sub_18A4A7F68();
    if (v82 < 0)
    {
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

LABEL_62:
  swift_getKeyPath();
  v91 = v25;
  sub_18A4A2C08();

  v65 = *(v25 + 40);
  if (!v65)
  {
LABEL_67:
    v75 = MEMORY[0x1E69E7CC0];
    goto LABEL_69;
  }

  v66 = *&v65[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v67 = v65;
  v68 = [v66 _associatedSearchController];
  if (!v68)
  {

    goto LABEL_67;
  }

  v69 = v68;
  v70 = [v68 automaticallyShowsCancelButton];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v71 = swift_allocObject();
  v72 = v71;
  *(v71 + 16) = xmmword_18A64B710;
  *(v71 + 32) = v67;
  if (v70)
  {
    v91 = v71;
    v73 = v67;

    v25 = v87;
    sub_188CC1534(v74);

    v75 = v91;
  }

  else
  {

    v25 = v87;
    v75 = v72;
  }

LABEL_69:
  swift_getKeyPath();
  v91 = v25;
  sub_18A4A2C08();

  sub_1890AC21C(v76, v25);

  v77 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v77);
  v91 = v25;
  sub_18A4A2BF8();

  sub_1890AC21C(v75, v25);

  v78 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v78);
  v91 = v25;
  sub_18A4A2BF8();
}

unint64_t sub_188AF0950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E20);
  v3 = sub_18A4A8488();
  v16 = *(a1 + 32);
  result = sub_188A403F4(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = sub_188A403F4(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_188AF0A68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_188AF0AF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C40);
    v3 = sub_18A4A8488();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_188BB395C(v5, v6, v7);
      result = sub_188C18F44(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_188AF0C24()
{
  *(*(v0 + 16) + 304) = *(v0 + 24);
}

unint64_t sub_188AF0C98()
{
  result = qword_1ED48E310;
  if (!qword_1ED48E310)
  {
    type metadata accessor for ToolbarModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E310);
  }

  return result;
}

id sub_188AF0D34(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UICoreHostingView();
  return objc_msgSendSuper2(&v4, *a1);
}

void *sub_188AF0DAC()
{
  v1 = v0;
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v2;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v6 = v2;
  }

  if (sub_18A4A46F8())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for UICoreHostingView();
    swift_getWitnessTable();
    v7 = v1;
    sub_18A4A4708();
  }

  return v2;
}

unint64_t sub_188AF0EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v20 = a3;
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  UIHostingViewBase._as<A>(_:)(a2, v10);
  if ((*(v11 + 48))(v10, 1, a2) != 1)
  {
    v18 = *(v11 + 32);
    v18(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10, a2);
    v19 = v20;
    v18(v20, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    v16 = 0;
    v17 = v19;
    return (*(v11 + 56))(v17, v16, 1, a2);
  }

  v14 = v20;
  (*(v8 + 8))(v10, v7);
  result = sub_188AF7A44();
  if (result != a1)
  {
    v16 = 1;
    v17 = v14;
    return (*(v11 + 56))(v17, v16, 1, a2);
  }

  v21 = v4;
  if (v12 == 8)
  {
    (*(v11 + 16))(v14, &v21, a2);
    v17 = v14;
    v16 = 0;
    return (*(v11 + 56))(v17, v16, 1, a2);
  }

  __break(1u);
  return result;
}

double sub_188AF114C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_188AF0D34(a3);
  v6 = v5;

  return v6;
}

void sub_188AF11B0(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_18A4A55A8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (_UIViewMaskingConfigurationSPIEnabled())
  {
    v14 = _sSo17UITraitCollectionC5UIKitE20cornerMaskingContextSo09_UICornereF0Cvg_0();
    v15 = [v14 providerFor_];
    if (v15)
    {
      v16 = v15;
      v17 = a1;
      [v16 resolvedCornerRadiusForDescedant:v17 context:v14 corner:1];
      v7 = v18;

      swift_unknownObjectRelease();
    }

    v19 = [v14 providerFor_];
    if (v19)
    {
      v20 = v19;
      v21 = a1;
      [v20 resolvedCornerRadiusForDescedant:v21 context:v14 corner:2];
      v9 = v22;

      swift_unknownObjectRelease();
    }

    v23 = [v14 providerFor_];
    if (v23)
    {
      v24 = v23;
      v25 = a1;
      [v24 resolvedCornerRadiusForDescedant:v25 context:v14 corner:8];
      v13 = v26;

      swift_unknownObjectRelease();
    }

    v27 = [v14 providerFor_];
    if (v27)
    {
      v28 = v27;
      v29 = a1;
      [v28 resolvedCornerRadiusForDescedant:v29 context:v14 corner:4];
      v11 = v30;

      swift_unknownObjectRelease();
    }
  }

  else
  {
    [a1 _containerConcentricRadiusForCorner_];
    v7 = v31;
    [a1 _containerConcentricRadiusForCorner_];
    v9 = v32;
    [a1 _containerConcentricRadiusForCorner_];
    v13 = v33;
    [a1 _containerConcentricRadiusForCorner_];
    v11 = v34;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = 2;
  v36 = a2;
  v37 = v36;
  if (v7 != v9)
  {
    v38 = v36;
    sub_188CEFC58(v35, v38);

    if (v13 == v11)
    {
      goto LABEL_14;
    }

LABEL_16:
    v39 = v37;
    sub_188CEFC58(v35, v39);

    goto LABEL_17;
  }

  if (v13 != v11)
  {
    goto LABEL_16;
  }

LABEL_14:

LABEL_17:
  v40 = *(sub_18A4A5728() + 20);
  v41 = *MEMORY[0x1E697F468];
  v42 = sub_18A4A53E8();
  (*(*(v42 - 8) + 104))(&a3[v40], v41, v42);
  sub_18A4A55A8();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  *a3 = v44;
  *(a3 + 1) = v46;
  *(a3 + 2) = v48;
  *(a3 + 3) = v50;
}

uint64_t sub_188AF1528()
{
  *(*(v0 + 16) + 312) = *(v0 + 24);
}

uint64_t sub_188AF1564(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_188AF1820();
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = a1;
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase());

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BC98);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93BC90, &qword_1EA93BC98);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_188AF1820()
{
  result = qword_1ED48E120;
  if (!qword_1ED48E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E120);
  }

  return result;
}

void sub_188AF1874(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v13 = type metadata accessor for UICoreHostingView();
  v24.receiver = v6;
  v24.super_class = v13;
  objc_msgSendSuper2(&v24, *a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23.receiver = v6;
  v23.super_class = v13;
  objc_msgSendSuper2(&v23, *a2, a3, a4, a5, a6);
  v22 = sub_188AF0DAC();
  v25.origin.x = v15;
  v25.origin.y = v17;
  v25.size.width = v19;
  v25.size.height = v21;
  UIHostingViewBase.frameDidChange(oldValue:)(v25);
}

void sub_188AF197C(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_188AF1874(&selRef_frame, &selRef_setFrame_, a2, a3, a4, a5);
}

char *sub_188AF1A38(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_pointerAssistant;
  *&v1[v4] = [objc_allocWithZone(_UIPointerInteractionAssistant) init];
  *&v1[OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_view] = a1;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v15, sel_init);
  v7 = OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_pointerAssistant;
  v8 = *&v6[OBJC_IVAR____TtC5UIKit34ToolbarPointerInteractionAssistant_pointerAssistant];
  v9 = v6;
  [v5 addInteraction_];
  v10 = *&v6[v7];
  v11 = v5;
  v12 = v10;
  v13 = sub_18A4A7258();
  [v12 setAssistedView:v11 delegate:v9 identifier:v13];

  return v9;
}

id sub_188AF1B84(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_hudGestureManager] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_view] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v11, sel_init);
  sub_188AF1D24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18A64B710;
  *(v6 + 32) = 0x1EFE32398;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v7 = sub_18A4A7518();

  v8 = [v4 _registerForTraitTokenChanges_withTarget_action_];
  swift_unknownObjectRelease();

  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v5 selector:sel_setupHUDGestureIfNecessary name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];

  return v5;
}

void sub_188AF1D24()
{
  v1 = OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_hudGestureManager;
  if (!*(v0 + OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_hudGestureManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit32ToolbarAccessibilityHUDAssistant_view);
    v3 = [v2 traitCollection];
    v4 = [v3 _isLargeContentViewerEnabled];

    if (v4)
    {
      v5 = [objc_allocWithZone(UIAccessibilityHUDGestureManager) initWithView:v2 delegate:v0];
      v6 = *(v0 + v1);
      *(v0 + v1) = v5;
    }
  }
}

uint64_t _UINavigationControllerUseAugmentedPopGesture()
{
  if (_UINavigationControllerUseAugmentedPopGesture_onceToken != -1)
  {
    dispatch_once(&_UINavigationControllerUseAugmentedPopGesture_onceToken, &__block_literal_global_142);
  }

  return __UINavigationControllerUseAugmentedPopGesture;
}

id _assistedButtonForView(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_188AF38D0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_188AF38E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_18A4A8488();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_188AF39D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-v9 - 8];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_188A53994(a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, a3);
    (*(v11 + 32))(v14, v10, a3);
    v17 = (*(a4 + 16))(v14, a3, a4);
    (*(v11 + 8))(v14, a3);
  }

  else
  {
    v16(v10, 1, 1, a3);
    (*(v8 + 8))(v10, v7);
    v17 = 0;
  }

  return v17 & 1;
}

id sub_188AF3C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v9 = v6;
  v12 = *(a1 + 16);
  if (v12)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_18A4A8208();
    v14 = (a1 + 40);
    do
    {
      sub_188AF3C0C(*(v14 - 1), *v14);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v14 += 2;
      --v12;
    }

    while (v12);
    v9 = v6;
    v7 = a6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v15 = sub_18A4A7518();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188BA9E60;
  aBlock[3] = v7;
  v17 = _Block_copy(aBlock);

  v18 = [v9 _registerForTraitTokenChanges_withHandler_];
  _Block_release(v17);

  return v18;
}

unint64_t sub_188AF3DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC70);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, &v13, &qword_1EA934DB8);
      v5 = v13;
      v6 = v14;
      result = sub_188B0944C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_188A55538(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_188AF3F08(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v60 = *MEMORY[0x1E69E9840];
  v6 = sub_18A4A2BD8();
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A2BA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  if ([(UIView *)v3 _isDeallocInitiated])
  {
    return a1();
  }

  v53 = v6;
  v54 = a2;
  v51 = v12;
  v52 = v8;
  v50 = v3;
  v22 = [(UIView *)v3 _typedStorage];
  v23 = sub_188A4CEC4();

  if (v23)
  {
    sub_18913E3AC(4);
  }

  v55 = v23;
  v49 = *(v10 + 56);
  v24 = v49(v20, 1, 1, v9);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v26 = *(StatusReg + 848);
  *(StatusReg + 848) = v20;
  v57 = v20;
  v27 = v10;
  v28 = byte_1ED4A3680;
  byte_1ED4A3680 = 1;
  (a1)(v24);
  *(StatusReg + 848) = v26;
  byte_1ED4A3680 = v28;
  v29 = v27;
  v30 = v57;
  sub_188A3F29C(v57, v17, &qword_1EA93E090);
  if ((*(v27 + 48))(v17, 1, v9) == 1)
  {
    sub_188A3F5FC(v30, &qword_1EA93E090);
    sub_188A3F5FC(v17, &qword_1EA93E090);
  }

  else
  {
    v31 = v51;
    (*(v27 + 32))(v51, v17, v9);
    v32 = v50;
    v33 = sub_188ACEB88(v50, 4, &block_descriptor_149_4);
    v34 = v55;
    if (!v55)
    {
      v35 = [(UIView *)v32 _typedStorage];
      v34 = sub_188A4CEC4();
    }

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = 4;
    *(v37 + 25) = v33;
    *(v37 + 32) = sub_18913EE0C;
    *(v37 + 40) = 0;
    v38 = v56;
    (*(v29 + 16))(v56, v31, v9);
    v49(v38, 0, 1, v9);

    v39 = v52;
    sub_18A4A2BE8();
    if (!v34)
    {
      type metadata accessor for TrackingDictionary();
      v40 = swift_allocObject();
      *(v40 + 16) = MEMORY[0x1E69E7CC8];
      swift_retain_n();
      v41 = [(UIView *)v32 _typedStorage];
      v56 = v36;
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
      v43 = swift_allocObject();
      *(v43 + 16) = v40;
      v44 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *(&v42->super.isa + v44);
      *(&v42->super.isa + v44) = 0x8000000000000000;
      sub_188A40430(v43, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
      *(&v42->super.isa + v44) = v59;
      swift_endAccess();
    }

    v46 = v58;
    swift_retain_n();
    sub_188ACEFD4(v39, 4);

    v47 = swift_allocObject();
    *(v47 + 16) = sub_188B57AD4;
    *(v47 + 24) = v37;

    MEMORY[0x18CFDDAE0](v39, 0, 0, sub_188B57248, v47);

    (*(v46 + 8))(v39, v53);
    (*(v29 + 8))(v31, v9);
    sub_188A3F5FC(v57, &qword_1EA93E090);
  }
}

uint64_t sub_188AF4560()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188AF459C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *_UIEndTrackingTraitUsage@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  TraitCollectionTSD = GetTraitCollectionTSD();
  memcpy(a2, TraitCollectionTSD + 16, 0x170uLL);

  return memcpy(TraitCollectionTSD + 16, a1, 0x170uLL);
}

uint64_t getEnumTagSinglePayload for UIHostingViewBase.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIHostingViewBase.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_188AF4690(uint64_t a1)
{
  v3 = [(UIView *)v1 _typedStorage];
  sub_188A3F29C(a1, v13, &unk_1EA933EC0);
  sub_188A3F29C(v13, v12, &unk_1EA933EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A578);
  v4 = swift_allocObject();
  v5 = v12[3];
  v4[3] = v12[2];
  v4[4] = v5;
  v6 = v12[5];
  v4[5] = v12[4];
  v4[6] = v6;
  v7 = v12[1];
  v4[1] = v12[0];
  v4[2] = v7;
  v8 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(&v3->super.isa + v8);
  *(&v3->super.isa + v8) = 0x8000000000000000;
  sub_188A40430(v4, &_s24_UIViewBackgroundDataKeyVN, isUniquelyReferenced_nonNull_native);
  *(&v3->super.isa + v8) = v11;
  swift_endAccess();

  sub_188A3F5FC(a1, &unk_1EA933EC0);
  return sub_188A3F5FC(v13, &unk_1EA933EC0);
}

uint64_t sub_188AF488C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188AF48C4(uint64_t a1)
{
  v2 = v1;
  v4 = [(UIView *)v1 _typedStorage];
  sub_188A6852C(v36);

  sub_18901F5BC(a1, &v30);
  sub_188A3F29C(v36, &v25, &unk_1EA933EC0);
  if (*(&v26 + 1))
  {
    v5 = v28[6];

    sub_188ACE668(&v25);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_188A3F5FC(&v25, &unk_1EA933EC0);
  }

  v5 = sub_188AF3DD8(MEMORY[0x1E69E7CC0]);

LABEL_6:
  v29 = v5;
  sub_188A3F29C(v36, &v25, &unk_1EA933EC0);
  if (*(&v26 + 1))
  {
    sub_188A3F29C(v28, &v22, &unk_1EA93C9A0);
    sub_188ACE668(&v25);
    v6 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      __swift_project_boxed_opaque_existential_0(&v22, *(&v23 + 1));
      v7 = sub_18901FAEC(v6);
      __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      if (!v31)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    v8 = &unk_1EA93C9A0;
    v9 = &v22;
  }

  else
  {
    v8 = &unk_1EA933EC0;
    v9 = &v25;
  }

  sub_188A3F5FC(v9, v8);
  v7 = 0;
  v10 = 0;
  if (!v31)
  {
    goto LABEL_16;
  }

LABEL_13:
  v11 = v33;
  if (v33)
  {
    v12 = __swift_project_boxed_opaque_existential_0(v32, v33);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v13 + 16))(v16, v14);
    v17 = sub_18901FAEC(v11);
    (*(v13 + 8))(v16, v11);
    v10 = v17;
    if ((v7 & 1) == (v17 & 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_27:
  v17 = 0;
  v10 = 0;
  if (v7)
  {
LABEL_15:
    [(UIView *)v2 _setNeedsToBeNotifiedOfVisibilityChange:?];
    v10 = v17;
  }

LABEL_16:
  if ([v2 _isBackgroundSuppressed])
  {
    if (!v31)
    {
      goto LABEL_24;
    }

    v18 = 0;
    goto LABEL_23;
  }

  if ((v10 & 1) != 0 && [(UIView *)v2 _isHiddenOrAncestorHidden]&& v31)
  {
    v18 = 1;
LABEL_23:
    v34 = v18;
  }

LABEL_24:
  sub_188A3F29C(v36, &v25, &unk_1EA933EC0);
  if (*(&v26 + 1))
  {
    sub_18901FC34(&v22);
    sub_188ACE668(&v25);
    if (v31)
    {
LABEL_26:
      sub_188AF559C(&v30, &v25);
      sub_18901FC34(v20);
      sub_188ACE668(&v25);
      goto LABEL_31;
    }
  }

  else
  {
    sub_188A3F5FC(&v25, &unk_1EA933EC0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    if (v31)
    {
      goto LABEL_26;
    }
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
LABEL_31:
  sub_18901FEE0(&v22, v20, &v29);
  sub_188A3F5FC(v20, &unk_1EA93C9A0);
  sub_188A3F5FC(&v22, &unk_1EA93C9A0);
  sub_188A3F29C(v36, &v25, &unk_1EA933EC0);
  if (*(&v26 + 1))
  {
    sub_188A3F29C(v28, &v22, &unk_1EA93C9A0);
    sub_188ACE668(&v25);
    if (v31)
    {
LABEL_33:
      sub_188A3F29C(v32, &v25, &unk_1EA93C9A0);
      goto LABEL_36;
    }
  }

  else
  {
    sub_188A3F5FC(&v25, &unk_1EA933EC0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    if (v31)
    {
      goto LABEL_33;
    }
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
LABEL_36:
  sub_189021058(&v22, &v25, &v29);
  sub_188A3F5FC(&v25, &unk_1EA93C9A0);
  sub_188A3F5FC(&v22, &unk_1EA93C9A0);
  if (v31)
  {
    v35 = v29;
  }

  sub_188A3F29C(&v30, &v25, &unk_1EA933EC0);
  sub_188AF4690(&v25);
  sub_188A3F5FC(v36, &unk_1EA933EC0);
  return sub_188A3F5FC(&v30, &unk_1EA933EC0);
}

id sub_188AF4E14(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933148);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_188AF4F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  (*(a3 + 8))(&v17);
  if (v18)
  {
    sub_188A5EBAC(&v17, v19);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_0(v19, v20);
    sub_188AF4F9C(a1, v13, v14, a5, a6);
    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    sub_188A3F5FC(&v17, &unk_1EA93C9A0);
    a4[3] = a2;
    a4[4] = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    return (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v6, a2);
  }
}

uint64_t sub_188AF50B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_188AF5144(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _GlassGroupTraitDefinition, &off_1EE43CE68, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

uint64_t _UIPanGestureRecognizerCommonInit(uint64_t a1)
{
  *(a1 + 328) = 0;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 320);
  *(a1 + 320) = v2;

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = *(a1 + 400);
  *(a1 + 400) = v4;

  *(a1 + 336) = 1;
  *(a1 + 344) = 0xFFFFFFFFLL;
  [objc_opt_class() _defaultHysteresis];
  *(a1 + 352) = v6;
  *(a1 + 360) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 384) = 0;
  [a1 _setRequiresSystemGesturesToFail:1];
  *(a1 + 440) |= 1u;
  *(a1 + 440) |= 2u;
  *(a1 + 440) |= 4u;
  *(a1 + 440) |= 8u;
  *(a1 + 440) &= ~0x10u;
  *(a1 + 440) &= ~0x20u;
  *(a1 + 440) |= 0x40u;
  *(a1 + 440) &= ~0x80u;
  *(a1 + 440) &= ~0x100u;
  *(a1 + 440) &= ~0x200u;
  *(a1 + 440) &= ~0x400u;
  result = _UIGestureRecognizerShouldConsiderPointingDeviceCompatibility();
  if (result)
  {
    v8 = 2048;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 440) = *(a1 + 440) & 0xF7FF | v8;
  *(a1 + 440) &= ~0x1000u;
  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

double UIEdgeInsetsMax(char a1, double result, double a3, double a4, double a5, double a6)
{
  v6 = fmax(result, a6);
  if (a1)
  {
    return v6;
  }

  return result;
}

uint64_t sub_188AF61EC(void *a1)
{
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933148);
  v17[0] = a1;
  sub_188A55598(v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v14[0] = v15;
  v14[1] = v16;
  v3 = *(&v16 + 1);
  sub_188A3F5FC(v14, &qword_1EA934050);
  if (v3)
  {
    *&v15 = a1;
    v4 = a1;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    *v1 = v8;
  }

  v9 = qword_1ED491B40;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v11 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188AF5144(&type metadata for _GlassGroupTraitDefinition, sub_188AF4E14);
  os_unfair_lock_unlock(v11[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v12 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v10 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t _UIBarAppearanceAPIVersion()
{
  if (qword_1ED49BF88 != -1)
  {
    dispatch_once(&qword_1ED49BF88, &__block_literal_global_84);
  }

  return qword_1ED49BF80;
}

uint64_t sub_188AF6E6C()
{
  result = sub_18A4A30C8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t type metadata accessor for ContainerImplementation()
{
  result = qword_1ED48E080;
  if (!qword_1ED48E080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_188AF7050(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v21 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_containerModel;
  type metadata accessor for ScrollPocketContainerModel();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = 255;
  v7[5] = 0;
  v7[6] = 0;
  v7[7] = 0;
  sub_18A4A2C38();
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_materialBackdropContext;
  sub_18A4A56A8();
  v9 = sub_18A4A56B8();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 0, 1, v9);
  v11 = type metadata accessor for MaterialBackdropContext();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags] = 0;
  v13 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  v10(&v12[OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy], 1, 1, v9);
  swift_beginAccess();
  sub_188AF9E30(v5, &v12[v13], &qword_1EA935CD0);
  swift_endAccess();
  v25.receiver = v12;
  v25.super_class = v11;
  v14 = objc_msgSendSuper2(&v25, sel_init, v21);
  sub_188A3F5FC(v5, &qword_1EA935CD0);
  *&v2[v8] = v14;
  sub_18A4A30B8();
  v15 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_containerElementInteraction;
  *&v2[v15] = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_isActive] = 1;
  v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_findsParentScrollView] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_targetScrollPocket];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 1) = xmmword_18A666380;
  v17 = &v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  *(v17 + 20) = 1;
  v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewNeedsUpdate] = 1;
  v18 = &v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewAndSubview];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_activeParentScrollViewAndSubview];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 2;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_edge] = v23;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

void sub_188AF739C(void *a1, uint64_t a2, void *a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v5 = a3;
  v6 = a1;
  sub_188AF7438(Strong);
}

void sub_188AF7438(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    if (v3 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsUpdateProperties];
  }
}

id _UINSLocalizedStringWithDefaultValue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = _UIKitBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:@"Localizable"];

  return v6;
}

uint64_t sub_188AF7640()
{
  sub_18A4A7288();
  sub_18A4A8888();
  sub_18A4A7348();
  v0 = sub_18A4A88E8();

  return v0;
}

void _UIFocusGuideCommonInit(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(objc_msgSend(objc_opt_class() "_implClass"))];
  v3 = v1[29];
  v1[29] = v2;
}

id _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict()
{
  v0 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict__UIMenuLeafKeyboardShortcutLocalizedKeyEquivalentDict;
  if (!_UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict__UIMenuLeafKeyboardShortcutLocalizedKeyEquivalentDict)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict__UIMenuLeafKeyboardShortcutLocalizedKeyEquivalentDict;
    _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict__UIMenuLeafKeyboardShortcutLocalizedKeyEquivalentDict = v1;

    v0 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict__UIMenuLeafKeyboardShortcutLocalizedKeyEquivalentDict;
  }

  return v0;
}

unint64_t sub_188AF7A44()
{
  result = qword_1ED48F680;
  if (!qword_1ED48F680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48F680);
  }

  return result;
}

void *_UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalent(void *a1)
{
  v1 = a1;
  v2 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict();
  v3 = [v2 objectForKeyedSubscript:v1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v5;
}

uint64_t _UIBarsUseNewPadHeights()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 != 1)
  {
    return 0;
  }

  return dyld_program_sdk_at_least();
}

uint64_t _treatment(uint64_t a1, int a2)
{
  v4 = _UISolariumEnabled();
  result = 0;
  if (v4 && a2)
  {
    v6 = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UseMonochromaticTintColorImpl, @"UseMonochromaticTintColorImpl");
    if (byte_1ED48B53C)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return a1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t _commonInit(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    goto LABEL_6;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1ED49AC60 != -1)
    {
      dispatch_once(&qword_1ED49AC60, &__block_literal_global_295);
    }

    if (_MergedGlobals_7_1 == 1)
    {
LABEL_6:
      v5 = [a1 _beginRequiringIgnoresHIDEdgeFlagsForReason:@"Initialization Requirement"];
      v6 = a1[62];
      a1[62] = v5;
    }
  }

  v7 = objc_alloc_init(_UISEGestureFeatureSettings);
  v8 = a1[57];
  a1[57] = v7;
  v9 = v7;

  v10 = a1[59];
  a1[59] = 0;

  a1[60] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___commonInit_block_invoke;
  aBlock[3] = &__block_descriptor_40_e60____UISEGestureFeature_16__0____UISEGestureFeatureSettings__8l;
  aBlock[4] = a2;
  v11 = _Block_copy(aBlock);
  v12 = a1[58];
  a1[58] = v11;

  [(_UISEGestureFeatureSettings *)v9 hysteresis];
  v14 = v13;

  return [a1 _setHysteresis:v14];
}

uint64_t sub_188AF823C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188AF8278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void _UIBarsSetAccessibilityLimits(void *a1)
{
  v9 = a1;
  v1 = [v9 traitCollection];
  if ([v1 userInterfaceIdiom] == 4)
  {
    v2 = dyld_program_sdk_at_least();

    v3 = v9;
    if (v2)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v3 = v9;
  }

  [v3 _setMinimumContentSizeCategory:@"UICTContentSizeCategoryL"];
  v4 = [v9 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    if (qword_1ED49BF70 != -1)
    {
      dispatch_once(&qword_1ED49BF70, &__block_literal_global_74);
    }

    v6 = &UIContentSizeCategoryAccessibilityMedium;
  }

  else
  {
    if (qword_1ED49BF70 != -1)
    {
      dispatch_once(&qword_1ED49BF70, &__block_literal_global_74);
    }

    v6 = &UIContentSizeCategoryExtraExtraLarge;
  }

  v7 = *v6;
  if (byte_1ED49BF61)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"UICTContentSizeCategoryL";
  }

  [v9 _setMaximumContentSizeCategory:v8];
  v3 = v9;
LABEL_16:
}

uint64_t sub_188AF8408(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_18A4A7258();
  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A55538(&v9, v10);
    sub_188A553EC(v10);
    v7 = sub_18A4A7258();
    a3 = [v3 BOOLForKey_];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_188A553EC(v10);
  }

  return a3 & 1;
}

void sub_188AF8544(void *a1)
{
  v2 = v1;
  if (_UIScrollPocketEnabled())
  {
    if (a1)
    {
      v4 = a1;
      v5 = [(UIView *)v4 _traitOverrides];
      v6 = [(_UITraitOverrides *)v5 _swiftImplCopy];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *(inited + 16);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
        v10 = swift_allocObject();
        *(v10 + 16) = v9;

        inited = v10;
      }

      v11 = qword_1ED491B40;
      v12 = v9;
      if (v11 != -1)
      {
        swift_once();
      }

      if (qword_1ED491AF0 != -1)
      {
        swift_once();
      }

      v13 = off_1ED491B48;
      os_unfair_lock_lock(*(off_1ED491B48 + 2));
      v14 = sub_188A75858(&type metadata for ScrollPocketCollectorModelTrait, 0);
      os_unfair_lock_unlock(v13[2]);
      [(_UITraitOverrides *)v12 _removeTraitToken:v14];

      swift_unknownObjectRelease();
      v15 = [(UIView *)v4 _traitOverrides];
      v16 = *(inited + 16);

      [(_UITraitOverrides *)v15 _replaceWithOverrides:v16];

      v17 = [(UIView *)v4 _traitOverrides];
      v18 = [(_UITraitOverrides *)v17 _swiftImplCopy];

      v19 = swift_initStackObject();
      *(v19 + 16) = v18;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v19 + 16);
      if ((v20 & 1) == 0)
      {
        v21 = [(_UITraitOverrides *)*(v19 + 16) _swiftImplCopy];
        v22 = swift_allocObject();
        *(v22 + 16) = v21;

        v19 = v22;
      }

      v23 = v13[2];
      v24 = v21;
      os_unfair_lock_lock(v23);
      v25 = sub_18901B3A4(&type metadata for GlassPocketContainerTrait, 0);
      os_unfair_lock_unlock(v13[2]);
      [(_UITraitOverrides *)v24 _removeTraitToken:v25];

      swift_unknownObjectRelease();
      v26 = [(UIView *)v4 _traitOverrides];
      v27 = *(v19 + 16);

      [(_UITraitOverrides *)v26 _replaceWithOverrides:v27];

      v28 = [(UIView *)v4 _traitOverrides];
      v29 = [(_UITraitOverrides *)v28 _swiftImplCopy];

      v30 = swift_initStackObject();
      *(v30 + 16) = v29;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v30 + 16);
      if ((v31 & 1) == 0)
      {
        v32 = [(_UITraitOverrides *)*(v30 + 16) _swiftImplCopy];
        v33 = swift_allocObject();
        *(v33 + 16) = v32;

        v30 = v33;
      }

      v34 = v13[2];
      v35 = v32;
      os_unfair_lock_lock(v34);
      v36 = sub_18901AD54(&type metadata for MaterialBackdropContextTrait, 0);
      os_unfair_lock_unlock(v13[2]);
      [(_UITraitOverrides *)v35 _removeTraitToken:v36];

      swift_unknownObjectRelease();
      v37 = [(UIView *)v4 _traitOverrides];
      v38 = *(v30 + 16);

      [(_UITraitOverrides *)v37 _replaceWithOverrides:v38];

      v39 = [(UIView *)v4 _traitOverrides];
      v40 = [(_UITraitOverrides *)v39 _swiftImplCopy];

      v41 = swift_initStackObject();
      *(v41 + 16) = v40;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v41 + 16);
      if ((v42 & 1) == 0)
      {
        v43 = [(_UITraitOverrides *)*(v41 + 16) _swiftImplCopy];
        v44 = swift_allocObject();
        *(v44 + 16) = v43;

        v41 = v44;
      }

      v45 = v13[2];
      v46 = v43;
      os_unfair_lock_lock(v45);
      v47 = sub_18901B07C(&type metadata for GlassFrostTrait, 0);
      os_unfair_lock_unlock(v13[2]);
      [(_UITraitOverrides *)v46 _removeTraitToken:v47];

      swift_unknownObjectRelease();
      v48 = [(UIView *)v4 _traitOverrides];
      v49 = *(v41 + 16);

      [(_UITraitOverrides *)v48 _replaceWithOverrides:v49];

      [(UIView *)v4 _setNeedsToBeNotifiedOfVisibilityChange:?];
      sub_1891DC8F4(v4, 0);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = Strong;
      v52 = [(UIView *)Strong _traitOverrides];
      v53 = [(_UITraitOverrides *)v52 _swiftImplCopy];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
      v54 = swift_initStackObject();
      *(v54 + 16) = v53;
      v71 = v54;
      sub_188AF8F8C(0);
      v55 = [(UIView *)v51 _traitOverrides];
      v56 = *(v71 + 16);

      [(_UITraitOverrides *)v55 _replaceWithOverrides:v56];

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
      v70 = &v70;
      v58 = *(*(v57 - 8) + 64);
      MEMORY[0x1EEE9AC00](v57 - 8);
      v59 = &v70 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      v60 = v2;
      v61 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassPocketContainer;
      v62 = sub_18A4A30C8();
      v63 = *(v62 - 8);
      (*(v63 + 16))(v59, v60 + v61, v62);
      (*(v63 + 56))(v59, 0, 1, v62);
      v64 = [(UIView *)v51 _traitOverrides];
      v65 = [(_UITraitOverrides *)v64 _swiftImplCopy];

      v66 = swift_initStackObject();
      *(v66 + 16) = v65;
      v71 = v66;
      MEMORY[0x1EEE9AC00](v66);
      sub_188A3F29C(v59, v59, &unk_1EA9334A0);
      sub_1891F0EA4(v59);
      sub_188A3F5FC(v59, &unk_1EA9334A0);
      v67 = v71;
      v68 = [(UIView *)v51 _traitOverrides];
      v69 = *(v67 + 16);

      [(_UITraitOverrides *)v68 _replaceWithOverrides:v69];

      [(UIView *)v51 _setNeedsToBeNotifiedOfVisibilityChange:?];
      sub_1891DC8F4(v51, *(v60 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_isActive));
    }
  }
}

uint64_t sub_188AF8D18(uint64_t a1)
{
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A480);
  v16[0] = a1;
  sub_188A55598(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v13[0] = v14;
  v13[1] = v15;
  v3 = *(&v15 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050);
  if (v3)
  {
    *&v14 = a1;

    v4 = sub_18A4A8778();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    *v1 = v7;
  }

  v8 = qword_1ED491B40;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v10 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188A78A74(&type metadata for ScrollPocketContainerModelTrait, sub_188AD7C3C);
  os_unfair_lock_unlock(v10[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v11 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v9 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_188AF8F8C(uint64_t a1)
{
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933150);
  v16[0] = a1;
  sub_188A55598(v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v13[0] = v14;
  v13[1] = v15;
  v3 = *(&v15 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050);
  if (v3)
  {
    *&v14 = a1;

    v4 = sub_18A4A8778();
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = [(_UITraitOverrides *)*(*v1 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;

    *v1 = v7;
  }

  v8 = qword_1ED491B40;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v10 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  sub_188A75858(&type metadata for ScrollPocketCollectorModelTrait, sub_188AD9430);
  os_unfair_lock_unlock(v10[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E970);
  v11 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v9 _setObject_forTraitToken_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_188AF9204()
{
  v1 = v0;
  if (_UIScrollPocketEnabled())
  {
    if (*(v0 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewNeedsUpdate) == 1)
    {
      *(v0 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewNeedsUpdate) = 0;
      if (*(v0 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_findsParentScrollView) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v85 = 0;
        v86 = 0;
        LOBYTE(v87) = 1;
        if (Strong)
        {
          v3 = Strong;
          v4 = [v3 superview];

          if (v4)
          {
            while (1)
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              v3 = v4;
              v4 = [v3 superview];

              if (!v4)
              {
                goto LABEL_8;
              }
            }

            sub_188A3F5FC(&v85, &qword_1EA93FD68);
            swift_unknownObjectWeakInit();

            swift_unknownObjectWeakInit();
            LOBYTE(v87) = 0;
          }

          else
          {
LABEL_8:
          }
        }
      }

      else
      {
        v85 = 0;
        v86 = 0;
        LOBYTE(v87) = 1;
      }

      v5 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewAndSubview;
      swift_beginAccess();
      sub_188AF9D6C(&v85, v1 + v5);
      swift_endAccess();
    }

    v6 = v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_parentScrollViewAndSubview;
    swift_beginAccess();
    sub_188A3F29C(v6, &v75, &qword_1EA93FD68);
    if (v76)
    {
      v85 = 0;
      v86 = 0;
      LOBYTE(v87) = 2;
    }

    else
    {
      sub_188CFE6F8(&v75, v84);
      sub_188CFE730(v84, v1, &v85);
      sub_188CFE8F4(v84);
    }

    v7 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_activeParentScrollViewAndSubview;
    swift_beginAccess();
    sub_188A3F29C(v1 + v7, v81, &qword_1EA93FD70);
    swift_beginAccess();
    sub_188AF9E30(&v85, v1 + v7, &qword_1EA93FD70);
    swift_endAccess();
    sub_188AF9E98(v81);
    sub_188A3F5FC(v81, &qword_1EA93FD70);
    sub_188A3F5FC(&v85, &qword_1EA93FD70);
    v8 = 0;
    if (*(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_findsParentScrollView) == 1)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
    }

    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_188AFA168(v9);

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;

      swift_weakInit();
      swift_weakAssign();

      v12 = 1;
    }

    else
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13 || (*(v6 + 16) & 1) == 0 && (v13 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v14 = v13;
        v15 = [v13 _edgeEffectViewInteraction];
        if (!v15)
        {
          __break(1u);

          os_unfair_lock_unlock(unk_1ED48D010);
          __break(1u);

          os_unfair_lock_unlock(*(v9 + 16));
          __break(1u);
          return;
        }

        v16 = v15;

        *(&v75 + 1) = 0;
        swift_unknownObjectWeakInit();
        *(&v75 + 1) = &off_1EFADD208;
        swift_unknownObjectWeakAssign();

        LOBYTE(v76) = 0;
LABEL_22:
        sub_1891DE574(&v75, v83);
        v82 = 2;
        v17 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_isActive;
        if (*(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_isActive) == 1 && (sub_1891DE054(&v82) & 1) != 0)
        {
          sub_188A3F29C(v83, &v75, &qword_1EA93FD78);
          if (v76 == 255)
          {
            sub_188A3F5FC(&v75, &qword_1EA93FD78);
          }

          else
          {
            sub_1890EA074(&v75, v81);
            sub_1890EA074(v81, v80);
            v18 = *(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_edge);
            if (v18)
            {
              sub_1890EA074(v80, &v85);
              *(&v87 + 1) = v18;
              sub_188B02584(&v85, &v75);
LABEL_33:
              v19 = v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_targetScrollPocket;
              swift_beginAccess();
              sub_188A3F29C(v19, &v85, &qword_1EA93CB20);
              swift_beginAccess();
              sub_188AF9E30(&v75, v19, &qword_1EA93CB20);
              swift_endAccess();
              sub_188AFA214(&v85);
              sub_188A3F5FC(&v85, &qword_1EA93CB20);
              sub_188A3F5FC(&v75, &qword_1EA93CB20);
              v74 = 0u;
              if (*(v19 + 16) == 0xFF || (sub_188AFA8CC(v19, &v75), v20 = *(&v76 + 1), sub_18914BDC0(), sub_1891DBD2C(v20, &v85), , sub_188B04290(&v75), (v89 & 1) != 0))
              {
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v24 = 1;
              }

              else
              {
                v23 = v88;
                v74 = v87;
                v25 = HIDWORD(v85);
                v22 = v86;
                sub_1891DE25C(*&v85);
                v24 = 0;
                v21 = v26 | (v25 << 32);
              }

              if (*(v19 + 16) == 0xFF)
              {
                v27 = 0;
              }

              else
              {
                sub_188AFA8CC(v19, &v75);
                sub_18914C2E4(v80);
                sub_188B04290(&v75);
                v27 = v80[0];
              }

              v28 = v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties;
              v29 = *(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties);
              v30 = *(v1 + OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_glassProperties + 16);
              *(v28 + 16) = v74;
              v31 = *(v28 + 32);
              v32 = *(v28 + 40);
              v33 = *(v28 + 41);
              *(v28 + 32) = v23;
              *(v28 + 40) = v24;
              *(v28 + 41) = v27;
              *v28 = v21;
              *(v28 + 8) = v22;
              v75 = v29;
              v76 = v30;
              v77 = v31;
              v78 = v32;
              v79 = v33;
              sub_1891DCD64(&v75);
              v34 = *(v1 + v17);
              v35 = swift_unknownObjectWeakLoadStrong();
              v36 = v35;
              if (v34 == 1)
              {
                if (v35)
                {
                  v37 = [(UIView *)v35 _traitOverrides];
                  v38 = [(_UITraitOverrides *)v37 _swiftImplCopy];

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
                  inited = swift_initStackObject();
                  *(inited + 16) = v38;
                  *&v75 = inited;
                  sub_188AFAA18(2);
                  v40 = v75;
                  v41 = [(UIView *)v36 _traitOverrides];
                  v42 = *(v40 + 16);

                  [(_UITraitOverrides *)v41 _replaceWithOverrides:v42];
                }

                v43 = swift_unknownObjectWeakLoadStrong();
                if (!v43)
                {
                  goto LABEL_62;
                }

                v44 = v43;
                v45 = [(UIView *)v43 _traitOverrides];
                v46 = [(_UITraitOverrides *)v45 _swiftImplCopy];

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
                v47 = swift_initStackObject();
                *(v47 + 16) = v46;
                *&v75 = v47;
                sub_188AFADC8(1);
                v48 = v75;
                v49 = [(UIView *)v44 _traitOverrides];
              }

              else
              {
                if (v35)
                {
                  v50 = [(UIView *)v35 _traitOverrides];
                  v51 = [(_UITraitOverrides *)v50 _swiftImplCopy];

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
                  v52 = swift_initStackObject();
                  *(v52 + 16) = v51;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v54 = *(v52 + 16);
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v54 = [(_UITraitOverrides *)*(v52 + 16) _swiftImplCopy];
                    v55 = swift_allocObject();
                    *(v55 + 16) = v54;

                    v52 = v55;
                  }

                  v56 = qword_1ED491B40;
                  v57 = v54;
                  if (v56 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1ED491AF0 != -1)
                  {
                    swift_once();
                  }

                  v58 = off_1ED491B48;
                  os_unfair_lock_lock(*(off_1ED491B48 + 2));
                  v59 = sub_188AFAA4C(&type metadata for UITraitUserInterfaceRenderingMode, 0);
                  os_unfair_lock_unlock(v58[2]);
                  [(_UITraitOverrides *)v57 _removeTraitToken:v59];

                  swift_unknownObjectRelease();
                  v60 = [(UIView *)v36 _traitOverrides];
                  v61 = *(v52 + 16);

                  [(_UITraitOverrides *)v60 _replaceWithOverrides:v61];
                }

                v62 = swift_unknownObjectWeakLoadStrong();
                if (!v62)
                {
                  goto LABEL_62;
                }

                v44 = v62;
                v63 = [(UIView *)v62 _traitOverrides];
                v64 = [(_UITraitOverrides *)v63 _swiftImplCopy];

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
                v48 = swift_initStackObject();
                *(v48 + 16) = v64;
                v65 = swift_isUniquelyReferenced_nonNull_native();
                v66 = *(v48 + 16);
                if ((v65 & 1) == 0)
                {
                  v66 = [(_UITraitOverrides *)*(v48 + 16) _swiftImplCopy];
                  v67 = swift_allocObject();
                  *(v67 + 16) = v66;

                  v48 = v67;
                }

                v68 = qword_1ED491B40;
                v69 = v66;
                if (v68 != -1)
                {
                  swift_once();
                }

                if (qword_1ED491AF0 != -1)
                {
                  swift_once();
                }

                v70 = off_1ED491B48;
                os_unfair_lock_lock(*(off_1ED491B48 + 2));
                v71 = sub_188AFADFC(&type metadata for UITraitVibrancy, 0);
                os_unfair_lock_unlock(v70[2]);
                [(_UITraitOverrides *)v69 _removeTraitToken:v71];

                swift_unknownObjectRelease();
                v49 = [(UIView *)v44 _traitOverrides];
              }

              v72 = v49;
              v73 = *(v48 + 16);

              [(_UITraitOverrides *)v72 _replaceWithOverrides:v73];

LABEL_62:
              sub_188A3F5FC(v83, &qword_1EA93FD78);
              return;
            }

            sub_1890EA0D0(v80);
          }
        }

        v75 = 0uLL;
        v76 = xmmword_18A666380;
        goto LABEL_33;
      }

      v75 = 0uLL;
      v12 = -1;
    }

    LOBYTE(v76) = v12;
    goto LABEL_22;
  }
}

uint64_t sub_188AF9D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188AF9DDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_188AF9E30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_188AF9E98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_activeParentScrollViewAndSubview;
  swift_beginAccess();
  sub_188A3F29C(v1 + v3, v16, &qword_1EA93FD70);
  sub_188A3F29C(a1, v18, &qword_1EA93FD70);
  if (v17 == 2)
  {
    if (v19 == 2)
    {
      return sub_188A3F5FC(v16, &qword_1EA93FD70);
    }

    goto LABEL_6;
  }

  sub_188A3F29C(v16, v14, &qword_1EA93FD70);
  if (v19 == 2)
  {
    sub_188CFE968(v14);
LABEL_6:
    v5 = &unk_1EA93FD80;
    goto LABEL_7;
  }

  sub_188CFE998(v18, v13);
  if (sub_1891DE378())
  {
    v11 = v15;
    v12 = v13[16];
    sub_188CFE968(v13);
    sub_188CFE968(v14);
    result = sub_188A3F5FC(v16, &qword_1EA93FD70);
    if (v11 == v12)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_188CFE968(v13);
  sub_188CFE968(v14);
  v5 = &qword_1EA93FD70;
LABEL_7:
  sub_188A3F5FC(v16, v5);
LABEL_8:
  sub_188A3F29C(a1, v14, &qword_1EA93FD70);
  if (v15 == 2)
  {
    sub_188A3F5FC(v14, &qword_1EA93FD70);
  }

  else
  {
    sub_188CFE998(v14, v16);
    sub_188CFE8BC(v16, v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong _setPocketRelativeSubview_isOver_forKey_];
    }

    sub_188CFE8F4(v14);
    sub_188CFE968(v16);
  }

  sub_188A3F29C(v1 + v3, v14, &qword_1EA93FD70);
  if (v15 == 2)
  {
    return sub_188A3F5FC(v14, &qword_1EA93FD70);
  }

  sub_188CFE998(v14, v16);
  sub_188CFE8BC(v16, v14);
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = swift_unknownObjectWeakLoadStrong();
    [v9 _setPocketRelativeSubview_isOver_forKey_];
  }

  sub_188CFE8F4(v14);
  return sub_188CFE968(v16);
}

void sub_188AFA168(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (!a1)
    {
      goto LABEL_7;
    }

    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [(UIView *)a1 _removeGeometryChangeObserver:v1];
LABEL_7:
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [(UIView *)v5 _addGeometryChangeObserver:v1];
  }
}

uint64_t sub_188AFA214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKitP33_BA7E8DCF32E747052AD4072137B98A3B23ContainerImplementation_targetScrollPocket;
  swift_beginAccess();
  sub_188A3F29C(v1 + v3, v12, &qword_1EA93CB20);
  sub_188A3F29C(a1, v13, &qword_1EA93CB20);
  if (v12[16] == 0xFF)
  {
    if (v14 == 0xFF)
    {
      return sub_188A3F5FC(v12, &qword_1EA93CB20);
    }

    goto LABEL_6;
  }

  sub_188A3F29C(v12, v10, &qword_1EA93CB20);
  if (v14 == 0xFF)
  {
    sub_188B04290(v10);
LABEL_6:
    v5 = &qword_1EA93E440;
LABEL_7:
    sub_188A3F5FC(v12, v5);
LABEL_8:
    sub_188A3F29C(v1 + v3, v12, &qword_1EA93CB20);
    return sub_188AFA3DC(v12);
  }

  sub_188B02584(v13, v8);
  if (!sub_18914DB9C(v10, v8))
  {
    sub_188B04290(v8);
    sub_188B04290(v10);
    v5 = &qword_1EA93CB20;
    goto LABEL_7;
  }

  v6 = v11;
  v7 = v9;
  sub_188B04290(v8);
  sub_188B04290(v10);
  result = sub_188A3F5FC(v12, &qword_1EA93CB20);
  if (v6 != v7)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_188AFA3DC(uint64_t a1)
{
  swift_beginAccess();
  sub_188A3F29C(v1 + 16, v6, &qword_1EA93CB20);
  v3 = sub_188AFA620(v6, a1);
  sub_188A3F5FC(v6, &qword_1EA93CB20);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    sub_188AFA784();
    sub_18A4A2BF8();
  }

  else
  {
    sub_188A3F29C(a1, v6, &qword_1EA93CB20);
    swift_beginAccess();
    sub_18914E3B4(v6, v1 + 16);
    swift_endAccess();
  }

  return sub_188A3F5FC(a1, &qword_1EA93CB20);
}

uint64_t sub_188AFA5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188AFA620(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a1, v10, &qword_1EA93CB20);
  sub_188A3F29C(a2, v11, &qword_1EA93CB20);
  if (v10[16] == 0xFF)
  {
    if (v12 == 0xFF)
    {
      sub_188A3F5FC(v10, &qword_1EA93CB20);
      return 0;
    }

    goto LABEL_6;
  }

  sub_188A3F29C(v10, v8, &qword_1EA93CB20);
  if (v12 == 0xFF)
  {
    sub_188B04290(v8);
LABEL_6:
    sub_188A3F5FC(v10, &qword_1EA93E440);
    return 1;
  }

  sub_188B02584(v11, v7);
  if (sub_18914DB9C(v8, v7))
  {
    v4 = v9;
    v5 = v7[3];
    sub_188B04290(v7);
    v6 = v4 != v5;
  }

  else
  {
    sub_188B04290(v7);
    v6 = 1;
  }

  sub_188B04290(v8);
  sub_188A3F5FC(v10, &qword_1EA93CB20);
  return v6;
}

unint64_t sub_188AFA784()
{
  result = qword_1ED48E1A0;
  if (!qword_1ED48E1A0)
  {
    type metadata accessor for ScrollPocketContainerModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E1A0);
  }

  return result;
}

uint64_t sub_188AFA7DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_188AFA85C(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_188AFA85C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_188AFA928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C200);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_188B8558C(v5, sub_188A41228);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_188AFAA4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      if (qword_1EA931B48 != -1)
      {
        swift_once();
      }

      if (qword_1EA931B60 != -1)
      {
        swift_once();
      }

      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitUserInterfaceRenderingMode, &protocol witness table for UITraitUserInterfaceRenderingMode, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

id sub_188AFADFC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      if (qword_1EA931AF8 != -1)
      {
        swift_once();
      }

      if (qword_1EA931B10 != -1)
      {
        swift_once();
      }

      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for UITraitVibrancy, &protocol witness table for UITraitVibrancy, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

void sub_188AFB178()
{
  sub_188F27D58(319, &unk_1ED48F850, MEMORY[0x1E697F228]);
  if (v0 <= 0x3F)
  {
    sub_188F27D58(319, &qword_1ED48F140, MEMORY[0x1E697FF20]);
    if (v1 <= 0x3F)
    {
      sub_18A4A5CC8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata accessor for UIHostingViewBase()
{
  result = qword_1ED48FBC8;
  if (!qword_1ED48FBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id UIHostingViewBase.init(viewGraph:configuration:)(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  v7 = a2[1];
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  *&v2[v8] = sub_18A4A4CF8();
  v9 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inheritedEnvironment;
  v10 = sub_18A4A5318();
  v11 = *(*(v10 - 8) + 56);
  v11(&v2[v9], 1, 1, v10);
  v11(&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_environmentOverride], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride] = 0;
  v12 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
  v13 = sub_18A4A5728();
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically] = 1;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate] = 0;
  sub_18A4A5C78();
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPreferencesUpdate] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate] = 0;
  v14 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  *&v2[v14] = sub_18A4A4D38();
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow] = 0;
  v15 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState];
  *v15 = 0;
  v15[8] = 1;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v16 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inactiveKeyboardFrame];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardSeed] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase____lazy_storage___trackingElement] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isUpdatingKeyboard] = 0;
  v21[0] = v6;
  v21[1] = v7;
  sub_188AFB738(v21);
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph] = a1;
  v18 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_configuration];
  *v18 = v6;
  v18[1] = v7;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_188AFB738(uint64_t a1)
{
  v2 = sub_18A4A5828();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 8))
  {
    type metadata accessor for UICorePlatformColorDefinition();
  }

  sub_18A4A5788();
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A5778();
  v6 = *(v3 + 8);
  v6(v5, v2);
  sub_18A4A57B8();
  sub_18A4A3178();
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A57A8();
  v6(v5, v2);
  sub_18A4A5AA8();
  type metadata accessor for UIKitPlatfromGlassInteractionDefinition(0);
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A5A98();
  v6(v5, v2);
  sub_18A4A5B08();
  type metadata accessor for UIKitPlatformAccessibilitySettingsDefinition();
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A5AC8();
  return (v6)(v5, v2);
}

uint64_t type metadata accessor for UICorePlatformColorDefinition()
{
  result = qword_1ED48F8A8;
  if (!qword_1ED48F8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall UIHostingViewBase.setUp()()
{
  sub_188AFBA2C(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
  swift_unknownObjectRetain();
  sub_18A4A46D8();
  sub_188AFBA2C(&qword_1ED48E490, type metadata accessor for UIHostingViewBase);
  swift_unknownObjectRetain();
  sub_18A4A4938();
  sub_18A4A4928();

  sub_188AFBD9C();
}

uint64_t sub_188AFBA2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UIHostingViewBase._as<A>(_:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v20 = v2;
  sub_18A4A4888();
  if ((*(v9 + 48))(v8, 1, a1) != 1)
  {
    v15 = *(v9 + 32);
    v15(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8, a1);
    v15(a2, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    goto LABEL_10;
  }

  (*(v6 + 8))(v8, v5);
  if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937000) == a1)
  {
    result = sub_188AFBA2C(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase);
    v21[0] = v20;
    v21[1] = result;
    if (v10 != 16)
    {
      __break(1u);
      goto LABEL_13;
    }

    (*(v9 + 16))(a2, v21, a1);
LABEL_10:
    v14 = 0;
    return (*(v9 + 56))(a2, v14, 1, a1);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937008);
  v13 = v20;
  if (v12 != a1)
  {
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, a1);
  }

  v21[3] = ObjectType;
  result = sub_188AFBA2C(&unk_1EA92ECB8, type metadata accessor for UIHostingViewBase);
  v21[4] = result;
  v21[0] = v13;
  if (v10 == 40)
  {
    (*(v9 + 16))(a2, v21, a1);
    v17 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_188AFBD9C()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1ED48F860 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
  if (qword_1ED48F8B8 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64C6E0;
  v4 = *MEMORY[0x1E695D8F0];
  v5 = *MEMORY[0x1E695DA68];
  *(inited + 32) = *MEMORY[0x1E695D8F0];
  *(inited + 40) = v5;
  v6 = *MEMORY[0x1E696A7D8];
  *(inited + 48) = *MEMORY[0x1E696A7D8];
  *(inited + 56) = @"UIViewGlassLegibilityDidChangeNotification";
  type metadata accessor for UIKitPlatformAccessibilitySettingsDefinition();
  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = @"UIViewGlassLegibilityDidChangeNotification";
  v11 = sub_18A4A5AD8();
  v12 = sub_188AFC3D0(1, 5, 1, inited);
  v12[2] = 5;
  v12[8] = v11;
  v13 = v12[3];
  v14 = @"UISceneSystemProtectionDidChangeNotification";
  if (v13 <= 0xB)
  {
    v16 = v13 > 1;
    v17 = v14;
    v12 = sub_188AFC3D0(v16, 6, 1, v12);
    v14 = v17;
  }

  v12[2] = 6;
  v12[9] = v14;
  [v2 addObserver:v1 selector:sel_externalEnvironmentDidChange name:v12[4] object:0];
  [v2 addObserver:v1 selector:sel_externalEnvironmentDidChange name:v12[5] object:0];
  [v2 addObserver:v1 selector:sel_externalEnvironmentDidChange name:v12[6] object:0];
  [v2 addObserver:v1 selector:sel_externalEnvironmentDidChange name:v12[7] object:0];
  [v2 addObserver:v1 selector:sel_externalEnvironmentDidChange name:v12[8] object:0];
  [v2 addObserver:v1 selector:sel_externalEnvironmentDidChange name:v12[9] object:0];
}

void *sub_188AFC0AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

Swift::Void __swiftcall UIHostingViewBase.frameDidChange(oldValue:)(__C::CGRect oldValue)
{
  height = oldValue.size.height;
  width = oldValue.size.width;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_18A4A46F8())
    {
      [v4 bounds];
      if (v6 != width || v5 != height)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18A64BFA0;
        v9 = sub_18A4A5558();
        *(inited + 32) = v9;
        v10 = sub_18A4A5548();
        *(inited + 34) = v10;
        sub_18A4A5568();
        sub_18A4A5568();
        if (sub_18A4A5568() != v9)
        {
          sub_18A4A5568();
        }

        sub_18A4A5568();
        if (sub_18A4A5568() != v10)
        {
          sub_18A4A5568();
        }

        v11 = sub_18A4A5578();
        sub_18A4A5568();
        if (sub_18A4A5568() != v11)
        {
          sub_18A4A5568();
        }

        swift_getObjectType();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_188AFC388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188AFC590(void *a1, int a2, id a3, double a4, double a5, double a6, double a7, SEL *a8)
{
  if ([a3 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v15 = a1;
    [v15 *a8];
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

void sub_188AFC6E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 _scene];
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = [v6 _effectiveUISettings];

    if (v9)
    {
      v10 = [v9 cornerRadiusConfiguration];

      if (v10)
      {
        switch(a2)
        {
          case 1:
            v11 = &selRef_topLeft;
            break;
          case 2:
            v11 = &selRef_topRight;
            break;
          case 8:
            v11 = &selRef_bottomRight;
            break;
          case 4:
            v11 = &selRef_bottomLeft;
            break;
          default:
            sub_18A4A8398();
            __break(1u);
            return;
        }

        [v10 *v11];
        v13 = v12;
        v14 = [v3 __scene];
        if (v14)
        {
          v15 = v14;
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (v16)
          {
            v17 = v16;
            v18 = [v3 concentricMaskingSupport];
            v19 = v15;
            [v17 bounds];
            [a1 convertRect:v17 fromMaskingCoordinateSpace:?];
            if (a2 != 1)
            {
              if (a2 == 2)
              {
                v24 = CGRectGetWidth(*&v20) - v13;
                goto LABEL_19;
              }

              if (a2 != 4)
              {
                v25 = v20;
                v26 = v21;
                v27 = v22;
                v28 = v23;
                v24 = CGRectGetWidth(*&v20) - v13;
                v30.origin.x = v25;
                v30.origin.y = v26;
                v30.size.width = v27;
                v30.size.height = v28;
                v7 = CGRectGetHeight(v30) - v13;
                goto LABEL_19;
              }

              v7 = CGRectGetHeight(*&v20) - v13;
            }

            v24 = 0.0;
LABEL_19:
            [a1 bounds];
            [a1 convertRect:v17 toMaskingCoordinateSpace:?];
            v31.origin.x = v24;
            v31.origin.y = v7;
            v31.size.width = v13;
            v31.size.height = v13;
            CGRectIntersection(v29, v31);

            return;
          }
        }

        else
        {
        }
      }
    }
  }
}

id sub_188AFCAB8()
{
  v1 = OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport;
  v2 = *(v0 + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UIRelativeCornerMaskingProviderSceneComponent____lazy_storage___concentricMaskingSupport);
  }

  else
  {
    v4 = type metadata accessor for _UIConcentricCornerMaskingSupport();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDescendantInvalidationBlocks;
    v7 = MEMORY[0x1E69E7CC0];
    *&v5[v6] = sub_188AFCBB8(MEMORY[0x1E69E7CC0]);
    *&v5[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_concentricDependencyUnregistrationBlocks] = v7;
    v8 = &v5[OBJC_IVAR____TtC5UIKit33_UIConcentricCornerMaskingSupport_invalidationBlock];
    *v8 = sub_188C452F4;
    v8[1] = 0;
    v13.receiver = v5;
    v13.super_class = v4;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

unint64_t sub_188AFCBB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E40);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_188A3F29C(v4, v13, &qword_1EA934F68);
      result = sub_188BBA050(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 16 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _UIKitCoreGlyphsManager()
{
  os_unfair_lock_lock(&__UIKitCoreGlyphsManagersLock);
  v0 = __UIKitCoreGlyphsManager;
  if (!__UIKitCoreGlyphsManager)
  {
    v1 = [MEMORY[0x1E69C8708] public];
    if (v1)
    {
      v2 = [_UIAssetManager alloc];
      v3 = +[UIDevice currentDevice];
      v4 = -[_UIAssetManager _initWithName:inBundle:idiom:type:](v2, "_initWithName:inBundle:idiom:type:", @"CoreGlyphs", v1, [v3 userInterfaceIdiom], 4);
      v5 = __UIKitCoreGlyphsManager;
      __UIKitCoreGlyphsManager = v4;
    }

    if (!__UIKitCoreGlyphsManager && _UIKitCoreGlyphsManager_once != -1)
    {
      dispatch_once(&_UIKitCoreGlyphsManager_once, &__block_literal_global_33_10);
    }

    v0 = __UIKitCoreGlyphsManager;
  }

  v6 = v0;
  os_unfair_lock_unlock(&__UIKitCoreGlyphsManagersLock);

  return v6;
}

void ___scrollViewConvertSafeAreaToContentInset_block_invoke()
{
  v0 = _UIKitPreferencesOnce();
  v3 = [v0 objectForKey:@"UIScrollViewForceConvertSafeAreaToContentInsetPreference"];

  v1 = v3;
  if (v3 || ([MEMORY[0x1E695E000] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKey:", @"UIScrollViewForceConvertSafeAreaToContentInsetPreference"), v4 = objc_claimAutoreleasedReturnValue(), v2, (v1 = v4) != 0))
  {
    v5 = v1;
    _scrollViewConvertSafeAreaToContentInset_convert = [v1 BOOLValue];
  }

  else if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _scrollViewConvertSafeAreaToContentInset_convert = 0;
  }
}

void _UIScrollViewSharedInit(void *a1)
{
  v1 = a1;
  v2 = [v1 _screen];
  v3 = [v2 _capabilityForKey:@"UIScreenCapabilityTouchLevelsKey"];
  *(v1 + 154) = [v3 integerValue];

  *(v1 + 1804) |= 0x200000000000uLL;
  *(v1 + 1272) = *MEMORY[0x1E695EFF8];
  *(v1 + 183) = 0x3F50624DD2F1A9FCLL;
  v4 = +[_UIEdgeFeedbackGeneratorConfiguration _zoomConfiguration];
  v5 = [v4 tweakedConfigurationForClass:objc_opt_class() usage:@"zoom"];

  LODWORD(v4) = dyld_program_sdk_at_least();
  v6 = [_UIZoomEdgeFeedbackGenerator alloc];
  if (v4)
  {
    v7 = [(_UIEdgeFeedbackGenerator *)v6 initWithConfiguration:v5 view:v1];
    v8 = *(v1 + 168);
    *(v1 + 168) = v7;
  }

  else
  {
    v9 = [(UIFeedbackGenerator *)v6 initWithConfiguration:v5];
    v10 = *(v1 + 168);
    *(v1 + 168) = v9;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___UIScrollViewSharedInit_block_invoke;
    block[3] = &unk_1E70F3590;
    v19 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ([UIApp _supportsIndirectInputEvents])
  {
    v11 = &unk_1EFE2DF18;
  }

  else
  {
    v11 = &unk_1EFE2DF00;
  }

  objc_storeStrong(v1 + 247, v11);
  *(v1 + 453) |= 0x18u;
  *(v1 + 453) |= 0x60u;
  v12 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(v1 + 2056) = v12;
  *(v1 + 2072) = v12;
  *(v1 + 2088) = v12;
  *(v1 + 2104) = v12;
  *(v1 + 34) = v12;
  *(v1 + 35) = v12;
  *(v1 + 36) = v12;
  *(v1 + 37) = v12;
  if (dyld_program_sdk_at_least())
  {
    v13 = 128;
  }

  else
  {
    v13 = 0;
  }

  *(v1 + 453) = *(v1 + 453) & 0xFFFFFE7F | v13;
  *(v1 + 76) = 15;
  *(v1 + 453) |= 0x400u;
  if (_UIVariableFrameDurationEnabled())
  {
    v14 = [[_UIScrollViewVFD alloc] initWithScrollView:v1];
    v15 = *(v1 + 215);
    *(v1 + 215) = v14;
  }

  v16 = objc_alloc_init(_UIScrollEdgeEffectViewInteraction);
  v17 = *(v1 + 218);
  *(v1 + 218) = v16;

  [v1 addInteraction:*(v1 + 218)];
}

uint64_t sub_188AFE79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  *(a2 + v4[5]) = 0;
  *(a2 + v4[6]) = 0;
  *(a2 + v4[7]) = 0;
  switch(a1)
  {
    case 1:
      if (qword_1ED48C6B8 != -1)
      {
        v18 = v4;
        swift_once();
        v4 = v18;
      }

      v5 = qword_1ED48C538;
      break;
    case 2:
      if (qword_1EA92E8F0 != -1)
      {
        v14 = v4;
        swift_once();
        v4 = v14;
      }

      v5 = qword_1EA92E900;
      break;
    case 3:
      if (qword_1EA92F098 != -1)
      {
        v16 = v4;
        swift_once();
        v4 = v16;
      }

      v5 = qword_1EA92F0A8;
      break;
    case 4:
      if (qword_1EA92E8C0 != -1)
      {
        v11 = v4;
        swift_once();
        v4 = v11;
      }

      v5 = qword_1EA92E8D0;
      break;
    case 5:
      if (qword_1EA931D28 != -1)
      {
        v19 = v4;
        swift_once();
        v4 = v19;
      }

      v5 = qword_1EA937D08;
      break;
    case 6:
      if (qword_1ED48C360 != -1)
      {
        v21 = v4;
        swift_once();
        v4 = v21;
      }

      v5 = qword_1ED48C370;
      break;
    case 7:
      if (qword_1EA931D38 != -1)
      {
        v17 = v4;
        swift_once();
        v4 = v17;
      }

      v5 = qword_1EA937D28;
      break;
    case 8:
      if (qword_1ED48C390 != -1)
      {
        v23 = v4;
        swift_once();
        v4 = v23;
      }

      v5 = qword_1ED48C3A0;
      break;
    case 9:
      if (qword_1EA930998 != -1)
      {
        v13 = v4;
        swift_once();
        v4 = v13;
      }

      v5 = qword_1EA9309A0;
      break;
    case 10:
      if (qword_1EA9309C0 != -1)
      {
        v22 = v4;
        swift_once();
        v4 = v22;
      }

      v5 = qword_1EA9309C8;
      break;
    case 11:
      if (qword_1EA931D68 != -1)
      {
        v10 = v4;
        swift_once();
        v4 = v10;
      }

      v5 = qword_1EA937D90;
      break;
    case 12:
      if (qword_1EA931D48 != -1)
      {
        v12 = v4;
        swift_once();
        v4 = v12;
      }

      v5 = qword_1EA937D48;
      break;
    case 13:
      if (qword_1EA92F0C8 != -1)
      {
        v20 = v4;
        swift_once();
        v4 = v20;
      }

      v5 = qword_1EA92F0D0;
      break;
    case 14:
      if (qword_1EA930C78 != -1)
      {
        v9 = v4;
        swift_once();
        v4 = v9;
      }

      v5 = qword_1EA930C80;
      break;
    case 15:
      if (qword_1EA9310C0 != -1)
      {
        v15 = v4;
        swift_once();
        v4 = v15;
      }

      v5 = qword_1EA9310C8;
      break;
    default:
      if (qword_1ED48E920 != -1)
      {
        v8 = v4;
        swift_once();
        v4 = v8;
      }

      v5 = qword_1ED48E930;
      break;
  }

  v6 = __swift_project_value_buffer(v4, v5);
  return sub_188AD8C44(v6, a2, type metadata accessor for _Glass._GlassVariant);
}

void *_UIUpdateSequenceInsertItem(uint64_t *a1, int a2, uint64_t a3, int a4, uint64_t a5, const void *a6)
{
  v12 = malloc_type_calloc(1uLL, 0x30uLL, 0x10F004096A70276uLL);
  v12[2] = a3;
  *(v12 + 6) = a4;
  v12[4] = a5;
  v13 = _Block_copy(a6);
  v14 = v12[5];
  v12[5] = v13;

  if (a2 == 1)
  {
    v16 = *a1;
    *v12 = *a1;
    if (v16)
    {
      *(v16 + 8) = v12;
    }

    *a1 = v12;
    v12[1] = a1;
  }

  else if (!a2)
  {
    v15 = a1[1];
    *v12 = a1;
    v12[1] = v15;
    *v15 = v12;
    a1[1] = v12;
  }

  return v12;
}

Swift::Void __swiftcall UIHostingViewBase.didMoveToWindow()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v30[2] = *(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph);
    if (!sub_18A4A46F8())
    {
      v14 = v9;
LABEL_33:

      return;
    }

    v11 = v10;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    sub_188AFF7D0(v12);

    v13 = [v9 window];
    v14 = v13;
    if (v13)
    {
      v30[0] = v13;
      v30[1] = v11;
      v15 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
      swift_beginAccess();
      v16 = *(v1 + v15);
      *(v1 + v15) = 0;
      if (v16)
      {
        if (sub_18A4A46F8())
        {
          swift_getObjectType();
          sub_18A4A5538();
          sub_18A4A58B8();
          swift_unknownObjectRelease();
        }
      }

      v17 = sub_18A4A5318();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      sub_188A3F29C(v7, v4, &qword_1EA936FE0);
      sub_18A4A4868();
      sub_188A3F5FC(v7, &qword_1EA936FE0);
      swift_getObjectType();
      sub_18A4A5588();
      sub_18A4A58B8();
      v14 = v30[0];
    }

    if (qword_1ED48F1B0 != -1)
    {
      swift_once();
    }

    if (byte_1EA930110)
    {
      if (v14)
      {
        goto LABEL_23;
      }

      v18 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate;
      if ((*(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate) & 1) == 0)
      {
        sub_18A4A6CC8();
        if (sub_18A4A53A8())
        {
          *(v1 + v18) = 1;
          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();

          _s5UIKit17UIHostingViewBaseC11UpdateCycleO20addPreCommitObserveryyyycFZ_0(sub_188CBC5CC, v19);
        }
      }
    }

    else
    {
      v20 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate;
      if ((*(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate) & 1) == 0)
      {
        sub_18A4A6CC8();
        if (sub_18A4A53A8())
        {
          *(v1 + v20) = 1;
          v21 = swift_allocObject();
          swift_unknownObjectWeakInit();

          _s5UIKit17UIHostingViewBaseC11UpdateCycleO20addPreCommitObserveryyyycFZ_0(sub_188C38364, v21);
        }
      }

      if (v14)
      {
        goto LABEL_23;
      }
    }

    v22 = UIApp;
    if (UIApp)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_188F27A18;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = &block_descriptor_29;
      v24 = _Block_copy(aBlock);
      v25 = v22;

      [v25 _performBlockAfterCATransactionCommits_];
      _Block_release(v24);
      goto LABEL_29;
    }

LABEL_23:
    v26 = swift_unknownObjectWeakLoadStrong();
    if (!v26)
    {
LABEL_30:
      sub_188AFFD0C();
      sub_188B0026C();
      UIHostingViewBase.requestUpdateForFidelity()();
      if (!v14)
      {
        v29 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow;
        swift_beginAccess();
        *(v1 + v29) = 0;
      }

      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();

      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v25 = v26;
    v27 = [v26 window];
    if (v27)
    {
    }

    v28 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
    swift_beginAccess();
    if (*(v1 + v28) == 1)
    {
      sub_18A4A4738();
    }

    sub_18A4A47E8();
LABEL_29:

    goto LABEL_30;
  }
}

uint64_t sub_188AFF798()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188AFF7D0(void *a1)
{
  sub_18A4A6CB8();
  if (sub_18A4A53A8())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_18A4A6CD8();
      if ((sub_18A4A53A8() & 1) == 0 || (v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions, swift_beginAccess(), v6 = *(v1 + v5), (sub_18A4A4D08() & ~v6) != 0))
      {
        if (!a1)
        {
LABEL_17:

          return;
        }

        v7 = 0;
      }

      else
      {
        if (!a1)
        {
          v16 = [v4 window];
          if (!v16)
          {
            goto LABEL_17;
          }

          v8 = v16;
          v17 = swift_unknownObjectWeakLoadStrong();
          if (!v17)
          {
            goto LABEL_16;
          }

          v11 = v17;
          v18 = [v17 keyboardSceneDelegate];
          if (!v18)
          {
            goto LABEL_15;
          }

          v13 = v18;
          v19 = objc_opt_self();
          v15 = sub_188AFF9A8();
          [v19 addTrackingElement:v15 window:v8 keyboardDelegate:v13];
          goto LABEL_14;
        }

        v7 = 1;
      }

      v8 = a1;
      v9 = [v4 window];
      if (v9)
      {

        if (v7)
        {
          goto LABEL_16;
        }
      }

      v10 = swift_unknownObjectWeakLoadStrong();
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = v10;
      v12 = [v10 keyboardSceneDelegate];
      if (!v12)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v13 = v12;
      v14 = objc_opt_self();
      v15 = sub_188AFF9A8();
      [v14 removeTrackingElement:v15 window:v8 keyboardDelegate:v13];
LABEL_14:

      v11 = v15;
      goto LABEL_15;
    }
  }
}

id sub_188AFF9A8()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase____lazy_storage___trackingElement;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase____lazy_storage___trackingElement);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase____lazy_storage___trackingElement);
  }

  else
  {
    v4 = type metadata accessor for UICoreHostingKeyboardTrackingElement();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t _s5UIKit17UIHostingViewBaseC11UpdateCycleO20addPreCommitObserveryyyycFZ_0(uint64_t a1, uint64_t a2)
{
  result = _UIUpdateCycleEnabled();
  if (result)
  {
    if (!qword_1ED48FC08)
    {
      v13[4] = sub_188A9892C;
      v13[5] = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_188A988BC;
      v13[3] = &block_descriptor_7_0;
      v5 = _Block_copy(v13);
      inserted = _UIUpdateSequenceInsertItem(&_UIUpdateSequenceCATransactionCommitItemInternal, 0, "UICoreHostingViewFlush", 0, 0, v5);
      _Block_release(v5);
      qword_1ED48FC08 = inserted;
    }

    if (qword_1ED48FC18 != -1)
    {
      swift_once();
    }

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    swift_beginAccess();
    v8 = off_1ED48FC58;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    off_1ED48FC58 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_188A32A24(0, v8[2] + 1, 1, v8);
      off_1ED48FC58 = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_188A32A24((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_188A4B574;
    v12[5] = v7;
    off_1ED48FC58 = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_188AFFCD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188AFFD0C()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong window];
    v5 = [v4 windowScene];

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      if (v6)
      {
        v7 = v6;

        if (v5 == v7)
        {
          v8 = v3;
LABEL_15:

LABEL_16:
          return;
        }
      }
    }

    else
    {
      if (!v6)
      {
        v5 = v3;
        goto LABEL_16;
      }
    }

    v8 = [objc_opt_self() defaultCenter];
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      [v8 removeObserver:v1 name:@"UISceneWillDeactivateNotification" object:v9];
      [v8 removeObserver:v1 name:@"UISceneDidActivateNotification" object:v10];
      [v8 removeObserver:v1 name:@"UISceneDidEnterBackgroundNotification" object:v10];
      [v8 removeObserver:v1 name:@"UISceneWillEnterForegroundNotification" object:v10];
      [v8 removeObserver:v1 name:@"UIWindowSceneDidUpdateSystemUserInterfaceStyle" object:v10];
      [v8 removeObserver:v1 name:@"UIWindowSceneDidBeginLiveResizeNotification" object:v10];
      [v8 removeObserver:v1 name:@"UIWindowSceneDidEndLiveResizeNotification" object:v10];
      [v8 removeObserver:v1 name:@"_UISceneDidBecomeKeyNotification" object:v10];
      [v8 removeObserver:v1 name:@"_UISceneDidResignKeyNotification" object:v10];
    }

    if (v5)
    {
      v11 = v5;
      [v8 addObserver:v1 selector:sel_sceneWillDeactivate name:@"UISceneWillDeactivateNotification" object:v11];
      [v8 addObserver:v1 selector:sel_sceneDidActivate name:@"UISceneDidActivateNotification" object:v11];
      [v8 addObserver:v1 selector:sel_sceneDidEnterBackground name:@"UISceneDidEnterBackgroundNotification" object:v11];
      [v8 addObserver:v1 selector:sel_sceneWillEnterForeground name:@"UISceneWillEnterForegroundNotification" object:v11];
      [v8 addObserver:v1 selector:sel_sceneDidUpdateSystemUserInterfaceStyle name:@"UIWindowSceneDidUpdateSystemUserInterfaceStyle" object:v11];
      [v8 addObserver:v1 selector:sel_sceneDidBeginResize name:@"UIWindowSceneDidBeginLiveResizeNotification" object:v11];
      [v8 addObserver:v1 selector:sel_sceneDidEndResize name:@"UIWindowSceneDidEndLiveResizeNotification" object:v11];
      [v8 addObserver:v1 selector:sel_sceneDidBecomeKey name:@"_UISceneDidBecomeKeyNotification" object:v11];
      [v8 addObserver:v1 selector:sel_sceneDidResignKey name:@"_UISceneDidResignKeyNotification" object:v11];
    }

    v12 = v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      v14 = swift_unknownObjectWeakLoadStrong();
      ObjectType = swift_getObjectType();
      v16 = v3;
      v17 = *(v13 + 16);
      v18 = v5;
      v17(v1, v14, v5, ObjectType, v13);
      v3 = v16;

      swift_unknownObjectRelease();
    }

    swift_unknownObjectWeakAssign();
    _s5UIKit17UIHostingViewBaseC26updateSceneActivationStateyyF_0();

    goto LABEL_15;
  }
}

void *UIHostingViewBase.sceneActivationState.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result window];

    v4 = [v3 _windowHostingScene];
    if (v4)
    {

      return *(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_188B0026C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong window];
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      if (v4)
      {
        v5 = v4;

        if (v3 == v5)
        {

LABEL_13:
          return;
        }
      }
    }

    else
    {
      if (!v4)
      {
        v3 = v2;
        goto LABEL_13;
      }
    }

    v6 = [objc_opt_self() defaultCenter];
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      [v6 removeObserver:v0 name:@"UIWindowWillRotateNotification" object:v7];
      [v6 removeObserver:v0 name:@"UIWindowDidRotateNotification" object:v8];
      [v6 removeObserver:v0 name:@"_UIWindowDidMoveToSceneNotification" object:v8];
    }

    if (v3)
    {
      v9 = v3;
      [v6 addObserver:v0 selector:sel_windowWillRotateWithNotification_ name:@"UIWindowWillRotateNotification" object:v9];
      [v6 addObserver:v0 selector:sel_windowDidRotateWithNotification_ name:@"UIWindowDidRotateNotification" object:v9];
      v10 = v9;
      [v6 addObserver:v0 selector:sel_windowDidMoveToSceneWithNotification_ name:@"_UIWindowDidMoveToSceneNotification" object:v10];
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_13;
  }
}

Swift::Void __swiftcall UIHostingViewBase.requestUpdateForFidelity()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (UIHostingViewBase.updatesWillBeVisible.getter())
    {
      [v1 setNeedsLayout];
      if (sub_18A4A46F8())
      {
        swift_getObjectType();
        sub_18A4A5388();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_18A4A4738();
      sub_18A4A4748();
      v2 = [v1 layer];
      v3 = [v2 needsLayout];

      if (v3)
      {
        UIHostingViewBase._setNeedsUpdate()();
      }
    }
  }
}

uint64_t UIHostingViewBase.updatesWillBeVisible.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result window];

    v4 = [v3 _windowHostingScene];
    if (!v4)
    {
      return 0;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState + 8))
    {
      return 0;
    }

    v5 = *(v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState);
    v6 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
    swift_beginAccess();
    if (*(v0 + v6))
    {
      return 0;
    }

    else
    {
      if (v5 < 2)
      {
        return 1;
      }

      v7 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
      swift_beginAccess();
      if (*(v0 + v7))
      {
        return 1;
      }

      else
      {
        v8 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots;
        swift_beginAccess();
        return *(v0 + v8);
      }
    }
  }

  return result;
}

uint64_t _s5UIKit17UIHostingViewBaseC26updateSceneActivationStateyyF_0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = [Strong activationState];
  }

  else
  {
    v4 = 0;
  }

  v5 = v0 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = UIHostingViewBase.sceneActivationState.getter();
    (*(v7 + 24))(v1, v9, v10 & 1, v4, v3 == 0, ObjectType, v7);
    result = swift_unknownObjectRelease();
  }

  v11 = v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState;
  *v11 = v4;
  *(v11 + 8) = v3 == 0;
  return result;
}

unint64_t sub_188B00944(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_18A4A8488();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _holdSceneEventResponsesQueue()
{
  if (qword_1ED49C398 != -1)
  {
    dispatch_once(&qword_1ED49C398, &__block_literal_global_707);
  }

  v1 = qword_1ED49C3A0;

  return v1;
}

uint64_t sub_188B00CD0()
{
  if ((![v0 applicationState] || objc_msgSend(v0, sel_applicationState) == 1) && (objc_msgSend(v0, sel_isExcludedApplication) & 1) == 0 && (_UIApplicationIsExtension() & 1) == 0)
  {
    v1 = [objc_opt_self() sharedTracker];
    v2 = [(_UIActiveViewServiceSessionTracker *)v1 hasTrackedSessions];

    if ((v2 & 1) == 0)
    {
      v3 = [objc_opt_self() _scenesIncludingInternal_];
      sub_188A34624(0, qword_1ED490250);
      v4 = sub_18A4A7548();

      if (v4 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
      {
        v6 = 0;
        v7 = v4 & 0xC000000000000001;
        v8 = v4 & 0xFFFFFFFFFFFFFF8;
        v9 = &selRef__windowServerHitTestWindow;
        v25 = v4;
        while (1)
        {
          if (v7)
          {
            v11 = sub_188E4B2B0(v6, v4);
          }

          else
          {
            if (v6 >= *(v8 + 16))
            {
              goto LABEL_25;
            }

            v11 = *(v4 + 8 * v6 + 32);
          }

          v12 = v11;
          v13 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ([v11 v9[426]] <= 1 && (v14 = objc_msgSend(v12, sel__windowHostingScene)) != 0)
          {
            v10 = v14;
            v15 = i;
            v16 = v8;
            v17 = v9;
            v18 = [v12 _intelligenceComponent];
            if (!v18 || (v19 = v18, v20 = [(_UISceneIntelligenceSupportClientComponent *)v18 collectAsRemoteElement], v19, (v20 & 1) == 0))
            {
              v21 = [v12 systemProtectionManager];
              if (!v21 || (v22 = v21, v23 = [v21 isUserAuthenticationEnabled], v22, (v23 & 1) == 0))
              {

                return 1;
              }
            }

            v9 = v17;
            v8 = v16;
            i = v15;
            v4 = v25;
          }

          else
          {
            v10 = v12;
          }

          ++v6;
          if (v13 == i)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:
    }
  }

  return 0;
}

id _pptLogHandle()
{
  if (qword_1ED4A2130 != -1)
  {
    dispatch_once(&qword_1ED4A2130, &__block_literal_global_623_0);
  }

  v1 = qword_1ED4A2128;

  return v1;
}

void _UIScenePerformActionsWithLifecycleActionMask(int a1, void *a2)
{
  v5 = a2;
  if (a1 && v5)
  {
    for (i = 0; i != 7; ++i)
    {
      v4 = 1 << _UISceneLifecycleActionPrecidenceArray[i];
      if ((v4 & a1) != 0)
      {
        a1 &= ~v4;
        v5[2]();
        if (!a1)
        {
          break;
        }
      }
    }
  }
}

uint64_t _UISceneLifecycleStateIsEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ((v3 != 0) != (v4 == 0) && (v5 = [v3 deactivationReasons], v5 == objc_msgSend(v4, "deactivationReasons")) && (v6 = objc_msgSend(v3, "isForeground"), v6 == objc_msgSend(v4, "isForeground")))
  {
    v9 = [v3 underLock];
    v7 = v9 ^ [v4 underLock] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_188B01C08()
{
  v1 = v0;
  result = _UIScrollPocketEnabled();
  if (!result)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (![(UIView *)Strong _isHiddenOrAncestorHidden])
    {
      goto LABEL_9;
    }

    v5 = [v4 traitCollection];
    if (qword_1ED491B40 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    sub_18901CDE4(&type metadata for _UITraitHiddenViewsContributeToPocket, sub_1890B2DF4);
    os_unfair_lock_unlock(v6[2]);
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
    v7 = sub_188A74A44();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v8 = [v5 _valueForNSIntegerTraitToken_];

    swift_unknownObjectRelease();
    if (v8)
    {
LABEL_9:
      if (*(v1 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style) != -1)
      {
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9 && (v10 = v9, v11 = [v9 _edgeEffectViewInteraction], v10, v11))
        {

          swift_unknownObjectWeakInit();
          v25 = &off_1EFADD208;
          swift_unknownObjectWeakAssign();

          v26 = 0;
        }

        else
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (!v12)
          {
            v15 = [v4 traitCollection];
            v16 = sub_188A84438();

            if (v16)
            {
              swift_getKeyPath();
              v30[0] = v16;
              sub_188AFA784();
              sub_18A4A2C08();

              swift_beginAccess();
              sub_188AFA5B0(v16 + 16, v30);

              goto LABEL_24;
            }

LABEL_23:
            v30[0] = 0;
            v30[1] = 0;
            v31 = xmmword_18A666380;
            goto LABEL_24;
          }

          v13 = v12;

          swift_weakInit();
          swift_weakAssign();

          v26 = 1;
        }

        v14 = *(v1 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_edge);
        if (v14)
        {
          sub_1890EA074(v24, v28);
          *(&v29 + 1) = v14;
          sub_188B02584(v28, v30);
LABEL_24:
          sub_188A3F704(v30, v28, &qword_1EA93CB20);
          goto LABEL_25;
        }

        sub_1890EA0D0(v24);
        goto LABEL_23;
      }
    }
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = xmmword_18A666380;
LABEL_25:
  sub_188A3F704(v28, v30, &qword_1EA93CB20);
  if (v31 == 0xFF)
  {
    v17 = 0;
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_188B024D8(v18);

  sub_188AFA5B0(v30, v28);
  if (v29 == 0xFF)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_188B02584(v28, v24);
    v19 = v27;
    v20 = sub_18914BDC0();
    sub_188B04290(v24);
  }

  v21 = (v1 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
  v22 = *(v1 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
  v23 = *(v1 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8);
  *v21 = v19;
  v21[1] = v20;
  sub_188B025E0(v22, v23);

  return sub_188A3F5FC(v30, &qword_1EA93CB20);
}

id sub_188B02104()
{
  result = [objc_allocWithZone(_UIApplicationIntelligenceSupport) init];
  qword_1ED4914F0 = result;
  return result;
}

id sub_188B02138()
{
  *&v0[OBJC_IVAR____UIApplicationIntelligenceSupport_applicationState] = 2;
  type metadata accessor for _UIApplicationIntelligenceCollector();
  *&v0[OBJC_IVAR____UIApplicationIntelligenceSupport_collector] = swift_allocObject();
  v5.receiver = v0;
  v5.super_class = _UIApplicationIntelligenceSupport;
  v1 = objc_msgSendSuper2(&v5, sel_init);
  sub_18A4A40F8();
  v2 = v1;
  sub_18A4A40D8();
  sub_188B022DC(&unk_1ED4914F8, type metadata accessor for _UIApplicationIntelligenceCollector);

  sub_18A4A40E8();

  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v2 selector:sel_sceneProtectionStateChanged name:@"UISceneSystemProtectionDidChangeNotification" object:0];

  return v2;
}

uint64_t sub_188B02294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188B022DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_188B023E4(void *a1)
{
  sub_18A4A40F8();
  v2 = a1;
  sub_18A4A40D8();
  sub_188B00CD0();
  sub_18A4A40C8();
}

void ___pptLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "PPT");
  v1 = qword_1ED4A2128;
  qword_1ED4A2128 = v0;
}

void sub_188B024D8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (!a1)
    {
      goto LABEL_7;
    }

    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [(UIView *)a1 _removeGeometryChangeObserver:v1];
LABEL_7:
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [(UIView *)v5 _addGeometryChangeObserver:v1];
  }
}

uint64_t sub_188B025E0(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = (v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
  v6 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8);
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = *v5;
  if (!a2)
  {
LABEL_15:

    sub_1890E9F78(v2, v7);
    goto LABEL_16;
  }

  if (v7 == result)
  {

    v9 = sub_188F8E240(v8, a2);

    if (v9)
    {
      return result;
    }

    v7 = *v5;
    v6 = v5[1];
  }

  if (v6)
  {
    v10 = v7 == v4;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
LABEL_13:
    result = sub_1890E9E8C(v2, v4);
    if (!v5[1])
    {
      return result;
    }

    v7 = *v5;
    goto LABEL_15;
  }

  sub_1890E8E3C(v11, a2);
  sub_1890E9E8C(v2, v4);

  sub_1890E8E3C(a2, v6);

  sub_1890E9F78(v2, v4);
LABEL_16:
}

void _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = [v7 animationFence];
  [UIScene _synchronizeDrawingWithFence:v8];

  v9 = MEMORY[0x1E698E608];
  v10 = [v7 animationSettings];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion_block_invoke;
  v12[3] = &unk_1E70F3608;
  v13 = v5;
  v11 = v5;
  [v9 tryAnimatingWithSettings:v10 actions:v12 completion:v6];
}

id _UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 _hasLifecycle])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext_block_invoke;
    v13[3] = &unk_1E70F6B40;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v11 = _Block_copy(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t _UISceneLifecycleCompositeActionMaskHighestLifecycleActionType(int a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___UISceneLifecycleCompositeActionMaskHighestLifecycleActionType_block_invoke;
  v3[3] = &unk_1E710C1B8;
  v3[4] = &v4;
  _UIScenePerformActionsWithLifecycleActionMask(a1, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_188B02D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UIApplicationLogRuntimeIssueIfNeededForNoSceneLifecycleAdoption()
{
  if ((_MergedGlobals_1251 & 1) == 0 && ([UIApp _appAdoptsUISceneLifecycle] & 1) == 0 && (_UIApplicationIsExtension() & 1) == 0 && (_UIApplicationStartsAppViewServiceListener() & 1) == 0 && qword_1ED49FFB0 != -1)
  {

    dispatch_once(&qword_1ED49FFB0, &__block_literal_global_481);
  }
}

void _UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo(void *a1)
{
  if ((byte_1ED49FFA9 & 1) != 0 || ![a1 requiresFullScreen])
  {
    return;
  }

  v4 = [a1 deviceFamilies];
  if (([v4 containsObject:&unk_1EFE32638] & 1) == 0)
  {
    goto LABEL_8;
  }

  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] != 1 || !dyld_program_sdk_at_least() || _UIApplicationIsExtension())
  {

LABEL_8:

    return;
  }

  v3 = _UIApplicationStartsAppViewServiceListener();

  if ((v3 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___UIApplicationLogRuntimeIssueIfNeededForPadSpecificIssuesGivenInfo_block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = a1;
    if (qword_1ED49FFC0 != -1)
    {
      dispatch_once(&qword_1ED49FFC0, block);
    }
  }
}

id _decodeSceneSession(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v10];
  v6 = v10;
  if (!v6)
  {
    [v5 setRequiresSecureCoding:1];
    [v5 setDecodingFailurePolicy:0];
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"CanvasRestorationCanvasDefinitionKey"];
    [v5 finishDecoding];
    if (v7)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SDecodedSceneS.isa, "UISceneSession *_decodeSceneSession(NSData *__strong, NSString *__strong)", v7);
      }

      goto LABEL_12;
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCouldnTDecode_0.isa, "UISceneSession *_decodeSceneSession(NSData *__strong, NSString *__strong)", v4);
      v7 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (!_UIStateRestorationDebugLogEnabled())
  {
    goto LABEL_11;
  }

  NSLog(&cfstr_SCouldnTCreate_0.isa, "UISceneSession *_decodeSceneSession(NSData *__strong, NSString *__strong)", v4);
  v7 = 0;
LABEL_12:

  v8 = v7;
LABEL_13:

  return v8;
}

unint64_t sub_188B042E4()
{
  result = qword_1ED490BC0;
  if (!qword_1ED490BC0)
  {
    type metadata accessor for ScrollPocketCollectorModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED490BC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpringBehavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188B043C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_188B0440C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_188B04478()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_188B044CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void ___viewControllerIfStatusBarPartStyleProviding_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1ED498595 = [&unk_1EFE2BC68 containsObject:v0];
}

uint64_t _resolvePreferredInternalStatusBarStyleFromClientWithTraitEnvironment(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 != 4)
  {
    if (dyld_program_sdk_at_least())
    {
      v4 = [v3 traitCollection];
      v5 = [v4 userInterfaceStyle];

      if (!a1 && v5)
      {
        if (v5 == 2)
        {
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }

        v7 = [v3 traitCollection];
        v8 = [v7 userInterfaceIdiom];

        if (v8 == 3)
        {
          a1 = v6;
        }

        else
        {
          a1 = v6 << 6;
        }
      }
    }

    else if (!a1)
    {
      v9 = [v3 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      if (v10 == 3)
      {
        a1 = 2;
      }

      else
      {
        a1 = 128;
      }
    }
  }

  return a1;
}

id _nextWindowSizedViewController(void *a1)
{
  v1 = [a1 presentedViewController];
  v2 = v1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ([v1 modalPresentationStyle] && objc_msgSend(v2, "modalPresentationStyle") != 5 && objc_msgSend(v2, "modalPresentationStyle") != 17 && objc_msgSend(v2, "modalPresentationStyle") != 4 || (objc_msgSend(v2, "_existingView"), v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v10 = _nextWindowSizedViewController(v2);
LABEL_14:
    v9 = v10;
    goto LABEL_17;
  }

  if ([v2 modalPresentationStyle] != 4)
  {
    v10 = v2;
    goto LABEL_14;
  }

  v4 = [v2 _existingView];
  v5 = [v4 window];

  if (v5 && ([v2 _existingView], v6 = objc_claimAutoreleasedReturnValue(), v7 = +[UIViewController _isViewSizeFullScreen:inWindow:ignoreInWindowCheck:](UIViewController, "_isViewSizeFullScreen:inWindow:ignoreInWindowCheck:", v6, v5, 0), v6, v7))
  {
    v8 = v2;
  }

  else
  {
    v8 = _nextWindowSizedViewController(v2);
  }

  v9 = v8;

LABEL_17:

  return v9;
}

void *_viewControllerIfStatusBarPartStyleProviding(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (qword_1ED4985B8 != -1)
  {
    dispatch_once(&qword_1ED4985B8, &__block_literal_global_173);
  }

  if (byte_1ED498595 == 1)
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  if ((isKindOfClass | v3))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void ___eventDeferringCompatibilityQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.UIKit.eventDeferring.compatibilityQueue", 0);
  v1 = _MergedGlobals_1035;
  _MergedGlobals_1035 = v0;
}

double _UIPresentationControllerBaseContentInsetsForControllersAndViewInWindow(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  [objc_opt_class() _statusBarOverlapAndMarginInfoForView:v13 inWindow:v14];
  v18 = v17;
  if (a5)
  {
    *a5 = v15;
  }

  if (a6)
  {
    *a6 = v16;
  }

  if ([v12 _providesCustomBasePresentationInsets])
  {
    [v12 _customBasePresentationInsetsForView:v13];
    v20 = v19;
  }

  else
  {
    [v12 _viewSafeAreaInsetsFromScene];
    v20 = fmax(v18, v21);
  }

  return v20;
}

uint64_t _UIViewControllerModernContentOverlayInsetsPropagation()
{
  if (qword_1ED4985B0 != -1)
  {
    dispatch_once(&qword_1ED4985B0, &__block_literal_global_166);
  }

  return byte_1ED498594;
}

uint64_t sub_188B061AC()
{
  v0 = _UIMainBundleIdentifier();
  if (v0)
  {
    v1 = v0;
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD00000000000001FLL && 0x800000018A698B50 == v4 || (sub_18A4A86C8() & 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_18A4A73E8();
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

void ___orientationLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "UIDevice.orientation");
  v1 = qword_1ED49E870;
  qword_1ED49E870 = v0;
}

uint64_t __recursePreOrderDepthFirstTraversal(void *a1, const char *a2, uint64_t a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    Traversal = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = v8;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        if (v9 && !v9[2](v9, *(*(&v24 + 1) + 8 * v14), a3, &Traversal))
        {
          v17 = 0;
        }

        else
        {
          if ((Traversal & 1) == 0)
          {
            v16 = [v15 a2];
            Traversal = __recursePreOrderDepthFirstTraversal(v16, a2, a3 + 1, v9, v10);
          }

          v17 = 1;
        }

        v18 = Traversal;
        if (v10 && (Traversal & 1) == 0)
        {
          v10[2](v10, v15, a3, v17, &Traversal);
          v18 = Traversal;
        }

        if (v18)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v19 = Traversal;
    v8 = v21;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void ___holdSceneEventResponsesQueue_block_invoke()
{
  v0 = dispatch_queue_create("_holdSceneEventResponsesQueue", 0);
  v1 = qword_1ED49C3A0;
  qword_1ED49C3A0 = v0;
}

uint64_t sub_188B07100(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v6 = (v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
  v10 = *(v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  result = CGRectEqualToRect(*&a1, v10);
  if ((result & 1) == 0 && *(v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8))
  {
    v8 = *(v5 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);

    sub_1890A4410(v5, v8);
  }

  return result;
}

void _queue_scheduleUpdateAndSaveForPersistedSceneSessions()
{
  if ((byte_1ED49FA02 & 1) == 0)
  {
    qword_1ED49FA78 = [UIApp _beginBackgroundTaskWithName:@"Persistent SceneSession Map Update" expirationHandler:&__block_literal_global_517_0];
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SScheduledBack.isa, "void _queue_scheduleUpdateAndSaveForPersistedSceneSessions(void)", qword_1ED49FA78);
    }

    v0 = dispatch_time(0, 500000000);
    v1 = _persistenceQueue();
    dispatch_after(v0, v1, &__block_literal_global_527);

    byte_1ED49FA02 = 1;
  }
}

uint64_t _UIVisualEffectAssertEffectConstraints(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v1);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v4)
          {
            goto LABEL_14;
          }

          v4 = 1;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass & v5)
          {
LABEL_14:
            v9 = 0;
            goto LABEL_15;
          }

          v5 |= isKindOfClass;
        }

        ++v7;
      }

      while (v3 != v7);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_15:

  return v9;
}

uint64_t _UIVisualEffectSubviewShouldAnimateKeyInternal(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 hasPrefix:@"filters."])
  {
    v5 = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = v3;
    v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) shouldAnimateProperty:{v4, v10}])
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v5 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

void updateBackdropView(void *a1, void *a2)
{
  v5 = a2;
  v3 = [a1 backdropLayer];
  if (v5)
  {
    [v3 setGroupName:*(v5 + 3)];
    [v3 setGroupNamespace:*(v5 + 4)];
    v4 = *(v5 + 6);
    if (v4 < *(v5 + 5))
    {
      v4 = *(v5 + 5);
    }
  }

  else
  {
    [v3 setGroupName:0];
    [v3 setGroupNamespace:*MEMORY[0x1E69795D0]];
    v4 = 1.0;
  }

  [v3 setScale:v4];
}

id _UIVisualEffectSubviewSetFilters(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x1E695E0F0];
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;
  v9 = a3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;

  if ([v8 isEqualToArray:v12])
  {
    v13 = v8;
  }

  else
  {
    v14 = _UIVisualEffectSubviewConvertToCAFilterArray(v12);
    v15 = [v5 layer];
    [v15 setFilters:v14];

    v13 = [v12 copy];
  }

  v16 = v13;

  return v16;
}

id _UIVisualEffectSubviewSetViewEffects(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = MEMORY[0x1E695E0F0];
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;
  v9 = a3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;

  if ([v8 isEqualToArray:v12])
  {
    v13 = v8;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v30 + 1) + 8 * i) removeEffectFromView:v5];
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v12;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v26 + 1) + 8 * j) addEffectToView:{v5, v26}];
        }

        v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v21);
    }

    v13 = [v19 copy];
  }

  v24 = v13;

  return v24;
}

void _UIVisualEffectSubviewApplyFilters(void *a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a1 layer];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 valueAsRequested:{a3, v15}];
        v14 = [v12 filterName];
        _UIVisualEffectSubviewApplyFilterValues(v6, v13, v14);
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

id _UIVisualEffectSubviewConvertToCAFilterArray(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) filter];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

void _UIVisualEffectSubviewApplyFilterValues(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___UIVisualEffectSubviewApplyFilterValues_block_invoke;
  v9[3] = &unk_1E70F3898;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  [a2 enumerateKeysAndObjectsUsingBlock:v9];
}

void _UIVisualEffectSubviewApplyViewEffects(void *a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) applyEffectAsRequested:a3 toView:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

unint64_t sub_188B09300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_18A4A86C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_188B0944C(uint64_t a1, uint64_t a2)
{
  sub_18A4A8888();
  sub_18A4A7348();
  v4 = sub_18A4A88E8();

  return sub_188B09300(a1, a2, v4);
}

uint64_t sub_188B09614()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188B09650(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1ED491B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED491B18;
  if (*(off_1ED491B18 + 2) && (v5 = sub_188A78D9C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();
    if (a2)
    {
      v8 = objc_opt_self();
      sub_188A52E38(a2);
      swift_unknownObjectRetain();
      if ([v8 _isPlaceholderTraitToken_])
      {
        v9 = swift_unknownObjectRetain();
        v10 = a2(v9);
        sub_188A55B8C(a2);
        swift_unknownObjectRelease_n();
        return v10;
      }

      else
      {
        sub_188A55B8C(a2);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_endAccess();
    if (a2)
    {

      v7 = a2(0);
      sub_188A55B8C(a2);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = sub_18A4A7258();
      v13 = sub_18A4A7258();
      v7 = [v11 _existingTraitTokenReservingPlaceholderIfNecessaryWithName_identifier_];
    }

    swift_beginAccess();
    swift_unknownObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B18;
    off_1ED491B18 = 0x8000000000000000;
    swift_getObjectType();
    sub_188AC48E8(v7, a1, isUniquelyReferenced_nonNull_native, &v17);
    off_1ED491B18 = v17;
    swift_endAccess();
    if (qword_1ED491B00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ED491B08;
    off_1ED491B08 = 0x8000000000000000;
    sub_188AC4FC4(&type metadata for _ResolvedProviderTraitDefinition, &off_1EE439550, v7, v15);
    swift_unknownObjectRelease();
    off_1ED491B08 = v17;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v7;
}

id sub_188B09978(uint64_t a1)
{
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933360);
  v12[0] = 0;
  sub_188A55598(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v9[0] = v10;
  v9[1] = v11;
  v4 = *(&v11 + 1);
  sub_188A3F5FC(v9, &qword_1EA934050);
  if (v4)
  {
    *&v10 = 0;
    v5 = sub_18A4A8778();
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  v7 = [v6 _defineObjectTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  swift_unknownObjectRelease();
  return v7;
}

double UIRectIntegralWithScale(double a1, double a2, double a3, double a4, double a5)
{
  if (CGRectIsNull(*&a1))
  {
    return a1;
  }

  v8 = a5;
  if (a5 == 0.0)
  {
    if (AdjustToScale_onceToken_0 != -1)
    {
      dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
    }

    v8 = *&AdjustToScale___s_0;
  }

  if (v8 == 1.0)
  {
    v9 = ceil(a1);
    v10 = floor(a1);
    if (v9 - a1 >= 0.0001)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v11 = ceil(a1 * v8);
    v12 = floor(a1 * v8);
    if (v11 - a1 * v8 < 0.0001)
    {
      v12 = v11;
    }

    v7 = v12 / v8;
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  if (a5 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }

  return v7;
}

uint64_t sub_188B09EF4(uint64_t a1)
{
  v2 = v1;
  v4 = [(UIView *)v1 _typedStorage];
  v5 = sub_188A39C88(&_s16MonochromaticKeyVN);

  if ([v2 tintAdjustmentMode] == 2)
  {
    if (!v5)
    {
LABEL_9:
    }

    v6 = 0;
  }

  else
  {
    v7 = [objc_opt_self() _useTintColorImpl];
    v8 = [v2 _supportedTreatmentForTreatment_];
    if (v7)
    {
      v6 = v8 != 0;
    }

    else
    {
      v6 = v8;
    }

    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_9;
      }

      v12 = 0;
      goto LABEL_15;
    }
  }

  if (v6 == (*(*v5 + 104))())
  {
    goto LABEL_9;
  }

  v10 = *(*v5 + 144);

  v10(v11);

  v12 = v5[24];
LABEL_15:
  v13 = [(UIView *)v2 _typedStorage];
  if (v6 == 2)
  {
    if (qword_1EA931DE0 != -1)
    {
      swift_once();
    }

    if (byte_1EA93A380 == 1)
    {
      _s20MonochromaticDataVCMCMa();
      swift_allocObject();
      v15 = sub_188B230E8(v2, v12);
    }

    else
    {
      _s28MonochromaticDataColorMatrixCMa();
      swift_allocObject();
      v15 = sub_18902643C(v2, v12);
    }

    v14 = v15;
  }

  else if (v6 == 1)
  {
    _s26MonochromaticDataTintColorCMa();
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    swift_unknownObjectUnownedInit();
    *(v14 + 24) = v12;
  }

  else
  {
    v14 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A4A8);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(&v13->super.isa + v17);
  *(&v13->super.isa + v17) = 0x8000000000000000;
  sub_188A40430(v16, &_s16MonochromaticKeyVN, isUniquelyReferenced_nonNull_native);
  *(&v13->super.isa + v17) = v19;
  swift_endAccess();

  [v2 _monochromaticTreatmentStateDidChange];
}

void sub_188B0A290(char a1)
{
  v2 = v1;
  v4 = [(UIView *)v1 _typedStorage];
  v5 = sub_188A39C88(&_s16MonochromaticKeyVN);

  if (v5)
  {
    if (v5[24] != (a1 & 1))
    {
      v5[24] = a1 & 1;
      (*(*v5 + 136))();
      [v2 _monochromaticTreatmentStateDidChange];
    }
  }
}

void UIFloorToViewScale(void *a1)
{
  [a1 _currentScreenScale];
  if (v1 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

uint64_t _tagForView(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v1[108] & 0x40) != 0)
  {
    v4 = objc_getAssociatedObject(v1, &_UIViewTagAssocObjectKey);
    v3 = [v4 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _UIButtonCommonInit(void *a1)
{
  v15 = a1;
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v1, sel_imageRectForContentRect_);
  v4 = class_getMethodImplementation(v2, sel_imageRectForContentRect_);
  v5 = 0x400000000;
  if (MethodImplementation)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || MethodImplementation == v4)
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = class_getMethodImplementation(v8, sel_titleRectForContentRect_);
    v11 = class_getMethodImplementation(v9, sel_titleRectForContentRect_);
    v12 = v10 == v11 || v11 == 0;
    if (v12 || v10 == 0)
    {
      v5 = 0;
    }
  }

  v15[77] = v15[77] & 0xFFFFFFFBFFFFFFFFLL | v5;
  v15[14] |= 1uLL;
  v15[77] |= 0x1000000000uLL;
  v14 = objc_opt_new();
  [v14 setDelegate:v15];
  [v15 addInteraction:v14];
  [v15 setSelectionInteraction:v14];
  [v15 setShowsMenuFromSource:1];
}

void sub_188B0B538(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    signpost_c2_entryLock_start(v4, v5);
    v7 = [v6 _outermostLayer];
    if (v7)
    {
      v8 = v7;
      v11 = [v6 layer];
      [v11 removePresentationModifier_];
      sub_188A34624(0, &qword_1ED48E970);
      if ((sub_18A4A7C88() & 1) == 0)
      {
        [v8 removePresentationModifier_];
      }

      signpost_c2_entryLock_start(v9, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t _UIApplicationEndBackgroundTask(const void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E278) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Ending background task with UIBackgroundTaskIdentifier: %lu", buf, 0xCu);
  }

  if (a1)
  {
    os_unfair_lock_lock(&stru_1ED49E204);
    v3 = NSMapGet(qword_1ED49E250, a1);
    if (v3)
    {
      v4 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E288) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        v6 = [v3 description];
        v7 = _Block_copy(*(v3 + 16));
        *buf = 134218499;
        *&buf[4] = a1;
        *&buf[12] = 2113;
        *&buf[14] = v6;
        *&buf[22] = 2112;
        v19 = v7;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Ending task with identifier %lu and description: %{private}@, _expireHandler: %@", buf, 0x20u);
      }

      v8 = *(v3 + 24);
      [v3 invalidate];
      NSMapRemove(qword_1ED49E250, *(v3 + 8));
      if (![qword_1ED49E250 count])
      {
        _fireBackgroundTaskCountReachedZeroHandlers_Locked();
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E280) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a1;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Failed to fetch background task with identifier: %lu", buf, 0xCu);
      }

      UIApplicationEndBackgroundTaskError(a1);
      v8 = 0;
    }

    os_unfair_lock_unlock(&stru_1ED49E204);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v9 = 1;
    LOBYTE(v19) = 1;
    if (v8)
    {
      v11 = +[_UIBackgroundTaskInfo backgroundTaskAssertionQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___UIApplicationEndBackgroundTask_block_invoke;
      v13[3] = &unk_1E710ADC8;
      v14 = v8;
      v17 = a1;
      v15 = v3;
      v16 = buf;
      dispatch_sync(v11, v13);

      v9 = *(*&buf[8] + 24);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

void sub_188B0BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_188B0BBC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for _Glass._GlassVariant(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_188B0BC88()
{
  result = qword_1ED48FC78;
  if (!qword_1ED48FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48FC78);
  }

  return result;
}

id _sSo13UIWindowSceneC5UIKitE23registerForTraitChanges_6target6actionSo25UITraitChangeRegistration_pSayAC0J10Definition_pXpG_yp10ObjectiveC8SelectorVtF_0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_18A4A8208();
    v8 = (a1 + 40);
    do
    {
      sub_188A85BF0(*(v8 - 1), 0, 0, *(v8 - 1), *v8);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932200);
  v9 = sub_18A4A7518();

  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v10 = [v3 _registerForTraitTokenChanges_withTarget_action_];

  swift_unknownObjectRelease();
  return v10;
}

double _Glass.resolved(using:size:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled())
  {
    v8 = [objc_opt_self() systemBackgroundColor];
    v9 = sub_188A34624(0, qword_1ED4913C0);
    v11 = &protocol witness table for UIColor;
    goto LABEL_5;
  }

  if (_UISolariumUseFallbackMaterial())
  {
    v8 = [objc_opt_self() effectWithStyle_];
    v9 = sub_188A34624(0, &qword_1ED48E048);
    v11 = &protocol witness table for UIVisualEffect;
LABEL_5:
    *(a2 + 24) = v9;
    *(a2 + 32) = v11;
    *a2 = v8;
    return result;
  }

  sub_188B0C0A4(a1);
  (*(v5 + 8))(v7, v4);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_188B0C0A4(void *a1)
{
  v2 = type metadata accessor for _GlassBackgroundStyle();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A6148();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A5418();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18A4A4428();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  sub_18A4A5308();
  v19 = [a1 userInterfaceStyle];
  if (v19 == 1)
  {
    v20 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_6;
    }

    v20 = MEMORY[0x1E697DBA8];
  }

  (*(v10 + 104))(v15, *v20, v9);
  (*(v10 + 32))(v18, v15, v9);
  (*(v10 + 16))(v12, v18, v9);
  sub_18A4A4EC8();
  (*(v10 + 8))(v18, v9);
LABEL_6:
  v21 = sub_18A4A2D48();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = [a1 userInterfaceIdiom];
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  if (v25 > 6)
  {
    v27 = MEMORY[0x1E6999C30];
  }

  else
  {
    v27 = qword_1E70F18D0[v25];
  }

  (*(v22 + 104))(&v38 - v23, *v27, v21, v26);
  (*(v22 + 32))(&v38 - v23, &v38 - v23, v21);
  sub_18A4A4F48();
  [a1 activeAppearance];
  sub_18A4A50D8();
  [a1 displayScale];
  sub_18A4A4F28();
  v28 = [a1 accessibilityContrast];
  if (v28)
  {
    v29 = v41;
    if (v28 != 1)
    {
      goto LABEL_14;
    }

    v30 = MEMORY[0x1E697F608];
  }

  else
  {
    v30 = MEMORY[0x1E697F600];
    v29 = v41;
  }

  (*(v38 + 104))(v8, *v30, v39);
  sub_18A4A50F8();
LABEL_14:
  if (qword_1ED48FD18 != -1)
  {
    swift_once();
  }

  sub_188F3BB54();
  sub_18A4A5118();
  sub_188B0C7B8();
  sub_18A4A5128();
  sub_188B0CAA4();
  sub_18A4A5108();
  sub_188B0D76C();
  sub_18A4A5238();
  [a1 _glassElevationLevel];
  sub_18A4A4F68();
  if (sub_188F3BFC8() == 1)
  {
    sub_18A4A6138();
  }

  else
  {
    sub_18A4A6128();
  }

  sub_18A4A51A8();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E70);
  v32 = *(v31 - 8);
  v33 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  sub_188E1B6FC(v29);
  if ((*(v32 + 48))(v29, 2, v31))
  {
    sub_188B0CD70(v29, type metadata accessor for _GlassBackgroundStyle);
  }

  else
  {
    v34 = sub_188A3F704(v29, &v38 - v33, &qword_1EA937E70);
    MEMORY[0x1EEE9AC00](v34);
    sub_188A3F29C(&v38 - v33, &v38 - v33, &qword_1EA937E70);
    sub_18A4A4FA8();
    sub_188A3F5FC(&v38 - v33, &qword_1EA937E70);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9334A0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  sub_188E1B948(&v38 - v36);
  return sub_18A4A4FC8();
}

uint64_t sub_188B0C7B8()
{
  swift_getKeyPath();
  v6[0] = v0;
  sub_188B0D714();
  sub_18A4A2C08();

  LODWORD(v1) = *(v0 + 17);
  if (v1 == 2)
  {
    v1 = [objc_opt_self() defaultCenter];
    v6[4] = sub_188F3C99C;
    v6[5] = v0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188F3B4A4;
    v6[3] = &block_descriptor_66_0;
    v2 = _Block_copy(v6);

    v3 = [v1 addObserverForName:@"UIAccessibilityReduceTransparencyStatusDidChangeNotification" object:0 queue:0 usingBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();

    IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    LOBYTE(v1) = IsReduceTransparencyEnabled;
    sub_188B0C964(IsReduceTransparencyEnabled);
  }

  return v1 & 1;
}

uint64_t sub_188B0C964(uint64_t result)
{
  v2 = *(v1 + 17);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B0D714();
    sub_18A4A2BF8();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 17) = result;
  return result;
}

uint64_t sub_188B0CAA4()
{
  swift_getKeyPath();
  v6[0] = v0;
  sub_188B0D714();
  sub_18A4A2C08();

  LODWORD(v1) = *(v0 + 18);
  if (v1 == 2)
  {
    v1 = [objc_opt_self() defaultCenter];
    v6[4] = sub_188F3C8B0;
    v6[5] = v0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_188F3B4A4;
    v6[3] = &block_descriptor_55_0;
    v2 = _Block_copy(v6);

    v3 = [v1 addObserverForName:@"UIAccessibilityReduceMotionStatusDidChangeNotification" object:0 queue:0 usingBlock:v2];
    _Block_release(v2);
    swift_unknownObjectRelease();

    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    LOBYTE(v1) = IsReduceMotionEnabled;
    sub_188B0CC20(IsReduceMotionEnabled);
  }

  return v1 & 1;
}

uint64_t sub_188B0CC20(uint64_t result)
{
  v2 = *(v1 + 18);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B0D714();
    sub_18A4A2BF8();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 18) = result;
  return result;
}

uint64_t sub_188B0CD70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_188B0CDD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double _UICornerRadiiMaxValue(float64x2_t *a1)
{
  v1 = vbslq_s8(vcgtq_f64(a1[2], a1[3]), a1[2], a1[3]);
  v2 = vbslq_s8(vcgtq_f64(*a1, v1), *a1, v1);
  v3 = vbslq_s8(vcgtq_f64(a1[1], v2), a1[1], v2);
  if (*v3.i64 < *&v3.i64[1])
  {
    v3.i64[0] = v3.i64[1];
  }

  return *v3.i64;
}

uint64_t _UIApplicationBeginBackgroundTaskWithExpirationHandler(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v5 = *(vars0 + 8);
    memset(&v20, 0, sizeof(v20));
    if (v5 && dladdr(v5, &v20))
    {
      if (v20.dli_sname && *v20.dli_sname)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];
      }

      else
      {
        v6 = @"unknown method";
      }

      if (v20.dli_fname && *v20.dli_fname)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];
        v7 = [v19 lastPathComponent];

        goto LABEL_9;
      }
    }

    else
    {
      v6 = @"unknown method";
    }

    v7 = @"unknown caller";
LABEL_9:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Called by %@, from %@", v7, v6];
  }

  v8 = *(__UILogGetCategoryCachedImpl("BackgroundTask", &_UIApplicationBeginBackgroundTaskWithExpirationHandler___s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = _Block_copy(v3);
    LODWORD(v20.dli_fname) = 138478083;
    *(&v20.dli_fname + 4) = v4;
    WORD2(v20.dli_fbase) = 2112;
    *(&v20.dli_fbase + 6) = v10;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Will add backgroundTask with taskName: %{private}@, expirationHandler: %@", &v20, 0x16u);
  }

  v11 = v4;
  v12 = v3;
  if (MGGetBoolAnswer() && ([UIApp _isSpringBoard] & 1) == 0)
  {
    v14 = v11;
    if (!v11)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = _UIMainBundleIdentifier();
      v14 = [v15 stringWithFormat:@"Background Task for %@", v16];
    }

    v13 = _doAddBackgroundTask(v14, v12, 1);
  }

  else
  {
    v13 = 0;
    v14 = v11;
  }

  if (v13)
  {
    v17 = v13[1];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_188B0D16C(uint64_t a1, uint64_t *a2, void (*a3)(double))
{
  v5 = type metadata accessor for _Glass._GlassVariant(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = sub_18A4A2F58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v9);
  *(v6 + v5[5]) = 0;
  *(v6 + v5[6]) = 0;
  *(v6 + v5[7]) = 0;
  return (*(v8 + 32))(v6, v11, v7);
}

uint64_t _Glass.init(_:smoothness:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _Glass(0);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  *(a2 + v9[7]) = 1;
  *(a2 + v9[8]) = 0;
  *(a2 + v9[9]) = 0;
  *(a2 + v9[10]) = 0;
  *(a2 + v9[13]) = 0;
  *(a2 + v9[14]) = 0;
  *(a2 + v9[15]) = 0;
  if (_UIEnableContentLensing())
  {
    sub_188AD8C44(a1, v8, type metadata accessor for _Glass._GlassVariant);
    v10 = sub_18A4A3118();
    v26 = &v22;
    v11 = *(v10 - 8);
    v12 = v11[8];
    MEMORY[0x1EEE9AC00](v10);
    v27 = v8;
    v13 = sub_18A4A30E8();
    v25 = &v22;
    MEMORY[0x1EEE9AC00](v13);
    v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = a1;
    v15 = sub_18A4A2F08();
    v23 = &v22;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v22 = v11[2];
    v22(v14, v14, v10, v16);
    sub_188B64AD8(&qword_1ED48D448, MEMORY[0x1EEE86AF8]);
    sub_18A4A7E88();
    v17 = v11[1];
    v18 = v17(v14, v10);
    v23 = &v22;
    v19 = MEMORY[0x1EEE9AC00](v18);
    v8 = v27;
    v22(v14, v14, v10, v19);
    sub_18A4A2F18();
    sub_188B0CD70(v24, type metadata accessor for _Glass._GlassVariant);
    v17(v14, v10);
  }

  else
  {
    sub_188B0D6AC(a1, v8, type metadata accessor for _Glass._GlassVariant);
  }

  v20 = v9[12];
  result = sub_188B0D6AC(v8, a2 + v9[6], type metadata accessor for _Glass._GlassVariant);
  *(a2 + v20) = a3;
  *(a2 + v9[11]) = 0;
  return result;
}

uint64_t sub_188B0D644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188B0D6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_188B0D714()
{
  result = qword_1ED48FD08;
  if (!qword_1ED48FD08)
  {
    type metadata accessor for _UIGlobalState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48FD08);
  }

  return result;
}

uint64_t sub_188B0D76C()
{
  swift_getKeyPath();
  v8[0] = v0;
  sub_188B0D714();
  sub_18A4A2C08();

  LODWORD(v1) = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = *MEMORY[0x1E696A7D8];
    v8[4] = sub_188F3CA88;
    v8[5] = v0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_188F3B4A4;
    v8[3] = &block_descriptor_77_1;
    v4 = _Block_copy(v8);

    v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v4];
    _Block_release(v4);
    swift_unknownObjectRelease();

    v6 = [objc_opt_self() processInfo];
    v1 = [v6 isLowPowerModeEnabled];

    sub_188B0DA90(v1);
  }

  return v1 & 1;
}

uint64_t sub_188B0D91C()
{
  result = sub_18A4A2C48();
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

uint64_t type metadata accessor for _UIGlobalState()
{
  result = qword_1ED48FCF8;
  if (!qword_1ED48FCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188B0DA14()
{
  type metadata accessor for _UIGlobalState();
  v0 = swift_allocObject();
  *(v0 + 16) = 33686018;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  result = sub_18A4A2C38();
  qword_1ED4A3628 = v0;
  return result;
}

uint64_t sub_188B0DA90(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188B0D714();
    sub_18A4A2BF8();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 16) = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_188B0DC3C()
{
  result = sub_18A4A7D38();
  if (v1 <= 0x3F)
  {
    result = _s8ComposerVMa();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_188B0DD70()
{
  result = sub_18A4A7D38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188B0DDFC()
{
  result = type metadata accessor for RunningInProcessAnimation();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_188B0DEC0()
{
  result = _s6SpringVMa();
  if (v1 <= 0x3F)
  {
    result = _s14FrictionBounceVMa();
    if (v2 <= 0x3F)
    {
      result = _s7SwiftUIVMa();
      if (v3 <= 0x3F)
      {
        result = _s15InstantlyStableVMa();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_188B0DFC0()
{
  result = type metadata accessor for CompoundSpringAnimationParameters();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_188B0E090()
{
  if (!qword_1ED48FCC8)
  {
    v0 = type metadata accessor for SpringAnimationParameters();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED48FCC8);
    }
  }
}

void sub_188B0E0E8()
{
  sub_188B0E090();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SpringAnimationParameters();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_188B0E180()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188B0E21C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_188B0E2B8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    _s7SwiftUIV5PhaseOMa();
    if (v1 <= 0x3F)
    {
      sub_18A4A49C8();
      if (v2 <= 0x3F)
      {
        sub_188FBA60C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_188B0E3D0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_188B0E440()
{
  result = qword_1ED48FC60;
  if (!qword_1ED48FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48FC60);
  }

  return result;
}

unint64_t sub_188B0E494(uint64_t a1)
{
  result = sub_188B0BC88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188B0E4C0()
{
  result = qword_1ED48FC70;
  if (!qword_1ED48FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48FC70);
  }

  return result;
}

unint64_t sub_188B0E524(uint64_t a1)
{
  result = sub_188B0E440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188B0E550()
{
  result = qword_1ED48FC68;
  if (!qword_1ED48FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48FC68);
  }

  return result;
}

uint64_t sub_188B0E640(unint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CC0);
  v6 = swift_allocObject();
  *(v6 + 20) = 0;
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  v30 = a2;
  v31 = a3;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = qword_1EA932040;

  if (v8 != -1)
  {
    swift_once();
  }

  v32 = byte_1EA9951B8;
  v9 = _s29AnimatablePropertyTransformerCMa();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueCallbackRan] = 0;
  *&v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_runningProgresses] = MEMORY[0x1E69E7CD0];
  swift_weakInit();
  v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_assertionsChecked] = 0;
  v11 = &v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_modelValueChangedCallback];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedCallback];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_stabilizedCallback];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedWithoutAnimationCallback];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties;
  v16 = sub_188A81190(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB8);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v16;
  *&v10[v15] = v17;
  v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_unsafe] = 0;
  v18 = *v11;
  *v11 = signpost_c2_entryLock_start;
  v11[1] = 0;
  sub_188A55B8C(v18);
  v19 = *v12;
  *v12 = sub_188E86270;
  v12[1] = v7;

  sub_188A55B8C(v19);
  v20 = *v13;
  *v13 = signpost_c2_entryLock_start;
  v13[1] = 0;
  sub_188A55B8C(v20);
  v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_clearsCapturedPropertiesOnStabilization] = 1;
  v10[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_executionMode] = (v32 & 1) == 0;
  v33.receiver = v10;
  v33.super_class = v9;
  result = objc_msgSendSuper2(&v33, sel_init);
  v22 = result;
  if (!(a1 >> 62))
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_12:

    v27 = &v22[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedWithoutAnimationCallback];
    v28 = *&v22[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_presentationValueChangedWithoutAnimationCallback];
    *v27 = v30;
    *(v27 + 1) = v31;
    v29 = v22;
    sub_188A55B8C(v28);

    return v29;
  }

  result = sub_18A4A7F68();
  v23 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v23 >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = sub_188E49AD0(i, a1);
      }

      else
      {
        v25 = *(a1 + 8 * i + 32);
      }

      v26 = v25;
      [v25 set:v22 :? swiftTransformer:?];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

char *sub_188B0EA78()
{
  v1 = OBJC_IVAR____UIFlexInteraction_animationContext;
  sub_188EA5858(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AB0);
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  sub_188EA9A94(v64, v2 + 16);
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____UIFlexInteraction_preferredActivationMode] = 0;
  *&v0[OBJC_IVAR____UIFlexInteraction_preferredFlexSources] = 3;
  *&v0[OBJC_IVAR____UIFlexInteraction_preferredVariant] = 0;
  *&v0[OBJC_IVAR____UIFlexInteraction_glassInfo] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____UIFlexInteraction_interactionSignpost] = 0;
  *&v0[OBJC_IVAR____UIFlexInteraction_settlingSignpost] = 0;
  *&v0[OBJC_IVAR____UIFlexInteraction_updateLink] = 0;
  v0[OBJC_IVAR____UIFlexInteraction_shouldUsePresentationLayers] = 0;
  v3 = OBJC_IVAR____UIFlexInteraction_velocityIntegrator;
  *&v0[v3] = [objc_allocWithZone(_UIVelocityIntegrator) init];
  *&v0[OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture] = 0;
  v4 = &v0[OBJC_IVAR____UIFlexInteraction_translation];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____UIFlexInteraction_internalTranslation];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____UIFlexInteraction_initialTouchLocation];
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____UIFlexInteraction_glowContainer;
  _s17GlowContainerViewCMa();
  *&v0[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____UIFlexInteraction_scaleX;
  v9 = type metadata accessor for _UIDebouncingAnimatableFloat();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v11 = 0;
  *(v11 + 1) = 0;
  v63.receiver = v10;
  v63.super_class = v9;
  v12 = objc_msgSendSuper2(&v63, sel_init);
  v13 = &v12[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v13 = 0xD000000000000019;
  *(v13 + 1) = 0x800000018A68EC50;

  *&v0[v8] = v12;
  v14 = OBJC_IVAR____UIFlexInteraction_scaleY;
  v15 = objc_allocWithZone(v9);
  v16 = &v15[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v16 = 0;
  *(v16 + 1) = 0;
  v62.receiver = v15;
  v62.super_class = v9;
  v17 = objc_msgSendSuper2(&v62, sel_init);
  v18 = &v17[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v18 = 0xD000000000000019;
  *(v18 + 1) = 0x800000018A68EC70;

  *&v0[v14] = v17;
  v19 = OBJC_IVAR____UIFlexInteraction_driftX;
  v20 = objc_allocWithZone(v9);
  v21 = &v20[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v21 = 0;
  *(v21 + 1) = 0;
  v61.receiver = v20;
  v61.super_class = v9;
  v22 = objc_msgSendSuper2(&v61, sel_init);
  v23 = &v22[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v23 = 0xD000000000000019;
  *(v23 + 1) = 0x800000018A68EC90;

  *&v0[v19] = v22;
  v24 = OBJC_IVAR____UIFlexInteraction_driftY;
  v25 = objc_allocWithZone(v9);
  v26 = &v25[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v26 = 0;
  *(v26 + 1) = 0;
  v60.receiver = v25;
  v60.super_class = v9;
  v27 = objc_msgSendSuper2(&v60, sel_init);
  v28 = &v27[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v28 = 0xD000000000000019;
  *(v28 + 1) = 0x800000018A68ECB0;

  *&v0[v24] = v27;
  v29 = OBJC_IVAR____UIFlexInteraction_translationY;
  v30 = objc_allocWithZone(v9);
  v31 = &v30[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v31 = 0;
  *(v31 + 1) = 0;
  v59.receiver = v30;
  v59.super_class = v9;
  v32 = objc_msgSendSuper2(&v59, sel_init);
  v33 = &v32[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
  *v33 = 0xD00000000000001FLL;
  *(v33 + 1) = 0x800000018A68ECD0;

  *&v0[v29] = v32;
  v34 = OBJC_IVAR____UIFlexInteraction_glowCleanupCompletion;
  *&v0[v34] = [objc_allocWithZone(_UIGroupCompletion) init];
  v58.receiver = v0;
  v58.super_class = _UIFlexInteraction;
  v35 = objc_msgSendSuper2(&v58, sel_init);
  v36 = [v35 panGesture];
  [v36 setDelegate_];

  v37 = OBJC_IVAR____UIFlexInteraction_velocityIntegrator;
  [*&v35[OBJC_IVAR____UIFlexInteraction_velocityIntegrator] setMaxNumberOfSamples_];
  [*&v35[v37] setMinimumRequiredMovement_];
  [*&v35[v37] setUseSampleWindowForDifferentiation_];
  [*&v35[v37] setHysteresisTimeInterval_];
  v38 = *&v35[v37];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 exponentialMovingAverage_];
  [v40 setPositionFilter_];

  v42 = *&v35[v37];
  v43 = [v39 exponentialMovingAverage_];
  [v42 setVelocityFilter_];

  v44 = *&v35[v37];
  v45 = [v39 exponentialMovingAverage_];
  [v44 setAccelerationFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B810;
  v47 = *&v35[OBJC_IVAR____UIFlexInteraction_scaleX];
  *(inited + 32) = v47;
  v48 = *&v35[OBJC_IVAR____UIFlexInteraction_scaleY];
  *(inited + 40) = v48;
  v49 = *&v35[OBJC_IVAR____UIFlexInteraction_driftX];
  *(inited + 48) = v49;
  v50 = *&v35[OBJC_IVAR____UIFlexInteraction_driftY];
  *(inited + 56) = v50;
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v47;
  v53 = v48;
  v54 = v49;
  v55 = v50;

  v56 = sub_188E85F8C(inited, 0, signpost_c2_entryLock_start, 0, sub_188EA9ACC, v51);

  return v35;
}

uint64_t sub_188B0F090()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_188B0F114(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____UIFlexInteractionGlowContainerView_bigGlow;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow] = 0;
  v49.receiver = v4;
  v49.super_class = _s17GlowContainerViewCMa();
  v10 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setClipsToBounds_];
  [v10 setUserInteractionEnabled_];
  [v10 setAutoresizingMask_];
  v11 = [v10 layer];
  [v11 setAllowsHitTesting_];

  v12 = [v10 layer];
  [v12 setAllowsGroupBlending_];

  v13 = OBJC_IVAR____UIFlexInteractionGlowContainerView_bigGlow;
  v14 = *&v10[OBJC_IVAR____UIFlexInteractionGlowContainerView_bigGlow];
  [v10 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v14 setFrame_];
  v23 = [*&v10[v13] layer];
  v24 = sub_18A4A7258();
  [v23 setName_];

  [*&v10[v13] setAutoresizingMask_];
  v25 = *&v10[v13];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 whiteColor];
  [v27 setBackgroundColor_];

  v29 = sub_18A4A4588();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4578();
  sub_18A4A4568();
  (*(v30 + 8))(v32, v29);
  v33 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v34 = objc_opt_self();
  v42 = v50;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  v35 = [v34 valueWithCAColorMatrix_];
  [v33 setValue:v35 forKey:*MEMORY[0x1E6979AC0]];

  v36 = sub_18A4A7668();
  [v33 setValue:v36 forKey:*MEMORY[0x1E69799C0]];

  v37 = [*&v10[v13] layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_18A64BFB0;
  *(v38 + 56) = sub_188B0F668();
  *(v38 + 32) = v33;
  v39 = v33;
  v40 = sub_18A4A7518();

  [v37 setFilters_];

  [v10 addSubview_];
  return v10;
}

unint64_t sub_188B0F668()
{
  result = qword_1ED48EE50;
  if (!qword_1ED48EE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48EE50);
  }

  return result;
}

id sub_188B0F6F8()
{
  v1 = OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture;
  v2 = *(v0 + OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture);
  }

  else
  {
    v4 = [objc_allocWithZone(_UIFlexInteractionPanGestureRecognizer) initWithTarget:v0 action:sel_handlePan_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_188B0F7E8(id a1)
{
  v3 = [v1 _view];
  if (a1)
  {
    if (v3)
    {
      v4 = v3;

      if (v4 == a1)
      {
        return;
      }
    }
  }

  else
  {
    if (!v3)
    {
      return;
    }
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188EA9A84;
  *(v7 + 24) = v6;
  v17[4] = sub_188E3FE50;
  v17[5] = v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_188A4A968;
  v17[3] = &block_descriptor_183;
  v8 = _Block_copy(v17);
  v9 = v1;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v10 = [v9 panGesture];
    v11 = [v10 view];

    if (v11)
    {
      v12 = [v9 panGesture];
      [v11 removeGestureRecognizer_];
    }

    v13 = [v9 _view];
    if (v13)
    {
      v14 = v13;
      [(UIView *)v13 _removeMultiLayerDelegate:v9];
    }

    [v9 set:0 view:?];
    v15 = *&v9[OBJC_IVAR____UIFlexInteraction_animationContext];
    os_unfair_lock_lock((v15 + 48));
    v16 = *(v15 + 16);
    if (*(v15 + 32) == 1)
    {
      if (v16)
      {
        [v16 removePresentationModifier_];
        v16 = *(v15 + 16);
      }

      *(v15 + 32) = 0;
    }

    *(v15 + 16) = 0;

    os_unfair_lock_unlock((v15 + 48));
    [v9 setUpdateLink_];
  }
}