@interface SBAppSwitcherContinuousExposeSwitcherModifier
- (BOOL)isFocusEnabledForAppLayout:(id)a3;
- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)_boundingFrameForPileAtIndex:(unint64_t)a3 withScrollOffsetApplied:(BOOL)a4;
- (CGRect)_boundingFrameForPileWithIdentifier:(id)a3 withScrollOffsetApplied:(BOOL)a4;
- (CGRect)_frameForAppLayout:(id)a3 withScaledApplied:(BOOL)a4 scrollOffsetApplied:(BOOL)a5;
- (CGRect)_frameForIndex:(unint64_t)a3 withScaleApplied:(BOOL)a4 scrollOffsetApplied:(BOOL)a5;
- (CGRect)_scaledSwitcherViewBounds;
- (CGRect)_visibleSwitcherBoundsIncludingShadow;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (CGSize)_contentSize;
- (CGSize)_fittedContentSize;
- (SBAppSwitcherContinuousExposeSwitcherModifier)init;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (_NSRange)_visiblePileRange;
- (double)_heightForCardInSwitcherWithScaleFactor:(BOOL)a3;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3;
- (double)homeScreenScale;
- (double)minimumTranslationToKillIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (double)wallpaperScale;
- (id)_appLayoutsToCacheSnapshotsWithVisiblePileRange:(_NSRange)a3 numberOfSnapshotsToCache:(unint64_t)a4 biasForward:(BOOL)a5;
- (id)_compactedBoundingBoxSizesByAppLayout;
- (id)_currentLayoutCalculationsValidityToken;
- (id)_visiblePileIdentifiers;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3;
- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)a3 identifiersInStrip:(id)a4;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)buildLayoutCalculationsForCache:(id)a3;
- (id)destinationAppLayoutForDismissingCurrentMode;
- (id)handleEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleScrollEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)handleTapAppLayoutHeaderEvent:(id)a3;
- (id)handleTapOutsideToDismissEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3;
- (id)scrollViewAttributes;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (unint64_t)_indexOfAppLayoutInItsPile:(id)a3;
- (unint64_t)_indexOfLeadingAppLayout;
- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
- (unint64_t)transactionCompletionOptions;
@end

@implementation SBAppSwitcherContinuousExposeSwitcherModifier

- (SBAppSwitcherContinuousExposeSwitcherModifier)init
{
  v8.receiver = self;
  v8.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_handlesTapAppLayoutEvents = 1;
    v2->_handlesTapAppLayoutHeaderEvents = 1;
    v2->_scaleFactor = 1.0;
    v2->_horizontalEdgeSpacingScaleFactor = 1.0;
    v2->_showsActiveAppLayoutInSwitcher = 1;
    v4 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v3 addChildModifier:v4 atLevel:1 key:0];

    v5 = objc_alloc_init(SBSwitcherLayoutCalculationsCache);
    appLayoutLayoutCalculationsCache = v3->_appLayoutLayoutCalculationsCache;
    v3->_appLayoutLayoutCalculationsCache = v5;

    [(SBSwitcherLayoutCalculationsCache *)v3->_appLayoutLayoutCalculationsCache setDelegate:v3];
  }

  return v3;
}

- (id)handleEvent:(id)a3
{
  ++self->_modifierEventGenCount;
  v5.receiver = self;
  v5.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  v3 = [(SBChainableModifier *)&v5 handleEvent:a3];

  return v3;
}

- (id)handleScrollEvent:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  p_previousContentOffset = &self->_previousContentOffset;
  v10 = self->_previousContentOffset.x == 1.79769313e308 && self->_previousContentOffset.y == 1.79769313e308;
  if (!v10 && (BSFloatEqualToFloat() & 1) == 0)
  {
    self->_isScrollingForward = p_previousContentOffset->x > v6;
  }

  p_previousContentOffset->x = v6;
  self->_previousContentOffset.y = v8;
  v13.receiver = self;
  v13.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v13 handleScrollEvent:v4];

  return v11;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 toEnvironmentMode] == 2 && objc_msgSend(v4, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  v5 = [v4 toAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = v5;

  v9.receiver = self;
  v9.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:v4];

  return v7;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v22 handleTapAppLayoutEvent:v4];
  if (self->_handlesTapAppLayoutEvents && ([v4 isHandled] & 1) == 0)
  {
    v6 = [v4 appLayout];
    v7 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:v6];

    v8 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self windowManagementContext];
    v9 = [v8 isAutomaticStageCreationEnabled];

    if ((v9 & 1) == 0)
    {
      v10 = [v4 appLayout];
      v21.receiver = self;
      v21.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
      v11 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)&v21 appLayoutContainingAppLayout:v10];

      v12 = [v4 appLayout];
      v13 = [v12 allItems];
      v14 = [v13 firstObject];
      v15 = [v11 itemForLayoutRole:{objc_msgSend(v11, "layoutRoleForItem:", v14)}];

      v16 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v17 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutByBringingItemToFront:v15 inAppLayout:v11];
      [(SBSwitcherTransitionRequest *)v16 setAppLayout:v17];

      [(SBSwitcherTransitionRequest *)v16 setActivatingDisplayItem:v15];
      v7 = v16;
    }

    v18 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v7 gestureInitiated:0];
    v19 = SBAppendSwitcherModifierResponse(v18, v5);

    [v4 handleWithReason:@"App Switcher Continuous Expose"];
    v5 = v19;
  }

  return v5;
}

- (id)appLayoutContainingAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isAutomaticStageCreationEnabled];

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
    v7 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)&v10 appLayoutContainingAppLayout:v4];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isAutomaticStageCreationEnabled];

  if (v6)
  {
    v17.receiver = self;
    v17.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
    v7 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)&v17 appLayoutsForContinuousExposeIdentifier:v4];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 continuousExposeIdentifier];
          v15 = [v14 isEqualToString:v4];

          if (v15)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

- (id)handleTapAppLayoutHeaderEvent:(id)a3
{
  v4 = a3;
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isAutomaticStageCreationEnabled];

  if (v6)
  {
    v16.receiver = self;
    v16.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
    v7 = [(SBSwitcherModifier *)&v16 handleTapAppLayoutHeaderEvent:v4];
    if (self->_handlesTapAppLayoutHeaderEvents && ([v4 isHandled] & 1) == 0)
    {
      v8 = [v4 appLayout];
      v9 = [v8 itemForLayoutRole:{objc_msgSend(v4, "layoutRole")}];

      if ([(SBAppSwitcherContinuousExposeSwitcherModifier *)self displayItemSupportsMultipleWindowsIndicator:v9])
      {
        v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        [(SBSwitcherTransitionRequest *)v10 setSource:3];
        v11 = [v9 bundleIdentifier];
        [(SBSwitcherTransitionRequest *)v10 setBundleIdentifierForAppExpose:v11];

        v12 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
      }

      else
      {
        v10 = [[SBPulseDisplayItemSwitcherModifier alloc] initWithDisplayItem:v9];
        v12 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v10 level:3];
      }

      v14 = v12;
      v15 = SBAppendSwitcherModifierResponse(v12, v7);

      v7 = v15;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)handleTapOutsideToDismissEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  v3 = a3;
  v4 = [(SBSwitcherModifier *)&v11 handleTapOutsideToDismissEvent:v3];
  v5 = [v3 isHandled];

  if ((v5 & 1) == 0)
  {
    v6 = [SBPerformTransitionSwitcherEventResponse alloc];
    v7 = +[SBSwitcherTransitionRequest requestForActivatingHomeScreen];
    v8 = [(SBPerformTransitionSwitcherEventResponse *)v6 initWithTransitionRequest:v7 gestureInitiated:0];

    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v4];

    v4 = v9;
  }

  return v4;
}

