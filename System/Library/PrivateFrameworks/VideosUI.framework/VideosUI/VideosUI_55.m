void *sub_1E3A8F374()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A8F3B0()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImageView;
  v5 = v3;
  v6 = OUTLINED_FUNCTION_10_4();
  if (OUTLINED_FUNCTION_58_17(v6, sel_vui_addSubview_oldView_, *&v1[v4]))
  {
    v7 = *&v1[v4];
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_19_36([v8 setVuiUserInteractionEnabled_], sel_vui_bringSubviewToFront_);
      v9 = sub_1E3A8FB40();
      v10 = [v9 superview];

      if (!v10)
      {
        v11 = *&v1[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___logoGradientView];
        [v1 vui:v11 insertSubview:v8 belowSubview:0 oldView:?];

        sub_1E329CC84(v11);
        goto LABEL_8;
      }
    }

    else
    {
      v8 = sub_1E3A8FB40();
      [v8 vui_removeFromSuperView];
    }

LABEL_8:
    [v1 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3A8F4D8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A8F554()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A8F588(char a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3A8F614()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_channelLogoView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A8F650()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_channelLogoView;
  v5 = v3;
  v6 = OUTLINED_FUNCTION_10_4();
  if (OUTLINED_FUNCTION_58_17(v6, sel_vui_addSubview_oldView_, *&v1[v4]))
  {
    v7 = *&v1[v4];
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_19_36([v8 setVuiUserInteractionEnabled_], sel_vui_bringSubviewToFront_);
      v9 = sub_1E3A8FB40();
      if (v9)
      {
        v10 = v9;
        v11 = [v9 superview];
        if (v11)
        {
        }

        else
        {
          v10 = v10;
          [v1 vui:v10 insertSubview:v8 belowSubview:0 oldView:?];
        }

        v8 = v10;
      }
    }

    else
    {
      v8 = sub_1E3A8FB40();
      [v8 removeFromSuperview];
    }

    [v1 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3A8F770()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A8F7EC()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_alphaImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A8F828()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_alphaImageView;
  v5 = v3;
  v6 = OUTLINED_FUNCTION_10_4();
  if (OUTLINED_FUNCTION_58_17(v6, sel_vui_addSubview_oldView_, *&v1[v4]))
  {
    v7 = *&v1[v4];
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_19_36([v8 setVuiUserInteractionEnabled_], sel_vui_sendSubviewToBack_);
      [v1 vui_setNeedsLayout];
    }
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3A8F8D0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A8F94C()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A8F980(char a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3A8F9C0()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A8F9F4(char a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3A8FA80()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A8FAB4(char a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E3A8FB40()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___logoGradientView;
  v2 = *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___logoGradientView];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v0;
    if (TVAppFeature.isEnabled.getter(10))
    {
      type metadata accessor for GradientView();
      v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    else
    {
      v5 = objc_opt_self();
      v3 = [v5 makeImageWithImage:*sub_1E3C3E4E0() existingView:0];
      [v3 setVuiContentMode_];
      if ([v4 vuiIsRTL])
      {
        v6 = [v3 image];
        if (v6)
        {
          v7 = v6;
          v8 = sub_1E3C77668();
        }

        else
        {
          v8 = 0;
        }

        [v3 setImage_];
      }

      else
      {
      }
    }

    v9 = *&v4[v1];
    *&v4[v1] = v3;
    v10 = v3;
    sub_1E329CC84(v9);
  }

  sub_1E34AF5F4(v2);
  return v3;
}

id sub_1E3A8FCE0()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView;
  v2 = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView);
  v3 = v2;
  if (v2 == 1)
  {
    _s12GradientViewCMa();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1E329CC84(v4);
  }

  sub_1E34AF5F4(v2);
  return v3;
}

id sub_1E3A8FD60()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___playbackGradientView;
  v2 = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___playbackGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___playbackGradientView);
  }

  else
  {
    _s12GradientViewCMa();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3A8FDE8(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1E3A8FE54()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration) = 0x3FE8000000000000;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_overlayLayout) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_gradientColor) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_legacyScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_originalScoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageForMaterial) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardViewBackgroundImage) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_pendingOperation) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationCancelledObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationFinishedObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_verticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition) = 15;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_channelLogoView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_alphaImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor) = 0;
  OUTLINED_FUNCTION_34_36(OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_48_24(v1);
  v15 = v0;
  v16 = _s19FlowcaseOverlayViewCMa();
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setVuiBackgroundColor_];

  [v7 setVuiClipsToBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4297BE0;
  *(v9 + 32) = sub_1E3280A90(0, &qword_1EE23AF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v10 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14[4] = sub_1E3A901C8;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1E3790FBC;
  v14[3] = &block_descriptor_51;
  v12 = _Block_copy(v14);

  [v7 vui:v10 registerForTraitChanges:v12 withHandler:?];
  _Block_release(v12);

  return v7;
}

void sub_1E3A901C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3A90214();
  }
}

void sub_1E3A90214()
{
  v1 = [v0 vuiUserInterfaceStyle];
  v2 = sub_1E3A8FCA8();
  v3 = [objc_opt_self() effectWithStyle_];
  [v2 setEffect_];

  v4 = sub_1E3A8FDD4();
  sub_1E3280A90(0, &qword_1EE23AE20);
  if (v1 == 2)
  {
    OUTLINED_FUNCTION_2_7();
    v5 = sub_1E4206F24();
    v6 = [v5 colorWithAlphaComponent_];
  }

  else
  {
    v5 = sub_1E4206F24();
    v6 = [v5 colorWithAlphaComponent_];
  }

  v7 = v6;

  v8 = [v7 CGColor];
  [v4 setBackgroundColor_];
}

void sub_1E3A90398()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration) = 0x3FE8000000000000;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_overlayLayout) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_gradientColor) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_legacyScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_originalScoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageForMaterial) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardViewBackgroundImage) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_pendingOperation) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationCancelledObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationFinishedObserver) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_verticalStackView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_logoImagePosition) = 15;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_channelLogoView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_alphaImageView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useDarkJoeColor) = 0;
  OUTLINED_FUNCTION_34_36(OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_useBoundingBoxMargin);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_48_24(v1);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A90578()
{
  v1 = *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView];
  if (v1)
  {
    v2 = v1;
LABEL_5:
    v5 = v2;
    [v0 bounds];
    [v5 frame];
    CGRectGetMinY(v6);

    return;
  }

  OUTLINED_FUNCTION_21();
  v2 = (*(v3 + 496))();
  if (v2)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_59();
  v2 = (*(v4 + 808))();
  if (v2)
  {
    goto LABEL_5;
  }
}

double sub_1E3A90664(int a1, double a2, double a3)
{
  v4 = v3;
  v334.receiver = v4;
  v334.super_class = _s19FlowcaseOverlayViewCMa();
  LODWORD(v322) = a1;
  v330 = a3;
  v8 = objc_msgSendSuper2(&v334, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (v10 <= 0.0)
  {
    v9 = a2;
  }

  v325 = v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*MEMORY[0x1E69E7D40] & *v4) + 880;
  v13 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x370);
  v14 = (v13)(v8);
  if (v14)
  {

    v15 = 0.0;
    v16 = 0.0;
    v329 = 0.0;
    if (v13())
    {
      OUTLINED_FUNCTION_14_84();
      [v4 sizeThatFits_];
      v16 = v20;
      v329 = v21;
    }

    OUTLINED_FUNCTION_33_2();
    v23 = v22;
    OUTLINED_FUNCTION_36_3();
    v25 = *((*v11 & v24) + 0x178);
    if (v25())
    {
      OUTLINED_FUNCTION_30();
      (*(v26 + 1824))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v27 + 152))(v335);

      if (v336)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = *&v335[3];
      }
    }

    v28 = v23 - v16 - v15;
    if (v25())
    {
      OUTLINED_FUNCTION_30();
      (*(v29 + 1824))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v30 + 152))(v337);

      OUTLINED_FUNCTION_32_1();
      if (v33)
      {
        v34 = v31;
      }

      else
      {
        v34 = v32;
      }
    }

    else
    {
      v34 = 0.0;
    }
  }

  else
  {
    v329 = 0.0;
    v16 = 0.0;
    v34 = 0.0;
    v28 = 0.0;
  }

  OUTLINED_FUNCTION_10_53();
  v35 += 104;
  v36 = *v35;
  v37 = v35;
  v38 = (*v35)();
  if (v38)
  {

    if (v36())
    {
      OUTLINED_FUNCTION_14_84();
      [v4 vui:OUTLINED_FUNCTION_70_14(v39 sizeThatFits:{v40, v41)}];
      v16 = v42;
      v329 = v43;
    }

    else
    {
      v16 = 0.0;
      v329 = 0.0;
    }

    if (TVAppFeature.isEnabled.getter(10) & 1) != 0 && (OUTLINED_FUNCTION_10_53(), (*(v44 + 856))(), (sub_1E3A92050()))
    {
      OUTLINED_FUNCTION_10_53();
      if ((*(v45 + 376))())
      {
        OUTLINED_FUNCTION_30();
        (*(v46 + 1896))();
        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_12_6();
        (*(v47 + 152))(&v338);

        OUTLINED_FUNCTION_32_1();
        if (v33)
        {
          v28 = v48;
        }

        else
        {
          v28 = v49;
        }
      }

      else
      {
        v28 = 0.0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_33_2();
      v51 = v50;
      OUTLINED_FUNCTION_36_3();
      if ((*((*v11 & v52) + 0x178))())
      {
        OUTLINED_FUNCTION_30();
        (*(v53 + 1896))();
        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_12_6();
        (*(v54 + 152))(&v338);

        OUTLINED_FUNCTION_32_1();
        if (!v33)
        {
          v55 = v56;
        }
      }

      else
      {
        v55 = 0.0;
      }

      v28 = v51 - v16 - v55;
    }

    OUTLINED_FUNCTION_10_53();
    if ((*(v57 + 376))())
    {
      OUTLINED_FUNCTION_30();
      (*(v58 + 1896))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v59 + 152))(v339);

      OUTLINED_FUNCTION_32_1();
      if (v33)
      {
        v34 = v60;
      }

      else
      {
        v34 = v61;
      }
    }

    else
    {
      v34 = 0.0;
    }
  }

  v62 = v36();
  v63 = &qword_1E42B6000;
  v315 = v34;
  v316 = v28;
  if (!v62)
  {
    v62 = v13();
    if (!v62)
    {
      v317 = 0.0;
      goto LABEL_56;
    }
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_10_53();
    (*(v64 + 856))();
    v317 = 0.0;
    v299 = 117.0;
    v300 = 153.0;
    if ((sub_1E3A92050() & 1) == 0)
    {
      OUTLINED_FUNCTION_33_2();
      v317 = CGRectGetWidth(v348) + -153.0;
    }

    goto LABEL_57;
  }

  v65 = sub_1E3A8FB40();
  v317 = 0.0;
  if (!v65)
  {
    goto LABEL_56;
  }

  v66 = v65;
  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (!v67)
  {

    goto LABEL_56;
  }

  v63 = [v67 image];

  if (!v63)
  {
LABEL_56:
    v299 = 0.0;
    v300 = 0.0;
    goto LABEL_57;
  }

  [v63 size];
  v69 = v68;
  v71 = v70;

  if (v69 != 0.0 || (v299 = 0.0, v300 = 0.0, v71 != 0.0))
  {
    OUTLINED_FUNCTION_33_2();
    v317 = CGRectGetWidth(v349) - v69;
    if (TVAppFeature.isEnabled.getter(10))
    {
      OUTLINED_FUNCTION_10_53();
      (*(v72 + 856))();
      if (sub_1E3A92050())
      {
        v73 = v36();
        if (v73)
        {

          OUTLINED_FUNCTION_10_53();
          if ((*(v74 + 376))())
          {
            OUTLINED_FUNCTION_30();
            (*(v75 + 1896))();
            OUTLINED_FUNCTION_30_6();
            OUTLINED_FUNCTION_12_6();
            (*(v76 + 152))(&v340);

            OUTLINED_FUNCTION_32_1();
            if (!v33)
            {
              v77 = v78;
            }
          }

          else
          {
            v77 = 0.0;
          }

          v317 = v77;
        }
      }
    }

    OUTLINED_FUNCTION_33_2();
    Height = CGRectGetHeight(v358);
    if (Height >= v71)
    {
      Height = v71;
    }

    v299 = Height;
    v300 = v69;
  }

LABEL_57:
  OUTLINED_FUNCTION_10_53();
  *&v303 = v79 + 904;
  v304 = *(v79 + 904);
  v80 = v304();
  v305 = *&v37;
  if (v80)
  {

    OUTLINED_FUNCTION_10_53();
    v83 += 47;
    v84 = *v83;
    v85 = (*v83)();
    if (v85)
    {
      OUTLINED_FUNCTION_30();
      (*(v86 + 1872))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_33_2();
      Width = CGRectGetWidth(v350);
      (*(*v63 + 256))(COERCE_CGFLOAT(*&Width), 0);
    }

    if ((v84)(v85))
    {
      OUTLINED_FUNCTION_30();
      (*(v88 + 1872))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_33_2();
      v89 = CGRectGetHeight(v351);
      (*(*v63 + 360))(COERCE_CGFLOAT(*&v89), 0);
    }
  }

  v306 = v36;
  v307 = v13;
  v308 = *&v12;
  sub_1E3A93DDC(v81, v82, a2, v330);
  v301 = v91;
  v302 = v90;
  v93 = v92;
  v95 = v94;
  OUTLINED_FUNCTION_36_3();
  v97 = *((*v11 & v96) + 0x328);
  v98 = v97();
  v99 = MEMORY[0x1E69DDCE0];
  if (!v98)
  {
    v104 = 0.0;
    v332 = 0.0;
    v333 = 0.0;
    v328 = 0.0;
    goto LABEL_101;
  }

  v100 = v97();
  if (v100)
  {
    v101 = v100;
    sub_1E3DA4F70();

    OUTLINED_FUNCTION_12_6();
    LOBYTE(v101) = (*(v102 + 1560))();

    v103 = sub_1E3A24FDC(v101);
  }

  else
  {
    v103 = 0;
  }

  v105 = v97();
  if (!v105)
  {
    v107 = 0;
    v119 = 0.0;
    v113 = 0.0;
LABEL_77:
    v333 = v99[1];
    v123 = v99[2];
    goto LABEL_78;
  }

  v106 = v105;
  v107 = sub_1E3DA4F70();

  OUTLINED_FUNCTION_12_6();
  v109 = *(v108 + 248);

  v111 = COERCE_DOUBLE(v109(v110));
  LOBYTE(v109) = v112;

  if (v109)
  {
    v113 = 0.0;
  }

  else
  {
    v113 = v111;
  }

  v114 = *(*v107 + 352);

  v116 = COERCE_DOUBLE(v114(v115));
  v118 = v117;

  if (v118)
  {
    v119 = 0.0;
  }

  else
  {
    v119 = v116;
  }

  OUTLINED_FUNCTION_12_6();
  v121 = *(v120 + 152);

  v121(v341, v122);
  v333 = *&v341[1];
  v123 = *&v341[2];

  if (v342)
  {
    goto LABEL_77;
  }

LABEL_78:
  if (TVAppFeature.isEnabled.getter(17))
  {
    v132 = OUTLINED_FUNCTION_75_7(v124, v125, v126, v127, v128, v129, v130, v131, v296, v297, v298, v299, v300, v301, v302, v303, *&v304, v305, *&v36, *&v307, v308, v309, v311, v313, v315, v316, v317, v318, v320, v322, v323, v325, v326, v16, v329, v330, v331, v333);
    v133 = v325 - v132;
    if (v133 < v113)
    {
      v113 = v133;
    }
  }

  else if (v103)
  {
    OUTLINED_FUNCTION_33_2();
    if (v135 != 0.0 || v134 != 0.0)
    {
      OUTLINED_FUNCTION_33_2();
      v113 = v143 - OUTLINED_FUNCTION_75_7(v136, v137, v143, v138, v139, v140, v141, v142, v296, v297, v298, v299, v300, v301, v302, v303, *&v304, v305, *&v36, *&v307, v308, v309, v311, v313, v315, v316, v317, v318, v320, v322, v323, v325, v326, v16, v329, v330, v331, v333);
    }
  }

  v144 = v97();
  v145 = v144;
  if (v144)
  {
    [v144 vui:v113 sizeThatFits:v119];
    v104 = v146;
    v332 = v147;
  }

  else
  {
    v104 = 0.0;
    v332 = 0.0;
  }

  v148 = TVAppFeature.isEnabled.getter(10);
  if (v148)
  {
    if (v107)
    {
      OUTLINED_FUNCTION_12_6();
      v150 = *(v149 + 504);

      v152 = v150(v151);

      if (v152 != 18)
      {
        v148 = sub_1E412561C(v152);
        if (v148)
        {
          OUTLINED_FUNCTION_33_2();
          v333 = (CGRectGetWidth(v352) - v104) * 0.5;
        }
      }
    }
  }

  v153 = (v97)(v148);
  if (v153)
  {
    v154 = v153;
    v155 = sub_1E3DA6ACC(v123);

    if (v107)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v155 = 0.0;
    if (v107)
    {
LABEL_94:
      OUTLINED_FUNCTION_12_6();
      v157 = *(v156 + 2184);

      v159 = v157(v158);

      if (v159)
      {
        v155 = v123;
      }
    }
  }

  v160 = OUTLINED_FUNCTION_33_2();
  v162 = v161 - v155;
  if (v145)
  {
    v162 = v161 - v155 - v332;
  }

  v328 = v162;
  v163 = (v97)(v160);
  if (v163)
  {
    v164 = v163;
    sub_1E3DA4F70();

    OUTLINED_FUNCTION_26();
    v166 = (*(v165 + 2112))();

    [v166 setMaxWidth_];
  }

LABEL_101:
  if (TVAppFeature.isEnabled.getter(10) & 1) != 0 && (sub_1E3A95794())
  {
    v167 = OUTLINED_FUNCTION_33_2();
    MinY = v168;
    v170 = (v97)(v167);
    v297 = v95;
    if (v170)
    {

      v180 = v332;
      v179 = v333;
      v181 = v328;
      v182 = v104;
    }

    else
    {
      v179 = OUTLINED_FUNCTION_47_25(v171, v172, v173, v174, v175, v176, v177, v178, v296, v95, v298, v299, v300, v301, v302);
      if (!v196)
      {
LABEL_119:
        v197 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView);
        if (v197)
        {
          v198 = v197;
          OUTLINED_FUNCTION_14_84();
          [v4 vui:OUTLINED_FUNCTION_70_14(v199 sizeThatFits:{v200, v201)}];
          v203 = v202;
          v321 = v204;
        }

        else
        {
          v321 = 0.0;
          v203 = 0.0;
        }

        OUTLINED_FUNCTION_10_53();
        if (!(*(v205 + 376))() || (, , OUTLINED_FUNCTION_12_6(), (*(v206 + 152))(v343), v208 = *&v343[1], v207 = *&v343[2], , v209 = v208, (v344 & 1) != 0))
        {
          v209 = v99[1];
          v207 = v99[2];
        }

        v319 = MinY - (v321 + v207);
        v210 = v203 + v209;
        v314 = v209;
        v211 = v104 - v209;
        if (v104 >= v210)
        {
          v212 = v203;
        }

        else
        {
          v212 = v211;
        }

        v324 = v212;
        v95 = v297;
        goto LABEL_129;
      }
    }

    MinY = CGRectGetMinY(*&v179);
    goto LABEL_119;
  }

  if (sub_1E39DFFE0())
  {
    v183 = (*((*v11 & *v4) + 0x238))();
    if (!v183)
    {
LABEL_107:
      v314 = 0.0;
      v319 = 0.0;
      v321 = 0.0;
      v324 = 0.0;
      goto LABEL_129;
    }
  }

  else
  {
    v183 = (*((*v11 & *v4) + 0x208))();
    if (!v183)
    {
      goto LABEL_107;
    }
  }

  v184 = v183;
  v185 = OUTLINED_FUNCTION_1_36();
  [v186 v187];
  v324 = v188;
  v321 = v189;
  OUTLINED_FUNCTION_33_2();
  v191 = v190;
  OUTLINED_FUNCTION_36_3();
  if (!(*((*v11 & v192) + 0x178))() || (OUTLINED_FUNCTION_30(), (*(v193 + 1944))(), , OUTLINED_FUNCTION_26(), (*(v194 + 152))(v343), v319 = *v343, v195 = *&v343[3], , (v344 & 1) != 0))
  {
    v319 = *v99;
    v195 = v99[3];
  }

  v314 = v191 - v195 - v324;
LABEL_129:
  v327 = v104;
  OUTLINED_FUNCTION_10_53();
  v213 += 62;
  v214 = *v213;
  v215 = (*v213)();
  if (v215)
  {

    OUTLINED_FUNCTION_10_53();
    v216 += 47;
    v217 = *v216;
    v218 = (*v216)();
    if (!v218 || (OUTLINED_FUNCTION_26_0(), v221 = v220, (*(v219 + 1920))(), OUTLINED_FUNCTION_31_4(), v218 = , !v221) || (OUTLINED_FUNCTION_8(), (*(v222 + 152))(v345), v223 = *&v345[1], v218 = , (v346 & 1) != 0))
    {
      v223 = v99[1];
    }

    v224 = (v214)(v218);
    if (v224)
    {
      v225 = v224;
      [v4 bounds];
      [v225 vui:OUTLINED_FUNCTION_70_14(v226 sizeThatFits:{v227, v228)}];
      v310 = v230;
      v312 = v229;
    }

    else
    {
      v310 = 0.0;
      v312 = 0.0;
    }

    [v4 bounds];
    v232 = v231;
    if ((sub_1E3A95794() & 1) != 0 && v217())
    {

      OUTLINED_FUNCTION_12_6();
      (*(v233 + 152))(v347);

      v11 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v11 = MEMORY[0x1E69E7D40];
    }

    v234 = v223 + v232;
    v235 = TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_33_2();
    if (v235)
    {
      v236 = sub_1E3A95794();
      v237 = v314;
      v238 = v319;
      v239 = v321;
      v240 = v324;
      if ((v236 & 1) == 0)
      {
        v241 = (v97)(v314, v319, v324, v321);
        if (v241)
        {

          v239 = v332;
          v237 = v333;
          v240 = v327;
          v238 = v328;
        }

        else
        {
          v237 = OUTLINED_FUNCTION_47_25(v242, v243, v244, v245, v246, v247, v248, v249, v296, v297, v298, v299, v300, v301, v302);
          if (!v250)
          {
LABEL_150:
            v353.origin.y = 0.0;
            v353.origin.x = v234;
            v353.size.height = v310;
            v353.size.width = v312;
            CGRectGetHeight(v353);
            goto LABEL_151;
          }
        }
      }

      CGRectGetMinY(*&v237);
      goto LABEL_150;
    }
  }

