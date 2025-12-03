@interface SBRoutingSwitcherModifier
- (BOOL)canFocusableAppLayoutBeEffectivelyObscured:(id)obscured;
- (BOOL)canLayoutRoleParticipateInSwitcherDragAndDrop:(int64_t)drop appLayout:(id)layout;
- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier;
- (BOOL)canSelectLeafWithModifierKeysInAppLayout:(id)layout;
- (BOOL)clipsToBoundsAtIndex:(unint64_t)index;
- (BOOL)clipsToUnobscuredMarginAtIndex:(unint64_t)index;
- (BOOL)hasContentIntersectingMenuBarRegion;
- (BOOL)isContainerStatusBarPart:(unint64_t)part hiddenByLeafAppLayout:(id)layout;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index;
- (BOOL)isContinuousExposeStripVisible;
- (BOOL)isDropletEffectRequiredBehindAppLayout:(id)layout;
- (BOOL)isFocusEnabledForAppLayout:(id)layout;
- (BOOL)isHintingResizeGrabberForDisplayItem:(id)item corner:(unint64_t)corner inAppLayout:(id)layout;
- (BOOL)isHitTestBlockingViewVisible;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout;
- (BOOL)isHomeScreenContentRequired;
- (BOOL)isIndexRubberbandableForSwipeToKill:(unint64_t)kill;
- (BOOL)isItemContainerPointerInteractionEnabled;
- (BOOL)isItemResizingAllowedForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleDraggable:(int64_t)draggable inAppLayout:(id)layout;
- (BOOL)isLayoutRoleEligibleForContentDragSpringLoading:(int64_t)loading inAppLayout:(id)layout;
- (BOOL)isLayoutRoleKillable:(int64_t)killable inAppLayout:(id)layout atIndex:(unint64_t)index;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)isLayoutRoleSelectable:(int64_t)selectable inAppLayout:(id)layout;
- (BOOL)isPendingInvalidatablesForAcceleratedHomeGesture;
- (BOOL)isPendingViewsForAcceleratedHomeGesture;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout;
- (BOOL)isScrollEnabled;
- (BOOL)isSwitcherWindowUserInteractionEnabled;
- (BOOL)isSwitcherWindowVisible;
- (BOOL)isWallpaperRequiredForSwitcher;
- (BOOL)shouldAcceleratedHomeButtonPressBegin;
- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout;
- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)layout;
- (BOOL)shouldAnimateInsertionOrRemovalOfAppLayout:(id)layout atIndex:(unint64_t)index;
- (BOOL)shouldBringCardToFrontDuringInsertionOrRemoval;
- (BOOL)shouldConfigureInAppDockHiddenAssertion;
- (BOOL)shouldFireTransitionCompletionInDefaultRunLoopMode;
- (BOOL)shouldPerformCrossfadeForReduceMotion;
- (BOOL)shouldPerformRotationAnimationForOrientationChange;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldRemoveProlongedCursorGestureFloatingDockBehaviorAssertion;
- (BOOL)shouldRubberbandFullScreenHomeGrabberView;
- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index;
- (BOOL)shouldScrollViewBlockTouches;
- (BOOL)shouldShowBackdropViewAtIndex:(unint64_t)index;
- (BOOL)shouldSuppressHighlightEffectForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)layout;
- (BOOL)shouldUpdateAnimatableProperty:(id)property;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)index;
- (BOOL)shouldUseBrightMaterialForIndex:(unint64_t)index;
- (BOOL)shouldUseNonuniformSnapshotScalingForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (BOOL)shouldUseWallpaperGradientTreatment;
- (BOOL)switcherDimmingViewBlocksTouches;
- (BOOL)switcherHitTestsAsOpaque;
- (BOOL)useItemContainerFooterViewsForAppLayout:(id)layout;
- (BOOL)wantsAsynchronousSurfaceRetentionAssertion;
- (BOOL)wantsBezelEffectsLayoutElement;
- (BOOL)wantsContinuousExposeHoverGesture;
- (BOOL)wantsDockBehaviorAssertion;
- (BOOL)wantsDockPortalViewLayoutElement;
- (BOOL)wantsDockWindowLevelAssertion;
- (BOOL)wantsHomeScreenPointerInteractions;
- (BOOL)wantsMenuBar;
- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout;
- (BOOL)wantsSlideOverTongue;
- (BOOL)wantsSpaceAccessoryViewGenieForAppLayout:(id)layout;
- (BOOL)wantsSpaceAccessoryViewPointerInteractionsForAppLayout:(id)layout;
- (BOOL)wantsSwitcherBackdropBlur;
- (BOOL)wantsSwitcherDimmingView;
- (CGPoint)adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)view horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (CGPoint)contentViewOffsetForAccessoriesOfAppLayout:(id)layout;
- (CGPoint)contentViewOffsetForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (CGPoint)expandedSourcePositionForSystemApertureTransition;
- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle;
- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)bounceIconInitialFrame;
- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds;
- (CGRect)containerViewBounds;
- (CGRect)frameForIconOverlayInAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (CGRect)frameForShelf:(id)shelf;
- (CGRect)frameForSlideOverTongueAppLayout;
- (CGRect)frameForSplitViewHandleDimmingView:(id)view;
- (CGRect)frameForSplitViewHandleNubView:(id)view;
- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame;
- (CGRect)rootContentViewMaskRect;
- (CGRect)shelfBackgroundBlurFrame;
- (CGRect)switcherViewBounds;
- (SBRoutingSwitcherModifier)initWithModifiers:(id)modifiers delegate:(id)delegate;
- (SBRoutingSwitcherModifierDelegate)routingDelegate;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (SBSwitcherContinuousExposeStripTongueAttributes)continuousExposeStripTongueAttributes;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (SBWindowControlsLayout)windowControlsLayoutForLeafAppLayout:(SEL)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (char)activityModeForAppLayout:(id)layout;
- (char)jetsamModeForAppLayout:(id)layout;
- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout;
- (double)backgroundOpacityForIndex:(unint64_t)index;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)blurViewIconScaleForIndex:(unint64_t)index;
- (double)containerStatusBarAnimationDuration;
- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale;
- (double)contentPageViewScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout withContentPageViewScale:(double)scale;
- (double)contentViewScale;
- (double)cornerRadiusForSlideOverTongueAppLayout;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search;
- (double)dockProgress;
- (double)dockWindowLevel;
- (double)fadeInDelayForSplitViewHandles;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)iconOpacityForIndex:(unint64_t)index;
- (double)lighteningAlphaForIndex:(unint64_t)index;
- (double)minimumTranslationToKillIndex:(unint64_t)index;
- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)plusButtonAlpha;
- (double)reopenClosedWindowsButtonAlpha;
- (double)reopenClosedWindowsButtonScale;
- (double)rotationAngleForIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)shadowOffsetForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)shelfBackgroundBlurOpacity;
- (double)slideOverMarginForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)spaceAccessoryViewIconHitTestOutsetForAppLayout:(id)layout;
- (double)switcherBackdropBlurProgress;
- (double)switcherDimmingAlpha;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (double)titleOpacityForIndex:(unint64_t)index;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index;
- (double)wallpaperOverlayAlphaForIndex:(unint64_t)index;
- (double)wallpaperScale;
- (id)_adjustedShelfForShelf:(id)shelf forModifier:(id)modifier;
- (id)_adjustedShelfForShelf:(id)shelf fromModifier:(id)modifier;
- (id)_currentModifierOrFallback;
- (id)_forwardingTargetForUpdate;
- (id)activeLeafAppLayoutsReachableByKeyboardShortcut;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)strip;
- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)switcher identifiersInStrip:(id)strip;
- (id)animatablePropertyIdentifiers;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)animationAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout withAnimationAttributes:(id)attributes;
- (id)appExposeAccessoryButtonsBundleIdentifier;
- (id)appLayoutForReceivingHardwareButtonEvents;
- (id)appLayoutToAttachSlideOverTongue;
- (id)appLayoutToScrollToBeforeReopeningClosedWindows;
- (id)appLayoutToScrollToBeforeTransitioning;
- (id)appLayouts;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)bounceIconBundleIdentifier;
- (id)containerLeafAppLayoutForShelf:(id)shelf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)destinationAppLayoutForDismissingCurrentMode;
- (id)focusedAppLayoutForShelf:(id)shelf;
- (id)foregroundAppLayouts;
- (id)genieAttributesForAppLayout:(id)layout;
- (id)handleEvent:(id)event;
- (id)hiddenAppLayoutsInShelf:(id)shelf;
- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf;
- (id)identityMeshTransformForIndex:(unint64_t)index;
- (id)ignoredDisplayItemsForShelf:(id)shelf;
- (id)inactiveAppLayoutsReachableByKeyboardShortcut;
- (id)keyboardSuppressionMode;
- (id)meshTransformForIndex:(unint64_t)index;
- (id)multipleWindowsIndicatorLayoutRolesForAppLayout:(id)layout;
- (id)neighboringAppLayoutsForFocusedAppLayout:(id)layout;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts;
- (id)proposedAppLayoutForWindowDrag;
- (id)repositionProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout;
- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)scrollViewAttributes;
- (id)settingsForAnimatableProperty:(id)property;
- (id)stackDescriptionWithPrefix:(id)prefix;
- (id)switcherDropRegionContextForDraggingLayoutRole:(int64_t)role inAppLayout:(id)layout atLocation:(CGPoint)location;
- (id)topMostLayoutElements;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
- (id)visibleAppLayouts;
- (id)visibleHomeAffordanceLayoutElements;
- (id)visibleShelves;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (int64_t)appExposeAccessoryButtonsOverrideUserInterfaceStyle;
- (int64_t)dockUpdateMode;
- (int64_t)headerStyleForIndex:(unint64_t)index;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)occlusionStateForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (int64_t)plusButtonStyle;
- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout;
- (int64_t)selectedActionTypeForLeafAppLayout:(id)layout;
- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (int64_t)switcherBackdropBlurType;
- (int64_t)tintStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)layout;
- (int64_t)touchBehaviorForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (int64_t)updateModeForAnimatableProperty:(id)property;
- (int64_t)wallpaperStyle;
- (unint64_t)_lastIndexForModifier:(id)modifier;
- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)blurTargetPreferenceForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)bounceIconGenerationCountForCurrentCount:(unint64_t)count;
- (unint64_t)dockWindowLevelPriority;
- (unint64_t)footerViewIconAlignmentForAppLayout:(id)layout;
- (unint64_t)hiddenContainerStatusBarParts;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index;
- (unint64_t)maskedCornersForIndex:(unint64_t)index;
- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners;
- (unint64_t)personalityDebugColorStyleForAppLayout:(id)layout;
- (unint64_t)slideOverTongueDirection;
- (unint64_t)slideOverTongueState;
- (unint64_t)transactionCompletionOptions;
- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (void)didMoveToParentModifier:(id)modifier;
- (void)resetAdjustedScrollingState;
@end

@implementation SBRoutingSwitcherModifier

- (SBRoutingSwitcherModifier)initWithModifiers:(id)modifiers delegate:(id)delegate
{
  modifiersCopy = modifiers;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SBRoutingSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v12 init];
  if (v8)
  {
    v9 = [modifiersCopy copy];
    modifiers = v8->_modifiers;
    v8->_modifiers = v9;

    objc_storeWeak(&v8->_routingDelegate, delegateCopy);
  }

  return v8;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBRoutingSwitcherModifier;
  [(SBChainableModifier *)&v14 didMoveToParentModifier:?];
  if (modifier)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_modifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setDelegate:{self, v10}];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
  if (prefixCopy)
  {
    v6 = [prefixCopy stringByAppendingString:@"\t"];
  }

  else
  {
    v6 = @"\t";
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SBRoutingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_2783A8ED8;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  [v7 appendBodySectionWithName:@"modifiers" multilinePrefix:prefixCopy block:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __67__SBRoutingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1[4] + 168);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 delegate];
        v9 = a1[4];

        if (v8 == v9)
        {
          v10 = a1[5];
          v11 = [v7 descriptionWithMultilinePrefix:a1[6]];
          v12 = [v10 appendObject:v11 withName:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (id)stackDescriptionWithPrefix:(id)prefix
{
  v25 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CCACA8];
  displayName = [(SBSwitcherModifier *)self displayName];
  v8 = [v6 stringWithFormat:@"%@%@", prefixCopy, displayName];
  [v5 addObject:v8];

  v9 = [prefixCopy stringByAppendingString:@"    "];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = self->_modifiers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        delegate = [v15 delegate];

        if (delegate == self)
        {
          v17 = [v15 stackDescriptionWithPrefix:v9];
          [v5 addObject:v17];
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = [v5 componentsJoinedByString:@"\n"];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  modifiers = self->_modifiers;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v7 = [v4 initWithModifiers:modifiers delegate:WeakRetained];

  return v7;
}

- (id)handleEvent:(id)event
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__35;
  v30 = __Block_byref_object_dispose__35;
  v31 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_modifiers;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v17 = 0;
    v7 = *v23;
    v8 = eventCopy;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [WeakRetained routingModifier:self event:eventCopy forModifier:v10];

        if (v11)
        {
          if ([v11 isHandled])
          {
            unhandledCopy = [v11 unhandledCopy];

            v11 = unhandledCopy;
          }

          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __41__SBRoutingSwitcherModifier_handleEvent___block_invoke;
          v18[3] = &unk_2783AED90;
          v18[4] = v10;
          v8 = v11;
          v19 = v8;
          selfCopy = self;
          v21 = &v26;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v18);
          if ([v8 isHandled])
          {
            handledReason = [v8 handledReason];

            v17 = handledReason;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v6);

    if (v17)
    {
      if (([eventCopy isHandled] & 1) == 0)
      {
        [eventCopy handleWithReason:v17];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {

    v17 = 0;
    v8 = eventCopy;
  }

  v14 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v14;
}

void __41__SBRoutingSwitcherModifier_handleEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handleEvent:*(a1 + 40)];
  v6 = [*(a1 + 48) responseForProposedChildResponse:v2 childModifier:*(a1 + 32) event:*(a1 + 40)];

  v3 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:*(*(*(a1 + 56) + 8) + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)appLayouts
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v25.receiver = self;
  v25.super_class = SBRoutingSwitcherModifier;
  appLayoutsGenerationCount = [(SBRoutingSwitcherModifier *)&v25 appLayoutsGenerationCount];
  if (self->_appLayouts_lastAppLayoutsGenCount != appLayoutsGenerationCount)
  {
    v19 = appLayoutsGenerationCount;
    v24.receiver = self;
    v24.super_class = SBRoutingSwitcherModifier;
    appLayouts = [(SBRoutingSwitcherModifier *)&v24 appLayouts];
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_modifiers;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [WeakRetained routingModifier:self filteredAppLayouts:appLayouts forModifier:v12];
          [(NSMapTable *)weakToStrongObjectsMapTable setObject:v13 forKey:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    appLayouts_appLayoutsForModifiers = self->_appLayouts_appLayoutsForModifiers;
    self->_appLayouts_appLayoutsForModifiers = weakToStrongObjectsMapTable;

    self->_appLayouts_lastAppLayoutsGenCount = v19;
  }

  v15 = self->_appLayouts_appLayoutsForModifiers;
  _currentModifierOrFallback = [(SBRoutingSwitcherModifier *)self _currentModifierOrFallback];
  v17 = [(NSMapTable *)v15 objectForKey:_currentModifierOrFallback];

  return v17;
}

- (CGRect)containerViewBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  _currentModifierOrFallback = [(SBRoutingSwitcherModifier *)self _currentModifierOrFallback];
  [WeakRetained routingModifier:self containerViewBoundsForModifier:_currentModifierOrFallback];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)switcherViewBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  _currentModifierOrFallback = [(SBRoutingSwitcherModifier *)self _currentModifierOrFallback];
  [WeakRetained routingModifier:self switcherViewBoundsForModifier:_currentModifierOrFallback];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_currentModifierOrFallback
{
  currentModifier = self->_currentModifier;
  if (currentModifier)
  {
    v3 = currentModifier;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
    v3 = [WeakRetained fallbackModifierForRoutingModifier:self];
  }

  return v3;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4010000000;
  v32 = &unk_21F9DA6A3;
  v33 = 0u;
  v34 = 0u;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__SBRoutingSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
  v21[3] = &unk_2783B2220;
  v23 = &v29;
  roleCopy = role;
  v12 = layoutCopy;
  v22 = v12;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v12, v21);
  v13 = v30[4];
  v14 = v30[5];
  v15 = v30[6];
  v16 = v30[7];

  _Block_object_dispose(&v29, 8);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

uint64_t __71__SBRoutingSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 frameForLayoutRole:*(a1 + 48) inAppLayout:*(a1 + 32) withBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SBRoutingSwitcherModifier_scaleForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __60__SBRoutingSwitcherModifier_scaleForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 scaleForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = v4;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  layoutCopy = layout;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4010000000;
  v32 = &unk_21F9DA6A3;
  v33 = 0u;
  v34 = 0u;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__SBRoutingSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke;
  v21[3] = &unk_2783B2220;
  v23 = &v29;
  roleCopy = role;
  v12 = layoutCopy;
  v22 = v12;
  v25 = topLeft;
  v26 = bottomLeft;
  v27 = bottomRight;
  v28 = topRight;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v12, v21);
  v13 = v30[4];
  v14 = v30[5];
  v15 = v30[6];
  v16 = v30[7];

  _Block_object_dispose(&v29, 8);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  result.topRight = v20;
  result.bottomRight = v19;
  result.bottomLeft = v18;
  result.topLeft = v17;
  return result;
}

