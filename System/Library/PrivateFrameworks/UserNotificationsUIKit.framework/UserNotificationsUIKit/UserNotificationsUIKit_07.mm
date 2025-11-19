uint64_t sub_21E91B5E0(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_19;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 == -1)
  {
    goto LABEL_6;
  }

  v5 = result;
  v6 = sub_21E91C9A0(v2 + 1, 0);
  result = sub_21E91CB0C(&v14, (v6 + 4), v3, v5, a2);
  if (result != v3)
  {
    __break(1u);
LABEL_6:
    v6 = MEMORY[0x277D84F90];
  }

  v7 = v6[2];
  if (v7 >= 2)
  {
    v8 = v7 >> 1;
    v9 = v7 + 3;
    v10 = 4;
    do
    {
      if (v10 != v9)
      {
        v11 = v6[2];
        if (v10 - 4 >= v11)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if (v9 - 4 >= v11)
        {
          goto LABEL_18;
        }

        v12 = v6[v10];
        v13 = v6[v9];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21E924E54(v6);
          v6 = result;
        }

        v6[v10] = v13;
        v6[v9] = v12;
      }

      --v9;
      ++v10;
      --v8;
    }

    while (v8);
  }

  return v6;
}

id sub_21E91B6FC()
{
  v1 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___prototypeSettings;
  v2 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___prototypeSettings);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___prototypeSettings);
  }

  else
  {
    v4 = [objc_opt_self() rootSettings];
    v5 = [v4 scrollViewExclusionSettings];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_21E91B7A0()
{
  v1 = v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v1 + 8);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v5 = [*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView) traitCollection];
    [v5 displayScale];

    UIPointRoundToScale();
    (*(v3 + 8))(v0, ObjectType, v3);
  }
}

void sub_21E91B8B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex;
  v5 = *(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_currentExclusionIndex);
  v6 = MEMORY[0x277D83B88];
  *(v3 + 16) = xmmword_21E947520;
  v7 = MEMORY[0x277D83C10];
  *(v3 + 56) = v6;
  *(v3 + 64) = v7;
  *(v3 + 32) = v5;
  v8 = sub_21E92A468();
  sub_21E7950DC(v8, v9, 0xD000000000000014, 0x800000021E959E50);

  v10 = *(v1 + v4);
  if (v10 != -1 && v10 != a1)
  {
    v12 = v1 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = *(v12 + 8);
      v16 = Strong;
      ObjectType = swift_getObjectType();
      (*(v14 + 16))(v1, v10, a1, ObjectType, v14);
    }
  }
}

void sub_21E91B9F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_debugView;
  [*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_debugView) removeFromSuperview];
  v3 = *(v0 + v2);
  v58 = v2;
  *(v0 + v2) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v67 = MEMORY[0x277D84F90];

    sub_21E8D5318(0, v5, 0);
    v6 = v67;
    v7 = *(v67 + 16);
    v8 = 32 * v7;
    v9 = (v4 + 48);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *(v67 + 24);
      v13 = v7 + 1;
      if (v7 >= v12 >> 1)
      {
        v63 = *v9;
        v65 = *(v9 - 1);
        sub_21E8D5318((v12 > 1), v7 + 1, 1);
        v11 = v63;
        v10 = v65;
      }

      *(v67 + 16) = v13;
      v14 = v67 + v8;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      v8 += 32;
      v9 = (v9 + 40);
      v7 = v13;
      --v5;
    }

    while (v5);
  }

  v15 = *(v6 + 16);
  v64 = v0;
  if (v15)
  {
    v68 = MEMORY[0x277D84F90];
    sub_21E8D52F8(0, v15, 0);
    v16 = (v6 + 56);
    do
    {
      v17 = *(v16 - 3);
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      v69.origin.x = v17;
      v69.origin.y = v18;
      v69.size.width = v19;
      v69.size.height = *v16;
      CGRectGetMinY(v69);
      v21 = sub_21E92A5E8();
      MEMORY[0x223D64660](v21);

      MEMORY[0x223D64660](540945696, 0xE400000000000000);
      v70.origin.x = v17;
      v70.origin.y = v18;
      v70.size.width = v19;
      v70.size.height = v20;
      CGRectGetMaxY(v70);
      v22 = sub_21E92A5E8();
      MEMORY[0x223D64660](v22);

      MEMORY[0x223D64660](41, 0xE100000000000000);
      v24 = *(v68 + 16);
      v23 = *(v68 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_21E8D52F8((v23 > 1), v24 + 1, 1);
      }

      *(v68 + 16) = v24 + 1;
      v25 = v68 + 16 * v24;
      *(v25 + 32) = 40;
      *(v25 + 40) = 0xE100000000000000;
      v16 += 4;
      --v15;
    }

    while (v15);
    v1 = v0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7468);
  sub_21E91CAA8();
  v26 = sub_21E92A408();
  v28 = v27;

  sub_21E7950DC(v26, v28, 0x73656E6F5AuLL, 0xE500000000000000);

  if ((*(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_showsDebugView) & 1) == 0)
  {

    return;
  }

  v29 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView;
  [*(v1 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView) contentSize];
  v31 = v30;
  v61 = v29;
  [*(v1 + v29) contentSize];
  v32 = 0x277D75000uLL;
  v60 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E948940;
  v35 = objc_opt_self();
  *(inited + 32) = [v35 systemYellowColor];
  *(inited + 40) = [v35 systemOrangeColor];
  *(inited + 48) = [v35 systemCyanColor];
  *(inited + 56) = [v35 systemPinkColor];
  v59 = v35;
  v62 = inited;
  *(inited + 64) = [v35 systemPurpleColor];
  v36 = *(v6 + 16);
  if (!v36)
  {
LABEL_22:

    swift_setDeallocating();
    swift_arrayDestroy();
    [v60 setUserInteractionEnabled_];
    v55 = *(v1 + v58);
    *(v1 + v58) = v60;
    v56 = v60;

    v57 = *(v1 + v61);
    [v57 addSubview_];

    return;
  }

  v37 = 0;
  v38 = (v6 + 56);
  v39 = 32;
  while (1)
  {
    v50 = *(v38 - 2);
    v51 = *v38;
    [*(v1 + v61) contentSize];
    v53 = v32;
    v54 = [objc_allocWithZone(*(v32 + 3352)) initWithFrame_];
    v66 = v36;
    if ((v62 & 0xC000000000000001) == 0)
    {
      break;
    }

    v40 = MEMORY[0x223D64A50](v37 % 5, v62);
LABEL_17:
    v41 = v40;
    ++v37;
    v42 = [v40 colorWithAlphaComponent_];

    [v54 setBackgroundColor_];
    v43 = [v54 layer];
    v44 = [v59 blackColor];
    v45 = [v44 CGColor];

    [v43 setBorderColor_];
    v46 = [v54 layer];
    [v46 setBorderWidth_];

    [v54 bounds];
    MidY = CGRectGetMidY(v71);
    [v54 frame];
    v48 = [objc_allocWithZone(*(v53 + 3352)) initWithFrame_];
    v49 = [v59 grayColor];
    [v48 setBackgroundColor_];

    [v54 addSubview_];
    [v60 addSubview_];

    v32 = v53;
    v39 += 8;
    v38 += 4;
    --v36;
    v1 = v64;
    if (v66 == 1)
    {
      goto LABEL_22;
    }
  }

  if (v37 % 5 < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v62 + v39 - 40 * (v37 / 5));
    goto LABEL_17;
  }

  __break(1u);
}

