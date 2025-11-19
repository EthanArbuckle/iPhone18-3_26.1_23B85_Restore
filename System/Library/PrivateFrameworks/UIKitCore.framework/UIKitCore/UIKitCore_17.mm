char *sub_188C5B948(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setUserInteractionEnabled_];
  [v12 setCompositingMode_];
  v13 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView;
  [*&v12[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v12[v13];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 whiteColor];
  [v16 setTintColor_];

  [v12 addSubview_];
  v18 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView;
  v19 = *&v12[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView];
  v20 = [v15 whiteColor];
  [v19 setBackgroundColor_];

  [*&v12[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 addSubview_];
  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18A64B810;
  v23 = [v12 leadingAnchor];
  v24 = [*&v12[v13] leadingAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [*&v12[v18] trailingAnchor];
  v27 = [v12 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 40) = v28;
  v29 = [v12 topAnchor];
  v30 = [*&v12[v18] topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v22 + 48) = v31;
  v32 = [v12 bottomAnchor];

  v33 = [*&v12[v18] bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 56) = v34;
  sub_188A34624(0, &qword_1ED48CFF0);
  v35 = sub_18A4A7518();

  [v21 activateConstraints_];

  return v12;
}

id sub_188C5BD44(char a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 appearanceData];

    if (v5)
    {
      v6 = &selRef_compactBackIndicatorTransitionMaskImage;
      if ((a1 & 1) == 0)
      {
        v6 = &selRef_backIndicatorTransitionMaskImage;
      }

      v7 = [v5 *v6];

      if (v7)
      {
        goto LABEL_9;
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v7 = [Strong backIndicatorMaskImage], swift_unknownObjectRelease(), !v7))
  {
    v9 = [objc_opt_self() standardBackButtonData];
    v7 = [v9 compactBackIndicatorTransitionMaskImage];

    if (!v7)
    {
      return 0;
    }
  }

LABEL_9:
  v10 = [v7 imageFlippedForRightToLeftLayoutDirection];

  return v10;
}

void sub_188C5C00C(void *a1, uint64_t a2)
{
  v3 = v2;
  v64 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_appearanceDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong compactMetrics];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = v7;
  v66 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_style;
  v67 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  v10 = &selRef_showAlternateImage_;
  v65 = v7;
  while (1)
  {
    v11 = *(&unk_1EFAB9200 + v8 + 32);
    if (a2)
    {
      v12 = [a1 backButtonBackgroundImageForState:*(&unk_1EFAB9200 + v8 + 32) barMetrics:v9];
      if (v12)
      {
        break;
      }

      v13 = [v3 button];
      if (!v13 || (v14 = v13, v15 = [v13 appearanceData], v14, !v15))
      {
        v20 = swift_unknownObjectWeakLoadStrong();
        if (!v20)
        {
          goto LABEL_25;
        }

        v15 = [v20 appearanceStorage];
        swift_unknownObjectRelease();
        v17 = [v15 backButtonBackgroundImageForState:v11 isMini:v9];
        goto LABEL_24;
      }

      if (v11)
      {
        v16 = 1;
      }

      else
      {
        v16 = v11 & 2;
      }

      goto LABEL_12;
    }

    v12 = [a1 backgroundImageForState:*(&unk_1EFAB9200 + v8 + 32) style:*&v3[v66] barMetrics:v9];
    if (v12)
    {
      break;
    }

    v18 = [v3 button];
    if (v18)
    {
      v19 = v18;
      v15 = [v18 appearanceData];

      if (v15)
      {
        if (v11)
        {
          v16 = 1;
        }

        else
        {
          v16 = v11 & 2;
        }

LABEL_12:
        v17 = [v15 backgroundImageForState_];
        goto LABEL_24;
      }
    }

    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {
      goto LABEL_25;
    }

    v15 = [v21 appearanceStorage];
    swift_unknownObjectRelease();
    if (!v15)
    {
      goto LABEL_25;
    }

    v17 = [v15 backgroundImageForState:v11 style:*&v3[v66] isMini:v9];
LABEL_24:
    v22 = v17;

    if (v22)
    {
      goto LABEL_27;
    }

LABEL_25:
    v12 = [a1 _backgroundImageForState_compact_type_];
    if (v12)
    {
      break;
    }

LABEL_41:
    v8 += 8;
    if (v8 == 24)
    {
      swift_beginAccess();
      v48 = *&v3[v67];
      if (*(v48 + 16) && (v49 = sub_188C4585C(0), (v50 & 1) != 0))
      {
        v51 = *(*(v48 + 56) + 8 * v49);
        swift_endAccess();
        v52 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView;
        v53 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
        if (v53)
        {
          v54 = v51;
          goto LABEL_51;
        }

        v57 = objc_allocWithZone(UIImageView);
        v58 = v51;
        v59 = [v57 init];
        [v59 setTranslatesAutoresizingMaskIntoConstraints_];
        [v59 setContentMode_];

        v60 = [v3 button];
        if (v60)
        {
          v61 = v60;
          [v60 insertSubview:v59 atIndex:0];
        }

        v62 = *&v3[v52];
        *&v3[v52] = v59;

        v53 = *&v3[v52];
        if (v53)
        {
LABEL_51:
          v63 = v53;
          [v63 setImage_];
        }

        else
        {
          v51 = v58;
        }
      }

      else
      {
        swift_endAccess();
        v55 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView;
        v56 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
        if (!v56)
        {
          return;
        }

        [v56 removeFromSuperview];
        v51 = *&v3[v55];
        *&v3[v55] = 0;
      }

      return;
    }
  }

  v22 = v12;
LABEL_27:
  [v22 v10[289]];
  if (v24 == 0.0 && v23 == 0.0)
  {
LABEL_40:

    goto LABEL_41;
  }

  v25 = a1;
  v26 = a2;
  swift_beginAccess();
  v27 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v3;
  v30 = isUniquelyReferenced_nonNull_native;
  v31 = *&v29[v67];
  v32 = v11;
  v33 = v29;
  *&v29[v67] = 0x8000000000000000;
  v34 = v32;
  v35 = sub_188C4585C(v32);
  v37 = v31[2];
  v38 = (v36 & 1) == 0;
  v39 = __OFADD__(v37, v38);
  v40 = v37 + v38;
  if (!v39)
  {
    v41 = v36;
    if (v31[3] >= v40)
    {
      if ((v30 & 1) == 0)
      {
        v47 = v35;
        sub_188FA6B0C();
        v35 = v47;
      }
    }

    else
    {
      sub_1890C10B8(v40, v30);
      v35 = sub_188C4585C(v34);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_57;
      }
    }

    v3 = v33;
    if (v41)
    {
      v43 = v31[7];
      v44 = *(v43 + 8 * v35);
      *(v43 + 8 * v35) = v27;
    }

    else
    {
      v31[(v35 >> 6) + 8] |= 1 << v35;
      *(v31[6] + 8 * v35) = v34;
      *(v31[7] + 8 * v35) = v27;
      v45 = v31[2];
      v39 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v39)
      {
        goto LABEL_56;
      }

      v31[2] = v46;
    }

    *&v33[v67] = v31;
    swift_endAccess();
    a2 = v26;
    a1 = v25;
    v9 = v65;
    v10 = &selRef_showAlternateImage_;
    goto LABEL_40;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_18A4A87A8();
  __break(1u);
}

id sub_188C5C5BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled;
  v3 = v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider__backButtonMaskEnabled];
  if ((v3 & 1) != 0 || (v4 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView]) == 0)
  {
    v36 = 0;
  }

  else
  {
    v36 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    v5 = v4;
  }

  v6 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v6)
  {
    v37 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (v7)
    {
      v37 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      v8 = v7;
    }

    else
    {
      v37 = 0;
    }
  }

  v9 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask;
  v10 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask];
  v11 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  v38 = v10;
  v39 = v11;
  if (v3 && (v12 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView]) != 0)
  {
    v40 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
    v13 = v12;
  }

  else
  {
    v40 = 0;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v15 = v11;
  v16 = v6;
  v17 = v10;
  v18 = 0;
LABEL_15:
  if (v18 <= 5)
  {
    v19 = 5;
  }

  else
  {
    v19 = v18;
  }

  while (1)
  {
    if (v18 == 5)
    {
      v32 = v9;
      v33 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
      swift_arrayDestroy();
      if (v14 >> 62)
      {
        goto LABEL_38;
      }

      v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    if (v19 == v18)
    {
      break;
    }

    v20 = v35[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      MEMORY[0x18CFE2450]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      v14 = v34;
      goto LABEL_15;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v22 = sub_18A4A7F68();
    if (!v22)
    {
      break;
    }

LABEL_26:
    v23 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v24 = sub_188E49300(v23, v14);
      }

      else
      {
        if (v23 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v24 = *(v14 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v1 button];
      if (v27)
      {
        v28 = v27;
        [v27 insertSubview:v25 atIndex:v23];
      }

      ++v23;
      if (v26 == v22)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_39:

  v29 = *&v1[v32];
  if (v29)
  {
    [v29 setHidden_];
  }

  result = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView];
  if (result)
  {
    if (v1[v33])
    {
      v31 = 18;
    }

    else
    {
      v31 = 0;
    }

    return [result setCompositingMode_];
  }

  return result;
}

void sub_188C5C8A4(char a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v6 _layoutMarginsForButtonBarButton_compact_];
        swift_unknownObjectRelease();
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
}

void sub_188C5C9E0(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong backButtonMargin];
    v13 = v12;
    swift_unknownObjectRelease();
    v14 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0.0;
    v14 = &selRef_bluetoothBatteryColorForCapacity_usingTintColor_;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  v15 = a1;
  v16 = [v6 v14[239]];
  if (v16)
  {
    v17 = v16;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = 0.0;
      if ([v18 respondsToSelector_])
      {
        [v19 _backButtonContentPaddingInButtonBarButton_];
        v20 = v21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0.0;
    }

    v34 = *&v6[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
    if (v34)
    {
      v35 = v34;
      v36 = [v35 leadingAnchor];
      v37 = [v17 leadingAnchor];
      v38 = [v36 constraintEqualToAnchor:v37 constant:v13 - a4 + v20];

      sub_188C5CE34(v38, 0xD000000000000013, 0x800000018A6A41B0);
      v39 = [v15 leadingAnchor];
      v40 = [v35 trailingAnchor];

      v41 = [v39 constraintEqualToAnchor:v40 constant:a2 + 6.0 - a6];
      sub_188C5CE34(v41, 0xD000000000000017, 0x800000018A6A4210);
    }

    v42 = [v15 trailingAnchor];
    v43 = [v17 trailingAnchor];
    v25 = [v42 constraintLessThanOrEqualToAnchor:v43 constant:-5.0 - v20];

    v33 = 0xD000000000000014;
    v31 = 0x800000018A6A41F0;
    v32 = v25;
    goto LABEL_18;
  }

LABEL_11:
  v22 = *&v6[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  if (v22)
  {
    v15 = v22;
    v23 = [v6 v14[239]];
    if (!v23)
    {
LABEL_19:

      goto LABEL_20;
    }

    v24 = v23;
    v25 = v15;
    v26 = [v25 leadingAnchor];
    v17 = v24;
    v27 = [v17 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:v13 - a4];

    sub_188C5CE34(v28, 0xD000000000000013, 0x800000018A6A41B0);
    v29 = [v25 centerXAnchor];

    v30 = [v17 centerXAnchor];
    v15 = [v29 constraintEqualToAnchor:v30 constant:a4 - a6];

    v31 = 0x800000018A6A41D0;
    v32 = v15;
    v33 = 0xD000000000000013;
LABEL_18:
    sub_188C5CE34(v32, v33, v31);

    goto LABEL_19;
  }

LABEL_20:
  sub_188C5D0B4(&selRef_widthMinimizingConstraint, 0xED00006874646957);
}

void sub_188C5CE34(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_oldConstraints;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16) || (v10 = sub_188B0944C(a2, a3), (v11 & 1) == 0))
  {
    swift_endAccess();
    v13 = 0;
    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  swift_endAccess();
  v13 = v12;
  if (([v13 _isEqualToConstraintValue_includingConstant_includeOtherMutableProperties_] & 1) == 0)
  {
LABEL_6:
    v16 = sub_18A4A7258();
    [a1 setIdentifier_];

    v17 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_currentConstraints;
    swift_beginAccess();

    v18 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + v17);
    *(v4 + v17) = 0x8000000000000000;
    sub_188C5D060(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + v17) = v21;
    goto LABEL_7;
  }

  [a1 constant];
  [v13 setConstant_];
  v14 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_currentConstraints;
  swift_beginAccess();
  v13 = v13;

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_188C5D060(v13, a2, a3, v15);

  *(v4 + v14) = v20;
  swift_endAccess();
  swift_beginAccess();

  sub_188C5D2D8(0, a2, a3);
LABEL_7:
  swift_endAccess();
}

void sub_188C5D0B4(SEL *a1, uint64_t a2)
{
  v5 = [v2 button];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a1];
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = v7;
  sub_188C5D2D8(v7, 0x657A696D696E696DLL, a2);
  swift_endAccess();
  swift_beginAccess();
  sub_188C5D2D8(0, 0x657A696D696E696DLL, a2);
  swift_endAccess();
}

uint64_t sub_188C5D1C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_188B0944C(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        a6();
        v20 = v22;
      }

      result = a5(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

void sub_188C5D318(char a1, double a2, double a3)
{
  v7 = [v3 button];
  if (!v7)
  {
    return;
  }

  v8 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  if (v8)
  {
    v26 = v7;
    v9 = v8;
    if ([v26 verticallyCentersContents])
    {
      v10 = [v9 centerYAnchor];
      v11 = [v26 centerYAnchor];
      v12 = [v10 constraintEqualToAnchor_];
      v13 = "BIB_CenterY_CenterY";
    }

    else
    {
      if (a1)
      {
        v10 = [v9 lastBaselineAnchor];
        v14 = [v26 layoutMarginsGuide];
        v11 = [v14 bottomAnchor];

        v12 = [v10 constraintEqualToAnchor:v11 constant:-a2];
        v15 = "BIB_Bottom_Bottom";
        v16 = 0xD000000000000015;
LABEL_10:
        v18 = v12;

        sub_188C5CE34(v18, v16, v15 | 0x8000000000000000);
        v19 = v9;
        v20 = [v19 topAnchor];
        v21 = v26;
        v22 = [v21 topAnchor];
        v23 = [v20 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v23, 0x5F706F545F424942, 0xEB00000000706F54);
        v24 = [v21 bottomAnchor];

        v25 = [v19 bottomAnchor];
        v27 = [v24 constraintGreaterThanOrEqualToAnchor_];

        sub_188C5CE34(v27, 0xD000000000000011, 0x800000018A6A4150);
        v7 = v27;
        goto LABEL_11;
      }

      v10 = [v9 bottomAnchor];
      v17 = [v26 layoutMarginsGuide];
      v11 = [v17 bottomAnchor];

      v12 = [v10 constraintEqualToAnchor:v11 constant:a3 - a2];
      v13 = "BIB_Bottom_Baseline";
    }

    v15 = v13 - 32;
    v16 = 0xD000000000000013;
    goto LABEL_10;
  }

LABEL_11:
}

void sub_188C5D680()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonMask];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
    if (v2)
    {
      v29 = v2;
      v3 = v1;
      v4 = [v0 button];
      if (v4)
      {
        v5 = v4;
        v6 = v3;
        v7 = [v6 leadingAnchor];
        v3 = v5;
        v8 = [v3 leadingAnchor];
        v9 = [v7 constraintEqualToAnchor_];

        sub_188C5CE34(v9, 0xD000000000000014, 0x800000018A6A4070);
        v10 = [v6 trailingAnchor];
        v11 = [v3 trailingAnchor];
        v12 = [v10 constraintEqualToAnchor_];

        sub_188C5CE34(v12, 0xD000000000000016, 0x800000018A6A4090);
        v13 = [v6 topAnchor];
        v14 = [v3 topAnchor];
        v15 = [v13 constraintEqualToAnchor_];

        sub_188C5CE34(v15, 0x706F545F6B73614DLL, 0xEC000000706F545FLL);
        v16 = [v6 bottomAnchor];

        v17 = [v3 bottomAnchor];
        v18 = [v16 constraintEqualToAnchor_];

        sub_188C5CE34(v18, 0xD000000000000012, 0x800000018A6A40B0);
        v19 = OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView;
        v20 = [*&v6[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskImageView] leadingAnchor];
        v21 = v29;
        v22 = [v21 leadingAnchor];
        v23 = [v20 constraintEqualToAnchor_];

        sub_188C5CE34(v23, 0xD00000000000001BLL, 0x800000018A6A40D0);
        v24 = [*&v6[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E5918BackButtonMaskView_maskExtensionView] leadingAnchor];
        v25 = [v21 trailingAnchor];
        v26 = [v24 constraintEqualToAnchor_];

        sub_188C5CE34(v26, 0xD00000000000001BLL, 0x800000018A6A40F0);
        v27 = [*&v6[v19] centerYAnchor];
        v28 = [v21 centerYAnchor];

        v29 = [v27 constraintEqualToAnchor_];
        sub_188C5CE34(v29, 0xD00000000000001ALL, 0x800000018A6A4110);
      }
    }
  }
}

void *sub_188C5DAF8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_188C5DCB8(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton);
  if (v4)
  {
    [v4 setEnabled_];
  }

  v5 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v5)
  {
    [v5 setEnabled_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (v6)
  {
    [v6 setEnabled_];
  }

  v7 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
    return swift_endAccess();
  }

  v9 = (a1 & 1) != 0 ? 0 : 2;
  v10 = sub_188C4585C(v9);
  if ((v11 & 1) == 0)
  {
    return swift_endAccess();
  }

  v12 = *(*(v8 + 56) + 8 * v10);
  swift_endAccess();
  result = *(v2 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
  if (result)
  {
    return [result setImage_];
  }

  return result;
}

id sub_188C5DE08(char *a1, void *a2, double a3, double a4, float a5, float a6)
{
  v11 = *&a1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth];
  if (*&a1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider])
  {
    [*&a1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider] minimumBackButtonWidth];
    v15 = v14;
  }

  else
  {
    v16 = [a1 traitCollection];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 5)
    {
      if (_UISolariumEnabled())
      {
        v15 = 38.0;
      }

      else
      {
        v15 = 34.0;
      }
    }

    else
    {
      v15 = 44.0;
    }
  }

  v18 = 250.0;
  if (v11 > 0.0)
  {
    v18 = v11;
  }

  if (v15 < a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = v15;
  }

  if (v19 < v18)
  {
    v18 = v19;
  }

  *&v12 = a5;
  *&v13 = a6;
  return [a2 backButtonSystemLayoutSizeFittingSize:v18 horizontalFittingPriority:a4 verticalFittingPriority:{v12, v13}];
}

uint64_t sub_188C5DF30(void *a1)
{
  v3 = [a1 style];
  *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_style) = v3;
  v4 = [a1 titleTextAttributesForState_];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v6 = sub_18A4A70A8();
  }

  else
  {
    v6 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v7 = [a1 titleTextAttributesForState_];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v9 = sub_18A4A70A8();
  }

  else
  {
    v9 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v10 = [a1 titleTextAttributesForState_];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v12 = sub_18A4A70A8();
  }

  else
  {
    v12 = sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v13 = (v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes);
  v14 = *(v1 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_barButtonTitleAttributes);
  *v13 = v6;
  v13[1] = v9;
  v13[2] = v12;
  sub_188C58BC4(v14);

  return sub_188C5A3BC();
}

unint64_t sub_188C5E0DC()
{
  result = qword_1ED48E360;
  if (!qword_1ED48E360)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E360);
  }

  return result;
}

