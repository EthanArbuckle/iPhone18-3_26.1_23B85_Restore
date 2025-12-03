@interface SBDeckToFullScreenSwitcherModifier
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (SBDeckToFullScreenSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction fullScreenAppLayout:(id)layout deckModifier:(id)modifier;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (id)_appLayoutToScrollToDuringTransition;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutToScrollToBeforeTransitioning;
- (id)appLayoutsToCacheSnapshots;
- (id)handleTransitionEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBDeckToFullScreenSwitcherModifier

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBDeckToFullScreenSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  _appLayoutToScrollToDuringTransition = [(SBDeckToFullScreenSwitcherModifier *)self _appLayoutToScrollToDuringTransition];
  if (_appLayoutToScrollToDuringTransition)
  {
    v5 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:_appLayoutToScrollToDuringTransition alignment:0 animated:0];
    v6 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:transitionWillBegin];

    transitionWillBegin = v6;
  }

  if (self->_direction == 1 && [(SBAppLayout *)self->_fullScreenAppLayout type]== 2)
  {
    v7 = 30;
  }

  else
  {
    v7 = 2;
  }

  v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:v7 updateMode:2];
  v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:transitionWillBegin];

  return v9;
}

- (id)_appLayoutToScrollToDuringTransition
{
  if (self->_direction == 1)
  {
    appLayouts = [(SBDeckToFullScreenSwitcherModifier *)self appLayouts];
    v4 = [appLayouts indexOfObject:self->_fullScreenAppLayout];
    v5 = [appLayouts count];
    if (v5 - 1 >= (v4 + 1))
    {
      v6 = v4 + 1;
    }

    else
    {
      v6 = v5 - 1;
    }

    v7 = [appLayouts objectAtIndex:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)topMostLayoutElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__140;
  v10 = __Block_byref_object_dispose__140;
  v11 = 0;
  deckModifier = self->_deckModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SBDeckToFullScreenSwitcherModifier_topMostLayoutElements__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:deckModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__SBDeckToFullScreenSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) topMostLayoutElements];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)appLayoutsToCacheSnapshots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__140;
  v10 = __Block_byref_object_dispose__140;
  v11 = 0;
  deckModifier = self->_deckModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SBDeckToFullScreenSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:deckModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __64__SBDeckToFullScreenSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) appLayoutsToCacheSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)visibleAppLayouts
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__140;
  v14 = __Block_byref_object_dispose__140;
  v15 = 0;
  deckModifier = self->_deckModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SBDeckToFullScreenSwitcherModifier_visibleAppLayouts__block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:deckModifier usingBlock:v9];
  v4 = v11[5];
  v8.receiver = self;
  v8.super_class = SBDeckToFullScreenSwitcherModifier;
  visibleAppLayouts = [(SBDeckToFullScreenSwitcherModifier *)&v8 visibleAppLayouts];
  v6 = [v4 setByAddingObjectsFromSet:visibleAppLayouts];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __55__SBDeckToFullScreenSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBDeckToFullScreenSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (self->_direction == 1)
  {
    [animationSettings toggleAppSwitcherSettings];
  }

  else
  {
    [animationSettings launchAppFromSwitcherSettings];
  }
  v5 = ;

  return v5;
}

- (id)appLayoutToScrollToBeforeTransitioning
{
  if (self->_direction)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_fullScreenAppLayout;
  }

  return v3;
}

- (SBDeckToFullScreenSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction fullScreenAppLayout:(id)layout deckModifier:(id)modifier
{
  layoutCopy = layout;
  modifierCopy = modifier;
  v16.receiver = self;
  v16.super_class = SBDeckToFullScreenSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:d];
  v14 = v13;
  if (v13)
  {
    v13->_direction = direction;
    objc_storeStrong(&v13->_fullScreenAppLayout, layout);
    objc_storeStrong(&v14->_deckModifier, modifier);
    v14->_wantsMinificationFilter = 0;
  }

  return v14;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  direction = self->_direction;
  if (!direction)
  {
    switcherSettings = [(SBDeckToFullScreenSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings disableAsyncRenderingTransitionPercentage];
    v9 = v8;

    _layoutSettings = [(SBDeckToFullScreenSwitcherModifier *)self _layoutSettings];
    [_layoutSettings settlingDuration];
    v12 = v9 * v11;
    UIAnimationDragCoefficient();
    *delay = v12 * v13;
  }

  return direction == 0;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  transitionID = [eventCopy transitionID];
  transitionID2 = [(SBTransitionSwitcherModifier *)self transitionID];
  v7 = [transitionID isEqual:transitionID2];

  if (v7)
  {
    fromAppLayout = [eventCopy fromAppLayout];
    toAppLayout = [eventCopy toAppLayout];
    self->_wantsMinificationFilter = [fromAppLayout isEqual:toAppLayout];
  }

  v12.receiver = self;
  v12.super_class = SBDeckToFullScreenSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v12 handleTransitionEvent:eventCopy];

  return v10;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBDeckToFullScreenSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBDeckToFullScreenSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  return v5;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  if (self->_direction)
  {
    v7.receiver = self;
    v7.super_class = SBDeckToFullScreenSwitcherModifier;
    [(SBDeckToFullScreenSwitcherModifier *)&v7 cornerRadiiForIndex:index];
  }

  else
  {
    [(SBDeckToFullScreenSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = SBDeckToFullScreenSwitcherModifier;
  return ([(SBTransitionSwitcherModifier *)&v4 asyncRenderingAttributesForAppLayout:layout]| (self->_wantsMinificationFilter << 8));
}

@end