void sub_21E91C114()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E9468F0;
  v3 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_animatableProperty);
  *(v2 + 32) = v3;
  sub_21E8B1DC4();
  v4 = v3;
  v5 = sub_21E92A518();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_21E91C950;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21E792C28;
  v8[3] = &block_descriptor_59_0;
  v7 = _Block_copy(v8);

  [v1 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v7);
}

void sub_21E91C274()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_animatableProperty) presentationValue];
    v2 = &v1[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__animationOffset];
    *v2 = 0;
    *(v2 + 1) = v3;
    sub_21E91B7A0();
  }
}

id sub_21E91C2F4()
{
  v1 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___animationBehavior;
  v2 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___animationBehavior);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_21E91B6FC();
    [v4 damping];
    v6 = v5;

    [*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___prototypeSettings) response];
    v3 = [objc_opt_self() behaviorWithDampingRatio:v6 response:v7];
    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    sub_21E91C930(v8);
  }

  sub_21E91C940(v2);
  return v3;
}

void sub_21E91C3C4(double a1, double a2, double a3, double a4)
{
  v7 = *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_animatableProperty];
  [v7 velocity];
  v9 = v8;
  [v7 presentationValue];
  v11 = a2 - a4 + v10;
  v12 = &v4[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__animationOffset];
  *v12 = 0.0;
  v12[1] = v11;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v11;
  *(v14 + 32) = v9;
  v26 = sub_21E91C8A8;
  v27 = v14;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21E792C28;
  v25 = &block_descriptor_9;
  v15 = _Block_copy(&v22);
  v16 = v4;

  [v13 _performWithoutRetargetingAnimations_];
  _Block_release(v15);
  v17 = sub_21E91C2F4();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v26 = sub_21E91C910;
  v27 = v18;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21E792C28;
  v25 = &block_descriptor_50;
  v19 = _Block_copy(&v22);
  v20 = v16;

  v26 = CGRectMake;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21E799760;
  v25 = &block_descriptor_53_0;
  v21 = _Block_copy(&v22);
  [v13 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v21);
  _Block_release(v19);
}

double sub_21E91C634(double a1, double a2)
{
  v4 = OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView;
  [*(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView) adjustedContentInset];
  v6 = *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + a2;
    for (i = v6 + 64; ; i += 40)
    {
      v11 = *(i - 24);
      if (v11 < v9 && v9 < v11 + *(i - 8))
      {
        break;
      }

      if (v7 == ++v8)
      {
        return 0.0;
      }
    }

    [*(v2 + v4) adjustedContentInset];
    v13 = sub_21E91B6FC();
    [v13 rubberbandingCoefficient];

    [*(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager____lazy_storage___prototypeSettings) isRubberbandingEnabled];
  }

  return 0.0;
}

id sub_21E91C7B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollViewExclusionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21E91C8A8()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_animatableProperty);
  [v2 setValue_];

  return [v2 setVelocity_];
}

void sub_21E91C930(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_21E91C940(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_21E91C958()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void *sub_21E91C9A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8540);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21E91CA24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED71A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_21E91CAA8()
{
  result = qword_280D03ED0;
  if (!qword_280D03ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CED7468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D03ED0);
  }

  return result;
}

uint64_t sub_21E91CB0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_21E91CBB0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_animatableProperty);
  [v1 setValue_];

  return [v1 setVelocity_];
}

char *sub_21E91CC30(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_traitChangeRegistration] = 0;
  v9 = &v4[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_action];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_opt_self() buttonWithType_];
  *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button] = v10;
  v32.receiver = v4;
  v32.super_class = type metadata accessor for HighlightsShowMoreLabel();
  v11 = objc_msgSendSuper2(&v32, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button;
  v13 = *&v11[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button];
  v14 = v11;
  [v14 addSubview_];
  [*&v11[v12] setAutoresizingMask_];
  [*&v11[v12] addTarget:v14 action:sel_handleTap forControlEvents:64];
  v15 = *&v11[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 secondaryLabelColor];
  [v17 setTitleColor:v18 forState:0];

  v19 = [*&v11[v12] titleLabel];
  v20 = v19;
  if (v19)
  {
    [v19 setTextAlignment_];
    v21 = objc_opt_self();
    v22 = *MEMORY[0x277D769D0];
    v23 = v20;
    v24 = [v21 preferredFontForTextStyle_];
    [v23 setFont_];

    [v23 setAdjustsFontForContentSizeCategory_];
  }

  v25 = [*&v11[v12] titleLabel];
  if (!v25)
  {
    goto LABEL_6;
  }

  v26 = v25;
  v27 = *MEMORY[0x277D76918];
  result = [v14 preferredContentSizeCategory];
  if (result)
  {
    v29 = result;
    v30 = *MEMORY[0x277D74418];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    [v14 _updateTextAttributesForLabel_withTextStyle_fontWeight_additionalTraits_maximumNumberOfLines_];
LABEL_6:

    return v14;
  }

  __break(1u);
  return result;
}