void sub_188C5E134(char a1)
{
  v2 = v1;
  v4 = [v1 button];
  if (v4)
  {
    v94 = v4;
    if ([v4 isBreadcrumb])
    {
      v5 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton;
      v6 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (v6)
      {
        [v6 removeFromSuperview];
        v7 = *&v2[v5];
      }

      else
      {
        v7 = 0;
      }

      *&v2[v5] = 0;

      sub_188C5E9C0();
      goto LABEL_69;
    }
  }

  v8 = [v1 barButtonItem];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _imageForState_compact_type_];

    if (v10)
    {
      sub_188C5E9C0();
      v11 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton;
      v12 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
      if (v12)
      {
        [v12 setNeedsLayout];
        v13 = *&v2[v11];
        if (!v13)
        {
LABEL_31:
          v94 = v10;
          v43 = [v94 _hasBaseline];
          v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageHasBaseline] = v43;
          v44 = [v2 button];
          v45 = [v44 appearanceData];

          if (!v45)
          {
            v45 = [objc_opt_self() standardItemDataForStyle_];
          }

          v46 = &selRef_compactImageSymbolConfiguration;
          if ((a1 & 1) == 0)
          {
            v46 = &selRef_imageSymbolConfiguration;
          }

          v47 = [v45 *v46];

          v48 = *&v2[v11];
          if (v48)
          {
            [v48 setImage:v94 forState:0];
            v49 = *&v2[v11];
            if (v49)
            {
              [v49 setPreferredSymbolConfiguration:v47 forImageInState:0];
              v50 = *&v2[v11];
              if (v50)
              {
                [v50 setImage:v94 forState:2];
                v51 = *&v2[v11];
                if (v51)
                {
                  v51[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___guardAgainstDegenerateBaselineCalculation] = 1;
                  v52 = v51;
                  v53 = [v52 _imageView];
                  if (v53)
                  {
                    v54 = v53;
                    objc_opt_self();
                    v55 = swift_dynamicCastObjCClass();
                    if (v55)
                    {
                      [v55 _setGuardAgainstDegenerateBaselineCalculation_];
                      v56 = v54;
                    }

                    else
                    {
                      v56 = v52;
                      v52 = v54;
                    }
                  }

                  v74 = *&v2[v11];
                  if (v74)
                  {
                    v75 = v74;
                    v76 = [v2 barButtonItem];
                    if (v76)
                    {
                      v77 = v76;
                      v78 = [v76 isSymbolAnimationEnabled];
                    }

                    else
                    {
                      v78 = 0;
                    }

                    [v75 setSymbolAnimationEnabled_];

                    v79 = *&v2[v11];
                    if (v79)
                    {
                      v93 = v79;
                      v80 = [v2 button];
                      if (v80)
                      {
                        v81 = v80;
                        v82 = [v80 usesTintColorCapsuleForSelection];
                      }

                      else
                      {
                        v82 = 0;
                      }

                      v83 = v93;
                      *(v93 + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_usesTintColorCapsuleForSelection) = v82;
                      goto LABEL_70;
                    }
                  }
                }
              }
            }
          }

LABEL_69:
          v83 = v94;
LABEL_70:

          return;
        }
      }

      else
      {
        v29 = sub_188C5B38C();
        v30 = *&v2[v11];
        *&v2[v11] = v29;

        v31 = *&v2[v11];
        if (!v31)
        {
          goto LABEL_31;
        }

        v32 = v31;
        v33 = [v2 barButtonItem];
        if (v33)
        {
          v34 = v33;
          [v33 _additionalSelectionInsets];
          v36 = v35;
          v38 = v37;
          v40 = v39;
          v42 = v41;
        }

        else
        {
          v36 = 0;
          v38 = 0;
          v40 = 0;
          v42 = 0;
        }

        v71 = &v32[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___additionalSelectionInsets];
        *v71 = v36;
        *(v71 + 1) = v38;
        *(v71 + 2) = v40;
        *(v71 + 3) = v42;

        v72 = *&v2[v11];
        if (!v72)
        {
          goto LABEL_31;
        }

        v73 = v72;
        sub_18909DA24();

        v13 = *&v2[v11];
        if (!v13)
        {
          goto LABEL_31;
        }
      }

      v14 = v13;
      v15 = [v2 barButtonItem];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 isEnabled];
      }

      else
      {
        v17 = 0;
      }

      [v14 setEnabled_];

      goto LABEL_31;
    }
  }

  v18 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton;
  v19 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
  if (v19)
  {
    [v19 removeFromSuperview];
    v20 = *&v2[v18];
  }

  else
  {
    v20 = 0;
  }

  *&v2[v18] = 0;

  v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageHasBaseline] = 0;
  v21 = [v2 barButtonItem];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 resolvedTitle];

    if (v23)
    {
      v24 = sub_18A4A7288();
      v26 = v25;

      if (sub_18A4A7358() >= 1)
      {
        v27 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
        if (v27)
        {
          v28 = v27;
          [v28 setNeedsLayout];
        }

        else
        {
          v28 = sub_18909D928();
        }

        v57 = [v2 button];
        if (v57 && (v58 = v57, v59 = [v57 verticallyCentersContents], v58, (v59 & 1) != 0) || (v60 = swift_unknownObjectWeakLoadStrong()) != 0 && (v61 = objc_msgSend(v60, sel_centerTextButtons), swift_unknownObjectRelease(), v61))
        {
          v62 = 0.0;
          v63 = 0.0;
        }

        else
        {
          v64 = [v2 button];
          if (!v64 || (v65 = v64, v66 = [v64 isBackButton], v65, v63 = 0.0, (v66 & 1) == 0))
          {
            v67 = [v2 barButtonItem];
            v63 = 0.0;
            if (v67)
            {
              v68 = v67;
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v70 = [Strong edgesPaddingBarButtonItem_];

                swift_unknownObjectRelease();
                if ((v70 & 8) != 0)
                {
                  v63 = 3.0;
                }

                else
                {
                  v63 = 0.0;
                }
              }

              else
              {
              }
            }
          }

          if (a1)
          {
            v62 = 3.0;
          }

          else
          {
            v62 = 1.0;
          }
        }

        v84 = v28;
        [v84 setContentEdgeInsets_];
        v85 = [v2 button];
        if (v85)
        {
          v86 = v85;
          v87 = [v85 usesTintColorCapsuleForSelection];
        }

        else
        {
          v87 = 0;
        }

        *(v84 + OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_usesTintColorCapsuleForSelection) = v87;
        v88 = [v2 barButtonItem];
        if (v88)
        {
          v89 = v88;
          v90 = [v88 isEnabled];
        }

        else
        {
          v90 = 0;
        }

        [v84 setEnabled_];

        sub_188C678E4();
        v91 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
        swift_beginAccess();
        if (*(*&v2[v91] + 16))
        {

          v24 = sub_188C6E9C8();
          v26 = v92;
        }

        if (sub_18A4A7358() < 1)
        {

          if (*(*&v2[v91] + 16) == 1)
          {
            sub_188C5E9C0();
          }
        }

        else
        {
          sub_188C69168(v24, v26);
        }

        return;
      }
    }
  }

  sub_188C5E9C0();
}

void sub_188C5E9C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint);
  *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint) = 0;

  v2 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v3)
  {
    [v3 removeFromSuperview];
    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
}

id sub_188C5EB3C(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 isSelected] ^ a2;
    if (v8)
    {
      [v7 setSelected_];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (!v9)
  {
LABEL_11:
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v11 = 4;
    goto LABEL_13;
  }

  v10 = v9;
  if ([v10 isSelected] == (a2 & 1))
  {

    goto LABEL_11;
  }

  [v10 setSelected_];

  v8 = 1;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = 0;
LABEL_13:
  v12 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundImages;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16) || (v14 = sub_188C4585C(v11), (v15 & 1) == 0))
  {
    result = swift_endAccess();
    if ((v8 & 1) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

  v16 = *(*(v13 + 56) + 8 * v14);
  swift_endAccess();
  result = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backgroundView);
  if (result)
  {
    result = [result setImage_];
  }

  if (v8)
  {
LABEL_18:
    sub_188C5AFA4();
    return [a1 setNeedsLayout];
  }

  return result;
}

id sub_188C5ECB4()
{
  result = *(v0 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
  if (result)
  {
    result = [result _imageView];
    if (result)
    {
      v2 = result;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_188C5ED8C(double a1, double a2, float a3, float a4)
{
  ObjectType = swift_getObjectType();
  v10 = [v4 button];
  if (v10 && (v11 = v10, v12 = [v10 isBreadcrumb], v11, (v12 & 1) != 0) || (v15 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent, swift_beginAccess(), !*(*&v4[v15] + 16)))
  {
    v26.receiver = v4;
    v26.super_class = ObjectType;
    *&v13 = a3;
    *&v14 = a4;
    objc_msgSendSuper2(&v26, sel_backButtonSystemLayoutSizeFittingSize_horizontalFittingPriority_verticalFittingPriority_, a1, a2, v13, v14);
  }

  else
  {
    v16 = *&v4[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton];
    if (v16)
    {
      v17 = v16;
      *&v18 = a3;
      *&v19 = a4;
      [v17 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v18, v19}];
      sub_188C694AC();
    }

    else
    {
      v28[0] = 0;
      v28[1] = 0;
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v4;
      *(v21 + 24) = v28;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = a3;
      *(v21 + 52) = a4;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_188C68EE4;
      *(v22 + 24) = v21;
      aBlock[4] = sub_188E3FE50;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      aBlock[3] = &block_descriptor_76;
      v23 = _Block_copy(aBlock);
      v24 = v4;

      [v20 performWithoutAnimation_];
      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_188C5F02C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_188C5F1C8(double a1, double a2, double a3, double a4)
{
  v19.receiver = v4;
  v19.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v19, sel__newImageViewWithFrame_, a1, a2, a3, a4);
  v10 = [v4 button];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for ButtonBarButtonVisualProvider.Button();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
LABEL_9:

      return v9;
    }

    v13 = v12;
    v14 = [v12 _imageView];
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 _guardAgainstDegenerateBaselineCalculation];

LABEL_8:
        [v9 _setGuardAgainstDegenerateBaselineCalculation_];
        [v9 setClipsToBounds_];
        goto LABEL_9;
      }
    }

    v17 = v13[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button___guardAgainstDegenerateBaselineCalculation];
    goto LABEL_8;
  }

  return v9;
}

void sub_188C5F320(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_188C5F334(a1, a2, a3);
  }
}

void sub_188C5F334(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (!a3)
  {
  }
}

