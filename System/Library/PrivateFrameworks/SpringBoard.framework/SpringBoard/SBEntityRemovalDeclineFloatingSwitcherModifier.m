@interface SBEntityRemovalDeclineFloatingSwitcherModifier
- (BOOL)_isIndexFromAppLayout:(unint64_t)a3;
- (BOOL)_isIndexToAppLayout:(unint64_t)a3;
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBEntityRemovalDeclineFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 floatingConfiguration:(int64_t)a6;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBEntityRemovalDeclineFloatingSwitcherModifier

- (SBEntityRemovalDeclineFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 floatingConfiguration:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v12)
  {
    [SBEntityRemovalDeclineFloatingSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? floatingConfiguration:?];
  }

  v17.receiver = self;
  v17.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:v11];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromAppLayout, a4);
    objc_storeStrong(&v15->_toAppLayout, a5);
    v15->_floatingConfiguration = a6;
  }

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifier *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__SBEntityRemovalDeclineFloatingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __88__SBEntityRemovalDeclineFloatingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SBStringForFloatingConfiguration(*(*(a1 + 40) + 184));
  v4 = [v2 appendObject:v3 withName:@"floatingConfiguration"];

  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 168) withName:@"fromAppLayout"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 176) withName:@"toAppLayout"];
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

  return v4;
}

- (CGRect)containerViewBounds
{
  v3 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self switcherInterfaceOrientation];
  floatingConfiguration = self->_floatingConfiguration;

  [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:v3 floatingConfiguration:floatingConfiguration];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  if ([(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self containerViewBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self entityRemovalSettings];
    v14 = [v13 floatingDeclineIntentAnimationSettings];
    [v14 toBeRemovedSlideOutHeightOffsetMultiplier];
    v16 = v12 * v15;

    v17 = v8 + v16;
  }

  else
  {
    if ([(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexToAppLayout:a3])
    {
      [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self containerViewBounds];
    }

    else
    {
      v24.receiver = self;
      v24.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
      [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v24 frameForIndex:a3];
    }

    v6 = v18;
    v10 = v19;
    v12 = v20;
  }

  v21 = v6;
  v22 = v10;
  v23 = v12;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v17;
  result.origin.x = v21;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    v5 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self entityRemovalSettings];
    v6 = [v5 floatingDeclineIntentAnimationSettings];
    v7 = [v6 defaultAnimationSettings];
    [v7 toBeRemovedFinalScale];
    v9 = v8;

    return v9;
  }

  else if ([(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexToAppLayout:a3]&& [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v12 scaleForIndex:1, v11.receiver, v11.super_class, self, SBEntityRemovalDeclineFloatingSwitcherModifier];
  }

  else
  {
    [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v11 scaleForIndex:a3, self, SBEntityRemovalDeclineFloatingSwitcherModifier, v12.receiver, v12.super_class];
  }

  return result;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
  v3 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v7 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_fromAppLayout];

  if (self->_toAppLayout)
  {
    v5 = [v4 setByAddingObject:?];

    v4 = v5;
  }

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v2 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self entityRemovalSettings];
  v3 = [v2 floatingDeclineIntentAnimationSettings];
  v4 = [v3 toBeRemovedSlideOutAnimationSettings];

  return v4;
}

- (id)topMostLayoutElements
{
  v8.receiver = self;
  v8.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
  v3 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v8 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_fromAppLayout toIndex:0];

  toAppLayout = self->_toAppLayout;
  if (toAppLayout)
  {
    v6 = [v4 sb_arrayByInsertingOrMovingObject:toAppLayout toIndex:1];

    v4 = v6;
  }

  return v4;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 1.0;
  if (![(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexFromAppLayout:a5]&& ![(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexToAppLayout:a5])
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
    [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
  v6 = a4;
  [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  toAppLayout = self->_toAppLayout;

  if (toAppLayout == v6 && [(SBTransitionSwitcherModifier *)self transitionPhase:v14.receiver]== 1)
  {
    v10 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self switcherSettings];
    v11 = [v10 floatingSwitcherSettings];
    [v11 dimmingAlpha];
    v8 = v12;
  }

  return v8;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexFromAppLayout:a4];
  result = 1.0;
  if (!v7)
  {
    if (![(SBEntityRemovalDeclineFloatingSwitcherModifier *)self _isIndexToAppLayout:a4, 1.0]|| (v9 = [(SBTransitionSwitcherModifier *)self transitionPhase], result = 0.0, v9 != 1))
    {
      v10.receiver = self;
      v10.super_class = SBEntityRemovalDeclineFloatingSwitcherModifier;
      [(SBEntityRemovalDeclineFloatingSwitcherModifier *)&v10 shadowOpacityForLayoutRole:a3 atIndex:a4];
    }
  }

  return result;
}

- (BOOL)_isIndexFromAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_fromAppLayout];
  return v4;
}

- (BOOL)_isIndexToAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBEntityRemovalDeclineFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_toAppLayout];
  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:floatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBEntityRemovalDeclineFloatingSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

@end