LABEL_151:
  if (LOBYTE(v322))
  {
    goto LABEL_180;
  }

  if (v304())
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_46_25();
  }

  if (v307())
  {
    OUTLINED_FUNCTION_14_84();
    [v4 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    OUTLINED_FUNCTION_46_25();
  }

  if (v306())
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_23_42();
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_46_25();
  }

  if (sub_1E3A8FB40())
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_23_42();
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_46_25();
  }

  if (v214())
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_23_42();
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_46_25();
  }

  v259 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView);
  if (v259)
  {
    v260 = OUTLINED_FUNCTION_47_25(v251, v252, v253, v254, v255, v256, v257, v258, v296, v297, v93, v299, v300, v301, v302);
    v259 = [v261 v262];
  }

  v263 = v4;
  if ((v97)(v259))
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_51_21();
    OUTLINED_FUNCTION_74_10();
    OUTLINED_FUNCTION_46_25();
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    v264 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView);
    if (v264)
    {
      v265 = v264;
      goto LABEL_173;
    }
  }

  else
  {
    if (sub_1E39DFFE0())
    {
      v263 = v4;
      if (!(*((*v11 & *v4) + 0x238))())
      {
        goto LABEL_174;
      }

      goto LABEL_173;
    }

    v263 = v4;
    if ((*((*v11 & *v4) + 0x208))())
    {
LABEL_173:
      OUTLINED_FUNCTION_14_84();
      OUTLINED_FUNCTION_51_21();
      OUTLINED_FUNCTION_74_10();
      OUTLINED_FUNCTION_46_25();
    }
  }

LABEL_174:
  sub_1E3A8FC94();
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_46_25();

  sub_1E3A8FCA8();
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_46_25();

  v266 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v266)
  {
    v267 = v266;
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_46_25();
  }

  if ((TVAppFeature.isEnabled.getter(10) & 1) != 0 && sub_1E3A8FCE0())
  {
    OUTLINED_FUNCTION_14_84();
    OUTLINED_FUNCTION_46_25();
  }

  sub_1E3A8FD60();
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_46_25();

  sub_1E3A8FDD4();
  OUTLINED_FUNCTION_14_84();
  sub_1E3D54B34(v268, v269, v270, v271);

LABEL_180:
  v272 = v97();
  if (v272)
  {
    v273 = v272;
    [v4 vui:v272 bringSubviewToFront:?];

    v274 = v327;
  }

  else
  {
    v274 = v327;
    if (*(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView))
    {
      [v4 vui_bringSubviewToFront_];
    }
  }

  OUTLINED_FUNCTION_33_2();
  sub_1E3A92100(v275, v93, v95, v333, v328, v274, v332);
  if (TVAppFeature.isEnabled.getter(10) & 1) != 0 && (TVAppFeature.isEnabled.getter(10))
  {
    v276 = sub_1E3A8FB40();
    if (v276)
    {
      v277 = v276;
      type metadata accessor for GradientView();
      if (!swift_dynamicCastClass())
      {
        v278 = v277;
LABEL_201:

        return v325;
      }

      v278 = sub_1E39600A8();

      if (v278)
      {
        [v278 setType_];
        OUTLINED_FUNCTION_36_3();
        v280 = (*((*v11 & v279) + 0x190))();
        if (!v280)
        {
          v280 = [objc_opt_self() blackColor];
        }

        v281 = v280;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E429DCC0;
        v283 = [v281 colorWithAlphaComponent_];
        v284 = [v283 CGColor];

        *(inited + 32) = v284;
        v285 = [v281 colorWithAlphaComponent_];
        v286 = [v285 CGColor];

        *(inited + 40) = v286;
        (*((*v11 & *v4) + 0x358))();
        v287 = sub_1E3A92050();
        v354.origin.y = 0.0;
        v354.origin.x = v317;
        v354.size.width = v300;
        v354.size.height = v299;
        v288 = 28.0 / CGRectGetWidth(v354);
        if (v287)
        {
          v289 = v288;
        }

        else
        {
          v289 = 1.0 - v288;
        }

        v355.origin.x = OUTLINED_FUNCTION_27_35();
        [v278 setStartPoint_];
        v356.origin.x = OUTLINED_FUNCTION_27_35();
        v290 = 153.0 / CGRectGetWidth(v356);
        if (v287)
        {
          v291 = v290;
        }

        else
        {
          v291 = 1.0 - v290;
        }

        v357.origin.x = OUTLINED_FUNCTION_27_35();
        [v278 setEndPoint_];
        sub_1E38E2988(inited);
        swift_setDeallocating();
        sub_1E377D458();
        v292 = OUTLINED_FUNCTION_27_0();
        sub_1E38E2BE0(v292, v293);
        if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
        {
          sub_1E38E2B5C(MEMORY[0x1E69E7CC0], v278);
        }

        goto LABEL_201;
      }
    }
  }

  return v325;
}

