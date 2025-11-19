@interface SBShelfZoomTransitionModifier
- (BOOL)_isEffectivelyInShelf;
- (BOOL)_shouldDimLayoutRole:(int64_t)a3 inAppLayout:(id)a4 forZoomDirection:(unint64_t)a5;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)_frameForCenterWindowInShelf;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBShelfZoomTransitionModifier)initWithTransitionID:(id)a3 direction:(unint64_t)a4 fromAppLayout:(id)a5 toAppLayout:(id)a6 shelf:(id)a7;
- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)hiddenAppLayoutsInShelf:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)headerStyleForIndex:(unint64_t)a3;
- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
@end

@implementation SBShelfZoomTransitionModifier

- (SBShelfZoomTransitionModifier)initWithTransitionID:(id)a3 direction:(unint64_t)a4 fromAppLayout:(id)a5 toAppLayout:(id)a6 shelf:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v40.receiver = self;
  v40.super_class = SBShelfZoomTransitionModifier;
  v16 = [(SBTransitionSwitcherModifier *)&v40 initWithTransitionID:a3];
  v17 = v16;
  if (v16)
  {
    v16->_direction = a4;
    objc_storeStrong(&v16->_fromAppLayout, a5);
    objc_storeStrong(&v17->_toAppLayout, a6);
    objc_storeStrong(&v17->_shelf, a7);
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBChainableModifier *)self succinctDescriptionBuilder];
  v5 = v4;
  if (self->_direction)
  {
    v6 = @"ToSpace";
  }

  else
  {
    v6 = @"ToShelf";
  }

  v7 = [v4 appendObject:v6 withName:@"direction"];
  v8 = [v5 appendObject:self->_fromAppLayout withName:@"fromAppLayout"];
  v9 = [v5 appendObject:self->_toAppLayout withName:@"toAppLayout"];
  v10 = [v5 appendObject:self->_shelf withName:@"shelf"];
  v11 = [v5 appendObject:self->_centerWindowAppLayout withName:@"centerWindowAppLayout"];
  v12 = [v5 appendObject:self->_fullScreenSpaceAppLayout withName:@"fullScreenSpaceAppLayout"];
  v13 = [v5 appendObject:self->_centerWindowBeingReplacedAppLayout withName:@"centerWindowBeingReplacedAppLayout"];

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 handleGestureEvent:a3];
  v5 = [(SBTransitionSwitcherModifier *)self interruptAndEndTransition];
  v6 = SBAppendSwitcherModifierResponse(v4, v5);

  return v6;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  direction = self->_direction;
  v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v6 = SBAppendSwitcherModifierResponse(v5, v3);

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
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if (self->_direction == 1)
  {
    v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = SBAppendSwitcherModifierResponse(v4, v3);

    v3 = v5;
  }

  return v3;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBShelfZoomTransitionModifier *)&v12 appLayoutsToEnsureExistForMainTransitionEvent:a3];
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
  v3 = [(SBShelfZoomTransitionModifier *)&v8 visibleAppLayouts];
  v4 = [v3 mutableCopy];

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

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
    [(SBShelfZoomTransitionModifier *)&v24 frameForIndex:a3];
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

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
    v14 = [(SBShelfZoomTransitionModifier *)self medusaSettings];
    [v14 switcherCenterWindowContentPushInScale];
    v12 = v15;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v17 scaleForIndex:a3];
    v12 = v13;
  }

  return v12;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  if (self->_fullScreenSpaceAppLayout == a4)
  {
    [(SBShelfZoomTransitionModifier *)&v6 scaleForLayoutRole:a3 inAppLayout:self->_toAppLayout, v5.receiver, v5.super_class, self, SBShelfZoomTransitionModifier];
  }

  else
  {
    [(SBShelfZoomTransitionModifier *)&v5 scaleForLayoutRole:a3 inAppLayout:a4, self, SBShelfZoomTransitionModifier, v6.receiver, v6.super_class];
  }

  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4
{
  v6 = a3;
  if (self->_centerWindowAppLayout == v6 && [(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf])
  {
    v7 = [(SBShelfZoomTransitionModifier *)self appLayouts];
    v8 = [v7 indexOfObject:v6];

    [(SBShelfZoomTransitionModifier *)self scaleForIndex:v8];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v12 contentPageViewScaleForAppLayout:v6 withScale:a4];
  }

  v10 = v9;

  return v10;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  if (self->_centerWindowAppLayout == a4)
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
    return [(SBShelfZoomTransitionModifier *)&v5 shadowStyleForLayoutRole:a3 inAppLayout:?];
  }
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_centerWindowAppLayout && [(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf])
  {
    [(SBShelfZoomTransitionModifier *)self shelfItemCornerRadiusForAppLayout:self->_centerWindowAppLayout inShelf:self->_shelf];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v19 cornerRadiiForIndex:a3];
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

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = v8;
  v10 = 1.0;
  if (self->_centerWindowAppLayout != v8 && self->_fullScreenSpaceAppLayout != v8 && (self->_centerWindowBeingReplacedAppLayout != v8 || a3 != 4))
  {
    v14.receiver = self;
    v14.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v10 = v12;
  }

  return v10;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a4];

  if (v8 == self->_centerWindowAppLayout)
  {
    v10 = 1.0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v12 shadowOpacityForLayoutRole:a3 atIndex:a4];
    v10 = v9;
  }

  return v10;
}

