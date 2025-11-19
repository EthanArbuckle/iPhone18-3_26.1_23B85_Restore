@interface SBDeckFloatingSwitcherModifier
- (BOOL)_isIndexVisible:(unint64_t)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGRect)clippingFrameForIndex:(unint64_t)a3 withBounds:(CGRect)a4;
- (CGRect)clippingFrameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5 withBounds:(CGRect)a6;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForShelf:(id)a3;
- (CGRect)shelfBackgroundBlurFrame;
- (CGSize)_contentSize;
- (CGSize)_contentSizeWithWithCardSize:(CGSize)a3 contentInsets:(UIEdgeInsets)a4 switcherViewBounds:(CGRect)a5 numberOfItems:(unint64_t)a6;
- (SBDeckFloatingSwitcherModifier)init;
- (UIEdgeInsets)_contentInsetsWithContainerViewBounds:(CGRect)a3 switcherViewBounds:(CGRect)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3;
- (double)_adjustedIndexForScaleForIndex:(double)a3 withCardSize:(double)a4 contentOffset:(double)a5 contentSize:(double)a6 contentInsets:(uint64_t)a7 switcherViewBounds:(unint64_t)a8;
- (double)_cardCornerRadiusInSwitcher;
- (double)_distanceFromPreviousCardForCardAtIndex:(unint64_t)a3;
- (double)_scaleForScaleAdjustedIndex:(double)a3;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3;
- (double)minimumTranslationToKillIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (double)visibleMarginForItemContainerAtIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)handleRemovalEvent:(id)a3;
- (id)handleScrollEvent:(id)a3;
- (id)handleSwitcherSettingsChangedEvent:(id)a3;
- (id)handleTapAppLayoutEvent:(id)a3;
- (id)handleTapOutsideToDismissEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3;
- (id)scrollViewAttributes;
- (id)visibleAppLayouts;
- (uint64_t)_frameForIndex:(double)a3 withCardSize:(double)a4 scale:(double)a5 adjustedIndexForScale:(double)a6 contentOffset:(double)a7 contentSize:(double)a8 contentInsets:(double)a9 switcherViewBounds:(double)a10;
- (uint64_t)_frameWithScaleAppliedForIndex:(double)a3 withCardSize:(double)a4 contentOffset:(double)a5 contentSize:(double)a6 contentInsets:(double)a7 switcherViewBounds:(uint64_t)a8;
- (unint64_t)_indexForContentOffset:(CGPoint)a3;
- (unint64_t)_numberOfItems;
- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3;
- (unint64_t)transactionCompletionOptions;
- (void)_applyPrototypeSettings;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBDeckFloatingSwitcherModifier

