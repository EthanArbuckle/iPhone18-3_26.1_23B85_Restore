@interface SBShelfZoomTransitionModifier
- (BOOL)_isEffectivelyInShelf;
- (BOOL)_shouldDimLayoutRole:(int64_t)role inAppLayout:(id)layout forZoomDirection:(unint64_t)direction;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)_frameForCenterWindowInShelf;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBShelfZoomTransitionModifier)initWithTransitionID:(id)d direction:(unint64_t)direction fromAppLayout:(id)layout toAppLayout:(id)appLayout shelf:(id)shelf;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (double)titleOpacityForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)handleGestureEvent:(id)event;
- (id)hiddenAppLayoutsInShelf:(id)shelf;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)headerStyleForIndex:(unint64_t)index;
- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
@end

@implementation SBShelfZoomTransitionModifier

- (SBShelfZoomTransitionModifier)initWithTransitionID:(id)d direction:(unint64_t)direction fromAppLayout:(id)layout toAppLayout:(id)appLayout shelf:(id)shelf
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  shelfCopy = shelf;
  v40.receiver = self;
  v40.super_class = SBShelfZoomTransitionModifier;
  v16 = [(SBTransitionSwitcherModifier *)&v40 initWithTransitionID:d];
  v17 = v16;
  if (v16)
  {
    v16->_direction = direction;
    objc_storeStrong(&v16->_fromAppLayout, layout);
    objc_storeStrong(&v17->_toAppLayout, appLayout);
    objc_storeStrong(&v17->_shelf, shelf);
    if (v17->_direction)
    {
      v18 = [(SBAppLayout *)v17->_toAppLayout leafAppLayoutForRole:4];
      centerWindowAppLayout = v17->_centerWindowAppLayout;
      v17->_centerWindowAppLayout = v18;

      toAppLayout = v17->_toAppLayout;
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __96__SBShelfZoomTransitionModifier_initWithTransitionID_direction_fromAppLayout_toAppLayout_shelf___block_invoke_2;
      v36 = &unk_2783A8C90;
      v21 = &v37;
      v22 = v17;
      v37 = v22;
      v23 = [(SBAppLayout *)toAppLayout appLayoutWithItemsPassingTest:&v33];
      fullScreenSpaceAppLayout = v22->_fullScreenSpaceAppLayout;
      v22->_fullScreenSpaceAppLayout = v23;

      v25 = [(SBAppLayout *)v17->_fromAppLayout leafAppLayoutForRole:4, v33, v34, v35, v36];
      v26 = &OBJC_IVAR___SBShelfZoomTransitionModifier__centerWindowBeingReplacedAppLayout;
    }

    else
    {
      v27 = [(SBAppLayout *)v17->_fromAppLayout leafAppLayoutForRole:4];
      v28 = v17->_centerWindowAppLayout;
      v17->_centerWindowAppLayout = v27;

      fromAppLayout = v17->_fromAppLayout;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __96__SBShelfZoomTransitionModifier_initWithTransitionID_direction_fromAppLayout_toAppLayout_shelf___block_invoke;
      v38[3] = &unk_2783A8C90;
      v21 = &v39;
      v39 = v17;
      v25 = [(SBAppLayout *)fromAppLayout appLayoutWithItemsPassingTest:v38];
      v26 = &OBJC_IVAR___SBShelfZoomTransitionModifier__fullScreenSpaceAppLayout;
    }

    v30 = *v26;
    v31 = *(&v17->super.super.super.super.super.isa + v30);
    *(&v17->super.super.super.super.super.isa + v30) = v25;
  }

  return v17;
}

uint64_t __96__SBShelfZoomTransitionModifier_initWithTransitionID_direction_fromAppLayout_toAppLayout_shelf___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

