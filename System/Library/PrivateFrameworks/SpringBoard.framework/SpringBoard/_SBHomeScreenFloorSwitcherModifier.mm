@interface _SBHomeScreenFloorSwitcherModifier
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout;
- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForShelf:(id)shelf;
- (CGRect)shelfBackgroundBlurFrame;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)handleTransitionEvent:(id)event;
- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout;
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
  appLayouts = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    isReduceMotionEnabled = [(_SBHomeScreenFloorSwitcherModifier *)self isReduceMotionEnabled];

    if (isReduceMotionEnabled)
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

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v92.receiver = self;
  v92.super_class = _SBHomeScreenFloorSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v92 handleTransitionEvent:eventCopy];
  if ([eventCopy phase] != 1 || (objc_msgSend(eventCopy, "isHandled") & 1) != 0)
  {
    goto LABEL_3;
  }

  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  if ([fromAppLayout isEqual:toAppLayout])
  {
    fromEnvironmentMode = [eventCopy fromEnvironmentMode];
    toEnvironmentMode = [eventCopy toEnvironmentMode];

    if (fromEnvironmentMode == toEnvironmentMode)
    {
LABEL_3:
      v6 = v5;
      goto LABEL_4;
    }
  }

  else
  {
  }

  transitionID = [eventCopy transitionID];
  fromAppLayout2 = [eventCopy fromAppLayout];
  toEnvironmentMode2 = [eventCopy toEnvironmentMode];
  toAppLayout2 = [eventCopy toAppLayout];
  windowManagementContext = [(_SBHomeScreenFloorSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  zoomFromHardwareButtonPreludeTokenWrapper = [eventCopy zoomFromHardwareButtonPreludeTokenWrapper];
  isTokenAvailable = [zoomFromHardwareButtonPreludeTokenWrapper isTokenAvailable];

  if (toEnvironmentMode2 != 3)
  {
    if (!SBPeekConfigurationIsValid([eventCopy fromPeekConfiguration]) || SBPeekConfigurationIsValid(objc_msgSend(eventCopy, "toPeekConfiguration")))
    {
      goto LABEL_41;
    }

    v24 = [SBHomePeekToHomeTransitionModifier alloc];
    fromAppLayout3 = [eventCopy fromAppLayout];
    v26 = -[SBHomePeekToHomeTransitionModifier initWithFromAppLayout:fromConfiguration:](v24, "initWithFromAppLayout:fromConfiguration:", fromAppLayout3, [eventCopy fromPeekConfiguration]);
    goto LABEL_30;
  }

  v91 = toAppLayout2;
  v90 = fromAppLayout2;
  if ([eventCopy isIconZoomDisabled])
  {
    v20 = *MEMORY[0x277CBF398];
    v21 = *(MEMORY[0x277CBF398] + 8);
    v22 = *(MEMORY[0x277CBF398] + 16);
    v23 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    [(_SBHomeScreenFloorSwitcherModifier *)self homeScreenIconFrameForAppLayout:toAppLayout2];
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
  }

  toAppLayout3 = [eventCopy toAppLayout];
  allItems = [toAppLayout3 allItems];
  if ([allItems count] != 1 || (-[_SBHomeScreenFloorSwitcherModifier displayItemInSlideOver](self, "displayItemInSlideOver"), (v33 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_24;
  }

  v34 = v33;
  [eventCopy toAppLayout];
  v35 = v89 = isChamoisOrFlexibleWindowing;
  [(_SBHomeScreenFloorSwitcherModifier *)self displayItemInSlideOver];
  v36 = isTokenAvailable;
  v38 = v37 = transitionID;
  v88 = [v35 containsItem:v38];

  transitionID = v37;
  isTokenAvailable = v36;

  isChamoisOrFlexibleWindowing = v89;
  if (!v88)
  {
LABEL_24:
    fromAppLayout2 = v90;
    if ([eventCopy prefersCenterZoomTransition])
    {
      toAppLayout2 = v91;
      v39 = [[SBHomeToFullScreenCenterZoomSwitcherModifier alloc] initWithTransitionID:transitionID toAppLayout:v91];
      if (!isChamoisOrFlexibleWindowing)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    v40 = isChamoisOrFlexibleWindowing;
    toAppLayout2 = v91;
    if (![eventCopy isBannerUnfurlTransition] || (objc_msgSend(eventCopy, "bannerUnfurlSourceContext"), v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
    {
      if ([eventCopy isMorphFromPIPTransition])
      {
        v43 = [SBFullScreenToHomeIconZoomSwitcherModifier alloc];
        [(_SBHomeScreenFloorSwitcherModifier *)self morphToPIPClippingFrame];
        v44 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)v43 initWithTransitionID:transitionID targetFrame:v91 appLayout:0 direction:?];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldForceDefaultAnchorPointForTransition:v40];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldDockOrderFrontDuringTransition:v40];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldMatchMoveToIconView:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setShouldUpdateIconViewVisibility:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setGenieDisabled:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v44 setSupportsGlassHighlight:0];
        v39 = -[SBPIPRestoreToFullScreenSwitcherModifier initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:]([SBPIPRestoreToFullScreenSwitcherModifier alloc], "initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:", transitionID, v44, 0, v91, [eventCopy morphingPIPLayoutRole]);
        [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldForceDefaultAnchorPointForTransition:v40];
        [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldClippingTakeShadowIntoAccount:v40];

        goto LABEL_39;
      }

      if ([eventCopy isZoomFromSystemApertureTransition])
      {
        v45 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v91 direction:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v45 setGenieDisabled:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v45 setSupportsGlassHighlight:0];
        v46 = [(_SBHomeScreenFloorSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:v90 key:@"position"];
        [v46 CGPointValue];
        v48 = v47;
        v50 = v49;

        appLayouts = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
        v52 = [appLayouts indexOfObject:v91];

        [(_SBHomeScreenFloorSwitcherModifier *)self frameForIndex:v52];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        [(_SBHomeScreenFloorSwitcherModifier *)self scaleForIndex:v52];
        v39 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:transitionID zoomModifier:v45 appLayout:v91 direction:0 expandedCardFrame:v54 cardScale:v56 cardVelocity:v58, v60, v61, v48, v50];

LABEL_38:
        toAppLayout2 = v91;
        goto LABEL_39;
      }

      if (isTokenAvailable)
      {
        zoomFromHardwareButtonPreludeTokenWrapper2 = [eventCopy zoomFromHardwareButtonPreludeTokenWrapper];
        consumeToken = [zoomFromHardwareButtonPreludeTokenWrapper2 consumeToken];

        v68 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v91 direction:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setShouldUpdateIconViewVisibility:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setShouldMatchMoveToIconView:0];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setGenieDisabled:1];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v68 setSupportsGlassHighlight:0];
        v39 = [[SBCaptureDropletZoomSwitcherModifier alloc] initWithTransitionID:transitionID zoomModifier:v68 appLayout:v91 launchPreludeAnimationToken:consumeToken];
        v69 = [[SBConsumedPreludeAnimationTokenSwitcherEventResponse alloc] initWithPreludeToken:consumeToken];
        v70 = SBAppendSwitcherModifierResponse(v69, v5);

        toAppLayout2 = v91;
        v5 = v70;
      }

      else
      {
        v71 = transitionID;
        if ([eventCopy isExitingSlideOverPeekToAppEvent])
        {
          toFloatingAppLayout = [eventCopy toFloatingAppLayout];
          fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
          v74 = [toFloatingAppLayout isEqual:fromFloatingAppLayout];

          if ((v74 & 1) == 0)
          {
            v75 = [SBSlideOverToFullScreenSwitcherModifier alloc];
            fromFloatingAppLayout2 = [eventCopy fromFloatingAppLayout];
            toAppLayout4 = [eventCopy toAppLayout];
            v39 = [(SBSlideOverToFullScreenSwitcherModifier *)v75 initWithTransitionID:v71 slideOverAppLayout:fromFloatingAppLayout2 fullScreenAppLayout:toAppLayout4 replacingMainAppLayout:0];

            transitionID = v71;
            goto LABEL_38;
          }
        }

        if ([eventCopy isExitingSlideOverPeekToHomeScreenEvent])
        {
          transitionID = v71;
          goto LABEL_22;
        }

        transitionID = v71;
        if ([eventCopy isMoveDisplaysTransition])
        {
          v63 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:eventCopy];
          goto LABEL_37;
        }

        if (((-[_SBHomeScreenFloorSwitcherModifier isDevicePad](self, "isDevicePad") & 1) != 0 || !+[SBHomeScreenReturnToSpotlightPolicy areSpotlightBreadcrumbsEnabled](SBHomeScreenReturnToSpotlightPolicy, "areSpotlightBreadcrumbsEnabled")) && [eventCopy isSpotlightTransition])
        {
          v78 = [SBHomeToFullScreenCenterZoomSwitcherModifier alloc];
          v79 = v71;
          toAppLayout2 = v91;
          v39 = [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v78 initWithTransitionID:v79 toAppLayout:v91];
          if (v40)
          {
LABEL_26:
            [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldForceDefaultAnchorPointForTransition:1];
          }
        }

        else
        {
          windowManagementContext2 = [(_SBHomeScreenFloorSwitcherModifier *)self windowManagementContext];
          if ([windowManagementContext2 isFlexibleWindowingEnabled] && objc_msgSend(eventCopy, "isExitingSplitViewPeekEvent"))
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
            toAppLayout2 = v91;
            v86 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)v84 initWithTransitionID:v85 appLayout:v91 direction:0];
            v39 = v86;
            if (v40)
            {
              [(SBFullScreenToHomeIconZoomSwitcherModifier *)v86 setShouldForceDefaultAnchorPointForTransition:1];
              [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldDockOrderFrontDuringTransition:1];
              if ([eventCopy isMoveDisplaysTransition])
              {
                [(SBHomeToFullScreenCenterZoomSwitcherModifier *)v39 setShouldDisableAsyncRendering:1];
              }
            }

            goto LABEL_39;
          }

          if (![eventCopy prefersCrossfadeTransition])
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

            transitionID = v71;
            goto LABEL_38;
          }

          v82 = [SBCrossfadeDosidoSwitcherModifier alloc];
          v83 = v71;
          toAppLayout2 = v91;
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
    fromAppLayout3 = [eventCopy bannerUnfurlSourceContext];
    v26 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)v42 initWithTransitionID:transitionID fromAppLayout:0 toAppLayout:v91 bannerUnfurlSourceContext:fromAppLayout3];