- (SBDeckFloatingSwitcherModifier)init
{
  v6.receiver = self;
  v6.super_class = SBDeckFloatingSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentFloatingConfiguration = 4;
    v4 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v3 addChildModifier:v4];
  }

  return v3;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDeckFloatingSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBDeckFloatingSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (id)handleRemovalEvent:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBDeckFloatingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v18 handleRemovalEvent:v4];
  if ([v4 phase] == 1)
  {
    ++self->_ongoingAppLayoutRemovals;
    goto LABEL_16;
  }

  if ([v4 phase] == 2)
  {
    --self->_ongoingAppLayoutRemovals;
    v6 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
    if ([v6 count])
    {
    }

    else
    {
      ongoingAppLayoutRemovals = self->_ongoingAppLayoutRemovals;

      if (!ongoingAppLayoutRemovals)
      {
        v15 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        [(SBSwitcherTransitionRequest *)v15 setFloatingSwitcherVisible:0];
        [(SBSwitcherTransitionRequest *)v15 setFloatingConfiguration:4];
        v16 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v15 gestureInitiated:0];
        v14 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v16 toResponse:v5];

LABEL_15:
        v5 = v14;
        goto LABEL_16;
      }
    }

    v8 = [v4 appLayout];
    if (!BSEqualObjects())
    {

      goto LABEL_16;
    }

    v9 = self->_ongoingAppLayoutRemovals;

    if (v9)
    {
      goto LABEL_16;
    }

    v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    v11 = v10;
    if (((self->_currentFloatingConfiguration - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    [(SBSwitcherTransitionRequest *)v10 setFloatingConfiguration:v12];
    [(SBSwitcherTransitionRequest *)v11 setFloatingSwitcherVisible:1];
    v13 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v11 gestureInitiated:0];
    v14 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v13 toResponse:v5];

    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBDeckFloatingSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleTapAppLayoutEvent:v4];
  v6 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:v4, v10.receiver, v10.super_class];

  [v6 setRetainsSiri:{-[SBDeckFloatingSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
  v7 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v6 gestureInitiated:0];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  return v8;
}

- (id)handleTapOutsideToDismissEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBDeckFloatingSwitcherModifier;
  v3 = a3;
  v4 = [(SBSwitcherModifier *)&v11 handleTapOutsideToDismissEvent:v3];
  v5 = [v3 isHandled];

  if ((v5 & 1) == 0)
  {
    v6 = [SBPerformTransitionSwitcherEventResponse alloc];
    v7 = +[SBSwitcherTransitionRequest requestForDeactivatingFloatingSwitcher];
    v8 = [(SBPerformTransitionSwitcherEventResponse *)v6 initWithTransitionRequest:v7 gestureInitiated:0];

    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v4];

    v4 = v9;
  }

  return v4;
}

- (id)handleSwitcherSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBDeckFloatingSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBDeckFloatingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:v4];

  return v5;
}

- (id)handleScrollEvent:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  x = self->_previousContentOffset.x;
  if (x != 1.79769313e308 || self->_previousContentOffset.y != 1.79769313e308)
  {
    self->_isScrollingForward = x > v5;
  }

  self->_previousContentOffset.x = v5;
  self->_previousContentOffset.y = v6;
  v11.receiver = self;
  v11.super_class = SBDeckFloatingSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handleScrollEvent:v4];

  return v9;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 toFloatingSwitcherVisible] && (objc_msgSend(v4, "fromFloatingSwitcherVisible") & 1) == 0)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  v5 = [v4 toFloatingAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = v5;

  self->_currentFloatingConfiguration = [v4 toFloatingConfiguration];
  v9.receiver = self;
  v9.super_class = SBDeckFloatingSwitcherModifier;
  v7 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:v4];

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v48 = v17;
  v20 = v19;
  v50 = v19;
  [(SBDeckFloatingSwitcherModifier *)self scrollViewContentOffset];
  v46 = v22;
  v47 = v21;
  v23 = [(SBDeckFloatingSwitcherModifier *)self _numberOfItems];
  v24 = v16;
  v49 = v6;
  v25 = v8;
  [(SBDeckFloatingSwitcherModifier *)self _contentInsetsWithContainerViewBounds:v14 switcherViewBounds:v24, v18, v20, v6, v8, v10, v12];
  v51 = v26;
  v28 = v27;
  v30 = v29;
  v42 = v6;
  v32 = v31;
  v43 = v31;
  [(SBDeckFloatingSwitcherModifier *)self _contentSizeWithWithCardSize:v23 contentInsets:v48 switcherViewBounds:v50 numberOfItems:v26, v27, v31, v29, *&v42, *&v25, *&v10, *&v12];
  v44 = v34;
  v45 = v33;
  [(SBDeckFloatingSwitcherModifier *)self _adjustedIndexForScaleForIndex:a3 withCardSize:v48 contentOffset:v50 contentSize:v47 contentInsets:v46 switcherViewBounds:v33, v34, *&v51, *&v28, *&v32, *&v30, *&v49, *&v25, *&v10, *&v12];
  v36 = v35;
  [(SBDeckFloatingSwitcherModifier *)self _scaleForScaleAdjustedIndex:?];
  [(SBDeckFloatingSwitcherModifier *)self _frameForIndex:a3 withCardSize:v48 scale:v50 adjustedIndexForScale:v37 contentOffset:v36 contentSize:v47 contentInsets:v46 switcherViewBounds:v45, v44, *&v51, *&v28, *&v43, *&v30, *&v49, *&v25, *&v10, *&v12];
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v39 = v19;
  [(SBDeckFloatingSwitcherModifier *)self scrollViewContentOffset];
  v40 = v22;
  v41 = v21;
  v23 = [(SBDeckFloatingSwitcherModifier *)self _numberOfItems];
  v24 = v14;
  v25 = v20;
  v26 = v6;
  v27 = v8;
  [(SBDeckFloatingSwitcherModifier *)self _contentInsetsWithContainerViewBounds:v24 switcherViewBounds:v16, v18, v25, v6, v8, v10, v12];
  v38 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [(SBDeckFloatingSwitcherModifier *)self _contentSizeWithWithCardSize:v23 contentInsets:v18 switcherViewBounds:v39 numberOfItems:v28, v29, v31, v33, *&v26, *&v27, *&v10, *&v12];
  [(SBDeckFloatingSwitcherModifier *)self _adjustedIndexForScaleForIndex:a3 withCardSize:v18 contentOffset:v39 contentSize:v41 contentInsets:v40 switcherViewBounds:v35, v36, *&v38, *&v30, *&v32, *&v34, *&v26, *&v27, *&v10, *&v12];

  [(SBDeckFloatingSwitcherModifier *)self _scaleForScaleAdjustedIndex:?];
  return result;
}