- (id)handleRemovalEvent:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v26 handleRemovalEvent:v5];
  if ([v5 phase] == 1)
  {
    ++self->_ongoingAppLayoutRemovals;
    goto LABEL_20;
  }

  if ([v5 phase] == 2)
  {
    --self->_ongoingAppLayoutRemovals;
    v7 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self windowManagementContext];
    v8 = [v7 isAutomaticStageCreationEnabled];
    if ((v8 & 1) != 0 || (-[SBAppSwitcherContinuousExposeSwitcherModifier appLayouts](self, "appLayouts"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count] > 1))
    {
      v9 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
      v10 = 0;
      v11 = 0;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __68__SBAppSwitcherContinuousExposeSwitcherModifier_handleRemovalEvent___block_invoke;
      v24 = &unk_2783A8CB8;
      v20 = &v25;
      v25 = v5;
      v9 = [v12 bs_filter:&v21];

      v10 = 1;
    }

    v11 = v10;
LABEL_10:

    if ([v9 count] || self->_ongoingAppLayoutRemovals)
    {
      v13 = [v5 appLayout];
      if (!BSEqualObjects())
      {
LABEL_17:

LABEL_18:
        if (v11)
        {
        }

        goto LABEL_20;
      }

      ongoingAppLayoutRemovals = self->_ongoingAppLayoutRemovals;

      if (ongoingAppLayoutRemovals)
      {
        goto LABEL_18;
      }

      v13 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v15 = +[SBAppLayout homeScreenAppLayout];
      [(SBSwitcherTransitionRequest *)v13 setAppLayout:v15];

      [(SBSwitcherTransitionRequest *)v13 setUnlockedEnvironmentMode:2];
    }

    else
    {
      v13 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v16 = +[SBAppLayout homeScreenAppLayout];
      [(SBSwitcherTransitionRequest *)v13 setAppLayout:v16];

      [(SBSwitcherTransitionRequest *)v13 setAutoPIPDisabled:1];
    }

    v17 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v13 gestureInitiated:0];
    v18 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v17 toResponse:v6];

    v6 = v18;
    goto LABEL_17;
  }

LABEL_20:

  return v6;
}

uint64_t __68__SBAppSwitcherContinuousExposeSwitcherModifier_handleRemovalEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 appLayout];
  v5 = BSEqualObjects();

  return v5 ^ 1u;
}

- (CGRect)_scaledSwitcherViewBounds
{
  v16.receiver = self;
  v16.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)&v16 switcherViewBounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if ((BSFloatIsOne() & 1) == 0)
  {
    CGAffineTransformMakeScale(&v15, self->_scaleFactor, self->_scaleFactor);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectApplyAffineTransform(v17, &v15);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _frameForIndex:a3 withScaleApplied:0 scrollOffsetApplied:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  v7 = a4;
  v8 = [v7 itemForLayoutRole:a3];
  v9 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v7];

  v10 = [v9 flexibleAutoLayoutItemForDisplayItem:v8];
  [v10 compactedPosition];
  [v9 compactedBoundingBox];
  [v10 size];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self screenScale];
  SBRectWithSize();
  UIRectCenteredAboutPointScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  appLayoutLayoutCalculationsCache = self->_appLayoutLayoutCalculationsCache;
  v8 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _currentLayoutCalculationsValidityToken];
  [(SBSwitcherLayoutCalculationsCache *)appLayoutLayoutCalculationsCache scaleForKey:v6 validityToken:v8 fallback:&__block_literal_global_325];
  v10 = v9;

  return v10;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppSwitcherContinuousExposeSwitcherModifier *)self _indexOfAppLayoutInItsPile:v6])
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

- (BOOL)isHomeAffordanceSupportedForAppLayout:(id)a3
{
  v3 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self homeGrabberSettings];
  v4 = [v3 isEnabled];

  return v4;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isAutomaticStageCreationEnabled];

  if (v6)
  {
    v7 = [v4 bs_filter:&__block_literal_global_34_0];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBAppSwitcherContinuousExposeSwitcherModifier;
    v8 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)&v24 appLayoutOnStage];
    if (v8 && ([v4 containsObject:v8] & 1) != 0)
    {
      v18 = v4;
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self zOrderedItemsInAppLayout:v8];
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __81__SBAppSwitcherContinuousExposeSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
            v19[3] = &unk_2783A8C90;
            v19[4] = v15;
            v16 = [v8 appLayoutWithItemsPassingTest:{v19, v18}];
            [v9 addObject:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
      }

      v7 = [MEMORY[0x277CBEA60] arrayWithArray:v9];

      v4 = v18;
    }

    else
    {
      v7 = [MEMORY[0x277CBEA60] array];
    }
  }

  return v7;
}

- (id)visibleAppLayouts
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v5 = [v4 windowingSettings];
  v21 = [v5 numberOfVisibleItemsPerGroup];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = self;
  obj = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _visiblePileIdentifiers];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)v20 appLayoutsForContinuousExposeIdentifier:v10];
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v23;
LABEL_8:
          v16 = 0;
          if (v21 >= v14)
          {
            v17 = v21 - v14;
          }

          else
          {
            v17 = 0;
          }

          while (1)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v11);
            }

            if (v17 == v16)
            {
              break;
            }

            [v3 addObject:*(*(&v22 + 1) + 8 * v16)];
            ++v14;
            if (v13 == ++v16)
            {
              v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v3 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
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
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self frameForIndex:a3];

  return CGRectGetWidth(*&v3);
}