void sub_21E91D01C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for HighlightsShowMoreLabel();
  objc_msgSendSuper2(&v8, sel__updateTextAttributes);
  v1 = [*&v0[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button] titleLabel];
  if (v1)
  {
    v2 = v1;
    v3 = *MEMORY[0x277D76918];
    v4 = [v0 preferredContentSizeCategory];
    if (v4)
    {
      v5 = v4;
      v6 = *MEMORY[0x277D74418];
      IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

      [v0 _updateTextAttributesForLabel_withTextStyle_fontWeight_additionalTraits_maximumNumberOfLines_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21E91D15C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for HighlightsShowMoreLabel();
  objc_msgSendSuper2(&v8, sel_adjustForContentSizeCategoryChange);
  v1 = [*&v0[OBJC_IVAR____TtC22UserNotificationsUIKit23HighlightsShowMoreLabel_button] titleLabel];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = *MEMORY[0x277D76918];
  result = [v0 preferredContentSizeCategory];
  if (result)
  {
    v5 = result;
    v6 = *MEMORY[0x277D74418];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    [v0 _updateTextAttributesForLabel_withTextStyle_fontWeight_additionalTraits_maximumNumberOfLines_];
    return 1;
  }

  __break(1u);
  return result;
}

id sub_21E91D288()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsShowMoreLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21E91D438(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_21E929708();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_21E91D4A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E92A378();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21E796644(0, &qword_280D03E40);
  *v7 = sub_21E92A6C8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_21E92A3A8();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_280D03F38 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_21E929A78();
  __swift_project_value_buffer(v9, qword_280D05F40);
  v10 = sub_21E929A58();
  v11 = sub_21E92A648();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_15;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v31 = v13;
  *v12 = 136446210;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v14 = 0xE900000000000074;
      v15 = 0x6867696C68676968;
      goto LABEL_14;
    }

    if (a1 == 3)
    {
      v14 = 0x800000021E95A030;
      v15 = 0xD000000000000011;
      goto LABEL_14;
    }

LABEL_11:
    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    goto LABEL_14;
  }

  if (!a1)
  {
    v14 = 0xE500000000000000;
    v15 = 0x746E756F63;
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    goto LABEL_11;
  }

  v14 = 0xE400000000000000;
  v15 = 1801678700;
LABEL_14:
  v16 = sub_21E79841C(v15, v14, &v31);

  *(v12 + 4) = v16;
  _os_log_impl(&dword_21E77E000, v10, v11, "Releasing backlight assertion with reason %{public}s", v12, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  MEMORY[0x223D65FB0](v13, -1, -1);
  MEMORY[0x223D65FB0](v12, -1, -1);
LABEL_15:

  v17 = OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion;
  v18 = *&v2[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion];
  if (!v18)
  {
    *&v2[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount] = 0;
    v23 = sub_21E929A58();
    v28 = sub_21E92A648();
    if (os_log_type_enabled(v23, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_21E77E000, v23, v28, "Backlight assertion is already released!", v29, 2u);
      MEMORY[0x223D65FB0](v29, -1, -1);
    }

    goto LABEL_24;
  }

  v19 = OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount;
  v20 = *&v2[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount];
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (!v21)
  {
    *&v2[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount] = v22 & ~(v22 >> 63);
    if (v22 <= 0)
    {
      [v18 invalidate];
      v23 = *&v2[v17];
      *&v2[v17] = 0;
    }

    else
    {
      v23 = v18;
      v24 = v2;
      v25 = sub_21E929A58();
      v26 = sub_21E92A648();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134349056;
        *(v27 + 4) = *&v2[v19];

        _os_log_impl(&dword_21E77E000, v25, v26, "Still have %{public}ld assertions to complete; Not releasing backlight assertion", v27, 0xCu);
        MEMORY[0x223D65FB0](v27, -1, -1);
      }

      else
      {

        v23 = v24;
      }
    }

LABEL_24:

    return;
  }

  __break(1u);
}

id sub_21E91D934()
{
  result = [objc_allocWithZone(NCBacklightAssertionManager) init];
  qword_280D03DE0 = result;
  return result;
}

void __swiftcall NCBacklightAssertionManager.init()(NCBacklightAssertionManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id NCBacklightAssertionManager.init()()
{
  *(v0 + OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion) = 0;
  *(v0 + OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount) = 0;
  v1 = (v0 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
  *v1 = 0;
  v1[1] = 0;
  v3.super_class = NCBacklightAssertionManager;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t NCBacklightAssertionManager.assertionWasAcquired(_:)(void *a1)
{
  v3 = sub_21E92A2F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21E92A318();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E796644(0, &qword_280D03E40);
  v10 = sub_21E92A6C8();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_21E91DF34;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E792C28;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;

  sub_21E92A308();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21E91DF3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0);
  sub_21E8C04E4();
  sub_21E92A7E8();
  MEMORY[0x223D64870](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_21E91DD4C(void *a1, uint64_t a2)
{
  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F40);
  v5 = a1;
  v6 = sub_21E929A58();
  v7 = sub_21E92A648();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = [v5 explanation];
    v11 = sub_21E92A458();
    v13 = v12;

    v14 = sub_21E79841C(v11, v13, &v19);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_21E77E000, v6, v7, "Backlight assertion %{public}s acquired", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223D65FB0](v9, -1, -1);
    MEMORY[0x223D65FB0](v8, -1, -1);
  }

  v15 = (a2 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
  v16 = *(a2 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
  if (v16)
  {

    v16(1, 0);
    sub_21E792694(v16);
    v17 = *v15;
  }

  else
  {
    v17 = 0;
  }

  *v15 = 0;
  v15[1] = 0;

  return sub_21E792694(v17);
}

unint64_t sub_21E91DF3C()
{
  result = qword_280D03F00;
  if (!qword_280D03F00)
  {
    sub_21E92A2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D03F00);
  }

  return result;
}

uint64_t NCBacklightAssertionManager.assertion(_:didCancelWithError:)(void *a1, void *a2)
{
  v5 = sub_21E92A2F8();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21E92A318();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E796644(0, &qword_280D03E40);
  v11 = sub_21E92A6C8();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a2;
  v12[4] = a1;
  aBlock[4] = sub_21E91E6D8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E792C28;
  aBlock[3] = &block_descriptor_6_0;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  v15 = a2;
  v16 = a1;

  sub_21E92A308();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21E91DF3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0);
  sub_21E8C04E4();
  sub_21E92A7E8();
  MEMORY[0x223D64870](0, v10, v7, v13);
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v18);
}