- (id)visibleAppLayouts
{
  [(SBDeckFloatingSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBDeckFloatingSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = MEMORY[0x277CBEB98];
  v7 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v8 = [v7 subarrayWithRange:{v3, v5}];
  v9 = [v6 setWithArray:v8];

  return v9;
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

- (BOOL)_isIndexVisible:(unint64_t)a3
{
  [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v53 = v17;
  v20 = v19;
  [(SBDeckFloatingSwitcherModifier *)self scrollViewContentOffset];
  v57 = v21;
  v56 = v22;
  v23 = [(SBDeckFloatingSwitcherModifier *)self _numberOfItems];
  v24 = v18;
  v54 = v20;
  v25 = v6;
  [(SBDeckFloatingSwitcherModifier *)self _contentInsetsWithContainerViewBounds:v14 switcherViewBounds:v16, v24, v20, v6, v8, v10, v12];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v55 = v25;
  v32 = v20;
  v34 = v33;
  [(SBDeckFloatingSwitcherModifier *)self _contentSizeWithWithCardSize:v23 contentInsets:v53 switcherViewBounds:v32 numberOfItems:v33, v27, v28, v30, *&v25, *&v8, *&v10, *&v12];
  [(SBDeckFloatingSwitcherModifier *)self _frameWithScaleAppliedForIndex:a3 withCardSize:v53 contentOffset:v54 contentSize:v57 contentInsets:v56 switcherViewBounds:v35, v36, *&v34, *&v27, *&v29, *&v31, *&v25, *&v8, *&v10, *&v12];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(SBDeckFloatingSwitcherModifier *)self medusaSettings];
  [v45 diffuseShadowRadius];
  v47 = v46;

  v58.origin.x = v55;
  v58.size.height = v12;
  v58.origin.y = v8;
  v58.size.width = v10;
  v59 = CGRectInset(v58, v47 * -2.8, v47 * -2.8);
  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  if (!CGRectIntersectsRect(v59, v60))
  {
    return 0;
  }

  v48 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v49 = [v48 objectAtIndex:a3];

  [(SBDeckFloatingSwitcherModifier *)self opacityForLayoutRole:1 inAppLayout:v49 atIndex:a3];
  v51 = v50 > 0.01;

  return v51;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v3 = [(SBDeckFloatingSwitcherModifier *)self switcherSettings];
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
  [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];

  return CGRectGetWidth(*&v3);
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  if (!a5)
  {
    return 1.0;
  }

  [(SBDeckFloatingSwitcherModifier *)self _distanceFromPreviousCardForCardAtIndex:a5, a4];
  return fmin(fmax((v5 - *&kDeckFloatingOpacityMinimumDistanceThreshold) / *&kDeckFloatingOpacityFadeDistance, 0.0), 1.0);
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = a4;
  v6 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v7 = [v6 indexOfObject:v5];

  if (!v7)
  {
    return 0.0;
  }

  [(SBDeckFloatingSwitcherModifier *)self _distanceFromPreviousCardForCardAtIndex:v7];
  return fmin(fmax(*&kDeckFloatingMaximumDarkening * (1.0 - (v8 - *&kDeckFloatingDarkeningMinimumDistanceThreshold) / *&kDeckFloatingDarkeningFadeDistance), 0.0), 1.0);
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  if (!a3)
  {
    return 1.0;
  }

  [(SBDeckFloatingSwitcherModifier *)self _distanceFromPreviousCardForCardAtIndex:?];
  return fmin(fmax((v3 - *&kDeckFloatingTitleAndIconOpacityMinimumDistanceThreshold) / *&kDeckFloatingTitleAndIconOpacityFadeDistance, 0.0), 1.0);
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  if (!a3)
  {
    return 1.0;
  }

  [(SBDeckFloatingSwitcherModifier *)self _distanceFromPreviousCardForCardAtIndex:?];
  return fmin(fmax((v3 - *&kDeckFloatingTitleOpacityMinimumDistanceThreshold) / *&kDeckFloatingTitleOpacityFadeDistance, 0.0), 1.0);
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBDeckFloatingSwitcherModifier *)self _cardCornerRadiusInSwitcher];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (id)neighboringAppLayoutsForFocusedAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCAB58] indexSet];
    v9 = v8;
    if (v6)
    {
      [v8 addIndex:v6 - 1];
    }

    if (v6 < [v5 count] - 1)
    {
      [v9 addIndex:v6 + 1];
    }

    v10 = MEMORY[0x277CBEB98];
    v11 = [v5 objectsAtIndexes:v9];
    v7 = [v10 setWithArray:v11];
  }

  return v7;
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
  [(SBDeckFloatingSwitcherModifier *)self scrollViewContentOffset];
  v3 = [(SBDeckFloatingSwitcherModifier *)self _visibleAppLayoutRangeForContentOffset:?];
  v5 = v4;
  v6 = [(SBDeckFloatingSwitcherModifier *)self switcherSettings];
  v7 = [v6 numberOfSnapshotsToCacheInSwitcher];

  isScrollingForward = self->_isScrollingForward;

  return [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v3 numberOfSnapshotsToCache:v5 biasForward:v7, isScrollingForward];
}