LABEL_30:
    v39 = v26;

    goto LABEL_39;
  }

  fromAppLayout2 = v90;
  if (([eventCopy isUnstashFromHomeTransition] & 1) == 0)
  {
    v62 = SBStashSlideOverItemAnimationModifier;
LABEL_36:
    v63 = [[v62 alloc] initWithDirection:1];
LABEL_37:
    v39 = v63;
    goto LABEL_38;
  }

LABEL_22:
  toAppLayout2 = v91;
LABEL_41:
  v6 = v5;

LABEL_4:

  return v6;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  windowManagementContext = [(_SBHomeScreenFloorSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70___SBHomeScreenFloorSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v9[3] = &__block_descriptor_33_e21_B16__0__SBAppLayout_8l;
  v10 = isChamoisOrFlexibleWindowing;
  v7 = [layoutsCopy bs_filter:v9];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v5 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v7 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  appLayouts = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
  v10 = [appLayouts objectAtIndex:index];

  allItems = [v10 allItems];
  v12 = [allItems count];

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

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout
{
  homeGrabberSettings = [(_SBHomeScreenFloorSwitcherModifier *)self homeGrabberSettings];
  isEnabled = [homeGrabberSettings isEnabled];

  return isEnabled;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout
{
  v3 = [layout itemForLayoutRole:2];
  v4 = v3 != 0;

  return v4;
}

- (CGRect)frameForShelf:(id)shelf
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

- (id)animationAttributesForLayoutElement:(id)element
{
  switcherSettings = [(_SBHomeScreenFloorSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
  [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:1];
  layoutSettings = [animationSettings layoutSettings];
  [(SBSwitcherAnimationAttributes *)v5 setLayoutSettings:layoutSettings];

  opacitySettings = [animationSettings opacitySettings];
  [(SBSwitcherAnimationAttributes *)v5 setOpacitySettings:opacitySettings];

  return v5;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  [(_SBHomeScreenFloorSwitcherModifier *)self frameForIndex:index];

  return CGRectGetWidth(*&v3);
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(_SBHomeScreenFloorSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier
{
  if (action > 0x25)
  {
    return action == 0;
  }

  if (((1 << action) & 0x6808) == 0)
  {
    if (action == 1)
    {
      return 1;
    }

    if (action == 37)
    {
      v5 = [(_SBHomeScreenFloorSwitcherModifier *)self displayItemInSlideOver:37];
      v4 = v5 != 0;

      return v4;
    }

    return action == 0;
  }

  return identifier != 0;
}

- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds
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

- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds
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
  appLayouts = [(_SBHomeScreenFloorSwitcherModifier *)self appLayouts];
  v3 = [appLayouts subarrayWithRange:{0, objc_msgSend(appLayouts, "count") != 0}];

  return v3;
}

- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout
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