- (id)topMostLayoutElements
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v5 = [v4 windowingSettings];
  v6 = [v5 numberOfVisibleItemsPerGroup];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self;
  obj = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _visiblePileIdentifiers];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v20 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)v21 appLayoutsForContinuousExposeIdentifier:v10];
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v23;
LABEL_8:
          v16 = 0;
          v17 = v14;
          v14 += v13;
          while (1)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v11);
            }

            if (v17 > v6)
            {
              break;
            }

            [v3 addObject:*(*(&v22 + 1) + 8 * v16)];
            ++v17;
            if (v13 == ++v16)
            {
              v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  return v3;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v6 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _indexOfAppLayoutInItsPile:a4];
  v7 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v8 = [v7 windowingSettings];
  v9 = [v8 numberOfVisibleItemsPerGroup];

  result = 0.0;
  if (v6 < v9)
  {
    return 1.0;
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v6 = [v5 windowingSettings];
  [v6 switcherCornerRadius];

  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self scaleForIndex:a3];

  SBRectCornerRadiiForRadius();
  result.topRight = v10;
  result.bottomRight = v9;
  result.bottomLeft = v8;
  result.topLeft = v7;
  return result;
}

- (double)homeScreenScale
{
  v2 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 homeScreenScaleForMode:2];
  v5 = v4;

  return v5;
}

- (double)wallpaperScale
{
  v2 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  [v3 wallpaperScaleForMode:2];
  v5 = v4;

  return v5;
}

- (BOOL)isFocusEnabledForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [v4 continuousExposeIdentifier];
  v6 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v5];

  v7 = [v6 firstObject];

  return v7 == v4;
}

- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self continuousExposeIdentifiersInSwitcher];
  v8 = [v5 continuousExposeIdentifier];

  v9 = [v7 indexOfObject:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL && [v7 count] >= 3)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __90__SBAppSwitcherContinuousExposeSwitcherModifier_neighboringAppLayoutsForFocusedAppLayout___block_invoke;
    v19 = &unk_2783B6088;
    v20 = self;
    v21 = v6;
    v10 = MEMORY[0x223D6F7F0](&v16);
    if (v9)
    {
      v11 = [v7 objectAtIndex:{v9 - 1, v16, v17, v18, v19, v20}];
      (v10)[2](v10, v11);

      if (v9 != 1)
      {
        v12 = [v7 objectAtIndex:v9 - 2];
        (v10)[2](v10, v12);
      }
    }

    if (v9 < [v7 count] - 1)
    {
      v13 = [v7 objectAtIndex:v9 + 1];
      (v10)[2](v10, v13);
    }

    if (v9 < [v7 count] - 2)
    {
      v14 = [v7 objectAtIndex:v9 + 2];
      (v10)[2](v10, v14);
    }
  }

  return v6;
}

void __90__SBAppSwitcherContinuousExposeSwitcherModifier_neighboringAppLayoutsForFocusedAppLayout___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) appLayoutsForContinuousExposeIdentifier:a2];
  v5 = [v3 firstObject];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)destinationAppLayoutForDismissingCurrentMode
{
  currentAppLayout = self->_currentAppLayout;
  if (currentAppLayout)
  {
    v3 = currentAppLayout;
  }

  else
  {
    v3 = +[SBAppLayout homeScreenAppLayout];
  }

  return v3;
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

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v4 = [v3 numberOfSnapshotsToCacheInSwitcher];

  v6 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _visiblePileRange];
  isScrollingForward = self->_isScrollingForward;

  return [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _appLayoutsToCacheSnapshotsWithVisiblePileRange:v6 numberOfSnapshotsToCache:v5 biasForward:v4, isScrollingForward];
}

- (_NSRange)_visiblePileRange
{
  v3 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self continuousExposeIdentifiersInSwitcher];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _visibleSwitcherBoundsIncludingShadow];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 count];
  if (v12)
  {
    v13 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    while (v16 == 0x7FFFFFFFFFFFFFFFLL || v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _boundingFrameForPileAtIndex:v13 withScrollOffsetApplied:1];
      v38.origin.x = v19;
      v38.origin.y = v20;
      v38.size.width = v21;
      v38.size.height = v22;
      v37.origin.x = v5;
      v37.origin.y = v7;
      v37.size.width = v9;
      v37.size.height = v11;
      v23 = CGRectIntersectsRect(v37, v38);
      if (v23)
      {
        v24 = v13;
      }

      else
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v13;
      }

      if ((v13 & 1) == 0 && v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v24;
      }

      if (v15 == 0x7FFFFFFFFFFFFFFFLL && (v13 & 1) != 0)
      {
        v15 = v24;
      }

      v27 = v16 == 0x7FFFFFFFFFFFFFFFLL && (v13 & 1) == 0;
      if (v27 && v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v25;
      }

      if ((v13 & (v15 != 0x7FFFFFFFFFFFFFFFLL) & (v17 == 0x7FFFFFFFFFFFFFFFLL)) != 0)
      {
        v17 = v25;
      }

      if (v12 == ++v13)
      {
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      }
    }
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:
    v16 = v12;
LABEL_33:
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v12;
    }
  }

  v28 = v16 - 2;
  if (v14 >= v15)
  {
    v29 = v15;
  }

  else
  {
    v29 = v14;
  }

  if (v28 <= v17 - 2)
  {
    v28 = v17 - 2;
  }

  v30 = v29 == 0x7FFFFFFFFFFFFFFFLL || v28 == 0x7FFFFFFFFFFFFFFFLL;
  v31 = v28 - v29;
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31 + 1;
  }

  if (v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29;
  }

  v34 = v33;
  v35 = v32;
  result.length = v35;
  result.location = v34;
  return result;
}