void sub_188C5F39C()
{
  v1 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  if (*(*&v0[v1] + 16))
  {
    v2 = [v0 button];
    if (v2)
    {

      v3 = [v0 barButtonItem];
      if (v3)
      {

        v4 = sub_188C6E9C8();
        v6 = v5;
        v7 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
        if (v7)
        {
          v8 = [v7 attributedTitleForState_];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 string];

            v11 = sub_18A4A7288();
            v13 = v12;

            if (v11 == v4 && v13 == v6)
            {

              return;
            }

            v15 = sub_18A4A86C8();

            if (v15)
            {

              return;
            }
          }
        }

        sub_188C69168(v4, v6);

        v16 = [v0 button];
        if (v16)
        {
          v17 = v16;
          v18 = [v0 barButtonItem];
          if (v18)
          {
            v19 = v18;
            sub_188C58C20(v17, v18);
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_188C5F60C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_188C5F7DC;
  *(v9 + 24) = v8;
  v15[4] = sub_188E3FE50;
  v15[5] = v9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_188A4A968;
  v15[3] = &block_descriptor_66_3;
  v10 = _Block_copy(v15);

  v11 = a1;
  v12 = v3;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188C5F790()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_188C5F7E8(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  if (([a3 isBackButton] & 1) == 0 && objc_msgSend(a3, sel_usesTintColorCapsuleForSelection))
  {
    v6 = *(a4 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_imageButton);
    if (v6)
    {
      v7 = v6;
      [a3 bounds];
      [a3 convertRect:v7 toCoordinateSpace:?];
      v21.origin.x = v8;
      v21.origin.y = v9;
      v21.size.width = v10;
      v21.size.height = v11;
      v19 = *&v7[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
      *&v7[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame] = v21;
      if (!CGRectEqualToRect(v19, v21))
      {
        [v7 setNeedsLayout];
      }
    }

    v12 = *(a4 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
    if (v12)
    {
      v17 = v12;
      [a3 bounds];
      [a3 convertRect:v17 toCoordinateSpace:?];
      v22.origin.x = v13;
      v22.origin.y = v14;
      v22.size.width = v15;
      v22.size.height = v16;
      v20 = *&v17[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame];
      *&v17[OBJC_IVAR____TtCC5UIKit29ButtonBarButtonVisualProviderP33_A98CD29F4F6ECA17AFECE41BBB264E596Button_selectionIndicatorViewFrame] = v22;
      if (!CGRectEqualToRect(v20, v22))
      {
        [v17 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_188C5FAF0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      sub_18A4A8888();

      sub_18A4A7348();
      v9 = sub_18A4A88E8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_188C5FD20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_188C5AFA4();
  }
}

id sub_188C5FD7C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    result = [result _visualProvider];
    if (result)
    {
      type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
      swift_dynamicCastClassUnconditional();
      v2 = [v1 _imageView];
      if (v2)
      {

        sub_1890A0B8C();
      }

      v3 = [v1 _titleView];
      if (v3)
      {

        sub_1890A0D18();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_188C5FEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarModel.PlacedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188C5FF60()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_18A4A8888();
  sub_188C18FD0(v6, v1, v2, v4);
  MEMORY[0x18CFE37E0](v3);
  return sub_18A4A88E8();
}

void *sub_188C5FFDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_18A4A29D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188C60080@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v154 = a6;
  v175 = a7;
  v176 = a5;
  v149 = a3;
  v150 = a4;
  v186 = a2;
  v8 = sub_18A4A5768();
  v173 = *(v8 - 8);
  v174 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v172 = v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v171 = v137 - v11;
  v164 = sub_18A4A6188();
  MEMORY[0x1EEE9AC00](v164);
  v160 = v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_18A4A6178();
  v156 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v155 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v182 = v137 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD78);
  v162 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v157 = v137 - v16;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD70);
  v166 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v159 = v137 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD68);
  v169 = *(v18 - 8);
  v170 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v167 = v137 - v19;
  v20 = sub_18A4A29D8();
  v185 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v184 = v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for BarLayoutElement(0);
  v153 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v152 = v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_18A4A53C8();
  MEMORY[0x1EEE9AC00](v141);
  v140 = v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD80);
  MEMORY[0x1EEE9AC00](v181);
  v187 = v137 - v24;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDD0);
  v161 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v158 = v137 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDC8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v137 - v30;
  v32 = type metadata accessor for ToolbarModel.PlacedItem(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v148 = (v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v37 = v137 - v36;
  v38 = *a1;
  v151 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem;
  v39 = *&v38[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v179 = v38;
  v180 = v39;
  sub_188A3F29C(v186, v31, &qword_1EA93BDC8);
  v40 = *(v33 + 48);
  v41 = v40(v31, 1, v32);
  v186 = v20;
  if (v41 == 1)
  {
    sub_188A3F5FC(v31, &qword_1EA93BDC8);
    v42 = 1;
  }

  else
  {
    sub_1890AF8EC(v31, v37, type metadata accessor for ToolbarModel.PlacedItem);
    sub_188BAD234(&qword_1EA930B00, MEMORY[0x1E69695A8]);
    v43 = sub_18A4A7248();
    sub_1890AF954(v37, type metadata accessor for ToolbarModel.PlacedItem);
    v42 = v43 ^ 1;
  }

  sub_188A3F29C(v149, v28, &qword_1EA93BDC8);
  v44 = v40(v28, 1, v32);
  v178 = v32;
  v144 = a1;
  if (v44 == 1)
  {
    sub_188A3F5FC(v28, &qword_1EA93BDC8);
    v45 = v150;
    v46 = *v150;
    v47 = v176;
    v48 = v179;
    if (v42)
    {
      LODWORD(v149) = 0;
      if (v46)
      {
        v49 = 1;
        goto LABEL_11;
      }

      v59 = 0.0;
      v53 = -0.0;
      v54 = -0.0;
LABEL_52:
      v57 = -0.0;
      v52 = v151;
      goto LABEL_67;
    }

    if ((v46 & 1) == 0)
    {
      v54 = -2.0;
      LODWORD(v149) = 1;
      v59 = 0.0;
      v53 = -0.0;
      goto LABEL_52;
    }

    v60 = v150[3];
    v49 = 1;
    v52 = v151;
    if ((v60 & 1) == 0)
    {
LABEL_24:
      if (v45[4] >= 2u)
      {
        v53 = -5.0;
      }

      else
      {
        v53 = -4.0;
      }

      v61 = v45[4];
      if (v45[4])
      {
LABEL_28:
        v62 = 3.0;
        if ((v60 & 1) == 0)
        {
          v62 = 4.0;
          if (v61 == 2)
          {
            v62 = 2.0;
          }

          v63 = 5.0;
          if (v61 != 1)
          {
LABEL_57:
            v54 = -(v63 + v62);
            v55 = v45[4];
            v56 = v55 < 2;
            if (v55 >= 2)
            {
              v57 = -5.0;
            }

            else
            {
              v57 = -4.0;
            }

            LODWORD(v149) = 1;
            if ((v49 & 1) == 0)
            {
LABEL_17:
              if (v55)
              {
                v58 = 2.0;
                if (v55 != 2)
                {
                  v58 = 4.0;
                }

                v59 = 5.0;
                if (v55 != 1)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v58 = 0.0;
              }

              v59 = 4.0;
LABEL_66:
              v59 = v59 + v58;
              goto LABEL_67;
            }

            goto LABEL_61;
          }

LABEL_56:
          v63 = 4.0;
          goto LABEL_57;
        }

LABEL_37:
        v54 = -v62;
        LODWORD(v149) = 1;
        if ((v49 & 1) == 0)
        {
LABEL_48:
          v58 = 3.0;
          v59 = 0.0;
          if (!v45[4])
          {
            v58 = 0.0;
          }

          v57 = -0.0;
          goto LABEL_66;
        }

LABEL_38:
        v59 = 0.0;
        v57 = -0.0;
        goto LABEL_67;
      }

LABEL_36:
      v62 = 0.0;
      if ((v60 & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

LABEL_35:
    v53 = -0.0;
    v61 = v45[4];
    if (v45[4])
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  v50 = v148;
  sub_1890AF8EC(v28, v148, type metadata accessor for ToolbarModel.PlacedItem);
  sub_188BAD234(&qword_1EA930B00, MEMORY[0x1E69695A8]);
  v51 = sub_18A4A7248();
  sub_1890AF954(v50, type metadata accessor for ToolbarModel.PlacedItem);
  v49 = v51 ^ 1;
  v45 = v150;
  v47 = v176;
  if (v42)
  {
    v48 = v179;
    if (*v150)
    {
      LODWORD(v149) = v51;
LABEL_11:
      v52 = v151;
      if (v45[3])
      {
        v53 = -0.0;
        v54 = -0.0;
        goto LABEL_47;
      }

      v64 = v45[4];
      if (v64 >= 2)
      {
        v53 = -5.0;
      }

      else
      {
        v53 = -4.0;
      }

      v65 = 5.0;
      if (v64 < 2)
      {
        v65 = 4.0;
      }

      v54 = -v65;
      if (v45[3])
      {
LABEL_47:
        if ((v49 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      v55 = v45[4];
      v56 = v55 < 2;
      if (v55 >= 2)
      {
        v57 = -5.0;
      }

      else
      {
        v57 = -4.0;
      }

      if ((v49 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_61:
      v59 = 5.0;
      if (v56)
      {
        v59 = 4.0;
      }

      goto LABEL_67;
    }

    v58 = 2.0;
    v59 = 0.0;
    v53 = -0.0;
    LODWORD(v149) = v51;
    v54 = -0.0;
  }

  else
  {
    v48 = v179;
    if (*v150)
    {
      v60 = v150[3];
      v52 = v151;
      if ((v60 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }

    v58 = 2.0;
    v59 = 0.0;
    v54 = -2.0;
    LODWORD(v149) = 1;
    v53 = -0.0;
  }

  v57 = -0.0;
  v52 = v151;
  if (v51)
  {
    goto LABEL_66;
  }

LABEL_67:
  v66 = -v59;
  LODWORD(v179) = sub_1890ABF38(*&v48[v52]);
  v148 = sub_18A4A5378();
  v201 = 1;
  swift_getKeyPath();
  v67 = v47 + OBJC_IVAR____TtC5UIKit12ToolbarModel___observationRegistrar;
  *&v196 = v47;
  v68 = sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  swift_beginAccess();
  v69 = v47[5];
  v204 = v47[4];
  v205 = v69;
  v206 = *(v47 + 12);
  v70 = v47[3];
  v202 = v47[2];
  v203 = v70;
  swift_getKeyPath();
  *&v196 = v47;
  sub_18A4A2C08();

  v72 = *(v47 + 20);
  v71 = *(v47 + 21);
  v143 = *(v47 + 22);
  swift_getKeyPath();
  *&v196 = v47;
  v145 = v71;
  v73 = v71;
  v146 = v72;
  v74 = v72;
  sub_18A4A2C08();

  v142 = *(v47 + 34);
  v147 = v48;
  v75 = [v180 _transitionIdentifier];
  if (v75)
  {

    sub_1890AF174();
  }

  else
  {
    sub_18A4A53B8();
    sub_188BAD234(&unk_1EA930BA0, MEMORY[0x1E697F400]);
  }

  v141 = sub_18A4A45E8();
  LODWORD(v140) = (v149 & 1) == 0;
  v149 = *&v48[v52];
  v139 = v201;
  swift_getKeyPath();
  *&v196 = v47;
  sub_18A4A2C08();

  v76 = qword_18A664B50[*(v47 + 36)];
  v198 = v204;
  v199 = v205;
  v200 = v206;
  v196 = v202;
  v197 = v203;
  v77 = type metadata accessor for BarLayoutElement.ItemConfig(0);
  v78 = *(v77 + 24);
  v79 = *(v178 + 20);
  v137[1] = v67;
  v138 = v79;
  v81 = v185;
  v80 = v186;
  v137[0] = v68;
  v83 = v185 + 16;
  v82 = *(v185 + 16);
  v84 = v152;
  v85 = v144;
  (v82)(&v152[v78], v144 + v79, v186);
  v150 = *(v81 + 56);
  v151 = v81 + 56;
  (v150)(&v84[v78], 0, 1, v80);
  *v84 = 0;
  LOBYTE(v81) = v179;
  v84[1] = v179;
  (*(*(v77 - 8) + 56))(v84, 0, 2, v77);
  v86 = *(v181 + 36);
  v87 = v187;
  sub_1890AF8EC(v84, v187 + v86, type metadata accessor for BarLayoutElement);
  (*(v153 + 56))(v87 + v86, 0, 1, v177);
  *v87 = v76;
  v88 = v196;
  *(v87 + 56) = v197;
  v89 = v199;
  *(v87 + 72) = v198;
  *(v87 + 88) = v89;
  v90 = v147;
  *(v87 + 8) = v148;
  *(v87 + 16) = 0;
  *(v87 + 24) = v139;
  *(v87 + 32) = v90;
  v91 = v200;
  *(v87 + 40) = v88;
  v93 = v145;
  v92 = v146;
  *(v87 + 104) = v91;
  *(v87 + 112) = v92;
  v94 = v143;
  *(v87 + 120) = v93;
  *(v87 + 128) = v94;
  *(v87 + 136) = v53;
  *(v87 + 144) = v54;
  *(v87 + 152) = v57;
  *(v87 + 160) = v66;
  *(v87 + 168) = v142;
  *(v87 + 169) = v140;
  *(v87 + 170) = v81;
  v95 = v149;
  *(v87 + 176) = v141;
  *(v87 + 184) = v95;
  v96 = v85 + *(v178 + 24);
  v97 = *v96;
  v98 = *(v96 + 8);
  LOBYTE(v84) = *(v96 + 16);
  v177 = v84;
  v146 = *(v96 + 24);
  v152 = v82;
  v153 = v83;
  (v82)(v184, v85 + v138, v80);
  v148 = v98;
  v149 = v97;
  sub_188BB395C(v97, v98, v84);
  v178 = sub_18A4A6CA8();
  v99 = sub_188C61B48();
  if (([v180 hidesSharedBackground] & 1) == 0)
  {
    swift_getKeyPath();
    v192 = v176;
    sub_18A4A2C08();
  }

  v100 = v182;
  sub_18A4A60F8();
  v101 = v155;
  v180 = v99;
  sub_18A4A6168();
  v102 = v156;
  v103 = v183;
  v176 = *(v156 + 8);
  (v176)(v100, v183);
  (*(v102 + 32))(v100, v101, v103);
  v104 = sub_18A4A6078();
  v105 = sub_18A4A60D8();
  v107 = v106;
  sub_18A4A6088();
  if (sub_18A4A6088() != v104)
  {
    *v107 = sub_18A4A6088();
  }

  v105(&v192, 0);
  v108 = *MEMORY[0x1E697F468];
  v109 = sub_18A4A53E8();
  v110 = v160;
  (*(*(v109 - 8) + 104))(v160, v108, v109);
  v111 = sub_1890AF628();
  v112 = sub_188BAD234(&unk_1ED48D010, MEMORY[0x1E6981998]);
  v113 = v157;
  v115 = v181;
  v114 = v182;
  v116 = v164;
  sub_18A4A5CF8();
  sub_1890AF954(v110, MEMORY[0x1E6981998]);
  (v176)(v114, v183);
  v117 = v148;
  v118 = v149;
  v192 = v149;
  v193 = v148;
  v194 = v177;
  v195 = v146;
  v188 = v115;
  v189 = v116;
  v190 = v111;
  v191 = v112;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = sub_188BAF5D4();
  v121 = v159;
  v122 = v165;
  sub_18A4A5D18();
  (*(v162 + 8))(v113, v122);
  sub_188BB3988(v118, v117, v177);
  v123 = v171;
  v124 = v121;
  v125 = v184;
  v126 = v186;
  (v152)(v171, v184, v186);
  (v150)(v123, 0, 1, v126);
  v192 = v122;
  v193 = &type metadata for ToolbarModel.PlacedItem.UniqueSemanticID;
  v194 = OpaqueTypeConformance2;
  v195 = v120;
  v127 = swift_getOpaqueTypeConformance2();
  v128 = sub_188BAD234(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  v130 = v167;
  v129 = v168;
  sub_18A4A5D38();
  sub_188A3F5FC(v123, &qword_1EA93A828);
  (*(v166 + 8))(v124, v129);
  sub_18A4A5858();
  sub_18A4A6D08();
  v131 = v172;
  sub_18A4A5758();
  v192 = v129;
  v193 = v126;
  v194 = v127;
  v195 = v128;
  swift_getOpaqueTypeConformance2();
  v132 = v158;
  v133 = v170;
  sub_18A4A5D48();

  (*(v173 + 8))(v131, v174);
  (*(v169 + 8))(v130, v133);
  (*(v185 + 8))(v125, v126);
  sub_188A3F5FC(v187, &qword_1EA93BD80);
  if (v179 == 2)
  {
    v134 = 0.0;
  }

  else
  {
    v134 = -1.0;
  }

  v135 = v175;
  (*(v161 + 32))(v175, v132, v163);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD60);
  *(v135 + *(result + 36)) = v134;
  return result;
}

uint64_t sub_188C614E4()
{
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

id sub_188C61534(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A4918();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A5318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(sub_18A4A5A28()) init];
  (*(v9 + 16))(v11, a1, v8);
  sub_18A4A5A08();
  (*(v5 + 16))(v7, a2, v4);
  sub_18A4A5A18();
  return v12;
}

uint64_t sub_188C616D8(void *a1, uint64_t a2, void *a3)
{
  v20 = a2;
  v21 = 0;
  v22 = a1;
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = sub_188EB7F24;
  v6[4] = &v19;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_188BA5B68;
  *(v7 + 24) = v6;
  v27 = sub_188A86D40;
  v28 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_188A7AC24;
  v26 = &block_descriptor_78;
  v8 = _Block_copy(&aBlock);
  v9 = a3;

  v10 = [a1 traitCollectionByModifyingTraits_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v18[2] = a2;
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = sub_188EB8D90;
    v12[4] = v18;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_188EB96A0;
    *(v13 + 24) = v12;
    v27 = sub_188EB96AC;
    v28 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_188A7AC24;
    v26 = &block_descriptor_14_3;
    v14 = _Block_copy(&aBlock);
    v15 = v9;
    v16 = v10;

    v17 = [v16 traitCollectionByModifyingTraits_];
    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188C619E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_188C61AF0()
{
  result = qword_1EA930978;
  if (!qword_1EA930978)
  {
    _s18ToolbarPreferencesCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930978);
  }

  return result;
}

uint64_t sub_188C61B48()
{
  swift_getKeyPath();
  sub_188C4AE0C();
  sub_18A4A2C08();

  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  if (![v1 _prefersFilledAppearance])
  {
    return 0;
  }

  v2 = [v1 _effectiveTintColor];
  type metadata accessor for UICorePlatformColorDefinition();
  return sub_18A4A5E38();
}

BOOL sub_188C61C5C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a7 == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (a3 != 4)
      {
        v8 = 0;
        if (a7 != 5)
        {
          return v8;
        }

        goto LABEL_20;
      }

      if (a7 == 4)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
LABEL_13:
      if (a1 == a5 && a2 == a6)
      {
        return a4 == a8;
      }

      v9 = a4;
      v10 = a8;
      v11 = sub_18A4A86C8();
      a4 = v9;
      a8 = v10;
      if (v11)
      {
        return a4 == a8;
      }
    }

    return 0;
  }

  if (a3 == 1)
  {
    v8 = 0;
    if (a7 != 1)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
    if (a7 != 2)
    {
      return v8;
    }
  }

LABEL_20:
  if (a1 == a5)
  {
    return a4 == a8;
  }

  return v8;
}

uint64_t sub_188C61D54()
{
  sub_188C614E4();

  return swift_unknownObjectRetain();
}

id _sSo21UIContentSizeCategorya5UIKitE012_dynamicTypeB0AB7SwiftUI07DynamicfB0OSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CF8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_188A3F29C(a1, &v14 - v6, &qword_1EA935CF8);
  v8 = sub_18A4A4CB8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_188A3F29C(v7, v4, &qword_1EA935CF8);
    v11 = (*(v9 + 88))(v4, v8);
    if (v11 == *MEMORY[0x1E697E718])
    {
      v10 = &UIContentSizeCategoryExtraSmall;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6F0])
    {
      v10 = &UIContentSizeCategorySmall;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6F8])
    {
      v10 = &UIContentSizeCategoryMedium;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6E8])
    {
      v10 = &UIContentSizeCategoryLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E708])
    {
      v10 = &UIContentSizeCategoryExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E720])
    {
      v10 = &UIContentSizeCategoryExtraExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E728])
    {
      v10 = &UIContentSizeCategoryExtraExtraExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6C0])
    {
      v10 = &UIContentSizeCategoryAccessibilityMedium;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6C8])
    {
      v10 = &UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6D0])
    {
      v10 = &UIContentSizeCategoryAccessibilityExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6D8])
    {
      v10 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
      goto LABEL_27;
    }

    if (v11 == *MEMORY[0x1E697E6E0])
    {
      v10 = &UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      goto LABEL_27;
    }

    (*(v9 + 8))(v4, v8);
  }

  v10 = &UIContentSizeCategoryUnspecified;
LABEL_27:
  v12 = *v10;
  sub_188A3F5FC(a1, &qword_1EA935CF8);
  sub_188A3F5FC(v7, &qword_1EA935CF8);
  return v12;
}

uint64_t sub_188C620F8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = [a1 _objectForTraitToken_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  sub_188A3F29C(v20, &v18, &qword_1EA934050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  v14 = swift_dynamicCast();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 56);
  if (v14)
  {
    v16(v12, 0, 1, AssociatedTypeWitness);
    sub_188A3F5FC(v20, &qword_1EA934050);
    return (*(v15 + 32))(a4, v12, AssociatedTypeWitness);
  }

  else
  {
    v16(v12, 1, 1, AssociatedTypeWitness);
    (*(a3 + 16))(a2, a3);
    sub_188A3F5FC(v20, &qword_1EA934050);
    result = (*(v15 + 48))(v12, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_188C623C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188C62424(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18A4A29D8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t _sSo24UIUserInterfaceSizeClassV5UIKitE05_sizeD0AB7SwiftUI04UserbcD0OSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_188A3F29C(a1, &v13 - v6, &qword_1EA935CE0);
  v8 = sub_18A4A5738();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  sub_188A3F29C(v7, v4, &qword_1EA935CE0);
  v11 = (*(v9 + 88))(v4, v8);
  if (v11 == *MEMORY[0x1E697FF38])
  {
    v10 = 1;
LABEL_6:
    sub_188A3F5FC(a1, &qword_1EA935CE0);
    sub_188A3F5FC(v7, &qword_1EA935CE0);
    return v10;
  }

  if (v11 == *MEMORY[0x1E697FF40])
  {
    v10 = 2;
    goto LABEL_6;
  }

  (*(v9 + 8))(v4, v8);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void sub_188C6270C()
{
  sub_1890A47DC(319, &unk_1EA930ED8, MEMORY[0x1E6980948]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_188C629E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v4;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v8 = v4;
  }

  if (sub_18A4A46F8())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890AD778();
    v9 = v2;
    sub_18A4A4708();
  }

  sub_188BAC830();
  sub_18A4A4718();

  if (v18)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = v4;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v16 = v4;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890AD778();
      v17 = v2;
      sub_18A4A4708();
    }

    type metadata accessor for CGRect(0);
    sub_18A4A46B8();

    v14 = v18;
    v15 = v19;
  }

  else
  {
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v18 == 0;
  return result;
}

uint64_t sub_188C62BCC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_188C62C28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_188C62C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_188C62CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 32))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

_BYTE *sub_188C62D24(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188C62DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarLayoutElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188C62E48(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for BarLayoutElement.ItemConfig(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

__n128 __swift_memcpy139_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_188C62F00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v161 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFE8);
  MEMORY[0x1EEE9AC00](v142);
  v133 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v134 = &v132 - v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFF0);
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v132 - v6;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFF8);
  MEMORY[0x1EEE9AC00](v160);
  v143 = &v132 - v7;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C000);
  MEMORY[0x1EEE9AC00](v140);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v132 - v11;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C008);
  MEMORY[0x1EEE9AC00](v153);
  v135 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v132 - v14;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C010);
  MEMORY[0x1EEE9AC00](v157);
  v159 = &v132 - v15;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C018);
  MEMORY[0x1EEE9AC00](v150);
  v151 = &v132 - v16;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C020);
  MEMORY[0x1EEE9AC00](v158);
  v152 = &v132 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C028);
  MEMORY[0x1EEE9AC00](v148);
  v19 = &v132 - v18;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C030);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v132 - v20;
  v21 = type metadata accessor for BarLayoutElement(0);
  v155 = *(v21 - 8);
  v156 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD58);
  MEMORY[0x1EEE9AC00](v144);
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  *&v138 = &v132 - v26;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C040);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v132 - v27;
  v28 = *v1;
  swift_getKeyPath();
  *&v169 = v28;
  sub_188C4AE0C();
  v29 = v28;
  sub_18A4A2C08();

  v30 = *&v29[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__contentSeed];
  v31 = *&v29[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  if ([v31 isSpaceItem])
  {

    if ([v31 systemItem] == 5)
    {
      sub_18A4A6C08();
      sub_18A4A4EA8();
      *&v162[55] = v172[0];
      *&v162[71] = v172[1];
      *&v162[87] = v172[2];
      *&v162[103] = v172[3];
      *&v162[7] = v169;
      *&v162[23] = v170;
      LOBYTE(v168[0]) = 1;
      *&v162[39] = v171;
      v32 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v33 = v154;
      (*(*(v32 - 8) + 56))(v154, 1, 2, v32);
      v34 = *(v144 + 36);
      sub_188C62DD0(v33, &v24[v34]);
      (*(v155 + 56))(&v24[v34], 0, 1, v156);
      v35 = *&v162[80];
      *(v24 + 73) = *&v162[64];
      *(v24 + 89) = v35;
      *(v24 + 105) = *&v162[96];
      v36 = *&v162[16];
      *(v24 + 9) = *v162;
      *(v24 + 25) = v36;
      v37 = *&v162[48];
      *(v24 + 41) = *&v162[32];
      *v24 = 0;
      v24[8] = 1;
      *(v24 + 15) = *&v162[111];
      *(v24 + 57) = v37;
      v38 = v138;
      sub_188A3F704(v24, v138, &qword_1EA93BD58);
      sub_188A3F29C(v38, v146, &qword_1EA93BD58);
      swift_storeEnumTagMultiPayload();
      sub_188BAD4FC();
      sub_188BAD6E0();
      v39 = v147;
      sub_18A4A5598();
      v40 = v38;
      v41 = &qword_1EA93BD58;
    }

    else
    {
      [v31 _width];
      sub_18A4A6C08();
      sub_18A4A45B8();
      v89 = v169;
      v90 = v170;
      v91 = v171;
      v166 = 1;
      v165 = BYTE8(v169);
      v164 = BYTE8(v170);
      v92 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v93 = v154;
      (*(*(v92 - 8) + 56))(v154, 2, 2, v92);
      v94 = *(v148 + 36);
      sub_188C62DD0(v93, &v19[v94]);
      (*(v155 + 56))(&v19[v94], 0, 1, v156);
      *v19 = 0;
      v19[8] = v166;
      *(v19 + 9) = v168[0];
      *(v19 + 3) = *(v168 + 3);
      *(v19 + 2) = v89;
      v19[24] = v165;
      *(v19 + 25) = v167[0];
      *(v19 + 7) = *(v167 + 3);
      *(v19 + 4) = v90;
      v19[40] = v164;
      v95 = v163[0];
      *(v19 + 11) = *(v163 + 3);
      *(v19 + 41) = v95;
      *(v19 + 3) = v91;
      sub_188A3F29C(v19, v146, &qword_1EA93C028);
      swift_storeEnumTagMultiPayload();
      sub_188BAD4FC();
      sub_188BAD6E0();
      v39 = v147;
      sub_18A4A5598();
      v40 = v19;
      v41 = &qword_1EA93C028;
    }

    sub_188A3F5FC(v40, v41);
    v96 = &unk_1EA93C040;
    sub_188A3F29C(v39, v151, &unk_1EA93C040);
    swift_storeEnumTagMultiPayload();
    sub_188BAD470();
    sub_1890B47A4(&unk_1EA930AD0, &qword_1EA93C008, &unk_18A665268, sub_1890B4854);
    v97 = v152;
    sub_18A4A5598();
    sub_188A3F29C(v97, v159, &qword_1EA93C020);
    swift_storeEnumTagMultiPayload();
    sub_1890B46EC();
    sub_1890B4934();
    sub_18A4A5598();
    sub_188A3F5FC(v97, &qword_1EA93C020);
    v63 = v39;
LABEL_16:
    v88 = v96;
    return sub_188A3F5FC(v63, v88);
  }

  if ([v31 _isSearchBarPlacementItem] && (v42 = objc_msgSend(v31, sel__associatedSearchController)) != 0)
  {
    v43 = v42;

    v44 = *(v2 + 138);
    v45 = v43;
    LOBYTE(v43) = sub_18A4A5BC8();
    sub_18A4A43C8();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v167[0]) = 0;
    v54 = type metadata accessor for BarLayoutElement.ItemConfig(0);
    v55 = *(v54 + 24);
    v56 = sub_18A4A29D8();
    v57 = v154;
    (*(*(v56 - 8) + 56))(&v154[v55], 1, 1, v56);
    *v57 = 1;
    v57[1] = v44;
    (*(*(v54 - 8) + 56))(v57, 0, 2, v54);
    v58 = *(v153 + 36);
    v59 = v135;
    sub_188C62DD0(v57, &v135[v58]);
    (*(v155 + 56))(v59 + v58, 0, 1, v156);
    *v59 = v45;
    *(v59 + 8) = v44;
    *(v59 + 9) = v169;
    *(v59 + 12) = *(&v169 + 3);
    *(v59 + 16) = v43;
    *(v59 + 17) = v168[0];
    *(v59 + 20) = *(v168 + 3);
    *(v59 + 24) = v47;
    *(v59 + 32) = v49;
    *(v59 + 40) = v51;
    *(v59 + 48) = v53;
    *(v59 + 56) = 0;
    v60 = &qword_1EA93C008;
    v61 = v136;
    sub_188A3F704(v59, v136, &qword_1EA93C008);
    sub_188A3F29C(v61, v151, &qword_1EA93C008);
    swift_storeEnumTagMultiPayload();
    sub_188BAD470();
    sub_1890B47A4(&unk_1EA930AD0, &qword_1EA93C008, &unk_18A665268, sub_1890B4854);
    v62 = v152;
    sub_18A4A5598();
    sub_188A3F29C(v62, v159, &qword_1EA93C020);
    swift_storeEnumTagMultiPayload();
    sub_1890B46EC();
    sub_1890B4934();
    sub_18A4A5598();

    sub_188A3F5FC(v62, &qword_1EA93C020);
    v63 = v61;
  }

  else
  {
    v153 = v30;
    v64 = [v31 customView];

    if (!v64)
    {
      v98 = *(v2 + 138);
      if (v98 == 2)
      {
        v99 = 1.0;
      }

      else
      {
        v99 = 0.0;
      }

      LODWORD(v147) = *(v2 + 8);
      LODWORD(v149) = *(v2 + 9);
      v100 = *(v2 + 11);
      v101 = *(v2 + 12);
      v102 = v2[11];
      v145 = v2[10];
      v103 = v145;
      v146 = v102;
      v150 = v2[12];
      LODWORD(v152) = *(v2 + 136);
      LODWORD(v151) = *(v2 + 137);
      v104 = v102;
      v105 = v103;
      LODWORD(v148) = sub_18A4A5BC8();
      sub_18A4A43C8();
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v114 = *(v2 + 29);
      v115 = *(v2 + 61);
      v171 = *(v2 + 45);
      v172[0] = v115;
      *(v172 + 15) = *(v2 + 19);
      v169 = *(v2 + 13);
      v170 = v114;
      LOBYTE(v163[0]) = 0;
      v116 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v117 = *(v116 + 24);
      v118 = sub_18A4A29D8();
      v119 = *(*(v118 - 8) + 56);
      v144 = *(v2 + 13);
      v138 = *(v2 + 15);
      v120 = v154;
      v119(&v154[v117], 1, 1, v118);
      *v120 = 0;
      v120[1] = v98;
      (*(*(v116 - 8) + 56))(v120, 0, 2, v116);
      v121 = *(v142 + 36);
      v122 = v133;
      sub_188C62DD0(v120, &v133[v121]);
      (*(v155 + 56))(v122 + v121, 0, 1, v156);
      v123 = v169;
      *(v122 + 29) = v170;
      v124 = v172[0];
      *(v122 + 45) = v171;
      *(v122 + 61) = v124;
      *v122 = v29;
      *(v122 + 8) = v147;
      *(v122 + 9) = v149;
      *(v122 + 11) = v100;
      *(v122 + 12) = v101;
      *(v122 + 76) = *(v172 + 15);
      *(v122 + 13) = v123;
      v125 = v145;
      v126 = v146;
      *(v122 + 80) = v153;
      *(v122 + 88) = v125;
      v127 = v150;
      *(v122 + 96) = v126;
      *(v122 + 104) = v127;
      v128 = v138;
      *(v122 + 112) = v144;
      *(v122 + 128) = v128;
      *(v122 + 144) = v152;
      *(v122 + 145) = v151;
      *(v122 + 150) = v167[1];
      *(v122 + 146) = v167[0];
      *(v122 + 152) = v99;
      *(v122 + 160) = v148;
      *(v122 + 164) = *(v168 + 3);
      *(v122 + 161) = v168[0];
      *(v122 + 168) = v107;
      *(v122 + 176) = v109;
      *(v122 + 184) = v111;
      *(v122 + 192) = v113;
      *(v122 + 200) = 0;
      v96 = &qword_1EA93BFE8;
      v129 = v134;
      sub_188A3F704(v122, v134, &qword_1EA93BFE8);
      sub_188A3F29C(v129, v141, &qword_1EA93BFE8);
      swift_storeEnumTagMultiPayload();
      sub_1890B47A4(&qword_1EA930BB0, &qword_1EA93C000, &unk_18A665260, sub_188C659A4);
      sub_1890B47A4(&qword_1EA930AC8, &qword_1EA93BFE8, &unk_18A665248, sub_1890B45D4);
      v130 = v143;
      sub_18A4A5598();
      sub_188A3F29C(v130, v159, &qword_1EA93BFF8);
      swift_storeEnumTagMultiPayload();
      sub_1890B46EC();
      sub_1890B4934();
      sub_18A4A5598();
      sub_188A3F5FC(v130, &qword_1EA93BFF8);
      v63 = v129;
      goto LABEL_16;
    }

    LODWORD(v148) = *(v2 + 8);
    LODWORD(v151) = *(v2 + 9);
    v65 = *(v2 + 11);
    v66 = *(v2 + 12);
    LODWORD(v150) = *(v2 + 137);
    v152 = v64;
    LODWORD(v149) = sub_18A4A5BC8();
    sub_18A4A43C8();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = *(v2 + 29);
    v76 = *(v2 + 61);
    v171 = *(v2 + 45);
    v172[0] = v76;
    *(v172 + 15) = *(v2 + 19);
    v169 = *(v2 + 13);
    v170 = v75;
    LOBYTE(v163[0]) = 0;
    v77 = type metadata accessor for BarLayoutElement.ItemConfig(0);
    v78 = *(v77 + 24);
    v79 = sub_18A4A29D8();
    v80 = v154;
    (*(*(v79 - 8) + 56))(&v154[v78], 1, 1, v79);
    *v80 = 513;
    (*(*(v77 - 8) + 56))(v80, 0, 2, v77);
    v81 = *(v140 + 36);
    sub_188C62DD0(v80, &v9[v81]);
    (*(v155 + 56))(&v9[v81], 0, 1, v156);
    v82 = v169;
    *(v9 + 45) = v170;
    v83 = v172[0];
    *(v9 + 61) = v171;
    *(v9 + 77) = v83;
    v85 = v152;
    v84 = v153;
    *v9 = v29;
    *(v9 + 1) = v84;
    *(v9 + 2) = v85;
    v9[24] = v148;
    *(v9 + 25) = v151;
    v9[27] = v65;
    v9[28] = v66;
    *(v9 + 23) = *(v172 + 15);
    *(v9 + 29) = v82;
    v9[96] = v150;
    LODWORD(v84) = v168[0];
    *(v9 + 25) = *(v168 + 3);
    *(v9 + 97) = v84;
    *(v9 + 13) = v85;
    v9[112] = v149;
    *(v9 + 29) = *(v167 + 3);
    *(v9 + 113) = v167[0];
    *(v9 + 15) = v68;
    *(v9 + 16) = v70;
    *(v9 + 17) = v72;
    *(v9 + 18) = v74;
    v9[152] = 0;
    v60 = &qword_1EA93C000;
    v86 = v137;
    sub_188A3F704(v9, v137, &qword_1EA93C000);
    sub_188A3F29C(v86, v141, &qword_1EA93C000);
    swift_storeEnumTagMultiPayload();
    sub_1890B47A4(&qword_1EA930BB0, &qword_1EA93C000, &unk_18A665260, sub_188C659A4);
    sub_1890B47A4(&qword_1EA930AC8, &qword_1EA93BFE8, &unk_18A665248, sub_1890B45D4);
    v87 = v143;
    sub_18A4A5598();
    sub_188A3F29C(v87, v159, &qword_1EA93BFF8);
    swift_storeEnumTagMultiPayload();
    sub_1890B46EC();
    sub_1890B4934();
    sub_18A4A5598();

    sub_188A3F5FC(v87, &qword_1EA93BFF8);
    v63 = v86;
  }

  v88 = v60;
  return sub_188A3F5FC(v63, v88);
}