uint64_t __82__SBRoutingSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 cornerRadiiForLayoutRole:*(a1 + 48) inAppLayout:*(a1 + 32) withCornerRadii:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (int64_t)tintStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SBRoutingSwitcherModifier_tintStyleForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __64__SBRoutingSwitcherModifier_tintStyleForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 tintStyleForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__SBRoutingSwitcherModifier_shadowStyleForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __66__SBRoutingSwitcherModifier_shadowStyleForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 shadowStyleForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__35;
  v15 = __Block_byref_object_dispose__35;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SBRoutingSwitcherModifier_topMostLayoutRolesForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __60__SBRoutingSwitcherModifier_topMostLayoutRolesForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 topMostLayoutRolesForAppLayout:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBRoutingSwitcherModifier_isLayoutRoleMatchMovedToScene_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  sceneCopy = scene;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __71__SBRoutingSwitcherModifier_isLayoutRoleMatchMovedToScene_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isLayoutRoleMatchMovedToScene:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v29 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_modifiers;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
        v11 = [WeakRetained routingModifier:self filteredAppLayouts:layoutsCopy forModifier:v9];

        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy__35;
        v22 = __Block_byref_object_dispose__35;
        v23 = 0;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __61__SBRoutingSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
        v15[3] = &unk_2783AB258;
        v17 = &v18;
        v15[4] = v9;
        v12 = v11;
        v16 = v12;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v15);
        [v5 addObjectsFromArray:v19[5]];

        _Block_object_dispose(&v18, 8);
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  return v5;
}

void __61__SBRoutingSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) adjustedAppLayoutsForAppLayouts:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v6 = [WeakRetained routingModifier:self animationAttributesModifierForLayoutElement:elementCopy];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__35;
  v19 = __Block_byref_object_dispose__35;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__SBRoutingSwitcherModifier_animationAttributesForLayoutElement___block_invoke;
  v11[3] = &unk_2783AB258;
  v14 = &v15;
  v7 = v6;
  v12 = v7;
  v8 = elementCopy;
  v13 = v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __65__SBRoutingSwitcherModifier_animationAttributesForLayoutElement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animationAttributesForLayoutElement:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)switcherDropRegionContextForDraggingLayoutRole:(int64_t)role inAppLayout:(id)layout atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  layoutCopy = layout;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35;
  v23 = __Block_byref_object_dispose__35;
  v24 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__SBRoutingSwitcherModifier_switcherDropRegionContextForDraggingLayoutRole_inAppLayout_atLocation___block_invoke;
  v13[3] = &unk_2783B2298;
  v15 = &v19;
  roleCopy = role;
  v10 = layoutCopy;
  v14 = v10;
  v17 = x;
  v18 = y;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v10, v13);
  v11 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __99__SBRoutingSwitcherModifier_switcherDropRegionContextForDraggingLayoutRole_inAppLayout_atLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 switcherDropRegionContextForDraggingLayoutRole:*(a1 + 48) inAppLayout:*(a1 + 32) atLocation:{*(a1 + 56), *(a1 + 64)}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isLayoutRoleDraggable:(int64_t)draggable inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SBRoutingSwitcherModifier_isLayoutRoleDraggable_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  draggableCopy = draggable;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __63__SBRoutingSwitcherModifier_isLayoutRoleDraggable_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isLayoutRoleDraggable:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)isLayoutRoleEligibleForContentDragSpringLoading:(int64_t)loading inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SBRoutingSwitcherModifier_isLayoutRoleEligibleForContentDragSpringLoading_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  loadingCopy = loading;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __89__SBRoutingSwitcherModifier_isLayoutRoleEligibleForContentDragSpringLoading_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isLayoutRoleEligibleForContentDragSpringLoading:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)canLayoutRoleParticipateInSwitcherDragAndDrop:(int64_t)drop appLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__SBRoutingSwitcherModifier_canLayoutRoleParticipateInSwitcherDragAndDrop_appLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  dropCopy = drop;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __85__SBRoutingSwitcherModifier_canLayoutRoleParticipateInSwitcherDragAndDrop_appLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 canLayoutRoleParticipateInSwitcherDragAndDrop:a1[6] appLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (int64_t)topAffordanceOptionsMaskForLeafAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SBRoutingSwitcherModifier_topAffordanceOptionsMaskForLeafAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __70__SBRoutingSwitcherModifier_topAffordanceOptionsMaskForLeafAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 topAffordanceOptionsMaskForLeafAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)selectedActionTypeForLeafAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SBRoutingSwitcherModifier_selectedActionTypeForLeafAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __64__SBRoutingSwitcherModifier_selectedActionTypeForLeafAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 selectedActionTypeForLeafAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (SBWindowControlsLayout)windowControlsLayoutForLeafAppLayout:(SEL)layout
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_21F9DA6A3;
  v17 = 0u;
  v18 = 0u;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__SBRoutingSwitcherModifier_windowControlsLayoutForLeafAppLayout___block_invoke;
  v10[3] = &unk_2783B2270;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = *(v14 + 3);
  *&retstr->style = *(v14 + 2);
  retstr->margin = v8;

  _Block_object_dispose(&v13, 8);
  return result;
}

double __66__SBRoutingSwitcherModifier_windowControlsLayoutForLeafAppLayout___block_invoke(uint64_t a1, void *a2)
{
  [a2 windowControlsLayoutForLeafAppLayout:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  result = *&v5;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  return result;
}

- (double)backgroundOpacityForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SBRoutingSwitcherModifier_backgroundOpacityForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__SBRoutingSwitcherModifier_backgroundOpacityForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 backgroundOpacityForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SBRoutingSwitcherModifier_maskedCornersForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __51__SBRoutingSwitcherModifier_maskedCornersForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 maskedCornersForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)maskedCornersForLayoutRole:(int64_t)role inAppLayout:(id)layout withMaskedCorners:(unint64_t)corners
{
  layoutCopy = layout;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__SBRoutingSwitcherModifier_maskedCornersForLayoutRole_inAppLayout_withMaskedCorners___block_invoke;
  v12[3] = &unk_2783B22E8;
  v14 = &v17;
  roleCopy = role;
  v9 = layoutCopy;
  v13 = v9;
  cornersCopy = corners;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v9, v12);
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __86__SBRoutingSwitcherModifier_maskedCornersForLayoutRole_inAppLayout_withMaskedCorners___block_invoke(void *a1, void *a2)
{
  result = [a2 maskedCornersForLayoutRole:a1[6] inAppLayout:a1[4] withMaskedCorners:a1[7]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (id)animationAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout withAnimationAttributes:(id)attributes
{
  layoutCopy = layout;
  attributesCopy = attributes;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35;
  v23 = __Block_byref_object_dispose__35;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__SBRoutingSwitcherModifier_animationAttributesForLayoutRole_inAppLayout_withAnimationAttributes___block_invoke;
  v14[3] = &unk_2783B2310;
  v17 = &v19;
  roleCopy = role;
  v10 = layoutCopy;
  v15 = v10;
  v11 = attributesCopy;
  v16 = v11;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v10, v14);
  v12 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v12;
}

void __98__SBRoutingSwitcherModifier_animationAttributesForLayoutRole_inAppLayout_withAnimationAttributes___block_invoke(void *a1, void *a2)
{
  v3 = [a2 animationAttributesForLayoutRole:a1[7] inAppLayout:a1[4] withAnimationAttributes:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBRoutingSwitcherModifier_isLayoutRoleBlurred_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  blurredCopy = blurred;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __61__SBRoutingSwitcherModifier_isLayoutRoleBlurred_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isLayoutRoleBlurred:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (unint64_t)blurTargetPreferenceForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SBRoutingSwitcherModifier_blurTargetPreferenceForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __75__SBRoutingSwitcherModifier_blurTargetPreferenceForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 blurTargetPreferenceForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SBRoutingSwitcherModifier_blurDelayForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __64__SBRoutingSwitcherModifier_blurDelayForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 blurDelayForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = v4;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__SBRoutingSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke;
  v12[3] = &unk_2783B2338;
  v14 = &v16;
  roleCopy = role;
  v9 = layoutCopy;
  v13 = v9;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v12);
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

uint64_t __70__SBRoutingSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke(void *a1, void *a2, uint64_t a3)
{
  result = [a2 opacityForLayoutRole:a1[6] inAppLayout:a1[4] atIndex:a3];
  *(*(a1[5] + 8) + 24) = v5;
  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBRoutingSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke;
  v6[3] = &unk_2783B2360;
  v6[4] = &v7;
  v6[5] = role;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __64__SBRoutingSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 shadowOpacityForLayoutRole:*(a1 + 40) atIndex:a3];
  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SBRoutingSwitcherModifier_shouldAllowContentViewTouchesForLayoutRole_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  roleCopy = role;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __84__SBRoutingSwitcherModifier_shouldAllowContentViewTouchesForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 shouldAllowContentViewTouchesForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)isLayoutRoleSelectable:(int64_t)selectable inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBRoutingSwitcherModifier_isLayoutRoleSelectable_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  selectableCopy = selectable;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __64__SBRoutingSwitcherModifier_isLayoutRoleSelectable_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isLayoutRoleSelectable:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)shouldSuppressHighlightEffectForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__SBRoutingSwitcherModifier_shouldSuppressHighlightEffectForLayoutRole_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  roleCopy = role;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __84__SBRoutingSwitcherModifier_shouldSuppressHighlightEffectForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 shouldSuppressHighlightEffectForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)shouldUseNonuniformSnapshotScalingForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SBRoutingSwitcherModifier_shouldUseNonuniformSnapshotScalingForLayoutRole_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  roleCopy = role;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __89__SBRoutingSwitcherModifier_shouldUseNonuniformSnapshotScalingForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 shouldUseNonuniformSnapshotScalingForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (int64_t)touchBehaviorForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SBRoutingSwitcherModifier_touchBehaviorForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __68__SBRoutingSwitcherModifier_touchBehaviorForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 touchBehaviorForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (double)blurViewIconScaleForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SBRoutingSwitcherModifier_blurViewIconScaleForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __55__SBRoutingSwitcherModifier_blurViewIconScaleForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 blurViewIconScaleForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SBRoutingSwitcherModifier_dimmingAlphaForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __67__SBRoutingSwitcherModifier_dimmingAlphaForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 dimmingAlphaForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = v4;
  return result;
}

- (double)shelfBackgroundBlurOpacity
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBRoutingSwitcherModifier_shelfBackgroundBlurOpacity__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __55__SBRoutingSwitcherModifier_shelfBackgroundBlurOpacity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 shelfBackgroundBlurOpacity];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (CGRect)shelfBackgroundBlurFrame
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4010000000;
  v17 = &unk_21F9DA6A3;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SBRoutingSwitcherModifier_shelfBackgroundBlurFrame__block_invoke;
  v13[3] = &unk_2783A8CE0;
  v13[4] = self;
  v13[5] = &v14;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v13);

  v5 = v15[4];
  v6 = v15[5];
  v7 = v15[6];
  v8 = v15[7];
  _Block_object_dispose(&v14, 8);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

void __53__SBRoutingSwitcherModifier_shelfBackgroundBlurFrame__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 shelfBackgroundBlurFrame];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
}

- (BOOL)switcherHitTestsAsOpaque
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __53__SBRoutingSwitcherModifier_switcherHitTestsAsOpaque__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __53__SBRoutingSwitcherModifier_switcherHitTestsAsOpaque__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) switcherHitTestsAsOpaque];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)resizeProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__35;
  v18 = __Block_byref_object_dispose__35;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SBRoutingSwitcherModifier_resizeProgressNotificationsForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __82__SBRoutingSwitcherModifier_resizeProgressNotificationsForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  v3 = [a2 resizeProgressNotificationsForLayoutRole:a1[6] inAppLayout:a1[4]];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)repositionProgressNotificationsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__35;
  v18 = __Block_byref_object_dispose__35;
  v19 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__SBRoutingSwitcherModifier_repositionProgressNotificationsForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __86__SBRoutingSwitcherModifier_repositionProgressNotificationsForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  v3 = [a2 repositionProgressNotificationsForLayoutRole:a1[6] inAppLayout:a1[4]];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CGRect)fullyPresentedFrameForIndex:(unint64_t)index frame:(CGRect)frame
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4010000000;
  v17 = &unk_21F9DA6A3;
  v18 = 0u;
  v19 = 0u;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SBRoutingSwitcherModifier_fullyPresentedFrameForIndex_frame___block_invoke;
  v12[3] = &unk_2783B2388;
  v12[4] = &v14;
  frameCopy = frame;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v12);
  v4 = v15[4];
  v5 = v15[5];
  v6 = v15[6];
  v7 = v15[7];
  _Block_object_dispose(&v14, 8);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