- (id)_appLayoutsToCacheSnapshotsWithVisiblePileRange:(_NSRange)a3 numberOfSnapshotsToCache:(unint64_t)a4 biasForward:(BOOL)a5
{
  v65 = *MEMORY[0x277D85DE8];
  if (a3.length)
  {
    v5 = a5;
    length = a3.length;
    location = a3.location;
    v42 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self continuousExposeIdentifiersInSwitcher];
    v8 = [v42 count];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = location + length;
    if (v5)
    {
      v11 = 2;
      v12 = 1;
      if (location < v10)
      {
        v13 = location;
        do
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
          [v9 addObject:v14];

          ++v13;
          --length;
        }

        while (length);
      }
    }

    else if (v10 <= location)
    {
      v11 = 1;
      v12 = 2;
    }

    else
    {
      v11 = 1;
      v12 = 2;
      v16 = location + length;
      do
      {
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:--v16];
        [v9 addObject:v17];
      }

      while (v16 > location);
    }

    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = location - 1;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = v10;
    while (v10 < v8 || (v61[3] & 0x8000000000000000) == 0)
    {
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __134__SBAppSwitcherContinuousExposeSwitcherModifier__appLayoutsToCacheSnapshotsWithVisiblePileRange_numberOfSnapshotsToCache_biasForward___block_invoke;
      v51[3] = &unk_2783AA6B8;
      v53 = &v56;
      v54 = v8;
      v55 = v11;
      v18 = v9;
      v52 = v18;
      v19 = MEMORY[0x223D6F7F0](v51);
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __134__SBAppSwitcherContinuousExposeSwitcherModifier__appLayoutsToCacheSnapshotsWithVisiblePileRange_numberOfSnapshotsToCache_biasForward___block_invoke_2;
      v47[3] = &unk_2783AA618;
      v49 = &v60;
      v50 = v12;
      v48 = v18;
      v20 = MEMORY[0x223D6F7F0](v47);
      v21 = v20;
      if (v5)
      {
        v19[2](v19);
        v22 = v21;
      }

      else
      {
        (*(v20 + 16))(v20);
        v22 = v19;
      }

      (v22[2])();

      v10 = v57[3];
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
    v24 = [v23 windowingSettings];
    v25 = [v24 numberOfVisibleItemsPerGroup];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = v9;
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v64 count:16];
    if (v27)
    {
      v28 = *v44;
LABEL_22:
      v29 = 0;
      while (1)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v43 + 1) + 8 * v29);
        v31 = [v15 count];
        v32 = a4 >= v31 ? a4 - v31 : 0;
        if (v31 >= a4)
        {
          break;
        }

        v33 = [v42 objectAtIndex:{objc_msgSend(v30, "unsignedIntegerValue")}];
        v34 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v33];
        v35 = [v34 count];
        if (v35 >= v25)
        {
          v36 = v25;
        }

        else
        {
          v36 = v35;
        }

        if (v36 >= v32)
        {
          v37 = v32;
        }

        else
        {
          v37 = v36;
        }

        v38 = [v34 subarrayWithRange:{0, v37}];
        [v15 addObjectsFromArray:v38];

        if (v27 == ++v29)
        {
          v27 = [v26 countByEnumeratingWithState:&v43 objects:v64 count:16];
          if (v27)
          {
            goto LABEL_22;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v60, 8);
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

void __134__SBAppSwitcherContinuousExposeSwitcherModifier__appLayoutsToCacheSnapshotsWithVisiblePileRange_numberOfSnapshotsToCache_biasForward___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = *(*(a1[5] + 8) + 24);
  v3 = v1 >= v2;
  v4 = v1 - v2;
  if (!v3)
  {
    v4 = 0;
  }

  if (v4 >= a1[7])
  {
    v5 = a1[7];
  }

  else
  {
    v5 = v4;
  }

  for (; v5; --v5)
  {
    v7 = a1[4];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1[5] + 8) + 24)];
    [v7 addObject:v8];

    ++*(*(a1[5] + 8) + 24);
  }
}

void __134__SBAppSwitcherContinuousExposeSwitcherModifier__appLayoutsToCacheSnapshotsWithVisiblePileRange_numberOfSnapshotsToCache_biasForward___block_invoke_2(void *a1)
{
  v1 = *(*(a1[5] + 8) + 24);
  if (v1 + 1 < a1[6])
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = a1[6];
  }

  for (; v2; --v2)
  {
    v4 = a1[4];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(a1[5] + 8) + 24)];
    [v4 addObject:v5];

    --*(*(a1[5] + 8) + 24);
  }
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self isReduceMotionEnabled];

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

- (unint64_t)indexToScrollToAfterInsertingAtIndex:(unint64_t)a3
{
  result = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _indexOfLeadingAppLayout];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  v5 = [v4 count];

  if (v5 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _indexOfLeadingAppLayout];
}

- (unint64_t)_indexOfLeadingAppLayout
{
  v31 = *MEMORY[0x277D85DE8];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _visibleSwitcherBoundsIncludingShadow];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self continuousExposeIdentifiersInSwitcher];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _boundingFrameForPileWithIdentifier:v16 withScrollOffsetApplied:1];
        v33.origin.x = v17;
        v33.origin.y = v18;
        v33.size.width = v19;
        v33.size.height = v20;
        v32.origin.x = v4;
        v32.origin.y = v6;
        v32.size.width = v8;
        v32.size.height = v10;
        if (CGRectIntersectsRect(v32, v33))
        {
          v21 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v16];
          v22 = [v21 firstObject];

          if (v22)
          {
            v24 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
            v23 = [v24 indexOfObject:v22];

            goto LABEL_12;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:

  return v23;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283371AB0];

  return v6;
}

- (id)adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:(id)a3 identifiersInStrip:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if ([(SBAppSwitcherContinuousExposeSwitcherModifier *)self prefersStripHiddenAndDisabled])
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v9 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
    v10 = [v9 countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v79;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v79 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutContainingAppLayout:*(*(&v78 + 1) + 8 * i)];
          v15 = [v14 continuousExposeIdentifier];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v11);
    }

    v16 = [v8 array];
    goto LABEL_67;
  }

  v17 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutOnStage];
  v18 = [v17 continuousExposeIdentifier];

  if (v18)
  {
    v19 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v18];
    v20 = [v19 count];

    if (v20 < 2)
    {
      if (self->_showsActiveAppLayoutInSwitcher)
      {
        [v8 addObject:v18];
      }

      v22 = 0;
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }

    v21 = [v7 indexOfObject:v18];
  }

  else
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v22 = 1;
LABEL_18:
  v67 = v6;
  v23 = [v7 count];
  if (v23)
  {
    v24 = v23;
    v25 = v23 >> 1;
    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = v23 >> 1;
    }

    else
    {
      v26 = v21;
    }

    if (v23 >= 6)
    {
      [SBAppSwitcherContinuousExposeSwitcherModifier adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:identifiersInStrip:];
    }

    v68 = v22;
    if (__SBStripOrderingMapsByStripSize__onceToken != -1)
    {
      [SBAppSwitcherContinuousExposeSwitcherModifier adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:identifiersInStrip:];
    }

    v27 = MEMORY[0x277CCABB0];
    v28 = __SBStripOrderingMapsByStripSize__map;
    v29 = [v27 numberWithUnsignedInteger:v24];
    v30 = [v28 objectForKey:v29];

    if (v25 > v26 || v24 == 5)
    {
      v32 = v26;
    }

    else
    {
      v32 = v24 + ~v26;
    }

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
    v34 = [v30 objectForKey:v33];

    v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:v24];
    v36 = v35;
    if ((v68 & 1) != 0 || !self->_showsActiveAppLayoutInSwitcher)
    {
      v66 = v34;
      [v35 addObjectsFromArray:v34];
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v49 = v36;
      v50 = v36;
      v51 = [v50 countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v75;
        do
        {
          for (j = 0; j != v52; ++j)
          {
            if (*v75 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = [v7 objectAtIndex:{objc_msgSend(*(*(&v74 + 1) + 8 * j), "integerValue")}];
            [v8 addObject:v55];
          }

          v52 = [v50 countByEnumeratingWithState:&v74 objects:v83 count:16];
        }

        while (v52);
      }

      v34 = v66;
      v36 = v49;
    }

    else if ([v8 containsObject:v18])
    {
      v64 = v36;
      v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:v24];
      v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:v24];
      v39 = 0;
      v40 = v24;
      v69 = v37;
      do
      {
        v41 = v38;
        if ((v39 & 1) == 0)
        {
          v38 = v37;
        }

        v42 = [v34 objectAtIndex:v39];
        v43 = v38;
        v38 = v41;
        [v43 addObject:v42];

        v37 = v69;
        ++v39;
      }

      while (v40 != v39);
      v65 = v34;
      v44 = 1;
      do
      {
        if (v44)
        {
          if ([v38 count])
          {
            v45 = v38;
          }

          else
          {
            v45 = v37;
          }
        }

        else if ([v37 count])
        {
          v45 = v37;
        }

        else
        {
          v45 = v38;
        }

        v46 = v45;
        v47 = [v46 firstObject];
        v48 = [v7 objectAtIndex:{objc_msgSend(v47, "integerValue")}];
        [v8 addObject:v48];

        [v46 removeObject:v47];
        ++v44;
        --v40;
        v37 = v69;
        v38 = v41;
      }

      while (v40);

      v36 = v64;
      v34 = v65;
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v56 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  v57 = [v56 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v71;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v71 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutContainingAppLayout:*(*(&v70 + 1) + 8 * k)];
        v62 = [v61 continuousExposeIdentifier];
        if ((BSEqualStrings() & 1) == 0)
        {
          [v8 addObject:v62];
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v58);
  }

  v16 = [v8 array];

  v6 = v67;
