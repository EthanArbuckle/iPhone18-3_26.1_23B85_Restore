@interface SBGridSwipeUpGestureSwitcherModifier
- (CGPoint)scrollViewContentOffset;
- (CGRect)switcherViewBounds;
- (SBGridSwipeUpGestureSwitcherModifier)initWithGestureID:(id)a3 delayCompletionUntilTransitionBegins:(BOOL)a4;
- (double)contentViewScale;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)visibleAppLayouts;
- (int64_t)finalResponseForGestureEvent:(id)a3;
- (void)_applyPrototypeSettings;
- (void)_performBlockByApplyContentViewScaleToSwitcherViewBounds:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBGridSwipeUpGestureSwitcherModifier

- (SBGridSwipeUpGestureSwitcherModifier)initWithGestureID:(id)a3 delayCompletionUntilTransitionBegins:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = SBGridSwipeUpGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v10 initWithGestureID:a3];
  v6 = v5;
  if (v5)
  {
    v5->_delayCompletionUntilTransitionBegins = a4;
    v7 = objc_alloc_init(SBDismissSiriSwitcherModifier);
    dismissSiriModifier = v6->_dismissSiriModifier;
    v6->_dismissSiriModifier = v7;

    [(SBChainableModifier *)v6 addChildModifier:v6->_dismissSiriModifier];
  }

  return v6;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBGridSwipeUpGestureSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBGridSwipeUpGestureSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (CGRect)switcherViewBounds
{
  v17.receiver = self;
  v17.super_class = SBGridSwipeUpGestureSwitcherModifier;
  [(SBGridSwipeUpGestureSwitcherModifier *)&v17 switcherViewBounds];
  v4 = v3;
  v6 = v5;
  width = v7;
  height = v9;
  if (self->_isApplyingContentViewScaleToSwitcherViewBounds)
  {
    [(SBGridSwipeUpGestureSwitcherModifier *)self contentViewScale];
    CGAffineTransformMakeScale(&v16, 1.0 / v11, 1.0 / v11);
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = width;
    v18.size.height = height;
    v19 = CGRectApplyAffineTransform(v18, &v16);
    width = v19.size.width;
    height = v19.size.height;
    v4 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  v12 = v4;
  v13 = v6;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)scrollViewContentOffset
{
  v21.receiver = self;
  v21.super_class = SBGridSwipeUpGestureSwitcherModifier;
  [(SBGridSwipeUpGestureSwitcherModifier *)&v21 scrollViewContentOffset];
  v4 = v3;
  v6 = v5;
  if (self->_isApplyingContentViewScaleToSwitcherViewBounds)
  {
    v20.receiver = self;
    v20.super_class = SBGridSwipeUpGestureSwitcherModifier;
    [(SBGridSwipeUpGestureSwitcherModifier *)&v20 switcherViewBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    UIRectGetCenter();
    [(SBGridSwipeUpGestureSwitcherModifier *)self contentViewScale];
    CGAffineTransformMakeScale(&v19, 1.0 / v15, 1.0 / v15);
    v23.origin.x = v8;
    v23.origin.y = v10;
    v23.size.width = v12;
    v23.size.height = v14;
    CGRectApplyAffineTransform(v23, &v19);
    SBUnintegralizedRectCenteredAboutPoint();
    v4 = v4 - (v8 - v16);
  }

  v17 = v4;
  v18 = v6;
  result.y = v18;
  result.x = v17;
  return result;
}

- (double)contentViewScale
{
  v4.receiver = self;
  v4.super_class = SBGridSwipeUpGestureSwitcherModifier;
  [(SBGridSwipeUpGestureSwitcherModifier *)&v4 switcherViewBounds];
  BSUIConstrainValueWithRubberBand();
  BSIntervalMap();
  return v2 * (*&kGridSwitcherSwipeUpMinimumScale + -1.0) + 1.0;
}

- (id)visibleAppLayouts
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__123;
  v9 = __Block_byref_object_dispose__123;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__SBGridSwipeUpGestureSwitcherModifier_visibleAppLayouts__block_invoke;
  v4[3] = &unk_2783A8CE0;
  v4[4] = self;
  v4[5] = &v5;
  [(SBGridSwipeUpGestureSwitcherModifier *)self _performBlockByApplyContentViewScaleToSwitcherViewBounds:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __57__SBGridSwipeUpGestureSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = SBGridSwipeUpGestureSwitcherModifier;
  v2 = objc_msgSendSuper2(&v5, sel_visibleAppLayouts);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBGridSwipeUpGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v15 handleGestureEvent:v4];
  if ([v4 phase] == 2 || objc_msgSend(v4, "phase") == 3)
  {
    [v4 translationInContainerView];
    self->_translation.x = v6;
    self->_translation.y = v7;
    if ([v4 phase] == 3)
    {
      v8 = [(SBGridSwipeUpGestureSwitcherModifier *)self finalResponseForGestureEvent:v4];
      v9 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
      v10 = v9;
      if (v8)
      {
        [(SBSwitcherTransitionRequest *)v9 setUnlockedEnvironmentMode:2];
      }

      else
      {
        v11 = +[SBAppLayout homeScreenAppLayout];
        [(SBSwitcherTransitionRequest *)v10 setAppLayout:v11];
      }

      v12 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:1];
      v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v12 toResponse:v5];

      if (![(SBGridSwipeUpGestureSwitcherModifier *)self delayCompletionUntilTransitionBegins])
      {
        [(SBChainableModifier *)self setState:1];
      }

      v5 = v13;
    }
  }

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBGridSwipeUpGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v7 handleTransitionEvent:v4];
  if (-[SBGridSwipeUpGestureSwitcherModifier delayCompletionUntilTransitionBegins](self, "delayCompletionUntilTransitionBegins") && [v4 phase] >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (int64_t)finalResponseForGestureEvent:(id)a3
{
  v4 = a3;
  [v4 velocityInContainerView];
  v6 = v5;
  y = self->_translation.y;
  [(SBGridSwipeUpGestureSwitcherModifier *)self containerViewBounds];
  v9 = v8;
  v10 = [v4 isMouseEvent];

  if (v10)
  {
    [(SBGridSwipeUpGestureSwitcherModifier *)self containerViewBounds];
    v12 = v11 * 0.125;
  }

  else
  {
    v12 = v9 * 0.25;
  }

  return -(y - v6 * -0.15) <= v12;
}

- (void)_applyPrototypeSettings
{
  v5 = [(SBGridSwipeUpGestureSwitcherModifier *)self switcherSettings];
  [v5 gridSwitcherSwipeUpNormalizedRubberbandingRange];
  kGridSwitcherSwipeUpNormalizedRubberbandingRange = v2;
  [v5 gridSwitcherSwipeUpNormalizedRubberbandedTranslationAtMinimumScale];
  kGridSwitcherSwipeUpNormalizedRubberbandedTranslationAtMinimumScale = v3;
  [v5 gridSwitcherSwipeUpMinimumScale];
  kGridSwitcherSwipeUpMinimumScale = v4;
}

- (void)_performBlockByApplyContentViewScaleToSwitcherViewBounds:(id)a3
{
  self->_isApplyingContentViewScaleToSwitcherViewBounds = 1;
  (*(a3 + 2))(a3, a2);
  self->_isApplyingContentViewScaleToSwitcherViewBounds = 0;
}

@end