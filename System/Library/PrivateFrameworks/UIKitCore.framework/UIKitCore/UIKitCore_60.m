void sub_1890D19DC(uint64_t a1, char a2, double a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  if (v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] == (a2 & 1))
  {
    v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_hideTitleElementsForLargeTitle] = (a2 & 1) == 0;
    v6 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult;
    memcpy(__dst, &v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], sizeof(__dst));
    memmove(v19, &v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    if (sub_188BAAB78(v19) == 1)
    {
      v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
      memcpy(v20, &v5[v6], 0x20AuLL);
      memcpy(&v5[v6], __dst, 0x20AuLL);
      v7 = v5;
      sub_188A3F5FC(v20, &unk_1EA9362C0);
      [v7 setNeedsLayout];
      [v7 layoutIfNeeded];
    }

    else
    {
      memcpy(v14, &v5[v6], 0x20AuLL);
      memmove(__src, &v5[v6], 0x20AuLL);
      if (sub_188BAAB78(__src) != 1)
      {
        memcpy(v20, __src, 0x20AuLL);
        v8 = v5;
        sub_188A3F29C(v14, &v13, &unk_1EA9362C0);
        sub_188B3CBC4(v20, 1);

        sub_188A3F5FC(v14, &unk_1EA9362C0);
      }
    }
  }

  v9 = *(a1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView);
  if (v9)
  {
    v10 = type metadata accessor for NavigationBarLargeTitleView();
    v17.receiver = v9;
    v17.super_class = v10;
    v11 = v9;
    objc_msgSendSuper2(&v17, sel_setAlpha_, a3);
    v12 = *&v11[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v16.receiver = v11;
    v16.super_class = v10;
    objc_msgSendSuper2(&v16, sel_alpha);
    [v12 setAlpha_];
  }
}

uint64_t sub_1890D1C04(void *a1)
{
  v3 = [v1 navigationBar];
  v4 = [v3 _privateDelegate];

  if (v4)
  {
    if ([v4 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v5 = [v1 navigationBar];
      [v4 _navigationBar_requestPopToItem_];

      return swift_unknownObjectRelease_n();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v7 = [v1 stack];
    v8 = swift_allocObject();
    *(v8 + 16) = &v16;
    *(v8 + 24) = a1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1890DAAF8;
    *(v9 + 24) = v8;
    aBlock[4] = sub_188B89F5C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188C0AC7C;
    aBlock[3] = &block_descriptor_122_0;
    v10 = _Block_copy(aBlock);
    v11 = a1;

    [v7 iterateItems_];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v13 = [v1 navigationBar];
      sub_188A34624(0, &unk_1ED48CFF8);

      v14 = sub_18A4A7518();

      [v13 setItems:v14 animated:1];
    }
  }

  return result;
}

uint64_t sub_1890D1EE0(void *a1, _BYTE *a2, void *a3, id a4)
{
  v7 = a1;
  MEMORY[0x18CFE2450]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  result = sub_18A4A75F8();
  if (a4)
  {
    if (a4 == v7)
    {
      *a2 = 1;
    }
  }

  return result;
}

id sub_1890D1F78(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a1)(MEMORY[0x1E69E7CC0]);
  }

  v3 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  v4 = Strong;
  v5 = [v4 stack];
  v6 = [v5 topEntry];

  v42 = v4;
  v7 = [v4 stack];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &v51;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1890DAAE8;
  *(v9 + 24) = v8;
  v49 = sub_18907CF94;
  v50 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_188C0AC7C;
  v48 = &block_descriptor_104;
  v10 = _Block_copy(&aBlock);
  v37 = v6;

  [v7 reverseIterateEntries_];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    v44 = v3;
    isEscapingClosureAtFileLocation = v51;
    v36 = a1;
    if (!(v51 >> 62))
    {
      v12 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  v12 = sub_18A4A7F68();
LABEL_5:

  if (!v12)
  {
LABEL_17:

    v28 = [v42 navigationBar];

    v29 = [v28 _effectiveDelegate];
    if (v29)
    {
      v30 = v29;
      if ([v29 respondsToSelector_])
      {
        v31 = v28;
        v32 = [v30 _navigationBarAdditionalActionsForBackButtonMenu_];
        if (!v32)
        {
          swift_unknownObjectRelease();

          goto LABEL_22;
        }

        v33 = v32;
        sub_188A34624(0, &qword_1EA930340);
        v34 = sub_18A4A7548();

        sub_18920BCD4(v34);
      }

      swift_unknownObjectRelease();
    }

LABEL_22:
    if (v44 >> 62)
    {
      sub_188A34624(0, &qword_1ED48FC30);

      v35 = sub_18A4A83B8();
    }

    else
    {

      sub_18A4A8738();
      sub_188A34624(0, &qword_1ED48FC30);
      v35 = v44;
    }

    v36(v35);
  }

  v13 = 0;
  v40 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
  v41 = isEscapingClosureAtFileLocation & 0xC000000000000001;
  v39 = isEscapingClosureAtFileLocation;
  v38 = v12;
  while (1)
  {
    if (v41)
    {
      v14 = sub_188E4B030(v13, isEscapingClosureAtFileLocation);
    }

    else
    {
      if (v13 >= *(v40 + 16))
      {
        goto LABEL_28;
      }

      v14 = *(isEscapingClosureAtFileLocation + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v43 = v13 + 1;
    aBlock = 0;
    v46 = 0xE000000000000000;
    sub_18A4A80E8();

    aBlock = 0xD000000000000019;
    v46 = 0x800000018A6A5DA0;
    v16 = sub_18A4A8618();
    MEMORY[0x18CFE22D0](v16);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    result = [v15 _backButtonTitleAllowingGenericTitles_];
    if (!result)
    {
      break;
    }

    v18 = result;
    v19 = sub_18A4A7258();

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v42;
    v22 = objc_allocWithZone(UIAction);
    v49 = sub_1890DAAF0;
    v50 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v46 = 1107296256;
    v47 = sub_188BFF280;
    v48 = &block_descriptor_113_0;
    v23 = _Block_copy(&aBlock);
    v24 = v42;

    v25 = [v22 initWithTitle:v18 image:0 identifier:v19 discoverabilityTitle:0 attributes:0 state:0 handler:v23];
    _Block_release(v23);

    v26 = v25;
    [v26 setSubtitle_];
    [v26 setSelectedImage_];

    v27 = v26;
    MEMORY[0x18CFE2450]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();

    ++v13;
    isEscapingClosureAtFileLocation = v39;
    if (v43 == v38)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1890D267C(void *a1, _BYTE *a2, void *a3, void *a4)
{
  if (!a3 || a3 != a1)
  {
    v13 = [a1 item];
    MEMORY[0x18CFE2450]();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v6 = [v13 hidesBackButton];
    v7 = v13;
    if ((v6 & 1) != 0 || (v8 = [v13 leftItemsSupplementBackButton], v7 = v13, (v8 & 1) == 0) && (v9 = objc_msgSend(v13, sel_leftBarButtonItems), v7 = v13, v9) && ((v10 = v9, sub_188A34624(0, &qword_1ED48E8C0), v11 = sub_18A4A7548(), v10, v11 >> 62) ? (v12 = sub_18A4A7F68()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v7 = v13, v12 >= 1))
    {
      *a2 = 1;
    }
  }
}

void sub_1890D2808()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong;
    sub_1890D1C04(v1);
  }
}

void sub_1890D2878(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a1(MEMORY[0x1E69E7CC0]);
    return;
  }

  v3 = Strong;
  v4 = [Strong navigationBar];
  v5 = [v4 _effectiveDelegate];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (([v5 respondsToSelector_] & 1) == 0)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v7 = v4;
  v8 = [v6 _navigationBarAdditionalActionsForBackButtonMenu_];
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  sub_188A34624(0, &qword_1EA930340);
  v10 = sub_18A4A7548();

  swift_unknownObjectRelease();
LABEL_10:
  if (v10 >> 62)
  {
    sub_188A34624(0, &qword_1ED48FC30);

    v11 = sub_18A4A83B8();
  }

  else
  {

    sub_18A4A8738();
    sub_188A34624(0, &qword_1ED48FC30);
    v11 = v10;
  }

  a1(v11);
}

BOOL sub_1890D2A68()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  if (*&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_customizationIdentifier + 8] && *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] == 1)
  {
    v2 = v1;
    v3 = [v2 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      v5 = [v2 traitCollection];
      v6 = [v5 userInterfaceIdiom];

      return v6 != 6;
    }
  }

  return 0;
}

uint64_t sub_1890D2B7C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer;
  v3 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer];
  }

  else
  {
    v5 = [objc_allocWithZone(_UIBarCustomizer) initWithDelegate_];
    v6 = *&v0[v2];
    *&v1[v2] = v5;
    v4 = v5;

    v3 = 0;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v7 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v8 = v3;
  v9 = v7;
  v10 = sub_188AEB244();

  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
    if (v11)
    {
      v12 = swift_allocObject();
      v12[2] = v1;
      v12[3] = &v43;
      v12[4] = &v42;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1890DAA94;
      *(v13 + 24) = v12;
      v40 = sub_1890DAAA0;
      v41 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_18907B6F0;
      v39 = &block_descriptor_50_3;
      v14 = _Block_copy(&aBlock);
      v15 = v11;
      v16 = v1;

      [(_UIButtonBarGroupOrderer *)v15 enumerateSourceGroups:v14];
      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        sub_188A34624(0, &unk_1EA934168);

        v18 = sub_18A4A7518();

        v19 = sub_18A4A7518();

        v20 = [objc_opt_self() sessionWithVisibleItems:v18 additionalItems:v19];

        v35 = v15;
        v21 = *&v16[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_currentCustomizationSession];
        *&v16[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_currentCustomizationSession] = v20;
        v22 = v20;

        v23 = [v22 beginAnimationCoordinator];
        v24 = swift_allocObject();
        *(v24 + 16) = v16;
        v40 = sub_1890DAAA8;
        v41 = v24;
        aBlock = MEMORY[0x1E69E9820];
        v37 = 1107296256;
        v38 = sub_188A4A8F0;
        v39 = &block_descriptor_56_0;
        v25 = _Block_copy(&aBlock);
        v26 = v16;

        [v23 addAnimations_];
        _Block_release(v25);
        swift_unknownObjectRelease();
        v27 = [v22 endAnimationCoordinator];
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        v40 = sub_1890DAAB0;
        v41 = v28;
        aBlock = MEMORY[0x1E69E9820];
        v37 = 1107296256;
        v38 = sub_188A4A8F0;
        v39 = &block_descriptor_62_2;
        v29 = _Block_copy(&aBlock);
        v30 = v26;

        [v27 addAnimations_];
        _Block_release(v29);
        swift_unknownObjectRelease();
        v31 = [v22 endAnimationCoordinator];
        v32 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = sub_1890DAAD0;
        v41 = v32;
        aBlock = MEMORY[0x1E69E9820];
        v37 = 1107296256;
        v38 = sub_188BFF280;
        v39 = &block_descriptor_68_1;
        v33 = _Block_copy(&aBlock);

        [v31 addCompletion_];
        _Block_release(v33);
        swift_unknownObjectRelease();
        [v4 beginWithSession_];
      }

      __break(1u);
    }
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void sub_1890D3128(void *a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_1890D8440(a1);
  if (a2)
  {
    MEMORY[0x18CFE2450]();
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }
  }

  else
  {
    MEMORY[0x18CFE2450]();
    if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }
  }

  sub_18A4A75F8();
}

id sub_1890D321C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v3 = *(a1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarAlpha] = 0;
  memcpy(__dst, &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
  memmove(__src, &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
  if (sub_188BAAB78(__src) != 1)
  {
    memcpy(v7, __src, 0x20AuLL);
    v4 = v3;
    sub_188A3F29C(__dst, &v6, &unk_1EA9362C0);
    sub_188B3CBC4(v7, 0);

    sub_188A3F5FC(__dst, &unk_1EA9362C0);
  }

  return [*(a1 + v2) setAlpha_];
}

void sub_1890D3318(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_currentCustomizationSession);
    if (!v4 || v4 != a1)
    {
      goto LABEL_11;
    }

    *(Strong + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_currentCustomizationSession) = 0;

    v5 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView;
    v6 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView];
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *&v3[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v3[v5] = 0;

    v8 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
    v9 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v10 = sub_188B2A31C();

    if (v10)
    {
      v11 = [v10 view];

      if (v11)
      {
        [v11 setAlpha_];
      }
    }

    v12 = *&v3[v8];
    *&v12[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarAlpha] = 0x3FF0000000000000;
    memcpy(__dst, &v12[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    memmove(__src, &v12[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    if (sub_188BAAB78(__src) != 1)
    {
      memcpy(v17, __src, 0x20AuLL);
      v13 = v12;
      sub_188A3F29C(__dst, v14, &unk_1EA9362C0);
      sub_188B3CBC4(v17, 0);

      sub_188A3F5FC(__dst, &unk_1EA9362C0);
    }

    else
    {
LABEL_11:
    }
  }
}

id sub_1890D352C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18A64B710;
  *(v3 + 32) = a2;
  v4 = objc_allocWithZone(UIMenu);
  v5 = a2;
  v6 = sub_18A4A7258();
  sub_188A34624(0, &qword_1ED48FC30);
  v7 = sub_18A4A7518();

  v8 = [v4 initWithTitle:v6 image:0 imageName:0 identifier:0 options:0 children:v7];

  v9 = v8;
  [v9 setSubtitle_];
  [v9 setPreferredElementSize_];

  return v9;
}

id sub_1890D3644(id result, void *a2)
{
  if (result)
  {
    v4 = result;
    if ([v4 largeTitleDisplayMode] == 3 && sub_188B9BE44(v4) == 1)
    {
      v5 = [v4 largeTitle];
      if (v5 || (v5 = [v4 title]) != 0)
      {
        v6 = v5;
        sub_18A4A7288();

        if (sub_18A4A7358() >= 1)
        {
          v7 = 0x1E696A000uLL;
          if ([v4 largeSubtitleView])
          {
LABEL_21:
            if (!a2)
            {
              sub_188AEC99C(MEMORY[0x1E69E7CC0]);
              type metadata accessor for Key(0);
              sub_188C5E0DC();
              v19 = sub_18A4A7088();

              v20 = [v2 navigationBar];
              v21 = [v20 traitCollection];

              v22 = [v21 userInterfaceIdiom];
              v18 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v19, v22, 1);

              v7 = 0x1E696A000uLL;
              goto LABEL_25;
            }

            v17 = [a2 largeTitleTextWithSubtitleAttributes];
LABEL_23:
            v18 = v17;
            type metadata accessor for Key(0);
            sub_188C5E0DC();
LABEL_25:
            sub_18A4A70A8();
LABEL_26:

            v23 = objc_allocWithZone(*(v7 + 2736));
            v24 = sub_18A4A7258();

            type metadata accessor for Key(0);
            sub_188C5E0DC();
            v25 = sub_18A4A7088();

            v26 = [v23 initWithString:v24 attributes:v25];

            return v26;
          }

          v8 = [v4 largeAttributedSubtitle];
          if (!v8)
          {
            v9 = [v4 attributedSubtitle];
            v10 = v9;
            if (!v9)
            {
              goto LABEL_27;
            }

            v11 = [v9 string];
            if (!v11)
            {
              sub_18A4A7288();
              v11 = sub_18A4A7258();
            }

            v8 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];
          }

          if (a2)
          {
            v12 = [a2 _largeSubtitleTextAttributesForSwift];
          }

          else
          {
            v13 = [v2 navigationBar];
            v14 = [v13 traitCollection];

            v15 = [v14 userInterfaceIdiom];
            v12 = _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributesForSwift(v15);
          }

          v16 = v12;
          objc_opt_self();
          swift_dynamicCastObjCClassUnconditional();
          if ([v8 length] >= 1)
          {
            goto LABEL_21;
          }

LABEL_27:
          if (!a2)
          {
            v27 = [v2 navigationBar];
            v28 = [v27 largeTitleTextAttributes];

            if (v28)
            {
              type metadata accessor for Key(0);
              sub_188C5E0DC();
              sub_18A4A70A8();
            }

            else
            {
              sub_188AEC99C(MEMORY[0x1E69E7CC0]);
            }

            type metadata accessor for Key(0);
            sub_188C5E0DC();
            v29 = sub_18A4A7088();

            v30 = [v2 navigationBar];
            v31 = [v30 traitCollection];

            v32 = [v31 userInterfaceIdiom];
            v18 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v29, v32, 0);

            sub_18A4A70A8();
            v7 = 0x1E696A000;
            goto LABEL_26;
          }

          v17 = [a2 largeTitleTextAttributes];
          goto LABEL_23;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1890D3C10()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__emptyLayout;
  if (!*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__emptyLayout])
  {
    type metadata accessor for NavigationBarLayout();
    swift_allocObject();
    sub_188B3343C();
    v3 = v4;
    v5 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion];
    *(v4 + 264) = 2;
    *(v4 + 272) = v5;
    *(v4 + 208) = sub_188B39FF8();
    v6 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
    v7 = *(v3 + 96);
    *(v3 + 96) = v6;
    v8 = v6;

    *(v3 + 64) = [v1 contentViewVisualProvider];
    swift_unknownObjectRelease();
    v9 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v10 = *(v3 + 56);
    if (v10)
    {
      type metadata accessor for NavigationBarContentView();
      v11 = v9;
      v12 = v10;
      v13 = sub_18A4A7C88();

      if (v13)
      {
LABEL_8:

        sub_188B395C4();
        *&v1[v2] = v3;
        swift_retain_n();

        goto LABEL_9;
      }

      v11 = *(v3 + 56);
    }

    else
    {
      v14 = v9;
      v11 = 0;
    }

    *(v3 + 56) = v9;
    goto LABEL_8;
  }

  v3 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__emptyLayout];
LABEL_9:
  swift_retain_n();
  v15 = [v1 navigationBar];
  v16 = [v15 _effectiveDelegateSupportsScrollEdgeTransitionProgress];

  *(v3 + 257) = v16;

  return v3;
}

id sub_1890D3DBC(void *a1, id a2)
{
  result = [a2 compactScrollEdgeAppearance];
  if (!result)
  {
    result = [a1 compactScrollEdgeAppearance];
    if (!result)
    {
      result = [a2 scrollEdgeAppearance];
      if (!result)
      {
        return [a1 scrollEdgeAppearance];
      }
    }
  }

  return result;
}