uint64_t sub_1E3A92050()
{
  sub_1E3A96E4C();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E3A92100(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v347 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView;
  v12 = *(v7 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v12)
  {
    v357 = [v12 layer];
  }

  else
  {
    v357 = 0;
  }

  v13 = objc_opt_self();
  if ([v13 isVision])
  {
    v14 = 0.9;
  }

  else
  {
    v14 = 0.8;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42A1E20;
  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  v19 = [v18 CGColor];

  *(inited + 32) = v19;
  v20 = [v17 clearColor];
  v21 = [v20 CGColor];

  *(inited + 40) = v21;
  sub_1E3280A90(0, &qword_1EE23AE20);
  OUTLINED_FUNCTION_2_7();
  v22 = sub_1E4206F24();
  v23 = [v22 colorWithAlphaComponent_];

  v24 = [v23 CGColor];
  *(inited + 48) = v24;
  OUTLINED_FUNCTION_0_128();
  v25 = sub_1E4206F24();
  v26 = [v25 CGColor];

  *(inited + 56) = v26;
  if (!*(v358 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView))
  {
    v29 = sub_1E3A8FD60();
    v344 = [v29 &selRef_makeAdditionalPlayerTabsRequest];

    v359.origin.x = OUTLINED_FUNCTION_68_12();
    if (CGRectGetWidth(v359) == 0.0 || (v360.origin.x = OUTLINED_FUNCTION_68_12(), CGRectGetHeight(v360) == 0.0))
    {

      v30 = OUTLINED_FUNCTION_52_21();
      [v31 v32];
      if (*&v347[v358])
      {
        v33 = OUTLINED_FUNCTION_52_21();
        [v34 v35];
      }

      v36 = sub_1E3A8FCE0();
      v37 = v357;
      if (v36)
      {
        v38 = v36;
        v39 = OUTLINED_FUNCTION_52_21();
        [v40 v41];
      }

LABEL_16:
      v42 = v344;
LABEL_50:

      goto LABEL_51;
    }

    sub_1E3A967C0(v358);
    if ((*((*MEMORY[0x1E69E7D40] & *v358) + 0x178))())
    {
      OUTLINED_FUNCTION_26_0();
      v133 = (*(v132 + 1560))();
    }

    else
    {
      v133 = sub_1E3A2532C();
    }

    if ([v13 isVision] & 1) != 0 || (objc_msgSend(v13, sel_isTV))
    {
      v140 = 0;
    }

    else
    {
      v140 = sub_1E3A2511C(v133) ^ 1;
    }

    v141 = v358;
    if (TVAppFeature.isEnabled.getter(17) & 1) != 0 && (v141 = v358, ((*((*MEMORY[0x1E69E7D40] & *v358) + 0x1A8))() & 1) == 0) || ((TVAppFeature.isEnabled.getter(10) | v140))
    {

      v142 = *(v141 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
      if (v142)
      {
        v350 = [v142 &selRef_makeAdditionalPlayerTabsRequest];
      }

      else
      {
        v350 = 0;
      }

      v175 = a1;
      v176 = sub_1E3A8FD60();
      v177 = [v176 &selRef_makeAdditionalPlayerTabsRequest];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v178 = swift_initStackObject();
      OUTLINED_FUNCTION_35_31(v178, v179, v180, v181, v182, v183, v184, v185, v341, v344, v350, *&a1, v186);
      v187 = objc_opt_self();
      v188 = [v187 clearColor];
      v189 = [v188 CGColor];

      v178[2].n128_u64[0] = v189;
      v190 = v177;
      v191 = [v187 clearColor];
      v192 = [v191 CGColor];

      v178[2].n128_u64[1] = v192;
      OUTLINED_FUNCTION_0_128();
      v193 = sub_1E4206F24();
      v194 = [v193 colorWithAlphaComponent_];

      v195 = [v194 CGColor];
      v178[3].n128_u64[0] = v195;
      OUTLINED_FUNCTION_0_128();
      v196 = sub_1E4206F24();
      v197 = [v196 CGColor];

      v178[3].n128_u64[1] = v197;
      v198 = sub_1E38E2988(v178);
      sub_1E38E2BE0(v198, v177);
      v199 = OUTLINED_FUNCTION_42_35();
      OUTLINED_FUNCTION_35_31(v199, v200, v201, v202, v203, v204, v205, v206, v342, v346, v352, v355, v207);
      v199[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      OUTLINED_FUNCTION_17_63(-72.0);
      v208 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v199[2].n128_u64[1] = OUTLINED_FUNCTION_77_9(v208, v209);
      v210 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v199[3].n128_u64[0] = OUTLINED_FUNCTION_77_9(v210, v211);
      v212 = (a5 + a7) / v175;
      v213 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v214 = v212;
      v199[3].n128_u64[1] = [v213 initWithFloat_];
      sub_1E38E2B5C(v199, v177);
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        v239 = TVAppFeature.isEnabled.getter(17);
        v240 = (*((*MEMORY[0x1E69E7D40] & *v141) + 0x190))();
        v218 = v240;
        if (v239)
        {
          v241 = v353;
          if (v240)
          {
            swift_setDeallocating();
            sub_1E377D458();
            v242 = OUTLINED_FUNCTION_24_38();
            v243 = [v242 CGColor];

            v244 = OUTLINED_FUNCTION_24_38();
            v245 = OUTLINED_FUNCTION_45_28(v244);

            v246 = TVAppFeature.isEnabled.getter(10);
            v247 = 0.53;
            if ((v246 & 1) == 0)
            {
              v247 = 0.8;
            }

            v248 = OUTLINED_FUNCTION_45_28([v218 colorWithAlphaComponent_]);

            v249 = OUTLINED_FUNCTION_59_11();
            v250 = OUTLINED_FUNCTION_45_28(v249);

            if (v353)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
              v251 = OUTLINED_FUNCTION_63_14();
              *(v251 + 16) = xmmword_1E4298AD0;
              type metadata accessor for CGColor();
              *(v251 + 32) = v243;
              *(v251 + 56) = v252;
              *(v251 + 64) = v245;
              *(v251 + 88) = v252;
              *(v251 + 96) = v248;
              *(v251 + 152) = v252;
              *(v251 + 120) = v252;
              *(v251 + 128) = v250;
              v253 = v353;
              sub_1E38E2BE0(v251, v253);
            }

            else
            {
            }
          }

          else if (v353)
          {
            v294 = v353;
            v295 = sub_1E38E2988(v178);
            swift_setDeallocating();
            sub_1E377D458();
            sub_1E38E2BE0(v295, v294);
          }

          else
          {
            swift_setDeallocating();
            sub_1E377D458();
          }

          v318 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
          OUTLINED_FUNCTION_17_63(-20.0);
          v319 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v320 = a5 / v175;
          v321 = [v319 initWithFloat_];
          OUTLINED_FUNCTION_17_63(30.0);
          v322 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v323 = a5 / v175;
          v324 = [v322 initWithFloat_];
          v325 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v326 = v212;
          v327 = [v325 initWithFloat_];
          if (v353)
          {
            v328 = OUTLINED_FUNCTION_42_35();
            OUTLINED_FUNCTION_35_31(v328, v329, v330, v331, v332, v333, v334, v335, v343, v344, v353, v356, v336);
            v337[4] = v318;
            v337[5] = v321;
            v337[6] = v324;
            v337[7] = v327;
            sub_1E38E2B5C(v337, v241);

            v190 = v241;
          }

          else
          {
          }

          goto LABEL_112;
        }

        if (v240)
        {
          swift_setDeallocating();
          sub_1E377D458();
          if (!v353)
          {
            goto LABEL_86;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
          v276 = OUTLINED_FUNCTION_63_14();
          *(v276 + 16) = xmmword_1E4298AD0;
          v277 = v353;
          v278 = OUTLINED_FUNCTION_24_38();
          v279 = OUTLINED_FUNCTION_60_13(v278);

          type metadata accessor for CGColor();
          v281 = OUTLINED_FUNCTION_22_43(v280);
          v282 = OUTLINED_FUNCTION_45_28(v281);

          OUTLINED_FUNCTION_49_24();
          v284 = OUTLINED_FUNCTION_45_28([v218 v283]);

          *(v276 + 120) = v177;
          *(v276 + 96) = v284;
          v285 = [v218 &selRef_setHapticsEnabled_];
          *(v276 + 152) = v177;
          *(v276 + 128) = v285;
          v286 = OUTLINED_FUNCTION_16_0();
          sub_1E38E2BE0(v286, v287);
        }

        else
        {
          if (!v353)
          {
            swift_setDeallocating();
            sub_1E377D458();
            goto LABEL_112;
          }

          v218 = v353;
          v296 = sub_1E38E2988(v178);
          swift_setDeallocating();
          sub_1E377D458();
          sub_1E38E2BE0(v296, v218);
          v277 = v218;
        }

        v297 = OUTLINED_FUNCTION_42_35();
        OUTLINED_FUNCTION_35_31(v297, v298, v299, v300, v301, v302, v303, v304, v343, v344, v353, v356, v305);
        v306 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v307 = v277;
        v297[2].n128_u64[0] = [v306 initWithDouble_];
        OUTLINED_FUNCTION_17_63(-20.0);
        v308 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v309 = a5 / v175;
        v297[2].n128_u64[1] = [v308 initWithFloat_];
        OUTLINED_FUNCTION_17_63(30.0);
        v310 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v311 = a5 / v175;
        v297[3].n128_u64[0] = [v310 initWithFloat_];
        v312 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v313 = v212;
        v297[3].n128_u64[1] = [v312 initWithFloat_];
        v314 = OUTLINED_FUNCTION_16_0();
        sub_1E38E2B5C(v314, v315);

        goto LABEL_112;
      }

      swift_setDeallocating();
      v215 = sub_1E377D458();
      v216 = MEMORY[0x1E69E7D40];
      v217 = (*((*MEMORY[0x1E69E7D40] & *v141) + 0x190))(v215);
      if (!v217)
      {
        v217 = [v187 blackColor];
      }

      v218 = v217;
      OUTLINED_FUNCTION_0_59();
      if ((*(v219 + 424))())
      {
        if (v353)
        {
          [v353 setStartPoint_];
          v220 = OUTLINED_FUNCTION_67_13();
          [v353 v221];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
          v222 = swift_allocObject();
          *(v222 + 16) = xmmword_1E429A240;
          v223 = v353;
          v224 = OUTLINED_FUNCTION_24_38();
          v225 = OUTLINED_FUNCTION_60_13(v224);

          type metadata accessor for CGColor();
          v227 = OUTLINED_FUNCTION_22_43(v226);
          v228 = OUTLINED_FUNCTION_45_28(v227);

          OUTLINED_FUNCTION_49_24();
          v230 = OUTLINED_FUNCTION_45_28([v218 v229]);

          *(v222 + 120) = v177;
          *(v222 + 96) = v230;
          v231 = OUTLINED_FUNCTION_45_28([v218 colorWithAlphaComponent_]);

          *(v222 + 152) = v177;
          *(v222 + 128) = v231;
          v232 = OUTLINED_FUNCTION_59_11();
          v233 = OUTLINED_FUNCTION_45_28(v232);

          *(v222 + 184) = v177;
          *(v222 + 160) = v233;
          v234 = OUTLINED_FUNCTION_16_0();
          sub_1E38E2BE0(v234, v235);

          v236 = swift_allocObject();
          *(v236 + 16) = xmmword_1E42A76D0;
          sub_1E3280A90(0, &qword_1EE23ADD0);
          v237 = v223;
          *(v236 + 32) = sub_1E4206F44();
          *(v236 + 40) = sub_1E4206F34();
          *(v236 + 48) = sub_1E4206F34();
          *(v236 + 56) = sub_1E4206F34();
          *(v236 + 64) = sub_1E4206F44();
          v238 = v236;
LABEL_85:
          sub_1E38E2B5C(v238, v237);
        }
      }

      else if (v353)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
        v254 = OUTLINED_FUNCTION_63_14();
        *(v254 + 16) = xmmword_1E4298AD0;
        v255 = v353;
        v256 = OUTLINED_FUNCTION_24_38();
        v257 = OUTLINED_FUNCTION_60_13(v256);

        type metadata accessor for CGColor();
        v259 = OUTLINED_FUNCTION_22_43(v258);
        v260 = OUTLINED_FUNCTION_45_28(v259);

        OUTLINED_FUNCTION_49_24();
        v262 = OUTLINED_FUNCTION_45_28([v218 v261]);

        *(v254 + 120) = v177;
        *(v254 + 96) = v262;
        v263 = OUTLINED_FUNCTION_59_11();
        v264 = OUTLINED_FUNCTION_45_28(v263);

        *(v254 + 152) = v177;
        *(v254 + 128) = v264;
        v265 = OUTLINED_FUNCTION_16_0();
        sub_1E38E2BE0(v265, v266);

        v267 = OUTLINED_FUNCTION_42_35();
        OUTLINED_FUNCTION_35_31(v267, v268, v269, v270, v271, v272, v273, v274, v343, v344, v353, v356, v275);
        sub_1E3280A90(0, &qword_1EE23ADD0);
        v237 = v255;
        v267[2].n128_u64[0] = sub_1E4206F44();
        v267[2].n128_u64[1] = sub_1E4206F34();
        v267[3].n128_u64[0] = sub_1E4206F34();
        v267[3].n128_u64[1] = sub_1E4206F44();
        v238 = v267;
        goto LABEL_85;
      }

LABEL_86:

LABEL_112:
      v37 = v357;
LABEL_113:
      if (TVAppFeature.isEnabled.getter(10))
      {
        OUTLINED_FUNCTION_12_5();
        v339 = (*(v338 + 928))();
        sub_1E3A959F0((v339 & 1));
      }

      goto LABEL_16;
    }

    v143 = sub_1E38E2988(inited);
    v144 = v344;
    sub_1E38E2BE0(v143, v344);
    v145 = a5;
    v146 = swift_allocObject();
    OUTLINED_FUNCTION_35_31(v146, v147, v148, v149, v150, v151, v152, v153, v341, v344, v17, *&a1, v154);
    v146[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v155 = OUTLINED_FUNCTION_73_7();
    v146[2].n128_u64[1] = OUTLINED_FUNCTION_77_9(v155, v156);
    v157 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v146[3].n128_u64[0] = OUTLINED_FUNCTION_77_9(v157, v158);
    v159 = 1.0;
    v146[3].n128_u64[1] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_1E38E2B5C(v146, v144);
    [v144 setContents_];
    v160 = &selRef_textLayout;
    v161 = [v141 vuiIsRTL];
    if (v161)
    {
      v162 = 0.0;
    }

    else
    {
      v162 = 1.0;
    }

    if (!v161)
    {
      v159 = 0.0;
    }

    [v144 setStartPoint_];
    v163 = [v144 setEndPoint_];
    v164 = (*((*MEMORY[0x1E69E7D40] & *v141) + 0x190))(v163);
    if (v164)
    {
      v165 = v164;
      swift_setDeallocating();
      sub_1E377D458();
      v37 = v357;
      if (v357)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_1E4297BD0;
        v167 = v357;
        v168 = [v351 clearColor];
        v169 = [v168 CGColor];

        type metadata accessor for CGColor();
        v171 = v170;
        *(v166 + 56) = v170;
        *(v166 + 32) = v169;
        v172 = [v165 colorWithAlphaComponent_];
        v173 = [v172 CGColor];

        v37 = v357;
        *(v166 + 88) = v171;
        *(v166 + 64) = v173;
        v174 = [v165 CGColor];
        *(v166 + 120) = v171;
        *(v166 + 96) = v174;
        sub_1E38E2BE0(v166, v167);

LABEL_92:
        v289 = swift_allocObject();
        *(v289 + 16) = xmmword_1E42A73A0;
        v290 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v291 = v167;
        *(v289 + 32) = [v290 initWithDouble_];
        v292 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v293 = v145 / -1.5882e-23;
        *(v289 + 40) = [v292 initWithFloat_];
        *(v289 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1E38E2B5C(v289, v291);

        [v291 setContents_];
        v160 = &selRef_textLayout;
        goto LABEL_100;
      }
    }

    else
    {
      v37 = v357;
      if (v357)
      {
        v165 = v357;
        v288 = sub_1E38E2988(inited);
        swift_setDeallocating();
        sub_1E377D458();
        sub_1E38E2BE0(v288, v165);
        v167 = v165;
        goto LABEL_92;
      }

      swift_setDeallocating();
      sub_1E377D458();
    }

LABEL_100:
    if ([v358 v160[416]])
    {
      if (v37)
      {
        v316 = OUTLINED_FUNCTION_1_36();
        [v37 v317];
        [v37 setEndPoint_];
      }
    }

    else if (v37)
    {
      [v37 setStartPoint_];
      [v37 setEndPoint_];
    }

    goto LABEL_113;
  }

  swift_setDeallocating();
  sub_1E377D458();
  v27 = *(v358 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v27)
  {
    v28 = [v27 &selRef_makeAdditionalPlayerTabsRequest];
  }

  else
  {
    v28 = 0;
  }

  v43 = a2;
  v44 = a3 + a3;
  v45 = v43 - v44;
  v46 = sub_1E3A8FD60();
  v47 = [v46 &selRef_makeAdditionalPlayerTabsRequest];

  if (v28)
  {
    [v28 setContents_];
  }

  [v47 setContents_];
  v48 = v28;
  v49 = OUTLINED_FUNCTION_1_36();
  [v50 v51];
  v52 = OUTLINED_FUNCTION_67_13();
  [v48 v53];
  v348 = v48;

  v54 = OUTLINED_FUNCTION_1_36();
  [v47 v55];
  v56 = OUTLINED_FUNCTION_67_13();
  [v47 v57];
  v58 = a3;
  v59 = v43 + v58;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v60 = OUTLINED_FUNCTION_63_14();
  *(v60 + 16) = xmmword_1E4298AD0;
  v61 = objc_opt_self();
  v62 = [v61 clearColor];
  v63 = [v62 CGColor];

  type metadata accessor for CGColor();
  v65 = v64;
  *(v60 + 56) = v64;
  *(v60 + 32) = v63;
  v66 = [v61 clearColor];
  v67 = [v66 CGColor];

  *(v60 + 88) = v65;
  *(v60 + 64) = v67;
  OUTLINED_FUNCTION_0_128();
  v68 = sub_1E4206F24();
  v69 = [v68 colorWithAlphaComponent_];

  v70 = [v69 CGColor];
  *(v60 + 120) = v65;
  *(v60 + 96) = v70;
  OUTLINED_FUNCTION_0_128();
  v71 = sub_1E4206F24();
  v72 = [v71 CGColor];

  *(v60 + 152) = v65;
  *(v60 + 128) = v72;
  sub_1E38E2BE0(v60, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v73 = swift_allocObject();
  OUTLINED_FUNCTION_35_31(v73, v74, v75, v76, v77, v78, v79, v80, v340, v345, v348, *&a1, v81);
  v73[2].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v82 = OUTLINED_FUNCTION_73_7();
  *&v83 = v45;
  v73[2].n128_u64[1] = [v82 initWithFloat_];
  v84 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v85 = v59 / -1.5882e-23;
  v73[3].n128_u64[0] = [v84 initWithFloat_];
  v73[3].n128_u64[1] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1E38E2B5C(v73, v47);
  if ((TVAppFeature.isEnabled.getter(17) & 1) == 0)
  {
    v86 = v358;
    v87 = MEMORY[0x1E69E7D40];
    goto LABEL_24;
  }

  v86 = v358;
  v87 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  if (((*(v88 + 424))() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_59();
    v115 = (*(v114 + 400))();
    if (v115)
    {
      v116 = v115;
      v117 = [v61 clearColor];
      v118 = [v117 CGColor];

      v119 = [v116 colorWithAlphaComponent_];
      v120 = [v119 CGColor];

      v121 = [v116 CGColor];
      if (v28)
      {
        v122 = OUTLINED_FUNCTION_41_28();
        *(v122 + 16) = xmmword_1E4297BD0;
        *(v122 + 32) = v118;
        *(v122 + 56) = v65;
        *(v122 + 64) = v120;
        *(v122 + 120) = v65;
        *(v122 + 88) = v65;
        *(v122 + 96) = v121;
        v123 = v349;
        sub_1E38E2BE0(v122, v123);
      }

      else
      {

        v123 = v116;
      }
    }

    else
    {
      if (!v28)
      {
LABEL_41:
        v109 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v134 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v135 = v45;
        v90 = [v134 initWithFloat_];
        v136 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        if (v28)
        {
          v137 = swift_allocObject();
          *(v137 + 16) = xmmword_1E42A73A0;
          *(v137 + 32) = v109;
          *(v137 + 40) = v90;
          *(v137 + 48) = v136;
          v138 = v109;
          v109 = v90;
          v90 = v136;
          v136 = v349;
          sub_1E38E2B5C(v137, v349);
        }

        else
        {
        }

        v47 = v136;
        goto LABEL_45;
      }

      v124 = OUTLINED_FUNCTION_41_28();
      *(v124 + 16) = xmmword_1E4297BD0;
      v123 = v349;
      v125 = [v61 clearColor];
      v126 = [v125 CGColor];

      *(v124 + 56) = v65;
      *(v124 + 32) = v126;
      OUTLINED_FUNCTION_0_128();
      v127 = sub_1E4206F24();
      v128 = [v127 colorWithAlphaComponent_];

      v129 = [v128 CGColor];
      *(v124 + 88) = v65;
      *(v124 + 64) = v129;
      OUTLINED_FUNCTION_0_128();
      v130 = sub_1E4206F24();
      v131 = [v130 CGColor];

      *(v124 + 120) = v65;
      *(v124 + 96) = v131;
      sub_1E38E2BE0(v124, v123);
    }

    goto LABEL_41;
  }

LABEL_24:
  v89 = (*((*v87 & *v86) + 0x190))();
  if (v89)
  {
    v90 = v89;
    if (!v28)
    {
      v37 = v357;
LABEL_46:

      goto LABEL_47;
    }

    v91 = OUTLINED_FUNCTION_41_28();
    *(v91 + 16) = xmmword_1E4297BD0;
    v92 = v349;
    v93 = v349;
    v94 = [v61 clearColor];
    v95 = [v94 CGColor];

    *(v91 + 56) = v65;
    *(v91 + 32) = v95;
    v96 = [v90 colorWithAlphaComponent_];
    v97 = [v96 CGColor];

    *(v91 + 88) = v65;
    *(v91 + 64) = v97;
    v98 = [v90 CGColor];
    *(v91 + 120) = v65;
    *(v91 + 96) = v98;
    sub_1E38E2BE0(v91, v93);

    goto LABEL_29;
  }

  if (v28)
  {
    v99 = OUTLINED_FUNCTION_41_28();
    *(v99 + 16) = xmmword_1E4297BD0;
    v90 = v349;
    v100 = [v61 clearColor];
    v101 = [v100 CGColor];

    *(v99 + 56) = v65;
    *(v99 + 32) = v101;
    OUTLINED_FUNCTION_0_128();
    v102 = sub_1E4206F24();
    v103 = [v102 colorWithAlphaComponent_];

    v104 = [v103 CGColor];
    *(v99 + 88) = v65;
    *(v99 + 64) = v104;
    OUTLINED_FUNCTION_0_128();
    v92 = v349;
    v105 = sub_1E4206F24();
    v106 = [v105 CGColor];

    *(v99 + 120) = v65;
    *(v99 + 96) = v106;
    sub_1E38E2BE0(v99, v90);
LABEL_29:

    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1E42A73A0;
    v108 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v109 = v92;
    *(v107 + 32) = [v108 initWithDouble_];
    v110 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    *&v111 = v45;
    *(v107 + 40) = [v110 initWithFloat_];
    *(v107 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v112 = OUTLINED_FUNCTION_16_0();
    sub_1E38E2B5C(v112, v113);
    v90 = v109;
LABEL_45:
    v37 = v357;

    goto LABEL_46;
  }

  v37 = v357;
LABEL_47:

  if (TVAppFeature.isEnabled.getter(10))
  {
    v139 = sub_1E3A8FCE0();
    if (v139)
    {
      v42 = v139;
      [v139 setVuiAlpha_];
      goto LABEL_50;
    }
  }

LABEL_51:
}

void sub_1E3A93DDC(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView);
  if (v5)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x178);
    v10 = v5;
    if (!v9() || (OUTLINED_FUNCTION_30(), (*(v11 + 1800))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), (*(v12 + 152))(v18), v13 = *v18, v14 = *&v18[1], v15 = *&v18[2], v16 = *&v18[3], , (v19 & 1) != 0))
    {
      v13 = *MEMORY[0x1E69DDCE0];
      v14 = *(MEMORY[0x1E69DDCE0] + 8);
      v15 = *(MEMORY[0x1E69DDCE0] + 16);
      v16 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v17 = [v10 vui:1 layoutSubviews:a3 - sub_1E3952BE0(v13 computationOnly:{v14, v15, v16), a4}];
    if (((*((*v8 & *v4) + 0x3D0))(v17) & 1) == 0)
    {
      [v10 bottomMarginWithBaselineMargin_];
    }
  }
}

uint64_t sub_1E3A93FDC(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E373E010(99, a1);
  if (sub_1E373E010(40, a1))
  {
    type metadata accessor for ImageViewModel();
    v165 = swift_dynamicCastClass();
    if (v165)
    {
      goto LABEL_5;
    }
  }

  v165 = 0;
LABEL_5:
  v163 = sub_1E373E010(97, a1);
  if (sub_1E373E010(33, a1))
  {
    type metadata accessor for ImageViewModel();
    v164 = swift_dynamicCastClass();
    if (v164)
    {
      goto LABEL_9;
    }
  }

  v164 = 0;
LABEL_9:
  v11 = sub_1E373E010(23, a1);
  v161 = a3;
  if (v11)
  {
    if (*v11 == _TtC8VideosUI13TextViewModel)
    {
      v160 = v11;
      goto LABEL_14;
    }
  }

  v160 = 0;
LABEL_14:
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_21:
      v19 = *(*(a1 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v14)))));

      if (sub_1E38116BC())
      {
        break;
      }

      v14 &= v14 - 1;
      v17 = v18;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    if (v165 | v10 | v164 | v163 | v160)
    {
      v155 = v10;
      if (a2)
      {
        _s19FlowcaseOverlayViewCMa();
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v22 = a2;
        }
      }

      else
      {
        v21 = 0;
      }

      v170[0] = v21;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AA0);
      sub_1E4148C68(sub_1E3A95758, v23, v173);

      v20 = v173[0];
      if (v161)
      {
        (*(*v161 + 1776))();
      }

      v24 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_57();
      (*(v25 + 432))(v26 & 1);
      OUTLINED_FUNCTION_43_25();
      (*((*v24 & v27) + 0x198))(0);
      v28 = TVAppFeature.isEnabled.getter(10);
      v154 = a1;
      if (v161 && (v28 & 1) != 0)
      {
        (*(*v161 + 1968))(0);
      }

      OUTLINED_FUNCTION_15_57();
      (*(v29 + 984))(v30 & 1);
      sub_1E3DF9E68(v182);
      v31 = v182[0];
      v32 = v182[1];
      v33 = v183;
      v180 = v183;
      v177 = v184;
      v178 = v185;
      v179 = v186;
      v176[0] = *v187;
      *(v176 + 6) = *&v187[6];
      v34 = v188;
      v35 = type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_43_25();
      v37 = (*((*v24 & v36) + 0x370))();
      __src[0] = v31;
      __src[1] = v32;
      LOBYTE(__src[2]) = v33;
      *(&__src[2] + 1) = v184;
      *(&__src[4] + 1) = v185;
      *(&__src[6] + 1) = v186;
      BYTE1(__src[8]) = 1;
      *(&__src[8] + 2) = *v187;
      __src[9] = *&v187[6];
      LOBYTE(__src[10]) = 1;
      v158 = v34;
      BYTE1(__src[10]) = v34;
      v170[3] = &unk_1F5D869A0;
      v170[4] = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v170[0] = swift_allocObject();
      memcpy((v170[0] + 16), __src, 0x52uLL);
      sub_1E37CCDA0(__src, v173);
      type metadata accessor for ChannelLogoView();
      v157 = v35;
      v38 = sub_1E393D92C(v155, v37, v170, 0);

      sub_1E325F7A8(v170, &qword_1ECF296C0);
      OUTLINED_FUNCTION_43_25();
      (*((*MEMORY[0x1E69E7D40] & v39) + 0x378))(v38);
      if (!v165 || (OUTLINED_FUNCTION_12_6(), v41 = *(v40 + 392), v42 = , v41(v42), OUTLINED_FUNCTION_31_4(), , OUTLINED_FUNCTION_8(), v45 = (*(v43 + 504))(v44), , v45 == 18))
      {
        v45 = 15;
      }

      v46 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_57();
      (*(v47 + 864))(v45);
      OUTLINED_FUNCTION_43_25();
      v49 = *((*v46 & v48) + 0x340);

      v51 = v49(v50);
      *(&v175[2] + 1) = v177;
      v175[0] = v31;
      v175[1] = v32;
      LOBYTE(v175[2]) = v180;
      *(&v175[4] + 1) = v178;
      *(&v175[6] + 1) = v179;
      BYTE1(v175[8]) = 1;
      *(&v175[8] + 2) = v176[0];
      v175[9] = *(v176 + 6);
      LOBYTE(v175[10]) = 1;
      BYTE1(v175[10]) = v34;
      v170[3] = &unk_1F5D869A0;
      v170[4] = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v170[0] = swift_allocObject();
      memcpy((v170[0] + 16), v175, 0x52uLL);
      sub_1E37CCDA0(v175, v173);
      sub_1E3280A90(0, &qword_1EE23AE80);
      v52 = OUTLINED_FUNCTION_69_12();
      sub_1E393D92C(v52, v53, v54, v55);
      OUTLINED_FUNCTION_31_4();

      sub_1E325F7A8(v170, &qword_1ECF296C0);
      OUTLINED_FUNCTION_43_25();
      (*((*v46 & v56) + 0x348))(v157);
      if (v161)
      {
        OUTLINED_FUNCTION_8();
        v59 = COERCE_DOUBLE((*(v57 + 1272))(v58));
        if ((v60 & 1) == 0)
        {
          a4 = v59 + a4;
          a5 = v59 + a5;
        }
      }

      v180 = 0;
      v61 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_57();
      v63 = *(v62 + 904);

      v65 = v63(v64);
      *(&v174[2] + 1) = v177;
      *v174 = a4;
      *&v174[1] = a5;
      LOBYTE(v174[2]) = v180;
      *(&v174[4] + 1) = v178;
      *(&v174[6] + 1) = v179;
      BYTE1(v174[8]) = 0;
      *(&v174[8] + 2) = v176[0];
      v174[9] = *(v176 + 6);
      LOBYTE(v174[10]) = 1;
      BYTE1(v174[10]) = v158;
      v170[3] = &unk_1F5D869A0;
      v170[4] = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v170[0] = swift_allocObject();
      memcpy((v170[0] + 16), v174, 0x52uLL);
      sub_1E37CCDA0(v174, v173);
      v66 = OUTLINED_FUNCTION_69_12();
      sub_1E393D92C(v66, v67, v68, v69);
      OUTLINED_FUNCTION_31_4();

      sub_1E325F7A8(v170, &qword_1ECF296C0);
      OUTLINED_FUNCTION_43_25();
      (*((*v61 & v70) + 0x390))(v157);
      v71 = *&v20[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView];
      memset(v173, 0, 40);
      sub_1E3280A90(0, &qword_1EE23AD40);
      v72 = v20;
      v73 = v71;

      v75 = sub_1E393D92C(v74, v71, v173, 0);

      sub_1E325F7A8(v173, &qword_1ECF296C0);
      sub_1E3A8E32C(v75);

      if (v161)
      {
        OUTLINED_FUNCTION_8();
        v78 = (*(v76 + 1776))(v77);
      }

      else
      {
        v78 = 0;
      }

      memset(v189, 0, sizeof(v189));
      v190 = 0;
      v191 = 1;
      v192 = 0;
      sub_1E3DA4E68(v189, v78 & 1, v173);
      *(&v171[2] + 1) = v177;
      *v171 = a4;
      *&v171[1] = a5;
      LOBYTE(v171[2]) = v180;
      *(&v171[4] + 1) = v178;
      *(&v171[6] + 1) = v179;
      BYTE1(v171[8]) = 1;
      *(&v171[8] + 2) = v176[0];
      v171[9] = *(v176 + 6);
      LOBYTE(v171[10]) = 1;
      BYTE1(v171[10]) = v158;
      memcpy(__dst, v173, 0x52uLL);
      memcpy(v173, v171, 0x52uLL);
      sub_1E37CCDA0(v171, v170);
      v79 = sub_1E325F7A8(__dst, &unk_1ECF31AB0);
      v80 = MEMORY[0x1E69E7D40];
      v81 = *((*MEMORY[0x1E69E7D40] & *v72) + 0x328);
      v82 = v81(v79);
      v156 = v82;
      if (v82)
      {
        sub_1E3DA7214();
      }

      memcpy(v170, v173, 0x53uLL);
      v168 = &type metadata for VerticalStackViewContext;
      v169 = &off_1F5D85060;
      v167[0] = swift_allocObject();
      memcpy((v167[0] + 16), v173, 0x53uLL);
      sub_1E3A957CC(v170, v166);
      type metadata accessor for VerticalStackView();
      v83 = sub_1E393D92C(v163, v82, v167, 0);
      sub_1E325F7A8(v167, &qword_1ECF296C0);
      v84 = (*((*v80 & *v72) + 0x330))(v83);
      v85 = v81(v84);
      if (v85)
      {
        v86 = v85;
        [v85 setVuiUserInteractionEnabled_];
      }

      OUTLINED_FUNCTION_13_81();
      if ((*(v87 + 376))())
      {
        OUTLINED_FUNCTION_30();
        (*(v88 + 1920))();
      }

      type metadata accessor for TextBadgePresenter();

      sub_1E3789F30(v89);
      nullsub_1(v90, v91);
      if (TVAppFeature.isEnabled.getter(10))
      {
        *v166 = a4;
        *&v166[1] = a5;
        LOBYTE(v166[2]) = v180;
        *(&v166[2] + 1) = v177;
        *(&v166[4] + 1) = v178;
        *(&v166[6] + 1) = v179;
        BYTE1(v166[8]) = 0;
        *(&v166[8] + 2) = v176[0];
        v166[9] = *(v176 + 6);
        LOBYTE(v166[10]) = 1;
        BYTE1(v166[10]) = v158;
        sub_1E37CCDFC(v166);

        v93 = &off_1F5D588D0;
        v94 = &type metadata for BadgeViewContext;
      }

      else
      {
        v95 = v180;
        OUTLINED_FUNCTION_29_7();
        v92 = swift_allocObject();
        *(v92 + 16) = a4;
        *(v92 + 24) = a5;
        *(v92 + 32) = v95;
        v96 = v178;
        *(v92 + 33) = v177;
        *(v92 + 49) = v96;
        *(v92 + 65) = v179;
        *(v92 + 81) = 0;
        *(v92 + 82) = v176[0];
        *(v92 + 88) = *(v176 + 6);
        *(v92 + 96) = 1;
        *(v92 + 97) = v158;
        v93 = &off_1F5D868A0;
        v94 = &unk_1F5D869A0;
      }

      v168 = v94;
      v169 = v93;
      v167[0] = v92;
      v97 = (*((*v80 & *v72) + 0x1F0))();
      v98 = sub_1E393D92C(v19, v97, v167, 0);

      if (v19 && (LOWORD(v166[0]) = v19[49], LOWORD(v193) = 36, sub_1E3741534(), (sub_1E4205E84() & 1) != 0))
      {
        if (v98)
        {
          objc_opt_self();
          v99 = swift_dynamicCastObjCClass();
          if (v99)
          {
            v100 = v99;
            type metadata accessor for FixedSizeBadgeView();
            v159 = v98;
            v101 = sub_1E40C1E8C(v100);
            v102 = *(*v19 + 392);

            v104 = v102(v103);

            if (v104)
            {
              type metadata accessor for ImageLayout();
              if (swift_dynamicCastClass())
              {
                OUTLINED_FUNCTION_26_0();
                v106 = (*(v105 + 2288))();
                (*((*MEMORY[0x1E69E7D40] & *v101) + 0x68))(*&v106, v107, 0);
              }
            }

            v108 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_15_57();
            v110 = *(v109 + 504);
            v111 = v101;
            v110(v101);

            v80 = v108;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_13_81();
        v113 = *(v112 + 504);
        v114 = v98;
        v113(v98);
      }

      OUTLINED_FUNCTION_13_81();
      v116 = *(v115 + 384);

      v116(v117);
      v118 = sub_1E373E010(234, v154);
      if (v118)
      {
        v119 = v118;
        if (TVAppFeature.isEnabled.getter(10))
        {
          type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
          v120 = swift_dynamicCastClass();
          if (v120)
          {
            v121 = v120;
            OUTLINED_FUNCTION_15_57();
            v123 = *(v122 + 376);

            v124 = v72;
            v125 = v123();
            if (v125)
            {
              v162 = v98;
              v126 = *(v125 + 176);

              sub_1E392B18C(0);
              type metadata accessor for FlowcaseScoreboardViewCoordinator();
              v127 = swift_allocObject();
              *(v127 + 16) = 0;
              *(v127 + 24) = 1;
              sub_1E41FE924();
              *&v124[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardCoodinator] = v127;

              v128 = *&v124[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
              v166[0] = v121;
              v166[1] = v126;
              v166[2] = v127;
              if (v128)
              {

                v129 = v128;
                sub_1E4201234();
              }

              else
              {
                v147 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31B58));

                v148 = sub_1E4201214();
                v149 = v148;
                sub_1E3A8E6B8(v148);
              }

              v98 = v162;
            }

            else
            {
            }
          }

          v150 = *&v72[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
          if (v150)
          {
            v151 = v150;
            [v151 setVuiAlpha_];
          }
        }

        else
        {
          v132 = objc_opt_self();
          v133 = v72;
          if ([v132 isMac])
          {
            v134 = 2;
          }

          else
          {
            v134 = 0;
          }

          LOBYTE(v193) = 1;
          (*(*v119 + 776))(v166, &v193, &unk_1F5D5D528, &off_1F5D5C858);
          if (v166[3])
          {
            if (swift_dynamicCast())
            {
              v135 = sub_1E3AA9D30();
              if (v135 != 3)
              {
                v134 = v135;
              }
            }
          }

          else
          {
            sub_1E325F7A8(v166, &unk_1ECF296E0);
          }

          OUTLINED_FUNCTION_15_57();
          if ((*(v136 + 376))())
          {
            sub_1E3AA9CE0(v134);
            OUTLINED_FUNCTION_8();
            (*(v137 + 1952))();
          }

          OUTLINED_FUNCTION_26();
          if ((*(v138 + 600))() || (OUTLINED_FUNCTION_26(), (*(v139 + 552))()))
          {
            OUTLINED_FUNCTION_15_57();
            if (!(*(v140 + 520))())
            {
              [objc_allocWithZone(VUIScorecardView) init];
            }

            OUTLINED_FUNCTION_15_57();
            (*(v141 + 528))();
            sub_1E388CEA0();
            sub_1E3280A90(0, &qword_1EE23AF68);
            v142 = OUTLINED_FUNCTION_31_4();
            sub_1E3744600(v142);

            v143 = sub_1E37766C4();
            v144 = sub_1E388D0C8(v143);

            if (v144)
            {
              v145 = OUTLINED_FUNCTION_1_36();
              sub_1E388C300(1, v145, v146);
            }
          }

          else
          {
            v152 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_15_57();
            (*(v153 + 576))();
            (*((*v152 & *v133) + 0x210))(0);
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_13_81();
        (*(v130 + 576))();
        (*((*v80 & *v72) + 0x210))(0);
        v131 = *&v72[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
        if (v131)
        {
          [v131 setVuiAlpha_];
        }
      }

      [v72 vui_setNeedsLayout];

      sub_1E325F7A8(v167, &qword_1ECF296C0);
      memcpy(v166, v173, 0x53uLL);
      sub_1E3A95828(v166);
    }

    else
    {

      return 0;
    }

    return v20;
  }

  else
  {
LABEL_18:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v19 = 0;
        goto LABEL_25;
      }

      v14 = *(a1 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1E3A95758@<X0>(void *a1@<X8>)
{
  _s19FlowcaseOverlayViewCMa();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

void *sub_1E3A95794()
{
  result = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView);
  if (result)
  {
    [result vuiAlpha];
    return (v2 > 0.0);
  }

  return result;
}

void sub_1E3A9587C(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isPlayingVideo;
  swift_beginAccess();
  v2[v5] = a1;
  sub_1E3A959F0(a1);
  if (a2)
  {
    v6 = objc_opt_self();
    OUTLINED_FUNCTION_21();
    v8 = (*(v7 + 352))();
    OUTLINED_FUNCTION_4_0();
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    aBlock[4] = sub_1E3A96E44;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_67_0;
    v10 = _Block_copy(aBlock);
    v11 = v2;

    [v6 vui:5242880 animateWithDuration:v10 delay:0 options:v8 animations:0.0 completion:?];
    _Block_release(v10);
  }

  else
  {
    sub_1E3A967C0(v2);
  }
}

void sub_1E3A959F0(void *a1)
{
  v3 = sub_1E3A8FCE0();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 layer];
  }

  else
  {
    v5 = 0;
  }

  v89 = [objc_opt_self() blackColor];
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8))();
  if (v7)
  {
    if (!v5)
    {
      v85 = v89;
      goto LABEL_31;
    }

    [v5 setStartPoint_];
    v14 = OUTLINED_FUNCTION_67_13();
    [v5 v15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v16 = swift_allocObject();
    v16[1] = xmmword_1E429A240;
    v17 = v5;
    v24 = OUTLINED_FUNCTION_76_6(v17, sel_colorWithAlphaComponent_, v18, v19, v20, v21, v22, v23, v86, v89);
    v25 = [v24 CGColor];

    type metadata accessor for CGColor();
    v27 = v26;
    *(v16 + 7) = v26;
    *(v16 + 4) = v25;
    v34 = OUTLINED_FUNCTION_76_6(v26, sel_colorWithAlphaComponent_, v28, v29, v30, v31, v32, v33, v87, v90);
    v35 = [v34 CGColor];

    *(v16 + 11) = v27;
    *(v16 + 8) = v35;
    v36 = *((*v6 & *v1) + 0x3B8);
    v37 = v36();
    v38 = 0.14;
    if (v37)
    {
      v38 = 0.05;
    }

    v39 = [v91 colorWithAlphaComponent_];
    v40 = [v39 CGColor];

    *(v16 + 15) = v27;
    *(v16 + 12) = v40;
    v41 = v36();
    v42 = 0.41;
    if (v41)
    {
      v42 = 0.15;
    }

    v43 = [v91 colorWithAlphaComponent_];
    v44 = [v43 CGColor];

    *(v16 + 19) = v27;
    *(v16 + 16) = v44;
    v45 = v36();
    v46 = 0.55;
    if (v45)
    {
      v46 = 0.2;
    }

    v47 = [v91 colorWithAlphaComponent_];
    v48 = [v47 CGColor];

    *(v16 + 23) = v27;
    *(v16 + 20) = v48;
    sub_1E38E2BE0(v16, v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1E42A76D0;
    sub_1E3280A90(0, &qword_1EE23ADD0);
    v50 = v17;
    OUTLINED_FUNCTION_118();
    *(v49 + 32) = sub_1E4206F44();
    *(v49 + 40) = sub_1E4206F34();
    *(v49 + 48) = sub_1E4206F34();
    *(v49 + 56) = sub_1E4206F34();
    *(v49 + 64) = sub_1E4206F44();
    sub_1E38E2B5C(v49, v16);
    v51 = v91;
    goto LABEL_25;
  }

  v52 = OUTLINED_FUNCTION_76_6(v7, sel_colorWithAlphaComponent_, v8, v9, v10, v11, v12, v13, v86, v89);
  v53 = [v52 CGColor];

  v61 = OUTLINED_FUNCTION_76_6(v54, sel_colorWithAlphaComponent_, v55, v56, v57, v58, v59, v60, v88, v92);
  v16 = [v61 CGColor];

  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v74 += 119;
    v75 = *v74;
    if ((*v74)())
    {
      v76 = 0.11;
    }

    else
    {
      v76 = 0.29;
    }

    if (v75())
    {
      v77 = 0.2;
    }

    else
    {
      v77 = 0.55;
    }

    v62 = OUTLINED_FUNCTION_64_12([v93 colorWithAlphaComponent_]);

    v78 = OUTLINED_FUNCTION_64_12([v93 colorWithAlphaComponent_]);
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
      v79 = OUTLINED_FUNCTION_63_14();
      *(v79 + 16) = xmmword_1E4298AD0;
      type metadata accessor for CGColor();
      *(v79 + 32) = v53;
      *(v79 + 56) = v80;
      *(v79 + 64) = v16;
      *(v79 + 88) = v80;
      *(v79 + 96) = v62;
      *(v79 + 152) = v80;
      *(v79 + 120) = v80;
      *(v79 + 128) = v78;
      v67 = v53;
      v68 = v16;
      v81 = v62;
      v82 = v78;
      sub_1E38E2BE0(v79, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1E42A1E20;
      sub_1E3280A90(0, &qword_1EE23ADD0);
      v84 = v5;
      OUTLINED_FUNCTION_118();
      *(v83 + 32) = sub_1E4206F44();
      *(v83 + 40) = sub_1E4206F34();
      *(v83 + 48) = sub_1E4206F34();
      *(v83 + 56) = sub_1E4206F44();
      sub_1E38E2B5C(v83, v16);

      goto LABEL_24;
    }

LABEL_29:
    v51 = v62;
    goto LABEL_30;
  }

  v62 = OUTLINED_FUNCTION_64_12([v93 colorWithAlphaComponent_]);

  v63 = OUTLINED_FUNCTION_64_12([v93 colorWithAlphaComponent_]);
  v64 = OUTLINED_FUNCTION_64_12([v93 colorWithAlphaComponent_]);

  if (!v5)
  {

    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1E429A240;
  type metadata accessor for CGColor();
  *(v65 + 32) = v53;
  *(v65 + 56) = v66;
  *(v65 + 64) = v16;
  *(v65 + 88) = v66;
  *(v65 + 96) = v62;
  *(v65 + 120) = v66;
  *(v65 + 128) = v63;
  *(v65 + 184) = v66;
  *(v65 + 152) = v66;
  *(v65 + 160) = v64;
  v67 = v53;
  v68 = v16;
  v69 = v62;
  v70 = v63;
  v71 = v64;
  sub_1E38E2BE0(v65, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1E42A76D0;
  sub_1E3280A90(0, &qword_1EE23ADD0);
  v73 = v5;
  OUTLINED_FUNCTION_118();
  *(v72 + 32) = sub_1E4206F44();
  *(v72 + 40) = sub_1E4206F34();
  *(v72 + 48) = sub_1E4206F34();
  *(v72 + 56) = sub_1E4206F34();
  *(v72 + 64) = sub_1E4206F44();
  sub_1E38E2B5C(v72, v16);

LABEL_24:
  v51 = v67;
LABEL_25:
  v53 = v16;
LABEL_30:

  v85 = v53;
LABEL_31:
}

id sub_1E3A9624C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3A96430()
{
  v2 = v0;
  OUTLINED_FUNCTION_118();
  v3 = type metadata accessor for TextBadge();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0);
  v8 = v7(v4);
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      OUTLINED_FUNCTION_12_5();
      if ((*(v12 + 376))())
      {
        OUTLINED_FUNCTION_26_0();
        v14 = (*(v13 + 1920))();

        if (v14)
        {
          OUTLINED_FUNCTION_8();
          v16 = (*(v15 + 1824))();

          v30[15] = v16;
          v30[14] = 3;
          sub_1E3831FCC();
          if (sub_1E4205E84())
          {
            [v2 bounds];
            v18 = v17;
            v20 = v19;
            [v2 frame];
            [v11 setBackgroundImageForMaterialRendering:v1 imageSize:*sub_1E41DA684() overlayViewFrame:v18 operationQueue:{v20, v21, v22, v23, v24}];
LABEL_12:

            goto LABEL_13;
          }
        }
      }
    }
  }

  v25 = (v7)();
  if (!v25)
  {
LABEL_13:
    OUTLINED_FUNCTION_12_5();
    v28 = *(v27 + 792);
    v29 = v1;
    return v28(v1);
  }

  v9 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AC0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_12;
  }

  result = sub_1E4201224();
  if (v1)
  {
    sub_1E3FCB134(v1);

    sub_1E3A96DF0(v6, type metadata accessor for TextBadge);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1E3A967C0(void *a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x3A0))();
  v3 = TVAppFeature.isEnabled.getter(10);
  if ((v2 & 1) == 0)
  {
    if (v3)
    {
      v7 = *(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
      if (*(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView))
      {
        if (v7)
        {
          [v7 setVuiAlpha_];
        }
      }

      else
      {
        if (v7)
        {
          OUTLINED_FUNCTION_0_59();
          v21 = *(v20 + 424);
          v23 = v22;
          v24 = v21();
          v25 = 0.0;
          if (v24)
          {
            v25 = 1.0;
          }

          [v23 setVuiAlpha_];
        }

        v26 = sub_1E3A8FCE0();
        if (v26)
        {
          v27 = v26;
          OUTLINED_FUNCTION_0_59();
          v29 = (*(v28 + 424))();
          v30 = 0.0;
          if (v29)
          {
            v30 = 1.0;
          }

          [v27 setVuiAlpha_];
        }
      }
    }

    else
    {
      v17 = *(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
      if (v17)
      {
        [v17 setVuiAlpha_];
      }
    }

    goto LABEL_20;
  }

  if (v3)
  {
    v4 = sub_1E3A8FCE0();
    if (v4)
    {
      v5 = v4;
      [v4 setVuiAlpha_];
    }

    v6 = *(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
    if (v6)
    {
      [v6 setVuiAlpha_];
    }

LABEL_20:
    [sub_1E3A8FCA8() setVuiAlpha_];
    OUTLINED_FUNCTION_200();

    return;
  }

  v8 = sub_1E3A8FCA8();
  [v8 setVuiAlpha_];

  v9 = sub_1E3A8FCE0();
  if (v9)
  {
    v10 = v9;
    v11 = OUTLINED_FUNCTION_52_21();
    [v12 v13];
  }

  if (*(a1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView))
  {
    OUTLINED_FUNCTION_52_21();
    OUTLINED_FUNCTION_200();

    [v14 v15];
  }

  else
  {
    OUTLINED_FUNCTION_200();
  }
}

uint64_t sub_1E3A96A48()
{
  v1 = OBJC_IVAR____TtC8VideosUIP33_FBAB717E7E30D69FDDD7D1B4C16BFCA733FlowcaseScoreboardViewCoordinator___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for FlowcaseScoreboardViewCoordinator()
{
  result = qword_1ECF548F8;
  if (!qword_1ECF548F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A96B2C()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E3A96BF4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201B84();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B38);
  OUTLINED_FUNCTION_16_0();
  return sub_1E3A96C58(v2);
}

uint64_t sub_1E3A96C58@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;

  OUTLINED_FUNCTION_25();
  sub_1E385D788(v8, v9, v10, v11, v12);
  sub_1E3A96D8C(v7, v4);
  sub_1E3A96D8C(v4, a1);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31B40) + 48);
  *v13 = 0;
  *(v13 + 8) = 0;
  sub_1E3A96DF0(v7, type metadata accessor for SportsCanonicalBannerScoreboardView);
  return sub_1E3A96DF0(v4, type metadata accessor for SportsCanonicalBannerScoreboardView);
}