- (unint64_t)transactionCompletionOptions
{
  v3 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(SBDeckFloatingSwitcherModifier *)self isReduceMotionEnabled];

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

- (unint64_t)indexToScrollToAfterRemovingIndex:(unint64_t)a3
{
  v5 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 count];

  if (v6 < 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    v10 = v6 - 1;
    v7 = a3;
    while (++v7 < v10)
    {
      if ([(SBDeckFloatingSwitcherModifier *)self _isIndexVisible:v7])
      {
        return v7;
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (![(SBDeckFloatingSwitcherModifier *)self _isIndexVisible:a3])
  {
LABEL_8:
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v8 = a3;
  while (v8-- >= 1)
  {
    if (![(SBDeckFloatingSwitcherModifier *)self _isIndexVisible:v8])
    {
      v7 = v8 + 1;
      goto LABEL_8;
    }
  }

  return 0;
}

- (id)appLayoutsToResignActive
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = MEMORY[0x277CBEB98];
  v4 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283371888];

  return v6;
}

- (id)scrollViewAttributes
{
  v3 = objc_alloc_init(SBMutableSwitcherScrollViewAttributes);
  [(SBSwitcherScrollViewAttributes *)v3 setDecelerationRate:*MEMORY[0x277D76EC0]];
  [(SBSwitcherScrollViewAttributes *)v3 setScrollViewPagingEnabled:0];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpageSpacingForPaging:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setPagingOrigin:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(SBSwitcherScrollViewAttributes *)v3 setInterpolatesDuringSwipeToKill:1];
  [(SBDeckFloatingSwitcherModifier *)self _contentSize];
  [(SBSwitcherScrollViewAttributes *)v3 setContentSize:?];
  [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds];
  [(SBSwitcherScrollViewAttributes *)v3 setFrame:?];

  return v3;
}