void sub_1890D3E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v141 = *MEMORY[0x1E69E9840];
  v6 = &selRef_prefersHorizontalMenuAttachment;
  v133 = a1 - 1;
  if ((a1 - 1) >= 4)
  {
    if (a1 == 5)
    {
      v7 = a2;
      v30 = [v3 stack];
      v31 = [v30 topEntry];

      sub_188AE4B20(v31, 0);
      if (v31)
      {
        v32 = v31;
        v33 = [(_UINavigationBarItemStackEntry *)v32 _typedStorage];
        v18 = sub_18901F250();

        if (v18)
        {
          v34 = v32;

          v35 = [(_UINavigationBarItemStackEntry *)v34 _typedStorage];
          v36 = sub_18901F25C();

          if (v36)
          {

            v135 = v36;
            goto LABEL_30;
          }

          goto LABEL_130;
        }

        goto LABEL_128;
      }
    }

    else
    {
      if (a1 != 6)
      {
LABEL_131:
        __break(1u);
        return;
      }

      v7 = a2;
      v14 = [v3 stack];
      v15 = [v14 topEntry];

      sub_188AE4B20(v15, 0);
      if (v15)
      {
        v16 = v15;
        v17 = [(_UINavigationBarItemStackEntry *)v16 _typedStorage];
        v18 = sub_18901F25C();

        if (v18)
        {
          v19 = v16;

          v20 = [(_UINavigationBarItemStackEntry *)v19 _typedStorage];
          v21 = sub_18901F250();

          if (v21)
          {
            v22 = sub_188CDB9B0(v21);

            v135 = v22;
            goto LABEL_30;
          }

          goto LABEL_129;
        }

        goto LABEL_127;
      }

      __break(1u);
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v7 = a2;
  v8 = [v3 stack];
  v9 = [v8 topEntry];

  if (v9)
  {
    v10 = v9;
    sub_188AE4B20(v9, 0);
    v11 = [(SEL *)v10 isSearchActive];
    v12 = [(_UINavigationBarItemStackEntry *)v10 _typedStorage];
    if (v11)
    {
      v13 = sub_18901F25C();
    }

    else
    {
      v13 = sub_18901F250();
    }

    v23 = v13;

    if (!v23)
    {
      v23 = sub_1890D3C10();
    }
  }

  else
  {
    v23 = sub_1890D3C10();
  }

  v24 = [v5 stack];
  v25 = [v24 previousTopEntry];

  v135 = v23;
  if (v25)
  {
    v26 = v25;
    sub_188AE4B20(v25, 0);

    v27 = [v26 isSearchActive];
    v28 = [(_UINavigationBarItemStackEntry *)v26 _typedStorage];
    if (v27)
    {
      v29 = sub_18901F25C();
    }

    else
    {
      v29 = sub_18901F250();
    }

    v18 = v29;

    if (!v18)
    {
      v18 = sub_1890D3C10();
    }
  }

  else
  {
    if (!v9)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v18 = sub_1890D3C10();
  }

LABEL_30:

  v37 = [v5 navigationBar];
  v38 = [v37 traitCollection];

  v39 = [v38 userInterfaceIdiom];
  v40 = [v5 stack];
  v41 = [v5 navigationBar];
  if (a1 <= 4)
  {
    v42 = type metadata accessor for NavigationBarTransitionContextInteractive();
  }

  else if (a1 == 5)
  {
    v42 = type metadata accessor for NavigationBarTransitionContextPresentSearch();
  }

  else
  {
    v42 = type metadata accessor for NavigationBarTransitionContextDismissSearch();
  }

  v43 = v42;
  v6 = v7;
  v136 = v18;
  if (v7)
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v7;
    *(v44 + 24) = a3;
    v45 = sub_1890DACF4;
  }

  else
  {
    v45 = signpost_c2_entryLock_start;
    v44 = 0;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v44;
  v47 = *(v43 + 1032);
  sub_188A52E38(v7);
  v48 = v47(v41, a1, v40, v136, v135, sub_1890DACB4, v46);
  if (v39 == 6)
  {
    v48[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPart] = 1;
  }

  *&v48[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationBaseDuration] = 0x3FE0000000000000;
  *&v48[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationOverlapDuration] = 0x3FC3333333333333;
  v49 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext];
  *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext] = v48;
  v23 = v48;

  v50 = [v5 navigationBar];
  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar] = v50;

  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_apiVersion] = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion];
  v51 = [v5 navigationBar];
  v52 = [v51 _activeBarMetrics];

  v53 = v52 == 1 || v52 == 102;
  v54 = v53;
  v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact] = v54;
  v55 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__backgroundAlpha];
  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha] = v55;
  v56 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView;
  v57 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_backgroundView];
  v9 = &selRef_soundReactiveCursorEnabled;
  if (v57 && v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground] == 1)
  {
    v58 = v57;
    [v58 alpha];
    if (v59 != v55)
    {
      [v58 setAlpha_];
    }
  }

  v60 = sub_188B2941C();
  v61 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles;
  v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles] = v60;
  v62 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
  v63 = *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_promptView];
  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_promptView] = v62;
  v64 = v62;

  v65 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v66 = *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView];
  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView] = v65;
  v67 = v65;

  v68 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
  if (v68)
  {
    v68 = [v68 floatingTabBar];
  }

  v69 = *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_tabBarHostedView];
  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_tabBarHostedView] = v68;

  v70 = *&v5[v56];
  v71 = v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_usesBarBackground];
  v72 = *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView];
  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView] = v70;
  v73 = v70;

  v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground] = v71;
  v74 = *&v5[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  v75 = *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView];
  *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView] = v74;
  v76 = v74;

  if (v133 < 4)
  {
    v77 = [v5 stack];
    v78 = [v77 topEntry];

    v79 = [v5 stack];
    v80 = [v79 previousTopEntry];

    v25 = *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
    v81 = [v5 navigationBar];
    [v81 _incomingNavigationBarFrame];
    v83 = v82;
    v85 = v84;

    UIFloorToScale(v85, 6.0);
    if (v83 == *(v25 + 224) && v86 == *(v25 + 232) && *(v25 + 40) == 1)
    {
LABEL_75:
      if (!v78)
      {
        goto LABEL_96;
      }

      v106 = v78;
      v107 = [v106 isSearchActive];
      if (v80)
      {
        v108 = v107;
        v109 = v80;
        v110 = v80;
        v111 = [v109 isSearchActive];

        v53 = v111 == v108;
        v80 = v110;
        if (v53)
        {
LABEL_96:
          v120 = [v5 navigationBar];
          v121 = [v120 _privateDelegate];

          if (v121)
          {
            if ([v121 respondsToSelector_])
            {
              v122 = [swift_unknownObjectRetain() _navigationBarTransitionOverlay];

              swift_unknownObjectRelease_n();
            }

            else
            {
              swift_unknownObjectRelease();

              v122 = 0;
            }

            v123 = *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transitionOverlayView];
            *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transitionOverlayView] = v122;
          }

          else
          {
          }

          return;
        }
      }

      else
      {
      }

      v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPart] = 1;
      goto LABEL_96;
    }

    v138 = v80;
    *(v25 + 224) = v83;
    *(v25 + 232) = v86;
    sub_188B38ED0(v83);
    swift_beginAccess();
    v87 = *(v25 + 344);
    v9 = v87;
    if (!v87)
    {
      v9 = *(v25 + 352);
      v88 = v9;
    }

    swift_beginAccess();
    v4 = *(v25 + 232);
    v89 = v87;

    sub_188B3A13C(v90, v9, v4);

    swift_beginAccess();
    v91 = *(v25 + 400);
    if (v91 >> 62)
    {
      v92 = sub_18A4A7F68();
      if (v92)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v92)
      {
LABEL_60:
        if (v92 >= 1)
        {

          v93 = 0;
          v94 = 0.0;
          do
          {
            if ((v91 & 0xC000000000000001) != 0)
            {
              v95 = sub_188E4A488(v93, v91);
            }

            else
            {
              v95 = *(v91 + 8 * v93 + 32);
            }

            ++v93;
            v96 = &v95[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
            *v96 = v94;
            *(v96 + 8) = 0;
            v97 = *&v95[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

            v94 = v94 + v97;
          }

          while (v92 != v93);

          goto LABEL_74;
        }

        __break(1u);
        goto LABEL_118;
      }
    }

LABEL_74:
    *(v25 + 40) = 1;
    sub_188B386EC();

    v80 = v138;
    goto LABEL_75;
  }

  if (a1 != 5)
  {
    v112 = [v5 stack];
    v6 = [v112 topEntry];

    sub_188AE4B20(v6, 0);
    [v6 setSearchActive_];
    if (v135[217] == 1 && (v135[25] & 1) == 0)
    {
      if (v23[v61])
      {
        v124 = [v5 stack];
        v125 = [v124 effectiveDisplayModeForItemInCurrentStack_];

        if (sub_188B3B828(v125))
        {
          goto LABEL_122;
        }
      }

      goto LABEL_105;
    }

    if (v23[v61] != 1)
    {
      goto LABEL_105;
    }

    v4 = *(v135 + 29);
    swift_beginAccess();
    v25 = *(v135 + 50);
    if (!(v25 >> 62))
    {
      v113 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v113)
      {
LABEL_120:
        v115 = 0.0;
        v116 = 0.0;
        goto LABEL_121;
      }

LABEL_85:
      if (v113 < 1)
      {
        __break(1u);
      }

      v114 = 0;
      v115 = 0.0;
      v116 = 0.0;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v118 = sub_188E4A488(v114, v25);
        }

        else
        {
          v118 = *(v25 + 8 * v114 + 32);
        }

        v119 = 0.0;
        if ((v118[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
        {
          v119 = *&v118[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
        }

        ++v114;
        v117 = *&v118[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];

        v116 = v116 + v119;
        v115 = v115 + v117;
      }

      while (v113 != v114);

      v9 = &selRef_soundReactiveCursorEnabled;
LABEL_121:
      if (vabdd_f64(v115, v4) < vabdd_f64(v4, v116))
      {
LABEL_122:
        v131 = [v5 v9[161]];
        v132 = [v131 effectiveDisplayModeForItemInCurrentStack_];

        v126 = sub_188B3B828(v132);

        goto LABEL_123;
      }

LABEL_105:

      v126 = 0;
LABEL_123:
      v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle] = v126 & 1;
      v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle] = 0;
      return;
    }

LABEL_119:
    v113 = sub_18A4A7F68();
    if (!v113)
    {
      goto LABEL_120;
    }

    goto LABEL_85;
  }

  v98 = [v5 stack];
  v99 = [v98 topEntry];

  if (!v99)
  {
    v105 = 0;
    goto LABEL_109;
  }

  v100 = v99;
  v101 = [(_UINavigationBarItemStackEntry *)v100 _typedStorage];
  v102 = sub_18901F250();

  [v100 setSearchActive_];
  if (!v102)
  {
    goto LABEL_108;
  }

  if (*(v102 + 217) == 1 && (*(v102 + 25) & 1) == 0)
  {
    if (v23[v61])
    {
      goto LABEL_72;
    }

LABEL_108:
    v105 = 0;
    goto LABEL_109;
  }

  if (*(v102 + 296) <= 0.0)
  {
    goto LABEL_108;
  }

LABEL_72:
  v103 = [v5 stack];
  v104 = [v103 effectiveDisplayModeForItemInCurrentStack_];

  v105 = sub_188B3B828(v104);
LABEL_109:
  v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle] = v105 & 1;
  v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle] = 0;
  v127 = [v5 navigationBar];
  v128 = [v127 _privateDelegate];

  if (v128)
  {
    v140 = 0uLL;
    v139[0] = 0;
    v139[1] = 0;
    if ([v128 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v129 = [v5 navigationBar];
      v130 = [v128 _navigationBar_getContentOffsetOfObservedScrollViewIfApplicable_velocity_];

      swift_unknownObjectRelease_n();

      v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_observedScrollViewOffsetIsApplicable] = v130;
      *&v23[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_startingContentOffsetForObservedScrollView] = v140;
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1890D4E94(void *a1)
{
  v2 = [a1 stack];
  v3 = [v2 topItem];

  v4 = [v3 _bottomPalette];
  v5 = [a1 navigationBar];
  [v5 _contentMargin];
  v7 = v6;

  sub_188B2C014(0, v4, v7);
  v8 = [a1 stack];
  v9 = [v8 topItem];

  v10 = [a1 stack];
  v11 = [v10 backItem];

  sub_188B2A9B4(v9, v11, 0);
}

void sub_1890D4FF8(char *a1)
{
  v2 = [a1 navigationBar];
  [v2 _sendNavigationBarAnimateTransition];

  v3 = *&a1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext];
  if (v3)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x4A8);
    v5 = v3;
    v4();
  }

  sub_188B4C1CC();
  v6 = [a1 navigationBar];
  [v6 layoutIfNeeded];
}

void sub_1890D50F0(int a1, id a2, void (*a3)(uint64_t, id), uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = [a2 cancelledTransition];
  if (a3)
  {
LABEL_3:
    a3(1, a2);
  }

LABEL_4:
  if ((v8 & 1) == 0)
  {
    v9 = [a5 stack];
    v10 = [v9 topEntry];

    if (v10)
    {
      v11 = [v10 item];

      if (v11)
      {
        sub_188BA1244(v11);
      }
    }
  }
}

uint64_t sub_1890D520C(char *a1, uint64_t a2)
{
  v4 = [a1 stack];
  v5 = [v4 topItem];

  v6 = [v5 _topPalette];
  v7 = [a1 stack];
  v8 = [v7 topItem];

  v9 = [v8 _bottomPalette];
  v10 = [a1 navigationBar];
  [v10 _contentMargin];
  v12 = v11;

  sub_188B2C014(v6, v9, v12);
  v13 = [a1 stack];
  v14 = [v13 topItem];

  v15 = [a1 stack];
  v16 = [v15 backItem];

  sub_188B2A9B4(v14, v16, 0);
  v17 = [a1 navigationBar];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_188B2D758(v19, v21, v23, v25);
  sub_188B2D280();
  sub_1890CAFA8(*(a2 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout), 1);
  v26 = *&a1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1890DAE8C;
  *(v29 + 24) = v28;
  v33[4] = sub_188E3FE50;
  v33[5] = v29;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = sub_188A4A968;
  v33[3] = &block_descriptor_313;
  v30 = _Block_copy(v33);
  v31 = v26;

  [(UITraitCollection *)v27 _performWithFallbackEnvironment:v31 block:v30];
  _Block_release(v30);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  return result;
}

void sub_1890D5574(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1890DAC80;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_188A4A8F0;
  v6[3] = &block_descriptor_296;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.2];
  _Block_release(v4);
}

void sub_1890D5668(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1890DAC88;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_188A4A8F0;
  v6[3] = &block_descriptor_302;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.93 animations:0.07];
  _Block_release(v4);
}

BOOL sub_1890D5760(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext);
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x4A8);
    v3 = v1;
    v2();
  }

  return v1 == 0;
}

void sub_1890D57E4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = [a1 cancelledTransition] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  sub_1890D11F0(v3);
  v4 = [a2 navigationBar];
  [v4 setNeedsLayout];
}

uint64_t sub_1890D5868(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t (*a5)(void))
{
  if (a3)
  {

    a3(a1, a2 & 1);
    sub_188A55B8C(a3);
  }

  return a5();
}

void sub_1890D58E0()
{
  if ((v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_providesExtraSpaceForExcessiveLineHeights] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_providesExtraSpaceForExcessiveLineHeights] = 1;
    v1 = [v0 stack];
    v2 = [v1 topItem];

    v3 = [v0 stack];
    v4 = [v3 backItem];

    sub_188B2A9B4(v2, v4, 1);
    v5 = [v0 navigationBar];
    [v5 invalidateIntrinsicContentSize];

    v6 = [v0 navigationBar];
    [v6 setNeedsLayout];

    v7 = [v0 navigationBar];
    [v7 _sendNavigationBarResize];
  }
}

id sub_1890D5BB0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [v3 stack];
  v7 = [v6 state];

  if (v7)
  {
    return 0;
  }

  v9 = [v3 stack];
  v10 = [v9 topItem];

  if (!v10)
  {
    return 0;
  }

  sub_188A34624(0, &unk_1ED48CFF8);
  v11 = a2;
  v12 = sub_18A4A7C88();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    v13 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v14 = sub_188B2A31C();

    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = [v14 buttonGroup];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 isHidden];

      if (!v17)
      {
        goto LABEL_11;
      }
    }
  }

  v14 = 0;
LABEL_11:
  v18 = _UIPopoverPresentationControllerSourceItemObscuredSource(v14);
  swift_unknownObjectRelease();
  return v18;
}