uint64_t sub_188C643CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UICoreViewRepresentableContext();
  type metadata accessor for PlatformViewRepresentableAdaptor();
  swift_getWitnessTable();
  v4 = sub_18A4A5A58();
  sub_18A4A5A38();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_188C644AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  v6 = sub_18A4A5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = type metadata accessor for UICoreViewRepresentableContext();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v7 + 16))(v9, a2, v6, v14);
  sub_188C643CC(v9, v16);
  (*(v10 + 40))(a1, v16, v11, v10);
  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_188C6468C()
{
  result = qword_1EA9313B0;
  if (!qword_1EA9313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9313B0);
  }

  return result;
}

uint64_t sub_188C646E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA930BC8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB78);
  v3 = __swift_project_value_buffer(v2, qword_1EA930BD0);
  return sub_188A3F29C(v3, a1, &qword_1EA93BB78);
}

uint64_t sub_188C64784(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

uint64_t sub_188C64854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarLayoutElement.ItemConfig(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188C648C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188C64928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_188C649C8(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v24 = a4;
  v25 = a1;
  v26 = a3;
  swift_getWitnessTable();
  v10 = sub_18A4A5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23[-v12];
  v14 = *(a7 + 24);
  v15 = type metadata accessor for UICoreViewRepresentableContext();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23[-v18];
  (*(v11 + 16))(v13, a6, v10, v17);
  sub_188C643CC(v13, v19);
  v20 = *(v14 + 64);
  v29 = a2 & 1;
  v28 = v24 & 1;
  v21 = v20(v25);
  (*(v16 + 8))(v19, v15);
  return v21;
}

uint64_t sub_188C64C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_188C64CF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_18A4A4618();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB80);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v19 = *(v6 + 72);
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v20 = CGRectGetWidth(v46) * 0.5;
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v47.origin.x = a1;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  v48 = CGRectInset(v47, v21, 0.0);
  if (*v6)
  {
    if (*(v6 + 4))
    {
      v22 = 8.0;
      if (*(v6 + 4) == 2)
      {
        v22 = 4.0;
      }

      v23 = 6.0;
      if ((*(v6 + 3) & 1) == 0)
      {
        v23 = v22;
      }

      __asm { FMOV            V4.2D, #12.0 }

      *&_Q4 = v23;
    }

    else
    {
      _Q4 = xmmword_18A661BA0;
    }
  }

  else
  {
    __asm { FMOV            V4.2D, #4.0 }
  }

  v44 = v48;
  v45 = _Q4;
  sub_188BB105C(*a6, &v44.origin.x, v43);
  v29 = *(a6 + 8);
  v40 = *(v29 + 16);
  if (v40)
  {
    v30 = 0;
    v38 = v13 + 16;
    v31 = (v13 + 8);
    v39 = *&v43[0];
    v32 = (*&v43[0] + 56);
    while (v30 < *(v29 + 16))
    {
      (*(v13 + 16))(v15, v29 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v30, v12);
      v33 = *(v39 + 16);
      if (v30 == v33)
      {
        sub_188BB3390(v43);
        (*v31)(v15, v12);
        return;
      }

      if (v30 >= v33)
      {
        goto LABEL_22;
      }

      ++v30;
      v34 = *(v32 - 3);
      v35 = *(v32 - 2);
      v36 = *(v32 - 1);
      v37 = *v32;
      (*(v13 + 32))(v18, v15, v12);
      v49.origin.x = v34;
      v49.origin.y = v35;
      v49.size.width = v36;
      v49.size.height = v37;
      CGRectGetMidX(v49);
      v50.origin.x = v34;
      v50.origin.y = v35;
      v50.size.width = v36;
      v50.size.height = v37;
      CGRectGetMidY(v50);
      sub_18A4A6D08();
      v42 = 0;
      v41 = 0;
      sub_18A4A4608();
      (*v31)(v18, v12);
      v32 += 5;
      if (v40 == v30)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:
    sub_188BB3390(v43);
  }
}

uint64_t sub_188C65074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarButtonBarElement(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_188C650D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_188C65230(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_188C18FD0(a1, *v1, *(v1 + 8), *(v1 + 16));
  return MEMORY[0x18CFE37E0](v2);
}

unint64_t sub_188C65274(uint64_t a1)
{
  result = sub_188C6529C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188C6529C()
{
  result = qword_1EA930308;
  if (!qword_1EA930308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930308);
  }

  return result;
}

uint64_t sub_188C653B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C0D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C0D8);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA9302D8, &unk_1EA93C0C0);
    sub_18A4A5608();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

char *sub_188C65594()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 16);
  if ([v1 shouldWrapView_])
  {

    v3 = [objc_allocWithZone(_UITAMICAdaptorView) initWithView_];
    [v3 setInvalidatesIntrinsicContentSizeOnSizeChange_];
    v2 = v3;
  }

  else
  {
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v4 = [v2 subviews];
    sub_188A34624(0, &qword_1ED48F680);
    v5 = sub_18A4A7548();

    if (v5 >> 62)
    {
      v6 = sub_18A4A7F68();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6)
    {

      type metadata accessor for CustomViewWrapper();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v8 = *&v7[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped];
      *&v7[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped] = v2;

      v9 = [(UIView *)v2 _typedStorage];
      v10 = sub_18902B930();

      v27 = v10;
      if (*(v10 + 16) >= 6uLL)
      {
        v11 = sub_1890B3F54(v10);

        v27 = v11;
      }

      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v26 = 0;
      sub_188F27F58(&v25, v7);
      v12 = v27;
      v13 = [(UIView *)v2 _typedStorage];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C0B8);
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v15 = OBJC_IVAR____UITypedStorage_storage;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(&v13->super.isa + v15);
      *(&v13->super.isa + v15) = 0x8000000000000000;
      sub_188A40430(v14, &_s19OwningSuperviewsKeyVN, isUniquelyReferenced_nonNull_native);
      *(&v13->super.isa + v15) = v24;
      swift_endAccess();

      sub_1890B32B4();
      v2 = v7;
      [v2 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges_];
    }
  }

  v17 = [(UIView *)v2 _traitOverrides];
  v18 = [(_UITraitOverrides *)v17 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v18;
  v25 = inited;
  sub_1890B30E8(1, &type metadata for UIContainedInBarMaterialTraitDefinition, sub_1890B2D2C, sub_18901C418);
  v20 = v25;
  v21 = [(UIView *)v2 _traitOverrides];
  v22 = *(v20 + 16);

  [(_UITraitOverrides *)v21 _replaceWithOverrides:v22];

  return v2;
}

uint64_t _s18ToolbarPreferencesCMa()
{
  result = qword_1EA930EB8;
  if (!qword_1EA930EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_188C659A4()
{
  result = qword_1EA930BB8;
  if (!qword_1EA930BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C050);
    sub_188A34360(&qword_1EA930B98, &unk_1EA93C060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930BB8);
  }

  return result;
}

unint64_t sub_188C65A5C()
{
  result = qword_1EA930BC0;
  if (!qword_1EA930BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930BC0);
  }

  return result;
}

uint64_t sub_188C65AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_188A34360(a7, a5);
  return sub_18A4A5618();
}

uint64_t sub_188C65BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_188C65BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_188C65BD4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v4 = sub_18A4A5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = type metadata accessor for UICoreViewRepresentableContext();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v7, a1, v4, v12);
  sub_188C643CC(v7, v14);
  v15 = (*(v8 + 32))(v14, v9, v8);
  (*(v11 + 8))(v14, v10);
  return v15;
}

uint64_t sub_188C65DA0()
{
  type metadata accessor for PlatformViewRepresentableAdaptor();
  swift_getWitnessTable();
  result = sub_18A4A5A58();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *UICorePlatformViewHost.__allocating_init(_:host:environment:viewPhase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = sub_188BA6950(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v13;
}

uint64_t sub_188C65F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BB78);
  __swift_allocate_value_buffer(v0, qword_1EA930BD0);
  v1 = __swift_project_value_buffer(v0, qword_1EA930BD0);
  v2 = type metadata accessor for BarLayoutElement(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_188C66004(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10 || (v11 = [v10 view]) == 0)
  {
    v11 = a5;
  }

  [v11 updateTraitsIfNeeded];
  sub_1890B358C(a1, a2 & 1, a3, a4 & 1);
  v13 = v12;

  return v13;
}

void sub_188C6613C(void *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v18 = *(v1 + 56);
  v19 = v4;
  v20 = *(v1 + 88);
  v16 = *(v1 + 24);
  v17 = v3;
  sub_188E4FA28(*(*v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem), *(v1 + 96), &v13);
  v10 = v14;
  v11 = v13;
  [*(v1 + 16) setLayoutMargins_];
  v14 = v10;
  v13 = v11;
  LOBYTE(v15) = 0;
  v5 = [(UIView *)a1 _traitOverrides];
  v6 = [(_UITraitOverrides *)v5 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v6;
  v12 = inited;
  sub_18901E41C(&v13);
  v8 = [(UIView *)a1 _traitOverrides];
  v9 = *(v12 + 16);

  [(_UITraitOverrides *)v8 _replaceWithOverrides:v9];
}

uint64_t sub_188C66288()
{
  v1 = v0;
  v2 = [(UIBarButtonItem *)v0 _typedStorage];
  v3 = sub_188C663B8();

  if (!v3)
  {
    _s18ToolbarPreferencesCMa();
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    sub_18A4A2C38();
    v4 = [(UIBarButtonItem *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9390C0);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(&v4->super.isa + v6);
    *(&v4->super.isa + v6) = 0x8000000000000000;
    sub_188A40430(v5, &_s18ToolbarPreferencesC3KeyVN, isUniquelyReferenced_nonNull_native);
    *(&v4->super.isa + v6) = v9;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_188C663C4()
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

void _saveSceneSessionUserInfo(void *a1)
{
  v1 = a1;
  [v1 _setUserInfoIsDirty:0];
  v2 = [v1 userInfo];
  v3 = [v1 persistentIdentifier];
  v4 = _restorationDirectory(v3);
  v5 = [v4 URLByAppendingPathComponent:@"userInfo.data" isDirectory:0];

  if (v2)
  {
    if ([MEMORY[0x1E696AE40] propertyList:v2 isValidForFormat:100])
    {
      v6 = [v1 persistentIdentifier];
      _ensureRestorationDirectoryExists(v6);

      v13 = 0;
      [v2 writeToURL:v5 error:&v13];
      v7 = v13;
      if (v7)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SCouldNotSaveS.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)", v7);
        }

        goto LABEL_18;
      }

      if (_UIStateRestorationDebugLogEnabled())
      {
        v7 = 0;
        NSLog(&cfstr_SSavedSceneSes.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)");
        goto LABEL_18;
      }
    }

    else if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SSceneSessionU_0.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)");
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNothingToSave_0.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)", v5);
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v9 = [v8 removeItemAtURL:v5 error:&v14];
  v7 = v14;

  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (v7)
  {
    v10 = [v7 domain];
    v11 = v10;
    if (v10 == *MEMORY[0x1E696A250])
    {
      v12 = [v7 code];

      if (v12 == 4)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SWarningUnable_1.isa, "void _saveSceneSessionUserInfo(UISceneSession *__strong)", v5, v7);
  }

LABEL_18:
}

void _ensureRestorationDirectoryExists(void *a1)
{
  v1 = _restorationDirectory(a1);
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = 0;
  [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:&v3];
}

void sub_188C6707C(void *a1, char a2)
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
      v20 = v9;
      v10 = a1;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        v12 = objc_opt_self();
        v13 = swift_allocObject();
        *(v13 + 16) = v3;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_188C673B8;
        *(v14 + 24) = v13;
        aBlock[4] = sub_188E3FE50;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A968;
        aBlock[3] = &block_descriptor_147;
        v15 = _Block_copy(aBlock);
        v16 = v3;

        [v12 performWithoutAnimation_];
        _Block_release(v15);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v18 = [v16 stack];
          v19 = [v18 backItem];

          sub_188B2A9B4(v9, v19, a2 & 1);
        }
      }

      else
      {
      }
    }
  }
}

id sub_188C673B8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizer);
  if (result)
  {
    return [result end];
  }

  return result;
}

double _possibleTopViewsHeightBasedOnContentOffsetForScrollView(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if (v5[1324] == 1 && ([v5 _existingView], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "_usesMinimumSafeAreas"), v7, v8))
  {
    v9 = [v6 _existingView];
    [v9 _minimumSafeAreaInsets];
    v11 = v10;
  }

  else
  {
    [v6 _contentOverlayInsets];
    v11 = v12;
  }

  [v4 adjustedContentInset];
  if (v11 >= v13)
  {
    v11 = v13;
  }

  [v4 _contentOffsetOrDeferredContentOffset];
  v15 = -v14 - v11;
  [v6 _heightRangeOfTopViews];
  if (v15 < v16)
  {
    v17 = v16;
    [v4 _allowedNavigationOverlapAmount];
    v19 = v15 + v18;
    if (v15 + v18 >= v17)
    {
      v19 = v17;
    }

    if (v18 > 0.0)
    {
      v15 = v19;
    }
  }

  return v15;
}

void sub_188C678E4()
{
  v3 = v0;
  v67 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v4 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (!v4)
  {
    v27 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
    swift_beginAccess();
    *&v3[v27] = MEMORY[0x1E69E7CC0];

    return;
  }

  v5 = v4;
  v6 = &selRef_backButtonTitlePositionOffsetForCompact_;
  v7 = [v0 barButtonItem];
  if (v7 && (v8 = v7, v9 = [v7 resolvedTitle], v8, v9))
  {
    v10 = sub_18A4A7288();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v3 button];
  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = v13;
  if (![v13 isBackButton])
  {

LABEL_21:

    v28 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
    swift_beginAccess();
    *&v3[v28] = MEMORY[0x1E69E7CC0];

    goto LABEL_22;
  }

  v64 = v5;
  v65 = v14;
  v15 = [v3 barButtonItem];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 _backButtonAlternateTitles];

    v18 = sub_18A4A7548();
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_26:
    LODWORD(v21) = 0;
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_10:
  v19 = (v18 + 40);
  v20 = *(v18 + 16) + 1;
  do
  {
    LODWORD(v21) = --v20 != 0;
    if (!v20)
    {
      break;
    }

    if (*(v19 - 1) == v10 && v12 == *v19)
    {
      break;
    }

    v19 += 2;
  }

  while ((sub_18A4A86C8() & 1) == 0);

  v10 = sub_188C6E6D4(v10, v12);
  v2 = v23;

  v24 = sub_188C6E8BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v24 + 2);
  v25 = *(v24 + 3);
  v1 = (v6 + 1);
  if (v6 >= v25 >> 1)
  {
LABEL_70:
    v24 = sub_188C6E8BC((v25 > 1), v1, 1, v24);
  }

  *(v24 + 2) = v1;
  v26 = &v24[16 * v6];
  *(v26 + 4) = v10;
  *(v26 + 5) = v2;
LABEL_27:
  v69 = *(v18 + 16);
  if (v69)
  {
    v63 = v21;
    v32 = 0;
    v68 = v18 + 32;
    v21 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleLookup;
    v66 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes;
    while (1)
    {
      v25 = *(v18 + 16);
      if (v32 >= v25)
      {
        __break(1u);
        goto LABEL_70;
      }

      v6 = v18;
      v33 = (v68 + 16 * v32);
      v35 = *v33;
      v34 = v33[1];
      swift_beginAccess();
      v36 = *&v3[v21];
      v37 = *(v36 + 16);

      if (v37 && (v38 = sub_188B0944C(v35, v34), (v39 & 1) != 0))
      {
        v40 = *(v36 + 56) + 16 * v38;
        v1 = *v40;
        v2 = *(v40 + 8);
        swift_endAccess();
        v41 = v1;
      }

      else
      {
        swift_endAccess();
        v42 = *&v3[v66];
        if (v42)
        {
        }

        else
        {
          v42 = MEMORY[0x1E69E7CC8];
        }

        v43 = *&v3[v67];
        if (!v43)
        {
          __break(1u);
          return;
        }

        v1 = sub_188C67F68(v35, v34, v42, v43);
        v2 = v44;
        swift_beginAccess();
        v45 = v1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = *&v3[v21];
        *&v3[v21] = 0x8000000000000000;
        sub_188C6810C(v1, v35, v34, isUniquelyReferenced_nonNull_native, v2);

        *&v3[v21] = v70;
        swift_endAccess();
      }

      v10 = *(v24 + 2);
      if (v10)
      {
        v47 = 0;
        v48 = (v24 + 40);
        while (*v48 > v2)
        {
          ++v47;
          v48 += 2;
          if (v10 == v47)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_45:
        v47 = *(v24 + 2);
      }

      if (!v12 || v47)
      {
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v24;
        if (!v49 || v10 >= *(v24 + 3) >> 1)
        {
          v24 = sub_188C6E8BC(v49, v10 + 1, 1, v24);
          v71 = v24;
        }

        v10 = &v71;
        sub_188C6E510(v47, v47, 1, v1, v2);
      }

      ++v32;

      v18 = v6;
      if (v32 == v69)
      {

        LODWORD(v21) = v63;
        goto LABEL_53;
      }
    }
  }

LABEL_53:
  v50 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  *&v3[v50] = v24;

  v51 = *(v24 + 2);
  if (v21)
  {

    v5 = v64;
    goto LABEL_58;
  }

  v5 = v64;
  if (!v12)
  {
LABEL_58:
    if (v51)
    {
      goto LABEL_59;
    }

    goto LABEL_22;
  }

  if (v51 > 1)
  {
LABEL_59:
    v52 = v5;
    LODWORD(v53) = 1132068864;
    [v52 setContentCompressionResistancePriority:0 forAxis:v53];
    v54 = *&v3[v50];
    if (*(v54 + 16))
    {
      v55 = *(v54 + 40);
    }

    else
    {
      v55 = 0.0;
    }

    v56 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint;
    if (*&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint])
    {

      v57 = *&v3[v56];
      if (!v57)
      {
LABEL_68:

        return;
      }

      [v57 setConstant_];
    }

    else
    {
      v58 = [v52 widthAnchor];

      v59 = [v58 constraintLessThanOrEqualToConstant_];
      v60 = *&v3[v56];
      *&v3[v56] = v59;
    }

    v61 = *&v3[v56];
    if (v61)
    {
      v62 = v61;
      [v62 setActive_];
    }

    goto LABEL_68;
  }

LABEL_22:
  LODWORD(v29) = 1144913920;
  [v5 setContentCompressionResistancePriority:0 forAxis:v29];
  v30 = *&v3[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backButtonTitleMaxWidthConstraint];
  if (v30)
  {
    v31 = v30;
    [v31 setActive_];
  }
}

id sub_188C67F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_18A4A7358() < 1)
  {

    return 0;
  }

  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v6 = sub_18A4A7258();

  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v7 = sub_18A4A7088();

  v8 = [v5 initWithString:v6 attributes:v7];

  if (!v8)
  {
LABEL_8:

    return v8;
  }

  v9 = v8;
  [a4 contentEdgeInsets];
  if (![a4 _visualProvider])
  {

    goto LABEL_8;
  }

  type metadata accessor for ButtonBarButtonVisualProvider.ButtonVisualProvider();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    [v10 _intrinsicWidthForAttributedTitle_];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v8;
}