void sub_21E91E2AC(uint64_t a1, id a2, void *a3)
{
  if (a2)
  {
    v6 = a2;
    if (qword_280D03F38 != -1)
    {
      swift_once();
    }

    v7 = sub_21E929A78();
    __swift_project_value_buffer(v7, qword_280D05F40);
    v8 = a2;
    v9 = a3;
    v10 = sub_21E929A58();
    v11 = sub_21E92A648();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v12 = 136446466;
      v15 = [v9 explanation];
      v16 = sub_21E92A458();
      v18 = v17;

      v19 = sub_21E79841C(v16, v18, &v41);

      *(v12 + 4) = v19;
      *(v12 + 12) = 2114;
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v21;
      *v13 = v21;
      _os_log_impl(&dword_21E77E000, v10, v11, "Backlight assertion %{public}s is cancelled with error: %{public}@", v12, 0x16u);
      sub_21E91F4B4(v13);
      MEMORY[0x223D65FB0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x223D65FB0](v14, -1, -1);
      MEMORY[0x223D65FB0](v12, -1, -1);
    }

    v22 = (a1 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
    v23 = *(a1 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
    if (v23)
    {
      v24 = a2;
      sub_21E792C14(v23);
      v23(0, a2);

      sub_21E792694(v23);
    }

    v25 = *v22;
    *v22 = 0;
    v22[1] = 0;
  }

  else
  {
    if (qword_280D03F38 != -1)
    {
      swift_once();
    }

    v26 = sub_21E929A78();
    __swift_project_value_buffer(v26, qword_280D05F40);
    v27 = a3;
    v28 = sub_21E929A58();
    v29 = sub_21E92A648();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136446210;
      v32 = [v27 explanation];
      v33 = sub_21E92A458();
      v35 = v34;

      v36 = sub_21E79841C(v33, v35, &v41);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_21E77E000, v28, v29, "Backlight assertion %{public}s cancelled without error", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x223D65FB0](v31, -1, -1);
      MEMORY[0x223D65FB0](v30, -1, -1);
    }

    v37 = (a1 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
    v38 = *(a1 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
    if (v38)
    {

      v38(0, 0);
      sub_21E792694(v38);
      v25 = *v37;
    }

    else
    {
      v25 = 0;
    }

    *v37 = 0;
    v37[1] = 0;
  }

  sub_21E792694(v25);
  v39 = (a1 + OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion);
  v40 = *v39;
  if (*v39)
  {
    [v40 invalidate];
    v40 = *v39;
  }

  *v39 = 0;
}

uint64_t NCBacklightAssertionManager.assertion(_:didFailToAcquireWithError:)(void *a1, void *a2)
{
  v5 = sub_21E92A2F8();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21E92A318();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E796644(0, &qword_280D03E40);
  v11 = sub_21E92A6C8();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_21E91ECCC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E792C28;
  aBlock[3] = &block_descriptor_12_0;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = a2;
  v16 = v2;

  sub_21E92A308();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21E91DF3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED78A0);
  sub_21E8C04E4();
  sub_21E92A7E8();
  MEMORY[0x223D64870](0, v10, v7, v13);
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_21E91EA08(void *a1, void *a2, uint64_t a3)
{
  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v6 = sub_21E929A78();
  __swift_project_value_buffer(v6, qword_280D05F40);
  v7 = a1;
  v8 = a2;
  v9 = sub_21E929A58();
  v10 = sub_21E92A628();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v11 = 136446466;
    v14 = [v7 explanation];
    v15 = sub_21E92A458();
    v17 = v16;

    v18 = sub_21E79841C(v15, v17, &v28);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2114;
    v19 = a2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    *v12 = v20;
    _os_log_impl(&dword_21E77E000, v9, v10, "Backlight assertion %{public}s failed to acquired with error: %{public}@", v11, 0x16u);
    sub_21E91F4B4(v12);
    MEMORY[0x223D65FB0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x223D65FB0](v13, -1, -1);
    MEMORY[0x223D65FB0](v11, -1, -1);
  }

  v21 = OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion;
  v22 = *(a3 + OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion);
  if (v22)
  {
    [v22 invalidate];
    v23 = *(a3 + v21);
  }

  else
  {
    v23 = 0;
  }

  *(a3 + v21) = 0;

  v24 = (a3 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
  v25 = *(a3 + OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler);
  if (v25)
  {

    v25(0, a2);
    sub_21E792694(v25);
    v26 = *v24;
  }

  else
  {
    v26 = 0;
  }

  *v24 = 0;
  v24[1] = 0;

  return sub_21E792694(v26);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_21E91ED60(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v8 = sub_21E92A378();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  sub_21E796644(0, &qword_280D03E40);
  _Block_copy(a4);
  *v11 = sub_21E92A6C8();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = sub_21E92A3A8();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    if (qword_280D03F38 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_21E929A78();
  __swift_project_value_buffer(v14, qword_280D05F40);
  v15 = sub_21E929A58();
  v16 = sub_21E92A648();
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_16;
  }

  v58 = a3;
  v59 = v12;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v60 = v18;
  *v17 = 136446210;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v19 = a2;
      v21 = 0x6867696C68676968;
      v20 = 0xE900000000000074;
      goto LABEL_15;
    }

    if (a1 == 3)
    {
      v19 = a2;
      v21 = 0xD000000000000011;
      v20 = 0x800000021E95A030;
      goto LABEL_15;
    }

LABEL_12:
    v19 = a2;
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
    goto LABEL_15;
  }

  if (!a1)
  {
    v19 = a2;
    v21 = 0x746E756F63;
    v20 = 0xE500000000000000;
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    goto LABEL_12;
  }

  v19 = a2;
  v20 = 0xE400000000000000;
  v21 = 1801678700;
LABEL_15:
  v22 = sub_21E79841C(v21, v20, &v60);

  *(v17 + 4) = v22;
  _os_log_impl(&dword_21E77E000, v15, v16, "Acquiring backlight assertion with reason %{public}s", v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  MEMORY[0x223D65FB0](v18, -1, -1);
  MEMORY[0x223D65FB0](v17, -1, -1);

  a3 = v58;
  v12 = v59;
  a2 = v19;
LABEL_16:
  v23 = OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion;
  if (*&a3[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertion])
  {
    v24 = a3;
    v25 = sub_21E929A58();
    v26 = sub_21E92A648();

    if (os_log_type_enabled(v25, v26))
    {
      v59 = v12;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v60 = v28;
      *v27 = 136446210;
      v29 = *&a3[v23];
      if (v29)
      {
        v30 = [v29 explanation];
        v58 = a4;
        v31 = v23;
        v32 = a3;
        v33 = v30;
        v34 = sub_21E92A458();
        v36 = v35;

        a3 = v32;
        v23 = v31;
        a4 = v58;
      }

      else
      {
        v36 = 0xE500000000000000;
        v34 = 0x3E6C696E3CLL;
      }

      v41 = sub_21E79841C(v34, v36, &v60);

      *(v27 + 4) = v41;
      _os_log_impl(&dword_21E77E000, v25, v26, "Backlight assertion is already acquired with %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x223D65FB0](v28, -1, -1);
      MEMORY[0x223D65FB0](v27, -1, -1);
    }

    else
    {
    }

    v42 = *&v24[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      __break(1u);
    }

    else
    {
      *&v24[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount] = v44;
      v45 = *&a3[v23];
      if (v45)
      {
        [v45 restartTimeoutTimer];
      }

      (*(a4 + 2))(a4, 1, 0);
    }

    return;
  }

  *&a3[OBJC_IVAR___NCBacklightAssertionManager__backlightAssertingCount] = 1;
  if (a2)
  {
    v37 = [objc_opt_self() requestUnrestrictedFramerateForFBSScene_];
  }

  else
  {
    v37 = [objc_opt_self() requestUnrestrictedFramerate];
  }

  v38 = 0xD000000000000011;
  v39 = v37;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_21E92A8A8();

  v60 = 0xD00000000000001ALL;
  v61 = 0x800000021E95A050;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v38 = 0x6867696C68676968;
      v40 = 0xE900000000000074;
      goto LABEL_40;
    }

    if (a1 == 3)
    {
      v40 = 0x800000021E95A030;
      goto LABEL_40;
    }

LABEL_37:
    v40 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E75;
    goto LABEL_40;
  }

  if (!a1)
  {
    v38 = 0x746E756F63;
    v40 = 0xE500000000000000;
    goto LABEL_40;
  }

  if (a1 != 1)
  {
    goto LABEL_37;
  }

  v40 = 0xE400000000000000;
  v38 = 1801678700;
LABEL_40:
  MEMORY[0x223D64660](v38, v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_21E9473D0;
  *(v46 + 32) = v39;
  v47 = objc_opt_self();
  v48 = v39;
  *(v46 + 40) = [v47 timeoutAfterInterval_];
  v49 = objc_allocWithZone(MEMORY[0x277CF0868]);
  v50 = sub_21E92A428();

  sub_21E796644(0, &qword_280D03EC8);
  v51 = sub_21E92A518();

  v52 = [v49 initWithExplanation:v50 attributes:v51];

  v53 = *&a3[v23];
  *&a3[v23] = v52;

  v54 = &a3[OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler];
  v55 = *&a3[OBJC_IVAR___NCBacklightAssertionManager__acquiringAssertionCompletionHandler];
  *v54 = sub_21E91F4AC;
  v54[1] = v12;
  sub_21E792694(v55);
  v56 = *&a3[v23];
  if (v56)
  {

    v57 = v56;
    [v57 acquireWithObserver_];
  }
}

uint64_t sub_21E91F4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E91F52C()
{
  result = sub_21E92A7A8();
  if (v1 <= 0x3F)
  {
    result = sub_21E9297E8();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_21E91F614()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x60));
  v2 = v0;

  v3 = sub_21E92A428();

  [v1 removeObserver:v2 forKeyPath:v3 context:0];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for UserDefaultsObserver();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_21E91F758(char *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *((*v2 & *a1) + 0x70);
  v4 = sub_21E92A7A8();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + 0x78);
  v6 = sub_21E9297E8();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

uint64_t sub_21E91F8A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  v4 = sub_21E92A7A8();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_21E91F964(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  v4 = sub_21E92A7A8();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_21E91FA2C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21E9202EC();

  return sub_21E91F8A4(a1);
}

uint64_t sub_21E91FB08(uint64_t a1, uint64_t a2)
{
  v3 = sub_21E92A7A8();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a2);
  return sub_21E91F964(v5);
}

