@interface SBSlideFloatingAppFromBottomSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBSlideFloatingAppFromBottomSwitcherModifier)initWithTransitionID:(id)a3 fromFloatingAppLayout:(id)a4 toFloatingAppLayout:(id)a5;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBSlideFloatingAppFromBottomSwitcherModifier

- (SBSlideFloatingAppFromBottomSwitcherModifier)initWithTransitionID:(id)a3 fromFloatingAppLayout:(id)a4 toFloatingAppLayout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSlideFloatingAppFromBottomSwitcherModifier initWithTransitionID:a2 fromFloatingAppLayout:self toFloatingAppLayout:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [SBSlideFloatingAppFromBottomSwitcherModifier initWithTransitionID:a2 fromFloatingAppLayout:self toFloatingAppLayout:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:v9];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromFloatingAppLayout, a4);
    objc_storeStrong(&v14->_toFloatingAppLayout, a5);
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [v4 appendObject:self->_fromFloatingAppLayout withName:@"fromFloatingAppLayout"];
  v6 = [v4 appendObject:self->_toFloatingAppLayout withName:@"toFloatingAppLayout"];

  return v4;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  v3 = [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_toFloatingAppLayout];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v23 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self appLayouts];
  v14 = [v13 objectAtIndex:a3];

  if (v14 == self->_toFloatingAppLayout && [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    v15 = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self entityRemovalSettings];
    v16 = [v15 floatingDeclineIntentAnimationSettings];
    [v16 toBeRemovedSlideOutHeightOffsetMultiplier];
    v18 = v12 * v17;

    v8 = v8 + v18;
  }

  v19 = v6;
  v20 = v8;
  v21 = v10;
  v22 = v12;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
  if (self->_fromFloatingAppLayout == v8 || (v10 = v9, self->_toFloatingAppLayout == v8))
  {
    v10 = 1.0;
  }

  return v10;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  v6 = a4;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  fromFloatingAppLayout = self->_fromFloatingAppLayout;

  if (fromFloatingAppLayout == v6)
  {
    v10 = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self switcherSettings:v14.receiver];
    v11 = [v10 floatingSwitcherSettings];
    [v11 dimmingAlpha];
    v8 = v12;
  }

  return v8;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v10 scaleForIndex:?];
  v6 = v5;
  v7 = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a3];

  if (v8 == self->_fromFloatingAppLayout)
  {
    v6 = 0.98;
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  toFloatingAppLayout = self->_toFloatingAppLayout;

  if (toFloatingAppLayout == v4)
  {
    v7 = [v5 mutableCopy];
    v8 = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self switcherSettings];
    v9 = [v8 animationSettings];
    v10 = [v9 slideUpSettings];
    [v7 setLayoutSettings:v10];

    v5 = v7;
  }

  return v5;
}

- (void)initWithTransitionID:(uint64_t)a1 fromFloatingAppLayout:(uint64_t)a2 toFloatingAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSlideFloatingAppFromBottomSwitcherModifier.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"fromFloatingAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromFloatingAppLayout:(uint64_t)a2 toFloatingAppLayout:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSlideFloatingAppFromBottomSwitcherModifier.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"toFloatingAppLayout"}];
}

@end