void sub_188C6810C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188B0944C(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_188FA698C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188C6826C(v18, a4 & 1);
    v13 = sub_188B0944C(a2, a3);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a5;
  }

  else
  {
    sub_188C6E868(v13, a2, a3, a1, v23, a5);
  }
}

uint64_t sub_188C6826C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938C60);
  v39 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {
        v29 = v27;
      }

      sub_18A4A8888();
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

CGColorRef createPatternColorFromImage(void *a1)
{
  v1 = a1;
  [v1 scale];
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeScale(&v8, 1.0 / v2, -1.0 / v2);
  [v1 CGImage];

  v3 = CGPatternCreateWithImage2();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Pattern = CGColorSpaceCreatePattern(0);
  v6 = CGColorCreateWithPattern(Pattern, v4, &createPatternColorFromImage_alpha);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v4);
  return v6;
}

double sub_188C686D8(char a1, SEL *a2, SEL *a3)
{
  v6 = v3;
  v8 = [v6 button];
  if (v8 && (v9 = v8, v10 = [v8 appearanceData], v9, v10))
  {
    [v10 titlePositionAdjustmentForState_];
    v12 = v11;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = [Strong appearanceStorage];
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    if (a1)
    {
      v15 = a2;
    }

    else
    {
      v15 = a3;
    }

    v16 = [v14 *v15];
    if (v16)
    {
      v17 = v16;
      [v16 UIOffsetValue];
      v12 = v18;
    }

    else
    {
      v12 = 0.0;
    }
  }

  return v12;
}

uint64_t sub_188C68888()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = [(UIView *)v0 _typedStorage];
  sub_188A6852C(aBlock);

  if (v21)
  {
    sub_188A53994(aBlock, v24);
    sub_188ACE668(aBlock);
  }

  else
  {
    sub_188A3F5FC(aBlock, &unk_1EA933EC0);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
  }

  sub_188A3F29C(v24, aBlock, &unk_1EA93C9A0);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
    v6 = type metadata accessor for _Glass(0);
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v4, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_188A3F5FC(aBlock, &unk_1EA93C9A0);
    v6 = type metadata accessor for _Glass(0);
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  type metadata accessor for _Glass(0);
  v8 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_188A3F5FC(v4, &unk_1EA93BA10);
  if (v8)
  {
    return sub_188A3F5FC(v24, &unk_1EA93C9A0);
  }

  v10 = objc_opt_self();
  sub_188A3F29C(v24, v18, &unk_1EA93C9A0);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = v18[1];
  *(v11 + 24) = v18[0];
  *(v11 + 40) = v12;
  *(v11 + 56) = v19;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_18902C134;
  *(v13 + 24) = v11;
  v22 = sub_188E3FE50;
  v23 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  v21 = &block_descriptor_100_1;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  [v10 performWithoutAnimation_];
  _Block_release(v14);
  sub_188A3F5FC(v24, &unk_1EA93C9A0);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188C68C5C()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

double __parametersOfSpringAnimation_block_invoke_3(uint64_t a1, double a2)
{
  v4 = *(a1 + 40);
  v5 = exp(-(*(a1 + 48) * a2));
  return v4 - fabs(v5 * (*(*(a1 + 32) + 16))(a2));
}

double __parametersOfSpringAnimation_block_invoke_4(uint64_t a1, double a2)
{
  v4 = a2 * a2;
  v5 = exp(-(*(a1 + 40) * a2));
  v6 = (*(*(a1 + 32) + 16))(a2);
  v7 = *(a1 + 48);
  v8 = v4 * *(a1 + 64);
  if (v5 * v6 <= 0.0)
  {
    v9 = v7 + *(a1 + 56) * a2 - v8;
  }

  else
  {
    v9 = -(v7 + *(a1 + 56) * a2 - v8);
  }

  v10 = *(a1 + 40) * a2;
  return v9 / (v4 * *(a1 + 72) * expf(v10));
}

void sub_188C68EF4(char *a1, double *a2, double a3, double a4, float a5, float a6)
{
  v12 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v13 = *&a1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v13 && (v14 = [v13 attributedTitleForState_]) != 0)
  {
    v15 = v14;
    v16 = [v14 string];

    v17 = sub_18A4A7288();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a1 barButtonItem];
  if (v20 && (v21 = v20, v22 = [v20 resolvedTitle], v21, v22))
  {
    v23 = sub_18A4A7288();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  if (sub_18A4A7358() < 1)
  {

    v27 = [a1 button];
    if (v27)
    {
      v30 = v27;
      *&v28 = a5;
      *&v29 = a6;
      [v27 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:a4 verticalFittingPriority:{v28, v29}];
      v32 = v31;
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    *a2 = v32;
    *(a2 + 1) = v34;
  }

  else
  {
    v26 = *&a1[v12];
    if (v26)
    {
      v42 = *&a1[v12];
    }

    else
    {
      v42 = sub_18909D928();
      v26 = 0;
    }

    v35 = v26;
    sub_188C69168(v23, v25);

    *&v36 = a5;
    *&v37 = a6;
    [v42 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:a4 verticalFittingPriority:{v36, v37}];
    *a2 = v38;
    *(a2 + 1) = v39;
    *a2 = sub_188C694AC() + *a2 + 6.0;
    if (v19)
    {
      v40 = v17;
    }

    else
    {
      v40 = 0;
    }

    if (v19)
    {
      v41 = v19;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    sub_188C69168(v40, v41);
  }
}

void sub_188C69168(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [v2 barButtonItem];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 resolvedTitle];

      if (v5)
      {
        sub_18A4A7288();
      }
    }
  }

  v6 = &v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];
  v7 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes];

  if (v7 || (sub_188C5A3BC(), *v6))
  {
  }

  else
  {
    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v9 = sub_18A4A7258();
  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v10 = sub_18A4A7088();

  v25 = [v8 initWithString:v9 attributes:v10];

  v11 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton;
  v12 = *&v2[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
  if (v12)
  {
    [v12 setAttributedTitle:v25 forState:0];
  }

  if (*v6)
  {
  }

  else
  {
    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v14 = sub_18A4A7258();
  v15 = sub_18A4A7088();

  v16 = [v13 initWithString:v14 attributes:v15];

  v17 = *&v2[v11];
  if (v17)
  {
    [v17 setAttributedTitle:v16 forState:1];
  }

  if (*v6)
  {
  }

  else
  {
    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_18A4A7258();

  v20 = sub_18A4A7088();

  v21 = [v18 initWithString:v19 attributes:v20];

  v22 = *&v2[v11];
  if (v22)
  {
    v23 = v22;
    v24 = v21;
    [v23 setAttributedTitle:v24 forState:2];
  }
}

double sub_188C694AC()
{
  v1 = [v0 button];
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v4 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v6 _backButtonContentPaddingInButtonBarButton_];
        v8 = v7;
        swift_unknownObjectRelease();

        v3 = v8 + v8;
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

  v9 = *&v0[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_backIndicatorButton];
  if (v9)
  {
    [v9 intrinsicContentSize];
    v2 = v10;
  }

  return v3 + v2 + 5.0;
}

void SetCachedPatternColor(void *a1, const void *a2)
{
  v3 = a1;
  v4 = qword_1ED498D30;
  key = v3;
  if (a2 && !qword_1ED498D30)
  {
    os_unfair_lock_lock(&stru_1ED498CF4);
    if (!qword_1ED498D30)
    {
      qword_1ED498D30 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    }

    os_unfair_lock_unlock(&stru_1ED498CF4);
    v4 = qword_1ED498D30;
    v3 = key;
  }

  if (v4)
  {
    os_unfair_lock_lock(&stru_1ED498CF4);
    if (a2)
    {
      CFDictionarySetValue(qword_1ED498D30, key, a2);
    }

    else
    {
      CFDictionaryRemoveValue(qword_1ED498D30, key);
    }

    os_unfair_lock_unlock(&stru_1ED498CF4);
    v3 = key;
    key[26] = key[26] & 0xFFFFFF7F | ((a2 != 0) << 7);
  }
}

unint64_t sub_188C69808(uint64_t a1)
{
  result = sub_188C65A5C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_188C69830()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFD8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BFC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFE0);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&unk_1EA930830, &unk_1EA93BFC8);
    sub_18A4A5608();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

id sub_188C699E8@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  v4 = type metadata accessor for ButtonRepresentation.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_188C69AC4(uint64_t a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = [objc_opt_self() visualProviderForIdiom_];
  [v5 buttonBarButtonClass];
  swift_getObjCClassMetadata();
  sub_188A34624(0, &qword_1ED48C6B0);
  swift_dynamicCastMetatypeUnconditional();
  v74 = v5;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVisualProvider_];
  v7 = *(v1 + 25);
  v8 = *(v1 + 57);
  v82 = *(v1 + 41);
  v83[0] = v8;
  *(v83 + 15) = *(v1 + 72);
  v80 = *(v1 + 9);
  v81 = v7;
  v9 = *(v1 + 8);
  v10 = v6;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setVerticallyCentersContents_];
  [v10 setUsesAdjustedTintColorWhenItemPrefersFilledAppearance_];
  [v10 setUsesTintColorCapsuleForSelection_];
  v11 = *(v1 + 145);
  [v10 setIsSingleItemInSectionWithPlatter_];
  [v10 removeTarget:0 action:0 forControlEvents:0x2000];
  v12 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BFC0) + 36));
  [v10 addTarget:v12 action:sel__invokeWithRealSender_forEvent_ forControlEvents:0x2000];
  [*(*v1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem) setView_];

  v13 = *(v1 + 88);
  v15 = *(v1 + 104);
  v78 = *(v1 + 96);
  v14 = v78;
  v79 = v13;
  v16 = *(v1 + 144);
  v17 = type metadata accessor for ButtonWrapper();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button] = v10;
  *&v18[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_coordinator] = v12;
  v19 = &v18[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance];
  *v19 = v13;
  *(v19 + 1) = v14;
  *(v19 + 2) = v15;
  v20 = type metadata accessor for ButtonWrapper.AppearanceDelegate();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isCompact] = v16;
  v21[OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isSingleItemSection] = v11;
  v22 = &v21[OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_metrics];
  v23 = v80;
  *(v22 + 17) = v81;
  v24 = v83[0];
  *(v22 + 33) = v82;
  *(v22 + 49) = v24;
  *v22 = v9;
  *(v22 + 8) = *(v83 + 15);
  *(v22 + 1) = v23;
  v25 = v12;
  sub_188A3F29C(&v79, &v77, &qword_1EA93BFA8);
  sub_188A3F29C(&v78, &v77, &qword_1EA93BFA8);
  v26 = v10;
  v73 = v25;
  sub_188A3F29C(&v79, &v77, &qword_1EA93BFA8);
  sub_188A3F29C(&v78, &v77, &qword_1EA93BFA8);
  v76.receiver = v21;
  v76.super_class = v20;
  *&v18[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_appearanceDelegate] = objc_msgSendSuper2(&v76, sel_init);
  v75.receiver = v18;
  v75.super_class = v17;
  v27 = objc_msgSendSuper2(&v75, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 _glassMonochromaticTreatment];
  v31 = [(UIView *)v29 _traitOverrides];
  v32 = [(_UITraitOverrides *)v31 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  inited = swift_initStackObject();
  *(inited + 16) = v32;
  v77 = inited;
  sub_188AED3F4(v30);
  v34 = v77;
  v35 = [(UIView *)v29 _traitOverrides];
  v36 = *(v34 + 16);

  [(_UITraitOverrides *)v35 _replaceWithOverrides:v36];

  v37 = [v29 traitCollection];
  v38 = [v37 userInterfaceIdiom];

  if (v38 == 5)
  {
    v39 = [(UIView *)v29 _traitOverrides];
    v40 = [(_UITraitOverrides *)v39 _swiftImplCopy];

    v41 = swift_initStackObject();
    *(v41 + 16) = v40;
    v77 = v41;
    sub_18914E51C(3);
    v42 = v77;
    v43 = [(UIView *)v29 _traitOverrides];
    v44 = *(v42 + 16);

    [(_UITraitOverrides *)v43 _replaceWithOverrides:v44];
  }

  v45 = v29;
  v46 = [(UIView *)v45 _traitOverrides];
  v47 = [(_UITraitOverrides *)v46 _swiftImplCopy];

  v48 = swift_initStackObject();
  *(v48 + 16) = v47;
  v77 = v48;
  sub_1890B30E8(1, &type metadata for UIContainedInBarMaterialTraitDefinition, sub_1890B2D2C, sub_18901C418);
  v49 = v77;
  v50 = [(UIView *)v45 _traitOverrides];
  v51 = *(v49 + 16);

  [(_UITraitOverrides *)v50 _replaceWithOverrides:v51];

  [v45 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges_];
  v52 = v26;
  [v45 addSubview_];
  if ([v52 translatesAutoresizingMaskIntoConstraints])
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    v53 = [v45 centerXAnchor];
    v54 = [v52 centerXAnchor];
    v55 = [v53 constraintEqualToAnchor_];

    v56 = [v45 centerYAnchor];
    v57 = [v52 centerYAnchor];

    v58 = [v56 constraintEqualToAnchor_];
    v59 = [v45 widthAnchor];
    v60 = [v52 widthAnchor];

    v61 = [v59 constraintEqualToAnchor_];
    v62 = [v45 heightAnchor];

    v63 = [v52 heightAnchor];
    v64 = [v62 constraintEqualToAnchor_];

    v65 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_18A64B810;
    *(v66 + 32) = v55;
    *(v66 + 40) = v58;
    *(v66 + 48) = v61;
    *(v66 + 56) = v64;
    sub_188A34624(0, &qword_1ED48CFF0);
    v67 = v55;
    v68 = v58;
    v69 = v61;
    v70 = v64;
    v71 = sub_18A4A7518();

    [v65 activateConstraints_];

    sub_188A3F5FC(&v79, &qword_1EA93BFA8);
    sub_188A3F5FC(&v78, &qword_1EA93BFA8);

    return v45;
  }

  return result;
}

uint64_t static UICorePlatformColorDefinition.resolvedColor(_:environment:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(sub_18A4A5A28());
  v27[0] = a1;
  swift_unknownObjectRetain();
  v5 = [v4 init];
  sub_188C6AAD4();
  v6 = sub_18A4A5328();
  v7 = aBlock;
  if (aBlock)
  {
    v8 = aBlock;
  }

  else
  {
    v6 = [objc_opt_self() currentTraitCollection];
    v8 = v6;
  }

  v27[1] = v27;
  MEMORY[0x1EEE9AC00](v6);
  v25[0] = a2;
  v25[1] = 0;
  v26 = v8;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_188EB7F24;
  v9[4] = &v24;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_188BA5B68;
  *(v10 + 24) = v9;
  v32 = sub_188A86D40;
  v33 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_188A7AC24;
  v31 = &block_descriptor_125;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = v7;

  v14 = [v8 traitCollectionByModifyingTraits_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    v26 = a2;
    v16 = swift_allocObject();
    v16[2] = v5;
    v16[3] = sub_188EB8D90;
    v16[4] = v25;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188EB96A0;
    *(v17 + 24) = v16;
    v32 = sub_188EB96AC;
    v33 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_188A7AC24;
    v31 = &block_descriptor_14_7;
    v18 = _Block_copy(&aBlock);
    v19 = v12;
    v20 = v14;

    v21 = [v20 traitCollectionByModifyingTraits_];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      v22 = [v27[0] resolvedColorWithTraitCollection_];
      v23 = sub_188B56C3C(v22);
      swift_unknownObjectRelease();

      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188C6A99C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_188C6AA10(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_coordinator);
  v3 = OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem;
  v4 = [*(v2 + OBJC_IVAR____TtCV5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8720ButtonRepresentation11Coordinator_barButtonItem) style];
  if (v4 == 2)
  {
    v5 = (a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance + 8);
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = (a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance);
  }

  [*(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button) setAppearanceData_];
LABEL_6:
  v6 = *(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button);
  v7 = *(v2 + v3);
  v8 = *(a1 + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_appearanceDelegate);

  return [v6 configureFromBarItem:v7 withAppearanceDelegate:v8];
}

unint64_t sub_188C6AAD4()
{
  result = qword_1EA930350;
  if (!qword_1EA930350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930350);
  }

  return result;
}

uint64_t sub_188C6AB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_188C6ACE0(char *a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v45 = sub_18A4A4CD8();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_18A4A5318();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 144);
  v10 = *(v2 + 145);
  v52 = *(v2 + 88);
  v11 = &a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance];
  v12 = *&a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance];
  v13 = *&a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_buttonAppearance + 8];
  *v11 = v52;
  v14 = *(v2 + 96);
  v51 = *(v2 + 96);
  *(v11 + 8) = v14;
  sub_188A3F29C(&v52, aBlock, &qword_1EA93BFA8);
  sub_188A3F29C(&v51, aBlock, &qword_1EA93BFA8);

  v15 = *&a1[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_appearanceDelegate];
  *(v15 + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isCompact) = v9;
  v40 = v10;
  *(v15 + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_isSingleItemSection) = v10;
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_188C6AB9C;
  *(v18 + 24) = v17;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_103;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  [v16 performWithoutAnimation_];
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v22 = v15 + OBJC_IVAR____TtCC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper18AppearanceDelegate_metrics;
    v23 = *(v3 + 24);
    v24 = *(v3 + 56);
    *(v22 + 32) = *(v3 + 40);
    *(v22 + 48) = v24;
    *(v22 + 64) = *(v3 + 72);
    *v22 = *(v3 + 8);
    *(v22 + 16) = v23;
    v25 = *&v20[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button];
    [v25 setIsSingleItemInSectionWithPlatter_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BFB0);
    sub_18A4A5A48();
    sub_18A4A5008();
    (*(v41 + 8))(v8, v42);
    v26 = v44;
    v27 = v45;
    v28 = (*(v44 + 88))(v6, v45);
    if (v28 == *MEMORY[0x1E697E7D0])
    {
      v29 = *(v3 + 112);
      v30 = *(v3 + 120);
      v31 = *(v3 + 128);
      v32 = *(v3 + 136);
      v33 = type metadata accessor for ButtonWrapper();
      v47.receiver = v20;
      v47.super_class = v33;
      objc_msgSendSuper2(&v47, sel_setHitTestInsets_, v29, v30, v31, v32);
      v46.receiver = v20;
      v46.super_class = v33;
      objc_msgSendSuper2(&v46, sel_hitTestInsets);
      return [v25 setHitTestInsets_];
    }

    if (v28 == *MEMORY[0x1E697E7D8])
    {
      v34 = *(v3 + 112);
      v35 = *(v3 + 120);
      v36 = *(v3 + 128);
      v37 = *(v3 + 136);
      v38 = type metadata accessor for ButtonWrapper();
      v49.receiver = v20;
      v49.super_class = v38;
      objc_msgSendSuper2(&v49, sel_setHitTestInsets_, v34, v37, v36, v35);
      v48.receiver = v20;
      v48.super_class = v38;
      objc_msgSendSuper2(&v48, sel_hitTestInsets);
      return [v25 setHitTestInsets_];
    }

    return (*(v26 + 8))(v6, v27);
  }

  return result;
}

uint64_t sub_188C6B1C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_188C6B2F8(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  [a5 updateTraitsIfNeeded];
  sub_1890B358C(a1, a2 & 1, a3, a4 & 1);
  return result;
}

uint64_t _UIResponderRequiresTextInput(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [v1 _requiresKeyboardWhenFirstResponder];
    }

    else
    {
      v2 = [v1 conformsToProtocol:&unk_1EFE8B2D0];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __UIImageCacheKeyWithSentinel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v10 = a1;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = v11;
  if (v10)
  {
    [v11 addObject:v10];
  }

  v20 = &a10;
  v13 = a9;
  if (v13 != @"__UIImageCacheKeySentinel")
  {
    v14 = v13;
    do
    {
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = @"__NilKey";
      }

      [v12 addObject:v15];
      v16 = v20++;
      v17 = *v16;

      v14 = v17;
    }

    while (v17 != @"__UIImageCacheKeySentinel");
  }

  v18 = [v12 copy];

  return v18;
}

void UIGraphicsPopContext(void)
{
  ContextStack = GetContextStack(0);

  PopContextFromStack(ContextStack);
}