uint64_t sub_21E91FBFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v41[1] = *MEMORY[0x277D85000] & *v1;
  v4 = *(*((v3 & v2) + 0x50) - 8);
  MEMORY[0x28223BE20](a1);
  v41[0] = v41 - v5;
  v7 = v6;
  v8 = sub_21E92A7A8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = v41 - v9;
  v47 = v8;
  v45 = *(v8 - 8);
  v50 = v45;
  MEMORY[0x28223BE20](v11);
  v44 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = v41 - v14;
  MEMORY[0x28223BE20](v15);
  v51 = v41 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v41 - v18;
  v20 = *(v1 + *((v3 & v2) + 0x60));
  v53 = v1;
  v21 = sub_21E92A428();
  v22 = [v20 objectForKey_];

  if (v22)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v54, v55);
  }

  else
  {
    memset(v55, 0, 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0);
  v23 = swift_dynamicCast();
  (*(v4 + 56))(v19, v23 ^ 1u, 1, v7);
  v24 = v51;
  sub_21E91FA2C(v51);
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v50;
  v27 = *(v50 + 16);
  v28 = v47;
  v27(v10, v24, v47);
  v46 = v25;
  v49 = v19;
  v27(&v10[v25], v19, v28);
  v43 = v4;
  v29 = *(v4 + 48);
  v30 = v29(v10, 1, v7);
  v31 = v48;
  if (v30 != 1)
  {
    v27(v48, v10, v28);
    v34 = v46;
    v35 = v31;
    if (v29(&v10[v46], 1, v7) != 1)
    {
      v38 = v43;
      v39 = v41[0];
      (*(v43 + 32))(v41[0], &v10[v34], v7);
      LODWORD(TupleTypeMetadata2) = sub_21E92A418();
      v40 = *(v38 + 8);
      v40(v39, v7);
      v32 = *(v50 + 8);
      v32(v51, v28);
      v40(v35, v7);
      v32(v10, v28);
      if (TupleTypeMetadata2)
      {
        v33 = v49;
        return (v32)(v33, v28);
      }

      v33 = v49;
      goto LABEL_10;
    }

    v32 = *(v50 + 8);
    v32(v51, v28);
    (*(v43 + 8))(v35, v7);
LABEL_9:
    v33 = v49;
    (*(v42 + 8))(v10, TupleTypeMetadata2);
LABEL_10:
    v36 = v44;
    v27(v44, v33, v28);
    sub_21E9204F4(v36);
    v32(v36, v28);
    return (v32)(v33, v28);
  }

  v32 = *(v26 + 8);
  v32(v24, v28);
  if (v29(&v10[v46], 1, v7) != 1)
  {
    goto LABEL_9;
  }

  v32(v10, v28);
  v33 = v49;
  return (v32)(v33, v28);
}

uint64_t sub_21E9201FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_21E92A458();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_21E92A7C8();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_21E9207D8();
    sub_21E92A3E8();
  }

LABEL_7:
  sub_21E92073C(v13);

  return sub_21E920770(v13);
}

uint64_t sub_21E9204F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = sub_21E92A7A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  sub_21E91F8A4(v16 - v9);
  v11 = *((v5 & v4) + 0x58);
  v16[1] = v11;
  swift_getWitnessTable();
  v12 = sub_21E92A418();
  v13 = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    (*(v8 + 16))(v10, a1, v7);
    return sub_21E91F964(v10);
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v16[-2] = v6;
    v16[-1] = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16[-2] = v2;
    v16[-1] = a1;
    sub_21E9203A8();
  }
}

uint64_t sub_21E920770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E9207D8()
{
  result = qword_27CED6E60;
  if (!qword_27CED6E60)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED6E60);
  }

  return result;
}

uint64_t sub_21E920830()
{
  result = type metadata accessor for UserDefaultsObserver();
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

uint64_t sub_21E9208C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21E920A44(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_21E920CAC()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();
}

uint64_t sub_21E920D50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  *a2 = *(v3 + 16);
}

uint64_t sub_21E920DFC()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  return *(v0 + 24);
}

uint64_t sub_21E920E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_21E920F44(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 24);
  if (v3 == v2)
  {
    *(v1 + 24) = v2;

    return sub_21E787798(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
    sub_21E929798();
  }
}

uint64_t sub_21E921078()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  swift_beginAccess();
}

uint64_t sub_21E921130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21E921210()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E929798();
}