LABEL_67:

  return v16;
}

- (id)adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip:(id)a3
{
  v118 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(SBAppSwitcherContinuousExposeSwitcherModifier *)self prefersStripHiddenAndDisabled]& 1) != 0)
  {
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_93;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v7 = [(SBSwitcherModifier *)self windowingConfiguration];
  v76 = [v7 numberOfRowsWhileInApp];

  v8 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutOnStage];
  v83 = [v8 continuousExposeIdentifier];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v9 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  v10 = [v9 countByEnumeratingWithState:&v108 objects:v117 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v109;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v109 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutContainingAppLayout:*(*(&v108 + 1) + 8 * v13)];
      if (!v8 || ([v8 containsAnyItemFromAppLayout:v14] & 1) == 0)
      {
        v15 = [v14 continuousExposeIdentifier];
        [v6 addObject:v15];
      }

      v16 = [v6 count];

      if (v16 == v76)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v108 objects:v117 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (v83)
  {
    v17 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v83];
    if (([v6 containsObject:v83] & 1) != 0 || !objc_msgSend(v17, "count"))
    {
      goto LABEL_26;
    }

    if ([v17 count] == 1)
    {
      v18 = [v17 firstObject];
      if (v8 && (([v8 isOrContainsAppLayout:v18] & 1) != 0 || objc_msgSend(v18, "isOrContainsAppLayout:", v8)))
      {

LABEL_26:
        goto LABEL_27;
      }
    }

    if ([v6 count] == v76)
    {
      v19 = [v6 lastObject];
      [v6 removeObject:v19];
    }

    [v6 insertObject:v83 atIndex:0];
    goto LABEL_26;
  }

LABEL_27:
  if ([v4 count] <= v76)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v20 = [v4 subarrayWithRange:{0, v76}];
    v5 = [v20 mutableCopy];
  }

  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = __122__SBAppSwitcherContinuousExposeSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke;
  v106[3] = &unk_2783A8B78;
  v21 = v4;
  v107 = v21;
  v22 = [v6 bs_filter:v106];
  v23 = [v22 array];
  v24 = [v23 mutableCopy];

  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __122__SBAppSwitcherContinuousExposeSwitcherModifier_adjustedContinuousExposeIdentifiersInStripFromPreviousIdentifiersInStrip___block_invoke_2;
  v104[3] = &unk_2783A8B78;
  v25 = v6;
  v26 = v24;
  v73 = v25;
  v105 = v25;
  v27 = [v21 bs_filter:v104];
  v28 = [v27 mutableCopy];

  if ([v24 count] || objc_msgSend(v28, "count"))
  {
    while ([v24 count] && objc_msgSend(v28, "count"))
    {
      v29 = [v24 firstObject];
      v30 = [v28 firstObject];
      [v5 replaceObjectAtIndex:objc_msgSend(v5 withObject:{"indexOfObject:", v30), v29}];
      [v28 removeObject:v30];
      [v24 removeObject:v29];
    }

    if ([v24 count] || objc_msgSend(v28, "count"))
    {
      v74 = v28;
      v82 = v5;
      v71 = v8;
      v72 = v4;
      v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v32 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
      v33 = [v32 countByEnumeratingWithState:&v100 objects:v116 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v101;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v101 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutContainingAppLayout:*(*(&v100 + 1) + 8 * i)];
            v38 = [v37 continuousExposeIdentifier];
            [v31 addObject:v38];
          }

          v34 = [v32 countByEnumeratingWithState:&v100 objects:v116 count:16];
        }

        while (v34);
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v70 = v26;
      obj = v26;
      v39 = [obj countByEnumeratingWithState:&v96 objects:v115 count:16];
      v5 = v82;
      v40 = v76;
      if (v39)
      {
        v41 = v39;
        v42 = *v97;
        v75 = *v97;
        do
        {
          v43 = 0;
          v78 = v41;
          do
          {
            if (*v97 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v96 + 1) + 8 * v43);
            if ([v5 count] < v40)
            {
              [v5 addObject:v44];
              goto LABEL_66;
            }

            v80 = v43;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v45 = v5;
            v46 = [v45 countByEnumeratingWithState:&v92 objects:v114 count:16];
            if (!v46)
            {
              v48 = v45;
              v41 = v78;
              goto LABEL_65;
            }

            v47 = v46;
            v77 = v44;
            v48 = 0;
            v49 = *v93;
            v50 = 0x7FFFFFFFFFFFFFFFLL;
            do
            {
              for (j = 0; j != v47; ++j)
              {
                if (*v93 != v49)
                {
                  objc_enumerationMutation(v45);
                }

                v52 = *(*(&v92 + 1) + 8 * j);
                v53 = [v31 indexOfObject:v52];
                if (v53 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v54 = v53;
                  if (v50 == 0x7FFFFFFFFFFFFFFFLL || v53 > v50)
                  {
                    v55 = v52;

                    v50 = v54;
                    v48 = v55;
                  }
                }
              }

              v47 = [v45 countByEnumeratingWithState:&v92 objects:v114 count:16];
            }

            while (v47);

            v43 = v80;
            v5 = v82;
            v42 = v75;
            v40 = v76;
            v41 = v78;
            if (v48)
            {
              [v45 replaceObjectAtIndex:objc_msgSend(v45 withObject:{"indexOfObject:", v48), v77}];
LABEL_65:
            }

LABEL_66:
            ++v43;
          }

          while (v43 != v41);
          v41 = [obj countByEnumeratingWithState:&v96 objects:v115 count:16];
        }

        while (v41);
      }

      [obj removeAllObjects];
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v56 = v74;
      v57 = [v56 countByEnumeratingWithState:&v88 objects:v113 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v89;
        do
        {
          v60 = 0;
          v81 = v58;
          do
          {
            if (*v89 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v88 + 1) + 8 * v60);
            if ([v5 containsObject:v61])
            {
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v62 = v31;
              v63 = [v62 countByEnumeratingWithState:&v84 objects:v112 count:16];
              if (v63)
              {
                v64 = v63;
                v65 = *v85;
LABEL_76:
                v66 = 0;
                while (1)
                {
                  if (*v85 != v65)
                  {
                    objc_enumerationMutation(v62);
                  }

                  v67 = *(*(&v84 + 1) + 8 * v66);
                  if ((BSEqualStrings() & 1) == 0 && ([v82 containsObject:v67] & 1) == 0 && !objc_msgSend(v56, "containsObject:", v67))
                  {
                    break;
                  }

                  if (v64 == ++v66)
                  {
                    v64 = [v62 countByEnumeratingWithState:&v84 objects:v112 count:16];
                    if (v64)
                    {
                      goto LABEL_76;
                    }

                    goto LABEL_84;
                  }
                }

                v68 = v67;

                if (!v68)
                {
                  goto LABEL_87;
                }

                v5 = v82;
                [v82 replaceObjectAtIndex:objc_msgSend(v82 withObject:{"indexOfObject:", v61), v68}];
              }

              else
              {
LABEL_84:

LABEL_87:
                v5 = v82;
                [v82 removeObject:v61];
              }

              v58 = v81;
            }

            ++v60;
          }

          while (v60 != v58);
          v58 = [v56 countByEnumeratingWithState:&v88 objects:v113 count:16];
        }

        while (v58);
      }

      [v56 removeAllObjects];
      v8 = v71;
      v4 = v72;
      v26 = v70;
      v28 = v74;
    }
  }