uint64_t __63__SBRoutingSwitcherModifier_fullyPresentedFrameForIndex_frame___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 fullyPresentedFrameForIndex:*(a1 + 40) frame:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v4 = *(*(a1 + 32) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (id)animatablePropertyIdentifiers
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __58__SBRoutingSwitcherModifier_animatablePropertyIdentifiers__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _setByCombiningSets(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __58__SBRoutingSwitcherModifier_animatablePropertyIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animatablePropertyIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)modelValueForAnimatableProperty:(id)property currentValue:(double)value creating:(BOOL)creating
{
  v27 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__35;
      v20 = __Block_byref_object_dispose__35;
      v21 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __83__SBRoutingSwitcherModifier_modelValueForAnimatableProperty_currentValue_creating___block_invoke;
      v15[3] = &unk_2783A8CE0;
      v15[4] = v11;
      v15[5] = &v16;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v15);
      v12 = [v17[5] containsObject:propertyCopy];
      _Block_object_dispose(&v16, 8);

      if (v12)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return value;
}

void __83__SBRoutingSwitcherModifier_modelValueForAnimatableProperty_currentValue_creating___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animatablePropertyIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)updateModeForAnimatableProperty:(id)property
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v20 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v19 + 1) + 8 * v7);
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__35;
      v17 = __Block_byref_object_dispose__35;
      v18 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__SBRoutingSwitcherModifier_updateModeForAnimatableProperty___block_invoke;
      v12[3] = &unk_2783A8CE0;
      v12[4] = v8;
      v12[5] = &v13;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v12);
      v9 = [v14[5] containsObject:propertyCopy];
      _Block_object_dispose(&v13, 8);

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 1;
}

void __61__SBRoutingSwitcherModifier_updateModeForAnimatableProperty___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animatablePropertyIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)settingsForAnimatableProperty:(id)property
{
  v25 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__35;
      v18 = __Block_byref_object_dispose__35;
      v19 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __59__SBRoutingSwitcherModifier_settingsForAnimatableProperty___block_invoke;
      v13[3] = &unk_2783A8CE0;
      v13[4] = v8;
      v13[5] = &v14;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
      v9 = [v15[5] containsObject:propertyCopy];
      _Block_object_dispose(&v14, 8);

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  initWithDefaultValues = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];

  return initWithDefaultValues;
}

void __59__SBRoutingSwitcherModifier_settingsForAnimatableProperty___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animatablePropertyIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)shouldUpdateAnimatableProperty:(id)property
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v20 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v19 + 1) + 8 * v7);
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__35;
      v17 = __Block_byref_object_dispose__35;
      v18 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__SBRoutingSwitcherModifier_shouldUpdateAnimatableProperty___block_invoke;
      v12[3] = &unk_2783A8CE0;
      v12[4] = v8;
      v12[5] = &v13;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v12);
      v9 = [v14[5] containsObject:propertyCopy];
      _Block_object_dispose(&v13, 8);

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 1;
}

void __60__SBRoutingSwitcherModifier_shouldUpdateAnimatableProperty___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animatablePropertyIdentifiers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (CGRect)frameForIconOverlayInAppLayout:(id)layout
{
  layoutCopy = layout;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4010000000;
  v20 = &unk_21F9DA6A3;
  v21 = 0u;
  v22 = 0u;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SBRoutingSwitcherModifier_frameForIconOverlayInAppLayout___block_invoke;
  v14[3] = &unk_2783B2270;
  v16 = &v17;
  v5 = layoutCopy;
  v15 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v14);
  v6 = v18[4];
  v7 = v18[5];
  v8 = v18[6];
  v9 = v18[7];

  _Block_object_dispose(&v17, 8);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

uint64_t __60__SBRoutingSwitcherModifier_frameForIconOverlayInAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 frameForIconOverlayInAppLayout:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (BOOL)canFocusableAppLayoutBeEffectivelyObscured:(id)obscured
{
  obscuredCopy = obscured;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SBRoutingSwitcherModifier_canFocusableAppLayoutBeEffectivelyObscured___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = obscuredCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __72__SBRoutingSwitcherModifier_canFocusableAppLayoutBeEffectivelyObscured___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 canFocusableAppLayoutBeEffectivelyObscured:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_21F9DA6A3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBRoutingSwitcherModifier_anchorPointForIndex___block_invoke;
  v7[3] = &unk_2783B22C0;
  v7[4] = &v8;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

uint64_t __49__SBRoutingSwitcherModifier_anchorPointForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 anchorPointForIndex:?];
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SBRoutingSwitcherModifier_shouldPinLayoutRolesToSpace___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, space, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__SBRoutingSwitcherModifier_shouldPinLayoutRolesToSpace___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldPinLayoutRolesToSpace:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SBRoutingSwitcherModifier_shouldUseAnchorPointToPinLayoutRolesToSpace___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, space, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __73__SBRoutingSwitcherModifier_shouldUseAnchorPointToPinLayoutRolesToSpace___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldUseAnchorPointToPinLayoutRolesToSpace:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)isHitTestBlockingViewVisible
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __57__SBRoutingSwitcherModifier_isHitTestBlockingViewVisible__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __57__SBRoutingSwitcherModifier_isHitTestBlockingViewVisible__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isHitTestBlockingViewVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_21F9DA6A3;
  v16 = 0u;
  v17 = 0u;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SBRoutingSwitcherModifier_frameForIndex___block_invoke;
  v11[3] = &unk_2783B22C0;
  v11[4] = &v12;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v11);
  v3 = v13[4];
  v4 = v13[5];
  v5 = v13[6];
  v6 = v13[7];
  _Block_object_dispose(&v12, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

uint64_t __43__SBRoutingSwitcherModifier_frameForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 frameForIndex:?];
  v4 = *(*(a1 + 32) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SBRoutingSwitcherModifier_scaleForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__SBRoutingSwitcherModifier_scaleForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 scaleForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (double)rotationAngleForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SBRoutingSwitcherModifier_rotationAngleForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __51__SBRoutingSwitcherModifier_rotationAngleForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 rotationAngleForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (int64_t)occlusionStateForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v30 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_modifiers;
  v6 = 0;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __69__SBRoutingSwitcherModifier_occlusionStateForLayoutRole_inAppLayout___block_invoke;
        v17[3] = &unk_2783AA668;
        v19 = &v21;
        roleCopy = role;
        v17[4] = v11;
        v18 = layoutCopy;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v17);
        v12 = v22[3];

        _Block_object_dispose(&v21, 8);
        if (v6 <= v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v6;
        }

        if (v8)
        {
          v6 = v13;
        }

        else
        {
          v6 = v12;
        }

        ++v10;
        v8 = 1;
      }

      while (v7 != v10);
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  return v6;
}

uint64_t __69__SBRoutingSwitcherModifier_occlusionStateForLayoutRole_inAppLayout___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) occlusionStateForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (CGRect)clippingFrameForIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_21F9DA6A3;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v19 = *MEMORY[0x277CBF3A0];
  v20 = v4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SBRoutingSwitcherModifier_clippingFrameForIndex_withBounds___block_invoke;
  v13[3] = &unk_2783B2388;
  v13[4] = &v15;
  boundsCopy = bounds;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v13);
  v5 = v16[4];
  v6 = v16[5];
  v7 = v16[6];
  v8 = v16[7];
  _Block_object_dispose(&v15, 8);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

uint64_t __62__SBRoutingSwitcherModifier_clippingFrameForIndex_withBounds___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 clippingFrameForIndex:*(a1 + 40) withBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v4 = *(*(a1 + 32) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (CGRect)clippingFrameForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4010000000;
  v35 = &unk_21F9DA6A3;
  v14 = *(MEMORY[0x277CBF3A0] + 16);
  v36 = *MEMORY[0x277CBF3A0];
  v37 = v14;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__SBRoutingSwitcherModifier_clippingFrameForLayoutRole_inAppLayout_atIndex_withBounds___block_invoke;
  v24[3] = &unk_2783B23B0;
  v26 = &v32;
  roleCopy = role;
  v15 = layoutCopy;
  v25 = v15;
  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v24);
  v16 = v33[4];
  v17 = v33[5];
  v18 = v33[6];
  v19 = v33[7];

  _Block_object_dispose(&v32, 8);
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __87__SBRoutingSwitcherModifier_clippingFrameForLayoutRole_inAppLayout_atIndex_withBounds___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 clippingFrameForLayoutRole:*(a1 + 48) inAppLayout:*(a1 + 32) atIndex:a3 withBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v5 = *(*(a1 + 40) + 8);
  v5[4] = v6;
  v5[5] = v7;
  v5[6] = v8;
  v5[7] = v9;
  return result;
}

- (BOOL)clipsToBoundsAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SBRoutingSwitcherModifier_clipsToBoundsAtIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__SBRoutingSwitcherModifier_clipsToBoundsAtIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 clipsToBoundsAtIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts
{
  layoutCopy = layout;
  layoutsCopy = layouts;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__35;
  v20 = __Block_byref_object_dispose__35;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__SBRoutingSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke;
  v12[3] = &unk_2783B23D8;
  v15 = &v16;
  v8 = layoutCopy;
  v13 = v8;
  v9 = layoutsCopy;
  v14 = v9;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v8, v12);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __91__SBRoutingSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke(void *a1, void *a2)
{
  v3 = [a2 preferredAppLayoutToReuseAccessoryForAppLayout:a1[4] fromAppLayouts:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CGPoint)expandedSourcePositionForSystemApertureTransition
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)rootContentViewMaskRect
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)meshTransformForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SBRoutingSwitcherModifier_meshTransformForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__SBRoutingSwitcherModifier_meshTransformForIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 meshTransformForIndex:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)identityMeshTransformForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SBRoutingSwitcherModifier_identityMeshTransformForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__SBRoutingSwitcherModifier_identityMeshTransformForIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identityMeshTransformForIndex:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)genieAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__35;
  v15 = __Block_byref_object_dispose__35;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SBRoutingSwitcherModifier_genieAttributesForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __57__SBRoutingSwitcherModifier_genieAttributesForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 genieAttributesForAppLayout:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isDropletEffectRequiredBehindAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__SBRoutingSwitcherModifier_isDropletEffectRequiredBehindAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __68__SBRoutingSwitcherModifier_isDropletEffectRequiredBehindAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isDropletEffectRequiredBehindAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__35;
  v15 = __Block_byref_object_dispose__35;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__SBRoutingSwitcherModifier_resizeGrabberLayoutAttributesForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __71__SBRoutingSwitcherModifier_resizeGrabberLayoutAttributesForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 resizeGrabberLayoutAttributesForAppLayout:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4010000000;
  v29 = &unk_21F9DA6A3;
  v30 = 0u;
  v31 = 0u;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke;
  v19[3] = &unk_2783B2400;
  v21 = &v26;
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  v10 = layoutCopy;
  v20 = v10;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v10, v19);
  v11 = v27[4];
  v12 = v27[5];
  v13 = v27[6];
  v14 = v27[7];

  _Block_object_dispose(&v26, 8);
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

uint64_t __74__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 adjustedSpaceAccessoryViewFrame:*(a1 + 32) forAppLayout:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = &unk_21F9DA6A3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewAnchorPoint_forAppLayout___block_invoke;
  v13[3] = &unk_2783B22E8;
  v15 = &v18;
  v16 = x;
  v17 = y;
  v8 = layoutCopy;
  v14 = v8;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v8, v13);
  v9 = v19[4];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

uint64_t __80__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewAnchorPoint_forAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 adjustedSpaceAccessoryViewAnchorPoint:*(a1 + 32) forAppLayout:{*(a1 + 48), *(a1 + 56)}];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewScale_forAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  scaleCopy = scale;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __74__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewScale_forAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 adjustedSpaceAccessoryViewScale:*(a1 + 32) forAppLayout:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewPerspectiveAngle:(CGPoint)angle forAppLayout:(id)layout
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = &unk_21F9DA6A3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewPerspectiveAngle_forAppLayout___block_invoke;
  v13[3] = &unk_2783B22E8;
  v15 = &v18;
  v16 = x;
  v17 = y;
  v8 = layoutCopy;
  v14 = v8;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v8, v13);
  v9 = v19[4];
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  v11 = v9;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

uint64_t __85__SBRoutingSwitcherModifier_adjustedSpaceAccessoryViewPerspectiveAngle_forAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 adjustedSpaceAccessoryViewPerspectiveAngle:*(a1 + 32) forAppLayout:{*(a1 + 48), *(a1 + 56)}];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (id)visibleAppLayouts
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __46__SBRoutingSwitcherModifier_visibleAppLayouts__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _setByCombiningSets(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __46__SBRoutingSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBRoutingSwitcherModifier_isHomeAffordanceSupportedForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __67__SBRoutingSwitcherModifier_isHomeAffordanceSupportedForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isHomeAffordanceSupportedForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __64__SBRoutingSwitcherModifier_visibleHomeAffordanceLayoutElements__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _setByCombiningSets(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __64__SBRoutingSwitcherModifier_visibleHomeAffordanceLayoutElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleHomeAffordanceLayoutElements];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SBRoutingSwitcherModifier_isResizeGrabberVisibleForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __64__SBRoutingSwitcherModifier_isResizeGrabberVisibleForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isResizeGrabberVisibleForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)activeCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SBRoutingSwitcherModifier_activeCornersForTouchResizeForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __82__SBRoutingSwitcherModifier_activeCornersForTouchResizeForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 activeCornersForTouchResizeForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (unint64_t)visibleCornersForTouchResizeForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBRoutingSwitcherModifier_visibleCornersForTouchResizeForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __83__SBRoutingSwitcherModifier_visibleCornersForTouchResizeForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 visibleCornersForTouchResizeForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)isItemResizingAllowedForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBRoutingSwitcherModifier_isItemResizingAllowedForLayoutRole_inAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  roleCopy = role;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __76__SBRoutingSwitcherModifier_isItemResizingAllowedForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isItemResizingAllowedForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)isHintingResizeGrabberForDisplayItem:(id)item corner:(unint64_t)corner inAppLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__SBRoutingSwitcherModifier_isHintingResizeGrabberForDisplayItem_corner_inAppLayout___block_invoke;
  v13[3] = &unk_2783B2310;
  v16 = &v18;
  v10 = itemCopy;
  v14 = v10;
  cornerCopy = corner;
  v11 = layoutCopy;
  v15 = v11;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v11, v13);
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

