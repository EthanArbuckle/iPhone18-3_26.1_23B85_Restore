@interface SBEntityRemovalDeleteFloatingSwitcherModifier
- (BOOL)_isIndexFromAppLayout:(unint64_t)layout;
- (BOOL)_isIndexToAppLayout:(unint64_t)layout;
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBEntityRemovalDeleteFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)_opacitySettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBEntityRemovalDeleteFloatingSwitcherModifier

- (SBEntityRemovalDeleteFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  if (!layoutCopy)
  {
    [SBEntityRemovalDeleteFloatingSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? floatingConfiguration:?];
  }

  v17.receiver = self;
  v17.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:dCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromAppLayout, layout);
    objc_storeStrong(&v15->_toAppLayout, appLayout);
    v15->_floatingConfiguration = configuration;
    v15->_blursFromAppLayout = 1;
  }

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBChainableModifier *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBEntityRemovalDeleteFloatingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (id)transitionWillUpdate
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v7 transitionWillUpdate];
  if (self->_blursFromAppLayout)
  {
    v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:1 animationUpdateMode:3];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillUpdate];

    transitionWillUpdate = v5;
  }

  return transitionWillUpdate;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if (self->_blursFromAppLayout)
  {
    v4 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:self->_fromAppLayout shouldBlur:0 animationUpdateMode:2];
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionDidEnd];

    transitionDidEnd = v5;
  }

  return transitionDidEnd;
}

- (CGRect)containerViewBounds
{
  switcherInterfaceOrientation = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self switcherInterfaceOrientation];
  floatingConfiguration = self->_floatingConfiguration;

  [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:switcherInterfaceOrientation floatingConfiguration:floatingConfiguration];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  if ([(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
    [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v9 frameForIndex:index];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  if (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    if ([(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexToAppLayout:index]&& [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
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
      [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v11 scaleForIndex:index, self, SBEntityRemovalDeleteFloatingSwitcherModifier, v12.receiver, v12.super_class];
    }

    return v9;
  }

  v5 = 1.0;
  if (!SBReduceMotion())
  {
    entityRemovalSettings = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
    floatingDeleteIntentAnimationSettings = [entityRemovalSettings floatingDeleteIntentAnimationSettings];
    [floatingDeleteIntentAnimationSettings toBeRemovedFinalScale];
    v5 = v8;
  }

  return v5;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  visibleAppLayouts = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v7 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_fromAppLayout];

  if (self->_toAppLayout)
  {
    v5 = [v4 setByAddingObject:?];

    v4 = v5;
  }

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  _opacitySettings = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _opacitySettings];
  [v5 setOpacitySettings:_opacitySettings];

  return v5;
}

- (id)_layoutSettings
{
  entityRemovalSettings = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
  floatingDeleteIntentAnimationSettings = [entityRemovalSettings floatingDeleteIntentAnimationSettings];
  toBeRemovedScaleAnimationSettings = [floatingDeleteIntentAnimationSettings toBeRemovedScaleAnimationSettings];

  return toBeRemovedScaleAnimationSettings;
}

- (id)_opacitySettings
{
  entityRemovalSettings = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
  floatingDeleteIntentAnimationSettings = [entityRemovalSettings floatingDeleteIntentAnimationSettings];
  toBeRemovedAlphaAnimationSettings = [floatingDeleteIntentAnimationSettings toBeRemovedAlphaAnimationSettings];

  return toBeRemovedAlphaAnimationSettings;
}

- (id)topMostLayoutElements
{
  v8.receiver = self;
  v8.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  topMostLayoutElements = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v8 topMostLayoutElements];
  v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_fromAppLayout toIndex:0];

  toAppLayout = self->_toAppLayout;
  if (toAppLayout)
  {
    v6 = [v4 sb_arrayByInsertingOrMovingObject:toAppLayout toIndex:1];

    v4 = v6;
  }

  return v4;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if ([(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:index])
  {
    entityRemovalSettings = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self entityRemovalSettings];
    floatingDeleteIntentAnimationSettings = [entityRemovalSettings floatingDeleteIntentAnimationSettings];
    [floatingDeleteIntentAnimationSettings toBeRemovedFinalAlpha];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
    if (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexToAppLayout:index])
    {
      v15.receiver = self;
      v15.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
      [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v15 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
      v12 = v13;
    }
  }

  return v12;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v14.receiver = self;
  v14.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
  layoutCopy = layout;
  [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  toAppLayout = self->_toAppLayout;

  if (toAppLayout == layoutCopy && [(SBTransitionSwitcherModifier *)self transitionPhase:v14.receiver]== 1)
  {
    switcherSettings = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self switcherSettings];
    floatingSwitcherSettings = [switcherSettings floatingSwitcherSettings];
    [floatingSwitcherSettings dimmingAlpha];
    v8 = v12;
  }

  return v8;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  v7 = 0.0;
  if (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexFromAppLayout:index]&& (![(SBEntityRemovalDeleteFloatingSwitcherModifier *)self _isIndexToAppLayout:index]|| [(SBTransitionSwitcherModifier *)self transitionPhase]!= 1))
  {
    v10.receiver = self;
    v10.super_class = SBEntityRemovalDeleteFloatingSwitcherModifier;
    [(SBEntityRemovalDeleteFloatingSwitcherModifier *)&v10 shadowOpacityForLayoutRole:role atIndex:index];
    return v8;
  }

  return v7;
}

- (BOOL)_isIndexFromAppLayout:(unint64_t)layout
{
  selfCopy = self;
  appLayouts = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:layout];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_fromAppLayout];
  return selfCopy;
}

- (BOOL)_isIndexToAppLayout:(unint64_t)layout
{
  selfCopy = self;
  appLayouts = [(SBEntityRemovalDeleteFloatingSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:layout];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_toAppLayout];
  return selfCopy;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:floatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBEntityRemovalDeleteFloatingSwitcherModifier.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

@end