unint64_t sub_188C6E510(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = v11 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = v12 + 16 * a3;
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v12 = a4;
    *(v12 + 8) = a5;
    result = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t _UIVibrancyStyleConvertToPublic(uint64_t a1)
{
  if ((a1 - 101) > 0x13)
  {
    return 101;
  }

  else
  {
    return qword_18A6783B0[a1 - 101];
  }
}

uint64_t sub_188C6E6D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleLookup;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16))
  {
    v8 = sub_188B0944C(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 16 * v8);
      swift_endAccess();
      v11 = v10;
      return v10;
    }
  }

  result = swift_endAccess();
  v13 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_finalTitleAttributes);
  if (v13)
  {
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  v14 = *(v3 + OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton);
  if (v14)
  {
    v15 = v14;

    v10 = sub_188C67F68(a1, a2, v13, v15);
    v17 = v16;
    swift_beginAccess();
    v18 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_188C6810C(v10, a1, a2, isUniquelyReferenced_nonNull_native, v17);

    *(v3 + v6) = v20;
    swift_endAccess();
    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_188C6E868(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a5[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a6;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

char *sub_188C6E8BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_188C6E9C8()
{
  v1 = [v0 button];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    Width = CGRectGetWidth(v24);
  }

  else
  {
    Width = 0.0;
  }

  v12 = Width - (sub_188C694AC() + 6.0);
  v13 = OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleContent;
  swift_beginAccess();
  v14 = *&v0[v13];
  v15 = (v14 + 40);
  v16 = *(v14 + 16) + 1;
  while (--v16)
  {
    v17 = v15;
    v18 = *v15;
    if (*v15 > v12)
    {
      v15 += 2;
      if (vabdd_f64(v18, v12) > 0.0001)
      {
        continue;
      }
    }

    v19 = *(v17 - 1);
    if (v19)
    {
      v20 = v19;
      v21 = [v20 string];
      v22 = sub_18A4A7288();

      return v22;
    }

    return 0;
  }

  return 0;
}

uint64_t _shouldAssistantDescendent(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = v3;
    v6 = v5;
    if (WeakRetained == v5)
    {
      v8 = 1;
    }

    else
    {
      v7 = v5;
      while (1)
      {
        v8 = [v7 _allowAssistanceInSubtree];
        if (!v8)
        {
          break;
        }

        v6 = [v7 superview];

        v7 = v6;
        if (v6 == WeakRetained)
        {
          goto LABEL_10;
        }
      }

      v6 = v7;
    }

LABEL_10:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_188C6EFA0(double a1)
{
  v3 = [v1 button];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC5UIKit29ButtonBarButtonVisualProvider_titleButton];
    if (v4)
    {
      v22 = v3;
      v5 = v4;
      if (([v22 verticallyCentersContents] & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v7 = objc_msgSend(Strong, sel_centerTextButtons), swift_unknownObjectRelease(), v7))
      {
        v8 = [v5 centerYAnchor];
        v9 = [v22 centerYAnchor];
        v10 = [v8 constraintEqualToAnchor_];
        v11 = "TB_Bottom_Bottom";
        v12 = 0xD000000000000012;
      }

      else
      {
        v8 = [v5 lastBaselineAnchor];
        v13 = [v22 layoutMarginsGuide];
        v9 = [v13 bottomAnchor];

        v10 = [v8 constraintEqualToAnchor:v9 constant:a1];
        v11 = "IB_CenterX_CenterX";
        v12 = 0xD000000000000014;
      }

      v14 = v10;

      sub_188C5CE34(v14, v12, v11 | 0x8000000000000000);
      v15 = v5;
      v16 = [v15 topAnchor];
      v17 = v22;
      v18 = [v17 topAnchor];
      v19 = [v16 constraintGreaterThanOrEqualToAnchor_];

      sub_188C5CE34(v19, 0x545F706F545F4254, 0xEA0000000000706FLL);
      v20 = [v17 bottomAnchor];

      v21 = [v15 bottomAnchor];
      v23 = [v20 constraintGreaterThanOrEqualToAnchor_];

      sub_188C5CE34(v23, 0xD000000000000010, 0x800000018A6A4310);
      v3 = v23;
    }
  }
}

unint64_t sub_188C6F6AC()
{
  result = qword_1ED48EDE8;
  if (!qword_1ED48EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48EDE8);
  }

  return result;
}

void UICollectionLayoutListConfiguration.backgroundColor.setter(void *a1)
{
  sub_188C6FFB4(a1);
}

id sub_188C6FFB4(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setBackgroundColor_];
}

id sub_188C700A0(uint64_t a1, char a2, SEL *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    [*(v8 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
    v10 = swift_allocObject();
    *(v10 + 16) = v13;

    *v3 = v10;
  }

  v11 = 1.79769313e308;
  if ((a2 & 1) == 0)
  {
    v11 = *&a1;
  }

  return [v9 *a3];
}

uint64_t UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  sub_188C701F8(a1, a2, &block_descriptor_185, &selRef_setTrailingSwipeActionsConfigurationProvider_);

  return sub_188A55B8C(a1);
}

void sub_188C701F8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = sub_188C702D8();
  v9 = v8;
  if (a1)
  {
    v13[4] = a1;
    v13[5] = a2;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_189123788;
    v13[3] = a3;
    v10 = _Block_copy(v13);
    v11 = v9;
    sub_188A52E38(a1);
  }

  else
  {
    v12 = v8;
    v10 = 0;
  }

  [v9 *a4];
  _Block_release(v10);
}

uint64_t sub_188C702D8()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    return *(v2 + 16);
  }

  [*(v2 + 16) copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188C2E864();
  swift_dynamicCast();
  v3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;

  *v0 = v4;
  return v3;
}

id UICollectionLayoutListConfiguration.itemSeparatorHandler.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = sub_188C702D8();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    aBlock[4] = sub_188CE6160;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188CE5F94;
    aBlock[3] = &block_descriptor_118;
    v7 = _Block_copy(aBlock);
    v8 = v5;
    sub_188A52E38(a1);

    [v8 setItemSeparatorHandler_];
    _Block_release(v7);

    return sub_188A55B8C(a1);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      [*(v11 + 16) copy];
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
      sub_188C2E864();
      swift_dynamicCast();
      v12 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
      v13 = swift_allocObject();
      *(v13 + 16) = v15;

      *v2 = v13;
    }

    return [v12 setItemSeparatorHandler_];
  }
}

uint64_t sub_188C70568()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_188C705A4()
{
  v1 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24));
  v2 = sub_188C70A3C(*v1);
  v3 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24));
  if (sub_188C70E8C(*v3) < 2u || (v8 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24)), sub_188C26B20(*v8, *(v8 + 8)) != 3) && _UIAccessibilityFullKeyboardAccessEnabled())
  {
    v4 = *(v0 + 40);
    if ((v4 - 3) >= 2)
    {
      return 0;
    }

    v5 = __swift_project_boxed_opaque_existential_0(v0, *(v0 + 24));
    v6 = sub_188C706BC(*v5);
    if (!dyld_program_sdk_at_least())
    {
      return v4 == 3 && v6 == 3;
    }

    if (!v2)
    {
      return v6 != 3;
    }
  }

  return v2 == 2;
}

char *sub_188C706BC(void *a1)
{
  result = [a1 _splitViewControllerContext] + 1;
  if (result >= 8)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000045, 0x800000018A6B4610);
    [a1 _splitViewControllerContext];
    type metadata accessor for _UISplitViewControllerContext(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionLayoutListConfiguration._willBeginSwipingHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_188C70D78(a1, a2, &block_descriptor_182, &selRef__setWillBeginSwipingHandler_);

  return sub_188A55B8C(a1);
}

uint64_t UICollectionLayoutListConfiguration._didEndSwipingHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_188C70D78(a1, a2, &block_descriptor_179_1, &selRef__setDidEndSwipingHandler_);

  return sub_188A55B8C(a1);
}

unint64_t sub_188C70A3C(unint64_t a1)
{
  result = [(UITraitCollection *)a1 _selectionIsKey]+ 1;
  if (result >= 3)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000003CLL, 0x800000018A6B46A0);
    [(UITraitCollection *)a1 _selectionIsKey];
    type metadata accessor for _UITraitCollectionSelectionIsKey(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id sub_188C70C18(char a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    [*(v6 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    v7 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0);
    v8 = swift_allocObject();
    *(v8 + 16) = v10;

    *v2 = v8;
  }

  return [v7 *a2];
}

void _s10Foundation9IndexPathV5UIKitE3row7sectionACSi_SitcfC_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A64BFA0;
  *(v4 + 32) = a2;
  *(v4 + 40) = a1;

  JUMPOUT(0x18CFDDA80);
}

void sub_188C70D78(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = sub_188C702D8();
  v9 = v8;
  if (a1)
  {
    v13[4] = a1;
    v13[5] = a2;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_188A4A8F0;
    v13[3] = a3;
    v10 = _Block_copy(v13);
    v11 = v9;
    sub_188A52E38(a1);
  }

  else
  {
    v12 = v8;
    v10 = 0;
  }

  [v9 *a4];
  _Block_release(v10);
}

char *sub_188C70E8C(void *a1)
{
  result = [a1 _focusSystemState] + 1;
  if (result >= 4)
  {
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000003ALL, 0x800000018A6B4660);
    [a1 _focusSystemState];
    type metadata accessor for _UITraitCollectionFocusSystemState(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id UIButton.init(configuration:primaryAction:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = *(v3 + 16);

  v6 = [ObjCClassFromMetadata buttonWithConfiguration:v5 primaryAction:a2];

  return v6;
}

uint64_t _UISupportsShouldInvalidateForInsets()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_EnableCollectionViewLayoutShouldInvalidateForInsets, @"EnableCollectionViewLayoutShouldInvalidateForInsets");
    if (byte_1ED48AAEC)
    {
      return 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

BOOL _UIEdgeInsetsEqualToInsetsAlongAxis(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if ((a1 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UIEdgeInsetsEqualToInsetsAlongAxis(UIEdgeInsets, UIEdgeInsets, UIAxis)"}];
    [v22 handleFailureInFunction:v23 file:@"_UICollectionLayoutHelpers.m" lineNumber:723 description:{@"Invalid parameter not satisfying: %@", @"axis == UIAxisVertical || axis == UIAxisHorizontal || axis == UIAxisBoth"}];
  }

  v18 = a3 == a7;
  if (a2 != a6)
  {
    v18 = 0;
  }

  if (a5 != a9)
  {
    v18 = 0;
  }

  if (a4 != a8)
  {
    v18 = 0;
  }

  v19 = a2 == a6;
  if (a4 != a8)
  {
    v19 = 0;
  }

  v20 = a3 == a7;
  if (a5 != a9)
  {
    v20 = 0;
  }

  if (a1 != 1)
  {
    v20 = 0;
  }

  if (a1 != 2)
  {
    v19 = v20;
  }

  if (a1 == 3)
  {
    return v18;
  }

  else
  {
    return v19;
  }
}

uint64_t UIHostingViewBase.tearDown(uiView:updateDelegate:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_188C7180C(a1, a2, v2);
}

uint64_t sub_188C7180C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultCenter];
  [v5 removeObserver_];

  v6 = a1;
  v7 = [v6 window];
  if (v7)
  {
  }

  v8 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  if (*(a3 + v8) == 1)
  {
    sub_18A4A4738();
  }

  sub_18A4A47E8();

  return sub_18A4A4948();
}

void sub_188C71E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __UIRunLoopObserverTrampoline(__CFRunLoopObserver *a1, int a2, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v6[2]();
  CFRelease(aBlock);
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveObserver(Current, a1, *MEMORY[0x1E695E8D0]);
}

id sub_188C72350()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  [*(v0 + 128) stopAnimations];
  v2 = [*(v0 + 128) hostContainerView];
  [v2 removeFromSuperview];

  v3 = *(v0 + 56);
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  [*(v0 + 72) removeFromSuperview];
  v4 = *(v0 + 80);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_reparentingHelper);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = v5;

      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v9 _setDonatedTitleView_];
      }

      swift_unknownObjectWeakAssign();
    }

    v11 = *(v0 + 80);
    if (v11)
    {
      [v11 removeFromSuperview];
    }
  }

  v12 = *(v0 + 96);
  if (v12)
  {
    [v12 removeFromSuperview];
  }

  v13 = *(v0 + 120);
  if (v13)
  {
    [v13 removeFromSuperview];
  }

  [*(v0 + 144) removeFromSuperview];
  v14 = *(v0 + 152);
  if (v14)
  {
    [v14 removeFromSuperview];
  }

  result = *(v0 + 160);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

UIColor __swiftcall UIColor.init(_colorLiteralRed:green:blue:alpha:)(Swift::Float _colorLiteralRed, Swift::Float green, Swift::Float blue, Swift::Float alpha)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v9 = [v8 initWithRed:_colorLiteralRed green:green blue:blue alpha:alpha];
  result._cachedStyleString = v11;
  result._systemColorName = v10;
  result.super.isa = v9;
  return result;
}

unint64_t sub_188C72980()
{
  result = qword_1EA92F7D0;
  if (!qword_1EA92F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F7D0);
  }

  return result;
}

unint64_t sub_188C729D4()
{
  v0 = objc_opt_self();
  v1 = @"UICTFontTextStyleEmphasizedFootnote";
  v2 = [v0 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFA0;
  v4 = *off_1E70EC918;
  *(inited + 32) = *off_1E70EC918;
  v5 = sub_188A34624(0, &qword_1ED48C4A0);
  *(inited + 40) = v2;
  v6 = *off_1E70EC920;
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = v4;
  v9 = v2;
  v10 = v6;
  v11 = [v7 grayColor];
  *(inited + 104) = sub_188A34624(0, qword_1ED4913C0);
  *(inited + 80) = v11;
  v12 = sub_188AEC99C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6D0);
  swift_arrayDestroy();

  return v12;
}

uint64_t sub_188C72BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(uint64_t a1)
{
  v2 = *(a1 + 40);
}

_UIOrderedRangeIndexerImpl *_UIOrderedRangeIndexerImpl::binarySearchForLocation@<X0>(_UIOrderedRangeIndexerImpl *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = xmmword_18A678470;
  *(a5 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 <= a4)
  {
    v5 = *this;
    while (1)
    {
      v6 = (a4 + a3) / 2;
      v7 = *(v5 + 16 * v6);
      v8 = *(v5 + 16 * v6 + 8);
      if (a2 >= v7 && a2 - v7 < v8)
      {
        break;
      }

      if (a3 == a4)
      {
        return this;
      }

      if (v8 + v7 <= a2)
      {
        a3 = v6 + 1;
        if (v6 >= a4)
        {
          return this;
        }
      }

      else
      {
        a4 = v6 - 1;
        if (a3 >= v6)
        {
          return this;
        }
      }
    }

    *a5 = *(v5 + 16 * v6);
    *(a5 + 16) = v6;
  }

  return this;
}

_UIOrderedRangeIndexerImpl *_UIOrderedRangeIndexerImpl::binarySearchForLocation@<X0>(_UIOrderedRangeIndexerImpl *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 3);
  v5 = a2 >= v3;
  v4 = a2 - v3;
  v5 = !v5 || v4 >= *(this + 4);
  if (!v5)
  {
    return _UIOrderedRangeIndexerImpl::binarySearchForLocation(this, a2, 0, ((*(this + 1) - *this) >> 4) - 1, a3);
  }

  *(a3 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *a3 = xmmword_18A678470;
  return this;
}

void _UIDataSourceDestroyUpdateMaps(uint64_t a1)
{
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIDataSourceDestroyUpdateMaps(_UIDataSourceUpdateMaps * _Nonnull)"];
    [v6 handleFailureInFunction:v7 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:689 description:{@"Invalid parameter not satisfying: %@", @"updateMaps != NULL"}];
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    free(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    free(v5);
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
}

void sub_188C7495C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(&a47);

  _Unwind_Resume(a1);
}

void *__copy_constructor_8_8_sb0_sb8_sb16_sb24_sb32_sb40(void **a1, const void **a2)
{
  *a1 = _Block_copy(*a2);
  a1[1] = _Block_copy(a2[1]);
  a1[2] = _Block_copy(a2[2]);
  a1[3] = _Block_copy(a2[3]);
  a1[4] = _Block_copy(a2[4]);
  result = _Block_copy(a2[5]);
  a1[5] = result;
  return result;
}

void _UIDataSourceGenerateUpdateMaps(unsigned int *a1@<X0>, unsigned int *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, int32x4_t *a7@<X8>)
{
  v7 = a6;
  if (!a4)
  {
    v191 = [MEMORY[0x1E696AAA8] currentHandler];
    v192 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_UIDataSourceUpdateMaps _UIDataSourceGenerateUpdateMaps(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider _Nonnull, const _UIDataSourceUpdateProcessingCallbacks, NSString * _Nullable __autoreleasing * _Nullable)"}];
    [v191 handleFailureInFunction:v192 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"updateProvider != NULL"}];

    v7 = a6;
  }

  v230 = objc_alloc_init(_UIMutableFastIndexSet);
  v200 = v7;
  v8 = objc_alloc_init(_UIMutableFastIndexSet);
  v9 = *(a1 + 1);
  v239[0] = *a1;
  v228 = _Block_copy(v9);
  v239[1] = v228;
  v222 = _Block_copy(*(a1 + 2));
  v239[2] = v222;
  v11 = *a2;
  v10 = *(a2 + 1);
  v238[0] = *a2;
  v12 = _Block_copy(v10);
  v238[1] = v12;
  v234 = _Block_copy(*(a2 + 2));
  v238[2] = v234;
  if (!a4)
  {
    v193 = [MEMORY[0x1E696AAA8] currentHandler];
    v194 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _computeGlobalIndexesOfItemUpdates(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, NSString *__autoreleasing *)"}];
    [v193 handleFailureInFunction:v194 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"updateProvider != NULL"}];
  }

  if (v230)
  {
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v195 = [MEMORY[0x1E696AAA8] currentHandler];
    v196 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _computeGlobalIndexesOfItemUpdates(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, NSString *__autoreleasing *)"}];
    [v195 handleFailureInFunction:v196 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"deleteItemUpdatesIncludingMoves != nil"}];

    if (v8)
    {
      goto LABEL_7;
    }
  }

  v197 = [MEMORY[0x1E696AAA8] currentHandler];
  v198 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _computeGlobalIndexesOfItemUpdates(const _UIDataSourceModel, const _UIDataSourceModel, const NSUInteger, const __strong _UIDataSourceUpdateProvider, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, NSString *__autoreleasing *)"}];
  [v197 handleFailureInFunction:v198 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"insertItemUpdatesIncludingMoves != nil"}];

LABEL_7:
  v224 = v8;
  if (a3)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      aBlock = 0u;
      v245 = 0u;
      (*(a4 + 16))(&aBlock);
      if ((BYTE8(v245) & 1) == 0)
      {
        break;
      }

LABEL_25:
      if (a3 == ++v14)
      {
        goto LABEL_44;
      }
    }

    v240 = 0uLL;
    *&v241 = 0;
    if (aBlock == 2)
    {
      v15 = v238;
    }

    else
    {
      if ((aBlock & 0xFFFFFFFFFFFFFFFDLL) != 1)
      {
        goto LABEL_24;
      }

      v15 = v239;
    }

    __copy_assignment_8_8_t0w8_sb8_sb16(&v240, v15);
    v16 = DWORD2(aBlock);
    v17 = v240;
    if (DWORD2(aBlock) >= v240)
    {
      if (v13)
      {
        goto LABEL_24;
      }

      v30 = MEMORY[0x1E696AEC0];
      v31 = _UIDataSourceUpdateActionDescription(aBlock);
      v32 = [v30 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu sections.", v31, v16, HIDWORD(aBlock), v17];
    }

    else
    {
      v18 = (*(*(&v240 + 1) + 16))(*(&v240 + 1), DWORD2(aBlock));
      v20 = HIDWORD(aBlock);
      v21 = (HIDWORD(aBlock) + v18);
      v22 = DWORD1(v240);
      if (v21 >= DWORD1(v240))
      {
        v215 = v241;
        if (v20 >= (*(v241 + 16))(v241, v16))
        {
          if (v13)
          {
            goto LABEL_24;
          }

          v35 = MEMORY[0x1E696AEC0];
          v36 = _UIDataSourceUpdateActionDescription(aBlock);
          v37 = [v35 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu items in the section.", v36, v16, HIDWORD(aBlock), (*(v215 + 16))(v215, v16)];
LABEL_35:
          v13 = v37;
          v38 = v37;

          goto LABEL_24;
        }

        if (v13)
        {
          goto LABEL_24;
        }

        v33 = MEMORY[0x1E696AEC0];
        v31 = _UIDataSourceUpdateActionDescription(aBlock);
        v32 = [v33 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", v31, v16, HIDWORD(aBlock), v21, v22];
      }

      else
      {
        v23 = v230;
        if (aBlock == 1)
        {
LABEL_20:
          [(_UIMutableFastIndexSet *)v23 addIndex:v21, v19];
          goto LABEL_24;
        }

        if (aBlock != 3)
        {
          if (aBlock == 2)
          {
            v23 = v8;
            goto LABEL_20;
          }

LABEL_24:

          goto LABEL_25;
        }

        v24 = v245;
        if (v245 >= v11)
        {
          if (!v13)
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu sections.", @"move", v245, DWORD1(v245), v11];
            v39 = v13;
          }

          goto LABEL_24;
        }

        v25 = v12[2](v12, v245);
        v27 = DWORD1(v245);
        v28 = (DWORD1(v245) + v25);
        if (v28 < HIDWORD(v11))
        {
          [(_UIMutableFastIndexSet *)v230 addIndex:v21, v26];
          [(_UIMutableFastIndexSet *)v8 addIndex:v28, v29];
          goto LABEL_24;
        }

        if (v27 < v234[2](v234, v24))
        {
          if (v13)
          {
            goto LABEL_24;
          }

          v40 = MEMORY[0x1E696AEC0];
          v36 = _UIDataSourceUpdateActionDescription(aBlock);
          v37 = [v40 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", v36, v24, DWORD1(v245), v28, HIDWORD(v11)];
          goto LABEL_35;
        }

        if (v13)
        {
          goto LABEL_24;
        }

        v41 = MEMORY[0x1E696AEC0];
        v31 = _UIDataSourceUpdateActionDescription(aBlock);
        v32 = [v41 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu items in the section.", v31, v24, DWORD1(v245), v234[2](v234, v24)];
      }
    }

    v13 = v32;
    v34 = v32;

    goto LABEL_24;
  }

  v13 = 0;
LABEL_44:

  v42 = v13;
  v43 = *a1;
  MapWithCapacity = _allocateMapWithCapacity(*a1);
  v44 = v8;
  if (v43)
  {
    v45 = 0;
    v46 = vdupq_n_s64(v43 - 1);
    v47 = xmmword_18A67CB70;
    v48 = xmmword_18A64C520;
    v49 = MapWithCapacity + 8;
    v50 = vdupq_n_s64(4uLL);
    do
    {
      v51 = vmovn_s64(vcgeq_u64(v46, v48));
      if (vuzp1_s16(v51, *v46.i8).u8[0])
      {
        *(v49 - 2) = v45;
      }

      if (vuzp1_s16(v51, *&v46).i8[2])
      {
        *(v49 - 1) = v45 + 1;
      }

      if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v47))).i32[1])
      {
        *v49 = v45 + 2;
        v49[1] = v45 + 3;
      }

      v45 += 4;
      v47 = vaddq_s64(v47, v50);
      v48 = vaddq_s64(v48, v50);
      v49 += 4;
    }

    while (((v43 + 3) & 0x1FFFFFFFCLL) != v45);
  }

  v52 = a1[1];
  v203 = _allocateMapWithCapacity(a1[1]);
  if (v52)
  {
    v53 = 0;
    v54 = vdupq_n_s64(v52 - 1);
    v55 = xmmword_18A67CB70;
    v56 = xmmword_18A64C520;
    v57 = v203 + 8;
    v58 = vdupq_n_s64(4uLL);
    do
    {
      v59 = vmovn_s64(vcgeq_u64(v54, v56));
      if (vuzp1_s16(v59, *v54.i8).u8[0])
      {
        *(v57 - 2) = v53;
      }

      if (vuzp1_s16(v59, *&v54).i8[2])
      {
        *(v57 - 1) = v53 + 1;
      }

      if (vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v54, *&v55))).i32[1])
      {
        *v57 = v53 + 2;
        v57[1] = v53 + 3;
      }

      v53 += 4;
      v55 = vaddq_s64(v55, v58);
      v56 = vaddq_s64(v56, v58);
      v57 += 4;
    }

    while (((v52 + 3) & 0x1FFFFFFFCLL) != v53);
  }

  v60 = *a1;
  __b = _allocateMapWithCapacity(*a1);
  if (v60)
  {
    memset(__b, 255, 4 * v60);
  }

  v61 = a1[1];
  v62 = _allocateMapWithCapacity(a1[1]);
  v63 = v62;
  if (v61)
  {
    memset(v62, 255, 4 * v61);
  }

  v219 = v63;
  v210 = objc_alloc_init(_UIMutableFastIndexSet);
  v64 = objc_alloc_init(_UIMutableFastIndexSet);
  v233 = objc_alloc_init(_UIMutableFastIndexSet);
  v223 = objc_alloc_init(_UIMutableFastIndexSet);
  v211 = v64;
  if (a3)
  {
    v65 = 0;
    while (1)
    {
      aBlock = 0u;
      v245 = 0u;
      (*(a4 + 16))(&aBlock);
      v240 = 0uLL;
      *&v241 = 0;
      v66 = a2;
      if (aBlock == 2)
      {
        break;
      }

      v66 = a1;
      if ((aBlock & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        break;
      }

      v88 = 0;
      v89 = 0;
LABEL_162:

      if (++v65 == a3)
      {
        goto LABEL_194;
      }
    }

    v235 = v65;
    v67 = v42;
    __copy_assignment_8_8_t0w8_sb8_sb16(&v240, v66);
    if (BYTE8(v245) == 1)
    {
      v69 = *a1;
      v70 = *a2;
      v71 = aBlock;
      v72 = DWORD2(aBlock);
      v73 = v245;
      if (!__b)
      {
        v124 = [MEMORY[0x1E696AAA8] currentHandler];
        v125 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v124 handleFailureInFunction:v125 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"sectionMoveSourceToDestMap != NULL"}];
      }

      if (v210)
      {
        if (v64)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v128 = [MEMORY[0x1E696AAA8] currentHandler];
        v129 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v128 handleFailureInFunction:v129 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"deletedSectionsIncludingMoves != nil"}];

        if (v64)
        {
          goto LABEL_75;
        }
      }

      v130 = [MEMORY[0x1E696AAA8] currentHandler];
      v131 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v130 handleFailureInFunction:v131 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"insertedSectionsIncludingMoves != nil"}];