uint64_t sub_1E3A96D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A96DF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3A96E4C()
{
  result = qword_1EE287220;
  if (!qword_1EE287220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287220);
  }

  return result;
}

unint64_t sub_1E3A96EA0()
{
  result = qword_1ECF31B68;
  if (!qword_1ECF31B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF31B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31B68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_24(uint64_t result)
{
  *(v2 + v4) = result;
  *(v2 + v1[6]) = v3;
  *(v2 + v1[7]) = 0;
  *(v2 + v1[8]) = 0;
  *(v2 + v1[9]) = 0;
  return result;
}

id OUTLINED_FUNCTION_58_17(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_74_10()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

id OUTLINED_FUNCTION_77_9(void *a1, double a2)
{
  LODWORD(a2) = v4;

  return [a1 (v2 + 3485)];
}

uint64_t type metadata accessor for CastRoomBanner()
{
  result = qword_1EE2A5DE0;
  if (!qword_1EE2A5DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A9700C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CastRoomBanner();
  *(a2 + v4[8]) = MEMORY[0x1E69E7CC0];
  v5 = (a2 + v4[12]);
  v59[0] = 0;
  v6 = sub_1E42038E4();
  v7 = __src[1];
  *v5 = __src[0];
  v5[1] = v7;
  v8 = *(*a1 + 488);
  v9 = v8(v6);
  if (v9)
  {
    v10 = sub_1E373E010(41, v9);
  }

  else
  {
    v10 = 0;
  }

  *(a2 + v4[6]) = v10;

  v12 = v8(v11);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_1E373E010(23, v12);

  if (v13 && *v13 != _TtC8VideosUI13TextViewModel)
  {

LABEL_8:
    v13 = 0;
  }

  *(a2 + v4[7]) = v13;

  v15 = v8(v14);
  if (v15)
  {
    v16 = sub_1E373E010(9, v15);

    if (v16)
    {
      if (*v16 == _TtC8VideosUI13TextViewModel)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4298880;
        *(inited + 32) = v16;
        v15 = sub_1E3A98978(inited);
      }

      else
      {
      }
    }
  }

  v18 = v8(v15);
  if (v18)
  {
    v19 = sub_1E373E010(14, v18);

    if (v19)
    {
      if (*v19 != _TtC8VideosUI13TextViewModel)
      {

        if (v10)
        {
          goto LABEL_19;
        }

LABEL_29:
        v28 = 0;
        v25 = 0;
        goto LABEL_30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1E4298880;
      *(v20 + 32) = v19;
      sub_1E3A98978(v20);
    }
  }

  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_19:
  v21 = *(*v10 + 392);

  v23 = v21(v22);

  if (v23)
  {
    v25 = (*(*v23 + 200))(v24);
    v27 = v26;

    if (v27)
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v28 = (*(*v10 + 392))(v24);

  if (v28)
  {
    v30 = (*(*v28 + 304))(v29);
    v32 = v31;

    if (v32)
    {
      v28 = 0;
    }

    else
    {
      v28 = v30;
    }
  }

LABEL_30:
  v33 = j__OUTLINED_FUNCTION_51_1();
  v34 = j__OUTLINED_FUNCTION_18();
  v35 = j__OUTLINED_FUNCTION_18();
  sub_1E3EB9C0C(v25, v28, 0, 0, 0, 1, v33 & 1, 2, __src, 0, 1, 0, 1, 0, 2, v34 & 1, v35 & 1);
  v36 = memcpy(a2 + v4[5], __src, 0x5BuLL);
  if (v13)
  {
    v37 = sub_1E3C27528();

    if (!v37 || (v13 = (*(*v37 + 248))(v36), v39 = v38, v36 = , (v39 & 1) != 0))
    {
      v13 = 0;
    }
  }

  *(a2 + v4[9]) = v13;
  v40 = (*a1 + 392);
  v41 = *v40;
  v42 = (*v40)(v36);
  if (v42)
  {
    v43 = (*(*v42 + 304))(v42);
    v45 = v44;

    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v43;
    }
  }

  else
  {
    v46 = 0;
  }

  *(a2 + v4[10]) = v46;
  v47 = v41(v42);
  if (!v47 || ((*(*v47 + 176))(v59), v52 = v59[0], v53 = v59[1], v54 = v59[2], v55 = v59[3], , (v60 & 1) != 0))
  {
    v52 = *MEMORY[0x1E69DDCE0];
    v53 = *(MEMORY[0x1E69DDCE0] + 8);
    v54 = *(MEMORY[0x1E69DDCE0] + 16);
    v55 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v48.n128_u64[0] = v52;
  v49.n128_u64[0] = v53;
  v50.n128_u64[0] = v54;
  v51.n128_u64[0] = v55;
  j_nullsub_1(v48, v49, v50, v51);
  OUTLINED_FUNCTION_3();

  v57 = (a2 + v4[11]);
  *v57 = v52;
  v57[1] = v53;
  v57[2] = v54;
  v57[3] = v55;
  return result;
}

uint64_t sub_1E3A97654@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v91 = a1;
  v92 = type metadata accessor for CastRoomBanner();
  OUTLINED_FUNCTION_0_10();
  v88 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v89 = v9;
  OUTLINED_FUNCTION_17_3(v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B80);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v80 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v80 - v19;
  v80[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v80 - v22;
  v80[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v80 - v25;
  v80[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v80[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v30);
  v80[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  *v16 = sub_1E4201B84();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31BC8);
  sub_1E3A97FCC(v6, &v16[*(v37 + 44)]);
  v38 = sub_1E4202764();
  v39 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v38)
  {
    v39 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v16, v20, &qword_1ECF31B80);
  v40 = &v20[*(v17 + 36)];
  *v40 = v39;
  *(v40 + 1) = v2;
  *(v40 + 2) = v3;
  *(v40 + 3) = v4;
  *(v40 + 4) = v5;
  v40[40] = 0;
  v41 = sub_1E4202784();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v41)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v20, v23, &qword_1ECF31B88);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_5_106(&v23[v42]);
  v43 = sub_1E4202754();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v43)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_16_67();
  sub_1E3B0352C();
  v44 = *(v11 + 8);
  v45 = OUTLINED_FUNCTION_114_1();
  v44(v45);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v23, v26, &qword_1ECF31B90);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_5_106(&v26[v46]);
  v47 = sub_1E4202744();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v47)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_16_67();
  sub_1E3B0352C();
  v48 = OUTLINED_FUNCTION_114_1();
  v44(v48);
  v49 = v80[4];
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v26, v49, &qword_1ECF31B98);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_5_106(v49 + v50);
  OUTLINED_FUNCTION_16_67();
  sub_1E3B0352C();
  v51 = OUTLINED_FUNCTION_114_1();
  v44(v51);
  v52 = v92;
  sub_1E4203D84();
  sub_1E4200D94();
  v53 = v81;
  sub_1E3741EA0(v49, v81, &qword_1ECF31BA0);
  OUTLINED_FUNCTION_141();
  v55 = (v53 + v54);
  v56 = v97;
  *v55 = v96;
  v55[1] = v56;
  v55[2] = v98;
  sub_1E4203DA4();
  sub_1E42015C4();
  v57 = v83;
  sub_1E3741EA0(v53, v83, &qword_1ECF31BA8);
  OUTLINED_FUNCTION_141();
  memcpy((v57 + v58), __src, 0x70uLL);
  OUTLINED_FUNCTION_16_67();
  LOBYTE(v53) = sub_1E3B0352C();
  v59 = OUTLINED_FUNCTION_114_1();
  v44(v59);
  v60 = v57;
  v61 = v84;
  sub_1E3741EA0(v60, v84, &qword_1ECF31BB0);
  OUTLINED_FUNCTION_141();
  v63 = (v61 + v62);
  *v63 = 0;
  v63[1] = v53 & 1;
  v64 = (v6 + *(v52 + 48));
  v65 = *v64;
  v66 = v64[1];
  v94 = v65;
  v95 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v67 = v93 + -10.0;
  type metadata accessor for AppEnvironment();
  sub_1E39DC8E8();
  v68 = sub_1E4201754();
  v70 = v69;
  v71 = v61;
  v72 = v86;
  sub_1E3741EA0(v71, v86, &qword_1ECF31BB8);
  v73 = v72 + *(v85 + 36);
  *v73 = v67;
  *(v73 + 8) = v68;
  *(v73 + 16) = v70;
  v74 = v6;
  v75 = v90;
  sub_1E3A98A24(v74, v90);
  v76 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v77 = swift_allocObject();
  sub_1E3A99320(v75, v77 + v76, type metadata accessor for CastRoomBanner);
  sub_1E3A98AF4();
  v78 = OUTLINED_FUNCTION_51_1();
  sub_1E40AB6EC(v78 & 1);

  return sub_1E325F6F0(v72, &qword_1ECF31BC0);
}

uint64_t sub_1E3A97FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C30);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31[-v10];
  v12 = type metadata accessor for Monogram();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31[-v23];
  v25 = type metadata accessor for CastRoomBanner();
  v26 = *(a1 + *(v25 + 24));
  if (v26)
  {
    memcpy(__dst, (a1 + *(v25 + 20)), 0x5BuLL);

    sub_1E375C2C0(__dst, v31);
    sub_1E3BD63E4(v26, 0, __dst, 0, 0, 0, 0, 0, v16);
    sub_1E3A99320(v16, v24, type metadata accessor for Monogram);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v27, 1, v12);
  *v11 = sub_1E4201D54();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C38);
  sub_1E3A982B4(a1, &v11[*(v28 + 44)]);
  sub_1E3743538(v24, v21, &qword_1ECF29648);
  sub_1E3743538(v11, v8, &qword_1ECF31C30);
  sub_1E3743538(v21, a2, &qword_1ECF29648);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C40);
  sub_1E3743538(v8, a2 + *(v29 + 48), &qword_1ECF31C30);
  sub_1E325F6F0(v11, &qword_1ECF31C30);
  sub_1E325F6F0(v24, &qword_1ECF29648);
  sub_1E325F6F0(v8, &qword_1ECF31C30);
  return sub_1E325F6F0(v21, &qword_1ECF29648);
}

uint64_t sub_1E3A982B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C48);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v24 = type metadata accessor for CastRoomBanner();
  if (*(a1 + *(v24 + 28)))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v12 + 32))(v23, v15, v10);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v23, v25, 1, v10);
  v26 = sub_1E375B30C(*(a1 + *(v24 + 32)));
  v27 = sub_1E4201D54();
  sub_1E403E654(v26, v27, 1, v9);
  sub_1E4203DB4();
  sub_1E4200D94();
  v28 = &v9[*(v33 + 36)];
  v29 = v36;
  *v28 = v35;
  *(v28 + 1) = v29;
  *(v28 + 2) = v37;
  sub_1E3743538(v23, v20, &qword_1ECF29210);
  sub_1E3743538(v9, v6, &qword_1ECF31C48);
  v30 = v34;
  sub_1E3743538(v20, v34, &qword_1ECF29210);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C50);
  sub_1E3743538(v6, v30 + *(v31 + 48), &qword_1ECF31C48);
  sub_1E325F6F0(v9, &qword_1ECF31C48);
  sub_1E325F6F0(v23, &qword_1ECF29210);
  sub_1E325F6F0(v6, &qword_1ECF31C48);
  return sub_1E325F6F0(v20, &qword_1ECF29210);
}