uint64_t __85__SBRoutingSwitcherModifier_isHintingResizeGrabberForDisplayItem_corner_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isHintingResizeGrabberForDisplayItem:a1[4] corner:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)visibleShelves
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = 0;
    v14 = *v24;
    do
    {
      v6 = 0;
      v7 = v3;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v6);
        v17 = 0;
        v18 = &v17;
        v19 = 0x3032000000;
        v20 = __Block_byref_object_copy__35;
        v21 = __Block_byref_object_dispose__35;
        v22 = 0;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __43__SBRoutingSwitcherModifier_visibleShelves__block_invoke;
        v16[3] = &unk_2783A8CE0;
        v16[4] = v8;
        v16[5] = &v17;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v16);
        v9 = v18[5];
        _Block_object_dispose(&v17, 8);

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __43__SBRoutingSwitcherModifier_visibleShelves__block_invoke_2;
        v15[3] = &unk_2783B2428;
        v15[4] = self;
        v15[5] = v8;
        v10 = [v9 bs_map:v15];

        if (v5)
        {
          v11 = _setByCombiningSets(v7, v10);
        }

        else
        {
          v11 = v10;
        }

        v3 = v11;

        ++v6;
        v5 = 1;
        v7 = v3;
      }

      while (v4 != v6);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  return v3;
}

void __43__SBRoutingSwitcherModifier_visibleShelves__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x5810000000;
  v25 = &unk_21F9DA6A3;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  SBSwitcherShelfPresentationAttributesMake(0, 0, 0, v26, *MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_modifiers;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __60__SBRoutingSwitcherModifier_presentationAttributesForShelf___block_invoke;
        v15[3] = &unk_2783AED90;
        v15[4] = v9;
        v15[5] = self;
        v16 = v5;
        v17 = &v22;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v15);

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }

  v10 = v23;
  v11 = *(v23 + 3);
  *&retstr->var0 = *(v23 + 2);
  *&retstr->var1.origin.y = v11;
  *&retstr->var1.size.height = *(v10 + 4);
  retstr->var3 = v10[10];
  _Block_object_dispose(&v22, 8);

  return result;
}

void __60__SBRoutingSwitcherModifier_presentationAttributesForShelf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SBRoutingSwitcherModifier_presentationAttributesForShelf___block_invoke_2;
  v14[3] = &unk_2783B2450;
  v15 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v3 = [v2 bs_map:v14];

  if ([v3 containsObject:*(a1 + 48)])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _adjustedShelfForShelf:*(a1 + 48) forModifier:v4];
    [v4 presentationAttributesForShelf:v5];
    v6 = *(*(a1 + 56) + 8);
    v7 = v13;
    v8 = v12;
    v9 = v11;
    *(v6 + 32) = v10;
    *(v6 + 48) = v9;
    *(v6 + 64) = v8;
    *(v6 + 80) = v7;
  }
}

- (CGRect)frameForShelf:(id)shelf
{
  v33 = *MEMORY[0x277D85DE8];
  shelfCopy = shelf;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4010000000;
  v29 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v30 = *MEMORY[0x277CBF3A0];
  v31 = v5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __43__SBRoutingSwitcherModifier_frameForShelf___block_invoke;
        v19[3] = &unk_2783AED90;
        v19[4] = v9;
        v19[5] = self;
        v20 = shelfCopy;
        v21 = &v26;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v19);

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v6);
  }

  v10 = v27[4];
  v11 = v27[5];
  v12 = v27[6];
  v13 = v27[7];
  _Block_object_dispose(&v26, 8);

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

void __43__SBRoutingSwitcherModifier_frameForShelf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SBRoutingSwitcherModifier_frameForShelf___block_invoke_2;
  v11[3] = &unk_2783B2450;
  v12 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v3 = [v2 bs_map:v11];

  if ([v3 containsObject:*(a1 + 48)])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _adjustedShelfForShelf:*(a1 + 48) forModifier:v4];
    [v4 frameForShelf:v5];
    v6 = *(*(a1 + 56) + 8);
    v6[4] = v7;
    v6[5] = v8;
    v6[6] = v9;
    v6[7] = v10;
  }
}

- (id)focusedAppLayoutForShelf:(id)shelf
{
  v26 = *MEMORY[0x277D85DE8];
  shelfCopy = shelf;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35;
  v23 = __Block_byref_object_dispose__35;
  v24 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __54__SBRoutingSwitcherModifier_focusedAppLayoutForShelf___block_invoke;
        v12[3] = &unk_2783AED90;
        v12[4] = v8;
        v12[5] = self;
        v13 = shelfCopy;
        v14 = &v19;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v12);
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v9 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __54__SBRoutingSwitcherModifier_focusedAppLayoutForShelf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__SBRoutingSwitcherModifier_focusedAppLayoutForShelf___block_invoke_2;
  v9[3] = &unk_2783B2450;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v3 = [v2 bs_map:v9];

  if ([v3 containsObject:*(a1 + 48)])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _adjustedShelfForShelf:*(a1 + 48) forModifier:v4];
    v6 = [v4 focusedAppLayoutForShelf:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)ignoredDisplayItemsForShelf:(id)shelf
{
  v26 = *MEMORY[0x277D85DE8];
  shelfCopy = shelf;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35;
  v23 = __Block_byref_object_dispose__35;
  v24 = [MEMORY[0x277CBEB98] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __57__SBRoutingSwitcherModifier_ignoredDisplayItemsForShelf___block_invoke;
        v12[3] = &unk_2783AED90;
        v12[4] = v8;
        v12[5] = self;
        v13 = shelfCopy;
        v14 = &v19;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v12);
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v9 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __57__SBRoutingSwitcherModifier_ignoredDisplayItemsForShelf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SBRoutingSwitcherModifier_ignoredDisplayItemsForShelf___block_invoke_2;
  v9[3] = &unk_2783B2450;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v3 = [v2 bs_map:v9];

  if ([v3 containsObject:*(a1 + 48)])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _adjustedShelfForShelf:*(a1 + 48) forModifier:v4];
    v6 = [v4 ignoredDisplayItemsForShelf:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)containerLeafAppLayoutForShelf:(id)shelf
{
  v26 = *MEMORY[0x277D85DE8];
  shelfCopy = shelf;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35;
  v23 = __Block_byref_object_dispose__35;
  v24 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __60__SBRoutingSwitcherModifier_containerLeafAppLayoutForShelf___block_invoke;
        v12[3] = &unk_2783AED90;
        v12[4] = v8;
        v12[5] = self;
        v13 = shelfCopy;
        v14 = &v19;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v12);
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v9 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __60__SBRoutingSwitcherModifier_containerLeafAppLayoutForShelf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBRoutingSwitcherModifier_containerLeafAppLayoutForShelf___block_invoke_2;
  v9[3] = &unk_2783B2450;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v3 = [v2 bs_map:v9];

  if ([v3 containsObject:*(a1 + 48)])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _adjustedShelfForShelf:*(a1 + 48) forModifier:v4];
    v6 = [v4 containerLeafAppLayoutForShelf:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)hiddenAppLayoutsInShelf:(id)shelf
{
  v26 = *MEMORY[0x277D85DE8];
  shelfCopy = shelf;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35;
  v23 = __Block_byref_object_dispose__35;
  v24 = [MEMORY[0x277CBEB98] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __53__SBRoutingSwitcherModifier_hiddenAppLayoutsInShelf___block_invoke;
        v12[3] = &unk_2783AED90;
        v12[4] = v8;
        v12[5] = self;
        v13 = shelfCopy;
        v14 = &v19;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v12);
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v9 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __53__SBRoutingSwitcherModifier_hiddenAppLayoutsInShelf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SBRoutingSwitcherModifier_hiddenAppLayoutsInShelf___block_invoke_2;
  v9[3] = &unk_2783B2450;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v3 = [v2 bs_map:v9];

  if ([v3 containsObject:*(a1 + 48)])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _adjustedShelfForShelf:*(a1 + 48) forModifier:v4];
    v6 = [v4 hiddenAppLayoutsInShelf:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf
{
  v26 = *MEMORY[0x277D85DE8];
  shelfCopy = shelf;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35;
  v23 = __Block_byref_object_dispose__35;
  v24 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_modifiers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __74__SBRoutingSwitcherModifier_homeAffordanceLayoutElementToPortalIntoShelf___block_invoke;
        v12[3] = &unk_2783AED90;
        v12[4] = v8;
        v12[5] = self;
        v13 = shelfCopy;
        v14 = &v19;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v12);
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v9 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __74__SBRoutingSwitcherModifier_homeAffordanceLayoutElementToPortalIntoShelf___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleShelves];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__SBRoutingSwitcherModifier_homeAffordanceLayoutElementToPortalIntoShelf___block_invoke_2;
  v9[3] = &unk_2783B2450;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v3 = [v2 bs_map:v9];

  if ([v3 containsObject:*(a1 + 48)])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _adjustedShelfForShelf:*(a1 + 48) forModifier:v4];
    v6 = [v4 homeAffordanceLayoutElementToPortalIntoShelf:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (CGRect)frameForSplitViewHandleNubView:(id)view
{
  v38 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4010000000;
  v34 = &unk_21F9DA6A3;
  v5 = MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v35 = *MEMORY[0x277CBF3A0];
  v36 = v6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = self->_modifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v8)
  {
    v9 = *v28;
    v10 = *v5;
    v11 = v5[1];
    v12 = v5[2];
    v13 = v5[3];
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v27 + 1) + 8 * v14);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __60__SBRoutingSwitcherModifier_frameForSplitViewHandleNubView___block_invoke;
      v24[3] = &unk_2783AEA70;
      v24[4] = v15;
      v25 = viewCopy;
      v26 = &v31;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v15, v24);
      v40.origin.x = v10;
      v40.origin.y = v11;
      v40.size.width = v12;
      v40.size.height = v13;
      LOBYTE(v15) = CGRectEqualToRect(v32[1], v40);

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (v8 == ++v14)
      {
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  x = v32[1].origin.x;
  y = v32[1].origin.y;
  width = v32[1].size.width;
  height = v32[1].size.height;
  _Block_object_dispose(&v31, 8);

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

void __60__SBRoutingSwitcherModifier_frameForSplitViewHandleNubView___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) visibleSplitViewHandleNubViews];
  if ([v7 containsObject:*(a1 + 40)])
  {
    [*(a1 + 32) frameForSplitViewHandleNubView:*(a1 + 40)];
    v2 = *(*(a1 + 48) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
    v2[7] = v6;
  }
}

- (CGRect)frameForSplitViewHandleDimmingView:(id)view
{
  v38 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4010000000;
  v34 = &unk_21F9DA6A3;
  v5 = MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v35 = *MEMORY[0x277CBF3A0];
  v36 = v6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = self->_modifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v8)
  {
    v9 = *v28;
    v10 = *v5;
    v11 = v5[1];
    v12 = v5[2];
    v13 = v5[3];
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v27 + 1) + 8 * v14);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __64__SBRoutingSwitcherModifier_frameForSplitViewHandleDimmingView___block_invoke;
      v24[3] = &unk_2783AEA70;
      v24[4] = v15;
      v25 = viewCopy;
      v26 = &v31;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v15, v24);
      v40.origin.x = v10;
      v40.origin.y = v11;
      v40.size.width = v12;
      v40.size.height = v13;
      LOBYTE(v15) = CGRectEqualToRect(v32[1], v40);

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (v8 == ++v14)
      {
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  x = v32[1].origin.x;
  y = v32[1].origin.y;
  width = v32[1].size.width;
  height = v32[1].size.height;
  _Block_object_dispose(&v31, 8);

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

void __64__SBRoutingSwitcherModifier_frameForSplitViewHandleDimmingView___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) visibleSplitViewHandleDimmingViews];
  if ([v7 containsObject:*(a1 + 40)])
  {
    [*(a1 + 32) frameForSplitViewHandleDimmingView:*(a1 + 40)];
    v2 = *(*(a1 + 48) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
    v2[7] = v6;
  }
}

- (unint64_t)hiddenContainerStatusBarParts
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __58__SBRoutingSwitcherModifier_hiddenContainerStatusBarParts__block_invoke;
        v10[3] = &unk_2783A8CE0;
        v10[4] = v7;
        v10[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v10);
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v19 count:16];
    }

    while (v4);
  }

  v8 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __58__SBRoutingSwitcherModifier_hiddenContainerStatusBarParts__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hiddenContainerStatusBarParts];
  *(*(*(a1 + 40) + 8) + 24) |= result;
  return result;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SBRoutingSwitcherModifier_hiddenContentStatusBarPartsForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __82__SBRoutingSwitcherModifier_hiddenContentStatusBarPartsForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 hiddenContentStatusBarPartsForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)isContainerStatusBarPart:(unint64_t)part hiddenByLeafAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBRoutingSwitcherModifier_isContainerStatusBarPart_hiddenByLeafAppLayout___block_invoke;
  v9[3] = &unk_2783B2248;
  v11 = &v13;
  partCopy = part;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __76__SBRoutingSwitcherModifier_isContainerStatusBarPart_hiddenByLeafAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 isContainerStatusBarPart:a1[6] hiddenByLeafAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_21F9DA6A3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__SBRoutingSwitcherModifier_perspectiveAngleForLayoutRole_inAppLayout_withPerspectiveAngle___block_invoke;
  v15[3] = &unk_2783B2298;
  v17 = &v21;
  roleCopy = role;
  v10 = layoutCopy;
  v16 = v10;
  v19 = x;
  v20 = y;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v10, v15);
  v11 = v22[4];
  v12 = v22[5];

  _Block_object_dispose(&v21, 8);
  v13 = v11;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

uint64_t __92__SBRoutingSwitcherModifier_perspectiveAngleForLayoutRole_inAppLayout_withPerspectiveAngle___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 perspectiveAngleForLayoutRole:*(a1 + 48) inAppLayout:*(a1 + 32) withPerspectiveAngle:{*(a1 + 56), *(a1 + 64)}];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (id)_adjustedShelfForShelf:(id)shelf forModifier:(id)modifier
{
  shelfCopy = shelf;
  modifierCopy = modifier;
  v8 = shelfCopy;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v10 = v8;
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained adjustedShelfForShelf:v8 forModifier:modifierCopy];
  }

  return v10;
}

- (id)_adjustedShelfForShelf:(id)shelf fromModifier:(id)modifier
{
  shelfCopy = shelf;
  modifierCopy = modifier;
  v8 = shelfCopy;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v10 = v8;
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained adjustedShelfForShelf:v8 fromModifier:modifierCopy];
  }

  return v10;
}