LABEL_75:
      if (!a5)
      {
        v136 = [MEMORY[0x1E696AAA8] currentHandler];
        v137 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v136 handleFailureInFunction:v137 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:226 description:{@"Invalid parameter not satisfying: %@", @"callbacksPtr != NULL"}];
      }

      if (v71 == 2)
      {
        v74 = v70;
      }

      else
      {
        v74 = v69;
      }

      if (v72 >= v74)
      {
        v75 = v67;
        if (!v67)
        {
          v140 = MEMORY[0x1E696AEC0];
          v141 = _UIDataSourceUpdateActionDescription(v71);
          v75 = [v140 stringWithFormat:@"Invalid batch updates detected: attempt to %@ section %lu, but there are only %lu sections.", v141, v72, v74];
          v142 = v75;
        }
      }

      else if (v71 == 3)
      {
        if (v73 >= v70)
        {
          v75 = v67;
          if (!v67)
          {
            v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ to destination section %lu, but there are only %lu sections.", @"move", v73, v70];
            v161 = v75;
          }
        }

        else
        {
          [(_UIMutableFastIndexSet *)v210 addIndex:v72, v68];
          [(_UIMutableFastIndexSet *)v64 addIndex:v73, v90];
          *(__b + v72) = v73;
          v91 = a5[2];
          v75 = v67;
          if (v91)
          {
            (*(v91 + 16))(v91, v235, v72, v73);
            v75 = v67;
          }
        }
      }

      else
      {
        if (v71 == 2)
        {
          [(_UIMutableFastIndexSet *)v64 addIndex:v72, v68];
          v76 = a5[1];
        }

        else
        {
          v75 = v67;
          if (v71 != 1)
          {
            goto LABEL_107;
          }

          [(_UIMutableFastIndexSet *)v210 addIndex:v72, v68];
          v76 = *a5;
        }

        v75 = v67;
        if (v76)
        {
          (*(v76 + 16))(v76, v235, v72);
          v75 = v67;
        }
      }

LABEL_107:
      v92 = v75;

      v93 = v240;
      v221 = _Block_copy(*(&v240 + 1));
      v94 = _Block_copy(v241);
      v216 = *a2;
      v217 = v94;
      v229 = _Block_copy(*(a2 + 1));
      v95 = _Block_copy(*(a2 + 2));
      v96 = aBlock;
      v97 = DWORD2(aBlock);
      v213 = v245;
      v65 = v235;
      if (!v219)
      {
        v143 = [MEMORY[0x1E696AAA8] currentHandler];
        v144 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v143 handleFailureInFunction:v144 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"itemMoveSourceToDestMap != NULL"}];
      }

      if (!v233)
      {
        v145 = [MEMORY[0x1E696AAA8] currentHandler];
        v146 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v145 handleFailureInFunction:v146 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"deletedItemsIncludingMoves != nil"}];
      }

      if (!v223)
      {
        v147 = [MEMORY[0x1E696AAA8] currentHandler];
        v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v147 handleFailureInFunction:v148 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"insertedItemsIncludingMoves != nil"}];
      }

      if (v230)
      {
        if (v44)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v149 = [MEMORY[0x1E696AAA8] currentHandler];
        v150 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v149 handleFailureInFunction:v150 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"deleteItemUpdatesIncludingMoves != nil"}];

        if (v44)
        {
          goto LABEL_115;
        }
      }

      v151 = [MEMORY[0x1E696AAA8] currentHandler];
      v152 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v151 handleFailureInFunction:v152 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"insertItemUpdatesIncludingMoves != nil"}];

LABEL_115:
      if (!a5)
      {
        v153 = [MEMORY[0x1E696AAA8] currentHandler];
        v154 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemsInSectionUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, _UIFastIndexSet *const __strong, _UIFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
        [v153 handleFailureInFunction:v154 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"callbacksPtr != NULL"}];
      }

      if (v97 >= v93)
      {
        if (v92)
        {
          v67 = v92;
        }

        else
        {
          v158 = MEMORY[0x1E696AEC0];
          v159 = _UIDataSourceUpdateActionDescription(v96);
          v67 = [v158 stringWithFormat:@"Invalid batch updates detected: attempt to %@ section %lu, but there are only %lu sections.", v159, v97, v93];
          v160 = v67;

          v92 = 0;
        }
      }

      else
      {
        v98 = v217[2](v217, v97);
        v99 = v221[2](v221, v97);
        if (v98)
        {
          v101 = v99;
          v102 = v92;
          v103 = 0;
          v231 = 0;
          v104 = 0;
          v212 = v95;
          v202 = v97;
          v205 = v102;
          v206 = v102;
          v105 = v98;
          v106 = v223;
          while (1)
          {
            v107 = (v101 + v103);
            if (v107 >= DWORD1(v93))
            {
              if (!v206)
              {
                v207 = MEMORY[0x1E696AEC0];
                v114 = _UIDataSourceUpdateActionDescription(v96);
                v115 = _UIDataSourceUpdateActionDescription(v96);
                v206 = [v207 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu) (global item index %lu) as part of an update to %@ section %lu, but there are only %lu total items.", v114, v202, v103, (v101 + v103), v115, v202, DWORD1(v93)];
                v116 = v206;
              }

              goto LABEL_136;
            }

            switch(v96)
            {
              case 3:
                if ([(_UIFastIndexSet *)v230 containsIndex:?])
                {
                  ++v231;
                }

                else if (v213 >= v216)
                {
                  if (!v206)
                  {
                    v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination section %lu as part of a section %@ update, but there are only %lu sections.", @"move", v213, @"move", v216];
                    v117 = v206;
LABEL_147:
                  }
                }

                else
                {
                  v109 = (v103 - v231 + v104);
                  v110 = v229[2]() + v109;
                  if ([(_UIFastIndexSet *)v224 containsIndex:v110])
                  {
                    do
                    {
                      ++v104;
                      v110 = (v110 + 1);
                    }

                    while (([(_UIFastIndexSet *)v224 containsIndex:v110]& 1) != 0);
                  }

                  v106 = v223;
                  if (v110 < HIDWORD(v216))
                  {
                    [(_UIMutableFastIndexSet *)v233 addIndex:v111];
                    [(_UIMutableFastIndexSet *)v223 addIndex:v110, v112];
                    v219[v107] = v110;
                    v113 = a5[5];
                    if (v113)
                    {
                      (*(v113 + 16))(v113, v235, (v101 + v103), v110);
                    }

                    break;
                  }

                  if (v109 >= v212[2](v212, v213))
                  {
                    if (!v206)
                    {
                      v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) as part of a section %@ update, but there are only %lu items in the section.", @"move", v213, v109, @"move", v212[2](v212, v213)];
                      v119 = v206;
                      goto LABEL_147;
                    }
                  }

                  else if (!v206)
                  {
                    v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) (global item index %lu) as part of a section %@ update, but there are only %lu total items.", @"move", v213, v109, v110, @"move", HIDWORD(v216)];
                    v118 = v206;
                    goto LABEL_147;
                  }
                }

                break;
              case 2:
                [(_UIMutableFastIndexSet *)v106 addIndex:v100];
                v108 = a5[4];
                if (v108)
                {
                  goto LABEL_127;
                }

                break;
              case 1:
                [(_UIMutableFastIndexSet *)v233 addIndex:v100];
                v108 = a5[3];
                if (!v108)
                {
                  break;
                }

LABEL_127:
                (*(v108 + 16))(v108, v235, (v101 + v103));
                break;
              default:
                break;
            }

LABEL_136:
            if (++v103 == v105)
            {
              v44 = v224;
              v64 = v211;
              v92 = v205;
              v67 = v206;
              goto LABEL_160;
            }
          }
        }

        v67 = v92;
        v65 = v235;
      }

      goto LABEL_161;
    }

    v77 = v240;
    v221 = _Block_copy(*(&v240 + 1));
    v217 = _Block_copy(v241);
    v78 = *a2;
    v229 = _Block_copy(*(a2 + 1));
    v212 = _Block_copy(*(a2 + 2));
    v79 = aBlock;
    v81 = DWORD2(aBlock);
    v80 = HIDWORD(aBlock);
    v82 = v245;
    v83 = DWORD1(v245);
    if (!v219)
    {
      v126 = [MEMORY[0x1E696AAA8] currentHandler];
      v127 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v126 handleFailureInFunction:v127 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"itemMoveSourceToDestMap != NULL"}];
    }

    if (!v233)
    {
      v132 = [MEMORY[0x1E696AAA8] currentHandler];
      v133 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v132 handleFailureInFunction:v133 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:390 description:{@"Invalid parameter not satisfying: %@", @"deletedItemsIncludingMoves != nil"}];
    }

    if (!v223)
    {
      v134 = [MEMORY[0x1E696AAA8] currentHandler];
      v135 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v134 handleFailureInFunction:v135 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"insertedItemsIncludingMoves != nil"}];
    }

    if (!a5)
    {
      v138 = [MEMORY[0x1E696AAA8] currentHandler];
      v139 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _processItemUpdate(const NSUInteger, const _UIDataSourceUpdate, const _UIMapIndex, const _UIDataSourceModel, const _UIDataSourceModel, _UIMapIndex *, _UIMutableFastIndexSet *const __strong, _UIMutableFastIndexSet *const __strong, const _UIDataSourceUpdateProcessingCallbacks *, NSString *__autoreleasing *)"}];
      [v138 handleFailureInFunction:v139 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"callbacksPtr != NULL"}];
    }

    if (v81 >= v77)
    {
      v44 = v224;
      if (v67)
      {
        v92 = v67;
      }

      else
      {
        v155 = MEMORY[0x1E696AEC0];
        v156 = _UIDataSourceUpdateActionDescription(v79);
        v67 = [v155 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu sections.", v156, v81, v80, v77];
        v157 = v67;

        v92 = 0;
      }

      goto LABEL_153;
    }

    v84 = HIDWORD(v77);
    v85 = v221[2](v221, v81) + v80;
    if (v85 >= HIDWORD(v77))
    {
      if (v80 >= v217[2](v217, v81))
      {
        v44 = v224;
        v64 = v211;
        if (v67)
        {
          v92 = v67;
          goto LABEL_160;
        }

        v167 = MEMORY[0x1E696AEC0];
        v165 = _UIDataSourceUpdateActionDescription(v79);
        v166 = [v167 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu), but there are only %lu items in the section.", v165, v81, v80, v217[2](v217, v81)];
      }

      else
      {
        v64 = v211;
        if (v67)
        {
          v92 = v67;
          v65 = v235;
          v95 = v212;
          v44 = v224;
          goto LABEL_161;
        }

        v164 = MEMORY[0x1E696AEC0];
        v165 = _UIDataSourceUpdateActionDescription(v79);
        v166 = [v164 stringWithFormat:@"Invalid batch updates detected: attempt to %@ item at index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", v165, v81, v80, v85, v84];
      }

      v67 = v166;
      v168 = v166;

      v92 = 0;
      goto LABEL_152;
    }

    if (v79 != 3)
    {
      v64 = v211;
      if (v79 == 2)
      {
        [(_UIMutableFastIndexSet *)v223 addIndex:v85, v86];
        v87 = a5[4];
        if (!v87)
        {
LABEL_151:
          v92 = v67;
LABEL_152:
          v44 = v224;
LABEL_153:
          v64 = v211;
LABEL_160:
          v65 = v235;
          v95 = v212;
LABEL_161:

          v42 = v67;
          v89 = *(&v240 + 1);
          v88 = v241;
          goto LABEL_162;
        }

LABEL_150:
        (*(v87 + 16))(v87, v235, v85);
        goto LABEL_151;
      }

      if (v79 == 1)
      {
        [(_UIMutableFastIndexSet *)v233 addIndex:v85, v86];
        v87 = a5[3];
        if (!v87)
        {
          goto LABEL_151;
        }

        goto LABEL_150;
      }

      goto LABEL_158;
    }

    v64 = v211;
    if (v82 >= v78)
    {
      if (!v67)
      {
        v199 = v83;
        v95 = v212;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu sections.", @"move", v82, v199, v78];
        v67 = v65 = v235;
        v162 = v67;
        v92 = 0;
        v44 = v224;
        goto LABEL_161;
      }

      goto LABEL_158;
    }

    v120 = (v229[2])(v229, v82) + v83;
    if (v120 < HIDWORD(v78))
    {
      [(_UIMutableFastIndexSet *)v233 addIndex:v85, v121];
      [(_UIMutableFastIndexSet *)v223 addIndex:v120, v122];
      v219[v85] = v120;
      v123 = a5[5];
      if (v123)
      {
        (*(v123 + 16))(v123, v235, v85, v120);
      }

      goto LABEL_158;
    }

    if (v83 >= v212[2](v212, v82))
    {
      if (!v67)
      {
        v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu), but there are only %lu items in the section.", @"move", v82, v83, v212[2](v212, v82)];
        goto LABEL_193;
      }
    }

    else if (!v67)
    {
      v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: attempt to %@ item to destination index path (%lu - %lu) (global item index %lu), but there are only %lu total items.", @"move", v82, v83, v120, HIDWORD(v78)];
LABEL_193:
      v67 = v163;
      v169 = v163;

      v92 = 0;
      goto LABEL_159;
    }

LABEL_158:
    v92 = v67;
LABEL_159:
    v44 = v224;
    goto LABEL_160;
  }

LABEL_194:
  v170 = _allocateMapWithCapacity(*a2);
  v171 = _allocateMapWithCapacity(a2[1]);
  v172 = v42 != 0;
  if ([(_UIFastIndexSet *)v210 count])
  {
    _processDeletedIndexes(*a1, v210, MapWithCapacity);
  }

  if ([(_UIFastIndexSet *)v64 count])
  {
    v173 = _processInsertedIndexes(*a1, *a2, v64, __b, MapWithCapacity, v170);
    if (v42)
    {
      v172 = 1;
    }

    else
    {
      v172 = v173;
    }
  }

  if ([(_UIFastIndexSet *)v233 count])
  {
    _processDeletedIndexes(a1[1], v233, v203);
  }

  if ([(_UIFastIndexSet *)v223 count])
  {
    v172 |= _processInsertedIndexes(a1[1], a2[1], v223, v219, v203, v171);
  }

  if (__b)
  {
    free(__b);
  }

  if (v219)
  {
    free(v219);
  }

  v174 = _populateNewIndexMap(*a1, *a2, MapWithCapacity, v170);
  v175 = v172 | v174 | _populateNewIndexMap(a1[1], a2[1], v203, v171);
  if (v175 == 1)
  {
    if (!v42)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid batch updates detected: the number of sections and/or items returned by the data source before and after performing the batch updates are inconsistent with the updates."];
    }

    v178 = *a1;
    v179 = _Block_copy(*(a1 + 1));
    v180 = _Block_copy(*(a1 + 2));
    v181 = *a2;
    v236 = _Block_copy(*(a2 + 1));
    v232 = _Block_copy(*(a2 + 2));
    v182 = [MEMORY[0x1E696AD60] string];
    v218 = v171;
    v220 = v170;
    v208 = v42;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 3221225472;
    *&v245 = ___UIDataSourceBatchUpdateDescription_block_invoke;
    *(&v245 + 1) = &unk_1E710C178;
    v183 = v182;
    v246 = v183;
    v184 = _Block_copy(&aBlock);
    v243[0] = v178;
    v243[1] = _Block_copy(v179);
    v243[2] = _Block_copy(v180);
    v184[2](v184, @"before", v243);
    v242[0] = v181;
    v242[1] = _Block_copy(v236);
    v242[2] = _Block_copy(v232);
    v184[2](v184, @"after", v242);
    [v183 appendString:@"Updates = [\n"];
    if (a3)
    {
      v185 = 0;
      do
      {
        v240 = 0u;
        v241 = 0u;
        (*(a4 + 16))(&v240);
        if (v240)
        {
          if (BYTE8(v241) == 1)
          {
            v186 = _UIDataSourceUpdateActionDescription(v240);
            v187 = [v186 capitalizedString];
            [v183 appendFormat:@"\t%@ section %lu", v187, DWORD2(v240)];
          }

          else
          {
            v186 = _UIDataSourceUpdateActionDescription(v240);
            v187 = [v186 capitalizedString];
            [v183 appendFormat:@"\t%@ item (%lu - %lu)", v187, DWORD2(v240), HIDWORD(v240)];
          }

          if (v240 == 3)
          {
            if (BYTE8(v241) == 1)
            {
              [v183 appendFormat:@" to %lu", v241];
            }

            else
            {
              [v183 appendFormat:@" to (%lu - %lu)", v241, DWORD1(v241)];
            }
          }

          if (v185 < (a3 - 1))
          {
            [v183 appendString:{@", \n"}];
          }
        }

        ++v185;
      }

      while (a3 != v185);
    }

    [v183 appendString:@"\n]"];
    v188 = v183;

    [v42 stringByAppendingFormat:@"\n%@", v188];
    v44 = v224;
    v64 = v211;
    v171 = v218;
    v170 = v220;
    v42 = LOBYTE(v175) = 1;
  }

  if (v200)
  {
    v189 = v42;
    *v200 = v42;
  }

  v176.i64[0] = *a1;
  v177.i64[0] = *a2;
  *a7 = vzip1q_s32(v176, v177);
  a7[1].i64[0] = MapWithCapacity;
  a7[1].i64[1] = v170;
  a7[2].i64[0] = v203;
  a7[2].i64[1] = v171;
  a7[3].i8[0] = v175;

  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(a5);
}

void sub_188C7676C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  __destructor_8_sb0_sb8_sb16_sb24_sb32_sb40(a50);
  __destructor_8_sb8_sb16(a42);
  __destructor_8_sb8_sb16(a35);
  _Unwind_Resume(a1);
}

void *_allocateMapWithCapacity(unsigned int a1)
{
  v2 = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
  if (!v2)
  {
    v4 = a1;
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIMapIndex *_allocateMapWithCapacity(const _UIMapIndex)"];
    [v5 handleFailureInFunction:v6 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:189 description:{@"Failed to allocate index map with capacity: %lu", v4}];
  }

  return v2;
}