uint64_t sub_21E9212CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

double sub_21E921334()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  return *(v0 + 40);
}

double sub_21E9213D4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_21E9214A4(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
    sub_21E929798();
  }
}

uint64_t sub_21E9215BC()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  return *(v0 + 48);
}

uint64_t sub_21E92165C(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;

    return sub_21E787B34();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
    sub_21E929798();
  }
}

uint64_t sub_21E921790()
{
  if (os_variant_has_internal_content())
  {
    type metadata accessor for NotificationListLayoutValidator(0);
    swift_allocObject();
    result = sub_21E9217E8();
  }

  else
  {
    result = 0;
  }

  qword_280D05F70 = result;
  return result;
}

uint64_t sub_21E9217E8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v34 = sub_21E8D9944();
  v33 = v3 & 1;
  v32 = sub_21E8D9C64();
  v31 = v4 & 1;
  v5 = sub_21E8D9F7C();
  v7 = v6 & 1;
  v8 = sub_21E8DA388();
  v10 = v9 & 1;
  v11 = sub_21E8DA794();
  v13 = v12 & 1;
  v14 = sub_21E8DABA0();
  v16 = v15 & 1;
  v17 = sub_21E8DAFAC();
  *(v1 + 56) = v34;
  *(v1 + 64) = v33;
  *(v1 + 72) = v32;
  *(v1 + 80) = v31;
  *(v1 + 88) = v5;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  *(v1 + 112) = v10;
  *(v1 + 120) = v11;
  *(v1 + 128) = v13;
  *(v1 + 136) = v14;
  *(v1 + 144) = v16;
  *(v1 + 152) = v17;
  *(v1 + 160) = v18 & 1;
  *(v1 + 161) = 0;
  sub_21E9297D8();
  swift_getKeyPath();
  *&v37[0] = v1;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  v19 = *(v1 + 56);
  v20 = *(v1 + 104);
  v21 = *(v1 + 136);
  v37[4] = *(v1 + 120);
  v38[0] = v21;
  *(v38 + 9) = *(v1 + 145);
  v22 = *(v1 + 72);
  v37[0] = v19;
  v37[1] = v22;
  v37[2] = *(v1 + 88);
  v37[3] = v20;
  v23 = v19;
  v24 = BYTE8(v19);
  swift_getKeyPath();
  v25 = MEMORY[0x277D85000];
  v36 = v23;
  sub_21E922B70(v37, &v35);
  sub_21E8DB5C0();
  sub_21E9297A8();

  v26 = *((*v25 & *v23) + 0x70);
  swift_beginAccess();
  v27 = *(v23 + v26);
  sub_21E8E6208(v37);
  if (v27 == 2)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  if (*(v1 + 161) == (v28 & 1))
  {
    *(v1 + 161) = v28 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v36 = v1;
    sub_21E929798();
  }

  sub_21E929788();
  return v1;
}

uint64_t sub_21E921B54(uint64_t result)
{
  if (*(v1 + 161) == (result & 1))
  {
    *(v1 + 161) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
    sub_21E929798();
  }

  return result;
}

__n128 sub_21E921C64@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v14 = *(v1 + 120);
  v15[0] = v4;
  *(v15 + 9) = *(v1 + 145);
  v5 = *(v1 + 72);
  v10 = *(v1 + 56);
  v11 = v5;
  v12 = *(v1 + 88);
  v13 = v3;
  sub_21E922B70(&v10, &v9);
  v6 = v15[0];
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 89) = *(v15 + 9);
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21E921D68@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v13[0] = v3;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  v4 = *(v3 + 104);
  *&v15[9] = *(v3 + 145);
  v5 = *&v15[9];
  v6 = *(v3 + 136);
  v14 = *(v3 + 120);
  *v15 = v6;
  v13[2] = *(v3 + 88);
  v13[3] = v4;
  v7 = *(v3 + 72);
  v13[0] = *(v3 + 56);
  v13[1] = v7;
  a2[4] = v14;
  a2[5] = v6;
  *(a2 + 89) = v5;
  v8 = *(v3 + 104);
  v9 = *(v3 + 56);
  v10 = *(v3 + 72);
  a2[2] = *(v3 + 88);
  a2[3] = v8;
  *a2 = v9;
  a2[1] = v10;
  return sub_21E922B70(v13, &v12);
}

uint64_t sub_21E921E68()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E929798();
}

void sub_21E921F54(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 104);
  v4 = *(a1 + 120);
  v5 = *(a1 + 136);
  v6 = *(a1 + 152);
  v7 = a2[2];
  *(a1 + 104) = a2[3];
  v8 = a2[5];
  *(a1 + 120) = a2[4];
  *(a1 + 136) = v8;
  *(a1 + 145) = *(a2 + 89);
  v9 = a2[1];
  *(a1 + 56) = *a2;
  v10 = *(a1 + 72);
  *(a1 + 72) = v9;
  v11 = *(a1 + 88);
  *(a1 + 88) = v7;
  sub_21E922B70(a2, &v12);
}

uint64_t sub_21E92200C()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  return *(v0 + 161);
}

uint64_t sub_21E9220AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  *a2 = *(v3 + 161);
  return result;
}

uint64_t sub_21E922154(void *a1)
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  v2 = a1[7];
  v3 = a1[9];
  v4 = a1[11];
  v5 = a1[13];
  v6 = a1[15];
  v7 = a1[17];
  v8 = a1[19];
  swift_getKeyPath();
  sub_21E8DB5C0();
  v16 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_21E9297A8();
}

uint64_t sub_21E9222F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21E92A5B8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21E92A598();

  v6 = sub_21E92A588();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_21E8E8A7C(0, 0, v4, &unk_21E94A378, v7);
}

uint64_t sub_21E922414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_21E92A598();
  *(v4 + 56) = sub_21E92A588();
  v6 = sub_21E92A578();

  return MEMORY[0x2822009F8](sub_21E9224AC, v6, v5);
}

uint64_t sub_21E9224AC()
{
  v1 = v0[6];

  swift_getKeyPath();
  v0[2] = v1;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator);
  sub_21E9297A8();

  v2 = *(v1 + 56);
  v26 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 88);
  v18 = *(v1 + 104);
  v21 = *(v1 + 120);
  v24 = *(v1 + 136);
  v25 = *(v1 + 152);
  v5 = swift_task_alloc();
  v6 = MEMORY[0x277D839C8];
  *v5 = MEMORY[0x277D839B0];
  v5[1] = v6;
  swift_getKeyPath();

  v0[2] = v2;
  sub_21E8DB5C0();
  v7 = v2;
  v23 = v3;
  v20 = v4;
  v19 = v18;
  v22 = v21;
  v8 = v24;
  v9 = v25;
  sub_21E9297A8();

  v10 = *((*MEMORY[0x277D85000] & *v7) + 0x70);
  swift_beginAccess();
  v11 = *(v7 + v10);

  v12 = v26;
  if (v11 != 2)
  {
    v12 = v11;
  }

  v13 = v12 & 1;
  if ((v12 & 1) == *(v1 + 161))
  {
    *(v1 + 161) = v13;
  }

  else
  {
    v14 = v0[6];
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v0[5] = v14;
    sub_21E929798();
  }

  sub_21E929788();
  v16 = v0[1];

  return v16();
}