void sub_1890D5D8C(void *a1, char a2)
{
  v3 = v2;
  v6 = [v3 stack];
  v7 = [v6 state];

  if (!v7)
  {
    v8 = [v3 stack];
    v9 = [v8 topItem];

    if (v9)
    {
      sub_188A34624(0, &unk_1ED48CFF8);
      v10 = a1;
      v19 = v9;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        v12 = [v3 navigationBar];
        v13 = [v12 _effectiveDelegate];

        if (v13)
        {
          if ([v13 respondsToSelector_])
          {
            swift_unknownObjectRetain();
            v14 = [v3 navigationBar];
            [v13 _navigationBar_topItemUpdatedContentLayout_];

            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        v15 = [v3 stack];
        v16 = [v15 backItem];

        sub_188B2A9B4(v9, v16, a2 & 1);
        v17 = *&v3[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
        if (a2)
        {
          v17[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] = 1;
        }

        sub_188AED2B0(__src);
        memcpy(__dst, &v17[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
        memcpy(&v17[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);
        v18 = v17;
        sub_188A3F5FC(__dst, &unk_1EA9362C0);
        [v18 setNeedsLayout];
      }

      else
      {
      }
    }
  }
}

void sub_1890D6048(void *a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 state];

  if (v5)
  {
    return;
  }

  v6 = [v2 stack];
  v7 = [v6 topItem];

  if (!v7)
  {
    return;
  }

  sub_188A34624(0, &unk_1ED48CFF8);
  v8 = a1;
  v9 = sub_18A4A7C88();

  if ((v9 & 1) == 0)
  {
    return;
  }

  v10 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView;
  v11 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView];
  if (v11)
  {
    v12 = [v11 prompt];
    v13 = sub_18A4A7288();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v8 prompt];
  if (v16)
  {
    v17 = v16;
    v18 = sub_18A4A7288();
    v20 = v19;

    if (!v15)
    {
LABEL_19:
      v22 = *&v2[v10];
      if (v22)
      {
        v23 = v22;
        v24 = sub_18A4A7258();

        [v23 setPrompt_];

        v25 = *&v2[v10];
        if (!v25)
        {
LABEL_22:
          v26 = [v2 navigationBar];
          [v26 _sendResizeForPromptChange];

          v27 = [v2 navigationBar];
          [v27 _accessibility_navigationBarContentsDidChange];

          return;
        }
      }

      else
      {

        v25 = *&v2[v10];
        if (!v25)
        {
          goto LABEL_22;
        }
      }

      [v25 layoutIfNeeded];
      goto LABEL_22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if (v13 == v18 && v15 == v20)
  {
  }

  else
  {
    v21 = sub_18A4A86C8();

    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }
  }
}

void sub_1890D640C(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 stack];
  v7 = [v4 topItem];

  if (v7)
  {
    sub_188A34624(0, &qword_1ED490230);
    if ((sub_18A4A7C88() & 1) != 0 && (v5 = [v2 navigationBar], v6 = objc_msgSend(v5, sel__privateDelegate), v5, v6))
    {
      if ([v6 respondsToSelector_])
      {
        [v6 _navigationItemDidUpdateToolbarAvoidsKeyboard_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1890D65D4(void *a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 topItem];

  if (v5)
  {
    sub_188A34624(0, &unk_1ED48CFF8);
    v6 = a1;
    v7 = sub_18A4A7C88();

    if (v7)
    {
      v8 = [v2 navigationBar];
      v9 = [v8 _privateDelegate];

      if (v9)
      {
        if ([v9 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v10 = [v2 navigationBar];
          [v9 _navigationBarWillRunAutomaticDeferredShowsScopeBar_];

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1890D67AC(void *a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 topItem];

  if (!v5)
  {
    return 0;
  }

  sub_188A34624(0, &unk_1ED48CFF8);
  v6 = a1;
  v7 = sub_18A4A7C88();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = [v2 navigationBar];
  v9 = [v8 _privateDelegate];

  if (!v9)
  {
    return 0;
  }

  if ([v9 respondsToSelector_])
  {
    v10 = [v9 _navigationItemShouldDeferSearchPresentationOrDismissalForScrollViewAnimation_];
  }

  else
  {
    v10 = 0;
  }

  swift_unknownObjectRelease();
  return v10;
}

void sub_1890D6938(void *a1)
{
  v2 = v1;
  v4 = [v2 stack];
  v5 = [v4 topItem];

  if (v5)
  {
    sub_188A34624(0, &unk_1ED48CFF8);
    v6 = a1;
    v7 = sub_18A4A7C88();

    if (v7)
    {
      v8 = [v2 navigationBar];
      v9 = [v8 _effectiveDelegate];

      if (v9)
      {
        if ([v9 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v10 = [v2 navigationBar];
          [v9 _navigationBar_topItemUpdatedSearchBarPlacementAllowsExternalIntegration_];

          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1890D6B88()
{
  v1 = [v0 stack];
  v2 = [v1 state];

  if (!v2)
  {
    v3 = [v0 stack];
    v8 = [v3 topItem];

    if (v8)
    {
      sub_188A34624(0, &qword_1ED490230);
      if (sub_18A4A7C88())
      {
        v4 = v8;
        v5 = [v0 stack];
        v6 = [v5 backItem];

        sub_188B2A9B4(v8, v6, 0);
        v7 = v6;
      }

      else
      {
        v7 = v8;
      }
    }
  }
}

void sub_1890D6D5C(void *a1)
{
  v2 = v1;
  v4 = [v1 stack];
  v5 = [v4 state];

  if (v5)
  {
    return;
  }

  v6 = [v2 stack];
  v18 = [v6 topItem];

  if (!v18)
  {
    return;
  }

  sub_188A34624(0, &qword_1ED490230);
  if ((sub_18A4A7C88() & 1) == 0 || (v7 = [v2 navigationBar], v8 = objc_msgSend(v7, sel__effectiveDelegate), v7, !v8))
  {
    v16 = v18;
LABEL_11:

    return;
  }

  v9 = [a1 _searchControllerIfAllowed];
  if (v9)
  {
    v10 = v9;
    if ([v8 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v11 = [v2 navigationBar];
      v12 = v18;
      [v8 _navigationBar_topItemUpdatedSearchBarPlacementAllowsToolbarIntegration_];

      swift_unknownObjectRelease();
    }

    v13 = v10;
    sub_188BE3534(v18, v10);

    v14 = v18;
    v15 = [v2 stack];
    v17 = [v15 backItem];

    sub_188B2A9B4(v18, v17, 0);
    swift_unknownObjectRelease();

    v16 = v17;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();
}

id sub_1890D7064(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 stack];
  v9 = [v8 transitionAssistant];

  if (!v9)
  {
    return 0;
  }

  if (![v9 interactive])
  {

    return 0;
  }

  if (a3 && (a2 == 0x7974696361706FLL && a3 == 0xE700000000000000 || (sub_18A4A86C8() & 1) != 0))
  {
    if (a1)
    {
      [a1 alpha];
      if (v10 >= 0.05)
      {
        if (qword_1EA931DD0 != -1)
        {
          swift_once();
        }

        v11 = qword_1EA9399A8;
      }

      else
      {
        if (qword_1EA931DC8 != -1)
        {
          swift_once();
        }

        v11 = qword_1EA9399A0;
      }

      goto LABEL_17;
    }

    v13 = [objc_opt_self() functionWithName_];
  }

  else
  {
    v13 = [objc_opt_self() functionWithName_];
  }

  v11 = v13;
LABEL_17:
  v14 = v11;

  return v14;
}

id sub_1890D7438(int a1, id a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = [a2 view];
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = sub_1890D74C8(v4);

      return v6;
    }
  }

  return v2;
}

id sub_1890D74C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 visualProvider];
  v3 = [v2 contentView];

  if (v3 && (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 imageView];
    if (v7 && (v8 = v7, v9 = [v7 isHidden], v8, (v9 & 1) == 0))
    {
      v10 = [v5 imageView];
    }

    else
    {
      v10 = [v5 titleLabel];
    }

    v3 = v10;
  }

  else
  {
  }

  return v3;
}

double sub_1890D7694(void *a1, uint64_t a2, void *a3, void *a4, double (*a5)(void))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = a5();

  return v11;
}

void sub_1890D7728(int a1, id a2)
{
  v2 = [a2 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAlpha_];
  }
}

void sub_1890D7794(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }
}

void sub_1890D77FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
    v5 = sub_188AEB244();

    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_barSections];

      if (v6 >> 62)
      {
LABEL_36:
        v7 = sub_18A4A7F68();
        if (v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
LABEL_5:
          v8 = 0;
          v9 = v6 & 0xC000000000000001;
          v25 = v6 + 32;
          v26 = v6 & 0xFFFFFFFFFFFFFF8;
          v28 = v7;
          v29 = v6;
          v27 = v6 & 0xC000000000000001;
          do
          {
            if (v9)
            {
              v10 = sub_188E49D3C(v8, v6);
              v11 = __OFADD__(v8, 1);
              v12 = v8 + 1;
              if (v11)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (v8 >= *(v26 + 16))
              {
                __break(1u);
                return;
              }

              v10 = *(v25 + 8 * v8);
              v11 = __OFADD__(v8, 1);
              v12 = v8 + 1;
              if (v11)
              {
                goto LABEL_35;
              }
            }

            v31 = v10;
            v6 = [v10 itemGroups];
            sub_188A34624(0, &unk_1ED48DBD0);
            v13 = sub_18A4A7548();

            v30 = v12;
            if (v13 >> 62)
            {
              v14 = sub_18A4A7F68();
              if (v14)
              {
LABEL_15:
                v15 = 0;
                while (1)
                {
                  if ((v13 & 0xC000000000000001) != 0)
                  {
                    v16 = sub_188E49AA8(v15, v13);
                  }

                  else
                  {
                    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_34;
                    }

                    v16 = *(v13 + 8 * v15 + 32);
                  }

                  v17 = v16;
                  v18 = v15 + 1;
                  if (__OFADD__(v15, 1))
                  {
                    break;
                  }

                  v19 = [v16 _customizationIdentifier];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = sub_18A4A7288();
                    v23 = v22;

                    if (v21 == a1 && v23 == a2)
                    {

                      goto LABEL_32;
                    }

                    v6 = sub_18A4A86C8();

                    if (v6)
                    {

LABEL_32:

                      return;
                    }
                  }

                  ++v15;
                  if (v18 == v14)
                  {
                    goto LABEL_6;
                  }
                }

                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else
            {
              v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v14)
              {
                goto LABEL_15;
              }
            }

LABEL_6:

            v6 = v29;
            v8 = v30;
            v9 = v27;
          }

          while (v30 != v28);
        }
      }
    }
  }
}

id sub_1890D7F48(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  sub_188EC0234(a1);

  v6 = [a2 _stackEntry];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isSearchActive];
    v9 = [(_UINavigationBarItemStackEntry *)v7 _typedStorage];
    if (v8)
    {
      v10 = sub_18901F25C();
    }

    else
    {
      v10 = sub_18901F250();
    }

    v11 = v10;

    if (v11)
    {
      v7 = *(v11 + 80);
      v12 = v7;

      if (v7)
      {
        v7 = [*&v12[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView] accessibilityTitleView];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  [a1 setLargeTitleView_];

  return [a1 setPromptView_];
}

void sub_1890D8080(void *a1)
{
  v2 = v1;
  v4 = [v2 navigationBar];
  v5 = [v4 _effectiveDelegate];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = [v6 _splitViewControllerEnforcingClass_]) != 0)
    {
      v8 = v7;
      v9 = [v7 primaryEdge];

      swift_unknownObjectRelease();
      if (v9 == 1)
      {
        v10 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
        v11 = a1;
        v12 = v10;
        sub_188EBE1B8(a1);
        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v13 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  v14 = a1;
  v12 = v13;
  sub_188EBDDA0(a1);
LABEL_8:

  v15 = [v2 navigationBar];
  [v15 _accessibility_navigationBarContentsDidChange];
}

id sub_1890D81E8(id a1)
{
  if (a1)
  {
    v2 = [a1 _resolvedImage];
    v3 = [a1 resolvedTitle];
    if (v3)
    {
      v4 = v3;
      sub_18A4A7288();
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v2 = 0;
  }

  v7 = [a1 customView];
  v8 = sub_18A4A7258();
  if (v6)
  {
    v9 = sub_18A4A7258();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() itemWithIdentifier:v8 icon:v2 name:v9 view:v7];

  v11 = [a1 tintColor];
  [v10 setTintColor_];

  if (a1)
  {
    v12 = [a1 isEnabled];
  }

  else
  {
    v12 = 0;
  }

  [v10 setEnabled_];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v17[4] = sub_1890DAF08;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_188BC2240;
  v17[3] = &block_descriptor_81_2;
  v14 = _Block_copy(v17);
  v15 = a1;

  [v10 setSourceViewProvider_];
  _Block_release(v14);
  return v10;
}

uint64_t sub_1890D8440(void *a1)
{
  v2 = sub_18A4A2858();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 _customizationIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_18A4A7288();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = [a1 _items];
  v13 = [v12 count];

  if (v13 < 2)
  {
    v21 = [a1 _items];
    v22 = [v21 firstObject];

    if (v22)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
    }

    aBlock = v49;
    v45 = v50;
    if (*(&v50 + 1))
    {
      sub_188A34624(0, &qword_1ED48E8C0);
      if (swift_dynamicCast())
      {
        v27 = v42[0];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      sub_188A3F5FC(&aBlock, &qword_1EA934050);
      v27 = 0;
    }

    v28 = sub_1890D81E8(v27);

    v29 = v28;
    goto LABEL_31;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v14 = [a1 _items];
  sub_18A4A7C08();

  sub_18A4A2848();
  if (!*(&v45 + 1))
  {
LABEL_17:
    (*(v3 + 8))(v6, v2);
    v23 = sub_18A4A7258();

    v24 = [a1 representativeItem];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 image];
    }

    else
    {
      v26 = 0;
    }

    v30 = [a1 representativeItem];
    if (!v30 || (v31 = v30, v32 = [v30 title], v31, !v32))
    {
      v32 = 0;
    }

    v33 = objc_opt_self();
    sub_188A34624(0, &unk_1EA934168);
    v34 = sub_18A4A7518();

    v35 = [v33 groupWithWithIdentifier:v23 icon:v26 name:v32 items:v34];

    v29 = v35;
    [v29 setCollapsed_];
    v36 = [a1 representativeItem];
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v46 = sub_1890DAAD8;
    v47 = v37;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v45 = sub_188BC2240;
    *(&v45 + 1) = &block_descriptor_74_3;
    v38 = _Block_copy(&aBlock);

    [v29 setSourceViewProvider_];
    _Block_release(v38);
LABEL_31:
    [v29 setRemovable_];

    return v29;
  }

  v39 = v3;
  v40 = v2;
  v41 = a1;
  v15 = 0;
  while (1)
  {
    sub_188A55538(&aBlock, &v49);
    v42[0] = v9;
    v42[1] = v11;

    MEMORY[0x18CFE22D0](46, 0xE100000000000000);
    v43 = v15;
    v16 = sub_18A4A8618();
    MEMORY[0x18CFE22D0](v16);

    sub_188A55598(&v49, v42);
    sub_188A34624(0, &qword_1ED48E8C0);
    if (swift_dynamicCast())
    {
      v17 = v43;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_1890D81E8(v17);

    v19 = v18;
    MEMORY[0x18CFE2450]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();

    result = __swift_destroy_boxed_opaque_existential_0Tm(&v49);
    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_18A4A2848();
    ++v15;
    if (!*(&v45 + 1))
    {
      v2 = v40;
      a1 = v41;
      v3 = v39;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1890D8A58(void *a1)
{
  v2 = v1;
  if (!*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext])
  {
    v4 = [a1 superview];
    v5 = [v1 navigationBar];
    v6 = v5;
    if (v4)
    {
      sub_188A34624(0, &qword_1ED48F680);
      v7 = sub_18A4A7C88();

      if (v7)
      {
        [a1 removeFromSuperview];
      }
    }

    else
    {
    }

    v8 = [v2 navigationBar];
    [v8 invalidateIntrinsicContentSize];

    v9 = [v2 navigationBar];
    [v9 setNeedsLayout];

    v10 = [v2 navigationBar];
    [v10 _sendNavigationBarResize];
  }

  v11 = [v2 navigationBar];
  [v11 setNeedsLayout];
}

void sub_1890D8BE0()
{
  if (!*(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext))
  {
    v9 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView);
    if (v1)
    {
      [v1 floatingTabBarContentFrameInCoordinateSpace_];
    }

    else
    {
      v6 = v9;
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
    }

    v7 = &v9[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
    v8 = *&v9[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 16];
    v10 = *&v9[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
    v11[0] = v8;
    *(v11 + 13) = *&v9[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 29];
    *(v7 + 1) = v2;
    *(v7 + 2) = v3;
    *(v7 + 3) = v4;
    *(v7 + 4) = v5;
    sub_188B35AD4(&v10);
  }
}

void sub_1890D8CCC()
{
  v1 = v0;
  v2 = [v0 stack];
  v3 = [v2 topEntry];

  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = [v3 isSearchActive];
  v5 = [(_UINavigationBarItemStackEntry *)v3 _typedStorage];
  v6 = v4 ? sub_18901F25C() : sub_18901F250();
  v7 = v6;

  if (!v7)
  {
    goto LABEL_18;
  }

  sub_188B38ED0(*(v7 + 224));
  swift_beginAccess();
  v8 = *(v7 + 344);
  v9 = v8;
  if (!v8)
  {
    v9 = *(v7 + 352);
    v10 = v9;
  }

  swift_beginAccess();
  v11 = *(v7 + 232);
  v12 = v8;

  sub_188B3A13C(v13, v9, v11);

  swift_beginAccess();
  v14 = *(v7 + 400);
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_17:
    *(v7 + 40) = 1;
    sub_188B386EC();

LABEL_18:
    v21 = [v1 navigationBar];
    [v21 invalidateIntrinsicContentSize];

    v22 = [v1 navigationBar];
    [v22 setNeedsLayout];

    v23 = [v1 navigationBar];
    [v23 _sendNavigationBarResize];

    return;
  }

  v15 = sub_18A4A7F68();
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v15 >= 1)
  {

    v16 = 0;
    v17 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = sub_188E4A488(v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      ++v16;
      v19 = &v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v19 = v17;
      *(v19 + 8) = 0;
      v20 = *&v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v17 = v17 + v20;
    }

    while (v15 != v16);

    goto LABEL_17;
  }

  __break(1u);
}

id sub_1890D8F70()
{
  v1 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView];
  }

  else
  {
    v4 = [v0 navigationBar];
    v5 = [v4 window];

    if (v5)
    {
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v7 = 0.0;
      v9 = 0.0;
      v11 = 0.0;
      v13 = 0.0;
    }

    v14 = [objc_allocWithZone(UIView) initWithFrame_];
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    [v3 setAutoresizingMask_];
    v16 = [*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView] tintColor];
    [v3 setTintColor_];

    if ([objc_opt_self() _isBarCustomizationDebugEnabled])
    {
      v17 = [v3 layer];
      v18 = [objc_opt_self() redColor];
      v19 = [v18 CGColor];

      [v17 setBorderColor_];
      v20 = [v3 layer];
      [v20 setBorderWidth_];
    }

    v21 = [v0 navigationBar];
    v22 = [v21 window];

    if (v22)
    {
      [v22 addSubview_];
    }

    sub_188B4E6A0(v14);

    v2 = 0;
  }

  v23 = v2;
  return v3;
}

double sub_1890D9200()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  v3 = sub_188B2A31C();
  if (!v3)
  {

    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
  }

LABEL_7:
  v7 = sub_1890D74C8(v6);

  if (!v7)
  {
    return 0.0;
  }

  [v7 bounds];
  [v7 convertRect:*(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView) toView:?];
  v9 = v8;

  return v9;
}

double sub_1890D9324()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 navigationBar];
  [v1 convertRect:v10 toCoordinateSpace:{v3, v5, v7, v9}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [v0 navigationBar];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v34.origin.x = v21;
  v34.origin.y = v23;
  v34.size.width = v25;
  v34.size.height = v27;
  Width = CGRectGetWidth(v34);
  v35.origin.x = v12;
  v35.origin.y = v14;
  v35.size.width = v16;
  v35.size.height = v18;
  v29 = CGRectGetHeight(v35) + 48.0;
  v30 = [v0 navigationBar];
  [v30 convertRect:*&v0[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView] toView:{0.0, -24.0, Width, v29}];
  v32 = v31;

  return v32;
}

void sub_1890D94C8(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView;
  v6 = *(v2 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  v103 = sub_188AEB244();

  if (!v103)
  {
    return;
  }

  v109 = a1;
  if ((a2 & 1) == 0)
  {
    v50 = [a1 visibleItems];
    sub_188A34624(0, &unk_1EA934168);
    v51 = sub_18A4A7548();

    if (v51 >> 62)
    {
      v52 = sub_18A4A7F68();
      v108 = v5;
      if (!v52)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v108 = v5;
      if (!v52)
      {
        goto LABEL_91;
      }
    }

    if (v52 < 1)
    {
      __break(1u);
      goto LABEL_133;
    }

    v53 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v55 = sub_188E4B044(v53, v51);
      }

      else
      {
        v55 = *(v51 + 8 * v53 + 32);
      }

      v56 = v55;
      v57 = [v55 identifier];
      if (v57)
      {
        v58 = v57;
        v59 = sub_18A4A7288();
        v61 = v60;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_188C8D8B4(0, *(v54 + 2) + 1, 1, v54);
        }

        v63 = *(v54 + 2);
        v62 = *(v54 + 3);
        if (v63 >= v62 >> 1)
        {
          v54 = sub_188C8D8B4((v62 > 1), v63 + 1, 1, v54);
        }

        *(v54 + 2) = v63 + 1;
        v64 = &v54[16 * v63];
        *(v64 + 4) = v59;
        *(v64 + 5) = v61;
        a1 = v109;
      }

      else
      {
      }

      ++v53;
    }

    while (v52 != v53);
LABEL_91:

    v65 = [a1 additionalItems];
    v66 = sub_18A4A7548();

    if (v66 >> 62)
    {
      v67 = sub_18A4A7F68();
      if (!v67)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v67)
      {
        goto LABEL_107;
      }
    }

    if (v67 >= 1)
    {
      v68 = 0;
      v69 = v66 & 0xC000000000000001;
      v70 = MEMORY[0x1E69E7CC0];
      v111 = v66;
      do
      {
        if (v69)
        {
          v71 = sub_188E4B044(v68, v66);
        }

        else
        {
          v71 = *(v66 + 8 * v68 + 32);
        }

        v72 = v71;
        v73 = [v71 identifier];
        if (v73)
        {
          v74 = v73;
          v75 = sub_18A4A7288();
          v77 = v76;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_188C8D8B4(0, *(v70 + 2) + 1, 1, v70);
          }

          v79 = *(v70 + 2);
          v78 = *(v70 + 3);
          if (v79 >= v78 >> 1)
          {
            v70 = sub_188C8D8B4((v78 > 1), v79 + 1, 1, v70);
          }

          *(v70 + 2) = v79 + 1;
          v80 = &v70[16 * v79];
          *(v80 + 4) = v75;
          *(v80 + 5) = v77;
          a1 = v109;
          v66 = v111;
        }

        else
        {
        }

        ++v68;
      }

      while (v67 != v68);
LABEL_107:

      v112 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer;
      v81 = *&v103[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
      if (v81)
      {
        v82 = v81;
        v83 = sub_18A4A7518();

        v84 = sub_18A4A7518();

        [(_UIButtonBarGroupOrderer *)v82 setIncludedIdentifiers:v83 excludedIdentifiers:v84];
      }

      else
      {
      }

      [*(v113 + v108) layoutIfNeeded];
      v85 = [a1 visibleItems];
      v86 = sub_18A4A7548();

      if (v86 >> 62)
      {
        v87 = sub_18A4A7F68();
        if (v87)
        {
LABEL_112:
          if (v87 >= 1)
          {
            v88 = 0;
            do
            {
              if ((v86 & 0xC000000000000001) != 0)
              {
                v90 = sub_188E4B044(v88, v86);
              }

              else
              {
                v90 = *(v86 + 8 * v88 + 32);
              }

              v91 = v90;
              v92 = [v90 identifier];
              if (v92)
              {
                v93 = v92;
                v94 = sub_18A4A7288();
                v96 = v95;
              }

              else
              {
                v94 = 0;
                v96 = 0;
              }

              sub_1890D77FC(v94, v96);
              v98 = v97;

              if (v98)
              {
                v89 = [v98 isDisplayingRepresentativeItem];
              }

              else
              {
                v89 = 0;
              }

              ++v88;
              [v91 setCollapsed_];
            }

            while (v87 != v88);
            goto LABEL_125;
          }

LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          return;
        }
      }

      else
      {
        v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v87)
        {
          goto LABEL_112;
        }
      }

LABEL_125:

      v99 = *&v103[v112];
      if (v99)
      {
        [(_UIButtonBarGroupOrderer *)v99 save];
      }

      return;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v7 = *&v103[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer];
  if (v7)
  {
    [(_UIButtonBarGroupOrderer *)v7 reset];
  }

  v8 = *(v113 + v5);
  *&v8[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarAlpha] = 0x3FF0000000000000;
  [v8 layoutIfNeeded];

  v10 = sub_188B48ADC(v9);

  if (v10 >> 62)
  {
    goto LABEL_86;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
LABEL_7:
    v12 = 0;
    v106 = v10 & 0xC000000000000001;
    v100 = v10 + 32;
    v101 = v10 & 0xFFFFFFFFFFFFFF8;
    v104 = v11;
    v105 = v10;
    while (1)
    {
      if (v106)
      {
        v13 = sub_188E49AA8(v12, v10);
      }

      else
      {
        if (v12 >= *(v101 + 16))
        {
          goto LABEL_85;
        }

        v13 = *(v100 + 8 * v12);
      }

      v14 = v13;
      v15 = __OFADD__(v12, 1);
      v16 = v12 + 1;
      if (v15)
      {
        goto LABEL_83;
      }

      v17 = [v13 _isRemovableItem] ^ 1;
      v110 = v14;
      v107 = v16;
      if (v17)
      {
LABEL_42:
        v10 = 1;
        goto LABEL_45;
      }

      v102 = v17;
      v18 = [a1 visibleItems];
      sub_188A34624(0, &unk_1EA934168);
      v10 = sub_18A4A7548();

      if (!(v10 >> 62))
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          break;
        }

        goto LABEL_44;
      }

      v19 = sub_18A4A7F68();
      if (v19)
      {
        break;
      }

LABEL_44:

      v10 = 0;
LABEL_45:
      if ([v14 isDisplayingRepresentativeItem])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_18A64B710;
        v36 = [v14 representativeItem];
        if (!v36)
        {
          goto LABEL_135;
        }

        *(v35 + 32) = v36;
      }

      else
      {
        v37 = [v14 barButtonItems];
        sub_188A34624(0, &qword_1ED48E8C0);
        v35 = sub_18A4A7548();
      }

      if (v35 >> 62)
      {
        v38 = sub_18A4A7F68();
        if (v38)
        {
LABEL_51:
          if (v38 < 1)
          {
            goto LABEL_84;
          }

          v39 = 0;
          do
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v43 = sub_188E49ABC(v39, v35);
            }

            else
            {
              v43 = *(v35 + 8 * v39 + 32);
            }

            v44 = v43;
            v45 = [v43 view];
            if (v45)
            {
              v46 = v45;
              [v45 setAlpha_];
            }

            v47 = [a1 endAnimationCoordinator];
            v48 = swift_allocObject();
            *(v48 + 16) = v44;
            if (v10)
            {
              v118 = sub_1890DAA28;
              v119 = v48;
              aBlock = MEMORY[0x1E69E9820];
              v115 = 1107296256;
              v116 = sub_188BFF280;
              v117 = &block_descriptor_41_4;
              v40 = _Block_copy(&aBlock);
              v49 = v44;

              v42 = &selRef_addCompletion_;
            }

            else
            {
              v118 = sub_1890DAA20;
              v119 = v48;
              aBlock = MEMORY[0x1E69E9820];
              v115 = 1107296256;
              v116 = sub_188A4A8F0;
              v117 = &block_descriptor_35_5;
              v40 = _Block_copy(&aBlock);
              v41 = v44;

              v42 = &selRef_addAnimations_;
            }

            ++v39;
            [v47 *v42];

            _Block_release(v40);
            swift_unknownObjectRelease();
          }

          while (v38 != v39);
        }
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38)
        {
          goto LABEL_51;
        }
      }

      v10 = v105;
      v12 = v107;
      if (v107 == v104)
      {

        return;
      }
    }

    v20 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v21 = sub_188E4B044(v20, v10);
      }

      else
      {
        if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v21 = *(v10 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v11 = sub_18A4A7F68();
        if (!v11)
        {
          goto LABEL_87;
        }

        goto LABEL_7;
      }

      v24 = [v14 _customizationIdentifier];
      if (v24)
      {
        v25 = v24;
        v26 = sub_18A4A7288();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v22 identifier];
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = sub_18A4A7288();
      v33 = v32;

      if (v28)
      {
        v14 = v110;
        if (!v33)
        {
          goto LABEL_19;
        }

        if (v26 == v31 && v28 == v33)
        {

LABEL_41:

          a1 = v109;
          [v22 setCollapsed_];

          goto LABEL_42;
        }

        v34 = sub_18A4A86C8();

        if (v34)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v14 = v110;
        if (!v33)
        {
          goto LABEL_41;
        }
      }

LABEL_20:
      a1 = v109;
      ++v20;
      if (v23 == v19)
      {

        v10 = v102;
        goto LABEL_45;
      }
    }

    v14 = v110;
    if (!v28)
    {
      goto LABEL_41;
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_87:
}