uint64_t __96__SBShelfZoomTransitionModifier_initWithTransitionID_direction_fromAppLayout_toAppLayout_shelf___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBChainableModifier *)self succinctDescriptionBuilder];
  v5 = succinctDescriptionBuilder;
  if (self->_direction)
  {
    v6 = @"ToSpace";
  }

  else
  {
    v6 = @"ToShelf";
  }

  v7 = [succinctDescriptionBuilder appendObject:v6 withName:@"direction"];
  v8 = [v5 appendObject:self->_fromAppLayout withName:@"fromAppLayout"];
  v9 = [v5 appendObject:self->_toAppLayout withName:@"toAppLayout"];
  v10 = [v5 appendObject:self->_shelf withName:@"shelf"];
  v11 = [v5 appendObject:self->_centerWindowAppLayout withName:@"centerWindowAppLayout"];
  v12 = [v5 appendObject:self->_fullScreenSpaceAppLayout withName:@"fullScreenSpaceAppLayout"];
  v13 = [v5 appendObject:self->_centerWindowBeingReplacedAppLayout withName:@"centerWindowBeingReplacedAppLayout"];

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 handleGestureEvent:event];
  interruptAndEndTransition = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
  v6 = SBAppendSwitcherModifierResponse(v4, interruptAndEndTransition);

  return v6;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  direction = self->_direction;
  v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v6 = SBAppendSwitcherModifierResponse(v5, transitionWillBegin);

  v7 = [SBUpdateLayoutSwitcherEventResponse alloc];
  if (direction == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = [(SBUpdateLayoutSwitcherEventResponse *)v7 initWithOptions:10 updateMode:v8];
  v10 = SBAppendSwitcherModifierResponse(v9, v6);

  return v10;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBShelfZoomTransitionModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if (self->_direction == 1)
  {
    v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = SBAppendSwitcherModifierResponse(v4, transitionDidEnd);

    transitionDidEnd = v5;
  }

  return transitionDidEnd;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBShelfZoomTransitionModifier *)&v12 appLayoutsToEnsureExistForMainTransitionEvent:event];
  v5 = v4;
  v6 = MEMORY[0x277CBEBF8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v7 sb_arrayByInsertingOrMovingObject:self->_centerWindowAppLayout toIndex:0];

  centerWindowBeingReplacedAppLayout = self->_centerWindowBeingReplacedAppLayout;
  if (centerWindowBeingReplacedAppLayout)
  {
    v10 = [v8 sb_arrayByInsertingOrMovingObject:centerWindowBeingReplacedAppLayout toIndex:1];

    v8 = v10;
  }

  return v8;
}