uint64_t sub_1E3A985F0()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E3746E10(v5 - v4);
  v7 = sub_1E3B0352C();
  (*(v2 + 8))(v6, v0);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for CastRoomBanner();
  }

  type metadata accessor for CastRoomBanner();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  return sub_1E4203904();
}

uint64_t sub_1E3A98724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    v7 = *(*a2 + 184);

    v7(v8);
    v10 = v9;
    v12 = v11;

    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v10 * 1.5;
    }

    sub_1E42036C4();
    v14 = sub_1E4203734();

    sub_1E4203DA4();
    sub_1E4200D94();
    *&v23[6] = v34;
    *&v23[22] = v35;
    *&v23[38] = v36;
    v15 = (v13 - a4) * -0.5;
    v16 = sub_1E4203DA4();
    v18 = v17;
    __src[0] = v14;
    LOWORD(__src[1]) = 256;
    *(&__src[1] + 2) = *v23;
    *(&__src[3] + 2) = *&v23[16];
    *(&__src[5] + 2) = *&v23[32];
    __src[7] = *(&v36 + 1);
    __src[8] = 0;
    *&__src[9] = v15;
    __src[10] = v16;
    __src[11] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C18);
    OUTLINED_FUNCTION_2();
    (*(v19 + 16))(a3, a1);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31C20);
    memcpy((a3 + *(v20 + 36)), __src, 0x60uLL);
    v25 = v14;
    v26 = 256;
    v27 = *v23;
    v28 = *&v23[16];
    *v29 = *&v23[32];
    *&v29[14] = *&v23[46];
    v30 = 0;
    v31 = v15;
    v32 = v16;
    v33 = v18;
    sub_1E3743538(__src, v22, &qword_1ECF31C28);
    return sub_1E325F6F0(&v25, &qword_1ECF31C28);
  }

  else
  {
    type metadata accessor for AppEnvironment();
    sub_1E39DC8E8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3A98978(unint64_t a1)
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
  sub_1E3A9937C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1E3A98A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CastRoomBanner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A98A88()
{
  v0 = type metadata accessor for CastRoomBanner();
  OUTLINED_FUNCTION_17_2(v0);

  return sub_1E3A985F0();
}

unint64_t sub_1E3A98AF4()
{
  result = qword_1ECF31BD0;
  if (!qword_1ECF31BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BC0);
    sub_1E3A98B80();
    sub_1E3A98F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BD0);
  }

  return result;
}

unint64_t sub_1E3A98B80()
{
  result = qword_1ECF31BD8;
  if (!qword_1ECF31BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BB8);
    sub_1E3A98C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BD8);
  }

  return result;
}

unint64_t sub_1E3A98C0C()
{
  result = qword_1ECF31BE0;
  if (!qword_1ECF31BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BB0);
    sub_1E3A98C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BE0);
  }

  return result;
}

unint64_t sub_1E3A98C98()
{
  result = qword_1ECF31BE8;
  if (!qword_1ECF31BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BA8);
    sub_1E3A98D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BE8);
  }

  return result;
}

unint64_t sub_1E3A98D24()
{
  result = qword_1ECF31BF0;
  if (!qword_1ECF31BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31BA0);
    sub_1E3A98DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BF0);
  }

  return result;
}

unint64_t sub_1E3A98DB0()
{
  result = qword_1ECF31BF8;
  if (!qword_1ECF31BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31B98);
    sub_1E3A98E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31BF8);
  }

  return result;
}

unint64_t sub_1E3A98E3C()
{
  result = qword_1ECF31C00;
  if (!qword_1ECF31C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31B90);
    sub_1E3A98EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31C00);
  }

  return result;
}

unint64_t sub_1E3A98EC8()
{
  result = qword_1ECF31C08;
  if (!qword_1ECF31C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31B88);
    sub_1E32752B0(&qword_1ECF31C10, &qword_1ECF31B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31C08);
  }

  return result;
}

unint64_t sub_1E3A98F80()
{
  result = qword_1ECF54A18[0];
  if (!qword_1ECF54A18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54A18);
  }

  return result;
}

void sub_1E3A99014()
{
  sub_1E3A9919C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E3A9919C(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_3_111();
      sub_1E3A9919C(319, v2, v3, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_3_111();
        sub_1E3A9919C(319, v5, v6, MEMORY[0x1E69E62F8]);
        if (v7 <= 0x3F)
        {
          sub_1E3A99200();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3A9919C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3A99200()
{
  if (!qword_1EE288680)
  {
    v0 = sub_1E4203924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE288680);
    }
  }
}

uint64_t sub_1E3A99250(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1E3A992A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E3A99320(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3A9937C(uint64_t result, uint64_t a2, unint64_t a3)
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
        type metadata accessor for TextViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1EE23B5B0, &qword_1ECF2B6E8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
          v9 = sub_1E3797EB0(v12, i, a3);
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

unint64_t sub_1E3A99504()
{
  result = qword_1ECF31C58;
  if (!qword_1ECF31C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31C20);
    sub_1E32752B0(&qword_1ECF31C60, &qword_1ECF31C18);
    sub_1E32752B0(&qword_1ECF31C68, &qword_1ECF31C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31C58);
  }

  return result;
}

double sub_1E3A995E8()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets;
  OUTLINED_FUNCTION_5_0();
  return *v1;
}

uint64_t sub_1E3A9962C()
{
  OUTLINED_FUNCTION_0_8();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets);
  result = OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

id sub_1E3A996D4()
{
  v1 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E3A99718(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3A997A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_alertTemplateLayout;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
}

void sub_1E3A99840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    v8 = (a1 + 32);
    do
    {
      v9 = *v8;
      v8 += 2;
      v10 = v9;
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      --v5;
    }

    while (v5);
    v6 = v38;
  }

  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E4207574();
    v13 = (a2 + 32);
    do
    {
      v14 = *v13;
      v13 += 2;
      v15 = v14;
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      --v11;
    }

    while (v11);
    v16 = v39;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E3A9BD04(v6, v16))
  {
  }

  else
  {
    j = sub_1E32AE9B0(v16);
    for (i = 0; j != i; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E6911E60](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        v32 = MEMORY[0x1E6911E60](0, v12);
        goto LABEL_42;
      }

      [v19 removeFromSuperview];
    }

    v21 = sub_1E32AE9B0(v6);
    for (j = 0; v21 != j; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1E6911E60](j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v22 = *(v6 + 8 * j + 32);
      }

      v23 = v22;
      if (__OFADD__(j, 1))
      {
        goto LABEL_49;
      }

      [v3 addSubview_];
    }

    [v3 setNeedsLayout];
    j = objc_opt_self();
    v24 = [j defaultCenter];
    v37 = *MEMORY[0x1E69DF860];
    [v24 removeObserver:v3 name:? object:?];

    v25 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x138))();
    v26 = 0;
    v40 = v12;
    v27 = *(v25 + 16);
LABEL_31:
    v28 = 16 * v26 + 32;
    while (v27 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_51;
      }

      ++v26;
      v29 = v28 + 16;
      v30 = *(v25 + v28);
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      v28 = v29;
      if (v31)
      {
        MEMORY[0x1E6910BF0](v30);
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v12 = v40;
        goto LABEL_31;
      }
    }

    if (sub_1E32AE9B0(v12))
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        goto LABEL_52;
      }

      if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v32 = *(v12 + 32);
LABEL_42:
      v33 = v32;

      goto LABEL_44;
    }

    v33 = 0;
LABEL_44:
    v34 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView;
    v35 = *(v3 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView);
    *(v3 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView) = v33;

    v36 = [j defaultCenter];
    [v36 addObserver:v3 selector:sel_imageDidLoad_ name:v37 object:*(v3 + v34)];
  }
}

uint64_t sub_1E3A99D0C()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_aboveCollectionComponents;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A99DA4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_belowCollectionComponents;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A99E24(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (a2)
  {

    a3(v6);
  }

  else
  {
    a3(v5);
  }

  free(v4);
}

uint64_t sub_1E3A99EAC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_0();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  OUTLINED_FUNCTION_5_0();

  sub_1E3A99840(v6, v5);
}

uint64_t sub_1E3A99F34()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_footerComponents;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A99FB4()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 240))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  OUTLINED_FUNCTION_21();
  *(inited + 32) = (*(v5 + 168))();
  type metadata accessor for ViewLayout();
  *(inited + 40) = sub_1E3C2F968();
  v6 = sub_1E3A9C008(inited);
  v7 = (*((*v1 & *v0) + 0x108))(v6);
  sub_1E3A9C008(v7);
  return v3;
}

void sub_1E3A9A0F8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_alertTemplateLayout) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_aboveCollectionComponents) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_belowCollectionComponents) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_footerComponents) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay) = 0;
  OUTLINED_FUNCTION_4_109();
  __break(1u);
}

char *sub_1E3A9A194()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_alertTemplateLayout) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_aboveCollectionComponents) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_belowCollectionComponents) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_footerComponents) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay) = 0;
  v2 = sub_1E3952C10(0.0, 60.0);
  v3 = v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_viewSafeAreaInsets;
  *v3 = v2;
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  [v7 setScrollDirection_];
  [v7 setMinimumLineSpacing_];
  [v7 setMinimumInteritemSpacing_];
  [v7 setSectionInset_];
  v8 = objc_allocWithZone(VUILegacyCollectionView);
  v9 = OUTLINED_FUNCTION_5_8();
  v12 = [v10 v11];
  [v12 setAutoresizingMask_];
  [v12 setBackgroundColor_];
  [v12 setOpaque_];
  type metadata accessor for AlertTemplateView.AlertActionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  OUTLINED_FUNCTION_11_77();
  v14 = sub_1E4205ED4();
  [v12 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v14];

  type metadata accessor for OfferListLockupCell();
  v15 = swift_getObjCClassFromMetadata();
  sub_1E384EE08(182);
  v16 = sub_1E4205ED4();

  [v12 registerClass:v15 forCellWithReuseIdentifier:v16];

  *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView) = v12;
  type metadata accessor for AlertTemplateView();
  v17 = v12;
  v18 = OUTLINED_FUNCTION_2_0();
  v21 = objc_msgSendSuper2(v19, v20, v18);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor_];

  v25 = OBJC_IVAR____TtC8VideosUI17AlertTemplateView_collectionView;
  OUTLINED_FUNCTION_5_0();
  [v23 addSubview_];
  if (v23[OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay] == 1)
  {
    v26 = *&v23[v25];
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 randomColor];
    [v28 setBackgroundColor_];
  }

  else
  {
    v29 = v17;
    v17 = v7;
    v7 = v23;
  }

  return v23;
}

void sub_1E3A9A4F8()
{
  v1 = v0;
  [v0 bounds];
  width = v264.size.width;
  x = v264.origin.x;
  height = v264.size.height;
  v3 = CGRectGetWidth(v264);
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 216);
  v6 = v5();
  v7 = 0.0;
  if (v6)
  {
    (*(*v6 + 176))(v247);
    v8 = *v247;
    v9 = *&v247[1];
    v10 = *&v247[2];
    v11 = *&v247[3];

    if ((v248 & 1) == 0)
    {
      v7 = sub_1E3952BE0(v8, v9, v10, v11);
    }
  }

  v255[0] = v3 - v7;
  v12 = v5();
  if (v12)
  {
    *&v13 = COERCE_DOUBLE((*(*v12 + 248))());
    v15 = v14;
  }

  else
  {
    *&v13 = 0.0;
    v15 = 1;
  }

  v261 = v13;
  LOBYTE(v262) = v15 & 1;
  sub_1E3793CAC();
  min<A>(_:_:)();
  v245 = v257;
  v244 = v1;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  v17 = *(v16 + 16);
  v18 = 0.0;
  v19 = 0.0;
  if (v17)
  {
    v20 = (v16 + 40);
    v21 = 0.0;
    do
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v24 = *(*v23 + 152);
        v25 = v22;

        v27 = v24(v249, v26);
        v28 = (*(*v23 + 248))(v27);
        OUTLINED_FUNCTION_7_106(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v215, v219, v222, v226, v229, height, v235, x, v242, *&v244, v245);
        OUTLINED_FUNCTION_10_75();
        v38 = v257;

        sub_1E3C8B764(v39, v38, 0.0);
        v41 = v40;

        if (v19 <= 0.0)
        {

          v43 = v250;
        }

        else
        {
          v42 = *v249;
          v43 = v250;

          if (v43)
          {
            v44 = 0.0;
          }

          else
          {
            v44 = v42;
          }

          v19 = v19 + fmax(v44, v21);
        }

        v19 = v41 + v19;
        if (v43)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = *&v249[2];
        }
      }

      v20 += 2;
      --v17;
    }

    while (v17);
  }

  OUTLINED_FUNCTION_21();
  v46 = (*(v45 + 264))();
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v46 + 40;
    v18 = 0.0;
    v49 = 0.0;
    do
    {
      v50 = *(v48 - 8);
      v51 = *v48;
      v52 = *(**v48 + 152);
      swift_retain_n();
      v53 = v50;
      v54 = v52(v251);
      v55 = (*(*v51 + 248))(v54);
      OUTLINED_FUNCTION_7_106(v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v215, v219, v222, v226, v229, height, v235, x, v242, *&v244, v245);
      OUTLINED_FUNCTION_10_75();
      v65 = v257;

      sub_1E3C8B764(v66, v65, 0.0);
      v68 = v67;

      if (v18 <= 0.0)
      {

        v70 = v252;
      }

      else
      {
        v69 = v251[2];
        v70 = v252;

        if (v70)
        {
          v71 = 0.0;
        }

        else
        {
          v71 = v69;
        }

        v18 = v18 + fmax(v71, v49);
      }

      v18 = v68 + v18;
      if (v70)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = v251[0];
      }

      v48 += 16;
      --v47;
    }

    while (v47);
  }

  OUTLINED_FUNCTION_21();
  v73 = *(v72 + 168);
  *&v74 = v72 + 168;
  v75 = v73();
  v76 = [v75 collectionViewLayout];

  objc_opt_self();
  v77 = swift_dynamicCastObjCClass();
  v78 = v77;
  if (v77)
  {
    v79 = [v77 itemSize];
    v216 = v80;
    v82 = v81;
  }

  else
  {

    v216 = 0.0;
    v82 = 0.0;
  }

  v83 = (v73)(v79);
  v84 = [v83 numberOfItemsInSection_];

  if (v78)
  {
    v85 = [v78 minimumLineSpacing];
    v87 = v86;
  }

  else
  {
    v87 = 0.0;
  }

  v243 = v73;
  v236 = v74;
  v88 = (v73)(v85);
  v89 = [v88 numberOfItemsInSection_];

  if (!__OFSUB__(v89, 1))
  {
    v90 = v82 * v84 + v87 * (v89 - 1);
    v91 = 0.0;
    if (v19 <= 0.0)
    {
      v92 = 0.0;
    }

    else
    {
      v92 = 50.0;
    }

    OUTLINED_FUNCTION_21();
    v94 = *(v93 + 144);
    v95 = v94();
    if (v18 <= 0.0)
    {
      v103 = 0.0;
    }

    else
    {
      v103 = 50.0;
    }

    v104 = v92;
    v105 = v92 + v19 + v96;
    v106 = v103;
    v107 = v103 + v90 + v105;
    v108 = v18 + v107;
    if (v18 > 0.0)
    {
      (v94)(v95);
      v91 = v97;
    }

    v109 = v108 + v91;
    v265.origin.x = OUTLINED_FUNCTION_9_75(v107, v103, v97, v98, v99, v100, v101, v102, v216, v219, v222, v226, v229, height, v236, x);
    v110 = v233;
    v265.size.height = v233;
    if (CGRectGetHeight(v265) >= v109)
    {
      v132 = v104;
      v130 = v106 + v104 + v90;
      v133 = v243();
      v131 = *MEMORY[0x1E69DDCE0];
      v225 = *(MEMORY[0x1E69DDCE0] + 16);
      [v133 _setGradientMaskInsets_];

      v134 = v243();
      [v134 setClipsToBounds_];

      v135 = v243();
      [v135 setContentInset_];

      v267.origin.x = OUTLINED_FUNCTION_9_75(v136, v137, v138, v139, v140, v141, v142, v143, v217, v220, v225, v227, v230, v233, v237, v240);
      v267.size.height = v110;
      v112 = floor((CGRectGetHeight(v267) - (v18 + v19 + v130)) * 0.5);
    }

    else
    {
      v111 = v233;
      v112 = (v94)();
      v113 = v243();
      [v113 setClipsToBounds_];

      v114 = v243();
      v115 = v114;
      if (v18 <= 0.0)
      {
        v116 = 90.0;
      }

      else
      {
        v116 = 50.0;
      }

      [v114 setContentInset_];

      v117 = v243();
      sub_1E3952C58();
      [v117 _setGradientMaskInsets_];

      v266.origin.x = OUTLINED_FUNCTION_9_75(v118, v119, v120, v121, v122, v123, v124, v125, v217, v220, v223, v227, v230, v233, v237, v240);
      v266.size.height = v111;
      v126 = CGRectGetHeight(v266);
      v127 = (v94)();
      v128 = 0.0;
      if (v18 > 0.0)
      {
        (v94)(0.0);
        v128 = v18 + v129;
      }

      v130 = v126 - v127 - v19 - v128;
      v131 = *MEMORY[0x1E69DDCE0];
      v224 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v221 = v78;
    OUTLINED_FUNCTION_21();
    v145 = (*(v144 + 312))();
    v146 = 0;
    *&v147 = v145 + 40;
    v234 = *&OBJC_IVAR____TtC8VideosUI17AlertTemplateView_debugUIOverlay;
    v246 = -*(v145 + 16);
    *&v241 = v145 + 40;
LABEL_56:
    v148 = (*&v147 + 16 * v146++);
    while (v246 + v146 != 1)
    {
      if ((v146 - 1) >= *(v145 + 16))
      {
        goto LABEL_99;
      }

      v149 = *(v148 - 1);
      v150 = *v148;
      *&v257 = v146 - 2;
      v258 = 0;
      v151 = v149;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31CB0);
      sub_1E3A9C128();
      sub_1E38D2054(&v257, &v261);
      v152 = v261;
      if (v261 <= 1)
      {
        v153 = 1;
      }

      else
      {
        v153 = v261;
      }

      if (v261 >= 2)
      {
        v154 = v262;
      }

      else
      {
        v154 = 0;
      }

      if (v261 >= 2)
      {
        v155 = v153;
      }

      else
      {
        v155 = 0;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        (*(*v150 + 152))(v253);
        v231 = v131;
        if (v254)
        {
          v157 = v131;
        }

        else
        {
          v157 = v253[0];
        }

        if (!v154 || (v158 = *(*v154 + 152), v159 = , v158(v255, v159), v160 = v255[2], , (v256 & 1) != 0))
        {
          v160 = v224;
        }

        v161 = fmax(v160, v157);
        if (v146 == 1)
        {
          v162 = 0.0;
        }

        else
        {
          v162 = v161;
        }

        v228 = sub_1E3280A90(0, &qword_1EE23AD70);
        v163 = v243();
        v164 = sub_1E4206F64();

        if (v164)
        {
          v165 = v243();
          [v165 contentInset];
          v167 = v166;
          v169 = v168;
          v171 = v170;
          v172 = v112;
          v173 = v130;
          v175 = v174;

          v176 = v175;
          v130 = v173;
          v112 = v172;
          v177 = v218 + sub_1E3952BE0(v167, v169, v171, v176);
          v178 = v130;
        }

        else
        {
          v179 = (*(*v150 + 248))();
          OUTLINED_FUNCTION_7_106(v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v218, *&v221, v224, *&v228, v231, v234, v238, v241, *&v243, *&v244, v245);
          min<A>(_:_:)();
          v189 = v257;

          v177 = sub_1E3C8B764(v190, v189, 0.0);
          v178 = v191;
        }

        v147 = v241;
        [v151 setFrame_];
        if (*(v244 + *&v234) == 1)
        {
          v192 = [objc_opt_self() randomColor];
          [v151 setVuiBackgroundColor_];
        }

        v112 = v112 + v162 + v178;
        v131 = v231;
        goto LABEL_56;
      }

      v156 = OUTLINED_FUNCTION_5_8();
      if (v152 >= 2)
      {
        [v153 frame];
      }

      [v151 setFrame_];

      ++v146;
      v148 += 2;
    }

    [v244 bounds];
    v193 = CGRectGetHeight(v268);
    v194 = (*((*MEMORY[0x1E69E7D40] & *v244) + 0x120))();
    v195 = v194;
    v196 = *(v194 + 16);
    if (!v196)
    {
LABEL_97:

      return;
    }

    v197 = v194 + 16 * v196 + 24;
    while (v196 <= *(v195 + 16))
    {
      --v196;
      v198 = *v197;
      v199 = *(**v197 + 248);
      v200 = *(v197 - 8);

      v202 = COERCE_DOUBLE(v199(v201));
      if (v203)
      {
        v202 = 0.0;
      }

      v204 = [v200 sizeThatFits_];
      v206 = v205;
      v208 = v207;
      v209 = *(*v198 + 152);
      v210 = v209(&v257, v204);
      v211 = v259;
      if (v260)
      {
        v211 = 0.0;
      }

      v212 = v193 - (v208 + v211);
      v213 = floor((width - v206) * 0.5);
      v209(&v261, v210);
      v214 = *&v261;
      if (v263)
      {
        v214 = 0.0;
      }

      v193 = v212 - v214;
      [v200 setFrame_];

      v197 -= 16;
      if (!v196)
      {
        goto LABEL_97;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
  }

  __break(1u);
}

void *sub_1E3A9B3B0()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI17AlertTemplateView_mainImageView);
  if (result)
  {
    result = [result image];
    if (result)
    {
      v2 = result;
      OUTLINED_FUNCTION_21();
      result = (*(v3 + 312))();
      v4 = result;
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      v14 = MEMORY[0x1E69E7CC0];
      v7 = result[2];
LABEL_4:
      v8 = 16 * v5 + 32;
      while (v7 != v5)
      {
        if (v5 >= v4[2])
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        ++v5;
        v9 = v8 + 16;
        v10 = *(v4 + v8);
        result = swift_dynamicCastObjCProtocolConditional();
        v8 = v9;
        if (result)
        {
          MEMORY[0x1E6910BF0](v10);
          if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          result = sub_1E4206324();
          v6 = v14;
          goto LABEL_4;
        }
      }

      result = sub_1E32AE9B0(v6);
      v11 = result;
      for (i = 0; v11 != i; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](i, v6);
          v13 = result;
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v13 = *(v6 + 8 * i + 32);
          result = swift_unknownObjectRetain();
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }

        [v13 sampleWithImage_];
        result = swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void *sub_1E3A9B698()
{
  v1 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A9B6D4(void *a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  v7 = *&v1[v5];
  if (v7)
  {
    if (v7 == v4)
    {
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  [v4 removeFromSuperview];
  v8 = *&v1[v5];
  if (v8)
  {
    v9 = v8;
    v10 = [v1 contentView];
    [v10 addSubview_];
  }

  [v1 setNeedsLayout];
LABEL_8:
}

uint64_t sub_1E3A9B7C4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A9B82C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E3A9B6D4(v3);
  }

  else
  {
    sub_1E3A9B6D4(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1E3A9B908()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 88))();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E4298880;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_1E3A9B998()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AlertTemplateView.AlertActionCell();
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  OUTLINED_FUNCTION_21();
  return (*(v1 + 96))(0);
}

void sub_1E3A9BA48()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AlertTemplateView.AlertActionCell();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 88))();
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }
}