- (id)hiddenAppLayoutsInShelf:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBShelfZoomTransitionModifier *)&v7 hiddenAppLayoutsInShelf:a3];
  v5 = [v4 setByAddingObject:self->_centerWindowAppLayout];

  return v5;
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 != self->_centerWindowAppLayout || (v7 = 1.0, ![(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf]))
  {
    v10.receiver = self;
    v10.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v10 titleOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 != self->_centerWindowAppLayout || (v7 = 1.0, ![(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf]))
  {
    v10.receiver = self;
    v10.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v10 titleAndIconOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (int64_t)headerStyleForIndex:(unint64_t)a3
{
  v5 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_centerWindowAppLayout)
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBShelfZoomTransitionModifier;
    v7 = [(SBShelfZoomTransitionModifier *)&v9 headerStyleForIndex:a3];
  }

  return v7;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  [(SBShelfZoomTransitionModifier *)&v12 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  if ([(SBShelfZoomTransitionModifier *)self _shouldDimLayoutRole:a3 inAppLayout:v6 forZoomDirection:self->_direction]|| self->_centerWindowBeingReplacedAppLayout == v6)
  {
    v9 = [(SBShelfZoomTransitionModifier *)self medusaSettings];
    [v9 defaultDimmingOpacity];
    v8 = v10;
  }

  return v8;
}

- (BOOL)_shouldDimLayoutRole:(int64_t)a3 inAppLayout:(id)a4 forZoomDirection:(unint64_t)a5
{
  if (self->_centerWindowAppLayout == a4)
  {
    return 0;
  }

  v6 = ![(SBShelfZoomTransitionModifier *)self _isEffectivelyInShelf];
  return a5 == 1 && v6;
}

- (id)topMostLayoutElements
{
  v8.receiver = self;
  v8.super_class = SBShelfZoomTransitionModifier;
  v3 = [(SBShelfZoomTransitionModifier *)&v8 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_centerWindowAppLayout toIndex:0];

  centerWindowBeingReplacedAppLayout = self->_centerWindowBeingReplacedAppLayout;
  if (centerWindowBeingReplacedAppLayout)
  {
    v6 = [v4 sb_arrayByInsertingOrMovingObject:centerWindowBeingReplacedAppLayout toIndex:1];

    v4 = v6;
  }

  return v4;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBShelfZoomTransitionModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_centerWindowAppLayout] && -[SBShelfZoomTransitionModifier _isEffectivelyInShelf](self, "_isEffectivelyInShelf"))
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBShelfZoomTransitionModifier;
    [(SBShelfZoomTransitionModifier *)&v13 perspectiveAngleForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBShelfZoomTransitionModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBShelfZoomTransitionModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  if (self->_direction == 1)
  {
    v8 = [v7 homeGestureEdgeRowZoomUpSettings];
    [v5 setLayoutSettings:v8];
  }

  else
  {
    v9 = [v7 homeGestureTopRowZoomDownLayoutSettings];
    [v5 setLayoutSettings:v9];

    v10 = [v7 homeGestureTopRowZoomDownPositionSettings];
    [v5 setPositionSettings:v10];

    v8 = [v7 homeGestureTopRowZoomDownScaleSettings];
    [v5 setScaleSettings:v8];
  }

  return v5;
}

- (SBSwitcherShelfPresentationAttributes)presentationAttributesForShelf:(SEL)a3
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