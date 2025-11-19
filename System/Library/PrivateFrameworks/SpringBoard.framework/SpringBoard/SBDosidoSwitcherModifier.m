@interface SBDosidoSwitcherModifier
- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3;
- (SBDosidoSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 direction:(unint64_t)a6;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)_layoutSettings;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSwipeToKillEvent:(id)a3;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBDosidoSwitcherModifier

- (SBDosidoSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 direction:(unint64_t)a6
{
  v12 = a4;
  v13 = a5;
  v16.receiver = self;
  v16.super_class = SBDosidoSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  if (v14)
  {
    if (v12)
    {
      if (v13)
      {
LABEL_4:
        objc_storeStrong(&v14->_fromAppLayout, a4);
        objc_storeStrong(&v14->_toAppLayout, a5);
        v14->_direction = a6;
        goto LABEL_5;
      }
    }

    else
    {
      [SBDosidoSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? direction:?];
      if (v13)
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

- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3
{
  v5 = [(SBDosidoSwitcherModifier *)self switcherSettings];
  v6 = [v5 animationSettings];
  [v6 disableAsyncRenderingTransitionPercentage];
  v8 = v7;

  v9 = [(SBDosidoSwitcherModifier *)self _layoutSettings];
  [v9 settlingDuration];
  v11 = v8 * v10;
  UIAnimationDragCoefficient();
  *a3 = v11 * v12;

  return 1;
}

- (id)transitionWillBegin
{
  v8.receiver = self;
  v8.super_class = SBDosidoSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v8 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

  v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v6 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v5 toResponse:v4];

  return v6;
}

- (id)transitionWillUpdate
{
  v7.receiver = self;
  v7.super_class = SBDosidoSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  if (([(SBDosidoSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0 && ![(SBDosidoSwitcherModifier *)self shouldSuppressScaleAnimation])
  {
    v4 = [[SBDosidoScaleAnimationSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    v3 = v5;
  }

  return v3;
}

- (id)handleSwipeToKillEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBDosidoSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v10 handleSwipeToKillEvent:v4];
  v6 = [v4 appLayout];
  if ([(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:v6]|| [(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v6])
  {
    [v4 progress];
    if ((BSFloatIsZero() & 1) == 0)
    {
      v7 = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
      v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

      v5 = v8;
    }
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v13 adjustedAppLayoutsForAppLayouts:a3];
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
  v3 = [(SBDosidoSwitcherModifier *)self appLayouts];
  v4 = [v3 indexOfObject:self->_fromAppLayout];
  v5 = [v3 indexOfObject:self->_toAppLayout];
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
  v9 = [(SBDosidoSwitcherModifier *)self appLayouts];
  v10 = [v9 subarrayWithRange:{v6, v7 - v6 + 1}];
  v11 = [v8 setWithArray:v10];

  return v11;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBDosidoSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBDosidoSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v2 = [(SBDosidoSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 dosidoSettings];

  return v4;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [(SBDosidoSwitcherModifier *)self visibleAppLayouts];
  v10 = 1.0;
  if (([v9 containsObject:v8] & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = SBDosidoSwitcherModifier;
    [(SBDosidoSwitcherModifier *)&v13 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v10 = v11;
  }

  return v10;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
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