- (double)contentViewScale
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SBRoutingSwitcherModifier_contentViewScale__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __45__SBRoutingSwitcherModifier_contentViewScale__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 contentViewScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (BOOL)clipsToUnobscuredMarginAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SBRoutingSwitcherModifier_clipsToUnobscuredMarginAtIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__SBRoutingSwitcherModifier_clipsToUnobscuredMarginAtIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 clipsToUnobscuredMarginAtIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)visibleMarginForItemContainerAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SBRoutingSwitcherModifier_visibleMarginForItemContainerAtIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __66__SBRoutingSwitcherModifier_visibleMarginForItemContainerAtIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 visibleMarginForItemContainerAtIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (double)wallpaperOverlayAlphaForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SBRoutingSwitcherModifier_wallpaperOverlayAlphaForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __59__SBRoutingSwitcherModifier_wallpaperOverlayAlphaForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 wallpaperOverlayAlphaForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (double)lighteningAlphaForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SBRoutingSwitcherModifier_lighteningAlphaForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__SBRoutingSwitcherModifier_lighteningAlphaForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 lighteningAlphaForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (int64_t)headerStyleForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SBRoutingSwitcherModifier_headerStyleForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__SBRoutingSwitcherModifier_headerStyleForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 headerStyleForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)iconOpacityForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SBRoutingSwitcherModifier_iconOpacityForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__SBRoutingSwitcherModifier_iconOpacityForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 iconOpacityForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (double)titleOpacityForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SBRoutingSwitcherModifier_titleOpacityForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__SBRoutingSwitcherModifier_titleOpacityForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 titleOpacityForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SBRoutingSwitcherModifier_titleAndIconOpacityForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__SBRoutingSwitcherModifier_titleAndIconOpacityForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 titleAndIconOpacityForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (double)shadowOffsetForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SBRoutingSwitcherModifier_shadowOffsetForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__SBRoutingSwitcherModifier_shadowOffsetForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shadowOffsetForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_21F9DA6A3;
  v16 = 0u;
  v17 = 0u;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__SBRoutingSwitcherModifier_cornerRadiiForIndex___block_invoke;
  v11[3] = &unk_2783B22C0;
  v11[4] = &v12;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v11);
  v3 = v13[4];
  v4 = v13[5];
  v5 = v13[6];
  v6 = v13[7];
  _Block_object_dispose(&v12, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.topRight = v10;
  result.bottomRight = v9;
  result.bottomLeft = v8;
  result.topLeft = v7;
  return result;
}

uint64_t __49__SBRoutingSwitcherModifier_cornerRadiiForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 cornerRadiiForIndex:?];
  v4 = *(*(a1 + 32) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (BOOL)shouldScaleOverlayToFillBoundsAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SBRoutingSwitcherModifier_shouldScaleOverlayToFillBoundsAtIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __67__SBRoutingSwitcherModifier_shouldScaleOverlayToFillBoundsAtIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldScaleOverlayToFillBoundsAtIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldScaleContentToFillBoundsAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SBRoutingSwitcherModifier_shouldScaleContentToFillBoundsAtIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __67__SBRoutingSwitcherModifier_shouldScaleContentToFillBoundsAtIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldScaleContentToFillBoundsAtIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldUseBrightMaterialForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SBRoutingSwitcherModifier_shouldUseBrightMaterialForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __61__SBRoutingSwitcherModifier_shouldUseBrightMaterialForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldUseBrightMaterialForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__SBRoutingSwitcherModifier_shouldUseBackgroundWallpaperTreatmentForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __75__SBRoutingSwitcherModifier_shouldUseBackgroundWallpaperTreatmentForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldUseBackgroundWallpaperTreatmentForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldShowBackdropViewAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SBRoutingSwitcherModifier_shouldShowBackdropViewAtIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __59__SBRoutingSwitcherModifier_shouldShowBackdropViewAtIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldShowBackdropViewAtIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v12 = 0;
  v13 = 0;
  v11 = &unk_21F9DA6A3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SBRoutingSwitcherModifier_perspectiveAngleForIndex___block_invoke;
  v7[3] = &unk_2783B22C0;
  v7[4] = &v8;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

uint64_t __54__SBRoutingSwitcherModifier_perspectiveAngleForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 perspectiveAngleForIndex:?];
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (BOOL)shouldUseWallpaperGradientTreatment
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __64__SBRoutingSwitcherModifier_shouldUseWallpaperGradientTreatment__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __64__SBRoutingSwitcherModifier_shouldUseWallpaperGradientTreatment__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldUseWallpaperGradientTreatment];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)homeScreenAlpha
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SBRoutingSwitcherModifier_homeScreenAlpha__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __44__SBRoutingSwitcherModifier_homeScreenAlpha__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 homeScreenAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (double)homeScreenScale
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SBRoutingSwitcherModifier_homeScreenScale__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __44__SBRoutingSwitcherModifier_homeScreenScale__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 homeScreenScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (double)wallpaperScale
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SBRoutingSwitcherModifier_wallpaperScale__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __43__SBRoutingSwitcherModifier_wallpaperScale__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 wallpaperScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (double)homeScreenDimmingAlpha
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SBRoutingSwitcherModifier_homeScreenDimmingAlpha__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __51__SBRoutingSwitcherModifier_homeScreenDimmingAlpha__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 homeScreenDimmingAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (int64_t)homeScreenBackdropBlurType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBRoutingSwitcherModifier_homeScreenBackdropBlurType__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __55__SBRoutingSwitcherModifier_homeScreenBackdropBlurType__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 homeScreenBackdropBlurType];
}

- (double)homeScreenBackdropBlurProgress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SBRoutingSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __59__SBRoutingSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  [v2 homeScreenBackdropBlurProgress];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (BOOL)wantsSwitcherDimmingView
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __53__SBRoutingSwitcherModifier_wantsSwitcherDimmingView__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      if (v8 == 1)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__SBRoutingSwitcherModifier_wantsSwitcherDimmingView__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

uint64_t __53__SBRoutingSwitcherModifier_wantsSwitcherDimmingView__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherDimmingView];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __53__SBRoutingSwitcherModifier_wantsSwitcherDimmingView__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherDimmingView];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)switcherDimmingAlpha
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v6 = *v23;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __49__SBRoutingSwitcherModifier_switcherDimmingAlpha__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v8;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v17);
      v9 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v9 != 0.0)
      {
        v10 = v8;

        lastObject = v10;
      }
    }

    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v4);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__SBRoutingSwitcherModifier_switcherDimmingAlpha__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v11 = lastObject;
  v15 = v11;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v14);
  v12 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v12;
}

double __49__SBRoutingSwitcherModifier_switcherDimmingAlpha__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherDimmingView];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __49__SBRoutingSwitcherModifier_switcherDimmingAlpha__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) switcherDimmingAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)switcherDimmingViewBlocksTouches
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__SBRoutingSwitcherModifier_switcherDimmingViewBlocksTouches__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      if (v8 == 1)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__SBRoutingSwitcherModifier_switcherDimmingViewBlocksTouches__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

uint64_t __61__SBRoutingSwitcherModifier_switcherDimmingViewBlocksTouches__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherDimmingView];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __61__SBRoutingSwitcherModifier_switcherDimmingViewBlocksTouches__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) switcherDimmingViewBlocksTouches];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)wantsSwitcherBackdropBlur
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__SBRoutingSwitcherModifier_wantsSwitcherBackdropBlur__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      if (v8 == 1)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__SBRoutingSwitcherModifier_wantsSwitcherBackdropBlur__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

uint64_t __54__SBRoutingSwitcherModifier_wantsSwitcherBackdropBlur__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherBackdropBlur];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __54__SBRoutingSwitcherModifier_wantsSwitcherBackdropBlur__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherBackdropBlur];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)switcherBackdropBlurType
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __53__SBRoutingSwitcherModifier_switcherBackdropBlurType__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v8)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__SBRoutingSwitcherModifier_switcherBackdropBlurType__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t __53__SBRoutingSwitcherModifier_switcherBackdropBlurType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherBackdropBlur];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __53__SBRoutingSwitcherModifier_switcherBackdropBlurType__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) switcherBackdropBlurType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)switcherBackdropBlurProgress
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v6 = *v23;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __57__SBRoutingSwitcherModifier_switcherBackdropBlurProgress__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v8;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v17);
      v9 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v9 != 0.0)
      {
        v10 = v8;

        lastObject = v10;
      }
    }

    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v4);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__SBRoutingSwitcherModifier_switcherBackdropBlurProgress__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v11 = lastObject;
  v15 = v11;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v14);
  v12 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v12;
}

double __57__SBRoutingSwitcherModifier_switcherBackdropBlurProgress__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsSwitcherBackdropBlur];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __57__SBRoutingSwitcherModifier_switcherBackdropBlurProgress__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) switcherBackdropBlurProgress];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)multipleWindowsIndicatorLayoutRolesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__35;
  v15 = __Block_byref_object_dispose__35;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBRoutingSwitcherModifier_multipleWindowsIndicatorLayoutRolesForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __77__SBRoutingSwitcherModifier_multipleWindowsIndicatorLayoutRolesForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 multipleWindowsIndicatorLayoutRolesForAppLayout:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)wantsSpaceAccessoryViewPointerInteractionsForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__SBRoutingSwitcherModifier_wantsSpaceAccessoryViewPointerInteractionsForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __84__SBRoutingSwitcherModifier_wantsSpaceAccessoryViewPointerInteractionsForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 wantsSpaceAccessoryViewPointerInteractionsForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)spaceAccessoryViewIconHitTestOutsetForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBRoutingSwitcherModifier_spaceAccessoryViewIconHitTestOutsetForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __77__SBRoutingSwitcherModifier_spaceAccessoryViewIconHitTestOutsetForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 spaceAccessoryViewIconHitTestOutsetForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (BOOL)wantsSpaceAccessoryViewGenieForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SBRoutingSwitcherModifier_wantsSpaceAccessoryViewGenieForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __70__SBRoutingSwitcherModifier_wantsSpaceAccessoryViewGenieForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 wantsSpaceAccessoryViewGenieForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)useItemContainerFooterViewsForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SBRoutingSwitcherModifier_useItemContainerFooterViewsForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __69__SBRoutingSwitcherModifier_useItemContainerFooterViewsForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 useItemContainerFooterViewsForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)canSelectLeafWithModifierKeysInAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SBRoutingSwitcherModifier_canSelectLeafWithModifierKeysInAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __70__SBRoutingSwitcherModifier_canSelectLeafWithModifierKeysInAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 canSelectLeafWithModifierKeysInAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldAllowGroupOpacityForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SBRoutingSwitcherModifier_shouldAllowGroupOpacityForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __65__SBRoutingSwitcherModifier_shouldAllowGroupOpacityForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldAllowGroupOpacityForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)footerViewIconAlignmentForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SBRoutingSwitcherModifier_footerViewIconAlignmentForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __65__SBRoutingSwitcherModifier_footerViewIconAlignmentForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 footerViewIconAlignmentForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isScrollEnabled
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:selfCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SBRoutingSwitcherModifier_isScrollEnabled__block_invoke;
  v6[3] = &unk_2783A8CE0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  _SBRoutingSwitcherModifierRouteToModifier(&selfCopy->super.super.super.super.isa, v4, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void __44__SBRoutingSwitcherModifier_isScrollEnabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isScrollEnabled];
}

- (BOOL)shouldScrollViewBlockTouches
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:selfCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SBRoutingSwitcherModifier_shouldScrollViewBlockTouches__block_invoke;
  v6[3] = &unk_2783A8CE0;
  v6[4] = selfCopy;
  v6[5] = &v7;
  _SBRoutingSwitcherModifierRouteToModifier(&selfCopy->super.super.super.super.isa, v4, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

void __57__SBRoutingSwitcherModifier_shouldScrollViewBlockTouches__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 shouldScrollViewBlockTouches];
}

- (BOOL)shouldRubberbandFullScreenHomeGrabberView
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __70__SBRoutingSwitcherModifier_shouldRubberbandFullScreenHomeGrabberView__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __70__SBRoutingSwitcherModifier_shouldRubberbandFullScreenHomeGrabberView__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldRubberbandFullScreenHomeGrabberView];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isContainerStatusBarVisible
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __56__SBRoutingSwitcherModifier_isContainerStatusBarVisible__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      if ((v8 & 1) == 0)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__SBRoutingSwitcherModifier_isContainerStatusBarVisible__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

uint64_t __56__SBRoutingSwitcherModifier_isContainerStatusBarVisible__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isContainerStatusBarVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __56__SBRoutingSwitcherModifier_isContainerStatusBarVisible__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isContainerStatusBarVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)containerStatusBarAnimationDuration
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v6 = *v23;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __64__SBRoutingSwitcherModifier_containerStatusBarAnimationDuration__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v8;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v17);
      v9 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v9 == 0.0)
      {
        v10 = v8;

        lastObject = v10;
      }
    }

    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v4);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SBRoutingSwitcherModifier_containerStatusBarAnimationDuration__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v11 = lastObject;
  v15 = v11;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v14);
  v12 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v12;
}

double __64__SBRoutingSwitcherModifier_containerStatusBarAnimationDuration__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isContainerStatusBarVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __64__SBRoutingSwitcherModifier_containerStatusBarAnimationDuration__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) containerStatusBarAnimationDuration];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SBRoutingSwitcherModifier_isContentStatusBarVisibleForIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__SBRoutingSwitcherModifier_isContentStatusBarVisibleForIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isContentStatusBarVisibleForIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)wantsMenuBar
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __41__SBRoutingSwitcherModifier_wantsMenuBar__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __41__SBRoutingSwitcherModifier_wantsMenuBar__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsMenuBar];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)hasContentIntersectingMenuBarRegion
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __64__SBRoutingSwitcherModifier_hasContentIntersectingMenuBarRegion__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __64__SBRoutingSwitcherModifier_hasContentIntersectingMenuBarRegion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasContentIntersectingMenuBarRegion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isWallpaperRequiredForSwitcher
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __59__SBRoutingSwitcherModifier_isWallpaperRequiredForSwitcher__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      if (v8 == 1)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__SBRoutingSwitcherModifier_isWallpaperRequiredForSwitcher__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

uint64_t __59__SBRoutingSwitcherModifier_isWallpaperRequiredForSwitcher__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isWallpaperRequiredForSwitcher];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __59__SBRoutingSwitcherModifier_isWallpaperRequiredForSwitcher__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isWallpaperRequiredForSwitcher];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)wallpaperStyle
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43__SBRoutingSwitcherModifier_wallpaperStyle__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v8)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__SBRoutingSwitcherModifier_wallpaperStyle__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t __43__SBRoutingSwitcherModifier_wallpaperStyle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isWallpaperRequiredForSwitcher];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __43__SBRoutingSwitcherModifier_wallpaperStyle__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) wallpaperStyle];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isHomeScreenContentRequired
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __56__SBRoutingSwitcherModifier_isHomeScreenContentRequired__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __56__SBRoutingSwitcherModifier_isHomeScreenContentRequired__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isHomeScreenContentRequired];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)wantsHomeScreenPointerInteractions
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __63__SBRoutingSwitcherModifier_wantsHomeScreenPointerInteractions__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __63__SBRoutingSwitcherModifier_wantsHomeScreenPointerInteractions__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsHomeScreenPointerInteractions];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)appExposeAccessoryButtonsBundleIdentifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__35;
  v12 = __Block_byref_object_dispose__35;
  v13 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SBRoutingSwitcherModifier_appExposeAccessoryButtonsBundleIdentifier__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __70__SBRoutingSwitcherModifier_appExposeAccessoryButtonsBundleIdentifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  v3 = [v2 appExposeAccessoryButtonsBundleIdentifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (double)plusButtonAlpha
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SBRoutingSwitcherModifier_plusButtonAlpha__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __44__SBRoutingSwitcherModifier_plusButtonAlpha__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  [v2 plusButtonAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (double)reopenClosedWindowsButtonAlpha
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SBRoutingSwitcherModifier_reopenClosedWindowsButtonAlpha__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __59__SBRoutingSwitcherModifier_reopenClosedWindowsButtonAlpha__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  [v2 reopenClosedWindowsButtonAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (double)reopenClosedWindowsButtonScale
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SBRoutingSwitcherModifier_reopenClosedWindowsButtonScale__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __59__SBRoutingSwitcherModifier_reopenClosedWindowsButtonScale__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  [v2 reopenClosedWindowsButtonScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (int64_t)appExposeAccessoryButtonsOverrideUserInterfaceStyle
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SBRoutingSwitcherModifier_appExposeAccessoryButtonsOverrideUserInterfaceStyle__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __80__SBRoutingSwitcherModifier_appExposeAccessoryButtonsOverrideUserInterfaceStyle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 appExposeAccessoryButtonsOverrideUserInterfaceStyle];
}

- (int64_t)plusButtonStyle
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SBRoutingSwitcherModifier_plusButtonStyle__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __44__SBRoutingSwitcherModifier_plusButtonStyle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 plusButtonStyle];
}