- (double)_cardCornerRadiusInSwitcher
{
  v2 = [(SBDeckFloatingSwitcherModifier *)self medusaSettings];
  [v2 cornerRadiusForFloatingApps];
  v4 = v3;

  return v4;
}

- (double)minimumTranslationToKillIndex:(unint64_t)a3
{
  [(SBDeckFloatingSwitcherModifier *)self frameForIndex:?];
  [(SBDeckFloatingSwitcherModifier *)self scaleForIndex:a3];
  SBTransformedRectWithScale();

  return CGRectGetMinY(*&v5);
}

- (CGSize)_contentSize
{
  [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SBDeckFloatingSwitcherModifier *)self _numberOfItems];
  [(SBDeckFloatingSwitcherModifier *)self _contentInsetsWithContainerViewBounds:v12 switcherViewBounds:v14, v16, v18, v4, v6, v8, v10];
  [(SBDeckFloatingSwitcherModifier *)self _contentSizeWithWithCardSize:v19 contentInsets:v16 switcherViewBounds:v18 numberOfItems:v20, v21, v22, v23, *&v4, *&v6, *&v8, *&v10];
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *MEMORY[0x277CBF348];
    v5 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds:a3];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v35 = *&kDeckFloatingCardSpacing;
    v24 = [(SBDeckFloatingSwitcherModifier *)self _numberOfItems];
    [(SBDeckFloatingSwitcherModifier *)self _contentInsetsWithContainerViewBounds:v17 switcherViewBounds:v19, v21, v23, v9, v11, v13, v15];
    v26 = v25;
    v28 = v27;
    [(SBDeckFloatingSwitcherModifier *)self _contentSizeWithWithCardSize:v24 contentInsets:v21 switcherViewBounds:v23 numberOfItems:v29, v25, v30, v27, *&v9, *&v11, *&v13, *&v15];
    v32 = v31 - v13;
    v33 = v35 + v21 * *&kDeckFloatingSwitcherCardScale;
    if ([(SBDeckFloatingSwitcherModifier *)self isRTLEnabled])
    {
      v34 = v33 * a3;
    }

    else
    {
      v34 = v32 - a3 * v33;
    }

    if (a3 && v28 > v26)
    {
      v34 = fmod(v26 - v28, v33) + v34;
    }

    v5 = 0.0;
    v4 = fmax(v34, 0.0);
    if (v32 <= v4)
    {
      v4 = v32;
    }
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (unint64_t)_indexForContentOffset:(CGPoint)a3
{
  x = a3.x;
  [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds:a3.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v36 = *&kDeckFloatingCardSpacing;
  v20 = [(SBDeckFloatingSwitcherModifier *)self _numberOfItems];
  [(SBDeckFloatingSwitcherModifier *)self _contentInsetsWithContainerViewBounds:v13 switcherViewBounds:v15, v17, v19, v5, v7, v9, v11];
  [(SBDeckFloatingSwitcherModifier *)self _contentSizeWithWithCardSize:v20 contentInsets:v17 switcherViewBounds:v19 numberOfItems:v21, v22, v23, v24, *&v5, *&v7, *&v9, *&v11];
  v26 = v25;
  v27 = v36 + v17 * *&kDeckFloatingSwitcherCardScale;
  v28 = [(SBDeckFloatingSwitcherModifier *)self isRTLEnabled];
  v29 = v26 - v9 - x;
  if (v28)
  {
    v29 = x;
  }

  v30 = v29 / v27;
  v31 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v32 = [v31 count] + -1.0;
  v33 = fmax(v30, 0.0);

  if (v32 <= v33)
  {
    return v32;
  }

  else
  {
    return v33;
  }
}

- (double)distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:(unint64_t)a3
{
  v5 = [(SBDeckFloatingSwitcherModifier *)self switcherSettings];
  [v5 switcherCardShadowRadius];
  v7 = v6;
  [v5 deckSwitcherPageScale];
  v9 = v7 / v8;
  [(SBDeckFloatingSwitcherModifier *)self scaleForIndex:a3];
  [(SBSwitcherModifier *)self distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:a3 numberOfRows:1 padding:0 layoutDirection:v9 * v10 * 2.8];
  v12 = v11;

  return v12;
}

- (CGSize)_contentSizeWithWithCardSize:(CGSize)a3 contentInsets:(UIEdgeInsets)a4 switcherViewBounds:(CGRect)a5 numberOfItems:(unint64_t)a6
{
  CGRectGetHeight(a5);
  [(SBDeckFloatingSwitcherModifier *)self screenScale];
  BSSizeRoundForScale();
  v8 = v7;
  v10 = v9;
  Width = CGRectGetWidth(a5);
  if (v8 >= Width)
  {
    Width = v8;
  }

  v12 = v10;
  result.height = v12;
  result.width = Width;
  return result;
}

- (UIEdgeInsets)_contentInsetsWithContainerViewBounds:(CGRect)a3 switcherViewBounds:(CGRect)a4
{
  rect = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  MinX = CGRectGetMinX(a3);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = rect;
  MaxX = CGRectGetMaxX(v22);
  v23.origin.x = v10;
  v23.origin.y = v9;
  v23.size.width = v8;
  v23.size.height = height;
  v14 = MaxX - CGRectGetMaxX(v23);
  if (MinX > width * 0.4)
  {
    MinX = width * 0.4;
  }

  if (v14 <= width * 0.4)
  {
    v15 = v14;
  }

  else
  {
    v15 = width * 0.4;
  }

  v16 = [(SBDeckFloatingSwitcherModifier *)self isRTLEnabled];
  if (v16)
  {
    v17 = MinX;
  }

  else
  {
    v17 = v15;
  }

  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = MinX;
  }

  v19 = 0.0;
  v20 = 0.0;
  result.right = v17;
  result.bottom = v20;
  result.left = v18;
  result.top = v19;
  return result;
}

