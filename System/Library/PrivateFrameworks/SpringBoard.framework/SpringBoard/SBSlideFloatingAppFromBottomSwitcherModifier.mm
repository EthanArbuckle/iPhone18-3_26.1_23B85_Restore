@interface SBSlideFloatingAppFromBottomSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBSlideFloatingAppFromBottomSwitcherModifier)initWithTransitionID:(id)d fromFloatingAppLayout:(id)layout toFloatingAppLayout:(id)appLayout;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBSlideFloatingAppFromBottomSwitcherModifier

- (SBSlideFloatingAppFromBottomSwitcherModifier)initWithTransitionID:(id)d fromFloatingAppLayout:(id)layout toFloatingAppLayout:(id)appLayout
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v12 = appLayoutCopy;
  if (layoutCopy)
  {
    if (appLayoutCopy)
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
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:dCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromFloatingAppLayout, layout);
    objc_storeStrong(&v14->_toFloatingAppLayout, appLayout);
  }

  return v14;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
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
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  visibleAppLayouts = [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_toFloatingAppLayout];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v23.receiver = self;
  v23.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v23 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  if (v14 == self->_toFloatingAppLayout && [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    entityRemovalSettings = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self entityRemovalSettings];
    floatingDeclineIntentAnimationSettings = [entityRemovalSettings floatingDeclineIntentAnimationSettings];
    [floatingDeclineIntentAnimationSettings toBeRemovedSlideOutHeightOffsetMultiplier];
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

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
  if (self->_fromFloatingAppLayout == layoutCopy || (v10 = v9, self->_toFloatingAppLayout == layoutCopy))
  {
    v10 = 1.0;
  }

  return v10;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v14.receiver = self;
  v14.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  layoutCopy = layout;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v14 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  fromFloatingAppLayout = self->_fromFloatingAppLayout;

  if (fromFloatingAppLayout == layoutCopy)
  {
    v10 = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self switcherSettings:v14.receiver];
    floatingSwitcherSettings = [v10 floatingSwitcherSettings];
    [floatingSwitcherSettings dimmingAlpha];
    v8 = v12;
  }

  return v8;
}

- (double)scaleForIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  [(SBSlideFloatingAppFromBottomSwitcherModifier *)&v10 scaleForIndex:?];
  v6 = v5;
  appLayouts = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  if (v8 == self->_fromFloatingAppLayout)
  {
    v6 = 0.98;
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v12.receiver = self;
  v12.super_class = SBSlideFloatingAppFromBottomSwitcherModifier;
  elementCopy = element;
  v5 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:elementCopy];
  toFloatingAppLayout = self->_toFloatingAppLayout;

  if (toFloatingAppLayout == elementCopy)
  {
    v7 = [v5 mutableCopy];
    switcherSettings = [(SBSlideFloatingAppFromBottomSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    slideUpSettings = [animationSettings slideUpSettings];
    [v7 setLayoutSettings:slideUpSettings];

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