id sub_1E3A9BB2C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView) = 0;
  v9 = type metadata accessor for AlertTemplateView.AlertActionCell();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v9);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  [v6 setClipsToBounds_];
  [v6 setOpaque_];
  [v6 setAutoresizingMask_];

  return v6;
}

void sub_1E3A9BC4C()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI17AlertTemplateView15AlertActionCell_buttonView) = 0;
  OUTLINED_FUNCTION_4_109();
  __break(1u);
}

id sub_1E3A9BCBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3A9BD04(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1E3280A90(0, &qword_1EE23AE80);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E6911E60](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1E6911E60](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1E4206F64();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void *sub_1E3A9BED8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

int64_t sub_1E3A9C008(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3A9C18C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D38);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1E3A9C128()
{
  result = qword_1ECF31CB8;
  if (!qword_1ECF31CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31CB8);
  }

  return result;
}

void *sub_1E3A9C18C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E3A9BED8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3A9C1F8()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    sub_1E3952C88();
    OUTLINED_FUNCTION_4_110();
    (*(*v1 + 160))(v4);
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3A9C2A0()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1E3A9C360()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3A9C988();
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1696))(2);
  OUTLINED_FUNCTION_36();
  (*(v3 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_5_107();
  v5(v4);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v7 + 2032))(1);
  v8 = *sub_1E3E5FD88();
  v9 = *(*v1 + 680);
  v10 = v8;
  v9(v8);
  sub_1E3952C58();
  OUTLINED_FUNCTION_4_110();
  (*(*v1 + 160))(v56);

  v11 = sub_1E374EA2C();
  sub_1E3A9CA58(v11);

  v12 = sub_1E3A9C2A0();
  (*(*v12 + 2048))();
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1696))(15);

  sub_1E3952C58();
  OUTLINED_FUNCTION_4_110();
  (*(*v12 + 160))(v56);
  OUTLINED_FUNCTION_13();
  v15 = *(v14 + 2096);
  v15();
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 2072))(2);

  (v15)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 2024))(1, 0);

  (v15)(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 2168))(7);

  v22 = (v15)(v21);
  v23 = *sub_1E3E5FD88();
  v24 = *(*v22 + 680);
  v25 = v23;
  v24(v23);

  v26.n128_u64[0] = 23.0;
  j__OUTLINED_FUNCTION_7_78(v26);
  OUTLINED_FUNCTION_3();
  type metadata accessor for RelationalLayout();
  v27 = sub_1E4177030();
  v28.n128_f64[0] = OUTLINED_FUNCTION_6();
  nullsub_1(v28, v29);
  OUTLINED_FUNCTION_3();
  sub_1E41776B0(v30, v31, v32, v33);
  v34 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v38, v39, v40, v41);
  v42 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v42, v43, v44, v45);
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  v47 = *(v46 + 1424);
  v48 = swift_retain_n();
  v47(v48);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v49 + 1424))(v27);

  sub_1E3A9C2A0();
  OUTLINED_FUNCTION_2_1();
  (*(v50 + 1424))(v27);

  sub_1E3C37CBC(v51, 23);

  sub_1E3C37CBC(v52, 15);

  sub_1E3C37CBC(v53, 60);

  v54 = sub_1E3A9C1F8();
  sub_1E3C37CBC(v54, 113);

  return v1;
}

uint64_t sub_1E3A9C988()
{
  v1 = v0;
  v2 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FFF14();
  sub_1E41FFF04();
  v9 = v8;
  v11 = v10;
  result = (*(v4 + 8))(v7, v2);
  *(v1 + 136) = v9;
  *(v1 + 144) = v11;
  return result;
}

uint64_t sub_1E3A9CA58(uint64_t a1)
{
  v2 = sub_1E41FFF54();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FFF14();
  OUTLINED_FUNCTION_13();
  (*(v8 + 2056))(2, 0);
  OUTLINED_FUNCTION_13();
  v9 = OUTLINED_FUNCTION_5_107();
  v10(v9);
  v11 = [objc_opt_self() systemGrayColor];
  OUTLINED_FUNCTION_13();
  (*(v12 + 680))();
  OUTLINED_FUNCTION_13();
  (*(v13 + 1696))(17);
  sub_1E41FFF24();
  sub_1E3952C58();
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  v21 = 0;
  (*(*a1 + 160))(v20);
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1E3A9CC6C()
{
  v0 = sub_1E38F0724();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

double sub_1E3A9CCF0()
{
  v0 = objc_opt_self();
  v1 = [v0 isMac];
  result = 30.0;
  if ((v1 & 1) == 0)
  {
    v3 = [v0 isVision];
    result = 28.0;
    if ((v3 & 1) == 0)
    {
      v4 = [v0 isTV];
      result = 34.0;
      if (v4)
      {
        return 48.0;
      }
    }
  }

  return result;
}

double sub_1E3A9CD78(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14[0] = 0;
  v11 = 0.0;
  v12 = 0;
  [objc_opt_self() vuiColor:a1 getRed:v14 green:&v13 blue:&v12 alpha:&v11];
  if (a2)
  {
    v4 = v11;
    v5 = a2;
    v6 = [v5 colorWithAlphaComponent_];
    sub_1E38F08C4(v6);

    sub_1E4203C14();
    v8 = v7;
  }

  else
  {
    sub_1E38F08C4(a1);
    sub_1E4203C14();
    return v9;
  }

  return v8;
}

void sub_1E3A9CE94(unint64_t a1, uint64_t a2, uint64_t (*a3)(id, double))
{
  v4 = a1;
  v5 = sub_1E32AE9B0(a1);
  v6 = v5;
  v7 = *(a2 + 16);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1E3A9D65C(0, v8 & ~(v8 >> 63), 0);
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:

    __break(1u);
    return;
  }

  v33 = v4 >> 62;
  v30 = v4;
  if (v8)
  {
    v9 = 0;
    v32 = v4 & 0xC000000000000001;
    v10 = v4 & 0xFFFFFFFFFFFFFF8;
    v28 = a2;
    v29 = a2 + 32;
    while (1)
    {
      v11 = v33 ? sub_1E4207384() : *(v10 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v32)
      {
        v12 = MEMORY[0x1E6911E60](v9, v4);
      }

      else
      {
        if (v9 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v12 = *(v4 + 8 * v9 + 32);
      }

      v6 = v12;
      if (v7 == v9)
      {
        goto LABEL_44;
      }

      v13 = a3(v12, *(v29 + 8 * v9));
      v15 = v14;

      v17 = *(v34 + 16);
      v16 = *(v34 + 24);
      v6 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_1E3A9D65C((v16 > 1), v17 + 1, 1);
      }

      ++v9;
      *(v34 + 16) = v6;
      v18 = v34 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v4 = v30;
      if (v8 == v9)
      {
        a2 = v28;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v10 = v4 & 0xFFFFFFFFFFFFFF8;
  v32 = v4 & 0xC000000000000001;
LABEL_21:
  v19 = a2 + 32;
  while (1)
  {
    v20 = v33 ? sub_1E4207384() : *(v10 + 16);
    if (v8 == v20)
    {
      break;
    }

    if (v32)
    {
      v21 = MEMORY[0x1E6911E60](v8, v4);
    }

    else
    {
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_40;
      }

      v21 = *(v4 + 8 * v8 + 32);
    }

    v22 = v21;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_39;
    }

    if (v7 == v8)
    {

      return;
    }

    if (v8 >= v7)
    {
      goto LABEL_41;
    }

    v6 = a3(v21, *(v19 + 8 * v8));
    v24 = v23;

    v26 = *(v34 + 16);
    v25 = *(v34 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1E3A9D65C((v25 > 1), v26 + 1, 1);
    }

    *(v34 + 16) = v26 + 1;
    v27 = v34 + 16 * v26;
    *(v27 + 32) = v6;
    *(v27 + 40) = v24;
    ++v8;
    v4 = v30;
  }
}

void sub_1E3A9D168()
{
  OUTLINED_FUNCTION_16_68();
  if (!v2)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_8();
      v3 = (*(v4 + 1816))();
      goto LABEL_6;
    }

LABEL_14:
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    goto LABEL_15;
  }

  if (!v0)
  {
    goto LABEL_14;
  }

  v3 = v1;
LABEL_6:
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1768);

  if (v6(v7) == 5 || (sub_1E3A9D374() & 1) == 0 || (OUTLINED_FUNCTION_8(), (*(v8 + 1720))(), (v9 & 1) != 0) || (OUTLINED_FUNCTION_8(), (*(v10 + 1744))(), (v11 & 1) != 0) || (OUTLINED_FUNCTION_8(), (v13 = (*(v12 + 1792))()) == 0) || !v3)
  {

    goto LABEL_14;
  }

  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17_64();
  OUTLINED_FUNCTION_19_59();

  sub_1E4203C24();
  OUTLINED_FUNCTION_14_85();
  sub_1E4201064();
  v14 = v17;
  v15 = v18;
  v16 = v19;
LABEL_15:
  OUTLINED_FUNCTION_15_76(v14, v15, v16);
}

uint64_t sub_1E3A9D374()
{
  sub_1E3A9D7B4();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E3A9D424()
{
  OUTLINED_FUNCTION_16_68();
  if (!v2)
  {
    if (v0)
    {
      OUTLINED_FUNCTION_8();
      v3 = (*(v4 + 1816))();
      goto LABEL_6;
    }

LABEL_15:
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_16;
  }

  if (!v0)
  {
    goto LABEL_15;
  }

  v3 = v1;
LABEL_6:
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 1768);

  if (v6(v7) == 5 || (sub_1E3A9D374() & 1) == 0 || (OUTLINED_FUNCTION_8(), (*(v8 + 1720))(), (v9 & 1) != 0) || (OUTLINED_FUNCTION_8(), (*(v10 + 1840))(), (v11 & 1) != 0) || (OUTLINED_FUNCTION_8(), (*(v12 + 1864))(), (v13 & 1) != 0) || (OUTLINED_FUNCTION_8(), (v15 = (*(v14 + 1792))()) == 0) || !v3)
  {

    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_64();
  OUTLINED_FUNCTION_19_59();

  sub_1E4203C24();
  OUTLINED_FUNCTION_14_85();
  sub_1E4201144();
  v16 = v19;
  v17 = v20;
  v18 = v21;
LABEL_16:
  OUTLINED_FUNCTION_15_76(v16, v17, v18);
}

char *sub_1E3A9D65C(char *a1, int64_t a2, char a3)
{
  result = sub_1E3A9D67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3A9D67C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3A9D7B4()
{
  result = qword_1EE275F80;
  if (!qword_1EE275F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE275F80);
  }

  return result;
}

uint64_t sub_1E3A9D80C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ViewInteractionStates();
  sub_1E3A9D8C8();
  v12[0] = sub_1E4201754();
  v12[1] = v10;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  sub_1E37FAED4(a2, a3);
  MEMORY[0x1E690DE70](v12, a4, &type metadata for TappableHighlightedArea, a5);

  return sub_1E37FAED8(a2, a3);
}

unint64_t sub_1E3A9D8C8()
{
  result = qword_1EE263DF8[0];
  if (!qword_1EE263DF8[0])
  {
    type metadata accessor for ViewInteractionStates();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE263DF8);
  }

  return result;
}

uint64_t sub_1E3A9D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ViewInteractionStates();
  sub_1E3A9D8C8();
  v8[0] = sub_1E4201754();
  v8[1] = v6;
  v8[2] = a1;

  MEMORY[0x1E690DE70](v8, a2, &type metadata for HighlightRowIfNeed, a3);
}

unint64_t sub_1E3A9D9C0()
{
  result = qword_1EE298530[0];
  if (!qword_1EE298530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE298530);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx06VideosB023TappableHighlightedArea33_6ECA81762323E6D1CADDB158CB2F2631LLVGAaBHPxAaBHD1__AhA0C8ModifierHPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1E42013A4();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1E3A9DA84()
{
  result = qword_1EE2A0D28[0];
  if (!qword_1EE2A0D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0D28);
  }

  return result;
}

void *sub_1E3A9DAD8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3A9DB34(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

void *sub_1E3A9DB88(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 1) = 0u;
    *(result + 3) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3A9DC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v8 = (*(*a3 + 744))();
    v9 = (*(*a3 + 864))();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  v9 = v8;
LABEL_6:
  if (a2)
  {

    if ((sub_1E3B1DDD8() & 1) != 0 && v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [objc_opt_self() clearColor];
    }

    v12 = v11;
    sub_1E38F08C4(v11);

    sub_1E3B1DDD8();

    sub_1E4203734();

    v13 = sub_1E4203A74();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D50);
    (*(*(v14 - 8) + 16))(a4, a1, v14);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D58);
    *(a4 + *(result + 36)) = v13;
  }

  else
  {
    type metadata accessor for ViewInteractionStates();
    sub_1E3A9D8C8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3A9DE50()
{
  v10 = *v0;
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = swift_allocObject();
  v4 = v0[1];
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 4);
  sub_1E3A9E050(&v10, &v9);
  sub_1E37FAED4(v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D48);
  OUTLINED_FUNCTION_1_11();
  v7 = sub_1E32752B0(v6, &qword_1ECF31D48);
  sub_1E383F5C4(1, sub_1E3A9DF5C, v3, v1, v2, v5, v7);
}

uint64_t sub_1E3A9DF5C()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    sub_1E383E8EC();
    sub_1E383FB9C();
    sub_1E4207284();
    if ((sub_1E4207294() & 1) == 0)
    {
      sub_1E42072A4();
    }
  }

  if (*(v0 + 16))
  {

    sub_1E3B1E260();
  }

  else
  {
    type metadata accessor for ViewInteractionStates();
    sub_1E3A9D8C8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3A9E050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3A9E0C0()
{
  result = qword_1EE289A78;
  if (!qword_1EE289A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31D58);
    sub_1E32752B0(&qword_1EE2888F0, &qword_1ECF31D50);
    sub_1E32752B0(&qword_1EE2889C8, &qword_1ECF31D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A78);
  }

  return result;
}

uint64_t sub_1E3A9E1BC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_sessionUUID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3A9E214(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_sessionUUID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E3A9E2D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_21_54() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0x644965676170 && a2 == 0xE600000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0x6570795465676170 && a2 == 0xE800000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == OUTLINED_FUNCTION_20_57() && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x656D614E65676170 && a2 == 0xE800000000000000;
            if (v12 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0x6F527361766E6163 && a2 == 0xEA0000000000746FLL;
              if (v13 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = a1 == (OUTLINED_FUNCTION_22_44() & 0xFFFFFFFFFFFFLL | 0x6570000000000000) && a2 == v14;
                if (v15 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_23();
                  v17 = a1 == 0xD000000000000011 && v16 == a2;
                  if (v17 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_23();
                    v19 = a1 == 0xD000000000000014 && v18 == a2;
                    if (v19 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_23();
                      v21 = a1 == 0xD000000000000012 && v20 == a2;
                      if (v21 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_23();
                        v23 = a1 == 0xD00000000000001ALL && v22 == a2;
                        if (v23 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_23();
                          v25 = a1 == 0xD000000000000018 && v24 == a2;
                          if (v25 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_23();
                            v27 = a1 == 0xD000000000000017 && v26 == a2;
                            if (v27 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_23();
                              v29 = a1 == 0xD00000000000001ALL && v28 == a2;
                              if (v29 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_23();
                                v31 = a1 == 0xD00000000000001DLL && v30 == a2;
                                if (v31 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_23();
                                  v33 = a1 == 0xD000000000000014 && v32 == a2;
                                  if (v33 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_23();
                                    v35 = a1 == 0xD000000000000012 && v34 == a2;
                                    if (v35 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_23();
                                      v37 = a1 == 0xD000000000000018 && v36 == a2;
                                      if (v37 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_23();
                                        v39 = a1 == 0xD000000000000016 && v38 == a2;
                                        if (v39 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == OUTLINED_FUNCTION_19_60() && a2 == v40)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v42 = OUTLINED_FUNCTION_0_54();

                                          if (v42)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3A9E77C(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_21_54();
      break;
    case 4:
      OUTLINED_FUNCTION_20_57();
      break;
    case 7:
      OUTLINED_FUNCTION_22_44();
      break;
    case 8:
    case 9:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
      OUTLINED_FUNCTION_23_43();
      break;
    case 10:
    case 13:
    case 17:
      OUTLINED_FUNCTION_23();
      break;
    case 20:
      OUTLINED_FUNCTION_19_60();
      break;
    default:
      return;
  }
}

uint64_t sub_1E3A9E9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3A9E2D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3A9EA14(uint64_t a1)
{
  v2 = sub_1E3A9EF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E3A9EA50(uint64_t a1)
{
  v2 = sub_1E3A9EF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MetricsRenderEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsRenderEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MetricsRenderEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31E10);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A9EF90();
  sub_1E4207C14();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_uuid);
  v13[15] = 0;
  sub_1E42078C4();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_3_112(1);
  sub_1E42078D4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageId);
  OUTLINED_FUNCTION_0_129(2);
  sub_1E42078C4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageType);
  OUTLINED_FUNCTION_0_129(3);
  sub_1E42078C4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageContext);
  OUTLINED_FUNCTION_0_129(4);
  sub_1E42078C4();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageName);
  OUTLINED_FUNCTION_0_129(5);
  sub_1E4207894();
  OUTLINED_FUNCTION_16_69(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_canvasRoot);
  OUTLINED_FUNCTION_0_129(6);
  sub_1E4207894();
  OUTLINED_FUNCTION_3_112(7);
  sub_1E42078F4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageInterruptTime);
  OUTLINED_FUNCTION_0_129(8);
  sub_1E42078B4();
  OUTLINED_FUNCTION_3_112(9);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(10);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(11);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(12);
  sub_1E42078F4();
  OUTLINED_FUNCTION_3_112(13);
  sub_1E42078F4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageAppearTime);
  OUTLINED_FUNCTION_0_129(14);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageDisappearTime);
  OUTLINED_FUNCTION_0_129(15);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderStartTime);
  OUTLINED_FUNCTION_0_129(16);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderEndTime);
  OUTLINED_FUNCTION_0_129(17);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestStartTime);
  OUTLINED_FUNCTION_0_129(18);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestEndTime);
  OUTLINED_FUNCTION_0_129(19);
  v11 = sub_1E42078B4();
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF8))(v11);
  OUTLINED_FUNCTION_0_129(20);
  sub_1E4207894();
  (*(v7 + 8))(v10, v5);
}

unint64_t sub_1E3A9EF90()
{
  result = qword_1ECF54AA0[0];
  if (!qword_1ECF54AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54AA0);
  }

  return result;
}

id MetricsRenderEvent.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31E18);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_sessionUUID];
  *v6 = 0;
  v6[1] = 0;
  v43 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3A9EF90();
  sub_1E4207C04();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for MetricsRenderEvent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = 0;
    v7 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v7, v9, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_uuid);
    OUTLINED_FUNCTION_2_106(1);
    v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_isAppLaunch] = sub_1E4207844() & 1;
    OUTLINED_FUNCTION_2_106(2);
    v10 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v10, v11, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageId);
    OUTLINED_FUNCTION_2_106(3);
    v12 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v12, v13, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageType);
    OUTLINED_FUNCTION_2_106(4);
    v14 = sub_1E4207834();
    OUTLINED_FUNCTION_17_65(v14, v15, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageContext);
    OUTLINED_FUNCTION_2_106(5);
    v16 = sub_1E4207804();
    OUTLINED_FUNCTION_17_65(v16, v17, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageName);
    OUTLINED_FUNCTION_2_106(6);
    v18 = sub_1E4207804();
    OUTLINED_FUNCTION_17_65(v18, v19, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_canvasRoot);
    OUTLINED_FUNCTION_2_106(7);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageAppearTime] = sub_1E4207874();
    OUTLINED_FUNCTION_2_106(8);
    v20 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v20, v21, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageInterruptTime);
    OUTLINED_FUNCTION_2_106(9);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestStartTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(10);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestEndTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(11);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationStartTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(12);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationEndTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(13);
    *&v1[OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageUserInteractiveTime] = sub_1E4207874();
    OUTLINED_FUNCTION_1_131(14);
    v22 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v22, v23, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageAppearTime);
    OUTLINED_FUNCTION_1_131(15);
    v24 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v24, v25, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_interstitialPageDisappearTime);
    OUTLINED_FUNCTION_1_131(16);
    v26 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v26, v27, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderStartTime);
    OUTLINED_FUNCTION_1_131(17);
    v28 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v28, v29, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_modelRenderEndTime);
    OUTLINED_FUNCTION_1_131(18);
    v30 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v30, v31, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestStartTime);
    OUTLINED_FUNCTION_1_131(19);
    v32 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v32, v33, OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_resourceRequestEndTime);
    OUTLINED_FUNCTION_1_131(20);
    v34 = sub_1E4207804();
    v36 = v35;
    v37 = v43;
    swift_beginAccess();
    *v37 = v34;
    v37[1] = v36;

    v38 = type metadata accessor for MetricsRenderEvent();
    v41.receiver = v3;
    v41.super_class = v38;
    v3 = objc_msgSendSuper2(&v41, sel_init);
    v39 = OUTLINED_FUNCTION_18_52();
    v40(v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1E3A9F664@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 280))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E3A9F6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1E69E6158];

  if (a3)
  {
    v18 = a3;
  }

  else
  {
    sub_1E41FE614();
    a2 = sub_1E41FE5E4();
    v18 = v19;
    (*(v14 + 8))(v17, v12);
  }

  *&v40 = a2;
  *(&v40 + 1) = v18;
  sub_1E329504C(&v40, v39);

  swift_isUniquelyReferenced_nonNull_native();
  v38[2] = a1;
  sub_1E32A87C0(v39, 1684632949, 0xE400000000000000);
  v20 = objc_opt_self();
  v21 = sub_1E4205C44();

  *&v40 = 0;
  v22 = [v20 dataWithJSONObject:v21 options:0 error:&v40];

  v23 = v40;
  if (v22)
  {
    v24 = sub_1E41FE464();
    v26 = v25;

    sub_1E41FDE24();
    swift_allocObject();
    sub_1E41FDE14();
    type metadata accessor for MetricsRenderEvent();
    sub_1E3A9FCA8();
    sub_1E41FDE04();
    sub_1E38DCCB0(v24, v26);

    return v40;
  }

  else
  {
    v27 = v23;
    v28 = sub_1E41FE274();

    swift_willThrow();
    v29 = sub_1E324FBDC();
    (*(v8 + 16))(v11, v29, v6);
    v30 = v28;
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067F4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      v35 = v28;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_1E323F000, v31, v32, "Could not parse MetricsRenderEvent from VUIDictionary: %@", v33, 0xCu);
      sub_1E3A66B00(v34);
      MEMORY[0x1E69143B0](v34, -1, -1);
      MEMORY[0x1E69143B0](v33, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v6);
    return 0;
  }
}