- (uint64_t)_frameForIndex:(double)a3 withCardSize:(double)a4 scale:(double)a5 adjustedIndexForScale:(double)a6 contentOffset:(double)a7 contentSize:(double)a8 contentInsets:(double)a9 switcherViewBounds:(double)a10
{
  v26 = [a1 isRTLEnabled];
  v27 = a8 - a16 - a6;
  if (!v26)
  {
    v27 = a6;
  }

  v33 = v27;
  v28 = *&kDeckFloatingSwitcherCardScale;
  SBRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  v30 = a2 * ((v28 - a4) * 0.5) * a5 + v29 - v33;
  if (a11 <= a13)
  {
    v31 = a11;
  }

  else
  {
    v31 = a13;
  }

  if (v31 - a2 * (1.0 - a4) * 0.5 + *&kDeckFloatingLeadingEdgeRubberbandingRange - v30 > 0.0)
  {
    BSUIConstrainValueWithRubberBand();
  }

  return [a1 isRTLEnabled];
}

- (double)_adjustedIndexForScaleForIndex:(double)a3 withCardSize:(double)a4 contentOffset:(double)a5 contentSize:(double)a6 contentInsets:(uint64_t)a7 switcherViewBounds:(unint64_t)a8
{
  v24 = [a1 isRTLEnabled];
  if (a13 <= a15)
  {
    v25 = a13;
  }

  else
  {
    v25 = a15;
  }

  v26 = a6 - a18 - a4;
  if (!v24)
  {
    v26 = a4;
  }

  return a8 - (a6 - a18 - (a13 + a15) - (v26 - (a13 + v25))) / (*&kDeckFloatingCardSpacing + a2 * *&kDeckFloatingSwitcherCardScale);
}