LABEL_93:

  return v5;
}

- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _frameForAppLayout:v6 withScaledApplied:1 scrollOffsetApplied:0];
  v8 = v7;
  if (BSFloatIsZero())
  {
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _heightForCardInSwitcherWithScaleFactor:0];
    v8 = v9;
  }

  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self containerViewBounds];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self frameForLayoutRole:a3 inAppLayout:v6 withBounds:?];
  v11 = v10;

  IsZero = BSFloatIsZero();
  result = v8 / v11;
  if (IsZero)
  {
    return 1.0;
  }

  return result;
}

- (id)scrollViewAttributes
{
  v3 = objc_alloc_init(SBMutableSwitcherScrollViewAttributes);
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _contentSize];
  [(SBSwitcherScrollViewAttributes *)v3 setContentSize:?];
  [(SBSwitcherScrollViewAttributes *)v3 setDecelerationRate:*MEMORY[0x277D76EC0]];
  [(SBSwitcherScrollViewAttributes *)v3 setScrollViewPagingEnabled:0];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpageSpacingForPaging:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setPagingOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpolatesDuringSwipeToKill:0];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherViewBounds];
  [(SBSwitcherScrollViewAttributes *)v3 setFrame:?];

  return v3;
}

- (double)minimumTranslationToKillIndex:(unint64_t)a3
{
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self frameForIndex:?];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();

  return CGRectGetMinY(*&v5);
}

- (CGSize)_contentSize
{
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherViewBounds];
  v5 = v4;
  width = self->_cachedFittedContentSize.width;
  if (width < v3)
  {
    width = v3;
  }

  result.height = v5;
  result.width = width;
  return result;
}

- (CGSize)_fittedContentSize
{
  width = self->_cachedFittedContentSize.width;
  height = self->_cachedFittedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v7 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self isRTLEnabled];
  v8 = [(SBSwitcherModifier *)self windowingConfiguration];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherViewBounds];
  v10 = v9;
  [v8 switcherHorizontalEdgeSpacing];
  v12 = v11;
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _frameForIndex:a3 withScaleApplied:1 scrollOffsetApplied:0];
  v17 = 0.0;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v17 = (v10 - v15) * 0.5;
      goto LABEL_13;
    }

    if (a4 != 3)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v7)
    {
      v17 = v12;
    }

    else
    {
      v17 = v10 - v15 - v12;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  if (a4 == 1)
  {
    if (v7)
    {
      v17 = v10 - v15 - v12;
    }

    else
    {
      v17 = v12;
    }
  }

LABEL_13:
  v18 = CGRectGetMinX(*&v13) - v17;
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _contentSize];
  v20 = v19 - v10;
  v21 = fmax(v18, 0.0);
  if (v20 <= v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = 0.0;
  v24 = v22;
  result.y = v23;
  result.x = v24;
  return result;
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3
{
  v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _visiblePileRange];
  v6 = v5;
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _boundingFrameForPileAtIndex:v4 withScrollOffsetApplied:0];
  if (v6 >= 2)
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _boundingFrameForPileAtIndex:v4 + 1 withScrollOffsetApplied:0];
    MaxX = CGRectGetMaxX(v30);
    v31.origin.x = v11;
    v31.origin.y = v12;
    v31.size.width = v13;
    v31.size.height = v14;
    if (MaxX > CGRectGetMaxX(v31))
    {
      ++v4;
    }
  }

  result = 0.0;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _boundingFrameForPileAtIndex:v4 withScrollOffsetApplied:1, 0.0];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if ([(SBAppSwitcherContinuousExposeSwitcherModifier *)self isRTLEnabled])
    {
      [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherViewBounds];
      v26 = v25 - v18;
    }

    else
    {
      v32.origin.x = v18;
      v32.origin.y = v20;
      v32.size.width = v22;
      v32.size.height = v24;
      v26 = CGRectGetMaxX(v32);
    }

    v27 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v27 switcherHorizontalInterItemSpacing];
    v29 = v28;

    return v26 + v29;
  }

  return result;
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

- (id)_currentLayoutCalculationsValidityToken
{
  v3 = [SBSwitcherLayoutCalculationsCacheValidityToken alloc];
  v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutsGenerationCount];
  v5 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self continuousExposeIdentifiersGenerationCount];
  v6 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _scaledSwitcherViewBounds];
  v7 = [(SBSwitcherLayoutCalculationsCacheValidityToken *)v3 initWithAppLayoutsGenCount:v4 continuousExposeIdentifiersGenCount:v5 switcherInterfaceOrientation:v6 containerViewBounds:self->_modifierEventGenCount modifierEventGenCount:?];

  return v7;
}

