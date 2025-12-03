@interface SBDosidoSwitcherModifier
- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay;
- (SBDosidoSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout direction:(unint64_t)direction;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSwipeToKillEvent:(id)event;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBDosidoSwitcherModifier

- (SBDosidoSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout direction:(unint64_t)direction
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v16.receiver = self;
  v16.super_class = SBDosidoSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:d];
  if (v14)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v14->_fromAppLayout, layout);
        objc_storeStrong(&v14->_toAppLayout, appLayout);
        v14->_direction = direction;
        goto LABEL_5;
      }
    }

    else
    {
      [SBDosidoSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? direction:?];
      if (appLayoutCopy)
      {
        goto LABEL_4;
      }
    }

    [SBDosidoSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? direction:?];
    goto LABEL_4;
  }

LABEL_5:

  return v14;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)delay
{
  switcherSettings = [(SBDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  _layoutSettings = [(SBDosidoSwitcherModifier *)self _layoutSettings];
  [_layoutSettings settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *delay = v11 * v12;

  return 1;
}

- (id)transitionWillBegin
{
  v8.receiver = self;
  v8.super_class = SBDosidoSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v8 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v6 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v4];

  return v6;
}

- (id)transitionWillUpdate
{
  v7.receiver = self;
  v7.super_class = SBDosidoSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  if (([(SBDosidoSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0 && ![(SBDosidoSwitcherModifier *)self shouldSuppressScaleAnimation])
  {
    v4 = [[SBDosidoScaleAnimationSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillUpdate];

    transitionWillUpdate = v5;
  }

  return transitionWillUpdate;
}

- (id)handleSwipeToKillEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = SBDosidoSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v10 handleSwipeToKillEvent:eventCopy];
  appLayout = [eventCopy appLayout];
  if ([(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:appLayout]|| [(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:appLayout])
  {
    [eventCopy progress];
    if ((BSFloatIsZero() & 1) == 0)
    {
      interruptAndEndTransition = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
      v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:interruptAndEndTransition toResponse:v5];

      v5 = v8;
    }
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v13.receiver = self;
  v13.super_class = SBDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v13 adjustedAppLayoutsForAppLayouts:layouts];
  v5 = [v4 indexOfObject:self->_fromAppLayout];
  v6 = [v4 indexOfObject:self->_toAppLayout];
  v7 = v6;
  direction = self->_direction;
  if (direction)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 > v5;
  }

  if (v9 || (direction == 1 ? (v10 = v6 >= v5) : (v10 = 1), !v10))
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v4];
    [v11 replaceObjectAtIndex:v5 withObject:self->_toAppLayout];
    [v11 replaceObjectAtIndex:v7 withObject:self->_fromAppLayout];

    v4 = v11;
  }

  return v4;
}

- (id)visibleAppLayouts
{
  appLayouts = [(SBDosidoSwitcherModifier *)self appLayouts];
  v4 = [appLayouts indexOfObject:self->_fromAppLayout];
  v5 = [appLayouts indexOfObject:self->_toAppLayout];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v4 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = MEMORY[0x277CBEB98];
  appLayouts2 = [(SBDosidoSwitcherModifier *)self appLayouts];
  v10 = [appLayouts2 subarrayWithRange:{v6, v7 - v6 + 1}];
  v11 = [v8 setWithArray:v10];

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SBDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBDosidoSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  return v5;
}

- (id)_layoutSettings
{
  switcherSettings = [(SBDosidoSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  dosidoSettings = [animationSettings dosidoSettings];

  return dosidoSettings;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  visibleAppLayouts = [(SBDosidoSwitcherModifier *)self visibleAppLayouts];
  v10 = 1.0;
  if (([visibleAppLayouts containsObject:layoutCopy] & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = SBDosidoSwitcherModifier;
    [(SBDosidoSwitcherModifier *)&v13 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v10 = v11;
  }

  return v10;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBDosidoSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:direction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDosidoSwitcherModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:direction:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDosidoSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end