- (double)_scaleForScaleAdjustedIndex:(double)a3
{
  v3 = *&kDeckFloatingPerCardAdditionalScaleCoefficient * a3;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  result = *&kDeckFloatingSwitcherCardScale * (1.0 - pow(v3, *&kDeckFloatingScaleCurveExponent));
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)_distanceFromPreviousCardForCardAtIndex:(unint64_t)a3
{
  if (!a3)
  {
    return 0.0;
  }

  [(SBDeckFloatingSwitcherModifier *)self switcherViewBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBDeckFloatingSwitcherModifier *)self containerViewBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(SBDeckFloatingSwitcherModifier *)self scrollViewContentOffset];
  v66 = v22;
  v67 = v21;
  v23 = [(SBDeckFloatingSwitcherModifier *)self _numberOfItems];
  v24 = v14;
  v25 = v16;
  v26 = v20;
  v27 = v20;
  v28 = v8;
  v69 = v10;
  v29 = v12;
  [(SBDeckFloatingSwitcherModifier *)self _contentInsetsWithContainerViewBounds:v24 switcherViewBounds:v25, v18, v26, v6, v8, v10, v12];
  v31 = v30;
  v70 = v30;
  v33 = v32;
  v35 = v34;
  v60 = v10;
  v61 = v12;
  v36 = v18;
  v65 = v18;
  v37 = v18;
  v38 = v27;
  v39 = v27;
  v40 = v33;
  v42 = v41;
  v62 = v41;
  [(SBDeckFloatingSwitcherModifier *)self _contentSizeWithWithCardSize:v23 contentInsets:v37 switcherViewBounds:v39 numberOfItems:v31, v33, v34, v41, *&v6, *&v28, *&v60, *&v61];
  v63 = v44;
  v64 = v43;
  [(SBDeckFloatingSwitcherModifier *)self _frameWithScaleAppliedForIndex:a3 withCardSize:v36 contentOffset:v38 contentSize:v67 contentInsets:v66 switcherViewBounds:v43, v44, *&v70, *&v40, *&v35, *&v42, *&v6, *&v28, *&v69, *&v29];
  v68.origin.x = v45;
  v68.origin.y = v46;
  v68.size.width = v47;
  v68.size.height = v48;
  [(SBDeckFloatingSwitcherModifier *)self _frameWithScaleAppliedForIndex:a3 - 1 withCardSize:v65 contentOffset:v38 contentSize:v67 contentInsets:v66 switcherViewBounds:v64, v63, *&v70, *&v40, *&v35, *&v62, *&v6, *&v28, *&v69, *&v29];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  if (([(SBDeckFloatingSwitcherModifier *)self isRTLEnabled]& 1) != 0)
  {
    MaxX = CGRectGetMaxX(v68);
    v71.origin.x = v50;
    v71.origin.y = v52;
    v71.size.width = v54;
    v71.size.height = v56;
    return MaxX - CGRectGetMaxX(v71);
  }

  else
  {
    v72.origin.x = v50;
    v72.origin.y = v52;
    v72.size.width = v54;
    v72.size.height = v56;
    MinX = CGRectGetMinX(v72);
    return MinX - CGRectGetMinX(v68);
  }
}

