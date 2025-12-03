@interface SBEntityRemovalCommitFloatingSwitcherModifier
- (BOOL)_isIndexFromAppLayout:(unint64_t)layout;
- (BOOL)_isIndexToAppLayout:(unint64_t)layout;
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBEntityRemovalCommitFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration;
- (double)_toBeRemovedFinalScale;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBEntityRemovalCommitFloatingSwitcherModifier

- (SBEntityRemovalCommitFloatingSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout floatingConfiguration:(int64_t)configuration
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  if (!layoutCopy)
  {
    [SBEntityRemovalCommitFloatingSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? floatingConfiguration:?];
  }

  v17.receiver = self;
  v17.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
  v14 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:dCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromAppLayout, layout);
    objc_storeStrong(&v15->_toAppLayout, appLayout);
    v15->_floatingConfiguration = configuration;
  }

  return v15;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBChainableModifier *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__SBEntityRemovalCommitFloatingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __87__SBEntityRemovalCommitFloatingSwitcherModifier_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
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
  v6.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:transitionWillBegin];

  return v4;
}

- (CGRect)containerViewBounds
{
  switcherInterfaceOrientation = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self switcherInterfaceOrientation];
  floatingConfiguration = self->_floatingConfiguration;

  [(SBEntityRemovalCommitFloatingSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:switcherInterfaceOrientation floatingConfiguration:floatingConfiguration];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  if ([(SBEntityRemovalCommitFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    [(SBEntityRemovalCommitFloatingSwitcherModifier *)self containerViewBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    entityRemovalSettings = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self entityRemovalSettings];
    floatingCommitIntentAnimationSettings = [entityRemovalSettings floatingCommitIntentAnimationSettings];
    [floatingCommitIntentAnimationSettings toBeRemovedSlideOutHeightOffsetMultiplier];
    v16 = v12 * v15;

    v17 = v8 - v16;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
    [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v24 frameForIndex:index];
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

- (double)scaleForIndex:(unint64_t)index
{
  if ([(SBEntityRemovalCommitFloatingSwitcherModifier *)self _isIndexFromAppLayout:?])
  {
    entityRemovalSettings = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self entityRemovalSettings];
    floatingCommitIntentAnimationSettings = [entityRemovalSettings floatingCommitIntentAnimationSettings];
    defaultAnimationSettings = [floatingCommitIntentAnimationSettings defaultAnimationSettings];
    [defaultAnimationSettings toBeRemovedFinalScale];
    v9 = v8;

    return v9;
  }

  else if ([(SBEntityRemovalCommitFloatingSwitcherModifier *)self _isIndexToAppLayout:index]&& [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v12 scaleForIndex:1, v11.receiver, v11.super_class, self, SBEntityRemovalCommitFloatingSwitcherModifier];
  }

  else
  {
    [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v11 scaleForIndex:index, self, SBEntityRemovalCommitFloatingSwitcherModifier, v12.receiver, v12.super_class];
  }

  return result;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
  visibleAppLayouts = [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v7 visibleAppLayouts];
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
  v8.receiver = self;
  v8.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  _layoutSettings = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:_layoutSettings];

  return v5;
}

- (id)_layoutSettings
{
  entityRemovalSettings = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self entityRemovalSettings];
  floatingDeclineIntentAnimationSettings = [entityRemovalSettings floatingDeclineIntentAnimationSettings];
  toBeRemovedSlideOutAnimationSettings = [floatingDeclineIntentAnimationSettings toBeRemovedSlideOutAnimationSettings];

  return toBeRemovedSlideOutAnimationSettings;
}

- (id)topMostLayoutElements
{
  v8.receiver = self;
  v8.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
  topMostLayoutElements = [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v8 topMostLayoutElements];
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
  v9 = 1.0;
  if (![(SBEntityRemovalCommitFloatingSwitcherModifier *)self _isIndexFromAppLayout:index]&& ![(SBEntityRemovalCommitFloatingSwitcherModifier *)self _isIndexToAppLayout:index])
  {
    v12.receiver = self;
    v12.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
    [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v14.receiver = self;
  v14.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
  layoutCopy = layout;
  [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  toAppLayout = self->_toAppLayout;

  if (toAppLayout == layoutCopy && [(SBTransitionSwitcherModifier *)self transitionPhase:v14.receiver]== 1)
  {
    switcherSettings = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self switcherSettings];
    floatingSwitcherSettings = [switcherSettings floatingSwitcherSettings];
    [floatingSwitcherSettings dimmingAlpha];
    v8 = v12;
  }

  return v8;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  v7 = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self _isIndexFromAppLayout:index];
  result = 1.0;
  if (!v7)
  {
    if (![(SBEntityRemovalCommitFloatingSwitcherModifier *)self _isIndexToAppLayout:index, 1.0]|| (v9 = [(SBTransitionSwitcherModifier *)self transitionPhase], result = 0.0, v9 != 1))
    {
      v10.receiver = self;
      v10.super_class = SBEntityRemovalCommitFloatingSwitcherModifier;
      [(SBEntityRemovalCommitFloatingSwitcherModifier *)&v10 shadowOpacityForLayoutRole:role atIndex:index];
    }
  }

  return result;
}

- (BOOL)_isIndexFromAppLayout:(unint64_t)layout
{
  selfCopy = self;
  appLayouts = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:layout];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_fromAppLayout];
  return selfCopy;
}

- (BOOL)_isIndexToAppLayout:(unint64_t)layout
{
  selfCopy = self;
  appLayouts = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:layout];

  LOBYTE(selfCopy) = [v6 isEqual:selfCopy->_toAppLayout];
  return selfCopy;
}

- (double)_toBeRemovedFinalScale
{
  entityRemovalSettings = [(SBEntityRemovalCommitFloatingSwitcherModifier *)self entityRemovalSettings];
  floatingCommitIntentAnimationSettings = [entityRemovalSettings floatingCommitIntentAnimationSettings];
  defaultAnimationSettings = [floatingCommitIntentAnimationSettings defaultAnimationSettings];
  [defaultAnimationSettings toBeRemovedFinalScale];
  v6 = v5;

  return v6;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:floatingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBEntityRemovalCommitFloatingSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

@end