@interface _SBHomeScreenFloorSwitcherModifier
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)handleTransitionEvent:(id)a3;
- (int64_t)preferredSnapshotOrientationForAppLayout:(id)a3;
- (unint64_t)transactionCompletionOptions;
@end

@implementation _SBHomeScreenFloorSwitcherModifier

- (CGRect)shelfBackgroundBlurFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(_SBHomeScreenFloorSwitcherModifier *)self isReduceMotionEnabled];

    if (v4)
    {
      return 6;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 6;
  }
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v92.receiver = self;
  v92.super_class = _SBHomeScreenFloorSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v92 handleTransitionEvent:v4];
  if ([v4 phase] != 1 || (objc_msgSend(v4, "isHandled") & 1) != 0)
  {
    goto LABEL_3;
  }

  v8 = [v4 fromAppLayout];
  v9 = [v4 toAppLayout];
  if ([v8 isEqual:v9])
  {
    v10 = [v4 fromEnvironmentMode];
    v11 = [v4 toEnvironmentMode];

    if (v10 == v11)
    {
LABEL_3:
      v6 = v5;
      goto LABEL_4;
    }
  }

  else
  {
  }

  v12 = [v4 transitionID];
  v13 = [v4 fromAppLayout];
  v14 = [v4 toEnvironmentMode];
  v15 = [v4 toAppLayout];
  v16 = [(_SBHomeScreenFloorSwitcherModifier *)self windowManagementContext];
  v17 = [v16 isChamoisOrFlexibleWindowing];

  v18 = [v4 zoomFromHardwareButtonPreludeTokenWrapper];
  v19 = [v18 isTokenAvailable];

  if (v14 != 3)
  {
    if (!SBPeekConfigurationIsValid([v4 fromPeekConfiguration]) || SBPeekConfigurationIsValid(objc_msgSend(v4, "toPeekConfiguration")))
    {
      goto LABEL_41;
    }

    v24 = [SBHomePeekToHomeTransitionModifier alloc];
    v25 = [v4 fromAppLayout];
    v26 = -[SBHomePeekToHomeTransitionModifier initWithFromAppLayout:fromConfiguration:](v24, "initWithFromAppLayout:fromConfiguration:", v25, [v4 fromPeekConfiguration]);
    goto LABEL_30;
  }

  v91 = v15;
  v90 = v13;
  if ([v4 isIconZoomDisabled])
  {
    v20 = *MEMORY[0x277CBF398];
    v21 = *(MEMORY[0x277CBF398] + 8);
    v22 = *(MEMORY[0x277CBF398] + 16);
    v23 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    [(_SBHomeScreenFloorSwitcherModifier *)self homeScreenIconFrameForAppLayout:v15];
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
  }

  v31 = [v4 toAppLayout];
  v32 = [v31 allItems];
  if ([v32 count] != 1 || (-[_SBHomeScreenFloorSwitcherModifier displayItemInSlideOver](self, "displayItemInSlideOver"), (v33 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_24;
  }

  v34 = v33;
  [v4 toAppLayout];
  v35 = v89 = v17;
  [(_SBHomeScreenFloorSwitcherModifier *)self displayItemInSlideOver];
  v36 = v19;
  v38 = v37 = v12;
  v88 = [v35 containsItem:v38];

  v12 = v37;
  v19 = v36;

  v17 = v89;
  if (!v88)
  {
LABEL_24:
    v13 = v90;
    if ([v4 prefersCenterZoomTransition])
    {
      v15 = v91;
      v39 = [[SBHomeToFullScreenCenterZoomSwitcherModifier alloc] initWithTransitionID:v12 toAppLayout:v91];
      if (!v17)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    v40 = v17;
    v15 = v91;
    if (![v4 isBannerUnfurlTransition] || (objc_msgSend(v4, "bannerUnfurlSourceContext"), v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
    {
      if ([v4 isMorphFromPIPTransition])
      {
        v43 = [SBFullScreenToHomeIconZoomSwitcherModifier alloc];
        [(_SBHomeScreenFloorSwitcherModifier *)self morphToPIPClippingFrame];
        v44 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)v43 initWithTransitionID:v12 targetFrame:v91 appLayout:0 direction:?];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldForceDefaultAnchorPointForTransition:v40];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldDockOrderFrontDuringTransition:v40];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldMatchMoveToIconView:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldUpdateIconViewVisibility:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setGenieDisabled:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setSupportsGlassHighlight:0];
        v39 = -[SBPIPRestoreToFullScreenSwitcherModifier initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:]([SBPIPRestoreToFullScreenSwitcherModifier alloc], "initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:", v12, v44, 0, v91, [v4 morphingPIPLayoutRole]);
        [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldForceDefaultAnchorPointForTransition:v40];
        [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldClippingTakeShadowIntoAccount:v40];

        goto LABEL_39;
      }

      if ([v4 isZoomFromSystemApertureTransition])
      {
        v45 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v12 appLayout:v91 direction:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v45 setGenieDisabled:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v45 setSupportsGlassHighlight:0];
        v46 = [(_SBHomeScreenFloorSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:v90 key:@"position"];
        [v46 CGPointValue];
        v48 = v47;
        v50 = v49;

        v51 = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
        v52 = [v51 indexOfObject:v91];

        [(_SBHomeScreenFloorSwitcherModifier *)self frameForIndex:v52];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        [(_SBHomeScreenFloorSwitcherModifier *)self scaleForIndex:v52];
        v39 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:v12 zoomModifier:v45 appLayout:v91 direction:0 expandedCardFrame:v54 cardScale:v56 cardVelocity:v58, v60, v61, v48, v50];

LABEL_38:
        v15 = v91;
        goto LABEL_39;
      }

      if (v19)
      {
        v66 = [v4 zoomFromHardwareButtonPreludeTokenWrapper];
        v67 = [v66 consumeToken];

        v68 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v12 appLayout:v91 direction:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setShouldUpdateIconViewVisibility:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setShouldMatchMoveToIconView:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setGenieDisabled:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setSupportsGlassHighlight:0];
        v39 = [[SBCaptureDropletZoomSwitcherModifier alloc] initWithTransitionID:v12 zoomModifier:v68 appLayout:v91 launchPreludeAnimationToken:v67];
        v69 = [[SBConsumedPreludeAnimationTokenSwitcherEventResponse alloc] initWithPreludeToken:v67];
        v70 = SBAppendSwitcherModifierResponse(v69, v5);

        v15 = v91;
        v5 = v70;
      }

      else
      {
        v71 = v12;
        if ([v4 isExitingSlideOverPeekToAppEvent])
        {
          v72 = [v4 toFloatingAppLayout];
          v73 = [v4 fromFloatingAppLayout];
          v74 = [v72 isEqual:v73];

          if ((v74 & 1) == 0)
          {
            v75 = [SBSlideOverToFullScreenSwitcherModifier alloc];
            v76 = [v4 fromFloatingAppLayout];
            v77 = [v4 toAppLayout];
            v39 = [(SBSlideOverToFullScreenSwitcherModifier *)v75 initWithTransitionID:v71 slideOverAppLayout:v76 fullScreenAppLayout:v77 replacingMainAppLayout:0];

            v12 = v71;
            goto LABEL_38;
          }
        }

        if ([v4 isExitingSlideOverPeekToHomeScreenEvent])
        {
          v12 = v71;
          goto LABEL_22;
        }

        v12 = v71;
        if ([v4 isMoveDisplaysTransition])
        {
          v63 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:v4];
          goto LABEL_37;
        }

        if (((-[_SBHomeScreenFloorSwitcherModifier isDevicePad](self, "isDevicePad") & 1) != 0 || !+[SBHomeScreenReturnToSpotlightPolicy areSpotlightBreadcrumbsEnabled](SBHomeScreenReturnToSpotlightPolicy, "areSpotlightBreadcrumbsEnabled")) && [v4 isSpotlightTransition])
        {
          v78 = [SBHomeToFullScreenCenterZoomSwitcherModifier alloc];
          v79 = v71;
          v15 = v91;
          v39 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v78 initWithTransitionID:v79 toAppLayout:v91];
          if (v40)
          {
LABEL_26:
            [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldForceDefaultAnchorPointForTransition:1];
          }
        }

        else
        {
          v80 = [(_SBHomeScreenFloorSwitcherModifier *)self windowManagementContext];
          if ([v80 isFlexibleWindowingEnabled] && objc_msgSend(v4, "isExitingSplitViewPeekEvent"))
          {
            v81 = BSEqualObjects();

            if (v81)
            {
              v62 = SBFullScreenToPeekAnimationModifier;
              goto LABEL_36;
            }
          }

          else
          {
          }

          v94.origin.x = v20;
          v94.origin.y = v21;
          v94.size.width = v22;
          v94.size.height = v23;
          if (!CGRectIsNull(v94))
          {
            v84 = [SBFullScreenToHomeIconZoomSwitcherModifier alloc];
            v85 = v71;
            v15 = v91;
            v86 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)v84 initWithTransitionID:v85 appLayout:v91 direction:0];
            v39 = v86;
            if (v40)
            {
              [(SBFullScreenToHomeIconZoomSwitcherModifier *)v86 setShouldForceDefaultAnchorPointForTransition:1];
              [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldDockOrderFrontDuringTransition:1];
              if ([v4 isMoveDisplaysTransition])
              {
                [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldDisableAsyncRendering:1];
              }
            }

            goto LABEL_39;
          }

          if (![v4 prefersCrossfadeTransition])
          {
            if (!v91)
            {
              goto LABEL_22;
            }

            v87 = [[SBHomeToFullScreenCenterZoomSwitcherModifier alloc] initWithTransitionID:v71 toAppLayout:v91];
            v39 = v87;
            if (v40)
            {
              [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v87 setShouldForceDefaultAnchorPointForTransition:1];
            }

            v12 = v71;
            goto LABEL_38;
          }

          v82 = [SBCrossfadeDosidoSwitcherModifier alloc];
          v83 = v71;
          v15 = v91;
          v39 = [(SBCrossfadeDosidoSwitcherModifier *)v82 initWithTransitionID:v83 fromAppLayout:v90 toAppLayout:v91];
          [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setFullScreenTransition:v40 ^ 1];
        }
      }