uint64_t sub_21E9227DC()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 120);
  v6 = *(v0 + 136);

  v7 = OBJC_IVAR____TtC22UserNotificationsUIKit31NotificationListLayoutValidator___observationRegistrar;
  v8 = sub_21E9297E8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_21E922900()
{
  result = sub_21E9297E8();
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

uint64_t getEnumTagSinglePayload for NotificationListLayoutValidator.InputParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21E922AE0()
{
  result = sub_21E929778();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_21E922BE8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_21E922C14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
  return sub_21E787798(v2);
}

uint64_t sub_21E922C50()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_21E922C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E922CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationListLayoutValidator.LayoutState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E922D58(uint64_t a1)
{
  v2 = type metadata accessor for NotificationListLayoutValidator.LayoutState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E922DB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED8460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E922E6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E8B8A0C;

  return sub_21E922414(a1, v4, v5, v6);
}

uint64_t sub_21E922F88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E795F44(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v4 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21E923050()
{
  swift_getKeyPath();
  sub_21E795F44(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E929798();
}

id NCNotificationStructuredListView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

char *NCNotificationStructuredListView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView;
  *&v4[v9] = [objc_allocWithZone(NCGlassGroupView) initWithFrame_];
  *&v4[OBJC_IVAR___NCNotificationStructuredListView_listView] = 0;
  *&v4[OBJC_IVAR___NCNotificationStructuredListView_footerView] = 0;
  v10 = &v4[OBJC_IVAR___NCNotificationStructuredListView_footerInsets];
  v11 = *(MEMORY[0x277D768C8] + 16);
  *v10 = *MEMORY[0x277D768C8];
  v10[1] = v11;
  *&v4[OBJC_IVAR___NCNotificationStructuredListView_contentBottomMargin] = 0x4063E00000000000;
  *&v4[OBJC_IVAR___NCNotificationStructuredListView_userInterfaceSizeClass] = 2;
  *&v4[OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR___NCNotificationStructuredListView_revealHintVisible] = 0;
  v12 = OBJC_IVAR___NCNotificationStructuredListView_internalToolsOverlayView;
  *&v4[v12] = [objc_opt_self() debugViewIfInternal];
  *&v4[OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView] = 0;
  v15.receiver = v4;
  v15.super_class = NCNotificationStructuredListView;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 insertSubview:*&v13[OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView] atIndex:0];
  return v13;
}

id NCNotificationStructuredListView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void sub_21E92341C(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *&v1[OBJC_IVAR___NCNotificationStructuredListView_listView];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView];
    v4 = v2;
    [v3 addSubview_];
    [v3 removeFromSuperview];
    v5 = *&v1[OBJC_IVAR___NCNotificationStructuredListView_internalToolsOverlayView];
    if (v5)
    {
      [v1 addSubview_];
      [v1 insertSubview:v3 belowSubview:v5];
    }

    else
    {
      [v1 addSubview_];
    }

    [v1 setNeedsLayout];
    v6 = [v1 revealHintView];
    v7 = [v6 superview];

    if (!v7)
    {
      v7 = [v1 revealHintView];
      [v1 addSubview_];
    }

    v8 = [v1 footerView];
    if (v8)
    {
      v9 = v8;
      [v1 sendSubviewToBack_];
    }

    [v1 sendSubviewToBack_];
    v10 = [v1 revealHintView];
    [v1 sendSubviewToBack_];
  }
}

void sub_21E92366C(void *a1)
{
  v3 = OBJC_IVAR___NCNotificationStructuredListView_footerView;
  v8 = *&v1[OBJC_IVAR___NCNotificationStructuredListView_footerView];
  *&v1[OBJC_IVAR___NCNotificationStructuredListView_footerView] = a1;
  v4 = a1;
  [v8 removeFromSuperview];
  v5 = *&v1[OBJC_IVAR___NCNotificationStructuredListView_internalToolsOverlayView];
  if (v5)
  {
    [v1 addSubview_];
    if (a1)
    {
      [v1 insertSubview:v4 belowSubview:v5];
    }
  }

  else if (a1)
  {
    [v1 addSubview_];
  }

  [v1 setNeedsLayout];
  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    [v1 bringSubviewToFront_];
  }
}