void sub_1890DA134(void *a1)
{
  if ([a1 context])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = [v1 _renameHandler];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [v2 associatedItem];
  if (!v3)
  {
    if (!v1)
    {
      return;
    }

    v4 = v1;
LABEL_14:

    __break(1u);
    return;
  }

  v4 = v3;
  if (!v1)
  {
    goto LABEL_14;
  }

  if (v4 != v1)
  {
    __break(1u);
LABEL_10:
  }
}

void *sub_1890DA218(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession);
  if (!v5)
  {
    goto LABEL_8;
  }

  if (v5 != result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1890DA134(result);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_18A4A7258();
  v10 = [v8 _willBeginRenamingWithTitle_selectedRange_];

  v11 = sub_18A4A7288();
  return v11;
}

uint64_t sub_1890DA2E8(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession);
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v2 != result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1890DA134(result);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_18A4A7258();
  v6 = [v4 _shouldEndRenamingWithTitle_];

  return v6;
}

void sub_1890DA37C(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession];
  if (!v2)
  {
    goto LABEL_19;
  }

  if (v2 != a1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  sub_1890DA134(a1);
  if (v4)
  {
    v5 = v4;
    v6 = [v1 stack];
    v7 = [v6 topEntry];

    if (v7 && (v8 = [v7 item], v7, v8))
    {
      v11 = v8;
      v9 = [a1 title];
      if (!v9)
      {
        sub_18A4A7288();
        v9 = sub_18A4A7258();
      }

      [v11 setTitle_];
    }

    else
    {
      v11 = 0;
    }

    v10 = [a1 title];
    if (!v10)
    {
      sub_18A4A7288();
      v10 = sub_18A4A7258();
    }

    [v5 _didEndRenamingWithTitle_];

    sub_1890CA560();
  }

  else
  {

    sub_1890CA560();
  }
}

void sub_1890DA53C(void *a1)
{
  sub_1890DA134(a1);
  v16 = v3;
  if (v3)
  {
    v4 = v3;
    v5 = [a1 title];
    if (!v5)
    {
      sub_18A4A7288();
      v5 = sub_18A4A7258();
    }

    [v4 _didEndRenamingWithTitle_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession);
  *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession) = 0;

  v7 = *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView);
  v8 = *&v7[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession];
  *&v7[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession] = 0;
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v21 = sub_1890DAE90;
    v22 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_188A4A8F0;
    v20 = &block_descriptor_22_0;
    v11 = _Block_copy(&aBlock);
    v12 = v7;

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v21 = sub_1890DAF04;
    v22 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_188ABD010;
    v20 = &block_descriptor_29_2;
    v14 = _Block_copy(&aBlock);
    v15 = v12;

    [v9 animateWithDuration:4 delay:v11 options:v14 animations:0.3 completion:0.0];
    _Block_release(v14);
    _Block_release(v11);
  }

  else
  {
  }
}

void sub_1890DA7CC(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession];
  if (!v2)
  {
    goto LABEL_15;
  }

  if (v2 != a1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v4 = [v1 stack];
  v5 = [v4 topEntry];

  if (v5)
  {
    v6 = [v5 item];

    if (v6)
    {
      v5 = v6;
      sub_18A4A28B8();
      v7 = sub_18A4A7258();

      v8 = [v7 stringByDeletingPathExtension];

      if (!v8)
      {
        sub_18A4A7288();
        v8 = sub_18A4A7258();
      }

      [v5 setTitle_];
    }

    else
    {
      v5 = 0;
    }
  }

  sub_1890DA134(a1);
  v12 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = sub_18A4A28C8();
    [v10 _fileRenameDidEndWithFinalURL_];
  }

  sub_1890CA560();
}

void sub_1890DA970(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_titleRenamerSession);
  if (!v2)
  {
    goto LABEL_9;
  }

  if (v2 != a1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  sub_1890DA134(a1);
  v6 = v3;
  if (v3)
  {
    v4 = v3;
    v5 = sub_18A4A27C8();
    [v4 _fileRenameDidFailWithError_];
  }

  sub_1890CA560();
}

unint64_t sub_1890DAA30()
{
  result = qword_1EA930810;
  if (!qword_1EA930810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930810);
  }

  return result;
}

id sub_1890DAB10()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  if (result)
  {
    result = [result setActive_];
  }

  if (v2)
  {

    return [v2 setSearchActive_];
  }

  return result;
}

id sub_1890DAC90()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_weeTitleLabel);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t sub_1890DACB4(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

void sub_1890DAD2C()
{
  v1 = *(v0 + 24);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x498))();
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext);
  *(v1 + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_transitionContext) = 0;
}

unint64_t sub_1890DADAC()
{
  result = qword_1EA93C778;
  if (!qword_1EA93C778)
  {
    sub_188A34624(255, &unk_1ED48CFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93C778);
  }

  return result;
}

void __swiftcall _UICanvasFeedbackGenerator.init()(_UICanvasFeedbackGenerator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UICanvasFeedbackGenerator.init(coordinateSpace:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoordinateSpace_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v3.super_class = _UICanvasFeedbackGenerator;
  v1 = objc_msgSendSuper2(&v3, sel_initWithCoordinateSpace_, a1);
  swift_unknownObjectRelease();
  return v1;
}

id _UICanvasFeedbackGenerator.init(configuration:coordinateSpace:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 coordinateSpace:a2];

  swift_unknownObjectRelease();
  return v3;
}

{
  v5.super_class = _UICanvasFeedbackGenerator;
  v3 = objc_msgSendSuper2(&v5, sel_initWithConfiguration_coordinateSpace_, a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

id _UICanvasFeedbackGenerator.init(__view:)(void *a1)
{
  v4.super_class = _UICanvasFeedbackGenerator;
  v2 = objc_msgSendSuper2(&v4, sel_initWithView_, a1);

  return v2;
}

void __swiftcall _UICanvasFeedbackGenerator.init(configuration:view:)(_UICanvasFeedbackGenerator *__return_ptr retstr, _UIFeedbackGeneratorConfiguration *configuration, UIView_optional *view)
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:configuration view:view];
}

id _UICanvasFeedbackGenerator.init(configuration:view:)(void *a1, void *a2)
{
  v6.super_class = _UICanvasFeedbackGenerator;
  v4 = objc_msgSendSuper2(&v6, sel_initWithConfiguration_view_, a1, a2);

  return v4;
}

id _UICanvasFeedbackGenerator.init(configuration:)(void *a1)
{
  v4.super_class = _UICanvasFeedbackGenerator;
  v2 = objc_msgSendSuper2(&v4, sel_initWithConfiguration_, a1);

  return v2;
}

unint64_t type metadata accessor for _UICanvasFeedbackGenerator()
{
  result = qword_1EA93C7E0;
  if (!qword_1EA93C7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93C7E0);
  }

  return result;
}

id static UITextFormattingViewControllerComponent.component(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(UITextFormattingViewControllerComponent);

  return [v4 initWithComponentKey:a1 preferredSize:a2];
}

id static UITextFormattingViewControllerComponentGroup.group(_:)()
{
  v0 = objc_allocWithZone(UITextFormattingViewControllerComponentGroup);
  sub_188A34624(0, &qword_1EA937FD8);
  v1 = sub_18A4A7518();
  v2 = [v0 initWithComponents_];

  return v2;
}

id static UITextFormattingViewControllerComponentKey._textAnimation(_:)()
{
  v0 = sub_18A4A7258();
  v1 = _UITextFormattingViewControllerComponentKeyForAnimation(v0);

  return v1;
}

id static UITextFormattingViewControllerComponent.customComponent(_:_:title:accessibilityHint:systemImageName:textAnimationName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v13 = a10;
  v14 = sub_18A4A7258();
  v15 = sub_18A4A7258();
  if (a8)
  {
    a8 = sub_18A4A7258();
  }

  if (a10)
  {
    v13 = sub_18A4A7258();
  }

  v16 = [objc_allocWithZone(_UITextFormattingViewControllerCustomComponent) initWithComponentKey:a1 preferredSize:a2 title:v14 accessibilityHint:v15 systemImageName:a8 textAnimationName:v13];

  return v16;
}

id static UITextFormattingViewControllerComponent.customComponent(_:_:title:accessibilityHint:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_18A4A7258();
  v12 = sub_18A4A7258();
  if (a8)
  {
    a8 = sub_18A4A7258();
  }

  v13 = [objc_allocWithZone(_UITextFormattingViewControllerCustomComponent) initWithComponentKey:a1 preferredSize:a2 title:v11 accessibilityHint:v12 systemImageName:a8];

  return v13;
}

id static UITextFormattingViewControllerComponent.customComponent(_:_:title:accessibilityHint:systemImageName:subcomponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v12 = a9;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  if (a8)
  {
    a8 = sub_18A4A7258();
  }

  if (a9)
  {
    sub_188A34624(0, &qword_1EA93A080);
    v12 = sub_18A4A7518();
  }

  v15 = [objc_allocWithZone(_UITextFormattingViewControllerCustomComponent) initWithComponentKey:a1 preferredSize:a2 title:v13 accessibilityHint:v14 systemImageName:a8 subcomponents:v12];

  return v15;
}

__CFString *UITextFormattingViewControllerComponentKey._parentComponentKey.getter()
{
  v0 = sub_18A4A7288();
  v2 = v1;
  if (v0 == sub_18A4A7288() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_18A4A86C8();

  if ((v5 & 1) == 0)
  {
    v7 = sub_18A4A7288();
    v9 = v8;
    if (v7 != sub_18A4A7288() || v9 != v10)
    {
      v12 = sub_18A4A86C8();

      if (v12)
      {
        goto LABEL_6;
      }

      v13 = sub_18A4A7288();
      v15 = v14;
      if (v13 != sub_18A4A7288() || v15 != v16)
      {
        v20 = sub_18A4A86C8();

        if (v20)
        {
          goto LABEL_6;
        }

        v21 = sub_18A4A7288();
        v23 = v22;
        if (v21 != sub_18A4A7288() || v23 != v24)
        {
          v25 = sub_18A4A86C8();

          if (v25)
          {
            goto LABEL_6;
          }

          v26 = sub_18A4A7288();
          v28 = v27;
          if (v26 == sub_18A4A7288() && v28 == v29)
          {
            goto LABEL_24;
          }

          v30 = sub_18A4A86C8();

          if (v30)
          {
LABEL_26:
            v6 = UITextFormattingViewControllerTextAlignmentAndJustificationComponentKey;
            goto LABEL_16;
          }

          v31 = sub_18A4A7288();
          v33 = v32;
          if (v31 != sub_18A4A7288() || v33 != v34)
          {
            v35 = sub_18A4A86C8();

            if (v35)
            {
              goto LABEL_26;
            }

            v36 = sub_18A4A7288();
            v38 = v37;
            if (v36 != sub_18A4A7288() || v38 != v39)
            {
              v40 = sub_18A4A86C8();

              if (v40)
              {
                goto LABEL_26;
              }

              v41 = sub_18A4A7288();
              v43 = v42;
              if (v41 != sub_18A4A7288() || v43 != v44)
              {
                v45 = sub_18A4A86C8();

                if ((v45 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_26;
              }
            }
          }

LABEL_24:
          v6 = UITextFormattingViewControllerTextAlignmentAndJustificationComponentKey;
          goto LABEL_15;
        }
      }
    }

LABEL_14:
    v6 = UITextFormattingViewControllerFontAttributesComponentKey;
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  v6 = UITextFormattingViewControllerFontAttributesComponentKey;
LABEL_16:
  v17 = *v6;
  v18 = v17;
  return v17;
}

uint64_t UIMutableTraits._barButtonItemMetrics.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return (*(a3 + 16))(v6, &type metadata for _UIBarButtonItemMetricsTraitDefinition, &type metadata for _UIBarButtonItemMetricsTraitDefinition, &protocol witness table for _UIBarButtonItemMetricsTraitDefinition, a2, a3);
}

double static _UIBarButtonItemMetricsTraitDefinition.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void (*UIMutableTraits._barButtonItemMetrics.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  (*(a3 + 8))(&type metadata for _UIBarButtonItemMetricsTraitDefinition, &type metadata for _UIBarButtonItemMetricsTraitDefinition, &protocol witness table for _UIBarButtonItemMetricsTraitDefinition, a2, a3);
  return sub_1890DBDF8;
}

void sub_1890DBDF8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  *v1 = *(*a1 + 40);
  v1[1] = v5;
  *(v1 + 32) = v2;
  (*(v3 + 16))(v1, &type metadata for _UIBarButtonItemMetricsTraitDefinition, &type metadata for _UIBarButtonItemMetricsTraitDefinition, &protocol witness table for _UIBarButtonItemMetricsTraitDefinition, v4);

  free(v1);
}

uint64_t sub_1890DBE94()
{
  swift_unknownObjectWeakInit();

  return swift_unknownObjectWeakAssign();
}

BOOL sub_1890DBEC8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v1)
    {
      return 1;
    }

    goto LABEL_7;
  }

  if (!v1)
  {
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = sub_18A4A7248();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return (v2 & 1) != 0;
}

uint64_t sub_1890DBF6C()
{
  swift_unknownObjectWeakLoadStrong();
  sub_18A4A7D38();
  sub_18A4A7D48();
  return swift_unknownObjectRelease();
}

uint64_t sub_1890DBFE4()
{
  sub_18A4A8888();
  sub_1890DBF6C();
  return sub_18A4A88E8();
}

uint64_t sub_1890DC05C()
{
  sub_18A4A8888();
  sub_1890DBF6C();
  return sub_18A4A88E8();
}

uint64_t sub_1890DC0B0()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

BOOL sub_1890DC0F8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_1890DC1B0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for UIKitPlatformAccessibilitySettingsDefinition()
{
  result = qword_1ED48E420;
  if (!qword_1ED48E420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1890DC270(uint64_t a1)
{
  v2 = sub_18A4A5AE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980CB8])
  {
    v8 = &UIAccessibilityShouldDifferentiateWithoutColorDidChangeNotification;
  }

  else if (v7 == *MEMORY[0x1E6980CA8])
  {
    v8 = &UIAccessibilityReduceTransparencyStatusDidChangeNotification;
  }

  else if (v7 == *MEMORY[0x1E6980C60])
  {
    v8 = &UIAccessibilityReduceMotionStatusDidChangeNotification;
  }

  else if (v7 == *MEMORY[0x1E6980CC0])
  {
    v8 = &UIAccessibilityPrefersCrossFadeTransitionsStatusDidChangeNotification;
  }

  else if (v7 == *MEMORY[0x1E6980C50])
  {
    v8 = &UIAccessibilityInvertColorsStatusDidChangeNotification;
  }

  else if (v7 == *MEMORY[0x1E6980CC8])
  {
    v8 = &UIAccessibilityBoldTextStatusDidChangeNotification;
  }

  else
  {
    if (v7 != *MEMORY[0x1E6980C48])
    {
      if (v7 == *MEMORY[0x1E6980C78])
      {
        if (qword_1EA931EC8 != -1)
        {
          swift_once();
        }

        v9 = qword_1EA93C7F0;
        goto LABEL_16;
      }

      if (v7 == *MEMORY[0x1E6980CA0])
      {
        return sub_18A4A7B68();
      }

      if (v7 != *MEMORY[0x1E6980CB0] && v7 != *MEMORY[0x1E6980C90] && v7 != *MEMORY[0x1E6980C80])
      {
        if (v7 == *MEMORY[0x1E6980C40])
        {
          if (qword_1EA931EB8 != -1)
          {
            swift_once();
          }

          v9 = qword_1EA93C7E8;
          goto LABEL_16;
        }

        if (v7 != *MEMORY[0x1E6980C58])
        {
          if (v7 == *MEMORY[0x1E6980C98])
          {
            v8 = &UILargeContentViewerInteractionEnabledStatusDidChangeNotification;
            goto LABEL_15;
          }

          if (v7 == *MEMORY[0x1E6980CD8])
          {
            v8 = &UIAccessibilityVoiceOverStatusDidChangeNotification;
            goto LABEL_15;
          }

          if (v7 == *MEMORY[0x1E6980C70])
          {
            v8 = &UIAccessibilitySwitchControlStatusDidChangeNotification;
            goto LABEL_15;
          }

          if (v7 == *MEMORY[0x1E6980C88])
          {
            if (qword_1EA92FBB0 != -1)
            {
              swift_once();
            }

            v9 = qword_1EA92FBB8;
            goto LABEL_16;
          }

          if (v7 == *MEMORY[0x1E6980C68])
          {
            if (qword_1EA92FBC8 != -1)
            {
              swift_once();
            }

            v9 = qword_1EA92FBD0;
            goto LABEL_16;
          }

          if (v7 == *MEMORY[0x1E6980CD0])
          {
            if (qword_1EA92FBE0 != -1)
            {
              swift_once();
            }

            v9 = qword_1EA92FBE8;
            goto LABEL_16;
          }

          (*(v3 + 8))(v6, v2);
        }
      }

      return 0;
    }

    v8 = &UIAccessibilityButtonShapesEnabledStatusDidChangeNotification;
  }

LABEL_15:
  v9 = *v8;
LABEL_16:
  v10 = v9;
  return v9;
}

uint64_t sub_1890DC6B4(uint64_t a1)
{
  v2 = sub_18A4A5AE8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x1E6980CB8])
  {
    if (v7 == *MEMORY[0x1E6980CA8])
    {
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 == *MEMORY[0x1E6980C60])
    {
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceMotionEnabled();
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 == *MEMORY[0x1E6980CC0])
    {
      IsReduceTransparencyEnabled = UIAccessibilityPrefersCrossFadeTransitions();
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 == *MEMORY[0x1E6980C50])
    {
      IsReduceTransparencyEnabled = UIAccessibilityIsInvertColorsEnabled();
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 == *MEMORY[0x1E6980CC8])
    {
      IsReduceTransparencyEnabled = UIAccessibilityIsBoldTextEnabled();
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 == *MEMORY[0x1E6980C48])
    {
      IsReduceTransparencyEnabled = UIAccessibilityButtonShapesEnabled();
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 == *MEMORY[0x1E6980C78])
    {
      v9 = _AXSPhotosensitiveMitigationEnabled();
LABEL_17:
      IsReduceTransparencyEnabled = v9 != 0;
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 == *MEMORY[0x1E6980CA0])
    {
      IsReduceTransparencyEnabled = sub_18A4A7B58();
      return IsReduceTransparencyEnabled & 1;
    }

    if (v7 != *MEMORY[0x1E6980CB0] && v7 != *MEMORY[0x1E6980C90] && v7 != *MEMORY[0x1E6980C80])
    {
      if (v7 == *MEMORY[0x1E6980C40])
      {
        v9 = _AXSIncreaseButtonLegibility();
        goto LABEL_17;
      }

      if (v7 != *MEMORY[0x1E6980C58])
      {
        if (v7 == *MEMORY[0x1E6980C98])
        {
          IsReduceTransparencyEnabled = [objc_opt_self() isEnabled];
          return IsReduceTransparencyEnabled & 1;
        }

        if (v7 == *MEMORY[0x1E6980CD8])
        {
          IsReduceTransparencyEnabled = UIAccessibilityIsVoiceOverRunning();
          return IsReduceTransparencyEnabled & 1;
        }

        if (v7 == *MEMORY[0x1E6980C70])
        {
          IsReduceTransparencyEnabled = UIAccessibilityIsSwitchControlRunning();
          return IsReduceTransparencyEnabled & 1;
        }

        if (v7 == *MEMORY[0x1E6980C88])
        {
          v9 = _AXSFullKeyboardAccessEnabled();
          goto LABEL_17;
        }

        if (v7 == *MEMORY[0x1E6980C68])
        {
          v9 = _AXSCommandAndControlEnabled();
          goto LABEL_17;
        }

        if (v7 == *MEMORY[0x1E6980CD0])
        {
          v9 = _AXSHoverTextEnabled();
          goto LABEL_17;
        }

        (*(v3 + 8))(v6, v2);
      }
    }

    IsReduceTransparencyEnabled = 0;
    return IsReduceTransparencyEnabled & 1;
  }

  IsReduceTransparencyEnabled = UIAccessibilityShouldDifferentiateWithoutColor();
  return IsReduceTransparencyEnabled & 1;
}