LABEL_39:
      if (v39)
      {
        v64 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v39 level:3];
        v65 = SBAppendSwitcherModifierResponse(v64, v5);

        v5 = v65;
      }

      goto LABEL_41;
    }

    v42 = [SBBannerUnfurlToFullScreenSwitcherModifier alloc];
    v25 = [v4 bannerUnfurlSourceContext];
    v26 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)v42 initWithTransitionID:v12 fromAppLayout:0 toAppLayout:v91 bannerUnfurlSourceContext:v25];
LABEL_30:
    v39 = v26;

    goto LABEL_39;
  }

  v13 = v90;
  if (([v4 isUnstashFromHomeTransition] & 1) == 0)
  {
    v62 = SBStashSlideOverItemAnimationModifier;
LABEL_36:
    v63 = [[v62 alloc] initWithDirection:1];
LABEL_37:
    v39 = v63;
    goto LABEL_38;
  }

LABEL_22:
  v15 = v91;
LABEL_41:
  v6 = v5;

LABEL_4:

  return v6;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v5 = [(_SBHomeScreenFloorSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70___SBHomeScreenFloorSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v9[3] = &__block_descriptor_33_e21_B16__0__SBAppLayout_8l;
  v10 = v6;
  v7 = [v4 bs_filter:v9];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v9 = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
  v10 = [v9 objectAtIndex:a3];

  v11 = [v10 allItems];
  v12 = [v11 count];

  if (v12 == 1)
  {
    v13 = [(_SBHomeScreenFloorSwitcherModifier *)self appLayoutContainingAppLayout:v10];
    if (v10 != v13)
    {
      v14 = [v10 itemForLayoutRole:1];
      v15 = [v13 layoutRoleForItem:v14];
      [(_SBHomeScreenFloorSwitcherModifier *)self containerViewBounds];
      v28.receiver = self;
      v28.super_class = _SBHomeScreenFloorSwitcherModifier;
      [(_SBHomeScreenFloorSwitcherModifier *)&v28 frameForLayoutRole:v15 inAppLayout:v13 withBounds:?];
      v5 = v16;
      v6 = v17;
      v7 = v18;
      v8 = v19;
    }
  }

  v29.origin.x = v5;
  v29.origin.y = v6;
  v29.size.width = v7;
  v29.size.height = v8;
  if (CGRectIsNull(v29))
  {
    [(_SBHomeScreenFloorSwitcherModifier *)self containerViewBounds];
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3
{
  v3 = [(_SBHomeScreenFloorSwitcherModifier *)self homeGrabberSettings];
  v4 = [v3 isEnabled];

  return v4;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3
{
  v3 = [a3 itemForLayoutRole:2];
  v4 = v3 != 0;

  return v4;
}

- (CGRect)frameForShelf:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v3 = [(_SBHomeScreenFloorSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  v6 = [v4 layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:v6];

  v7 = [v4 opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:v7];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3
{
  [(_SBHomeScreenFloorSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(_SBHomeScreenFloorSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)a3 forBundleIdentifier:(id)a4
{
  if (a3 > 0x25)
  {
    return a3 == 0;
  }

  if (((1 << a3) & 0x6808) == 0)
  {
    if (a3 == 1)
    {
      return 1;
    }

    if (a3 == 37)
    {
      v5 = [(_SBHomeScreenFloorSwitcherModifier *)self displayItemInSlideOver:37];
      v4 = v5 != 0;

      return v4;
    }

    return a3 == 0;
  }

  return a4 != 0;
}

- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4
{
  v4 = *MEMORY[0x277CBF398];
  v5 = *(MEMORY[0x277CBF398] + 8);
  v6 = *(MEMORY[0x277CBF398] + 16);
  v7 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6
{
  v6 = *MEMORY[0x277CBF398];
  v7 = *(MEMORY[0x277CBF398] + 8);
  v8 = *(MEMORY[0x277CBF398] + 16);
  v9 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v2 = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
  v3 = [v2 subarrayWithRange:{0, objc_msgSend(v2, "count") != 0}];

  return v3;
}

- (int64_t)preferredSnapshotOrientationForAppLayout:(id)a3
{
  if ([(_SBHomeScreenFloorSwitcherModifier *)self isDisplayEmbedded])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end