- (id)visibleAppLayouts
{
  v8.receiver = self;
  v8.super_class = SBShelfZoomTransitionModifier;
  visibleAppLayouts = [(SBShelfZoomTransitionModifier *)&v8 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  [v4 addObject:self->_centerWindowAppLayout];
  if (self->_fullScreenSpaceAppLayout)
  {
    [v4 addObject:?];
  }

  direction = self->_direction;
  if (!direction)
  {
    [v4 removeObject:self->_fromAppLayout];
    direction = self->_direction;
  }

  if (direction == 1)
  {
    [v4 removeObject:self->_toAppLayout];
    if (self->_centerWindowBeingReplacedAppLayout)
    {
      [v4 addObject:?];
    }
  }

  v6 = [v4 copy];

  return v6;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_centerWindowAppLayout && [(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf])
  {
    [(SBShelfZoomTransitionModifier *)self _frameForCenterWindowInShelf];
  }

  else if (v6 == self->_centerWindowBeingReplacedAppLayout)
  {
    fromAppLayout = self->_fromAppLayout;
    [(SBShelfZoomTransitionModifier *)self containerViewBounds];
    [(SBShelfZoomTransitionModifier *)self preferredFrameForLayoutRole:4 inAppLayout:fromAppLayout bounds:[(SBShelfZoomTransitionModifier *)self switcherInterfaceOrientation] interfaceOrientation:v12, v13, v14, v15];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v24 frameForIndex:index];
  }

  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_frameForCenterWindowInShelf
{
  [(SBShelfZoomTransitionModifier *)self shelfItemFrameForAppLayout:self->_centerWindowAppLayout inShelf:self->_shelf];
  UIRectGetCenter();
  [(SBShelfZoomTransitionModifier *)self centerWindowFrameInInterfaceOrientation:[(SBShelfZoomTransitionModifier *)self switcherInterfaceOrientation] centerConfiguration:1];
  SBRectWithSize();

  UIRectCenteredAboutPoint();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_centerWindowAppLayout && [(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf])
  {
    [(SBShelfZoomTransitionModifier *)self shelfItemScaleForAppLayout:self->_centerWindowAppLayout inShelf:self->_shelf];
    v8 = v7;
    [(SBShelfZoomTransitionModifier *)self shelfItemFrameForAppLayout:self->_centerWindowAppLayout inShelf:self->_shelf];
    v10 = v9;
    [(SBShelfZoomTransitionModifier *)self centerWindowFrameInInterfaceOrientation:[(SBShelfZoomTransitionModifier *)self switcherInterfaceOrientation] centerConfiguration:1];
    SBRectWithSize();
    v12 = v8 * (v10 / v11);
  }

  else if (v6 == self->_centerWindowBeingReplacedAppLayout)
  {
    medusaSettings = [(SBShelfZoomTransitionModifier *)self medusaSettings];
    [medusaSettings switcherCenterWindowContentPushInScale];
    v12 = v15;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v17 scaleForIndex:index];
    v12 = v13;
  }

  return v12;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  if (self->_fullScreenSpaceAppLayout == layout)
  {
    [(SBShelfZoomTransitionModifier *)&v6 scaleForLayoutRole:role inAppLayout:self->_toAppLayout, v5.receiver, v5.super_class, self, SBShelfZoomTransitionModifier];
  }

  else
  {
    [(SBShelfZoomTransitionModifier *)&v5 scaleForLayoutRole:role inAppLayout:layout, self, SBShelfZoomTransitionModifier, v6.receiver, v6.super_class];
  }

  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale
{
  layoutCopy = layout;
  if (self->_centerWindowAppLayout == layoutCopy && [(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf])
  {
    appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
    v8 = [appLayouts indexOfObject:layoutCopy];

    [(SBShelfZoomTransitionModifier *)self scaleForIndex:v8];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v12 contentPageViewScaleForAppLayout:layoutCopy withScale:scale];
  }

  v10 = v9;

  return v10;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  if (self->_centerWindowAppLayout == layout)
  {
    if ([(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf])
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBShelfZoomTransitionModifier;
    return [(SBShelfZoomTransitionModifier *)&v5 shadowStyleForLayoutRole:role inAppLayout:?];
  }
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_centerWindowAppLayout && [(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf])
  {
    [(SBShelfZoomTransitionModifier *)self shelfItemCornerRadiusForAppLayout:self->_centerWindowAppLayout inShelf:self->_shelf];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v19 cornerRadiiForIndex:index];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = layoutCopy;
  v10 = 1.0;
  if (self->_centerWindowAppLayout != layoutCopy && self->_fullScreenSpaceAppLayout != layoutCopy && (self->_centerWindowBeingReplacedAppLayout != layoutCopy || role != 4))
  {
    v14.receiver = self;
    v14.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v14 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v10 = v12;
  }

  return v10;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  if (v8 == self->_centerWindowAppLayout)
  {
    v10 = 1.0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v12 shadowOpacityForLayoutRole:role atIndex:index];
    v10 = v9;
  }

  return v10;
}

- (id)hiddenAppLayoutsInShelf:(id)shelf
{
  v7.receiver = self;
  v7.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBShelfZoomTransitionModifier *)&v7 hiddenAppLayoutsInShelf:shelf];
  v5 = [v4 setByAddingObject:self->_centerWindowAppLayout];

  return v5;
}