- (id)_compactedBoundingBoxSizesByAppLayout
{
  v23 = *MEMORY[0x277D85DE8];
  cached_compactedBoundingBoxSizesByAppLayout = self->_cached_compactedBoundingBoxSizesByAppLayout;
  if (!cached_compactedBoundingBoxSizesByAppLayout)
  {
    v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
          [v12 compactedBoundingBox];
          v15 = [MEMORY[0x277CCAE60] valueWithCGSize:{v13, v14}];
          [(NSDictionary *)v5 setObject:v15 forKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v16 = self->_cached_compactedBoundingBoxSizesByAppLayout;
    self->_cached_compactedBoundingBoxSizesByAppLayout = v5;

    cached_compactedBoundingBoxSizesByAppLayout = self->_cached_compactedBoundingBoxSizesByAppLayout;
  }

  return cached_compactedBoundingBoxSizesByAppLayout;
}

- (id)buildLayoutCalculationsForCache:(id)a3
{
  v3 = self;
  v143 = *MEMORY[0x277D85DE8];
  v4 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  v5 = [v4 windowingSettings];

  v6 = [(SBSwitcherModifier *)v3 windowingConfiguration];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)v3 containerViewBounds];
  scaleFactor = v3->_scaleFactor;
  v107 = v7;
  [v6 screenEdgePadding];
  [v6 switcherHorizontalEdgeSpacing];
  v9 = v8;
  horizontalEdgeSpacingScaleFactor = v3->_horizontalEdgeSpacingScaleFactor;
  v11 = v8 * horizontalEdgeSpacingScaleFactor;
  [v6 switcherHorizontalInterItemSpacing];
  v122 = v12 * v3->_scaleFactor;
  [v6 switcherVerticalEdgeSpacing];
  [v6 switcherVerticalInterItemSpacing];
  v108 = v6;
  [v6 switcherPileCardMinimumPeekAmount];
  v14 = v13;
  v15 = v3->_scaleFactor;
  v16 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)v3 isRTLEnabled];
  v109 = v5;
  v17 = [v5 numberOfVisibleItemsPerGroup];
  v18 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)v3 continuousExposeIdentifiersInSwitcher];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)v3 _heightForCardInSwitcherWithScaleFactor:1];
  v20 = v19;
  cached_compactedBoundingBoxSizesByAppLayout = v3->_cached_compactedBoundingBoxSizesByAppLayout;
  v3->_cached_compactedBoundingBoxSizesByAppLayout = 0;

  v22 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)v3 _compactedBoundingBoxSizesByAppLayout];
  v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v128 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = -(v9 * horizontalEdgeSpacingScaleFactor);
  if (v16)
  {
    v24 = v11;
  }

  v25 = v24 + 0.0;
  v120 = v23;
  v121 = v18;
  if ([v18 count])
  {
    v26 = 0;
    v126 = v14 * v15;
    v117 = *(MEMORY[0x277CBF398] + 8);
    v118 = *MEMORY[0x277CBF398];
    v115 = *(MEMORY[0x277CBF398] + 24);
    v116 = *(MEMORY[0x277CBF398] + 16);
    v113 = *(MEMORY[0x277CBF3A0] + 8);
    v114 = *MEMORY[0x277CBF3A0];
    v111 = *(MEMORY[0x277CBF3A0] + 24);
    v112 = *(MEMORY[0x277CBF3A0] + 16);
    v27 = -1.0;
    if (v16)
    {
      v27 = 1.0;
    }

    v110 = v27;
    v28 = v25;
    v119 = v3;
    v127 = v20;
    do
    {
      v123 = [v18 objectAtIndex:v26];
      v29 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)v3 appLayoutsForContinuousExposeIdentifier:?];
      v30 = [v29 count];
      v124 = v28;
      v125 = v25;
      if (v26)
      {
        v31 = v28;
      }

      else
      {
        v31 = v25;
      }

      if (v30)
      {
        v32 = v30;
        v33 = 0;
        y = v117;
        x = v118;
        height = v115;
        width = v116;
        v38 = v31;
        v39 = v31;
        do
        {
          v40 = [v29 objectAtIndex:v33];
          v41 = [v22 objectForKey:v40];
          v42 = v41;
          if (v41)
          {
            v131 = height;
            [v41 CGSizeValue];
            v44 = v20 / v43 + v33 * -0.01;
            v46 = v45 * v44;
            v132 = v39;
            v129 = x;
            if (v33)
            {
              if (v16)
              {
                if (v31 < v126 + v38 - v46)
                {
                  v31 = v126 + v38 - v46;
                }
              }

              else if (v31 >= v38 - v126 + v46)
              {
                v31 = v38 - v126 + v46;
              }
            }

            v130 = v31;
            SBRectWithSize();
            SBUnintegralizedRectCenteredAboutPoint();
            v48 = v47;
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v55 = objc_alloc_init(SBSwitcherLayoutCalculations);
            [(SBSwitcherLayoutCalculations *)v55 setFrame:v48, v50, v52, v54];
            [(SBSwitcherLayoutCalculations *)v55 setScale:v44];
            [v128 setObject:v55 forKey:v40];
            v56 = v48;
            v57 = v50;
            v58 = v52;
            v59 = v54;
            if (v16)
            {
              MaxX = CGRectGetMaxX(*&v56);
            }

            else
            {
              MaxX = CGRectGetMinX(*&v56);
            }

            v38 = MaxX;
            v39 = v132;
            if (v33 < v17)
            {
              v39 = MaxX;
            }

            SBRectWithSize();
            SBUnintegralizedRectCenteredAboutPoint();
            v148.origin.x = v61;
            v148.origin.y = v62;
            v148.size.width = v63;
            v148.size.height = v64;
            v145.origin.y = y;
            v145.origin.x = v129;
            v145.size.width = width;
            v145.size.height = v131;
            v146 = CGRectUnion(v145, v148);
            x = v146.origin.x;
            y = v146.origin.y;
            width = v146.size.width;
            height = v146.size.height;

            v20 = v127;
            v31 = v130;
          }

          ++v33;
        }

        while (v32 != v33);
      }

      else
      {
        v39 = v31;
        height = v115;
        width = v116;
        y = v117;
        x = v118;
      }

      v147.origin.x = x;
      v147.origin.y = y;
      v147.size.width = width;
      v147.size.height = height;
      IsNull = CGRectIsNull(v147);
      v67 = v113;
      v66 = v114;
      if (!IsNull)
      {
        v66 = x;
        v67 = y;
      }

      v69 = v111;
      v68 = v112;
      if (!IsNull)
      {
        v68 = width;
        v69 = height;
      }

      v28 = v124;
      v25 = v125;
      if (v26)
      {
        v28 = v39 + v110 * v122;
      }

      else
      {
        v25 = v39 + v110 * v122;
      }

      v70 = [MEMORY[0x277CCAE60] valueWithCGRect:{v66, v67, v68, v69}];
      v23 = v120;
      [v120 setObject:v70 forKey:v123];

      ++v26;
      v18 = v121;
      v3 = v119;
    }

    while (v26 < [v121 count]);
  }

  else
  {
    v28 = v25;
  }

  v71 = v107 * scaleFactor;
  v72 = v105 - v122;
  p_width = &v3->_cachedFittedContentSize.width;
  if (v16)
  {
    if (v25 >= v28)
    {
      v74 = v25;
    }

    else
    {
      v74 = v28;
    }

    *p_width = v72 + v74;
    v3->_cachedFittedContentSize.height = v71;
    objc_storeStrong(&v3->_cachedPileBoundingFrameByPileIdentifier, v23);
  }

  else
  {
    if (v25 >= v28)
    {
      v75 = v28;
    }

    else
    {
      v75 = v25;
    }

    *p_width = v72 - v75;
    v3->_cachedFittedContentSize.height = v71;
    v76 = v3;
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)v3 _contentSize];
    v78 = v77;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v79 = v128;
    v80 = [v79 countByEnumeratingWithState:&v137 objects:v142 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v138;
      do
      {
        for (i = 0; i != v81; ++i)
        {
          if (*v138 != v82)
          {
            objc_enumerationMutation(v79);
          }

          v84 = [v79 objectForKey:*(*(&v137 + 1) + 8 * i)];
          [v84 frame];
          [v84 setFrame:v78 + v85];
        }

        v81 = [v79 countByEnumeratingWithState:&v137 objects:v142 count:16];
      }

      while (v81);
    }

    v86 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v23, "count")}];
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v87 = v23;
    v88 = [v87 countByEnumeratingWithState:&v133 objects:v141 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v134;
      do
      {
        for (j = 0; j != v89; ++j)
        {
          if (*v134 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v92 = *(*(&v133 + 1) + 8 * j);
          v93 = [v87 objectForKey:v92];
          [v93 CGRectValue];
          v95 = v94;
          v97 = v96;
          v99 = v98;
          v101 = v100;

          v102 = [MEMORY[0x277CCAE60] valueWithCGRect:{v78 + v95, v97, v99, v101}];
          [(NSDictionary *)v86 setObject:v102 forKey:v92];
        }

        v89 = [v87 countByEnumeratingWithState:&v133 objects:v141 count:16];
      }

      while (v89);
    }

    cachedPileBoundingFrameByPileIdentifier = v76->_cachedPileBoundingFrameByPileIdentifier;
    v76->_cachedPileBoundingFrameByPileIdentifier = v86;

    v23 = v120;
    v18 = v121;
  }

  return v128;
}