uint64_t sub_1890DCA10()
{
  sub_18A4A5B18();

  return swift_deallocClassInstance();
}

id sub_1890DCA48()
{
  result = *MEMORY[0x1E69E4DD0];
  if (*MEMORY[0x1E69E4DD0])
  {
    qword_1EA93C7E8 = *MEMORY[0x1E69E4DD0];
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1890DCA68()
{
  result = *MEMORY[0x1E69E4D28];
  if (*MEMORY[0x1E69E4D28])
  {
    qword_1EA92FBB8 = *MEMORY[0x1E69E4D28];
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1890DCA88()
{
  result = *MEMORY[0x1E69E4CD8];
  if (*MEMORY[0x1E69E4CD8])
  {
    qword_1EA92FBD0 = *MEMORY[0x1E69E4CD8];
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1890DCAA8()
{
  result = *MEMORY[0x1E69E4DB0];
  if (*MEMORY[0x1E69E4DB0])
  {
    qword_1EA92FBE8 = *MEMORY[0x1E69E4DB0];
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1890DCAC8()
{
  result = *MEMORY[0x1E69E4E40];
  if (*MEMORY[0x1E69E4E40])
  {
    qword_1EA93C7F0 = *MEMORY[0x1E69E4E40];
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UIPointerLockState.DidChangeMessage.init(scene:pointerLockState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static UIPointerLockState.DidChangeMessage.makeMessage(_:)(void *a1@<X8>)
{
  v2 = sub_18A4A2448();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_18A4A7288();
  sub_18A4A8048();
  if (!*(v3 + 16) || (v4 = sub_188BBA050(v9), (v5 & 1) == 0))
  {

    sub_188BBA15C(v9);
LABEL_10:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  sub_188A55598(*(v3 + 56) + 32 * v4, &v10);
  sub_188BBA15C(v9);

  if (!*(&v11 + 1))
  {
LABEL_11:
    v8 = &v10;
LABEL_12:
    sub_188A3F5FC(v8, &qword_1EA934050);
    goto LABEL_13;
  }

  sub_188A34624(0, qword_1ED490250);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = v9[0];
  sub_18A4A2438();
  if (!v9[3])
  {

    v8 = v9;
    goto LABEL_12;
  }

  sub_188A34624(0, &unk_1EA93C7F8);
  if (swift_dynamicCast())
  {
    v7 = v10;
    *a1 = v6;
    a1[1] = v7;
    return;
  }

LABEL_13:
  *a1 = 0;
  a1[1] = 0;
}

uint64_t static UIPointerLockState.DidChangeMessage.makeNotification(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_188A34624(0, &unk_1EA93C7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  sub_18A4A7288();
  v4 = v1;
  v5 = v2;
  v6 = @"UIPointerLockStateDidChangeNotification";
  sub_18A4A8048();
  *(inited + 96) = sub_188A34624(0, qword_1ED490250);
  *(inited + 72) = v4;
  sub_188E8DA14(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &qword_1EA934D78);
  return sub_18A4A2428();
}

id _UISliderFluidColorConfiguration.init(colors:locations:ticks:tickBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_188A34624(0, qword_1ED4913C0);
  v6 = sub_18A4A7518();

  if (a2)
  {
    sub_188A34624(0, &qword_1ED48FD80);
    v7 = sub_18A4A7518();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, &unk_1EA92FD90);
  v9 = sub_18A4A7518();

  v10 = [v8 initWithColors:v6 locations:v7 ticks:v9 tickBehavior:a4];

  return v10;
}

{
  v6 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *&v4[OBJC_IVAR____UISliderFluidColorConfiguration__locations] = 0;
  *&v4[OBJC_IVAR____UISliderFluidColorConfiguration_maxGain] = 0x3FF0000000000000;
  v4[OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard] = 0;
  *&v4[OBJC_IVAR____UISliderFluidColorConfiguration__colors] = a1;
  *&v4[v6] = a2;
  sub_188A34624(0, &unk_1EA92FD90);
  v7 = sub_18A4A7518();

  v10.receiver = v4;
  v10.super_class = _UISliderFluidColorConfiguration;
  v8 = objc_msgSendSuper2(&v10, sel_initWithTicks_behavior_, v7, a4);

  return v8;
}

id _UISliderFluidColorConfiguration.init(colors:locations:numberOfTicks:tickBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_188A34624(0, qword_1ED4913C0);
  v7 = sub_18A4A7518();

  if (a2)
  {
    sub_188A34624(0, &qword_1ED48FD80);
    v8 = sub_18A4A7518();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColors:v7 locations:v8 numberOfTicks:a3 tickBehavior:a4];

  return v9;
}

{
  sub_188A34624(0, qword_1ED4913C0);
  v8 = sub_18A4A7518();

  if (a2)
  {
    sub_188A34624(0, &qword_1ED48FD80);
    v9 = sub_18A4A7518();
  }

  else
  {
    v9 = 0;
  }

  sub_189017030(a3);
  sub_188A34624(0, &unk_1EA92FD90);
  v10 = sub_18A4A7518();

  v11 = [v4 initWithColors:v8 locations:v9 ticks:v10 tickBehavior:a4];

  return v11;
}

void __swiftcall _UISliderFluidColorConfiguration.init(colors:locations:)(_UISliderFluidColorConfiguration *__return_ptr retstr, Swift::OpaquePointer colors, Swift::OpaquePointer_optional locations)
{
  rawValue = locations.value._rawValue;
  sub_188A34624(0, qword_1ED4913C0);
  v4 = sub_18A4A7518();

  if (rawValue)
  {
    sub_188A34624(0, &qword_1ED48FD80);
    v5 = sub_18A4A7518();
  }

  else
  {
    v5 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithColors:v4 locations:v5];
}

id _UISliderFluidColorConfiguration.init(colors:locations:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *&v2[OBJC_IVAR____UISliderFluidColorConfiguration__locations] = 0;
  *&v2[OBJC_IVAR____UISliderFluidColorConfiguration_maxGain] = 0x3FF0000000000000;
  v2[OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard] = 0;
  *&v2[OBJC_IVAR____UISliderFluidColorConfiguration__colors] = a1;
  *&v2[v3] = a2;
  sub_188A34624(0, &unk_1EA92FD90);
  v4 = sub_18A4A7518();
  v7.receiver = v2;
  v7.super_class = _UISliderFluidColorConfiguration;
  v5 = objc_msgSendSuper2(&v7, sel_initWithTicks_behavior_, v4, 0);

  return v5;
}

void __swiftcall _UISliderFluidColorConfiguration.init(colors:)(_UISliderFluidColorConfiguration *__return_ptr retstr, Swift::OpaquePointer colors)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, qword_1ED4913C0);
  v3 = sub_18A4A7518();

  [v2 initWithColors_];
}

id _UISliderFluidColorConfiguration.init(colors:)(uint64_t a1)
{
  v2 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *&v1[OBJC_IVAR____UISliderFluidColorConfiguration__locations] = 0;
  *&v1[OBJC_IVAR____UISliderFluidColorConfiguration_maxGain] = 0x3FF0000000000000;
  v1[OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard] = 0;
  *&v1[OBJC_IVAR____UISliderFluidColorConfiguration__colors] = a1;
  *&v1[v2] = 0;
  sub_188A34624(0, &unk_1EA92FD90);
  v3 = sub_18A4A7518();
  v6.receiver = v1;
  v6.super_class = _UISliderFluidColorConfiguration;
  v4 = objc_msgSendSuper2(&v6, sel_initWithTicks_behavior_, v3, 0);

  return v4;
}

id _UISliderFluidColorConfiguration.init(ticks:behavior:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_188A34624(0, &unk_1EA92FD90);
  v4 = sub_18A4A7518();

  v5 = [v3 initWithTicks:v4 behavior:a2];

  return v5;
}

{
  v4 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *&v2[OBJC_IVAR____UISliderFluidColorConfiguration__locations] = 0;
  *&v2[OBJC_IVAR____UISliderFluidColorConfiguration_maxGain] = 0x3FF0000000000000;
  v2[OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard] = 0;
  *&v2[OBJC_IVAR____UISliderFluidColorConfiguration__colors] = MEMORY[0x1E69E7CC0];
  *&v2[v4] = 0;
  sub_188A34624(0, &unk_1EA92FD90);
  v5 = sub_18A4A7518();

  v8.receiver = v2;
  v8.super_class = _UISliderFluidColorConfiguration;
  v6 = objc_msgSendSuper2(&v8, sel_initWithTicks_behavior_, v5, a2);

  return v6;
}

id _UISliderFluidColorConfiguration.init(numberOfTicks:behavior:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithNumberOfTicks:a1 behavior:a2];
}

{
  v3 = OBJC_IVAR____UISliderFluidColorConfiguration__locations;
  *(v2 + OBJC_IVAR____UISliderFluidColorConfiguration__locations) = 0;
  *(v2 + OBJC_IVAR____UISliderFluidColorConfiguration_maxGain) = 0x3FF0000000000000;
  *(v2 + OBJC_IVAR____UISliderFluidColorConfiguration_showCheckerboard) = 0;
  *(v2 + OBJC_IVAR____UISliderFluidColorConfiguration__colors) = MEMORY[0x1E69E7CC0];
  *(v2 + v3) = 0;
  v5.super_class = _UISliderFluidColorConfiguration;
  return objc_msgSendSuper2(&v5, sel_initWithNumberOfTicks_behavior_, a1, a2);
}

id _UISliderFluidColorConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13.super_class = _UISliderFluidColorConfiguration;
  objc_msgSendSuper2(&v13, sel_copyWithZone_, a1);
  sub_18A4A7DE8();
  v4 = swift_unknownObjectRelease();
  v5 = type metadata accessor for _UISliderFluidColorConfiguration(v4);
  swift_dynamicCast();
  v6 = [v2 colors];
  sub_188A34624(0, qword_1ED4913C0);
  v7 = sub_18A4A7548();

  *&v12[OBJC_IVAR____UISliderFluidColorConfiguration__colors] = v7;

  v8 = [v2 locations];
  if (v8)
  {
    v9 = v8;
    sub_188A34624(0, &qword_1ED48FD80);
    v10 = sub_18A4A7548();
  }

  else
  {
    v10 = 0;
  }

  *&v12[OBJC_IVAR____UISliderFluidColorConfiguration__locations] = v10;

  [v2 maxGain];
  [v12 setMaxGain_];
  result = [v12 setShowCheckerboard_];
  a2[3] = v5;
  *a2 = v12;
  return result;
}

uint64_t _UISliderFluidColorConfiguration.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v28);
  v3 = v29;
  if (v29)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v28, v29);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  else
  {
    v9 = 0;
  }

  v27.receiver = v1;
  v27.super_class = _UISliderFluidColorConfiguration;
  v10 = objc_msgSendSuper2(&v27, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (!v10)
  {
    return 0;
  }

  v11 = sub_188C85D28(a1, v28);
  if (v29)
  {
    type metadata accessor for _UISliderFluidColorConfiguration(v11);
    if (swift_dynamicCast())
    {
      v12 = v26;
      v13 = *&v26[OBJC_IVAR____UISliderFluidColorConfiguration__colors];
      v14 = *&v1[OBJC_IVAR____UISliderFluidColorConfiguration__colors];

      v15 = sub_189014FCC(v13, v14);

      if (v15)
      {
        v16 = *&v1[OBJC_IVAR____UISliderFluidColorConfiguration__locations];
        if (*&v12[OBJC_IVAR____UISliderFluidColorConfiguration__locations])
        {
          if (!v16)
          {
            goto LABEL_16;
          }

          v18 = sub_18901597C(v17, v16);

          if ((v18 & 1) == 0)
          {
            goto LABEL_16;
          }

LABEL_14:
          [v12 maxGain];
          v20 = v19;
          [v1 maxGain];
          if (v20 == v21)
          {
            v22 = [v12 showCheckerboard];
            v23 = [v1 showCheckerboard];

            return v22 ^ v23 ^ 1;
          }

          goto LABEL_16;
        }

        if (!v16)
        {
          goto LABEL_14;
        }
      }

LABEL_16:
    }
  }

  else
  {
    sub_188A553EC(v28);
  }

  return 0;
}

id sub_1890DE478(void *a1)
{
  strcpy(v10, "directional-");
  v2 = sub_188FC19FC();
  MEMORY[0x18CFE22D0](v2);

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = a1;
  v6 = sub_18A4A7258();

  v10[4] = sub_1890DE68C;
  v10[5] = v3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188DF2768;
  v10[3] = &block_descriptor_106;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithIdentifier:v6 lightSourceViewProvider:v7];

  _Block_release(v7);

  return v8;
}

id sub_1890DE694(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_188D626CC(a1);

  return v4;
}

id sub_1890DE6D4(double *a1, id a2, double a3, double a4, double a5, double a6)
{
  result = [a2 _length];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *a1 = a3;
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  a1[1] = a4;
  if (result < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  a1[2] = a5;
  if (result != 3)
  {
    a1[3] = a6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1890DE760(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_189212BD8(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1890DEA5C()
{
  v1 = OBJC_IVAR____UIMagicMorphDestination____lazy_storage___progress;
  v2 = *(v0 + OBJC_IVAR____UIMagicMorphDestination____lazy_storage___progress);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UIMagicMorphDestination____lazy_storage___progress);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____UIMagicMorphDestination_preview) view];
    v5 = type metadata accessor for _UIDebouncingAnimatableFloat();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
    *v7 = 0;
    *(v7 + 1) = 0;
    if (v4)
    {
      v13.receiver = v6;
      v13.super_class = v5;
      v8 = objc_msgSendSuper2(&v13, sel_initWithView_, v4);
    }

    else
    {
      v14.receiver = v6;
      v14.super_class = v5;
      v8 = objc_msgSendSuper2(&v14, sel_init);
    }

    v9 = &v8[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
    *v9 = 0xD000000000000026;
    *(v9 + 1) = 0x800000018A6A6BE0;
    v3 = v8;

    v10 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1890DEC38()
{
  *(v0 + OBJC_IVAR____UIMagicMorphDestination_hidesSourceView) = 0;
  v1 = *(v0 + OBJC_IVAR____UIMagicMorphDestination_transformView);
  *(v1 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_hidesSourceView) = 0;
  [*(v1 + OBJC_IVAR____TtC5UIKit26_UIMagicMorphTransformView_portalView) setHidesSourceView_];
  *(v0 + OBJC_IVAR____UIMagicMorphDestination_backgroundSuppressionAssertion) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1890DED60()
{
  strcpy(v7, "Destination(");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v1 = *(v0 + OBJC_IVAR____UIMagicMorphDestination_preview);
  v2 = [v1 description];
  v3 = sub_18A4A7288();
  v5 = v4;

  MEMORY[0x18CFE22D0](v3, v5);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return v7[0];
}

id sub_1890DF0AC()
{
  v1 = OBJC_IVAR____UIMagicMoveItem_morphView;
  type metadata accessor for _UIMagicMorphView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____UIMagicMoveItem_portals] = MEMORY[0x1E69E7CC0];
  [v2 setUserInteractionEnabled_];
  v3 = *&v0[v1];
  *(v3 + OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis) = 3;
  *(v3 + OBJC_IVAR____UIMagicMorphView_currentMorphingAxis) = 3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for _UIMagicMorphView.MagicMoveItem();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1890DF194(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1890DF270()
{
  v1 = OBJC_IVAR____UIMagicMorphView____lazy_storage___contentWidth;
  v2 = *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___contentWidth);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___contentWidth);
  }

  else
  {
    v4 = type metadata accessor for _UIDebouncingAnimatableFloat();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
    *v6 = 0;
    *(v6 + 1) = 0;
    v12.receiver = v5;
    v12.super_class = v4;
    v7 = objc_msgSendSuper2(&v12, sel_initWithView_, v0);
    v8 = &v7[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
    *v8 = 0xD00000000000001ELL;
    *(v8 + 1) = 0x800000018A6A6CA0;
    v3 = v7;

    v9 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *sub_1890DF348()
{
  v1 = OBJC_IVAR____UIMagicMorphView____lazy_storage___contentHeight;
  v2 = *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___contentHeight);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___contentHeight);
  }

  else
  {
    v4 = type metadata accessor for _UIDebouncingAnimatableFloat();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
    *v6 = 0;
    *(v6 + 1) = 0;
    v12.receiver = v5;
    v12.super_class = v4;
    v7 = objc_msgSendSuper2(&v12, sel_initWithView_, v0);
    v8 = &v7[OBJC_IVAR____TtC5UIKit28_UIDebouncingAnimatableFloat_name];
    *v8 = 0xD00000000000001FLL;
    *(v8 + 1) = 0x800000018A6A6C80;
    v3 = v7;

    v9 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_1890DF484(uint64_t result)
{
  v2 = OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing;
  v3 = *(v1 + OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing);
  *(v1 + OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing) = result;
  if (v3 != (result & 1))
  {
    v4 = [*(v1 + OBJC_IVAR____UIMagicMorphView_clippingView) layer];
    [v4 setAllowsEdgeAntialiasing_];

    v5 = OBJC_IVAR____UIMagicMorphView_destinations;
    result = swift_beginAccess();
    v6 = *(v1 + v5);
    if (v6 >> 62)
    {
      result = sub_18A4A7F68();
      v7 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return result;
      }
    }

    if (v7 < 1)
    {
      __break(1u);
    }

    else
    {

      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = sub_188E494B4(v8, v6);
        }

        else
        {
          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        v11 = [*&v9[OBJC_IVAR____UIMagicMorphDestination_transformView] layer];
        [v11 setAllowsEdgeAntialiasing_];
      }

      while (v7 != v8);
    }
  }

  return result;
}

void sub_1890DF7BC(void *a1)
{
  v3 = OBJC_IVAR____UIMagicMorphView_backgroundView;
  v4 = *(v1 + OBJC_IVAR____UIMagicMorphView_backgroundView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v7 = a1;

  if (a1)
  {
    v6 = OBJC_IVAR____UIMagicMorphView_clippingView;
    [*(v1 + OBJC_IVAR____UIMagicMorphView_clippingView) bounds];
    [v7 setFrame_];
    [*(v1 + v6) insertSubview:v7 atIndex:0];
  }
}

id sub_1890DF8C4()
{
  v1 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8.receiver = v0;
    v8.super_class = type metadata accessor for _UIMagicMorphView();
    return objc_msgSendSuper2(&v8, sel_isUserInteractionEnabled);
  }

  result = sub_18A4A7F68();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v5 = sub_188E494B4(v4, v2);

    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 8 * v4 + 32);
LABEL_8:
    v6 = [*&v5[OBJC_IVAR____UIMagicMorphDestination_preview] view];
    v7 = [v6 isUserInteractionEnabled];

    return v7;
  }

  __break(1u);
  return result;
}

id sub_1890DFA6C()
{
  v1 = *&v0[OBJC_IVAR____UIMagicMorphView_multiLayerAssertion];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIMagicMorphView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1890DFB38(void *a1)
{
  v3 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v80 = *(v1 + v3);
  if (v80 >> 62)
  {
LABEL_27:
    v4 = sub_18A4A7F68();
  }

  else
  {
    v4 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = &selRef_verticalMenuCornerRadius;
    v79 = v4;
    while (1)
    {
      if ((v80 & 0xC000000000000001) != 0)
      {
        v7 = sub_188E494B4(v5, v80);
      }

      else
      {
        if (v5 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(v80 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v10 = [a1 v6[41]];
      v11 = [v10 _sourceViewIfPortal];

      if (!v11)
      {
        v11 = [a1 v6[41]];
      }

      v12 = OBJC_IVAR____UIMagicMorphDestination_preview;
      v13 = v8;
      v14 = [*&v8[OBJC_IVAR____UIMagicMorphDestination_preview] v6[41]];
      v15 = [v14 &selRef_setSnapshotForExpandingParentItemHandler_];

      if (v15)
      {
        v16 = v12;
      }

      else
      {
        v17 = v6;
        v16 = v12;
        v15 = [*&v13[v12] v17 + 2808];
      }

      v18 = v13;
      if (v15 == v11)
      {
        break;
      }

      ++v5;
      v6 = &selRef_verticalMenuCornerRadius;
      if (v9 == v79)
      {
        goto LABEL_18;
      }
    }

    v19 = a1;
    v20 = [a1 target];
    v21 = [v19 target];
    sub_188A34624(0, &unk_1EA9307F0);
    v22 = sub_18A4A7C88();

    v23 = [v19 target];
    v24 = v23;
    v81 = v20;
    if (v22)
    {
      v25 = [v23 container];

      v26 = [v25 window];
      v27 = v16;
      if (v26)
      {

        v28 = [v19 view];
        v29 = [v19 view];
        [v29 bounds];
        v31 = v30;
        v33 = v32;
        v35 = v34;

        Center = UIRectGetCenter(v31, v33, v35);
        v38 = v37;
        v39 = [v20 container];
        [v28 convertPoint:v39 toCoordinateSpace:{Center, v38}];
        v41 = v40;
        v43 = v42;

        v44 = [v20 container];
        v45 = [v19 view];
        v46 = [v45 layer];

        [v46 transform];
        v47 = objc_opt_self();
        v86 = v96;
        v87 = v97;
        v88 = v98;
        v89 = v99;
        v82 = v92;
        v83 = v93;
        v84 = v94;
        v85 = v95;
        v48 = [v47 _targetWithContainer_center_transform3D_];

        v49 = [v19 target];
        [v49 _contentScale];
        v51 = v50;

        [v48 _setContentScale_];
        v52 = [v19 retargetedPreviewWithTarget_];
      }

      else
      {
        v52 = v19;
      }
    }

    else
    {
      v52 = [v19 retargetedPreviewWithTarget_];

      v27 = v16;
    }

    v53 = *&v18[v27];
    *&v18[v27] = v52;
    v54 = v52;

    sub_18923B9EC(&v92);
    v55 = [(UITargetedPreview *)v54 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70);
    v56 = swift_allocObject();
    v57 = v99;
    *(v56 + 112) = v98;
    *(v56 + 128) = v57;
    *(v56 + 144) = v100;
    v58 = v95;
    *(v56 + 48) = v94;
    *(v56 + 64) = v58;
    v59 = v97;
    *(v56 + 80) = v96;
    *(v56 + 96) = v59;
    v60 = v93;
    *(v56 + 16) = v92;
    *(v56 + 32) = v60;
    v61 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90[0] = *(v55 + v61);
    *(v55 + v61) = 0x8000000000000000;
    sub_188A40430(v56, &_s19OverrideGeometryKeyVN, isUniquelyReferenced_nonNull_native);
    *(v55 + v61) = v90[0];
    swift_endAccess();

    v63 = *&v18[v27];
    sub_18923B914(&v82);
    v64 = [(UITargetedPreview *)v63 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9B0);
    v65 = v18;
    v66 = swift_allocObject();
    v67 = v85;
    *(v66 + 48) = v84;
    *(v66 + 64) = v67;
    *(v66 + 80) = v86;
    v68 = v83;
    *(v66 + 16) = v82;
    *(v66 + 32) = v68;
    v69 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v64 + v69);
    *(v64 + v69) = 0x8000000000000000;
    sub_188A40430(v66, &_s18GenieParametersKeyVN, v70);
    *(v64 + v69) = v91;
    swift_endAccess();

    v71 = *&v65[v27];
    v72 = [(UITargetedPreview *)v19 _typedStorage];
    sub_18901EF08(v90);

    sub_18923BAD0(v90);
    v73 = *&v65[v27];
    v74 = [(UITargetedPreview *)v19 _typedStorage];
    LOBYTE(v64) = sub_18901EFE0();

    v75 = [(UITargetedPreview *)v73 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9371F8);
    v76 = swift_allocObject();
    *(v76 + 16) = v64 & 1;
    v77 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v75 + v77);
    *(v75 + v77) = 0x8000000000000000;
    sub_188A40430(v76, &_s31IgnoreForGlassSizeResolutionKeyVN, v78);
    *(v75 + v77) = v91;
    swift_endAccess();
  }

  else
  {
LABEL_18:
  }
}

char *sub_1890E03DC(void *a1)
{
  v2 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E494B4(v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_188A34624(0, &qword_1ED490230);
      v9 = [*&v7[OBJC_IVAR____UIMagicMorphDestination_preview] view];
      v10 = [a1 view];
      v11 = sub_18A4A7C88();

      if (v11)
      {

        return v7;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

void sub_1890E05D0(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____UIMagicMorphDestination_preview;
  v7 = [*(a1 + OBJC_IVAR____UIMagicMorphDestination_preview) target];
  [v7 _contentScale];
  v9 = v8;

  v10 = objc_allocWithZone(type metadata accessor for _UIMagicMorphView.Destination());
  v11 = [objc_allocWithZone(UITargetedPreview) initWithView_];
  v12 = [v10 initWithPreview_];

  v13 = [a2 _vendAssertionForOverrideAlpha_];
  v14 = *&v12[OBJC_IVAR____UIMagicMorphDestination_hidingAssertion];
  *&v12[OBJC_IVAR____UIMagicMorphDestination_hidingAssertion] = v13;

  sub_188D6C074(v12);
  [a2 bounds];
  Center = UIRectGetCenter(v15, v16, v17);
  v20 = v19;
  v21 = [*(a1 + v6) view];
  [a2 convertPoint:v21 toCoordinateSpace:{Center, v20}];
  v23 = v22;
  v25 = v24;

  [a3 setCenter_];
  CGAffineTransformMakeScale(&v26, v9, v9);
  [a3 setTransform_];
  [a2 alpha];
  [a3 setAlpha_];
}

void sub_1890E07A8()
{
  v1 = &unk_1EA93C000;
  v2 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return;
  }

  while (1)
  {
    v5 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
LABEL_36:

      v42 = sub_188E494B4(v5, v3);

      goto LABEL_8;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_36;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    v42 = *(v3 + 8 * v5 + 32);
LABEL_8:
    v6 = OBJC_IVAR____UIMagicMorphView_magicMoveItems;
    swift_beginAccess();
    v0 = *(v0 + v6);
    v7 = v0 + 64;
    v8 = 1 << *(v0 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v0 + 64);
    v41 = OBJC_IVAR____UIMagicMorphDestination_preview;
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v40 = v0;
    while (v10)
    {
LABEL_16:
      v14 = *(*(v0 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
      v15 = *&v14[OBJC_IVAR____UIMagicMoveItem_morphView];
      v3 = v1[263];
      swift_beginAccess();
      v16 = *&v15[v3];
      if (v16 >> 62)
      {
        v17 = sub_18A4A7F68();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 &= v10 - 1;
      if (v17)
      {
        v3 = v17 - 1;
        if (__OFSUB__(v17, 1))
        {
          goto LABEL_30;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v38 = v14;
          v39 = v15;

          v3 = sub_188E494B4(v3, v16);
        }

        else
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (v3 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v18 = *(v16 + 8 * v3 + 32);
          v19 = v14;
          v20 = v15;
          v3 = v18;
        }

        v21 = OBJC_IVAR____UIMagicMorphDestination_preview;
        v22 = [*(v3 + OBJC_IVAR____UIMagicMorphDestination_preview) view];
        v23 = [*(v3 + v21) target];
        [v23 _contentScale];
        v25 = v24;

        v26 = v15;
        [v22 bounds];
        Center = UIRectGetCenter(v27, v28, v29);
        v32 = v31;
        v33 = [*&v42[v41] view];
        [v22 convertPoint:v33 toCoordinateSpace:{Center, v32}];
        v35 = v34;
        v37 = v36;

        [v26 setCenter_];
        CGAffineTransformMakeScale(&v43, v25, v25);
        [v26 setTransform_];

        v1 = &unk_1EA93C000;
        v0 = v40;
      }
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_16;
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
    v4 = sub_18A4A7F68();
    if (!v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1890E0B5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  v7 = type metadata accessor for GlassState(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____UIMagicMorphView_lock);
  os_unfair_lock_lock(v11 + 4);
  v12 = OBJC_IVAR____UIMagicMorphView_destinations;
  swift_beginAccess();
  v46 = v0;
  v13 = *(v0 + v12);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v11;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:
    v44 = 0;
    goto LABEL_11;
  }

  v14 = sub_18A4A7F68();
  v43 = v11;
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_3:
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_51;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_51:

    v16 = sub_188E494B4(v15, v13);

    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_53;
  }

  if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v13 + 8 * v15 + 32);
LABEL_8:
    v17 = *&v16[OBJC_IVAR____UIMagicMorphDestination_preview];

    v44 = [v17 view];
LABEL_11:
    v18 = *(v46 + v12);
    if (v18 >> 62)
    {
      goto LABEL_48;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_20:
    v25 = v46;
    *(v46 + v12) = MEMORY[0x1E69E7CC0];

    v26 = OBJC_IVAR____UIMagicMorphView_savedGlassState;
    swift_beginAccess();
    sub_188A3F29C(v25 + v26, v6, &qword_1EA93A490);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_188A3F5FC(v6, &qword_1EA93A490);
    }

    else
    {
      sub_188B65504(v6, v10, type metadata accessor for GlassState);
      v27 = v44;
      if (v44)
      {
        sub_1890E20EC(v10, v3, type metadata accessor for GlassState);
        (*(v8 + 56))(v3, 0, 1, v7);
        v7 = v27;
        sub_189021B28(v3);
      }

      sub_1890E208C(v10, type metadata accessor for GlassState);
    }

    v28 = OBJC_IVAR____UIMagicMorphView_magicMoveItems;
    v29 = v46;
    swift_beginAccess();
    v42 = v28;
    v6 = *(v29 + v28);
    v3 = v6 + 64;
    v30 = 1 << v6[32];
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v12 = v31 & *(v6 + 8);
    v8 = (v30 + 63) >> 6;

    v32 = 0;
    v45 = v6;
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v33 >= v8)
          {

            v40 = v46;
            *(v46 + v42) = MEMORY[0x1E69E7CC8];

            *(v40 + OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis) = 0;
            *(v40 + OBJC_IVAR____UIMagicMorphView_currentMorphingAxis) = 0;
            os_unfair_lock_unlock(v43 + 4);
            return;
          }

          v12 = *&v3[8 * v33];
          ++v32;
          if (v12)
          {
            v32 = v33;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v19 = sub_18A4A7F68();
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_13:
        if (v19 >= 1)
        {
          v42 = v8;
          v45 = v7;
          v20 = v10;
          v21 = v3;

          for (i = 0; i != v19; ++i)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v23 = sub_188E494B4(i, v18);
            }

            else
            {
              v23 = *(v18 + 8 * i + 32);
            }

            v24 = v23;
            [*&v23[OBJC_IVAR____UIMagicMorphDestination_transformView] removeFromSuperview];
          }

          v3 = v21;
          v10 = v20;
          v7 = v45;
          v8 = v42;
          goto LABEL_20;
        }

        __break(1u);
LABEL_53:
        __break(1u);
        break;
      }

LABEL_35:
      v34 = *(*(v6 + 7) + ((v32 << 9) | (8 * __clz(__rbit64(v12)))));
      v35 = OBJC_IVAR____UIMagicMoveItem_portals;
      swift_beginAccess();
      v10 = *&v34[v35];
      if (v10 >> 62)
      {
        v7 = sub_18A4A7F68();
        if (!v7)
        {
LABEL_44:
          v39 = v34;
          goto LABEL_29;
        }
      }

      else
      {
        v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_44;
        }
      }

      if (v7 < 1)
      {
        goto LABEL_47;
      }

      v36 = v34;

      for (j = 0; j != v7; ++j)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v38 = sub_188E49828(j, v10);
        }

        else
        {
          v38 = *(v10 + 8 * j + 32);
        }

        v18 = v38;
        [v38 removeFromSuperview];
      }

      v6 = v45;
LABEL_29:
      v12 &= v12 - 1;
      [*&v34[OBJC_IVAR____UIMagicMoveItem_morphView] removeFromSuperview];
    }
  }

  __break(1u);
}

void sub_1890E11BC()
{
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for _Glass(0);
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - v14;
  if (*(v0 + OBJC_IVAR____UIMagicMorphView_appliesBackgroundFromView) == 1)
  {
    v16 = OBJC_IVAR____UIMagicMorphView_destinations;
    swift_beginAccess();
    v17 = *(v0 + v16);
    if (v17 >> 62)
    {
      v18 = sub_18A4A7F68();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }
    }

    v48 = v3;
    v19 = v18 - 1;
    if (__OFSUB__(v18, 1))
    {
      __break(1u);
    }

    else if ((v17 & 0xC000000000000001) == 0)
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *(v17 + 8 * v19 + 32);
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_24;
    }

    v20 = sub_188E494B4(v19, v17);

LABEL_9:
    v21 = *&v20[OBJC_IVAR____UIMagicMorphDestination_preview];

    v22 = [v21 view];
    v49 = v22;
    if (!v22)
    {
      return;
    }

    v17 = *(v0 + v16);
    if (!(v17 >> 62))
    {
      v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

LABEL_24:
    v23 = sub_18A4A7F68();
    if (v23)
    {
LABEL_12:
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        __break(1u);
      }

      else if ((v17 & 0xC000000000000001) == 0)
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v17 + 8 * v24 + 32);
LABEL_17:
          v26 = v25[OBJC_IVAR____UIMagicMorphDestination_initialLuminance + 4];

          goto LABEL_26;
        }

        __break(1u);
        return;
      }

      v46 = sub_188E494B4(v24, v17);

      v25 = v46;
      goto LABEL_17;
    }

LABEL_25:
    v26 = 1;
LABEL_26:
    v27 = OBJC_IVAR____UIMagicMorphView_savedGlassState;
    swift_beginAccess();
    sub_188A3F29C(v0 + v27, v15, &qword_1EA93A490);
    v28 = type metadata accessor for GlassState(0);
    if ((*(*(v28 - 8) + 48))(v15, 1, v28))
    {
      sub_188A3F5FC(v15, &qword_1EA93A490);
      v29 = v49;
    }

    else
    {
      v30 = v15[*(v28 + 20) + 8];
      sub_188A3F5FC(v15, &qword_1EA93A490);
      v29 = v49;
      if ((v30 & 1) == 0)
      {
        v26 = 0;
      }
    }

    v31 = [v29 traitCollection];
    v32 = sub_188E1AF8C();

    v33 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
    swift_beginAccess();
    sub_188A3F29C(v32 + v33, v12, &qword_1EA935CD0);

    v34 = sub_18A4A56B8();
    if ((*(*(v34 - 8) + 48))(v12, 1, v34) != 1)
    {

      v35 = &qword_1EA935CD0;
      v36 = v12;
LABEL_41:
      sub_188A3F5FC(v36, v35);
      return;
    }

    sub_188A3F5FC(v12, &qword_1EA935CD0);
    if (v26)
    {

      return;
    }

    v37 = [(UIView *)v29 _typedStorage];
    sub_188A6852C(&v52);

    v51[2] = v54;
    v51[3] = v55;
    v51[4] = v56;
    v51[5] = v57;
    v51[0] = v52;
    v51[1] = v53;
    if (*(&v53 + 1))
    {
      sub_188A53994(v51, &v58);
      sub_188ACE668(v51);
      if (*(&v59 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
        v38 = swift_dynamicCast();
        v39 = v50;
        (*(v50 + 7))(v6, v38 ^ 1u, 1, v7);
        if ((*(v39 + 6))(v6, 1, v7) != 1)
        {
          v50 = type metadata accessor for _Glass;
          sub_188B65504(v6, v9, type metadata accessor for _Glass);
          *(&v53 + 1) = v7;
          *&v54 = &protocol witness table for _Glass;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v52);
          sub_1890E20EC(v9, boxed_opaque_existential_0, type metadata accessor for _Glass);
          v41 = v48;
          sub_1890E20EC(&v9[*(v7 + 24)], v48, type metadata accessor for _Glass._GlassVariant);
          v42 = sub_18A4A2F58();
          v43 = *(v42 - 8);
          MEMORY[0x1EEE9AC00](v42);
          v45 = &v47 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_18A4A2E78();
          (*(v43 + 40))(v41, v45, v42);
          sub_188F6D250(v41, boxed_opaque_existential_0 + *(v7 + 24));
          UIView._background.setter(&v52);

          sub_1890E208C(v9, v50);
          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      sub_188A3F5FC(v51, &unk_1EA933EC0);
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
    }

    sub_188A3F5FC(&v58, &unk_1EA93C9A0);
    (*(v50 + 7))(v6, 1, 1, v7);
LABEL_40:
    v35 = &unk_1EA93BA10;
    v36 = v6;
    goto LABEL_41;
  }
}

id sub_1890E1A24(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5];
  v7 = type metadata accessor for _UIMagicMorphView();
  v17.receiver = v2;
  v17.super_class = v7;
  result = objc_msgSendSuper2(&v17, sel_willMoveToWindow_, a1);
  if (!a1)
  {
    v9 = sub_189021970();
    if (v9 && (v10 = v9, v11 = sub_188B622F4(v2), v10, v11))
    {
      v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
      swift_beginAccess();
      sub_1890E20EC(&v11[v12], v6, type metadata accessor for GlassState);

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = type metadata accessor for GlassState(0);
    (*(*(v14 - 8) + 56))(v6, v13, 1, v14);
    v15 = OBJC_IVAR____UIMagicMorphView_savedGlassState;
    swift_beginAccess();
    sub_1890E2170(v6, v2 + v15);
    return swift_endAccess();
  }

  return result;
}

void sub_1890E1E08()
{
  sub_1890E1F1C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1890E1F1C()
{
  if (!qword_1EA930E60)
  {
    type metadata accessor for GlassState(255);
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA930E60);
    }
  }
}

unint64_t sub_1890E1FE0()
{
  result = qword_1EA93C988;
  if (!qword_1EA93C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93C988);
  }

  return result;
}

unint64_t sub_1890E2038()
{
  result = qword_1EA93C990;
  if (!qword_1EA93C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93C990);
  }

  return result;
}

