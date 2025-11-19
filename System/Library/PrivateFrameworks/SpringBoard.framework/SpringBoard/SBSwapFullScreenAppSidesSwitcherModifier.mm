@interface SBSwapFullScreenAppSidesSwitcherModifier
- (SBSwapFullScreenAppSidesSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 layoutRoleToKeepOnTop:(int64_t)a6;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutRolesForAppLayout:(id)a3;
- (id)transitionWillBegin;
@end

@implementation SBSwapFullScreenAppSidesSwitcherModifier

- (SBSwapFullScreenAppSidesSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 layoutRoleToKeepOnTop:(int64_t)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromAppLayout, a4);
    objc_storeStrong(&v14->_toAppLayout, a5);
    v14->_layoutRoleToKeepOnTop = a6;
    v14->_animationPhase = 0;
  }

  return v14;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  if (!self->_animationPhase)
  {
    v4 = [(SBSwapFullScreenAppSidesSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 swapAppSidesShadowFadeOutDelay];
    v7 = v6;

    v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBSwapFullScreenAppSidesSwitcherModifierTimerEventReason" reason:v7];
    v9 = SBAppendSwitcherModifierResponse(v8, v3);

    v3 = v9;
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"SBSwapFullScreenAppSidesSwitcherModifierTimerEventReason"];
  if (v4)
  {
    self->_animationPhase = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)topMostLayoutRolesForAppLayout:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwapFullScreenAppSidesSwitcherModifier *)&v12 topMostLayoutRolesForAppLayout:v4];
  toAppLayout = self->_toAppLayout;

  if (toAppLayout == v4)
  {
    if (self->_layoutRoleToKeepOnTop == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{v7, v12.receiver, v12.super_class}];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v9 arrayByAddingObjectsFromArray:v5];

    v5 = v10;
  }

  return v5;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  result = 1.0;
  if (self->_animationPhase == 1)
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
    [(SBSwapFullScreenAppSidesSwitcherModifier *)&v7 shadowOpacityForLayoutRole:a3 atIndex:a4, 1.0];
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBSwapFullScreenAppSidesSwitcherModifier *)self displayCornerRadius];
  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBSwapFullScreenAppSidesSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 swapAppSidesLayoutAnimationSettings];
  [v5 setLayoutSettings:v8];

  v9 = [(SBSwapFullScreenAppSidesSwitcherModifier *)self switcherSettings];
  v10 = [v9 animationSettings];
  v11 = [v10 swapAppSidesOpacityAnimationSettings];
  [v5 setOpacitySettings:v11];

  [v5 setUpdateMode:3];

  return v5;
}

@end