id sub_21E923808()
{
  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v1 = sub_21E929A78();
  __swift_project_value_buffer(v1, qword_280D05F40);
  v2 = v0;
  v3 = sub_21E929A58();
  v4 = sub_21E92A648();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134350080;
    *(v5 + 4) = *(v2 + OBJC_IVAR___NCNotificationStructuredListView_userInterfaceSizeClass);

    *(v5 + 12) = 2050;
    [v2 bounds];
    *(v5 + 14) = v6;
    *(v5 + 22) = 2050;
    [v2 bounds];
    *(v5 + 24) = v7;
    *(v5 + 32) = 2050;
    v8 = objc_opt_self();
    v9 = [v8 mainScreen];
    [v9 bounds];
    v11 = v10;

    *(v5 + 34) = v11;
    *(v5 + 42) = 2050;
    v12 = [v8 mainScreen];
    [v12 bounds];
    v14 = v13;

    *(v5 + 44) = v14;
    _os_log_impl(&dword_21E77E000, v3, v4, "userInterfaceSizeClass update to %{public}ld; viewH: %{public}f; viewH: %{public}f; screenW: %{public}f; screenH: %{public}f", v5, 0x34u);
    MEMORY[0x223D65FB0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  return [v2 setNeedsLayout];
}

void sub_21E923A78()
{
  v1 = OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent;
  v2 = *&v0[OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent];
  if (v2)
  {
    [v2 doubleValue];
  }

  else
  {
    v3 = -1.0;
  }

  sub_21E7967F8(0xD000000000000025, 0x800000021E95A2D0, v3);
  v4 = [v0 revealHintVisible];
  v5 = *&v0[v1];
  if (!v5 || ([v5 bs_CGFloatValue], v7 = v6, (v8 = objc_msgSend(v0, sel_delegate)) != 0) && (v9 = objc_msgSend(v8, sel_requestsUnrevealedCountForNotificationStructuredListView_, v0), swift_unknownObjectRelease(), v9))
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (v7 <= 70.0)
  {
    if (v7 >= 50.0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:
  [v0 setRevealHintVisible_];
LABEL_12:
  if (v4 != [v0 revealHintVisible])
  {
    v11 = [v0 revealHintVisible];
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    if (v11)
    {
      v21 = sub_21E9253F0;
      v22 = v13;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v14 = &block_descriptor_16;
    }

    else
    {
      v21 = sub_21E925438;
      v22 = v13;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v14 = &block_descriptor_10;
    }

    v19 = sub_21E792C28;
    v20 = v14;
    v15 = _Block_copy(&v17);
    v16 = v0;

    [v12 animateWithDuration:v15 animations:{0.5, v17, v18}];
    _Block_release(v15);
  }
}

void sub_21E923CF4()
{
  if ([v0 userInterfaceSizeClass] == 1)
  {
    v1 = [v0 window];
    if (v1)
    {
    }
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetWidth(v15);
  [v0 bounds];
  CGRectGetWidth(v16);
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 != 1)
  {
    v14 = [v11 currentDevice];
    [v14 userInterfaceIdiom];
  }
}

void sub_21E923E88()
{
  if ([v0 userInterfaceSizeClass] == 1)
  {
    v1 = [v0 window];
    if (v1)
    {
    }
  }

  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  [v0 bounds];
  CGRectGetWidth(v17);
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {

    sub_21E923CF4();
  }

  else
  {
    v14 = [v11 currentDevice];
    [v14 userInterfaceIdiom];
  }
}

Swift::Void __swiftcall NCNotificationStructuredListView.didMoveToWindow()()
{
  v1 = v0;
  v17.super_class = NCNotificationStructuredListView;
  objc_msgSendSuper2(&v17, sel_didMoveToWindow);
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    if (qword_280D03F38 != -1)
    {
      swift_once();
    }

    v4 = sub_21E929A78();
    __swift_project_value_buffer(v4, qword_280D05F40);
    v5 = v3;
    v6 = sub_21E929A58();
    v7 = sub_21E92A648();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v10 = sub_21E8DCF9C();
      v12 = sub_21E79841C(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21E77E000, v6, v7, "NotificationStructuredListView did move to window %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x223D65FB0](v9, -1, -1);
      MEMORY[0x223D65FB0](v8, -1, -1);
    }

    [v1 setNeedsLayout];
  }

  else
  {
    if (qword_280D03F38 != -1)
    {
      swift_once();
    }

    v13 = sub_21E929A78();
    __swift_project_value_buffer(v13, qword_280D05F40);
    v5 = sub_21E929A58();
    v14 = sub_21E92A628();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21E77E000, v5, v14, "NotificationStructuredListView doesn't have window!", v15, 2u);
      MEMORY[0x223D65FB0](v15, -1, -1);
    }
  }
}

id sub_21E92430C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 revealHintView];
  v6 = [v5 *a3];

  return v6;
}

char *sub_21E924548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED8530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_21E924658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

size_t sub_21E92479C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21E924978(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21E924A7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21E924BF8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_21E924E68(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21E92A828();
  }

  return sub_21E92A8C8();
}

size_t sub_21E924ECC(unint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  type metadata accessor for CGRect(0);
  v31[3] = v12;
  v31[4] = sub_21E795F44(&unk_280D03C80, type metadata accessor for CGRect);
  v13 = swift_allocObject();
  v31[0] = v13;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  if (qword_280D047F8 != -1)
  {
    swift_once();
  }

  if (!qword_280D04800)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  v14 = qword_280D04800;
  v15 = sub_21E795604(a1, a2);
  sub_21E795EE0(v31, v30);
  swift_getKeyPath();
  sub_21E795F44(qword_280D04750, type metadata accessor for ListDebugHUDModel);
  sub_21E9297A8();

  v27[0] = v14;
  swift_getKeyPath();
  sub_21E9297C8();

  v16 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v17 = *&v14[v16];
  result = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v16] = v17;
  if (result)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_21E924DE0(v17);
  v17 = result;
  *&v14[v16] = result;
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v15 < v17[2])
  {
    v19 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
    v20 = v17 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v15;
    sub_21E795F8C(v30, v27);
    v21 = v28;
    if (v28)
    {
      v22 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v23 = (*(v22 + 16))(v21, v22);
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    else
    {
      sub_21E796078(v27);
      v25 = 0xE500000000000000;
      v23 = 0x3E6C696E3CLL;
    }

    v26 = (v20 + *(v19 + 24));
    *v26 = v23;
    v26[1] = v25;
    sub_21E796078(v30);
    *&v14[v16] = v17;
    swift_endAccess();

    v27[0] = v14;
    swift_getKeyPath();
    sub_21E9297B8();

    return __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

LABEL_14:
  __break(1u);
  return result;
}

void _sSo32NCNotificationStructuredListViewC22UserNotificationsUIKitE5coderABSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView;
  *(v0 + v1) = [objc_allocWithZone(NCGlassGroupView) initWithFrame_];
  *(v0 + OBJC_IVAR___NCNotificationStructuredListView_listView) = 0;
  *(v0 + OBJC_IVAR___NCNotificationStructuredListView_footerView) = 0;
  v2 = (v0 + OBJC_IVAR___NCNotificationStructuredListView_footerInsets);
  v3 = *(MEMORY[0x277D768C8] + 16);
  *v2 = *MEMORY[0x277D768C8];
  v2[1] = v3;
  *(v0 + OBJC_IVAR___NCNotificationStructuredListView_contentBottomMargin) = 0x4063E00000000000;
  *(v0 + OBJC_IVAR___NCNotificationStructuredListView_userInterfaceSizeClass) = 2;
  *(v0 + OBJC_IVAR___NCNotificationStructuredListView_distanceScrolledBeyondBottomOfContent) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___NCNotificationStructuredListView_revealHintVisible) = 0;
  v4 = OBJC_IVAR___NCNotificationStructuredListView_internalToolsOverlayView;
  *(v0 + v4) = [objc_opt_self() debugViewIfInternal];
  *(v0 + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView) = 0;
  sub_21E92A988();
  __break(1u);
}

unint64_t type metadata accessor for NCNotificationStructuredListView()
{
  result = qword_27CED84D0;
  if (!qword_27CED84D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CED84D0);
  }

  return result;
}

void _NCQuickLooksAttachmentImageForNotificationRequest_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21E77E000, log, OS_LOG_TYPE_ERROR, "Was unable to generate thumbnail: filePath=%{public}@, error=%{public}@", &v4, 0x16u);
}

void _NCNotificationBackgroundColorForSectionIdentifier_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "Error creating asset manager for determining notification background color for section %{public}@ [err:%{public}@]", &v7, 0x16u);
}

void NCSizeThatFits_cold_1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21E77E000, v1, OS_LOG_TYPE_ERROR, "Cannot pass traits to view of type '%{public}@'", &v4, 0xCu);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}