uint64_t sub_1890E208C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1890E20EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890E2170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1890E21E0()
{
  v1 = OBJC_IVAR____UIMagicMorphView_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9D0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____UIMagicMorphView_destinations) = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____UIMagicMorphView_milestones) = MEMORY[0x1E69E7CC8];
  v4 = OBJC_IVAR____UIMagicMorphView_clippingView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____UIMagicMorphView_contentSizeDidChange) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___traitObserver) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___contentWidth) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___contentHeight) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___insets) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView____lazy_storage___cornerRadii) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView_allDestinationsAreOpaque) = 1;
  *(v0 + OBJC_IVAR____UIMagicMorphView_magicMoveItems) = v3;
  *(v0 + OBJC_IVAR____UIMagicMorphView_wantsEdgeAntialiasing) = 1;
  *(v0 + OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView_appliesBackgroundFromView) = 1;
  *(v0 + OBJC_IVAR____UIMagicMorphView_preferredMorphingAxis) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView_currentMorphingAxis) = 0;
  *(v0 + OBJC_IVAR____UIMagicMorphView_shadowIntensity) = 1065353216;
  v5 = v0 + OBJC_IVAR____UIMagicMorphView_overrideCornerRadii;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 64) = 1;
  v6 = v0 + OBJC_IVAR____UIMagicMorphView_overrideBounds;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____UIMagicMorphView_backgroundView) = 0;
  v7 = OBJC_IVAR____UIMagicMorphView_savedGlassState;
  v8 = type metadata accessor for GlassState(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____UIMagicMorphView_multiLayerAssertion) = 0;
  sub_18A4A8398();
  __break(1u);
}

id _UICornerMaskingConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69796E8];
  v1 = *MEMORY[0x1E69796E8];
  *a1 = xmmword_18A665A60;
  *(a1 + 16) = xmmword_18A665A60;
  *(a1 + 32) = xmmword_18A665A60;
  *(a1 + 48) = xmmword_18A665A60;
  *(a1 + 64) = v1;
  *(a1 + 72) = 0;
  sub_188A85484(0xC000000000000000);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000000);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000000);
  sub_188A854E0(0xF000000000000007);

  return v3;
}

double static _UICornerMaskingConfiguration.CornerStyle.unspecified()@<D0>(_OWORD *a1@<X8>)
{
  result = -2.0;
  *a1 = xmmword_18A665A60;
  return result;
}

id _UICornerMaskingConfiguration.init(allCorners:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x1E69796E8];
  v2 = *MEMORY[0x1E69796E8];
  v3 = *a1;
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = v3;
  *(a2 + 48) = v3;
  v5 = v3;
  *(a2 + 64) = v2;
  *(a2 + 72) = 0;
  sub_188A85484(v3);
  sub_188A854E0(v4);
  sub_188A85484(v5);
  sub_188A854E0(v4);
  sub_188A85484(v5);
  sub_188A854E0(v4);

  return v7;
}

id sub_1890E2558()
{
  v1 = *MEMORY[0x1E69796E8];
  xmmword_1EA92EAB8 = xmmword_18A665A60;
  unk_1EA92EAC8 = xmmword_18A665A60;
  xmmword_1EA92EAD8 = xmmword_18A665A60;
  unk_1EA92EAE8 = xmmword_18A665A60;
  qword_1EA92EAF8 = v1;
  word_1EA92EB00 = 0;
  sub_188A85484(0xC000000000000000);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000000);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(0xC000000000000000);
  sub_188A854E0(0xF000000000000007);

  return v1;
}

uint64_t static _UICornerMaskingConfiguration.unspecified.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EA92EAB0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EA92EAE8;
  v8[2] = xmmword_1EA92EAD8;
  v9[0] = unk_1EA92EAE8;
  v2 = unk_1EA92EAF2;
  *(v9 + 10) = unk_1EA92EAF2;
  v4 = xmmword_1EA92EAB8;
  v3 = unk_1EA92EAC8;
  v8[0] = xmmword_1EA92EAB8;
  v8[1] = unk_1EA92EAC8;
  a1[2] = xmmword_1EA92EAD8;
  a1[3] = v1;
  *(a1 + 58) = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_188AF8100(v8, &v7);
}