- (CGRect)_visibleSwitcherBoundsIncludingShadow
{
  v3 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherSettings];
  [v3 switcherCardShadowRadius];
  v5 = v4;

  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherViewBounds];

  return CGRectInset(*&v6, v5 * -2.8, v5 * -2.8);
}

- (id)_visiblePileIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _visibleSwitcherBoundsIncludingShadow];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self continuousExposeIdentifiersInSwitcher];
  if ([v12 count])
  {
    v13 = 0;
    do
    {
      [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _boundingFrameForPileAtIndex:v13 withScrollOffsetApplied:1];
      v22.origin.x = v14;
      v22.origin.y = v15;
      v22.size.width = v16;
      v22.size.height = v17;
      v21.origin.x = v5;
      v21.origin.y = v7;
      v21.size.width = v9;
      v21.size.height = v11;
      if (CGRectIntersectsRect(v21, v22))
      {
        v18 = [v12 objectAtIndex:v13];
        [v3 addObject:v18];
      }

      ++v13;
    }

    while (v13 < [v12 count]);
  }

  return v3;
}

- (unint64_t)_indexOfAppLayoutInItsPile:(id)a3
{
  v4 = a3;
  v5 = [v4 continuousExposeIdentifier];
  v6 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v5];
  v7 = [v6 indexOfObject:v4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (CGRect)_frameForIndex:(unint64_t)a3 withScaleApplied:(BOOL)a4 scrollOffsetApplied:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self appLayouts];
  v10 = [v9 objectAtIndex:a3];

  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _frameForAppLayout:v10 withScaledApplied:v6 scrollOffsetApplied:v5];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)_frameForAppLayout:(id)a3 withScaledApplied:(BOOL)a4 scrollOffsetApplied:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  appLayoutLayoutCalculationsCache = self->_appLayoutLayoutCalculationsCache;
  v10 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _currentLayoutCalculationsValidityToken];
  [(SBSwitcherLayoutCalculationsCache *)appLayoutLayoutCalculationsCache frameForKey:v8 validityToken:v10 fallback:&__block_literal_global_56];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (!a4)
  {
    v19 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _compactedBoundingBoxSizesByAppLayout];
    v20 = [v19 objectForKey:v8];
    [v20 CGSizeValue];

    SBRectWithSize();
    UIRectGetCenter();
    SBUnintegralizedRectCenteredAboutPoint();
    v12 = v21;
    v14 = v22;
    v16 = v23;
    v18 = v24;
  }

  if (v5)
  {
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)self scrollViewContentOffset];
    v12 = v12 - v25;
  }

  v26 = v12;
  v27 = v14;
  v28 = v16;
  v29 = v18;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_boundingFrameForPileAtIndex:(unint64_t)a3 withScrollOffsetApplied:(BOOL)a4
{
  v4 = a4;
  v7 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self continuousExposeIdentifiersInSwitcher];
  v8 = [v7 objectAtIndex:a3];

  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _boundingFrameForPileWithIdentifier:v8 withScrollOffsetApplied:v4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_boundingFrameForPileWithIdentifier:(id)a3 withScrollOffsetApplied:(BOOL)a4
{
  v4 = a4;
  appLayoutLayoutCalculationsCache = self->_appLayoutLayoutCalculationsCache;
  v7 = a3;
  v8 = [(SBAppSwitcherContinuousExposeSwitcherModifier *)self _currentLayoutCalculationsValidityToken];
  [(SBSwitcherLayoutCalculationsCache *)appLayoutLayoutCalculationsCache rebuildIfNecessaryForValidityToken:v8];

  v9 = [(NSDictionary *)self->_cachedPileBoundingFrameByPileIdentifier objectForKey:v7];

  [v9 CGRectValue];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (v4)
  {
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)self scrollViewContentOffset];
    v11 = v11 - v18;
  }

  v19 = v11;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)_heightForCardInSwitcherWithScaleFactor:(BOOL)a3
{
  v4 = [(SBSwitcherModifier *)self windowingConfiguration];
  [v4 screenEdgePadding];
  [v4 switcherVerticalEdgeSpacing];
  [v4 switcherVerticalInterItemSpacing];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self switcherViewBounds];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self numberOfRowsInGridSwitcher];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self screenScale];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self floatingDockHeight];
  [(SBAppSwitcherContinuousExposeSwitcherModifier *)self statusBarHeight];
  BSFloatRoundForScale();
  v6 = v5;

  return v6;
}

@end