- (uint64_t)_frameWithScaleAppliedForIndex:(double)a3 withCardSize:(double)a4 contentOffset:(double)a5 contentSize:(double)a6 contentInsets:(double)a7 switcherViewBounds:(uint64_t)a8
{
  [a1 _adjustedIndexForScaleForIndex:a15 withCardSize:a16 contentOffset:a17 contentSize:a18 contentInsets:a19 switcherViewBounds:{a20, a21, a22}];
  v25 = v24;
  [a1 _scaleForScaleAdjustedIndex:?];
  [a1 _frameForIndex:a9 withCardSize:a2 scale:a3 adjustedIndexForScale:v26 contentOffset:v25 contentSize:a4 contentInsets:a5 switcherViewBounds:{a6, a7, a15, a16, a17, a18, a19, a20, a21, a22}];

  return SBTransformedRectWithScale();
}

- (unint64_t)_numberOfItems
{
  v2 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v3 = [v2 count];

  return v3;
}

- (_NSRange)_visibleAppLayoutRangeForContentOffset:(CGPoint)a3
{
  [(SBDeckFloatingSwitcherModifier *)self scrollViewContentOffset:a3.x];
  v4 = [(SBDeckFloatingSwitcherModifier *)self _indexForContentOffset:?];
  v5 = [(SBDeckFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 count];
  v7 = v4 - v6;
  if (v4 >= v6)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if ([(SBDeckFloatingSwitcherModifier *)self _isIndexVisible:v4])
    {
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v4;
      }

      v10 = v4;
    }

    else if (v8)
    {
      break;
    }

    ++v4;
    --v8;
  }

  while (v7 != v8);
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    v11 = 0;
    v12 = 0;
  }

  else
  {
    if ((v9 & 0x8000000000000000) == 0 && [(SBDeckFloatingSwitcherModifier *)self _isIndexVisible:v9])
    {
      while (v9-- >= 1)
      {
        if (![(SBDeckFloatingSwitcherModifier *)self _isIndexVisible:v9])
        {
          ++v9;
          goto LABEL_17;
        }
      }

      v9 = 0;
    }

LABEL_17:
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 - v9 + 1;
    }
  }

  v14 = v11;
  v15 = v12;
  result.length = v15;
  result.location = v14;
  return result;
}

- (void)_applyPrototypeSettings
{
  v2 = [(SBDeckFloatingSwitcherModifier *)self switcherSettings];
  v18 = [v2 floatingSwitcherSettings];

  [v18 switcherCardScale];
  kDeckFloatingSwitcherCardScale = v3;
  [v18 cardSpacing];
  kDeckFloatingCardSpacing = v4;
  [v18 dimmingAlpha];
  kDeckFloatingHomeScreenDimmingAlpha = v5;
  [v18 leadingEdgeRubberbandingRange];
  kDeckFloatingLeadingEdgeRubberbandingRange = v6;
  [v18 perCardAdditionalScaleCoefficient];
  kDeckFloatingPerCardAdditionalScaleCoefficient = v7;
  [v18 scaleCurveExponent];
  kDeckFloatingScaleCurveExponent = v8;
  [v18 opacityMinimumDistanceThreshold];
  kDeckFloatingOpacityMinimumDistanceThreshold = v9;
  [v18 opacityFadeDistance];
  kDeckFloatingOpacityFadeDistance = v10;
  [v18 darkeningMinimumDistanceThreshold];
  kDeckFloatingDarkeningMinimumDistanceThreshold = v11;
  [v18 darkeningFadeDistance];
  kDeckFloatingDarkeningFadeDistance = v12;
  [v18 maximumDarkening];
  kDeckFloatingMaximumDarkening = v13;
  [v18 titleAndIconOpacityMinimumDistanceThreshold];
  kDeckFloatingTitleAndIconOpacityMinimumDistanceThreshold = v14;
  [v18 titleAndIconOpacityFadeDistance];
  kDeckFloatingTitleAndIconOpacityFadeDistance = v15;
  [v18 titleOpacityMinimumDistanceThreshold];
  kDeckFloatingTitleOpacityMinimumDistanceThreshold = v16;
  [v18 titleOpacityFadeDistance];
  kDeckFloatingTitleOpacityFadeDistance = v17;
}

@end