- (double)titleOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 != self->_centerWindowAppLayout || (v7 = 1.0, ![(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf]))
  {
    v10.receiver = self;
    v10.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v10 titleOpacityForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 != self->_centerWindowAppLayout || (v7 = 1.0, ![(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf]))
  {
    v10.receiver = self;
    v10.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v10 titleAndIconOpacityForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (int64_t)headerStyleForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_centerWindowAppLayout)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBShelfZoomTransitionModifier;
    v7 = [(SBShelfZoomTransitionModifier *)&v9 headerStyleForIndex:index];
  }

  return v7;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  [(SBShelfZoomTransitionModifier *)&v12 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  if ([(SBShelfZoomTransitionModifier *)self _shouldDimLayoutRole:role inAppLayout:layoutCopy forZoomDirection:self->_direction]|| self->_centerWindowBeingReplacedAppLayout == layoutCopy)
  {
    medusaSettings = [(SBShelfZoomTransitionModifier *)self medusaSettings];
    [medusaSettings defaultDimmingOpacity];
    v8 = v10;
  }

  return v8;
}

- (BOOL)_shouldDimLayoutRole:(int64_t)role inAppLayout:(id)layout forZoomDirection:(unint64_t)direction
{
  if (self->_centerWindowAppLayout == layout)
  {
    return 0;
  }

  v6 = ![(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf];
  return direction == 1 && v6;
}

- (id)topMostLayoutElements
{
  v8.receiver = self;
  v8.super_class = SBShelfZoomTransitionModifier;
  topMostLayoutElements = [(SBShelfZoomTransitionModifier *)&v8 topMostLayoutElements];
  v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_centerWindowAppLayout toIndex:0];

  centerWindowBeingReplacedAppLayout = self->_centerWindowBeingReplacedAppLayout;
  if (centerWindowBeingReplacedAppLayout)
  {
    v6 = [v4 sb_arrayByInsertingOrMovingObject:centerWindowBeingReplacedAppLayout toIndex:1];

    v4 = v6;
  }

  return v4;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 isEqual:self->_centerWindowAppLayout] && -[SBShelfZoomTransitionModifier _isEffectivelyInShelf](self, "_isEffectivelyInShelf"))
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBShelfZoomTransitionModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (self->_direction == 1)
  {
    homeGestureEdgeRowZoomUpSettings = [animationSettings homeGestureEdgeRowZoomUpSettings];
    [v5 setLayoutSettings:homeGestureEdgeRowZoomUpSettings];
  }

  else
  {
    homeGestureTopRowZoomDownLayoutSettings = [animationSettings homeGestureTopRowZoomDownLayoutSettings];
    [v5 setLayoutSettings:homeGestureTopRowZoomDownLayoutSettings];

    homeGestureTopRowZoomDownPositionSettings = [animationSettings homeGestureTopRowZoomDownPositionSettings];
    [v5 setPositionSettings:homeGestureTopRowZoomDownPositionSettings];

    homeGestureEdgeRowZoomUpSettings = [animationSettings homeGestureTopRowZoomDownScaleSettings];
    [v5 setScaleSettings:homeGestureEdgeRowZoomUpSettings];
  }

  return v5;
}

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)shelf
{
  retstr->var3 = 0;
  *&retstr->var1.origin.y = 0u;
  *&retstr->var1.size.height = 0u;
  *&retstr->var0 = 0u;
  v6.receiver = self;
  v6.super_class = SBShelfZoomTransitionModifier;
  result = [(SBSwitcherShelfPresentationAttributes *)&v6 presentationAttributesForShelf:a4];
  retstr->var2 = 0;
  return result;
}

- (BOOL)_isEffectivelyInShelf
{
  direction = self->_direction;
  if (direction != 1)
  {
    v4 = 0;
    if (direction)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = [(SBTransitionSwitcherModifier *)self transitionPhase]> 1;
    return v4 || v5;
  }

  v4 = [(SBTransitionSwitcherModifier *)self transitionPhase]== 1;
  if (!self->_direction)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
  return v4 || v5;
}

@end