- (BOOL)isSwitcherWindowVisible
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __52__SBRoutingSwitcherModifier_isSwitcherWindowVisible__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __52__SBRoutingSwitcherModifier_isSwitcherWindowVisible__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSwitcherWindowVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isSwitcherWindowUserInteractionEnabled
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __67__SBRoutingSwitcherModifier_isSwitcherWindowUserInteractionEnabled__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __67__SBRoutingSwitcherModifier_isSwitcherWindowUserInteractionEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSwitcherWindowUserInteractionEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isItemContainerPointerInteractionEnabled
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __69__SBRoutingSwitcherModifier_isItemContainerPointerInteractionEnabled__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __69__SBRoutingSwitcherModifier_isItemContainerPointerInteractionEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isItemContainerPointerInteractionEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __55__SBRoutingSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _arrayByCombiningArrays(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __55__SBRoutingSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutsToCacheSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __63__SBRoutingSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _arrayByCombiningArrays(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __63__SBRoutingSwitcherModifier_appLayoutsToCacheFullsizeSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutsToCacheFullsizeSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)preferredSnapshotOrientationForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SBRoutingSwitcherModifier_preferredSnapshotOrientationForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __70__SBRoutingSwitcherModifier_preferredSnapshotOrientationForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 preferredSnapshotOrientationForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)topMostLayoutElements
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = self->_modifiers;
  if (objc_opt_respondsToSelector())
  {
    v19 = objc_alloc_init(MEMORY[0x277CCAB00]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v4;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16, v4];
    if (v5)
    {
      v6 = *v33;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v33 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * i);
          v26 = 0;
          v27 = &v26;
          v28 = 0x3032000000;
          v29 = __Block_byref_object_copy__35;
          v30 = __Block_byref_object_dispose__35;
          v31 = 0;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __50__SBRoutingSwitcherModifier_topMostLayoutElements__block_invoke;
          v25[3] = &unk_2783A8CE0;
          v25[4] = v8;
          v25[5] = &v26;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v25);
          v9 = v27[5];
          _Block_object_dispose(&v26, 8);

          [(NSArray *)v19 setObject:v9 forKey:v8];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v5);
    }

    v10 = [WeakRetained routingModifier:self topMostLayoutElementsByModifier:v19];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v4;
    v11 = [(NSArray *)v19 countByEnumeratingWithState:&v21 objects:v36 count:16, v4];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v19);
          }

          v14 = *(*(&v21 + 1) + 8 * j);
          v26 = 0;
          v27 = &v26;
          v28 = 0x3032000000;
          v29 = __Block_byref_object_copy__35;
          v30 = __Block_byref_object_dispose__35;
          v31 = 0;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __50__SBRoutingSwitcherModifier_topMostLayoutElements__block_invoke_2;
          v20[3] = &unk_2783A8CE0;
          v20[4] = v14;
          v20[5] = &v26;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v14, v20);
          v15 = v27[5];
          _Block_object_dispose(&v26, 8);

          [v10 addObjectsFromArray:v15];
        }

        v11 = [(NSArray *)v19 countByEnumeratingWithState:&v21 objects:v36 count:16];
      }

      while (v11);
    }
  }

  return v10;
}

void __50__SBRoutingSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topMostLayoutElements];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50__SBRoutingSwitcherModifier_topMostLayoutElements__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topMostLayoutElements];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)appLayoutToScrollToBeforeTransitioning
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __67__SBRoutingSwitcherModifier_appLayoutToScrollToBeforeTransitioning__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if ((v4 & 1) == 0)
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __67__SBRoutingSwitcherModifier_appLayoutToScrollToBeforeTransitioning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutToScrollToBeforeTransitioning];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)appLayoutToScrollToBeforeReopeningClosedWindows
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __76__SBRoutingSwitcherModifier_appLayoutToScrollToBeforeReopeningClosedWindows__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if ((v4 & 1) == 0)
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __76__SBRoutingSwitcherModifier_appLayoutToScrollToBeforeReopeningClosedWindows__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutToScrollToBeforeReopeningClosedWindows];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)transactionCompletionOptions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained transactionCompletionOptionsModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SBRoutingSwitcherModifier_transactionCompletionOptions__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __57__SBRoutingSwitcherModifier_transactionCompletionOptions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained transactionCompletionOptionsModifierForRoutingModifier:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 transactionCompletionOptions];
}

- (BOOL)shouldAcceleratedHomeButtonPressBegin
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __66__SBRoutingSwitcherModifier_shouldAcceleratedHomeButtonPressBegin__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __66__SBRoutingSwitcherModifier_shouldAcceleratedHomeButtonPressBegin__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldAcceleratedHomeButtonPressBegin];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldFireTransitionCompletionInDefaultRunLoopMode
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __79__SBRoutingSwitcherModifier_shouldFireTransitionCompletionInDefaultRunLoopMode__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __79__SBRoutingSwitcherModifier_shouldFireTransitionCompletionInDefaultRunLoopMode__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldFireTransitionCompletionInDefaultRunLoopMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldPerformRotationAnimationForOrientationChange
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __79__SBRoutingSwitcherModifier_shouldPerformRotationAnimationForOrientationChange__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __79__SBRoutingSwitcherModifier_shouldPerformRotationAnimationForOrientationChange__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldPerformRotationAnimationForOrientationChange];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldPerformCrossfadeForReduceMotion
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __66__SBRoutingSwitcherModifier_shouldPerformCrossfadeForReduceMotion__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __66__SBRoutingSwitcherModifier_shouldPerformCrossfadeForReduceMotion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldPerformCrossfadeForReduceMotion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isLayoutRoleKillable:(int64_t)killable inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SBRoutingSwitcherModifier_isLayoutRoleKillable_inAppLayout_atIndex___block_invoke;
  v11[3] = &unk_2783B2338;
  v13 = &v15;
  killableCopy = killable;
  v9 = layoutCopy;
  v12 = v9;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v11);
  LOBYTE(index) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return index;
}

uint64_t __70__SBRoutingSwitcherModifier_isLayoutRoleKillable_inAppLayout_atIndex___block_invoke(void *a1, void *a2, uint64_t a3)
{
  result = [a2 isLayoutRoleKillable:a1[6] inAppLayout:a1[4] atIndex:a3];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (BOOL)isIndexRubberbandableForSwipeToKill:(unint64_t)kill
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SBRoutingSwitcherModifier_isIndexRubberbandableForSwipeToKill___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, kill, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __65__SBRoutingSwitcherModifier_isIndexRubberbandableForSwipeToKill___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isIndexRubberbandableForSwipeToKill:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldAnimateInsertionOrRemovalOfAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__SBRoutingSwitcherModifier_shouldAnimateInsertionOrRemovalOfAppLayout_atIndex___block_invoke;
  v9[3] = &unk_2783B2478;
  v11 = &v13;
  indexCopy = index;
  v9[4] = self;
  v7 = layoutCopy;
  v10 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v9);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

void __80__SBRoutingSwitcherModifier_shouldAnimateInsertionOrRemovalOfAppLayout_atIndex___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[7];
  v5 = a2;
  LOBYTE(v3) = [v5 shouldAnimateInsertionOrRemovalOfAppLayout:a1[5] atIndex:{_SBRoutingSwitcherModifierSubIndexFromIndexForModifier(v3, v4, v5)}];

  *(*(a1[6] + 8) + 24) = v3;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SBRoutingSwitcherModifier_indexToScrollToAfterRemovingIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__SBRoutingSwitcherModifier_indexToScrollToAfterRemovingIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 indexToScrollToAfterRemovingIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SBRoutingSwitcherModifier_indexToScrollToAfterInsertingAtIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __66__SBRoutingSwitcherModifier_indexToScrollToAfterInsertingAtIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 indexToScrollToAfterInsertingAtIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldBringCardToFrontDuringInsertionOrRemoval
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __75__SBRoutingSwitcherModifier_shouldBringCardToFrontDuringInsertionOrRemoval__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __75__SBRoutingSwitcherModifier_shouldBringCardToFrontDuringInsertionOrRemoval__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldBringCardToFrontDuringInsertionOrRemoval];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldConfigureInAppDockHiddenAssertion
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __68__SBRoutingSwitcherModifier_shouldConfigureInAppDockHiddenAssertion__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __68__SBRoutingSwitcherModifier_shouldConfigureInAppDockHiddenAssertion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldConfigureInAppDockHiddenAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)wantsDockBehaviorAssertion
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __55__SBRoutingSwitcherModifier_wantsDockBehaviorAssertion__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      if (v8 == 1)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__SBRoutingSwitcherModifier_wantsDockBehaviorAssertion__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

uint64_t __55__SBRoutingSwitcherModifier_wantsDockBehaviorAssertion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockBehaviorAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __55__SBRoutingSwitcherModifier_wantsDockBehaviorAssertion__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockBehaviorAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)dockProgress
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v6 = *v23;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __41__SBRoutingSwitcherModifier_dockProgress__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v8;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v17);
      v9 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v9 != 0.0)
      {
        v10 = v8;

        lastObject = v10;
      }
    }

    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v4);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__SBRoutingSwitcherModifier_dockProgress__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v11 = lastObject;
  v15 = v11;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v14);
  v12 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v12;
}

double __41__SBRoutingSwitcherModifier_dockProgress__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockBehaviorAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __41__SBRoutingSwitcherModifier_dockProgress__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) dockProgress];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int64_t)dockUpdateMode
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43__SBRoutingSwitcherModifier_dockUpdateMode__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v8)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__SBRoutingSwitcherModifier_dockUpdateMode__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t __43__SBRoutingSwitcherModifier_dockUpdateMode__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockBehaviorAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __43__SBRoutingSwitcherModifier_dockUpdateMode__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) dockUpdateMode];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)wantsDockWindowLevelAssertion
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __58__SBRoutingSwitcherModifier_wantsDockWindowLevelAssertion__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
      if (v8 == 1)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SBRoutingSwitcherModifier_wantsDockWindowLevelAssertion__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

uint64_t __58__SBRoutingSwitcherModifier_wantsDockWindowLevelAssertion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockWindowLevelAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __58__SBRoutingSwitcherModifier_wantsDockWindowLevelAssertion__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockWindowLevelAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)dockWindowLevelPriority
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_modifiers;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v3)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v5 = *v23;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v23 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __52__SBRoutingSwitcherModifier_dockWindowLevelPriority__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v7;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v17);
      v8 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v8)
      {
        v9 = v7;

        lastObject = v9;
      }
    }

    v3 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v3);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__SBRoutingSwitcherModifier_dockWindowLevelPriority__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v10 = lastObject;
  v15 = v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v14);
  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t __52__SBRoutingSwitcherModifier_dockWindowLevelPriority__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockWindowLevelAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __52__SBRoutingSwitcherModifier_dockWindowLevelPriority__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) dockWindowLevelPriority];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)dockWindowLevel
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {

LABEL_13:
    lastObject = [(NSArray *)self->_modifiers lastObject];
    goto LABEL_14;
  }

  lastObject = 0;
  v6 = *v23;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v23 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v22 + 1) + 8 * i);
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __44__SBRoutingSwitcherModifier_dockWindowLevel__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v8;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v17);
      v9 = v19[3];
      _Block_object_dispose(&v18, 8);
      if (v9 != 0.0)
      {
        v10 = v8;

        lastObject = v10;
      }
    }

    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v4);

  if (!lastObject)
  {
    goto LABEL_13;
  }

LABEL_14:
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__SBRoutingSwitcherModifier_dockWindowLevel__block_invoke_2;
  v14[3] = &unk_2783A8CE0;
  v16 = &v18;
  v11 = lastObject;
  v15 = v11;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v14);
  v12 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v12;
}

double __44__SBRoutingSwitcherModifier_dockWindowLevel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockWindowLevelAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __44__SBRoutingSwitcherModifier_dockWindowLevel__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) dockWindowLevel];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)appLayoutsToResignActive
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __53__SBRoutingSwitcherModifier_appLayoutsToResignActive__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _dictionaryByCombingDictionaryOfSetOfAppLayouts(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __53__SBRoutingSwitcherModifier_appLayoutsToResignActive__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutsToResignActive];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)keyboardSuppressionMode
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __52__SBRoutingSwitcherModifier_keyboardSuppressionMode__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _switcherKeyboardSuppressionModeByCombiningSuppressionModes(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __52__SBRoutingSwitcherModifier_keyboardSuppressionMode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyboardSuppressionMode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2810000000;
  v13 = &unk_21F9DA6A3;
  v14 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__SBRoutingSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOWORD(self) = *(v11 + 16);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __66__SBRoutingSwitcherModifier_asyncRenderingAttributesForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 asyncRenderingAttributesForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (BOOL)wantsAsynchronousSurfaceRetentionAssertion
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __71__SBRoutingSwitcherModifier_wantsAsynchronousSurfaceRetentionAssertion__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __71__SBRoutingSwitcherModifier_wantsAsynchronousSurfaceRetentionAssertion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsAsynchronousSurfaceRetentionAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)wantsSceneResizesHostedContextForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SBRoutingSwitcherModifier_wantsSceneResizesHostedContextForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __72__SBRoutingSwitcherModifier_wantsSceneResizesHostedContextForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 wantsSceneResizesHostedContextForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)appLayoutForReceivingHardwareButtonEvents
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __70__SBRoutingSwitcherModifier_appLayoutForReceivingHardwareButtonEvents__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if ((v4 & 1) == 0)
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __70__SBRoutingSwitcherModifier_appLayoutForReceivingHardwareButtonEvents__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutForReceivingHardwareButtonEvents];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)canPerformKeyboardShortcutAction:(int64_t)action forBundleIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_modifiers;
  v6 = 0;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __82__SBRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke;
        v16[3] = &unk_2783AA668;
        v18 = &v20;
        actionCopy = action;
        v16[4] = v11;
        v17 = identifierCopy;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v16);
        v12 = *(v21 + 24);

        _Block_object_dispose(&v20, 8);
        if (v8)
        {
          v6 &= v12;
        }

        else
        {
          v6 = v12;
        }

        v8 = 1;
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  return v6;
}