unint64_t sub_1E3A9FB38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestEndTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestStartTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3A9FB5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageUserInteractiveTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestEndTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3A9FB94()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationEndTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_viewModelCreationStartTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E3A9FBE0(void *a1, void *a2)
{
  v3 = (v2 + *a1);
  if (v3[1])
  {
    return 0;
  }

  v5 = *v3;
  v6 = (v2 + *a2);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v7 >= v5;
  v10 = v7 - v5;
  v11 = !v9;
  v12 = v8 | v11;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_1E3A9FC30()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageUserInteractiveTime);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageRequestStartTime);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A9FC54()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_pageName + 8))
  {
    OUTLINED_FUNCTION_11_2();
  }

  return OUTLINED_FUNCTION_32_0();
}

unint64_t sub_1E3A9FCA8()
{
  result = qword_1ECF315C0;
  if (!qword_1ECF315C0)
  {
    type metadata accessor for MetricsRenderEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF315C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsRenderEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MetricsRenderEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3A9FE64()
{
  result = qword_1ECF54CB0[0];
  if (!qword_1ECF54CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54CB0);
  }

  return result;
}

unint64_t sub_1E3A9FEBC()
{
  result = qword_1ECF54DC0;
  if (!qword_1ECF54DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF54DC0);
  }

  return result;
}

unint64_t sub_1E3A9FF14()
{
  result = qword_1ECF54DC8[0];
  if (!qword_1ECF54DC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF54DC8);
  }

  return result;
}

uint64_t sub_1E3A9FF6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_debugUI;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A9FFA0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI8CardView_debugUI;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3AA006C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI8CardView_cardViewLayout;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
}

void *sub_1E3AA0108()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_imageAndOverlayContainerView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3AA0150()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA01CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3AA0208(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
  OUTLINED_FUNCTION_14_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 216);
  v7 = a1;
  v8 = v6();
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ([v9 vui:*&v1[v10] addSubview:v4 oldView:?] && *&v1[v10])
    {
      [v9 vui_sendSubviewToBack_];
    }
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v13 = *MEMORY[0x1E69DF860];
  [v12 removeObserver:v1 name:*MEMORY[0x1E69DF860] object:0];

  v14 = OBJC_IVAR____TtC8VideosUI8CardView_imageView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*&v1[v14])
  {
    v15 = [v11 defaultCenter];
    [v15 addObserver:v1 selector:sel_mainImageLoadedNotificationHandler name:v13 object:*&v1[v14]];
  }

  [v1 vui_setNeedsLayout];
}

uint64_t sub_1E3AA03AC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3AA0428(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3AA04A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_appImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3AA04F0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA056C()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_overlayView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3AA05A8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI8CardView_overlayView;
  OUTLINED_FUNCTION_14_0();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  OUTLINED_FUNCTION_8_22();
  v7 = *(v6 + 216);
  v8 = a1;
  v9 = v7();
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC8VideosUI8CardView_overlayView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ([v10 vui:*&v2[v11] addSubview:v5 oldView:?] && *&v2[v11])
    {
      [v10 vui_bringSubviewToFront_];
    }
  }

  OUTLINED_FUNCTION_8_22();
  if ((*(v12 + 192))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v13 + 1920))();
    OUTLINED_FUNCTION_30();
    (*(v14 + 552))(v34);
    v15 = *&v34[3];

    if (v35)
    {
      OUTLINED_FUNCTION_26();
      (*(v16 + 552))(v36);
      if (v37)
      {

        goto LABEL_20;
      }

      v19 = *&v36[2];
      v20 = *&v36[3];
      v17 = *v36;
      v18 = *&v36[1];
    }

    else
    {
      v17 = OUTLINED_FUNCTION_4_94();
      v20 = v15;
    }

    v21 = sub_1E3952BE8(v17, v18, v19, v20);
    OUTLINED_FUNCTION_8_22();
    v22 += 36;
    v23 = *v22;
    v24 = (*v22)();
    v25 = [v24 vuiLayer];

    [v25 setCornerRadius_];
    if (v23())
    {
      sub_1E3280A90(0, &qword_1EE23AE80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0);
      if (swift_dynamicCast())
      {
        if (*(&v29 + 1))
        {
          sub_1E3251BE8(&v28, v31);
          v26 = v32;
          v27 = v33;
          __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
          (*(v27 + 48))(v26, v27, v21);

          __swift_destroy_boxed_opaque_existential_1(v31);
          goto LABEL_20;
        }
      }

      else
      {
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
      }
    }

    else
    {

      v30 = 0;
      v28 = 0u;
      v29 = 0u;
    }

    sub_1E3AA22F4(&v28);
  }

LABEL_20:
  [v2 mainImageLoadedNotificationHandler];
}

uint64_t sub_1E3AA091C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3AA0998(unint64_t a1, uint64_t a2, double *a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v12 = 0;
  v21 = a1 & 0xC000000000000001;
  v22 = sub_1E32AE9B0(a1);
  while (1)
  {
    if (v22 == v12)
    {

      return;
    }

    if (v21)
    {
      v13 = MEMORY[0x1E6911E60](v12, a1);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v15 = *a5;
    v28 = *a4;
    v23 = v15;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31EA8);
    sub_1E3827828(&unk_1EE23B460, &qword_1ECF31EA8);
    sub_1E38D2054(&v23, &v25);
    [a6 bounds];
    [a6 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v14 setFrame_];
    v16 = *a5;
    v28 = *a4;
    v23 = v16;
    v24 = 0;
    sub_1E38D2054(&v23, &v25);
    v17 = v26;
    if (v27)
    {
      v17 = 0.0;
    }

    *a3 = v17 + *a3;
    v18 = *a5 + 1;
    if (__OFADD__(*a5, 1))
    {
      goto LABEL_17;
    }

    *a5 = v18;
    v28 = *a7;
    v23 = v18;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
    sub_1E3827828(&unk_1ECF31EB0, &unk_1ECF2FC90);
    sub_1E38D2054(&v23, &v25);
    v19 = v25;
    if (LOBYTE(v26))
    {
      v19 = 0.0;
    }

    *a3 = v19 + *a3;

    ++v12;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1E3AA0C60(unint64_t a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, char a8, id *a9, double *a10, _BYTE *a11, void *a12, void **a13, _BYTE *a14, id *a15)
{
  v22 = 0;
  v82 = a1 & 0xC000000000000001;
  v83 = sub_1E32AE9B0(a1);
  v80 = a1 & 0xFFFFFFFFFFFFFF8;
  v81 = a1;
  while (1)
  {
    if (v83 == v22)
    {

      return;
    }

    if (v82)
    {
      v23 = MEMORY[0x1E6911E60](v22, v81);
    }

    else
    {
      if (v22 >= *(v80 + 16))
      {
        goto LABEL_74;
      }

      v23 = *(v81 + 8 * v22 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    v25 = [v23 textLayout];
    [v25 margin];
    v27 = v26;
    v29 = v28;
    v31 = v30;

    [v24 sizeThatFits_];
    if (v33 == 0.0 && v32 == 0.0)
    {
      goto LABEL_68;
    }

    VUIRoundValue();
    v35 = v34;
    sub_1E3A96E4C();
    sub_1E4206254();
    sub_1E4206254();
    if (v86 == v84 && v87 == v85)
    {
    }

    else
    {
      v37 = sub_1E42079A4();

      if ((v37 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if ((a8 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:
    sub_1E4206254();
    sub_1E4206254();
    if (v86 == v84 && v87 == v85)
    {

LABEL_24:
      if ((a8 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_25:
      v29 = v29 + a3;
      goto LABEL_26;
    }

    v39 = sub_1E42079A4();

    if (v39)
    {
      goto LABEL_24;
    }

LABEL_26:
    if (v27 <= 0.0)
    {
      if (v31 <= 0.0)
      {
        goto LABEL_55;
      }

      if (*a9)
      {
        v43 = *a9;
        sub_1E3C8B6B4(v24, v31);
        v45 = v44;

        v46 = v35 + v45;
        v47 = *a10;
      }

      else
      {
        [v24 bottomMarginWithBaselineMargin_];
        v47 = a6 - v35;
      }

      *a10 = v47 - v46;
      sub_1E4206254();
      sub_1E4206254();
      if (v86 == v84 && v87 == v85)
      {
        goto LABEL_48;
      }

      v50 = sub_1E42079A4();

      if (v50)
      {
        goto LABEL_49;
      }

      sub_1E4206254();
      sub_1E4206254();
      if (v86 == v84 && v87 == v85)
      {
LABEL_48:

LABEL_49:
        *a11 = 0;
        goto LABEL_55;
      }

      v52 = sub_1E42079A4();

      if (v52)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (*a9)
      {
        v40 = [*a9 attributedText];
        if (*a9)
        {
          v41 = *a9;
          if (v40)
          {
            v42 = [v40 attributedSubstringFromRange_];
          }

          else
          {
            v42 = 0;
          }

          [v41 setAttributedText_];

          v48 = *a9;
        }

        else
        {
          v48 = 0;
        }
      }

      else
      {
        v48 = 0;
        v40 = 0;
      }

      v53 = v48;
      sub_1E3C8B6B4(v48, v27);
      v55 = v54;

      if (*a9)
      {
        v56 = *a9;
        [v56 setAttributedText_];
      }

      *a10 = v55 + *a10;
    }

LABEL_55:
    v57 = *a10;
    if (a8)
    {
      [a12 bounds];
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v29 = v58;
      v57 = v59;
      v61 = v60;
      v63 = v62;
    }

    else
    {
      v61 = a2;
      v63 = v35;
    }

    [v24 setFrame_];
    v64 = *a13;
    v65 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a13 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v64 = sub_1E3AA7018(0, v64[2] + 1, 1, v64);
      *a13 = v64;
    }

    v68 = v64[2];
    v67 = v64[3];
    if (v68 >= v67 >> 1)
    {
      v64 = sub_1E3AA7018((v67 > 1), v68 + 1, 1, v64);
      *a13 = v64;
    }

    v64[2] = v68 + 1;
    v69 = &v64[5 * v68];
    *(v69 + 4) = v65;
    v69[5] = v29;
    v69[6] = v57;
    v69[7] = v61;
    v69[8] = v63;
    if (*a14 == 1)
    {
      *a10 = v35 + *a10;
    }

    v70 = *a9;
    *a9 = v65;
    v24 = v65;

    if (((*((*MEMORY[0x1E69E7D40] & *a12) + 0xA8))() & 1) == 0 || (v71 = sub_1E3AA73A8(v24), !v72))
    {
LABEL_68:

      goto LABEL_69;
    }

    v73 = v72;
    if (*a15)
    {
      v74 = v71;
      v75 = *a15;
      sub_1E42074B4();

      v86 = 0x206C6562614C200ALL;
      v87 = 0xE90000000000005BLL;
      MEMORY[0x1E69109E0](v74, v73);

      MEMORY[0x1E69109E0](0x20656D617246205DLL, 0xE90000000000005BLL);
      sub_1E3280A90(0, &unk_1ECF31E80);
      v76 = sub_1E389BF5C(v29, v57, v61, v63);
      MEMORY[0x1E69109E0](v76);

      MEMORY[0x1E69109E0](93, 0xE100000000000000);
      v77 = sub_1E4205ED4();

      sub_1E4206854();
    }

    else
    {
    }

LABEL_69:
    ++v22;
  }

  __break(1u);
LABEL_74:
  __break(1u);
}

void sub_1E3AA1480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI8CardView_labelViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI8CardView_labelViews;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v4)
  {
    if (v6)
    {

      v7 = OUTLINED_FUNCTION_27_0();
      v9 = sub_1E3AA6E44(v7, v8);

      if (v9)
      {
        goto LABEL_27;
      }
    }

    v10 = sub_1E32AE9B0(v4);
    for (i = 0; v10 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v4 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        goto LABEL_30;
      }

      [v12 removeFromSuperview];
    }

    v6 = *&v1[v5];
    if (!v6)
    {
LABEL_26:
      [v1 vui_setNeedsLayout];
      goto LABEL_27;
    }
  }

  else if (!v6)
  {
LABEL_27:

    return;
  }

  v14 = sub_1E32AE9B0(v6);

  v15 = 0;
  v16 = &selRef_textLayout;
  while (1)
  {
    if (v14 == v15)
    {

      goto LABEL_26;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](v15, v6);
    }

    else
    {
      if (v15 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v17 = *(v6 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    [v1 v16[466]];
    OUTLINED_FUNCTION_21();
    if ((*(v19 + 168))())
    {
      v20 = v16;
      v21 = [objc_opt_self() randomColor];
      [v18 setBackgroundColor_];

      v16 = v20;
    }

    ++v15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1E3AA16E4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI8CardView_labelViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3AA174C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3AA1480(v4);
  }

  else
  {
    sub_1E3AA1480(v3);
  }

  free(v2);
}

void *sub_1E3AA17B0()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_button;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3AA17F8()
{
  OUTLINED_FUNCTION_29_31();
  v3 = OUTLINED_FUNCTION_43_26();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v0 vui:*&v0[v2] addSubview:v1 oldView:?];
}

uint64_t sub_1E3AA1868()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA18E4()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_downloadIndicator;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3AA192C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA19A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_attributionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3AA19F0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3AA1A6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI8CardView_bottomSeparatorView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3AA1AB4()
{
  OUTLINED_FUNCTION_29_31();
  v3 = OUTLINED_FUNCTION_43_26();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v0 vui:*&v0[v2] addSubview:v1 oldView:?];
  [v0 vui_setNeedsLayout];
}

uint64_t sub_1E3AA1B34()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E3AA1BB0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_debugUI) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageAndOverlayContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_appImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_labelViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_button) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_downloadIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_bottomSeparatorView) = 0;
  v5 = type metadata accessor for CardView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1E3AA1CC8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_debugUI) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageAndOverlayContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_appImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_overlayView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_labelViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_button) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_downloadIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI8CardView_bottomSeparatorView) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3AA1DC0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DF860] object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CardView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3AA1FA0(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CardView();
  objc_msgSendSuper2(&v6, sel_setHighlighted_, a1 & 1);
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 240))();
  if (v4)
  {
    v5 = v4;
    [v4 setHighlighted_];
  }
}

uint64_t sub_1E3AA2088()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x1E69DF860];
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 240);
  v5 = v4();
  [v1 removeObserver:v0 name:v2 object:v5];

  v6 = v4();
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_25();
    [v8 v9];
  }

  v10 = v4();
  if (v10)
  {
    v11 = v10;
    [v10 setImageContainsCornerRadius_];
  }

  v12 = v4();
  if (v12)
  {
    v13 = v12;
    [v12 setImage_];
  }

  OUTLINED_FUNCTION_21();
  v15 = (*(v14 + 264))();
  if (v15)
  {
    v16 = v15;
    [v15 setImage_];
  }

  OUTLINED_FUNCTION_21();
  v18 = (*(v17 + 288))();
  if (v18 && (v25[0] = v18, sub_1E3280A90(0, &qword_1EE23AE80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v23 + 1))
    {
      sub_1E3251BE8(&v22, v25);
      __swift_project_boxed_opaque_existential_1(v25, v25[3]);
      v19 = OUTLINED_FUNCTION_27_0();
      v20(v19);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  return sub_1E3AA22F4(&v22);
}

uint64_t sub_1E3AA22F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3AA235C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v11 = (*(v10 + 192))();
  v388 = v0;
  if (v4)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_8();
      v13 = (*(v12 + 2088))();

      if (v13 != 20 && (sub_1E3D23FE4(v13) & 1) != 0)
      {
LABEL_9:
        sub_1E3AA45D4();
        goto LABEL_245;
      }
    }

    sub_1E3AA6160();
    v16 = sub_1E3AA6240(v8);
    v17 = *((*v9 & *v0) + 0x138);
    v18 = (v17)(v16);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1E32AE9B0(v18);
      v21 = 0;
      v22 = 0;
      v23 = 0.0;
      while (1)
      {
        if (v20 == v21)
        {

          v2 = v388;
          goto LABEL_57;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1E6911E60](v21, v19);
        }

        else
        {
          if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_249;
          }

          v24 = *(v19 + 8 * v21 + 32);
        }

        v25 = v24;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v26 = OUTLINED_FUNCTION_49_6();
        [v27 v28];
        v30 = v29;
        v32 = v31;
        VUIRoundValue();
        v23 = v23 + v33;
        v34 = [v25 textLayout];
        [v34 margin];
        v36 = v35;

        if (v30 != 0.0 || v32 != 0.0)
        {
          if (v36 > 0.0)
          {
            v37 = v22;
            sub_1E3C8B6B4(v22, v36);
            v39 = v38;

            v23 = v23 + v39;
          }

          if (v30 != 0.0)
          {
            goto LABEL_24;
          }
        }

        if (v32 == 0.0)
        {

          ++v21;
        }

        else
        {
LABEL_24:

          ++v21;
          v22 = v25;
        }
      }

      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
      return;
    }

    v22 = 0;
LABEL_57:
    OUTLINED_FUNCTION_5_4();
    v74 = (*(v73 + 384))();
    if (v74)
    {
      v75 = v74;
      if (v8 > 0.0)
      {
        [v74 prepareLayoutWithMaxWidth_];
      }

      v76 = 0.0;
      v77 = (v17)([v75 sizeThatFits_]);
      if (v77)
      {
        v78 = sub_1E37CB21C(v77);

        if (v78)
        {
          OUTLINED_FUNCTION_21();
          v80 = (*(v79 + 192))();
          if (v80)
          {
            v76 = *(v80 + 200);
          }

          [v78 bottomMarginWithBaselineMargin_];
        }

        else
        {
        }

        v2 = v388;
      }

      else
      {
      }
    }

    if (sub_1E3A92050() & 1) != 0 || (sub_1E3A92050())
    {
      v100 = 0;
      if (!v22)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v100 = sub_1E3A92050() ^ 1;
      if (!v22)
      {
        goto LABEL_92;
      }
    }

    v101 = objc_opt_self();
    v102 = v22;
    if (([v101 isTV] | v100))
    {
      v103 = [v102 textLayout];
      [v103 margin];
      v105 = v104;

      v106 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
      if (v105 > 0.0)
      {
        [v102 bottomMarginWithBaselineMargin_];
      }

      goto LABEL_93;
    }

LABEL_92:
    v106 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
