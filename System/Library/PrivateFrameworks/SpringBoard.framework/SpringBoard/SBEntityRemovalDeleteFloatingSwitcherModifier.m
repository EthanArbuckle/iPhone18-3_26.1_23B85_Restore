@interface SBEntityRemovalDeleteFloatingSwitcherModifier
- (BOOL)_isIndexFromAppLayout:(unint64_t)a3;
- (BOOL)_isIndexToAppLayout:(unint64_t)a3;
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBEntityRemovalDeleteFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 floatingConfiguration:(int64_t)a6;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)_layoutSettings;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBEntityRemovalDeleteFloatingSwitcherModifier

- (SBEntityRemovalDeleteFloatingSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 floatingConfiguration:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v12)
  {
    [SBEntityRemovalDeleteFloatingSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? floatingConfiguration:?];
  }

  v17.receiver = self;
  v17.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:v11];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromAppLayout, a4);
    objc_storeStrong(&v15->_toAppLayout, a5);
    v15->_floatingConfiguration = a6;
    v15->_blursFromAppLayout = 1;
  }

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifier *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBEntityRemovalDeleteFloatingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __87__SBEntityRemovalDeleteFloatingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
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
  v6.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

  return v4;
}

- (id)transitionWillUpdate
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  if (self->_blursFromAppLayout)
  {
    v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:1 animationUpdateMode:3];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    v3 = v5;
  }

  return v3;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if (self->_blursFromAppLayout)
  {
    v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:0 animationUpdateMode:2];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

    v3 = v5;
  }

  return v3;
}

- (CGRect)containerViewBounds
{
  v3 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self switcherInterfaceOrientation];
  floatingConfiguration = self->_floatingConfiguration;

  [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:v3 floatingConfiguration:floatingConfiguration];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  if ([(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
    [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v9 frameForIndex:a3];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    if ([(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexToAppLayout:a3]&& [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
    {
      v5 = 1.0;
      if (SBReduceMotion())
      {
        return v5;
      }

      [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v12 scaleForIndex:1, v11.receiver, v11.super_class, self, SBEntityRemovalDeleteFloatingSwitcherModifier];
    }

    else
    {
      [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v11 scaleForIndex:a3, self, SBEntityRemovalDeleteFloatingSwitcherModifier, v12.receiver, v12.super_class];
    }

    return v9;
  }

  v5 = 1.0;
  if (!SBReduceMotion())
  {
    v6 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
    v7 = [v6 floatingDeleteIntentAnimationSettings];
    [v7 toBeRemovedFinalScale];
    v5 = v8;
  }

  return v5;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v3 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v7 visibleAppLayouts];
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
  v9.receiver = self;
  v9.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  v7 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:v7];

  return v5;
}

- (id)_layoutSettings
{
  v2 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
  v3 = [v2 floatingDeleteIntentAnimationSettings];
  v4 = [v3 toBeRemovedScaleAnimationSettings];

  return v4;
}

- (id)_opacitySettings
{
  v2 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
  v3 = [v2 floatingDeleteIntentAnimationSettings];
  v4 = [v3 toBeRemovedAlphaAnimationSettings];

  return v4;
}

- (id)topMostLayoutElements
{
  v8.receiver = self;
  v8.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v3 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v8 topMostLayoutElements];
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
  if ([(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:a5])
  {
    v9 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
    v10 = [v9 floatingDeleteIntentAnimationSettings];
    [v10 toBeRemovedFinalAlpha];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
    if (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexToAppLayout:a5])
    {
      v15.receiver = self;
      v15.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
      [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v15 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
      v12 = v13;
    }
  }

  return v12;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v6 = a4;
  [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  toAppLayout = self->_toAppLayout;

  if (toAppLayout == v6 && [(SBTransitionSwitcherModifier *)self transitionPhase:v14.receiver]== 1)
  {
    v10 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self switcherSettings];
    v11 = [v10 floatingSwitcherSettings];
    [v11 dimmingAlpha];
    v8 = v12;
  }

  return v8;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = 0.0;
  if (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:a4]&& (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexToAppLayout:a4]|| [(SBTransitionSwitcherModifier *)self transitionPhase]!= 1))
  {
    v10.receiver = self;
    v10.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
    [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v10 shadowOpacityForLayoutRole:a3 atIndex:a4];
    return v8;
  }

  return v7;
}

- (BOOL)_isIndexFromAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_fromAppLayout];
  return v4;
}

- (BOOL)_isIndexToAppLayout:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_toAppLayout];
  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:floatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBEntityRemovalDeleteFloatingSwitcherModifier.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

@end