uint64_t __82__SBRoutingSwitcherModifier_canPerformKeyboardShortcutAction_forBundleIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canPerformKeyboardShortcutAction:*(a1 + 56) forBundleIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)activeLeafAppLayoutsReachableByKeyboardShortcut
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __76__SBRoutingSwitcherModifier_activeLeafAppLayoutsReachableByKeyboardShortcut__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _arrayByCombiningArrays(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __76__SBRoutingSwitcherModifier_activeLeafAppLayoutsReachableByKeyboardShortcut__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeLeafAppLayoutsReachableByKeyboardShortcut];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)inactiveAppLayoutsReachableByKeyboardShortcut
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __74__SBRoutingSwitcherModifier_inactiveAppLayoutsReachableByKeyboardShortcut__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _arrayByCombiningArrays(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __74__SBRoutingSwitcherModifier_inactiveAppLayoutsReachableByKeyboardShortcut__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inactiveAppLayoutsReachableByKeyboardShortcut];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)destinationAppLayoutForDismissingCurrentMode
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __73__SBRoutingSwitcherModifier_destinationAppLayoutForDismissingCurrentMode__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if ((v4 & 1) == 0)
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __73__SBRoutingSwitcherModifier_destinationAppLayoutForDismissingCurrentMode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationAppLayoutForDismissingCurrentMode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)switcher identifiersInStrip:(id)strip
{
  switcherCopy = switcher;
  stripCopy = strip;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__35;
  v24 = __Block_byref_object_dispose__35;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v9 = [WeakRetained scrollModifierForRoutingModifier:self];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __127__SBRoutingSwitcherModifier_adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher_identifiersInStrip___block_invoke;
  v15[3] = &unk_2783B24A0;
  v19 = &v20;
  v10 = v9;
  v16 = v10;
  v11 = switcherCopy;
  v17 = v11;
  v12 = stripCopy;
  v18 = v12;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v15);
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __127__SBRoutingSwitcherModifier_adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher_identifiersInStrip___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:*(a1 + 40) identifiersInStrip:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)strip
{
  stripCopy = strip;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__35;
  v19 = __Block_byref_object_dispose__35;
  v20 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v6 = [WeakRetained scrollModifierForRoutingModifier:self];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __102__SBRoutingSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke;
  v11[3] = &unk_2783AB258;
  v14 = &v15;
  v7 = v6;
  v12 = v7;
  v8 = stripCopy;
  v13 = v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __102__SBRoutingSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SBRoutingSwitcherModifier_snapshotScaleForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __68__SBRoutingSwitcherModifier_snapshotScaleForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 snapshotScaleForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = v4;
  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBRoutingSwitcherModifier_contentPageViewScaleForAppLayout_withScale___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  v7 = layoutCopy;
  v11 = v7;
  scaleCopy = scale;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __72__SBRoutingSwitcherModifier_contentPageViewScaleForAppLayout_withScale___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 contentPageViewScaleForAppLayout:*(a1 + 32) withScale:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (double)contentPageViewScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout withContentPageViewScale:(double)scale
{
  layoutCopy = layout;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__SBRoutingSwitcherModifier_contentPageViewScaleForLayoutRole_inAppLayout_withContentPageViewScale___block_invoke;
  v12[3] = &unk_2783B22E8;
  v14 = &v17;
  roleCopy = role;
  v9 = layoutCopy;
  v13 = v9;
  scaleCopy = scale;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v9, v12);
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __100__SBRoutingSwitcherModifier_contentPageViewScaleForLayoutRole_inAppLayout_withContentPageViewScale___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 contentPageViewScaleForLayoutRole:*(a1 + 48) inAppLayout:*(a1 + 32) withContentPageViewScale:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (id)scrollViewAttributes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__35;
  v12 = __Block_byref_object_dispose__35;
  v13 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBRoutingSwitcherModifier_scrollViewAttributes__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v7[4] = self;
  v7[5] = &v8;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__SBRoutingSwitcherModifier_scrollViewAttributes__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained scrollModifierForRoutingModifier:*(a1 + 32)];
  v3 = [v2 scrollViewAttributes];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (double)minimumTranslationToKillIndex:(unint64_t)index
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SBRoutingSwitcherModifier_minimumTranslationToKillIndex___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __59__SBRoutingSwitcherModifier_minimumTranslationToKillIndex___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 minimumTranslationToKillIndex:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (BOOL)isFocusEnabledForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBRoutingSwitcherModifier_isFocusEnabledForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __56__SBRoutingSwitcherModifier_isFocusEnabledForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isFocusEnabledForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)neighboringAppLayoutsForFocusedAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__35;
  v15 = __Block_byref_object_dispose__35;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SBRoutingSwitcherModifier_neighboringAppLayoutsForFocusedAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __70__SBRoutingSwitcherModifier_neighboringAppLayoutsForFocusedAppLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 neighboringAppLayoutsForFocusedAppLayout:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = &unk_21F9DA6A3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SBRoutingSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
  v8[3] = &unk_2783B2360;
  v8[4] = &v9;
  v8[5] = alignment;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, index, v8);
  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

uint64_t __61__SBRoutingSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 contentOffsetForIndex:a3 alignment:*(a1 + 40)];
  v5 = *(*(a1 + 32) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  return result;
}

- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v27 = 0;
  v28 = 0;
  v26 = &unk_21F9DA6A3;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v10 = [WeakRetained scrollModifierForRoutingModifier:self];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SBRoutingSwitcherModifier_restingOffsetForScrollOffset_velocity___block_invoke;
  v16[3] = &unk_2783AEEC0;
  v18 = &v23;
  v11 = v10;
  v17 = v11;
  v19 = v7;
  v20 = v6;
  v21 = x;
  v22 = y;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v16);
  v12 = v24[4];
  v13 = v24[5];

  _Block_object_dispose(&v23, 8);
  v14 = v12;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

uint64_t __67__SBRoutingSwitcherModifier_restingOffsetForScrollOffset_velocity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) restingOffsetForScrollOffset:*(a1 + 48) velocity:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)search
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __117__SBRoutingSwitcherModifier_distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch___block_invoke;
  v5[3] = &unk_2783B22C0;
  v5[4] = &v6;
  _SBRoutingSwitcherModifierRouteToModifierContainingIndex(self, search, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __117__SBRoutingSwitcherModifier_distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:?];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (CGPoint)adjustedOffsetForOffset:(CGPoint)offset translation:(CGPoint)translation startPoint:(CGPoint)point locationInView:(CGPoint)view horizontalVelocity:(double *)velocity verticalVelocity:(double *)verticalVelocity
{
  y = view.y;
  x = view.x;
  v12 = point.y;
  v13 = point.x;
  v14 = translation.y;
  v15 = translation.x;
  v16 = offset.y;
  v17 = offset.x;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3010000000;
  v43 = 0;
  v44 = 0;
  v42 = &unk_21F9DA6A3;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v20 = [WeakRetained scrollModifierForRoutingModifier:self];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __127__SBRoutingSwitcherModifier_adjustedOffsetForOffset_translation_startPoint_locationInView_horizontalVelocity_verticalVelocity___block_invoke;
  v26[3] = &unk_2783B24C8;
  v28 = &v39;
  v21 = v20;
  v27 = v21;
  v29 = v17;
  v30 = v16;
  v31 = v15;
  v32 = v14;
  v33 = v13;
  v34 = v12;
  v35 = x;
  v36 = y;
  velocityCopy = velocity;
  verticalVelocityCopy = verticalVelocity;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v21, v26);
  v22 = v40[4];
  v23 = v40[5];

  _Block_object_dispose(&v39, 8);
  v24 = v22;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

uint64_t __127__SBRoutingSwitcherModifier_adjustedOffsetForOffset_translation_startPoint_locationInView_horizontalVelocity_verticalVelocity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) adjustedOffsetForOffset:*(a1 + 112) translation:*(a1 + 120) startPoint:*(a1 + 48) locationInView:*(a1 + 56) horizontalVelocity:*(a1 + 64) verticalVelocity:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (void)resetAdjustedScrollingState
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained scrollModifierForRoutingModifier:self];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBRoutingSwitcherModifier_resetAdjustedScrollingState__block_invoke;
  v6[3] = &unk_2783A8C18;
  v7 = v4;
  v5 = v4;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v5, v6);
}

- (id)_forwardingTargetForUpdate
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__35;
  v19 = __Block_byref_object_dispose__35;
  v20 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__SBRoutingSwitcherModifier__forwardingTargetForUpdate__block_invoke;
      v10[3] = &unk_2783A8CE0;
      v10[4] = v7;
      v10[5] = &v15;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v10);
      if (v16[5])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v8 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v8;
}

void __55__SBRoutingSwitcherModifier__forwardingTargetForUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _forwardingTargetForUpdate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)wantsSlideOverTongue
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained slideOverTongueModifierForRoutingModifier:self];

  if (v4)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__SBRoutingSwitcherModifier_wantsSlideOverTongue__block_invoke;
    v17[3] = &unk_2783A8CE0;
    v19 = &v20;
    v18 = v4;
    _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v18, v17);
    v5 = v18;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_modifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __49__SBRoutingSwitcherModifier_wantsSlideOverTongue__block_invoke_2;
          v12[3] = &unk_2783A8CE0;
          v12[4] = v9;
          v12[5] = &v20;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v12);
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v6);
    }
  }

  v10 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v10 & 1;
}

uint64_t __49__SBRoutingSwitcherModifier_wantsSlideOverTongue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsSlideOverTongue];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __49__SBRoutingSwitcherModifier_wantsSlideOverTongue__block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) wantsSlideOverTongue];
  *(*(*(a1 + 40) + 8) + 24) = v2 | result;
  return result;
}

- (unint64_t)slideOverTongueState
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained slideOverTongueModifierForRoutingModifier:self];

  if (v4)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__SBRoutingSwitcherModifier_slideOverTongueState__block_invoke;
    v17[3] = &unk_2783A8CE0;
    v19 = &v20;
    v18 = v4;
    _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v18, v17);
    v5 = v18;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_modifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __49__SBRoutingSwitcherModifier_slideOverTongueState__block_invoke_2;
          v12[3] = &unk_2783A8CE0;
          v12[4] = v9;
          v12[5] = &v20;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v12);
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v6);
    }
  }

  v10 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __49__SBRoutingSwitcherModifier_slideOverTongueState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) slideOverTongueState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

unint64_t __49__SBRoutingSwitcherModifier_slideOverTongueState__block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) slideOverTongueState];
  if (v2 <= result)
  {
    v4 = result;
  }

  else
  {
    v4 = v2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (unint64_t)slideOverTongueDirection
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained slideOverTongueModifierForRoutingModifier:self];

  if (v4)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__SBRoutingSwitcherModifier_slideOverTongueDirection__block_invoke;
    v17[3] = &unk_2783A8CE0;
    v19 = &v20;
    v18 = v4;
    _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v18, v17);
    v5 = v18;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_modifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __53__SBRoutingSwitcherModifier_slideOverTongueDirection__block_invoke_2;
          v12[3] = &unk_2783A8CE0;
          v12[4] = v9;
          v12[5] = &v20;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v12);
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v6);
    }
  }

  v10 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __53__SBRoutingSwitcherModifier_slideOverTongueDirection__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) slideOverTongueDirection];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

unint64_t __53__SBRoutingSwitcherModifier_slideOverTongueDirection__block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) slideOverTongueDirection];
  if (v2 <= result)
  {
    v4 = result;
  }

  else
  {
    v4 = v2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (id)appLayoutToAttachSlideOverTongue
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__35;
  v24 = __Block_byref_object_dispose__35;
  v25 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained slideOverTongueModifierForRoutingModifier:self];

  if (v4)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __61__SBRoutingSwitcherModifier_appLayoutToAttachSlideOverTongue__block_invoke;
    v17[3] = &unk_2783A8CE0;
    v19 = &v20;
    v18 = v4;
    _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v18, v17);
    v5 = v18;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_modifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v26 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __61__SBRoutingSwitcherModifier_appLayoutToAttachSlideOverTongue__block_invoke_2;
          v12[3] = &unk_2783A8CE0;
          v12[4] = v9;
          v12[5] = &v20;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v12);
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v26 count:16];
      }

      while (v6);
    }
  }

  v10 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __61__SBRoutingSwitcherModifier_appLayoutToAttachSlideOverTongue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutToAttachSlideOverTongue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __61__SBRoutingSwitcherModifier_appLayoutToAttachSlideOverTongue__block_invoke_2(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = [*(a1 + 32) appLayoutToAttachSlideOverTongue];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (CGRect)frameForSlideOverTongueAppLayout
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x4010000000;
  v30 = &unk_21F9DA6A3;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v31 = *MEMORY[0x277CBF3A0];
  v32 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v5 = [WeakRetained slideOverTongueModifierForRoutingModifier:self];

  if (v5)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __61__SBRoutingSwitcherModifier_frameForSlideOverTongueAppLayout__block_invoke;
    v24[3] = &unk_2783A8CE0;
    v26 = &v27;
    v25 = v5;
    _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v25, v24);
    v6 = v25;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_modifiers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __61__SBRoutingSwitcherModifier_frameForSlideOverTongueAppLayout__block_invoke_2;
          v19[3] = &unk_2783A8CE0;
          v19[4] = v10;
          v19[5] = &v27;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v10, v19);
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v33 count:16];
      }

      while (v7);
    }
  }

  v11 = v28[4];
  v12 = v28[5];
  v13 = v28[6];
  v14 = v28[7];

  _Block_object_dispose(&v27, 8);
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

uint64_t __61__SBRoutingSwitcherModifier_frameForSlideOverTongueAppLayout__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) frameForSlideOverTongueAppLayout];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

uint64_t __61__SBRoutingSwitcherModifier_frameForSlideOverTongueAppLayout__block_invoke_2(uint64_t a1)
{
  result = CGRectEqualToRect(*MEMORY[0x277CBF3A0], *(*(*(a1 + 40) + 8) + 32));
  if (result)
  {
    result = [*(a1 + 32) frameForSlideOverTongueAppLayout];
    v3 = *(*(a1 + 40) + 8);
    v3[4] = v4;
    v3[5] = v5;
    v3[6] = v6;
    v3[7] = v7;
  }

  return result;
}

- (double)cornerRadiusForSlideOverTongueAppLayout
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained slideOverTongueModifierForRoutingModifier:self];

  if (v4)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__SBRoutingSwitcherModifier_cornerRadiusForSlideOverTongueAppLayout__block_invoke;
    v17[3] = &unk_2783A8CE0;
    v19 = &v20;
    v18 = v4;
    _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v18, v17);
    v5 = v18;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_modifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __68__SBRoutingSwitcherModifier_cornerRadiusForSlideOverTongueAppLayout__block_invoke_2;
          v12[3] = &unk_2783A8CE0;
          v12[4] = v9;
          v12[5] = &v20;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v12);
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
      }

      while (v6);
    }
  }

  v10 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __68__SBRoutingSwitcherModifier_cornerRadiusForSlideOverTongueAppLayout__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cornerRadiusForSlideOverTongueAppLayout];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