LABEL_93:
    v107 = [v2 vuiTraitCollection];
    v108 = [v107 v106[249]];

    if (v108)
    {
      OUTLINED_FUNCTION_5_4();
      v110 = (*(v109 + 336))();
      if (v110)
      {
        v111 = v110;
        type metadata accessor for ContextMenuButton();
        v112 = swift_dynamicCastClass();

        if (v112)
        {
          v113 = v17();
          if (v113)
          {
            v114 = sub_1E37CB21C(v113);

            if (v114)
            {
              v115 = OUTLINED_FUNCTION_49_6();
              [v116 v117];
              v118 = OUTLINED_FUNCTION_49_6();
              [v119 v120];
              VUIRoundValue();
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_5_4();
    (*(v121 + 440))(v8);
    VUIRoundValue();

    goto LABEL_245;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_8();
    v15 = (*(v14 + 2088))();

    if (v15 != 20 && (sub_1E3D23FE4(v15) & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  v409 = 0;
  OUTLINED_FUNCTION_5_4();
  v370 = *(v40 + 168);
  v372 = v6;
  if ((v370() & 1) != 0 && (v41 = [objc_allocWithZone(MEMORY[0x1E696AD60]) init], (v409 = v41) != 0))
  {
    v42 = v41;
    v399 = 0x5B2064726143;
    *&v400 = -2.12455197e183;
    *&v396 = v0;
    v43 = sub_1E4207944();
    v45 = v44;
    MEMORY[0x1E69109E0](v43);

    MEMORY[0x1E69109E0](93, 0xE100000000000000);
    sub_1E4205ED4();
    OUTLINED_FUNCTION_11_5();

    v371 = v42;
    sub_1E4206854();
  }

  else
  {
    v371 = 0;
  }

  v46 = [v0 bounds];
  v48 = v47;
  v373 = v49;
  v381 = (*((*v9 & *v0) + 0x1B8))(v46, v47);
  v51 = v50;
  v52 = sub_1E3AA6160();
  sub_1E3AA6240(v48);
  MaxY = v53;
  v55 = [v0 vuiIsRTL];
  v56 = sub_1E3A92050();
  v57 = 0.0;
  v385 = v51;
  if (v56)
  {
    v57 = v51;
  }

  v408 = v57;
  v407 = 0;
  if (sub_1E3A92050())
  {
    i = 1;
  }

  else
  {
    i = sub_1E3A92050();
  }

  v406 = i & 1;
  v405 = 0;
  OUTLINED_FUNCTION_5_4();
  v386 = *(v59 + 312);
  v60 = v386();
  v387 = v55;
  v376 = v52;
  if (!v60)
  {
    goto LABEL_51;
  }

  v61 = v60;
  v382 = i;
  v62 = sub_1E32AE9B0(v60);
  v63 = 0;
  v64 = 0;
  while (v62 != v64)
  {
    if ((v61 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x1E6911E60](v64, v61);
    }

    else
    {
      if (v64 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_250;
      }

      v65 = *(v61 + 8 * v64 + 32);
    }

    v66 = v65;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_248;
    }

    if (v63)
    {

      goto LABEL_46;
    }

    v67 = [v65 textLayout];
    [v67 margin];
    v69 = v68;

    if (v69 > 0.0)
    {
      v63 = 1;
      ++v64;
    }

    else
    {
LABEL_46:
      ++v64;
    }
  }

  v405 = v63;

  LOBYTE(v55) = v387;
  v52 = v376;
  i = v382;
  if (v63)
  {
    v71 = v388;
    v72 = (v386)(v70);
    goto LABEL_53;
  }

LABEL_51:
  v71 = v388;
  v72 = v386();
  if (v72)
  {
    v72 = sub_1E3AA65A0(v72);
LABEL_53:
    v404 = MEMORY[0x1E69E7CC0];
    if (v72)
    {
      sub_1E3AA0C60(v72, MaxY, v381, v385, v48, v373, v52, v55, &v407, &v408, &v406, v71, &v404, &v405, &v409);

      if ((v406 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    else if ((i & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_68:
    v81 = (v386)(v72);
    if (v81)
    {
      v82 = v81;
      v83 = sub_1E37FDFF8(v81);
      if (v83)
      {
        i = v83;
        v84 = sub_1E37CB21C(v82);
        if (v84)
        {
          v383 = v84;
          [v84 frame];
          MaxX = CGRectGetMaxX(v411);
          v86 = i;
          [v86 frame];
          v87 = (v373 - (MaxX - CGRectGetMinY(v412))) * 0.5;
          [v86 frame];
          OUTLINED_FUNCTION_18_3();
          v89 = v88;
          v91 = v90;

          v413.origin.x = OUTLINED_FUNCTION_4_94();
          v413.size.height = v91;
          v408 = v87 - CGRectGetMinY(v413);
          v92 = sub_1E32AE9B0(v82);
          for (i = 0; v92 != i; ++i)
          {
            if ((v82 & 0xC000000000000001) != 0)
            {
              v93 = MEMORY[0x1E6911E60](i, v82);
            }

            else
            {
              if (i >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_253;
              }

              v93 = *(v82 + 8 * i + 32);
            }

            v94 = v93;
            if (__OFADD__(i, 1))
            {
              goto LABEL_252;
            }

            [v93 frame];
            OUTLINED_FUNCTION_19_61();
            v96 = v95;
            v98 = v97;
            VUIRoundValue();
            [v94 setFrame_];
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v404 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      goto LABEL_68;
    }
  }

LABEL_104:
  v122 = 0.0;
  if (sub_1E3A92050() & 1) != 0 || !(v387 & 1 | ((sub_1E3A92050() & 1) == 0)) || (sub_1E3A92050() & v387)
  {
LABEL_107:
    v123 = 0.0;
  }

  else
  {
    if (v387 & 1 | ((sub_1E3A92050() & 1) == 0) && (sub_1E3A92050() & v387 & 1) == 0)
    {
      v122 = v373 - v385;
      goto LABEL_107;
    }

    v123 = v48 - v381;
  }

  OUTLINED_FUNCTION_21();
  v125 = *(v124 + 216);
  v126 = v125();
  if (v126)
  {
    v127 = v126;
    [v126 setFrame_];
  }

  OUTLINED_FUNCTION_21();
  v129 = *(v128 + 240);
  v130 = v129();
  v379 = v122;
  v384 = v123;
  if (v130)
  {
    v131 = v130;
    v132 = v125();
    if (v132)
    {
      v133 = v132;
      [v132 bounds];
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      OUTLINED_FUNCTION_38_25();
    }

    v134 = OUTLINED_FUNCTION_4_94();
    [v135 v136];
  }

  OUTLINED_FUNCTION_21();
  v137 += 36;
  v138 = *v137;
  v139 = (*v137)();
  if (v139 && (v399 = v139, sub_1E3280A90(0, &qword_1EE23AE80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v397 + 1))
    {
      sub_1E3251BE8(&v396, &v399);
      v140 = *&v402;
      i = v403;
      __swift_project_boxed_opaque_existential_1(&v399, *&v402);
      v141 = v129();
      v142 = [v141 image];

      (*(i + 8))(v142, v140, i, v381, v385);
      v143 = __swift_destroy_boxed_opaque_existential_1(&v399);
      goto LABEL_121;
    }
  }

  else
  {
    v398 = 0;
    v396 = 0u;
    v397 = 0u;
  }

  v143 = sub_1E3AA22F4(&v396);
LABEL_121:
  v144 = v388;
  v145 = (v138)(v143);
  if (v145)
  {
    v146 = v145;
    v147 = v125();
    if (v147)
    {
      v148 = v147;
      [v147 bounds];
      OUTLINED_FUNCTION_18_3();
    }

    else
    {
      OUTLINED_FUNCTION_38_25();
    }

    v149 = OUTLINED_FUNCTION_4_94();
    [v150 v151];
  }

  v152 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7_20();
  v154 = (*(v153 + 264))();
  v155 = MEMORY[0x1E69DDCE0];
  v380 = v48;
  if (v154)
  {
    v156 = v154;
    OUTLINED_FUNCTION_35_32();
    if (!v157())
    {

      goto LABEL_135;
    }

    OUTLINED_FUNCTION_26_0();
    v158 += 243;
    v159 = *v158;
    i = v158;
    (*v158)();
    OUTLINED_FUNCTION_30();
    (*(v160 + 152))(v410);

    v162 = *(v159)(v161);
    (*(v162 + 2288))();
    OUTLINED_FUNCTION_18_3();

    v414.origin.x = v123;
    v414.origin.y = v122;
    v414.size.width = v381;
    v414.size.height = v385;
    CGRectGetHeight(v414);
    OUTLINED_FUNCTION_44_29();
    CGRectGetHeight(v415);
    if (sub_1E3A92050())
    {
      v416.origin.x = v123;
      v416.origin.y = v122;
      v416.size.width = v381;
      v416.size.height = v385;
      Height = CGRectGetHeight(v416);
      if (!v387)
      {
LABEL_134:
        OUTLINED_FUNCTION_44_29();
        [v165 v166];

        goto LABEL_135;
      }
    }

    else
    {
      Height = 0.0;
      if ((v387 & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    [v388 bounds];
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_44_29();
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v1 = v164;
    goto LABEL_134;
  }

LABEL_135:
  v394 = 0u;
  v395 = 0u;
  v167 = [v388 vuiTraitCollection];
  v168 = [v167 isAXLargeEnabled];

  v169 = (*((*v152 & *v388) + 0x150))();
  if (!v169)
  {
    VUIRoundValue();
    v176 = v175;
    OUTLINED_FUNCTION_41_29();
    v178 = v177();
    v179 = v387;
    if (!v178)
    {
      goto LABEL_223;
    }

    sub_1E37FDFF8(v178);
    OUTLINED_FUNCTION_122();

    if (!i)
    {
      goto LABEL_223;
    }

    OUTLINED_FUNCTION_7_20();
    v181 = (*(v180 + 360))();
    if (!v181)
    {

      goto LABEL_223;
    }

    v182 = v181;
    v183 = i;
    [v183 sizeThatFits_];
    if (v176 >= v184)
    {
      v185 = v184;
    }

    else
    {
      v185 = v176;
    }

    [v183 frame];
    v187 = v186;
    v367 = v189;
    v369 = v188;
    v366 = v190;
    v365 = v183;

    OUTLINED_FUNCTION_35_32();
    if (!v191() || (OUTLINED_FUNCTION_30(), (*(v192 + 2016))(), OUTLINED_FUNCTION_122(), , OUTLINED_FUNCTION_26(), (*(v193 + 152))(&v399), v195 = *&v399, v194 = *&v400, v196 = v401, v1 = v402, , (v403 & 1) != 0))
    {
      v195 = *v155;
      v194 = v155[1];
      v196 = v155[2];
      v1 = v155[3];
    }

    v374 = v196;
    v377 = v195;
    [v182 vui:v8 sizeThatFits:v372];
    v198 = v197;
    v200 = v199;
    *&v395 = v197;
    *(&v395 + 1) = v199;
    if (v8 - v197 - v1 >= v187 + v185 + v194)
    {
      v201 = v187 + v185 + v194;
    }

    else
    {
      v201 = v8 - v197 - v1;
    }

    *&v394 = v201;
    v417.origin.x = v187;
    v417.size.width = v367;
    v417.origin.y = v369;
    v417.size.height = v366;
    MidY = CGRectGetMidY(v417);
    v203 = CGRect.center.getter(v201, 0.0, v198, v200);
    v204 = CGRect.center.setter(v203, MidY);
    v205 = v201;
    v206 = 0.0;
    v208 = *(&v395 + 1);
    v207 = *&v395;
    if (v387)
    {
      [v388 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_16();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v205 = v209;
      v206 = v210;
      v207 = v211;
      v208 = v212;
      *&v394 = v209;
      *(&v394 + 1) = v210;
      *&v395 = v211;
      *(&v395 + 1) = v212;
    }

    v418.origin.x = OUTLINED_FUNCTION_16();
    Width = CGRectGetWidth(v418);
    v214 = sub_1E3952BE0(v377, v194, v374, v1);
    v215 = v404;
    v216 = v404[2];
    if (!v216)
    {

      v218 = MEMORY[0x1E69E7CC0];
LABEL_221:
      v404 = v218;
      goto LABEL_222;
    }

    v375 = v182;
    v378 = v176 - (Width + v214);
    *&v396 = MEMORY[0x1E69E7CC0];
    sub_1E3AA7250(0, v216, 0);
    v217 = 0;
    v218 = v396;
    v219 = (v215 + 8);
    while (v217 < v215[2])
    {
      v1 = *(v219 - 3);
      v220 = *(v219 - 2);
      v221 = *(v219 - 1);
      v222 = *v219;
      v223 = *(v219 - 4);
      v419.origin.x = OUTLINED_FUNCTION_16_70();
      v419.size.width = v221;
      v419.size.height = v222;
      v433.origin.x = v205;
      v433.origin.y = v206;
      v433.size.width = v207;
      v433.size.height = v208;
      if (CGRectIntersectsRect(v419, v433))
      {
        if (v387)
        {
          [v388 bounds];
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_16_70();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          OUTLINED_FUNCTION_19_61();
          v221 = v224;
          v222 = v225;
        }

        else
        {
          v221 = v378;
        }

        v226 = OUTLINED_FUNCTION_16_70();
        [v227 v228];
      }

      *&v396 = v218;
      v230 = v218[2];
      v229 = v218[3];
      if (v230 >= v229 >> 1)
      {
        v232 = OUTLINED_FUNCTION_35(v229);
        sub_1E3AA7250(v232, v230 + 1, 1);
        v218 = v396;
      }

      v218[2] = v230 + 1;
      v231 = &v218[5 * v230];
      *(v231 + 4) = v223;
      ++v217;
      v231[5] = v1;
      *(v231 + 6) = v220;
      v231[7] = v221;
      v231[8] = v222;
      v219 += 5;
      if (v216 == v217)
      {

        v144 = v388;
        goto LABEL_221;
      }
    }

    goto LABEL_254;
  }

  v170 = v169;
  v171 = v155[2];
  v1 = v155[3];
  memset(v393, 0, 32);
  v392 = 0;
  OUTLINED_FUNCTION_35_32();
  if (v172())
  {
    OUTLINED_FUNCTION_30();
    v174 = (*(v173 + 2088))();
  }

  else
  {
    v174 = 20;
  }

  type metadata accessor for ContextMenuButton();
  v364 = v171;
  v368 = v1;
  if (!swift_dynamicCastClass())
  {
    goto LABEL_183;
  }

  if (v174 == 20)
  {
    if (!v168)
    {
      goto LABEL_168;
    }

LABEL_173:
    OUTLINED_FUNCTION_41_29();
    v237 = v236();
    if (v237)
    {
      v235 = sub_1E37CB21C(v237);
      goto LABEL_175;
    }

LABEL_183:
    OUTLINED_FUNCTION_32_39();
  }

  else
  {
    LOBYTE(v399) = v174;
    LOBYTE(v396) = 8;
    sub_1E3AA77D0();
    if (OUTLINED_FUNCTION_37_29())
    {
      goto LABEL_173;
    }

    LOBYTE(v399) = v174;
    LOBYTE(v396) = 9;
    if (OUTLINED_FUNCTION_37_29())
    {
      goto LABEL_173;
    }

    LOBYTE(v399) = v174;
    LOBYTE(v396) = 12;
    if ((OUTLINED_FUNCTION_37_29() | v168))
    {
      goto LABEL_173;
    }

LABEL_168:
    OUTLINED_FUNCTION_41_29();
    v234 = v233();
    if (!v234)
    {
      goto LABEL_183;
    }

    v235 = sub_1E37FDFF8(v234);
LABEL_175:
    v238 = v235;

    OUTLINED_FUNCTION_32_39();
    if (v238)
    {
      OUTLINED_FUNCTION_35_32();
      v240 = v1;
      if (v239())
      {
        OUTLINED_FUNCTION_30();
        (*(v241 + 1992))();
        OUTLINED_FUNCTION_122();

        OUTLINED_FUNCTION_26();
        (*(v242 + 152))(&v396);
        v243 = *(&v397 + 1);

        v240 = v1;
        if ((v398 & 1) == 0)
        {
          v240 = v243;
        }
      }

      if (v168)
      {
        v392 = 1;
        v244 = v238;
        [v244 frame];
        [v244 numberOfLinesRequiredForTextWidth_];
        [v244 frame];
        OUTLINED_FUNCTION_18_3();
        v246 = v245;

        v421.origin.x = OUTLINED_FUNCTION_4_94();
        v421.size.height = v246;
        CGRectGetHeight(v421);
        VUIRoundValue();
        v171 = v247;
        v393[0].size.height = v247;
        v248 = objc_opt_self();
        v249 = *sub_1E391D8B8();
        v250 = [v388 vuiTraitCollection];
        [v248 scaleContentSizeValue:v250 forTraitCollection:v249];
        v1 = v251;

        v393[0].size.width = v1;
        if (v407)
        {
          [v407 frame];
          MaxY = CGRectGetMaxY(v422);
        }

        v393[0].origin.y = MaxY;
      }

      else
      {
        v269 = sub_1E391D8AC();
        v270 = *v269;
        v271 = v269[1];
        v272 = [v388 vuiTraitCollection];
        v273 = OUTLINED_FUNCTION_17_4();
        sub_1E3AC5C5C(v274, v273, v275);
        OUTLINED_FUNCTION_18_3();

        v393[0].size.width = v270;
        v276 = v238;
        [v276 frame];
        v277 = CGRectGetHeight(v424);
        if (v277 < v271)
        {
          v271 = v277;
        }

        v393[0].size.height = v271;
        [v276 frame];
        v279 = v278;
        v281 = v280;
        v283 = v282;
        v285 = v284;

        v425.origin.x = v279;
        v425.origin.y = v281;
        v425.size.width = v283;
        v425.size.height = v285;
        v286 = CGRectGetMidY(v425);
        OUTLINED_FUNCTION_44_29();
        v291 = CGRect.center.getter(v287, v288, v289, v290);
        CGRect.center.setter(v291, v286);
        v1 = v270;
        v171 = v393[0].size.height;
        OUTLINED_FUNCTION_9_76();
        v393[0].origin.x = v380 - CGRectGetWidth(v426) - v240;
        OUTLINED_FUNCTION_9_76();
        v292 = fmin(CGRectGetWidth(v427) + -40.0, 0.0);
        OUTLINED_FUNCTION_9_76();
        v293 = CGRectGetHeight(v428);
        v294 = sub_1E3952C10(v292, fmin(v293 + -30.0, 0.0));
        sub_1E3CEE8A0(v294, v295, v296, v297, v393[0].origin.x);
        OUTLINED_FUNCTION_45_29();
      }
    }
  }

  OUTLINED_FUNCTION_19();
  v423.origin.x = OUTLINED_FUNCTION_24_39();
  if (CGRectEqualToRect(v423, v434))
  {
    [v170 vui:v380 sizeThatFits:v373];
    OUTLINED_FUNCTION_19_61();
    OUTLINED_FUNCTION_35_32();
    v179 = v387;
    if (v252())
    {
      OUTLINED_FUNCTION_30();
      (*(v253 + 1968))();
      OUTLINED_FUNCTION_122();

      OUTLINED_FUNCTION_26();
      (*(v254 + 152))(&v399);
      v255 = v402;

      if (v403)
      {
        v255 = v368;
      }
    }

    else
    {
      v255 = v368;
    }

    sub_1E3A92050();
    OUTLINED_FUNCTION_41_29();
    v258 = v257();
    v256 = MEMORY[0x1E69E7D40];
    if (v258)
    {
      v259 = sub_1E37FDFF8(v258);

      if (v259)
      {
        v260 = [v259 textLayout];
        v261 = [v260 maximumContentSizeCategory];

        v262 = objc_opt_self();
        v263 = [v259 textLayout];
        [v263 margin];
        v265 = v264;

        v266 = [v388 vuiTraitCollection];
        [v262 scaleContentSizeValue:v266 forTraitCollection:v261 maximumContentSizeCategory:v265];

        v267 = [v259 vuiFont];
        if (v267)
        {
          v268 = v267;
          [v267 capHeight];
        }

        v144 = v388;
      }
    }

    VUIRoundValue();
    v299 = v298;
    OUTLINED_FUNCTION_9_76();
    v393[0].origin.x = v380 - CGRectGetWidth(v429) - v255;
    v393[0].origin.y = v299;
    v393[0].size.width = v1;
    v393[0].size.height = v171;
    if (v387)
    {
LABEL_204:
      [v144 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_24_39();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      OUTLINED_FUNCTION_45_29();
      [v144 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_9_76();
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v1 = v300;
      v393[0].origin.x = v301;
      v393[0].origin.y = v302;
      v393[0].size.width = v300;
      v393[0].size.height = v303;
    }
  }

  else
  {
    v256 = MEMORY[0x1E69E7D40];
    v179 = v387;
    if (v387)
    {
      goto LABEL_204;
    }
  }

  v304 = OUTLINED_FUNCTION_24_39();
  [v305 v306];
  OUTLINED_FUNCTION_9_76();
  CGRectGetWidth(v430);
  v307 = VUIRoundValue();
  v391 = v308;
  v389 = (*((*v256 & *v144) + 0x168))(v307);
  MEMORY[0x1EEE9AC00](v389);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31E98);
  sub_1E4148DE0(sub_1E3AA7590);

  if (v392)
  {

    v48 = v380;
    goto LABEL_223;
  }

  v309 = v404;
  v310 = v404[2];
  if (v310)
  {
    v390 = MEMORY[0x1E69E7CC0];
    sub_1E3AA7250(0, v310, 0);
    v311 = 0;
    v312 = v390;
    v313 = v309 + 8;
    v1 = v393[0].size.width;
    while (v311 < v309[2])
    {
      v314 = *(v313 - 3);
      v315 = *(v313 - 2);
      v317 = *(v313 - 1);
      v316 = *v313;
      v318 = *(v313 - 4);
      v431.origin.x = OUTLINED_FUNCTION_21_55();
      if (CGRectIntersectsRect(v431, v393[0]))
      {
        v317 = v391;
        if (v387)
        {
          [v388 bounds];
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_21_55();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v314 = v319;
          v315 = v320;
          v317 = v321;
          v316 = v322;
        }

        v323 = OUTLINED_FUNCTION_21_55();
        [v324 v325];
      }

      v327 = v390[2];
      v326 = v390[3];
      if (v327 >= v326 >> 1)
      {
        v329 = OUTLINED_FUNCTION_35(v326);
        sub_1E3AA7250(v329, v327 + 1, 1);
      }

      v390[2] = v327 + 1;
      v328 = &v390[5 * v327];
      v328[4] = v318;
      ++v311;
      v328[5] = v314;
      v328[6] = v315;
      v328[7] = v317;
      v328[8] = v316;
      v313 += 5;
      if (v310 == v311)
      {

        goto LABEL_219;
      }
    }

    goto LABEL_251;
  }

  v312 = MEMORY[0x1E69E7CC0];
LABEL_219:
  v404 = v312;
  v144 = v388;
LABEL_222:
  v48 = v380;
  v179 = v387;
LABEL_223:
  v330 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7_20();
  v332 = (*(v331 + 360))();
  if (v332)
  {
    v333 = v332;
    [v332 setFrame_];
  }

  OUTLINED_FUNCTION_7_20();
  v335 = (*(v334 + 384))();
  v336 = v384;
  if (v335)
  {
    v337 = v335;
    if (v48 > 0.0)
    {
      [v335 prepareLayoutWithMaxWidth_];
    }

    v338 = v337;
    OUTLINED_FUNCTION_56_18();
    [v339 v340];
    v342 = v341;
    OUTLINED_FUNCTION_41_29();
    v344 = v343();
    if (v344 && (sub_1E37CB21C(v344), OUTLINED_FUNCTION_122(), , sel_sizeThatFits_))
    {
      +[(sizeThatFits: *)sel_sizeThatFits_];
      v345 = CGRectGetMaxY(v432);
      OUTLINED_FUNCTION_35_32();
      v347 = v346();
      v348 = 0.0;
      if (v347)
      {
        v348 = *(v347 + 200);
      }

      [(sizeThatFits: *)sel_sizeThatFits_ bottomMarginWithBaselineMargin:v348, *&v364];
      v350 = v349;

      v1 = v345 + v350 + 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_35_32();
      v352 = v351();
      if (v352)
      {
        v1 = *(v352 + 200);
      }
    }

    if (v48 > 0.0 && v342 > 0.0)
    {
      v353 = 0.0;
      if (v179)
      {
        [v144 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v1 = v354;
        v48 = v355;
        v342 = v356;
      }

      [v330 setFrame_];
    }

    v336 = v384;
  }

  v357 = v370();
  if (v371 && (v357 & 1) != 0)
  {
    sub_1E3280A90(0, &unk_1ECF31E80);
    v358 = v371;
    v359 = sub_1E389BF5C(v336, v379, v381, v385);
    MEMORY[0x1E69109E0](v359);

    MEMORY[0x1E69109E0](93, 0xE100000000000000);
    v360 = sub_1E4205ED4();

    sub_1E4206854();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v361 = swift_allocObject();
    *(v361 + 16) = xmmword_1E4297BE0;
    *(v361 + 56) = sub_1E3280A90(0, &qword_1ECF31E90);
    *(v361 + 32) = v358;
    v362 = v358;
    OUTLINED_FUNCTION_11_5();
    sub_1E4207B14();
  }

  v363 = v407;

LABEL_245:
  OUTLINED_FUNCTION_42();
}