id sub_1890E267C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v2 = *MEMORY[0x1E69796E8];
  *&xmmword_1EA93C9E0 = v0;
  *(&xmmword_1EA93C9E0 + 1) = 0xF000000000000007;
  qword_1EA93C9F0 = v0;
  unk_1EA93C9F8 = 0xF000000000000007;
  *&xmmword_1EA93CA00 = v0;
  *(&xmmword_1EA93CA00 + 1) = 0xF000000000000007;
  qword_1EA93CA10 = v0;
  unk_1EA93CA18 = 0xF000000000000007;
  qword_1EA93CA20 = v2;
  word_1EA93CA28 = 0;
  sub_188A85484(v0);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v0);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v0);
  sub_188A854E0(0xF000000000000007);

  return v2;
}

uint64_t static _UICornerMaskingConfiguration.square.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EA931ED8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1EA93CA10;
  v8[2] = xmmword_1EA93CA00;
  v9[0] = *&qword_1EA93CA10;
  v2 = unk_1EA93CA1A;
  *(v9 + 10) = unk_1EA93CA1A;
  v4 = xmmword_1EA93C9E0;
  v3 = *&qword_1EA93C9F0;
  v8[0] = xmmword_1EA93C9E0;
  v8[1] = *&qword_1EA93C9F0;
  a1[2] = xmmword_1EA93CA00;
  a1[3] = v1;
  *(a1 + 58) = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_188AF8100(v8, &v7);
}

id static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)@<X0>(char a1@<W0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = 0xF000000000000007;
  if ((~*a2 & 0xF000000000000007) != 0)
  {
    sub_188A85484(*a2);
    v6 = v5;
  }

  v9 = *MEMORY[0x1E69796E8];
  v7 = *MEMORY[0x1E69796E8];
  *a3 = 0xC000000000000008;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0xC000000000000008;
  *(a3 + 24) = v6;
  *(a3 + 32) = 0xC000000000000008;
  *(a3 + 40) = v6;
  *(a3 + 48) = 0xC000000000000008;
  *(a3 + 56) = v6;
  *(a3 + 64) = v7;
  *(a3 + 73) = a1 & 1;
  *(a3 + 72) = 0;
  sub_188A85484(0xC000000000000008);
  sub_188A854E0(v6);
  sub_188A85484(0xC000000000000008);
  sub_188A854E0(v6);
  sub_188A85484(0xC000000000000008);
  sub_188A854E0(v6);

  return v9;
}

unint64_t *static _UICornerMaskingConfiguration.CornerStyle.containerConcentric(fallbackStyle:)@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = 0xF000000000000007;
  if ((~*result & 0xF000000000000007) != 0)
  {
    result = sub_188A85484(*result);
    v4 = v3;
  }

  *a2 = 0xC000000000000008;
  a2[1] = v4;
  return result;
}

id static _UICornerMaskingConfiguration.fixed(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7 = *MEMORY[0x1E69796E8];
  v5 = *MEMORY[0x1E69796E8];
  *a1 = v4;
  *(a1 + 8) = 0xF000000000000007;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0xF000000000000007;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0xF000000000000007;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0xF000000000000007;
  *(a1 + 64) = v5;
  *(a1 + 72) = 0;
  sub_188A85484(v4);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v4);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v4);
  sub_188A854E0(0xF000000000000007);

  return v7;
}

id static _UICornerMaskingConfiguration.system(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = v4 | 0x8000000000000000;
  v8 = *MEMORY[0x1E69796E8];
  v6 = *MEMORY[0x1E69796E8];
  *a2 = v5;
  *(a2 + 8) = 0xF000000000000007;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0xF000000000000007;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0xF000000000000007;
  *(a2 + 48) = v5;
  *(a2 + 56) = 0xF000000000000007;
  *(a2 + 64) = v6;
  *(a2 + 72) = 0;
  sub_188A85484(v5);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v5);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v5);
  sub_188A854E0(0xF000000000000007);

  return v8;
}

uint64_t static _UICornerMaskingConfiguration.CornerStyle.system(style:)@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result | 0x8000000000000000;
  a2[1] = 0xF000000000000007;
  return result;
}

id static _UICornerMaskingConfiguration.dynamic(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = v4 | 0x4000000000000000;
  v8 = *MEMORY[0x1E69796E8];
  v6 = *MEMORY[0x1E69796E8];
  *a1 = v5;
  *(a1 + 8) = 0xF000000000000007;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0xF000000000000007;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0xF000000000000007;
  *(a1 + 48) = v5;
  *(a1 + 56) = 0xF000000000000007;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  sub_188A85484(v5);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v5);
  sub_188A854E0(0xF000000000000007);
  sub_188A85484(v5);
  sub_188A854E0(0xF000000000000007);

  return v8;
}

uint64_t static _UICornerMaskingConfiguration.CornerStyle.dynamic(radius:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result | 0x4000000000000000;
  a1[1] = 0xF000000000000007;
  return result;
}

double static _UICornerMaskingConfiguration.CornerStyle.capsule()@<D0>(_OWORD *a1@<X8>)
{
  result = -2.0;
  *a1 = xmmword_18A665A80;
  return result;
}

uint64_t static _UICornerMaskingConfiguration.capsule.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EA931158 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EA931190;
  v8[2] = xmmword_1EA931180;
  v9[0] = unk_1EA931190;
  v2 = unk_1EA93119A;
  *(v9 + 10) = unk_1EA93119A;
  v4 = xmmword_1EA931160;
  v3 = *algn_1EA931170;
  v8[0] = xmmword_1EA931160;
  v8[1] = *algn_1EA931170;
  a1[2] = xmmword_1EA931180;
  a1[3] = v1;
  *(a1 + 58) = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_188AF8100(v8, &v7);
}

uint64_t _UICornerMaskingConfiguration.CornerStyle.System.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_1890E2D00(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18917EF5C(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1890E325C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v13 >= v14;
        ++v12;
        v13 = v14;
        if ((((v11 < v10) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_188E4B688(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_188E4B688((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1890E325C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*v27 >= v25)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1890E325C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

BOOL sub_1890E3450(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      if (a2 >> 62 == 2)
      {
        return *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      }
    }

    else if (a1 == 0xC000000000000000)
    {
      if (a2 == 0xC000000000000000)
      {
        return 1;
      }
    }

    else if (a1 == 0xC000000000000008)
    {
      if (a2 == 0xC000000000000008)
      {
        return 1;
      }
    }

    else if (a2 == 0xC000000000000010)
    {
      return 1;
    }
  }

  else if (v2)
  {
    if (a2 >> 62 == 1)
    {
      v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      return v3 == v4;
    }
  }

  else if (!(a2 >> 62))
  {
    v3 = *(a1 + 16);
    v4 = *(a2 + 16);
    return v3 == v4;
  }

  return 0;
}

unint64_t sub_1890E352C()
{
  result = qword_1EA93CA30;
  if (!qword_1EA93CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CA30);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1890E35A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1890E3600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1890E3660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1890E36BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1890E371C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1890E3758@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = _s15InstantlyStableVMa();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v5;
  v6 = _s7SwiftUIVMa();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - v7;
  v8 = _s14FrictionBounceVMa();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = _s6SpringVMa();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for RunningInProcessAnimation();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v21 = *(v2 + 104);
  swift_beginAccess();
  (*(v15 + 16))(v20, v1 + v21, v14);
  (*(v15 + 32))(v18, v20, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = v34;
      v25 = v35;
      v26 = v36;
      (*(v35 + 32))(v34, v18, v36);
      sub_188FBAC20(v26, v40);
      return (*(v25 + 8))(v24, v26);
    }

    v13 = v37;
    v23 = v38;
    v11 = v39;
    (*(v38 + 32))(v37, v18, v39);
    (*(*(v3 - 8) + 16))(v40, v13, v3);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v29 = v32;
      v28 = v33;
      (*(v32 + 32))(v10, v18, v33);
      (*(*(v3 - 8) + 16))(v40, &v10[*(v28 + 52)], v3);
      return (*(v29 + 8))(v10, v28);
    }

    v23 = v31;
    (*(v31 + 32))(v13, v18, v11);
    (*(*(v3 - 8) + 16))(v40, &v13[*(v11 + 44)], v3);
  }

  return (*(v23 + 8))(v13, v11);
}

uint64_t sub_1890E3C68(uint64_t result, char a2)
{
  v3 = v2 + *(*v2 + 112);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    *v3 = 0;
    *(v3 + 8) = 0;
    v4(result, a2 & 1);

    return sub_188EB09A0(v4, v5);
  }

  return result;
}

void sub_1890E3CDC(void (*a1)(char *))
{
  v3 = type metadata accessor for RunningInProcessAnimation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  signpost_c2_entryLock_start(v7, v8);
  os_unfair_lock_lock((*(v1 + 2) + 16));
  signpost_c2_entryLock_start(v9, v10);
  v11 = *(*v1 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v1[v11], v3);
  a1(v6);
  (*(v4 + 8))(v6, v3);
  os_unfair_lock_unlock((*(v1 + 2) + 16));
}

uint64_t sub_1890E3E58@<X0>(__int128 *a1@<X8>, double a2@<D0>)
{
  swift_beginAccess();
  v4 = type metadata accessor for RunningInProcessAnimation();
  sub_188F7E2D4(v4, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1890E3F08()
{
  v1 = *v0;
  v2 = _s7SwiftUIVMa();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v29 - v3;
  v4 = _s14FrictionBounceVMa();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - v5;
  v6 = _s6SpringVMa();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for RunningInProcessAnimation();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *(v1 + 104);
  swift_beginAccess();
  v17 = *(v10 + 16);
  v17(v15, v0 + v16, v9);
  v17(v12, v15, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v10 + 8))(v15, v9);
      v22 = v33;
      v21 = v34;
      v23 = v35;
      (*(v34 + 32))(v33, v12, v35);
      v20 = v22[*(v23 + 52)];
      (*(v21 + 8))(v22, v23);
    }

    else
    {
      v27 = *(v10 + 8);
      v27(v15, v9);
      v27(v12, v9);
      v20 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v24 = v30;
      v25 = v31;
      v26 = v32;
      (*(v31 + 32))(v30, v12, v32);
      v20 = sub_188FB5BB0(v26);
      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v19 = v29;
      (*(v29 + 32))(v8, v12, v6);
      v20 = sub_188F41B24(v6);
      (*(v19 + 8))(v8, v6);
    }

    (*(v10 + 8))(v15, v9);
  }

  return v20 & 1;
}

char *sub_1890E435C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[*(*v3 + 112)];
  *v7 = 0;
  v7[1] = 0;
  swift_unknownObjectWeakInit();
  v8 = *(*v3 + 104);
  v9 = type metadata accessor for RunningInProcessAnimation();
  (*(*(v9 - 8) + 16))(&v3[v8], a1, v9);
  v3[*(*v3 + 128)] = 0;
  v3[*(*v3 + 120)] = 0;
  v10 = *v7;
  v11 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  sub_188D738F4(a2);
  sub_188EB09A0(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9D0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v3 + 2) = v12;
  return v3;
}

uint64_t sub_1890E4524(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = _s15InstantlyStableVMa();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v36 - v6;
  v7 = _s7SwiftUIVMa();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v36 - v8;
  v9 = _s14FrictionBounceVMa();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - v10;
  v11 = _s6SpringVMa();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for RunningInProcessAnimation();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v18 = *(v4 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - v21;
  (*(v18 + 16))(&v36 - v21, a1, v4, v20);
  v23 = *(*v2 + 104);
  swift_beginAccess();
  (*(v15 + 32))(v17, v2 + v23, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v42 + 32))(v41, v17, v43);
      sub_188FBBA4C();
    }

    v33 = v44;
    v32 = v45;
    v34 = v46;
    (*(v45 + 32))(v44, v17, v46);
    (*(v18 + 40))(&v33[*(v34 + 36)], v22, v4);
    (*(v32 + 16))(v2 + v23, v33, v34);
    swift_storeEnumTagMultiPayload();
    (*(v32 + 8))(v33, v34);
  }

  else if (EnumCaseMultiPayload)
  {
    v26 = v38;
    v27 = *(v39 + 32);
    v28 = v17;
    v29 = v40;
    v30 = v27(v38, v28, v40);
    signpost_c2_entryLock_start(v30, v31);
    (*(v18 + 8))(v22, v4);
    v27((v2 + v23), v26, v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v25 = v37;
    (*(v37 + 32))(v13, v17, v11);
    (*(v18 + 40))(&v13[*(v11 + 48)], v22, v4);
    (*(v25 + 16))(v2 + v23, v13, v11);
    swift_storeEnumTagMultiPayload();
    (*(v25 + 8))(v13, v11);
  }

  return swift_endAccess();
}

void sub_1890E4B68(char *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___UIHoverEffectLayer__hoverStyle;
  v4 = *(v1 + OBJC_IVAR___UIHoverEffectLayer__hoverStyle);
  type metadata accessor for UIHoverStyle();
  v5 = v4;
  LOBYTE(v4) = sub_18A4A7C88();

  if (v4)
  {
  }

  else
  {
    v6 = *(v2 + v3);
    ObjectType = swift_getObjectType();
    if (ObjectType == swift_getObjectType())
    {
      v11 = *&a1[OBJC_IVAR___UIHoverStyle__shape + 16];
      v37[0] = *&a1[OBJC_IVAR___UIHoverStyle__shape];
      v37[1] = v11;
      v38[0] = *&a1[OBJC_IVAR___UIHoverStyle__shape + 32];
      *(v38 + 9) = *&a1[OBJC_IVAR___UIHoverStyle__shape + 41];
      v12 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 41];
      v14 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 16];
      v13 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 32];
      v39 = *&v6[OBJC_IVAR___UIHoverStyle__shape];
      v40 = v14;
      v41[0] = v13;
      *(v41 + 9) = v12;
      v15 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 41];
      v17 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 16];
      v16 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 32];
      v42 = *&v6[OBJC_IVAR___UIHoverStyle__shape];
      v43 = v17;
      v44[0] = v16;
      *(v44 + 9) = v15;
      memmove(&v6[OBJC_IVAR___UIHoverStyle__shape], &a1[OBJC_IVAR___UIHoverStyle__shape], 0x39uLL);
      v18 = v6;
      sub_188A3F29C(v37, v35, &qword_1EA934C40);
      sub_188A3F29C(&v39, v35, &qword_1EA934C40);
      sub_188A3F5FC(&v42, &qword_1EA934C40);
      v35[0] = v39;
      v35[1] = v40;
      v36[0] = v41[0];
      *(v36 + 9) = *(v41 + 9);
      sub_1892162C4(v35);

      sub_188A3F5FC(&v39, &qword_1EA934C40);
      v19 = *(v2 + v3);
      v20 = OBJC_IVAR___UIHoverStyle__effect;
      swift_beginAccess();
      sub_188A53994(&a1[v20], v35);
      sub_188A53994(v35, v34);
      v21 = OBJC_IVAR___UIHoverStyle__effect;
      swift_beginAccess();
      sub_188A53994(&v19[v21], v33);
      swift_beginAccess();
      v22 = v19;
      __swift_assign_boxed_opaque_existential_1(&v19[v21], v34);
      swift_endAccess();
      sub_189216168(v33);

      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {
      *&v39 = 0;
      BYTE8(v39) = -1;
      v8 = OBJC_IVAR___UIHoverStyle_host;
      swift_beginAccess();
      sub_188A3F29C(&v6[v8], v35, &unk_1EA93F7F0);
      swift_beginAccess();
      v9 = v6;
      sub_188CAF9D0(&v39, &v6[v8]);
      swift_endAccess();
      sub_188CB0610(v35);

      sub_188A3F5FC(v35, &unk_1EA93F7F0);
      sub_188A3F5FC(&v39, &unk_1EA93F7F0);
      [a1 copy];
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v10 = v34[0];
      }

      else
      {
        v23 = [objc_allocWithZone(UIHoverStyle) init];
        *(&v43 + 1) = &type metadata for UIHoverAutomaticEffect;
        *&v44[0] = &protocol witness table for UIHoverAutomaticEffect;
        v24 = OBJC_IVAR___UIHoverStyle__effect;
        swift_beginAccess();
        v10 = v23;
        __swift_destroy_boxed_opaque_existential_0Tm(v23 + v24);
        sub_188A5EBAC(&v42, v23 + v24);
        swift_endAccess();
        v25 = &v10[OBJC_IVAR___UIHoverStyle__shape];
        v27 = *&v10[OBJC_IVAR___UIHoverStyle__shape + 16];
        v26 = *&v10[OBJC_IVAR___UIHoverStyle__shape + 32];
        v28 = *&v10[OBJC_IVAR___UIHoverStyle__shape];
        *(v44 + 9) = *&v10[OBJC_IVAR___UIHoverStyle__shape + 41];
        v43 = v27;
        v44[0] = v26;
        v42 = v28;
        *(v25 + 1) = 0u;
        *(v25 + 2) = 0u;
        *(v25 + 6) = 0;
        *v25 = 0u;
        v25[56] = -1;
        sub_188A3F5FC(&v42, &qword_1EA934C40);
      }

      v29 = *(v2 + v3);
      *(v2 + v3) = v10;
      v30 = v10;

      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      BYTE8(v35[0]) = 1;
      v31 = OBJC_IVAR___UIHoverStyle_host;
      swift_beginAccess();
      sub_188A3F29C(&v30[v31], v34, &unk_1EA93F7F0);
      swift_beginAccess();
      sub_188CAF9D0(v35, &v30[v31]);
      swift_endAccess();
      sub_188CB0610(v34);

      sub_188A3F5FC(v34, &unk_1EA93F7F0);
      sub_188A3F5FC(v35, &unk_1EA93F7F0);
    }
  }
}

id sub_1890E50E0()
{
  v1 = OBJC_IVAR___UIHoverEffectLayer__hoverStyle;
  v2 = [objc_allocWithZone(UIHoverStyle) init];
  *(&v19 + 1) = &type metadata for UIHoverAutomaticEffect;
  *&v20[0] = &protocol witness table for UIHoverAutomaticEffect;
  v3 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  v4 = v2;
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + v3);
  sub_188A5EBAC(&v18, v2 + v3);
  swift_endAccess();
  v5 = &v4[OBJC_IVAR___UIHoverStyle__shape];
  v7 = *&v4[OBJC_IVAR___UIHoverStyle__shape + 16];
  v6 = *&v4[OBJC_IVAR___UIHoverStyle__shape + 32];
  v8 = *&v4[OBJC_IVAR___UIHoverStyle__shape];
  *(v20 + 9) = *&v4[OBJC_IVAR___UIHoverStyle__shape + 41];
  v19 = v7;
  v20[0] = v6;
  v18 = v8;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 6) = 0;
  *v5 = 0u;
  v5[56] = -1;
  sub_188A3F5FC(&v18, &qword_1EA934C40);

  *&v0[v1] = v4;
  v9 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___UIHoverEffectLayer_backgroundSublayers] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___UIHoverEffectLayer_overlaySublayers] = v9;
  v10 = &v0[OBJC_IVAR___UIHoverEffectLayer_shape];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 6) = 0;
  v10[56] = -1;
  swift_unknownObjectWeakInit();
  v17.receiver = v0;
  v17.super_class = UIHoverEffectLayer;
  v11 = objc_msgSendSuper2(&v17, sel_init);
  v12 = [v11 hoverStyle];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v16[8] = 1;
  v13 = OBJC_IVAR___UIHoverStyle_host;
  swift_beginAccess();
  sub_188A3F29C(v12 + v13, v15, &unk_1EA93F7F0);
  swift_beginAccess();
  sub_188CAF9D0(v16, v12 + v13);
  swift_endAccess();
  sub_188CB0610(v15);

  sub_188A3F5FC(v15, &unk_1EA93F7F0);
  sub_188A3F5FC(v16, &unk_1EA93F7F0);
  return v11;
}

id UIHoverEffectLayer.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v3 = OBJC_IVAR___UIHoverEffectLayer__hoverStyle;
  v4 = [objc_allocWithZone(UIHoverStyle) init];
  *(&v23 + 1) = &type metadata for UIHoverAutomaticEffect;
  *&v24[0] = &protocol witness table for UIHoverAutomaticEffect;
  v5 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  v6 = v4;
  __swift_destroy_boxed_opaque_existential_0Tm(v4 + v5);
  sub_188A5EBAC(&v22, v4 + v5);
  swift_endAccess();
  v7 = &v6[OBJC_IVAR___UIHoverStyle__shape];
  v9 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 16];
  v8 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 32];
  v10 = *&v6[OBJC_IVAR___UIHoverStyle__shape];
  *(v24 + 9) = *&v6[OBJC_IVAR___UIHoverStyle__shape + 41];
  v23 = v9;
  v24[0] = v8;
  v22 = v10;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 6) = 0;
  *v7 = 0u;
  v7[56] = -1;
  sub_188A3F5FC(&v22, &qword_1EA934C40);

  *&v1[v3] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___UIHoverEffectLayer_backgroundSublayers] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___UIHoverEffectLayer_overlaySublayers] = v11;
  v12 = &v1[OBJC_IVAR___UIHoverEffectLayer_shape];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 6) = 0;
  v12[56] = -1;
  swift_unknownObjectWeakInit();
  v21.receiver = v1;
  v21.super_class = UIHoverEffectLayer;
  v13 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    v16 = [v15 hoverStyle];
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v20[8] = 1;
    v17 = OBJC_IVAR___UIHoverStyle_host;
    swift_beginAccess();
    sub_188A3F29C(v16 + v17, v19, &unk_1EA93F7F0);
    swift_beginAccess();
    sub_188CAF9D0(v20, v16 + v17);
    swift_endAccess();
    sub_188CB0610(v19);

    sub_188A3F5FC(v19, &unk_1EA93F7F0);
    sub_188A3F5FC(v20, &unk_1EA93F7F0);
    return v14;
  }

  else
  {

    return 0;
  }
}