uint64_t _populateNewIndexMap(int a1, unsigned int a2, uint64_t a3, void *__b)
{
  if (a3)
  {
    if (__b)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _populateNewIndexMap(const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMapIndex *)"}];
    [v12 handleFailureInFunction:v13 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:553 description:{@"Invalid parameter not satisfying: %@", @"oldIndexMap != NULL"}];

    if (__b)
    {
LABEL_3:
      if (!a2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _populateNewIndexMap(const _UIMapIndex, const _UIMapIndex, _UIMapIndex *, _UIMapIndex *)"}];
  [v14 handleFailureInFunction:v15 file:@"_UIDataSourceBatchUpdateMap.m" lineNumber:554 description:{@"Invalid parameter not satisfying: %@", @"newIndexMap != NULL"}];

  if (a2)
  {
LABEL_4:
    memset(__b, 255, 4 * a2);
  }

LABEL_5:
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a3 + 4 * v8);
      if (v10 != -1)
      {
        if (v10 >= a2)
        {
          v9 = 1;
        }

        else
        {
          *(__b + v10) = v8;
        }
      }

      ++v8;
    }

    while (a1 != v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_188C76BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __destructor_8_sb0_AB8s24n1_S_sb8_sb16_AE(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void UIHostingViewBase.isHiddenForReuse.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong window];
    if (v6)
    {
    }

    if (*(v1 + v3) == 1)
    {
      sub_18A4A4738();
    }

    sub_18A4A47E8();
  }
}

uint64_t sub_188C7819C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188C781E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

BOOL _UISizeEqualToSizeWithPrecision(double a1, double a2, double a3, double a4, double a5)
{
  if (a5 < 0.0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UISizeEqualToSizeWithPrecision(CGSize, CGSize, CGFloat)"}];
    [v12 handleFailureInFunction:v13 file:@"_UICollectionLayoutHelpers.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"precision >= 0.0"}];
  }

  v10 = vabdd_f64(a1, a3) <= a5;
  return vabdd_f64(a2, a4) <= a5 && v10;
}

uint64_t _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(void *a1, float64x2_t *a2, _BYTE *a3, uint64_t a4)
{
  v21 = a2[1];
  v22 = *a2;
  result = _UIRTreeContainerNode<unsigned long>::boundingFrame(v24, a1);
  v20 = vaddq_f64(v22, v21);
  v8 = vorrq_s8(vandq_s8(vcgeq_f64(v22, vaddq_f64(v24[0], v24[1])), vcgtq_f64(v22, v24[0])), vandq_s8(vcgtq_f64(v24[0], v22), vcgeq_f64(v24[0], v20)));
  if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) == 0)
  {
    v9 = a1[12] - a1[11];
    if (v9)
    {
      v10 = 0;
      v11 = v9 >> 5;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      while (1)
      {
        v13 = (a1[11] + 32 * v10);
        v14 = vorrq_s8(vandq_s8(vcgeq_f64(v22, vaddq_f64(*v13, v13[1])), vcgtq_f64(v22, *v13)), vandq_s8(vcgtq_f64(*v13, v22), vcgeq_f64(*v13, v20)));
        if ((vorrq_s8(vdupq_laneq_s64(v14, 1), v14).u64[0] & 0x8000000000000000) == 0)
        {
          result = (*(a4 + 16))(a4, *(a1[8] + 8 * v10), a3);
          if (*a3)
          {
            break;
          }
        }

        if (v12 == ++v10)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = a1[5];
      v16 = a1[6];
      if (v15 != v16)
      {
        v17 = v15 + 16;
        do
        {
          v18 = *(v17 - 16);
          v23[0] = v22;
          v23[1] = v21;
          result = _UIRTreeContainerNode<unsigned long>::enumerateElementsIntersecting(v18, v23, a3, a4);
          if (*a3)
          {
            break;
          }

          v19 = v17 == v16;
          v17 += 16;
        }

        while (!v19);
      }
    }
  }

  return result;
}

void _UICollectionReusableViewCommonInit(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    [v1 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v1 _setHostsLayoutEngine:1];
  }
}

void sub_188C78D28()
{
  v1 = v0;
  v53 = *MEMORY[0x1E69E9840];
  v2 = sub_18A4A2BD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18A4A2BA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E090);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  if ([(UIView *)v1 _isDeallocInitiated])
  {

    [(UICollectionViewCell *)v1 _executeConfigurationUpdate];
  }

  else
  {
    v45 = v12;
    v46 = v9;
    v47 = v5;
    v48 = v3;
    v49 = v2;
    v19 = [(UIView *)v1 _typedStorage];
    v20 = sub_188A4CEC4();

    if (v20)
    {
      sub_18913E3AC(14);
    }

    v50 = v20;
    v44 = *(v7 + 56);
    v44(v18, 1, 1, v6);
    v51 = v18;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = *(StatusReg + 848);
    *(StatusReg + 848) = v51;
    v23 = v7;
    v24 = byte_1ED4A3680;
    byte_1ED4A3680 = 1;
    [(UICollectionViewCell *)v1 _executeConfigurationUpdate];
    *(StatusReg + 848) = v22;
    v25 = v6;
    v26 = v51;
    byte_1ED4A3680 = v24;
    v27 = v23;
    sub_188A3F29C(v51, v15, &qword_1EA93E090);
    if ((*(v23 + 48))(v15, 1, v6) == 1)
    {
      sub_188A3F5FC(v26, &qword_1EA93E090);
      sub_188A3F5FC(v15, &qword_1EA93E090);
    }

    else
    {
      v28 = v46;
      (*(v23 + 32))(v46, v15, v6);
      v29 = sub_188ACEB88(v1, 14, &block_descriptor_52_1);
      v30 = v50;
      if (!v50)
      {
        v31 = v29;
        v32 = [(UIView *)v1 _typedStorage];
        v30 = sub_188A4CEC4();

        v29 = v31;
      }

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 14;
      *(v34 + 25) = v29;
      *(v34 + 32) = [UITableViewCell _invalidateConfiguration]_0;
      *(v34 + 40) = 0;
      v35 = v45;
      (*(v23 + 16))(v45, v28, v25);
      v44(v35, 0, 1, v25);

      v36 = v47;
      sub_18A4A2BE8();
      if (!v30)
      {
        type metadata accessor for TrackingDictionary();
        v37 = swift_allocObject();
        *(v37 + 16) = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v38 = [(UIView *)v1 _typedStorage];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E098);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        v50 = v33;
        v40 = OBJC_IVAR____UITypedStorage_storage;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = *(&v38->super.isa + v40);
        *(&v38->super.isa + v40) = 0x8000000000000000;
        sub_188A40430(v39, &type metadata for ObservationTrackingDictionaryKey, isUniquelyReferenced_nonNull_native);
        *(&v38->super.isa + v40) = v52;
        swift_endAccess();
      }

      swift_retain_n();
      sub_188ACEFD4(v36, 14);

      v42 = swift_allocObject();
      *(v42 + 16) = sub_188B57AD4;
      *(v42 + 24) = v34;

      MEMORY[0x18CFDDAE0](v36, 0, 0, sub_188B57248, v42);

      (*(v48 + 8))(v36, v49);
      (*(v27 + 8))(v28, v25);
      sub_188A3F5FC(v51, &qword_1EA93E090);
    }
  }
}

uint64_t UIHostingViewBase.isHiddenForReuse.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t _UICollectionViewCompositionalLayoutShouldRespectPreferredSizeOnEstimatedAxisOnly()
{
  if (qword_1ED49CC90 != -1)
  {
    dispatch_once(&qword_1ED49CC90, &__block_literal_global_564);
  }

  if (_MergedGlobals_1032)
  {
    return 0;
  }

  return dyld_program_sdk_at_least();
}

id sub_188C79ACC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = *(v4 + *a3);
  v8 = sub_18A4A2B08();
  v9 = [v7 *a4];

  return v9;
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

uint64_t _UIRTreeContainerNode<_UICollectionViewRTreeElement>::enumerateElementsIntersectingWithConstRef(void *a1, float64x2_t *a2, _BYTE *a3, uint64_t a4)
{
  v22 = a2[1];
  v23 = *a2;
  result = _UIRTreeContainerNode<unsigned long>::boundingFrame(v25, a1);
  v21 = vaddq_f64(v23, v22);
  v8 = vorrq_s8(vandq_s8(vcgeq_f64(v23, vaddq_f64(v25[0], v25[1])), vcgtq_f64(v23, v25[0])), vandq_s8(vcgtq_f64(v25[0], v23), vcgeq_f64(v25[0], v21)));
  if ((vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] & 0x8000000000000000) == 0)
  {
    v9 = a1[12] - a1[11];
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = v9 >> 5;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      while (1)
      {
        v14 = (a1[11] + 32 * v11);
        v15 = vorrq_s8(vandq_s8(vcgeq_f64(v23, vaddq_f64(*v14, v14[1])), vcgtq_f64(v23, *v14)), vandq_s8(vcgtq_f64(*v14, v23), vcgeq_f64(*v14, v21)));
        if ((vorrq_s8(vdupq_laneq_s64(v15, 1), v15).u64[0] & 0x8000000000000000) == 0)
        {
          result = (*(a4 + 16))(a4, a1[8] + v10, a3);
          if (*a3)
          {
            break;
          }
        }

        ++v11;
        v10 += 40;
        if (v13 == v11)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v16 = a1[5];
      v17 = a1[6];
      if (v16 != v17)
      {
        v18 = v16 + 16;
        do
        {
          v19 = *(v18 - 16);
          v24[0] = v23;
          v24[1] = v22;
          result = _UIRTreeContainerNode<_UICollectionViewRTreeElement>::enumerateElementsIntersectingWithConstRef(v19, v24, a3, a4);
          if (*a3)
          {
            break;
          }

          v20 = v18 == v17;
          v18 += 16;
        }

        while (!v20);
      }
    }
  }

  return result;
}

uint64_t _UIRTreeContainerNode<unsigned long>::boundingFrame(uint64_t result, uint64_t a2)
{
  v2 = result;
  v4 = *(a2 + 112);
  v3 = *(a2 + 128);
  v5 = vornq_s8(vmvnq_s8(vceqq_f64(v4, v4)), vceqq_f64(v3, v3));
  if ((vorrq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    v7 = *(a2 + 88);
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v3 = 0uLL;
    while (v7 != *(a2 + 96))
    {
      v9 = *v7;
      v8 = v7[1];
      v7 += 2;
      v10 = vaddq_f64(v4, v3);
      v4 = vminnmq_f64(v4, v9);
      v3 = vsubq_f64(vmaxnmq_f64(v10, vaddq_f64(v9, v8)), v4);
    }

    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    while (v11 != v12)
    {
      v14 = v3;
      v15 = v4;
      v13 = *v11;
      v11 += 2;
      result = _UIRTreeContainerNode<unsigned long>::boundingFrame(v16, v13);
      v4 = vminnmq_f64(v15, v16[0]);
      v3 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v15, v14), vaddq_f64(v16[0], v16[1])), v4);
    }

    *(a2 + 112) = v4;
    *(a2 + 128) = v3;
  }

  *v2 = v4;
  v2[1] = v3;
  return result;
}

BOOL _s5UIKit24UICellConfigurationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0 && ((*(a1 + 10) ^ *(a2 + 10)) & 1) == 0 && ((*(a1 + 11) ^ *(a2 + 11)) & 1) == 0 && ((*(a1 + 12) ^ *(a2 + 12)) & 1) == 0 && ((*(a1 + 13) ^ *(a2 + 13)) & 1) == 0 && ((*(a1 + 14) ^ *(a2 + 14)) & 1) == 0 && ((*(a1 + 15) ^ *(a2 + 15)) & 1) == 0 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && ((*(a1 + 19) ^ *(a2 + 19)) & 1) == 0 && ((*(a1 + 20) ^ *(a2 + 20)) & 1) == 0 && *(a1 + 17) == *(a2 + 17) && *(a1 + 18) == *(a2 + 18))
  {
    v4 = *(a1 + 24);
    v5 = *(a2 + 24);
    sub_188A34624(0, &qword_1ED490230);
    return (sub_18A4A7C88() & 1) != 0 && (sub_188C7A41C(v4, v5) & 1) != 0;
  }

  return result;
}

uint64_t sub_188C7A41C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    sub_188BBA230(*(v3 + 56) + 40 * v12, &v24);
    v21 = v25;
    v22 = v24;
    v14 = v26;
    v15 = v13;
    if (!v13)
    {
      return 1;
    }

    v16 = v15;
    v24 = v22;
    v25 = v21;
    v26 = v14;
    v17 = sub_188B00858(v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_188BBA15C(&v24);
      return 0;
    }

    sub_188BBA230(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x18CFE2F70](v23, &v24);
    sub_188BBA15C(v23);
    result = sub_188BBA15C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_188C7A5A0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_188C7A5F8(v6, a4);

  return v8;
}

void sub_188C7ADA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v9 = v7[5].__vftable;
  if (v9)
  {
    v7[5].__shared_owners_ = v9;
    operator delete(v9);
  }

  v10 = v7[4].__vftable;
  if (v10)
  {
    v7[4].__shared_owners_ = v10;
    operator delete(v10);
  }

  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](va);
  shared_weak_owners = v7[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v12 = v7[2].__vftable;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::~__shared_weak_count(v7);
  operator delete(v13);

  _Unwind_Resume(a1);
}

void _UIRTreeContainerNode<unsigned long>::commonInit(int64x2_t *a1)
{
  a1[8].i64[0] = 0;
  a1[8].i64[1] = 0;
  a1[7] = vdupq_n_s64(0x7FF8000000000000uLL);
  v2 = a1[5].i64[1];
  v3 = a1[6].i64[0];
  if ((v3 - v2) >> 5 != (a1[4].i64[1] - a1[4].i64[0]) >> 3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIRTreeContainerNode<>::commonInit() [T = unsigned long]"];
    [v12 handleFailureInFunction:v13 file:@"_UIRTree.mm" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"_childFrames.size() == _childElements.size()"}];

    v2 = a1[5].i64[1];
    v3 = a1[6].i64[0];
  }

  if (v2 == v3)
  {
    v9 = a1[3].i64[0];
    v10 = a1[2].i64[1];
    if (v10 == v9)
    {
      return;
    }

    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v5 = 0uLL;
    do
    {
      v14 = v5;
      v15 = v4;
      v11 = *v10;
      v10 += 2;
      _UIRTreeContainerNode<unsigned long>::boundingFrame(v16, v11);
      v4 = vminnmq_f64(v15, v16[0]);
      v5 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v15, v14), vaddq_f64(v16[0], v16[1])), v4);
    }

    while (v10 != v9);
  }

  else
  {
    v4 = vdupq_n_s64(0x7FF8000000000000uLL);
    v5 = 0uLL;
    do
    {
      v7 = *v2;
      v6 = v2[1];
      v2 += 2;
      v8 = vaddq_f64(v4, v5);
      v4 = vminnmq_f64(v4, v7);
      v5 = vsubq_f64(vmaxnmq_f64(v8, vaddq_f64(v7, v6)), v4);
    }

    while (v2 != v3);
  }

  a1[7] = v4;
  a1[8] = v5;
}

double _UISizeValueForAxis(uint64_t a1, double a2, double a3)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return a3;
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGFloat _UISizeValueForAxis(CGSize, UIAxis)"}];
      [v4 handleFailureInFunction:v5 file:@"_UICollectionLayoutHelpers.m" lineNumber:200 description:@"Unknown layout axis."];

      return 0.0;
    }
  }

  return result;
}

uint64_t _UIDirectionalEdgeForPreEdgeOnLayoutAxis(uint64_t a1)
{
  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDirectionalRectEdge _UIDirectionalEdgeForPreEdgeOnLayoutAxis(UIAxis)"];
    [v3 handleFailureInFunction:v4 file:@"_UICollectionLayoutHelpers.m" lineNumber:1046 description:@"Invalid layout axis."];
  }

  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _UIDirectionalEdgeForPostEdgeOnLayoutAxis(uint64_t a1)
{
  if ((a1 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDirectionalRectEdge _UIDirectionalEdgeForPostEdgeOnLayoutAxis(UIAxis)"];
    [v3 handleFailureInFunction:v4 file:@"_UICollectionLayoutHelpers.m" lineNumber:1052 description:@"Invalid layout axis."];
  }

  if (a1 == 2)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

void sub_188C7B888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v2[5].__vftable;
  if (v5)
  {
    v2[5].__shared_owners_ = v5;
    operator delete(v5);
  }

  v6 = v2[4].__vftable;
  if (v6)
  {
    v2[4].__shared_owners_ = v6;
    operator delete(v6);
  }

  std::vector<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::__destroy_vector::operator()[abi:nn200100](va);
  shared_weak_owners = v2[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v8 = v2[2].__vftable;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v9);
  _Unwind_Resume(a1);
}

__n128 _UIRTreeContainerNode<unsigned long>::addContainer(_OWORD *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a3)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"shared_ptr<_UIRTreeContainerNode<T>> _UIRTreeContainerNode<>::addContainer(shared_ptr<_UIRTreeContainerNode<T>>, shared_ptr<_UIRTreeContainerNode<T>>) [T = unsigned long]"}];
    [v49 handleFailureInFunction:v50 file:@"_UIRTree.mm" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"container"}];
  }

  if (_UIRTreeContainerNode<unsigned long>::isFull(a2))
  {
    v8 = *(a2 + 32);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(a2 + 24);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        if (v10)
        {
          v11 = *(a2 + 32);
          if (v11)
          {
            v12 = std::__shared_weak_count::lock(v11);
            if (v12)
            {
              v13 = *(a2 + 24);
              goto LABEL_45;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = 0;
LABEL_45:
          v44 = a3[1];
          v61[0] = *a3;
          v61[1] = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = a4[1];
          v59 = *a4;
          v60 = v45;
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          _UIRTreeContainerNode<unsigned long>::addContainer(&v62, v13, v61, &v59);
          v46 = a4[1];
          *a4 = v62;
          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v46);
          }

          if (v60)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v60);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
          }

          if (v12)
          {
            v47 = v12;
LABEL_60:
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
            goto LABEL_61;
          }

          goto LABEL_61;
        }
      }
    }

    v57 = 0uLL;
    v58 = 0;
    v23 = *(a2 + 16);
    if (v23 && std::__shared_weak_count::lock(v23))
    {
      v65 = &v57;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>>(1uLL);
    }

    goto LABEL_62;
  }

  v52 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((a3[1] + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 16);
  if (!v15 || (v16 = *(a2 + 8), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
LABEL_62:
    std::__throw_bad_weak_ptr[abi:nn200100]();
LABEL_63:
    std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = *(v52 + 32);
  *(v52 + 24) = v16;
  *(v52 + 32) = v18;
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::__shared_weak_count::__release_weak(v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  if (v20 >= v21)
  {
    v24 = *(a2 + 40);
    v25 = (v20 - v24) >> 4;
    v26 = v25 + 1;
    if ((v25 + 1) >> 60)
    {
      goto LABEL_63;
    }

    v27 = v21 - v24;
    if (v27 >> 3 > v26)
    {
      v26 = v27 >> 3;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF0)
    {
      v28 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    v65 = (a2 + 40);
    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>>(v28);
    }

    v29 = 16 * v25;
    *(16 * v25) = v52;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = (v29 + 16);
    v30 = *(a2 + 40);
    v31 = *(a2 + 48) - v30;
    v32 = v29 - v31;
    memcpy((v29 - v31), v30, v31);
    v33 = *(a2 + 40);
    *(a2 + 40) = v32;
    *(a2 + 48) = v22;
    v34 = *(a2 + 56);
    *(a2 + 56) = 0;
    v63 = v33;
    v64 = v34;
    *&v62 = v33;
    *(&v62 + 1) = v33;
    std::__split_buffer<std::shared_ptr<_UIRTreeContainerNode<unsigned long>>>::~__split_buffer(&v62);
  }

  else
  {
    *v20 = v52;
    v20[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v20 + 2;
  }

  *(a2 + 48) = v22;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _UIRTreeContainerNode<unsigned long>::boundingFrame(v56, a2);
  v51 = v56[0];
  v53 = v56[1];
  _UIRTreeContainerNode<unsigned long>::boundingFrame(v55, *a3);
  v35 = vandq_s8(vcgeq_f64(vaddq_f64(v51, v53), vaddq_f64(v55[0], v55[1])), vcgeq_f64(v55[0], v51));
  if ((vandq_s8(vdupq_laneq_s64(v35, 1), v35).u64[0] & 0x8000000000000000) == 0)
  {
    _UIRTreeContainerNode<unsigned long>::boundingFrame(v54, *a3);
    v36 = *(a2 + 112);
    v37 = vminnmq_f64(v36, v54[0]);
    v38 = vsubq_f64(vmaxnmq_f64(vaddq_f64(v36, *(a2 + 128)), vaddq_f64(v54[0], v54[1])), v37);
    *(a2 + 112) = v37;
    *(a2 + 128) = v38;
    v39 = *(a2 + 32);
    if (v39)
    {
      v40 = std::__shared_weak_count::lock(v39);
      if (v40)
      {
        v41 = *(a2 + 24);
        std::__shared_weak_count::__release_shared[abi:nn200100](v40);
        if (v41)
        {
          v42 = *(a2 + 32);
          if (v42)
          {
            v42 = std::__shared_weak_count::lock(v42);
            v43 = v42;
            if (v42)
            {
              v42 = *(a2 + 24);
            }
          }

          else
          {
            v43 = 0;
          }

          _UIRTreeContainerNode<unsigned long>::invalidateBoundingFrameAndNotifyParents(v42);
          if (v43)
          {
            v47 = v43;
            goto LABEL_60;
          }
        }
      }
    }
  }

LABEL_61:
  result = *a4;
  *a1 = *a4;
  *a4 = 0;
  a4[1] = 0;
  return result;
}