uint64_t __68__SBRoutingSwitcherModifier_cornerRadiusForSlideOverTongueAppLayout__block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) cornerRadiusForSlideOverTongueAppLayout];
  if (v2 >= v4)
  {
    v4 = v2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (CGPoint)frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:(unint64_t)index
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v5 = MEMORY[0x277CBF348];
  v26 = &unk_21F9DA6A3;
  v27 = *MEMORY[0x277CBF348];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_modifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v7)
  {
    v8 = *v20;
    v9 = *v5;
    v10 = v5[1];
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __92__SBRoutingSwitcherModifier_frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex___block_invoke;
      v18[3] = &unk_2783AA618;
      v18[4] = v12;
      v18[5] = &v23;
      v18[6] = index;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v12, v18);
      if (v24[4] != v9 || v24[5] != v10)
      {
        break;
      }

      if (v7 == ++v11)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = v24[4];
  v15 = v24[5];
  _Block_object_dispose(&v23, 8);
  v16 = v14;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

uint64_t __92__SBRoutingSwitcherModifier_frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) frameForIndexOffsetToCounteractSwitcherWindowMatchMoveForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (double)slideOverMarginForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SBRoutingSwitcherModifier_slideOverMarginForLayoutRole_inAppLayout___block_invoke;
  v10[3] = &unk_2783B2248;
  v12 = &v14;
  roleCopy = role;
  v7 = layoutCopy;
  v11 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v10);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __70__SBRoutingSwitcherModifier_slideOverMarginForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 slideOverMarginForLayoutRole:a1[6] inAppLayout:a1[4]];
  *(*(a1[5] + 8) + 24) = v4;
  return result;
}

- (BOOL)wantsBezelEffectsLayoutElement
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__SBRoutingSwitcherModifier_wantsBezelEffectsLayoutElement__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __59__SBRoutingSwitcherModifier_wantsBezelEffectsLayoutElement__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsBezelEffectsLayoutElement];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)wantsDockPortalViewLayoutElement
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __61__SBRoutingSwitcherModifier_wantsDockPortalViewLayoutElement__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __61__SBRoutingSwitcherModifier_wantsDockPortalViewLayoutElement__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsDockPortalViewLayoutElement];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldRemoveProlongedCursorGestureFloatingDockBehaviorAssertion
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __92__SBRoutingSwitcherModifier_shouldRemoveProlongedCursorGestureFloatingDockBehaviorAssertion__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __92__SBRoutingSwitcherModifier_shouldRemoveProlongedCursorGestureFloatingDockBehaviorAssertion__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldRemoveProlongedCursorGestureFloatingDockBehaviorAssertion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)foregroundAppLayouts
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __49__SBRoutingSwitcherModifier_foregroundAppLayouts__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _setByCombiningSets(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __49__SBRoutingSwitcherModifier_foregroundAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) foregroundAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)visibleSplitViewHandleNubViews
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __59__SBRoutingSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _setByCombiningSets(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __59__SBRoutingSwitcherModifier_visibleSplitViewHandleNubViews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleSplitViewHandleNubViews];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)visibleSplitViewHandleDimmingViews
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __63__SBRoutingSwitcherModifier_visibleSplitViewHandleDimmingViews__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v4)
        {
          v9 = _setByCombiningSets(v6, v8);
        }

        else
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __63__SBRoutingSwitcherModifier_visibleSplitViewHandleDimmingViews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleSplitViewHandleDimmingViews];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)fadeInDelayForSplitViewHandles
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__SBRoutingSwitcherModifier_fadeInDelayForSplitViewHandles__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v9;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v13);
        v10 = v15[3];
        _Block_object_dispose(&v14, 8);
        if (v7 >= v10)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        if (v5)
        {
          v7 = v11;
        }

        else
        {
          v7 = v10;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

uint64_t __59__SBRoutingSwitcherModifier_fadeInDelayForSplitViewHandles__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) fadeInDelayForSplitViewHandles];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (char)jetsamModeForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SBRoutingSwitcherModifier_jetsamModeForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __52__SBRoutingSwitcherModifier_jetsamModeForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 jetsamModeForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (char)activityModeForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SBRoutingSwitcherModifier_activityModeForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __54__SBRoutingSwitcherModifier_activityModeForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 activityModeForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)bounceIconGenerationCountForCurrentCount:(unint64_t)count
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  countCopy = count;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_modifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __70__SBRoutingSwitcherModifier_bounceIconGenerationCountForCurrentCount___block_invoke;
        v12[3] = &unk_2783AA618;
        v12[4] = v9;
        v12[5] = &v17;
        v12[6] = count;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v9, v12);
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v10;
}

unint64_t __70__SBRoutingSwitcherModifier_bounceIconGenerationCountForCurrentCount___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) bounceIconGenerationCountForCurrentCount:*(a1 + 48)];
  if (v2 <= result)
  {
    v4 = result;
  }

  else
  {
    v4 = v2;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (unint64_t)personalityDebugColorStyleForAppLayout:(id)layout
{
  layoutCopy = layout;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SBRoutingSwitcherModifier_personalityDebugColorStyleForAppLayout___block_invoke;
  v8[3] = &unk_2783B2270;
  v10 = &v11;
  v5 = layoutCopy;
  v9 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __68__SBRoutingSwitcherModifier_personalityDebugColorStyleForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 personalityDebugColorStyleForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)bounceIconBundleIdentifier
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __55__SBRoutingSwitcherModifier_bounceIconBundleIdentifier__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if ((v4 & 1) == 0)
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __55__SBRoutingSwitcherModifier_bounceIconBundleIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bounceIconBundleIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (CGRect)bounceIconInitialFrame
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_modifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  if (v4)
  {
    v9 = *v25;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      v18 = 0;
      v19 = &v18;
      v20 = 0x4010000000;
      v21 = &unk_21F9DA6A3;
      v22 = 0u;
      v23 = 0u;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__SBRoutingSwitcherModifier_bounceIconInitialFrame__block_invoke;
      v17[3] = &unk_2783A8CE0;
      v17[4] = v11;
      v17[5] = &v18;
      _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v11, v17);
      IsNull = CGRectIsNull(v19[1]);
      if (!IsNull)
      {
        x = v19[1].origin.x;
        y = v19[1].origin.y;
        width = v19[1].size.width;
        height = v19[1].size.height;
      }

      _Block_object_dispose(&v18, 8);
      if (!IsNull)
      {
        break;
      }

      if (v4 == ++v10)
      {
        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

uint64_t __51__SBRoutingSwitcherModifier_bounceIconInitialFrame__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) bounceIconInitialFrame];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (BOOL)shouldAccessoryDrawShadowForAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBRoutingSwitcherModifier_shouldAccessoryDrawShadowForAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __67__SBRoutingSwitcherModifier_shouldAccessoryDrawShadowForAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldAccessoryDrawShadowForAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)shouldTetherItemsAndAccessoriesInAppLayout:(id)layout
{
  layoutCopy = layout;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SBRoutingSwitcherModifier_shouldTetherItemsAndAccessoriesInAppLayout___block_invoke;
  v7[3] = &unk_2783B2270;
  v9 = &v10;
  v5 = layoutCopy;
  v8 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v7);
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

uint64_t __72__SBRoutingSwitcherModifier_shouldTetherItemsAndAccessoriesInAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 shouldTetherItemsAndAccessoriesInAppLayout:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGPoint)contentViewOffsetForAccessoriesOfAppLayout:(id)layout
{
  layoutCopy = layout;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v17 = 0;
  v18 = 0;
  v16 = &unk_21F9DA6A3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBRoutingSwitcherModifier_contentViewOffsetForAccessoriesOfAppLayout___block_invoke;
  v10[3] = &unk_2783B2270;
  v12 = &v13;
  v5 = layoutCopy;
  v11 = v5;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v5, v10);
  v6 = v14[4];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

uint64_t __72__SBRoutingSwitcherModifier_contentViewOffsetForAccessoriesOfAppLayout___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 contentViewOffsetForAccessoriesOfAppLayout:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (CGPoint)contentViewOffsetForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v20 = 0;
  v21 = 0;
  v19 = &unk_21F9DA6A3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__SBRoutingSwitcherModifier_contentViewOffsetForLayoutRole_inAppLayout___block_invoke;
  v12[3] = &unk_2783B2248;
  v14 = &v16;
  roleCopy = role;
  v7 = layoutCopy;
  v13 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v12);
  v8 = v17[4];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

uint64_t __72__SBRoutingSwitcherModifier_contentViewOffsetForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 contentViewOffsetForLayoutRole:a1[6] inAppLayout:a1[4]];
  v4 = *(a1[5] + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v20 = 0;
  v21 = 0;
  v19 = &unk_21F9DA6A3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SBRoutingSwitcherModifier_wallpaperGradientAttributesForLayoutRole_inAppLayout___block_invoke;
  v12[3] = &unk_2783B2248;
  v14 = &v16;
  roleCopy = role;
  v7 = layoutCopy;
  v13 = v7;
  _SBRoutingSwitcherModifierRouteToModifierContainingAppLayout(&self->super.super.super.super.isa, v7, v12);
  v8 = v17[4];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  v10 = v8;
  v11 = v9;
  result.trailingAlpha = v11;
  result.leadingAlpha = v10;
  return result;
}

uint64_t __82__SBRoutingSwitcherModifier_wallpaperGradientAttributesForLayoutRole_inAppLayout___block_invoke(void *a1, void *a2)
{
  result = [a2 wallpaperGradientAttributesForLayoutRole:a1[6] inAppLayout:a1[4]];
  v4 = *(a1[5] + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (SBSwitcherContinuousExposeStripTongueAttributes)continuousExposeStripTongueAttributes
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = &unk_21F9DA6A3;
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);
  v4 = [WeakRetained homeScreenModifierForRoutingModifier:self];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBRoutingSwitcherModifier_continuousExposeStripTongueAttributes__block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v4, v9);

  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.direction = v8;
  result.state = v7;
  return result;
}

void __66__SBRoutingSwitcherModifier_continuousExposeStripTongueAttributes__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 176));
  v2 = [WeakRetained homeScreenModifierForRoutingModifier:*(a1 + 32)];
  v3 = [v2 continuousExposeStripTongueAttributes];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
}

- (BOOL)wantsContinuousExposeHoverGesture
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __62__SBRoutingSwitcherModifier_wantsContinuousExposeHoverGesture__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __62__SBRoutingSwitcherModifier_wantsContinuousExposeHoverGesture__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) wantsContinuousExposeHoverGesture];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isContinuousExposeStripVisible
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __59__SBRoutingSwitcherModifier_isContinuousExposeStripVisible__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __59__SBRoutingSwitcherModifier_isContinuousExposeStripVisible__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isContinuousExposeStripVisible];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)proposedAppLayoutForWindowDrag
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_modifiers;
  v2 = 0;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = 0;
    v12 = *v22;
    do
    {
      v5 = 0;
      v6 = v2;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * v5);
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__35;
        v19 = __Block_byref_object_dispose__35;
        v20 = 0;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __59__SBRoutingSwitcherModifier_proposedAppLayoutForWindowDrag__block_invoke;
        v14[3] = &unk_2783A8CE0;
        v14[4] = v7;
        v14[5] = &v15;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v14);
        v8 = v16[5];
        _Block_object_dispose(&v15, 8);

        if (v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if ((v4 & 1) == 0)
        {
          v9 = v8;
        }

        v2 = v9;

        ++v5;
        v4 = 1;
        v6 = v2;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  return v2;
}

void __59__SBRoutingSwitcherModifier_proposedAppLayoutForWindowDrag__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proposedAppLayoutForWindowDrag];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isPendingViewsForAcceleratedHomeGesture
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __68__SBRoutingSwitcherModifier_isPendingViewsForAcceleratedHomeGesture__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __68__SBRoutingSwitcherModifier_isPendingViewsForAcceleratedHomeGesture__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPendingViewsForAcceleratedHomeGesture];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isPendingInvalidatablesForAcceleratedHomeGesture
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_modifiers;
  v3 = 0;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __77__SBRoutingSwitcherModifier_isPendingInvalidatablesForAcceleratedHomeGesture__block_invoke;
        v13[3] = &unk_2783A8CE0;
        v13[4] = v8;
        v13[5] = &v14;
        _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v8, v13);
        v9 = *(v15 + 24);
        _Block_object_dispose(&v14, 8);
        if (v9 <= (v3 & 1))
        {
          v10 = v3;
        }

        else
        {
          v10 = v9;
        }

        if (v5)
        {
          v3 = v10;
        }

        else
        {
          v3 = v9;
        }

        v5 = 1;
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  return v3 & 1;
}

uint64_t __77__SBRoutingSwitcherModifier_isPendingInvalidatablesForAcceleratedHomeGesture__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isPendingInvalidatablesForAcceleratedHomeGesture];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_lastIndexForModifier:(id)modifier
{
  v34 = *MEMORY[0x277D85DE8];
  modifierCopy = modifier;
  v32.receiver = self;
  v32.super_class = SBRoutingSwitcherModifier;
  appLayoutsGenerationCount = [(SBRoutingSwitcherModifier *)&v32 appLayoutsGenerationCount];
  if (appLayoutsGenerationCount != self->_lastIndexForModifier_GenCount)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v31.receiver = self;
    v31.super_class = SBRoutingSwitcherModifier;
    appLayouts = [(SBRoutingSwitcherModifier *)&v31 appLayouts];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = self->_modifiers;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v4)
    {
      v5 = *v28;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v28 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * i);
          v21 = 0;
          v22 = &v21;
          v23 = 0x3032000000;
          v24 = __Block_byref_object_copy__35;
          v25 = __Block_byref_object_dispose__35;
          v26 = 0;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __51__SBRoutingSwitcherModifier__lastIndexForModifier___block_invoke;
          v20[3] = &unk_2783A8CE0;
          v20[4] = v7;
          v20[5] = &v21;
          _SBRoutingSwitcherModifierRouteToModifier(&self->super.super.super.super.isa, v7, v20);
          lastObject = [v22[5] lastObject];
          if (lastObject)
          {
            v9 = [appLayouts indexOfObject:lastObject];
          }

          else
          {
            v9 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
          [(NSMapTable *)weakToStrongObjectsMapTable setObject:v10 forKey:v7];

          _Block_object_dispose(&v21, 8);
        }

        v4 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v4);
    }

    lastIndexForModifier_indexCapsForModifiers = self->_lastIndexForModifier_indexCapsForModifiers;
    self->_lastIndexForModifier_indexCapsForModifiers = weakToStrongObjectsMapTable;

    self->_lastIndexForModifier_GenCount = appLayoutsGenerationCount;
  }

  v12 = [(NSMapTable *)self->_lastIndexForModifier_indexCapsForModifiers objectForKey:modifierCopy];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  return unsignedIntegerValue;
}

void __51__SBRoutingSwitcherModifier__lastIndexForModifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SBRoutingSwitcherModifierDelegate)routingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_routingDelegate);

  return WeakRetained;
}

@end