id sub_1890E565C(void *a1)
{
  v3 = OBJC_IVAR___UIHoverEffectLayer__hoverStyle;
  v4 = [objc_allocWithZone(UIHoverStyle) init];
  *(&v28 + 1) = &type metadata for UIHoverAutomaticEffect;
  *&v29[0] = &protocol witness table for UIHoverAutomaticEffect;
  v5 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  v6 = v4;
  __swift_destroy_boxed_opaque_existential_0Tm(v4 + v5);
  sub_188A5EBAC(&v27, v4 + v5);
  swift_endAccess();
  v7 = &v6[OBJC_IVAR___UIHoverStyle__shape];
  v9 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 16];
  v8 = *&v6[OBJC_IVAR___UIHoverStyle__shape + 32];
  v10 = *&v6[OBJC_IVAR___UIHoverStyle__shape];
  *(v29 + 9) = *&v6[OBJC_IVAR___UIHoverStyle__shape + 41];
  v29[0] = v8;
  v27 = v10;
  v28 = v9;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 6) = 0;
  *v7 = 0u;
  v7[56] = -1;
  sub_188A3F5FC(&v27, &qword_1EA934C40);

  *&v1[v3] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___UIHoverEffectLayer_backgroundSublayers] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___UIHoverEffectLayer_overlaySublayers] = v11;
  v12 = &v1[OBJC_IVAR___UIHoverEffectLayer_shape];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 6) = 0;
  v12[56] = -1;
  swift_unknownObjectWeakInit();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v13 = sub_18A4A86A8();
  v26.receiver = v1;
  v26.super_class = UIHoverEffectLayer;
  v14 = objc_msgSendSuper2(&v26, sel_initWithLayer_, v13);
  swift_unknownObjectRelease();
  v15 = sub_188A55598(a1, v25);
  type metadata accessor for UIHoverEffectLayer(v15);
  v16 = v14;
  if (swift_dynamicCast())
  {
    v17 = [v22 hoverStyle];
    [v16 setHoverStyle_];

    v18 = [v22 containerView];
    swift_unknownObjectWeakAssign();
  }

  v19 = [v16 hoverStyle];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v24[8] = 1;
  v20 = OBJC_IVAR___UIHoverStyle_host;
  swift_beginAccess();
  sub_188A3F29C(v19 + v20, v23, &unk_1EA93F7F0);
  swift_beginAccess();
  sub_188CAF9D0(v24, v19 + v20);
  swift_endAccess();
  sub_188CB0610(v23);

  sub_188A3F5FC(v23, &unk_1EA93F7F0);
  sub_188A3F5FC(v24, &unk_1EA93F7F0);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v16;
}

Swift::Void __swiftcall UIHoverEffectLayer.layoutSublayers()()
{
  v1 = v0;
  v102.super_class = UIHoverEffectLayer;
  objc_msgSendSuper2(&v102, sel_layoutSublayers);
  *&v107[9] = *&v0[OBJC_IVAR___UIHoverEffectLayer_shape + 41];
  v2 = *&v0[OBJC_IVAR___UIHoverEffectLayer_shape + 16];
  v105 = *&v0[OBJC_IVAR___UIHoverEffectLayer_shape];
  v106 = v2;
  *v107 = *&v0[OBJC_IVAR___UIHoverEffectLayer_shape + 32];
  v3 = v107[24];
  if (v107[24] == 255)
  {
    v7 = 0;
    v4 = 0uLL;
    v3 = 6;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    v4 = v105;
    v5 = v106;
    v6 = *v107;
    v7 = *&v107[16];
  }

  v86 = v4;
  v87 = v5;
  *v88 = v6;
  *&v88[16] = v7;
  v88[24] = v3;
  sub_188A3F29C(&v105, v100, &qword_1EA934C40);
  sub_188E83750(&v93);
  UIShape.resolve(in:)(&v93, v100);
  v89[4] = v97;
  v89[5] = v98;
  v90[0] = *v99;
  *(v90 + 9) = *&v99[9];
  v89[0] = v93;
  v89[1] = v94;
  v89[2] = v95;
  v89[3] = v96;
  sub_188E81DCC(v89);
  v91[0] = v86;
  v91[1] = v87;
  v92[0] = *v88;
  *(v92 + 9) = *&v88[9];
  sub_188B2040C(v91);
  v97 = v100[4];
  v98 = v100[5];
  *v99 = v101[0];
  *&v99[9] = *(v101 + 9);
  v93 = v100[0];
  v94 = v100[1];
  v95 = v100[2];
  v96 = v100[3];
  v8 = *&v0[OBJC_IVAR___UIHoverEffectLayer_backgroundSublayers];
  if (v8 >> 62)
  {
LABEL_54:
    v9 = sub_18A4A7F68();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = &selRef_setEnqueuedWillEnterForegroundActions_;
  v11 = &selRef_setContentViewMaxHeightConstraint_;
  v12 = &selRef_makeButtonWithSystemImageNamed_action_;
  if (!v9)
  {
    goto LABEL_28;
  }

  v14 = *(&v97 + 1);
  v13 = v97;
  v15 = *v99;
  v77 = *v99;
  v74 = *&v99[16];
  v72 = v99[24];
  v80 = v98;
  v82 = (v8 & 0xC000000000000001);
  v66 = v8 & 0xFFFFFFFFFFFFFF8;
  v65 = v8 + 32;
  v16 = *(&v97 + 1);
  v17 = v98;
  v18 = *(&v98 + 1);
  v19 = *v99;
  v20 = *(&v97 + 1) == 0.0;
  if (*&v98 != 0.0)
  {
    v20 = 0;
  }

  v70 = v20;

  v67 = v14;
  v68 = v8;
  do
  {
    while (1)
    {
      if (__OFSUB__(v9--, 1))
      {
        __break(1u);
LABEL_50:

        goto LABEL_51;
      }

      if (v82)
      {
        v22 = sub_188E4B058(v9, v8);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (v9 >= *(v66 + 16))
        {
          goto LABEL_53;
        }

        v22 = *(v65 + 8 * v9);
      }

      v23 = v22;
      [v1 insertSublayer:v22 atIndex:{0, v65}];
      if (v72)
      {
        break;
      }

      *&v86 = v13;
      *(&v86 + 1) = v14;
      *&v87 = v80;
      *(&v87 + 1) = *(&v17 + 1);
      *v88 = v77;
      *&v88[8] = *(&v15 + 1);
      *&v88[16] = v74;
      sub_188E83AF4();

      if (!v9)
      {
        goto LABEL_27;
      }
    }

    v24 = v13;
    [v23 v10[400]];
    [v23 v11[83]];
    if (v70)
    {
      a = COERCE_DOUBLE(v24);
    }

    else
    {
      [v24 copy];
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A34624(0, &qword_1EA92E890);
      swift_dynamicCast();
      a = v84.a;
      CGAffineTransformMakeTranslation(&v103, -v16, -*&v17);
      [*&v84.a applyTransform_];
    }

    v26 = [v23 v12[109]];
    if (v26)
    {
      v27 = v26;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = v11;
        v31 = v10;
        v32 = v1;
        v33 = [*&a CGPath];
        [v29 setPath_];

        v1 = v32;
        v10 = v31;
        v11 = v30;
        v12 = &selRef_makeButtonWithSystemImageNamed_action_;
        goto LABEL_26;
      }
    }

    v34 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
    v35 = [*&a CGPath];
    [v34 setPath_];

    v36 = v34;
    [v23 setMask_];

LABEL_26:
    v14 = v67;
    sub_188E85168(v13, v67, v80, *(&v17 + 1), v77, *(&v15 + 1), v74, 1);
    v8 = v68;
  }

  while (v9);
LABEL_27:

LABEL_28:
  v37 = *&v1[OBJC_IVAR___UIHoverEffectLayer_overlaySublayers];
  if (v37 >> 62)
  {
    v38 = sub_18A4A7F68();
    if (!v38)
    {
      goto LABEL_51;
    }

LABEL_30:
    v83 = v1;
    if (v38 < 1)
    {
      __break(1u);
      return;
    }

    v40 = *(&v97 + 1);
    v39 = v97;
    v41 = *(&v98 + 1);
    v42 = *&v98;
    v43 = *v99;
    v79 = *&v99[16];
    v81 = *&v99[8];
    v78 = v99[24];
    v76 = v37 & 0xC000000000000001;
    v44 = *(&v97 + 1);
    v45 = v98;
    v46 = *v99;
    v47 = *(&v97 + 1) == 0.0;
    if (*&v98 != 0.0)
    {
      v47 = 0;
    }

    v71 = v47;

    v48 = 0;
    *&v73 = v43;
    *&v75 = v41;
    v69 = v39;
    while (1)
    {
      v50 = v76 ? sub_188E4B058(v48, v37) : *(v37 + 8 * v48 + 32);
      v51 = v50;
      [v83 addSublayer_];
      if (v78)
      {
        break;
      }

      *&v103.a = v39;
      v103.b = v40;
      v103.c = v42;
      v103.d = v41;
      v103.tx = v43;
      v103.ty = v81;
      v104 = v79;
      sub_188E83AF4();
      v49 = v51;
LABEL_35:
      ++v48;

      if (v38 == v48)
      {
        goto LABEL_50;
      }
    }

    v52 = v39;
    [v51 setFrame_];
    [v51 setCornerRadius_];
    if (v71)
    {
      v49 = v52;
    }

    else
    {
      [v52 copy];
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188A34624(0, &qword_1EA92E890);
      swift_dynamicCast();
      v49 = v85;
      CGAffineTransformMakeTranslation(&v84, -v44, -*&v45);
      [v49 applyTransform_];
    }

    v53 = [v51 mask];
    if (v53)
    {
      v54 = v53;
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (v55)
      {
        v56 = v55;
        v57 = v37;
        v58 = v42;
        v59 = v38;
        v60 = v40;
        v61 = [v49 CGPath];
        [v56 setPath_];

        v40 = v60;
        v38 = v59;
        v42 = v58;
        v37 = v57;
        v39 = v69;
LABEL_48:

        v43 = *&v73;
        v41 = *&v75;
        sub_188E85168(v39, *&v40, *&v42, v75, v73, *&v81, v79, 1);
        goto LABEL_35;
      }
    }

    v62 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
    v63 = [v49 CGPath];
    [v62 setPath_];

    v64 = v62;
    [v51 setMask_];

    goto LABEL_48;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
    goto LABEL_30;
  }

LABEL_51:
  sub_188E81D2C(&v93);
}

uint64_t sub_1890E6428(uint64_t a1)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v3 = OBJC_IVAR___UIHoverStyle__effect;
    swift_beginAccess();
    sub_188A53994(a1 + v3, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    swift_unknownObjectWeakInit();
    v2 = 1;
    v11[8] = 1;
    (*(v5 + 8))(&v12, v11, v4, v5);
    sub_189065604(v11);
    v6 = v12;
    v7 = v14;
    v8 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v9 = (v7 >> 4) & 3;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        return v2;
      }

      v2 = 0;
    }

    sub_1890655E0(v6, v8 | (v7 << 16));
    return v2;
  }

  return 0;
}

uint64_t sub_1890E6534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55[1] = a2;
  v3 = sub_18A4A3D18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v57 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v65 = v55 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = v55 - v11;
  v12 = sub_18A4A2B48();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = v55 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v69 = v55 - v19;
  v55[2] = a1;
  sub_1890E6F70(&v84);
  v20 = __swift_project_boxed_opaque_existential_0(v86, v86[3]);
  v21 = MEMORY[0x1EEE9AC00](v20);
  (*(v23 + 16))(v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v81);
  sub_18A4A7458();
  v68 = (v13 + 48);
  v64 = (v13 + 32);
  v79 = (v13 + 16);
  v63 = *MEMORY[0x1E69DBC38];
  v62 = (v4 + 104);
  v75 = (v4 + 16);
  v74 = v4 + 32;
  v60 = v13;
  v24 = (v13 + 8);
  v25 = MEMORY[0x1E69E7CC0];
  v66 = v4;
  v61 = (v4 + 8);
  v58 = MEMORY[0x1E69E7CC0];
  v59 = MEMORY[0x1E69E7CC0];
  v67 = v3;
LABEL_2:
  v26 = v69;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v81, AssociatedTypeWitness);
    sub_18A4A7D78();
    if ((*v68)(v26, 1, v12) == 1)
    {
      break;
    }

    v27 = v80;
    (*v64)(v80, v26, v12);
    v28 = v77;
    v78 = *v79;
    v78(v77, v27, v12);
    (*v62)(v28, v63, v3);
    v29 = v65;
    v70 = *v75;
    v70(v65, v28, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_188E4CB2C(0, *(v25 + 2) + 1, 1, v25);
    }

    v31 = *(v25 + 2);
    v30 = *(v25 + 3);
    if (v31 >= v30 >> 1)
    {
      v25 = sub_188E4CB2C(v30 > 1, v31 + 1, 1, v25);
    }

    *(v25 + 2) = v31 + 1;
    v72 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v71 = *(v66 + 72);
    v73 = *(v66 + 32);
    v73(&v25[v72 + v71 * v31], v29, v3);
    v32 = v85;
    v33 = *(v85 + 16);
    v76 = v25;
    if (v33)
    {
      sub_1890E7A48(&qword_1EA92F720);
      v34 = sub_18A4A7198();
      v35 = -1 << *(v32 + 32);
      v36 = v34 & ~v35;
      if ((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        v38 = *(v60 + 72);
        while (1)
        {
          v78(v15, (*(v32 + 48) + v38 * v36), v12);
          sub_1890E7A48(&qword_1EA92F710);
          v39 = sub_18A4A7248();
          (*v24)(v15, v12);
          if (v39)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          if (((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v70(v56, v77, v3);
        v40 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_188E4CB2C(0, v40[2] + 1, 1, v40);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = sub_188E4CB2C(v41 > 1, v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v58 = v40;
        v73(v40 + v72 + v42 * v71, v56, v3);
      }
    }

LABEL_20:
    v43 = *(&v84 + 1);
    if (*(*(&v84 + 1) + 16))
    {
      sub_1890E7A48(&qword_1EA92F720);
      v44 = sub_18A4A7198();
      v45 = -1 << *(v43 + 32);
      v46 = v44 & ~v45;
      if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
      {
        v47 = ~v45;
        v48 = *(v60 + 72);
        while (1)
        {
          v78(v15, (*(v43 + 48) + v48 * v46), v12);
          sub_1890E7A48(&qword_1EA92F710);
          v49 = sub_18A4A7248();
          v50 = *v24;
          (*v24)(v15, v12);
          if (v49)
          {
            break;
          }

          v46 = (v46 + 1) & v47;
          if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v3 = v67;
        v70(v57, v77, v67);
        v51 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_188E4CB2C(0, v51[2] + 1, 1, v51);
        }

        v53 = v51[2];
        v52 = v51[3];
        if (v53 >= v52 >> 1)
        {
          v51 = sub_188E4CB2C(v52 > 1, v53 + 1, 1, v51);
        }

        (*v61)(v77, v3);
        v50(v80, v12);
        v51[2] = v53 + 1;
        v59 = v51;
        v73(v51 + v72 + v53 * v71, v57, v3);
        v25 = v76;
        goto LABEL_2;
      }
    }

LABEL_3:
    v3 = v67;
    (*v61)(v77, v67);
    (*v24)(v80, v12);
    v26 = v69;
    v25 = v76;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  sub_18A4A4158();

  return sub_1890C3D10(&v84);
}

uint64_t sub_1890E6F70@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = sub_1890E7A8C(v1 + 96, v6);
  if (*(&v6[0] + 1))
  {
    v4 = v6[3];
    a1[2] = v6[2];
    a1[3] = v4;
    a1[4] = v6[4];
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  else
  {
    sub_188A3F5FC(v6, &unk_1EA93CA68);
    sub_1890E703C((v1 + 16), a1);
    sub_1890E7AFC(a1, v6);
    swift_beginAccess();
    sub_1890E7B34(v6, v1 + 96);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1890E703C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  v9 = sub_18A4A2B48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = a1[9];
  v74 = swift_allocObject();
  v75 = a1;
  *(v74 + 16) = v23;
  v24 = a1[1];
  v25 = v24 + 56;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  v29 = (v26 + 63) >> 6;
  v81 = (v10 + 56);
  v82 = v10 + 16;
  v79 = (v10 + 48);
  v80 = (v10 + 8);
  v83 = v10;
  v84 = v23;
  v70 = (v10 + 32);
  swift_unknownObjectRetain_n();
  v77 = v24;

  v31 = 0;
  v73 = MEMORY[0x1E69E7CC0];
  v76 = v5;
LABEL_4:
  v32 = v31;
  if (!v28)
  {
    goto LABEL_6;
  }

  do
  {
    v31 = v32;
LABEL_9:
    v33 = *(v83 + 72);
    (*(v83 + 16))(v22, v77[6] + v33 * (__clz(__rbit64(v28)) | (v31 << 6)), v9);
    v34 = sub_18A4A2B08();
    v35 = [v84 dataSourceIndexPathForPresentationIndexPath_];

    if (v35)
    {
      sub_18A4A2B18();

      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v28 &= v28 - 1;
    (*v81)(v8, v36, 1, v9);
    (*v80)(v22, v9);
    if ((*v79)(v8, 1, v9) != 1)
    {
      v37 = *v70;
      (*v70)(v69, v8, v9);
      v37(v71, v69, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_188E4BB58(0, v73[2] + 1, 1, v73);
      }

      v39 = v73[2];
      v38 = v73[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v66 = v39 + 1;
        v42 = sub_188E4BB58(v38 > 1, v39 + 1, 1, v73);
        v40 = v66;
        v73 = v42;
      }

      v41 = v73;
      v73[2] = v40;
      result = (v37)(v41 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + v39 * v33, v71, v9);
      v5 = v76;
      goto LABEL_4;
    }

    result = sub_188A3F5FC(v8, &unk_1EA93C130);
    v32 = v31;
    v5 = v76;
  }

  while (v28);
  while (1)
  {
LABEL_6:
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v31);
    ++v32;
    if (v28)
    {
      goto LABEL_9;
    }
  }

  v71 = sub_188F991B8(v73);

  v43 = v75[2];
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v43 + 56);
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  v77 = MEMORY[0x1E69E7CC0];
  while (v46)
  {
    v49 = v48;
LABEL_28:
    v50 = *(v83 + 72);
    (*(v83 + 16))(v78, *(v43 + 48) + v50 * (__clz(__rbit64(v46)) | (v49 << 6)), v9);
    v51 = sub_18A4A2B08();
    v52 = [v84 dataSourceIndexPathForPresentationIndexPath_];

    if (v52)
    {
      sub_18A4A2B18();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v46 &= v46 - 1;
    (*v81)(v5, v53, 1, v9);
    (*v80)(v78, v9);
    if ((*v79)(v5, 1, v9) == 1)
    {
      result = sub_188A3F5FC(v5, &unk_1EA93C130);
      v48 = v49;
    }

    else
    {
      v54 = *v70;
      (*v70)(v67, v5, v9);
      v54(v68, v67, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_188E4BB58(0, v77[2] + 1, 1, v77);
      }

      v56 = v77[2];
      v55 = v77[3];
      if (v56 >= v55 >> 1)
      {
        v77 = sub_188E4BB58(v55 > 1, v56 + 1, 1, v77);
      }

      v57 = v77;
      v77[2] = v56 + 1;
      result = (v54)(v57 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + v56 * v50, v68, v9);
      v48 = v49;
      v5 = v76;
    }
  }

  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      v58 = sub_188F991B8(v77);

      v59 = v75;
      __swift_project_boxed_opaque_existential_0(v75 + 3, v75[6]);

      v60 = sub_18A4A7468();

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EF8);
      v62 = v72;
      *(v72 + 48) = v61;
      *(v62 + 56) = sub_1890E7BAC();
      v63 = v84;
      swift_unknownObjectRelease();

      *(v62 + 16) = v58;
      *(v62 + 24) = v60;
      v64 = *(v59 + 64);
      *v62 = 1;
      *(v62 + 72) = v63;
      *(v62 + 8) = v71;
      *(v62 + 64) = v64;
      return result;
    }

    v46 = *(v43 + 56 + 8 * v49);
    ++v48;
    if (v46)
    {
      goto LABEL_28;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}