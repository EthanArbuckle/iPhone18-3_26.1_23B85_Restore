@interface SBSwipeToKillSwitcherModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)contentViewOffsetForAccessoriesOfAppLayout:(id)a3;
- (CGPoint)contentViewOffsetForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBSwipeToKillSwitcherModifier)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 fadeOutSwipedItems:(BOOL)a5;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)lighteningAlphaForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOffsetForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)titleOpacityForIndex:(unint64_t)a3;
- (double)wallpaperOverlayAlphaForIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleSwipeToKillEvent:(id)a3;
- (id)visibleAppLayouts;
- (unint64_t)_interpolatingAdjacentIndexForIndex:(unint64_t)a3;
- (void)_calculateInterpolationDirection;
- (void)_performBlockWhileSimulatingPostRemovalAppLayoutState:(id)a3;
@end

@implementation SBSwipeToKillSwitcherModifier

- (SBSwipeToKillSwitcherModifier)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 fadeOutSwipedItems:(BOOL)a5
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = SBSwipeToKillSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v17 init];
  if (v11)
  {
    if (!v10)
    {
      [SBSwipeToKillSwitcherModifier initWithLayoutRole:a2 inAppLayout:v11 fadeOutSwipedItems:?];
    }

    v11->_layoutRole = a3;
    objc_storeStrong(&v11->_appLayout, a4);
    v12 = [v10 leafAppLayoutForRole:a3];
    leafAppLayout = v11->_leafAppLayout;
    v11->_leafAppLayout = v12;

    v11->_fadeOutSwipedItems = a5;
    v11->_hasPrepared = 0;
    v14 = [[SBHighlightSwitcherModifier alloc] initWithLayoutRole:v11->_layoutRole inAppLayout:v11->_appLayout listensForHighlightEvents:0];
    highlightModifier = v11->_highlightModifier;
    v11->_highlightModifier = v14;

    [(SBHighlightSwitcherModifier *)v11->_highlightModifier setStylesCornerRadii:0];
    [(SBChainableModifier *)v11 addChildModifier:v11->_highlightModifier];
  }

  return v11;
}

- (void)_performBlockWhileSimulatingPostRemovalAppLayoutState:(id)a3
{
  v4 = a3;
  simulatingPostRemovalState = self->_simulatingPostRemovalState;
  self->_simulatingPostRemovalState = 1;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = [(SBSwipeToKillSwitcherModifier *)self appLayouts];
  v8 = [v6 initWithArray:v7];

  [v8 removeObject:self->_appLayout];
  v9 = [[SBOverrideAppLayoutsSwitcherModifier alloc] initWithAppLayouts:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__SBSwipeToKillSwitcherModifier__performBlockWhileSimulatingPostRemovalAppLayoutState___block_invoke;
  v11[3] = &unk_2783A9348;
  v12 = v4;
  v10 = v4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v9 usingBlock:v11];
  self->_simulatingPostRemovalState = simulatingPostRemovalState;
}

- (id)handleSwipeToKillEvent:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SBSwipeToKillSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v22 handleSwipeToKillEvent:v4];
  v6 = [v4 appLayout];
  if (v6 && (-[SBSwipeToKillSwitcherModifier appLayouts](self, "appLayouts"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v6], v7, (v8 & 1) != 0))
  {
    if ([(SBAppLayout *)self->_appLayout isEqual:v6])
    {
      if (!self->_hasPrepared)
      {
        [(SBSwipeToKillSwitcherModifier *)self _calculateInterpolationDirection];
      }

      [v4 progress];
      self->_progress = v9;
      [v4 translation];
      self->_translation.x = v10;
      self->_translation.y = v11;
      self->_isDragging = [v4 isDragging];
      [v4 decelerationTargetProgress];
      self->_decelerationTargetProgress = v12;
      v13 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
      v14 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v13 toResponse:v5];

      if (((BSFloatIsZero() & 1) != 0 || BSFloatGreaterThanOrEqualToFloat()) && !self->_isDragging)
      {
        [(SBChainableModifier *)self setState:1];
        if (![(SBSwipeToKillSwitcherModifier *)self _dragHasBeenReleasedTowardKill])
        {
          v15 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
          v16 = SBAppendSwitcherModifierResponse(v15, v14);

          v14 = v16;
        }
      }

      self->_hasPrepared = 1;

      v5 = v14;
    }
  }

  else
  {
    [(SBChainableModifier *)self setState:1];
  }

  if (self->_fadeOutSwipedItems)
  {
    appLayout = self->_appLayout;
    if (appLayout == v6)
    {
      v18 = [(SBAppLayout *)appLayout leafAppLayoutForRole:self->_layoutRole];
      v19 = [[SBBlurItemContainerSwitcherEventResponse alloc] initWithAppLayout:v18 shouldBlur:[(SBSwipeToKillSwitcherModifier *)self _dragHasBeenReleasedTowardKill] animationUpdateMode:3];
      v20 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v19 toResponse:v5];

      v5 = v20;
    }
  }

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBSwipeToKillSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v8 handleRemovalEvent:v4];
  v6 = [v4 appLayout];

  if (v6 && [v6 isOrContainsAppLayout:self->_appLayout])
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v23.receiver = self;
  v23.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v23 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a3];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22.receiver = self;
    v22.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v22 frameForIndex:v13];
    BSRectByLinearlyInterpolatingRects();
    v6 = v14;
    v8 = v15;
    v10 = v16;
    v12 = v17;
  }

  v18 = v6;
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v11 scaleForIndex:?];
  v6 = v5;
  v7 = [(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10.receiver = self;
    v10.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v10 scaleForIndex:v7];
    BSFloatByLinearlyInterpolatingFloats();
    return v8;
  }

  return v6;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v10 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  if (self->_appLayout == v6 && ![(SBAppLayout *)v6 isCenterOverFull])
  {
    v8 = v8 + (0.0 - v8) * self->_progress;
  }

  return fmin(fmax(v8, 0.0), 1.0);
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBSwipeToKillSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (![(SBAppLayout *)self->_appLayout isEqual:v6]|| (v7 = 0.0, !self->_isDragging) && BSFloatIsZero())
  {
    v10.receiver = self;
    v10.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v10 titleAndIconOpacityForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  if (![(SBAppLayout *)self->_appLayout isEqual:v11]|| !self->_isDragging && (BSFloatIsZero() & 1) != 0 || a3 == 4 || ([(SBSwipeToKillSwitcherModifier *)self shouldTetherItemsAndAccessoriesInAppLayout:v11]& 1) != 0)
  {
    v26.receiver = self;
    v26.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v26 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  }

  else
  {
    v24 = [(SBSwipeToKillSwitcherModifier *)self appLayouts];
    v25 = [v24 indexOfObject:v11];

    [(SBSwipeToKillSwitcherModifier *)self cornerRadiiForIndex:v25];
    SBRectCornerRadiiForRadius();
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.topRight = v23;
  result.bottomRight = v22;
  result.bottomLeft = v21;
  result.topLeft = v20;
  return result;
}

- (id)visibleAppLayouts
{
  v13.receiver = self;
  v13.super_class = SBSwipeToKillSwitcherModifier;
  v3 = [(SBSwipeToKillSwitcherModifier *)&v13 visibleAppLayouts];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__99;
  v11 = __Block_byref_object_dispose__99;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SBSwipeToKillSwitcherModifier_visibleAppLayouts__block_invoke;
  v6[3] = &unk_2783A8CE0;
  v6[4] = self;
  v6[5] = &v7;
  [(SBSwipeToKillSwitcherModifier *)self _performBlockWhileSimulatingPostRemovalAppLayoutState:v6];
  v4 = [v3 setByAddingObjectsFromSet:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__SBSwipeToKillSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = SBSwipeToKillSwitcherModifier;
  v2 = objc_msgSendSuper2(&v5, sel_visibleAppLayouts);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBSwipeToKillSwitcherModifier;
  v5 = [(SBSwipeToKillSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  v6 = [v5 mutableCopy];

  if ([(SBAppLayout *)v4 switcherLayoutElementType]|| ([(SBSwipeToKillSwitcherModifier *)self shouldTetherItemsAndAccessoriesInAppLayout:v4]& 1) == 0)
  {
    v7 = 5;
  }

  else
  {
    v7 = 1;
  }

  [v6 setUpdateMode:v7];
  [v6 setCornerRadiusUpdateMode:3];
  if (self->_fadeOutSwipedItems && self->_appLayout == v4)
  {
    v8 = [(SBSwipeToKillSwitcherModifier *)self switcherSettings];
    v9 = [v8 animationSettings];
    v10 = [v9 swipeToKillOpacitySettings];
    [v6 setOpacitySettings:v10];
  }

  return v6;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
  v10 = v9;
  if ([(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a5]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13.receiver = self;
    v13.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v13 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    BSFloatByLinearlyInterpolatingFloats();
    v10 = v11;
  }

  if (self->_fadeOutSwipedItems && self->_appLayout == v8 && self->_layoutRole == a3 && [(SBSwipeToKillSwitcherModifier *)self _dragHasBeenReleasedTowardKill])
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)wallpaperOverlayAlphaForIndex:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v11 wallpaperOverlayAlphaForIndex:?];
  v6 = v5;
  v7 = [(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10.receiver = self;
    v10.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v10 wallpaperOverlayAlphaForIndex:v7];
    BSFloatByLinearlyInterpolatingFloats();
    return v8;
  }

  return v6;
}

- (double)lighteningAlphaForIndex:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v11 lighteningAlphaForIndex:?];
  v6 = v5;
  v7 = [(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10.receiver = self;
    v10.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v10 lighteningAlphaForIndex:v7];
    BSFloatByLinearlyInterpolatingFloats();
    return v8;
  }

  return v6;
}

- (double)titleOpacityForIndex:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v11 titleOpacityForIndex:?];
  v6 = v5;
  v7 = [(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10.receiver = self;
    v10.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v10 titleOpacityForIndex:v7];
    BSFloatByLinearlyInterpolatingFloats();
    return v8;
  }

  return v6;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v12.receiver = self;
  v12.super_class = SBSwipeToKillSwitcherModifier;
  [SBSwipeToKillSwitcherModifier shadowOpacityForLayoutRole:sel_shadowOpacityForLayoutRole_atIndex_ atIndex:?];
  v8 = v7;
  if ([(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a4]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11.receiver = self;
    v11.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v11 shadowOpacityForLayoutRole:a3 atIndex:a4];
    BSFloatByLinearlyInterpolatingFloats();
    return v9;
  }

  return v8;
}

- (double)shadowOffsetForIndex:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v11 shadowOffsetForIndex:?];
  v6 = v5;
  v7 = [(SBSwipeToKillSwitcherModifier *)self _interpolatingAdjacentIndexForIndex:a3];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10.receiver = self;
    v10.super_class = SBSwipeToKillSwitcherModifier;
    [(SBSwipeToKillSwitcherModifier *)&v10 shadowOffsetForIndex:v7];
    BSFloatByLinearlyInterpolatingFloats();
    return v8;
  }

  return v6;
}

- (CGPoint)contentViewOffsetForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v13 contentViewOffsetForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  v10 = v9;
  if (self->_appLayout == v6 && self->_layoutRole != a3 && [(SBSwipeToKillSwitcherModifier *)self shouldTetherItemsAndAccessoriesInAppLayout:v6])
  {
    v8 = v8 + 0.0;
    v10 = v10 - self->_translation.y;
  }

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)contentViewOffsetForAccessoriesOfAppLayout:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBSwipeToKillSwitcherModifier;
  [(SBSwipeToKillSwitcherModifier *)&v11 contentViewOffsetForAccessoriesOfAppLayout:v4];
  v6 = v5;
  v8 = v7;
  if (self->_appLayout == v4 && [(SBSwipeToKillSwitcherModifier *)self shouldTetherItemsAndAccessoriesInAppLayout:v4])
  {
    v6 = v6 + 0.0;
    v8 = v8 - self->_translation.y;
  }

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBSwipeToKillSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_appLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSwipeToKillSwitcherModifier;
    v7 = [(SBSwipeToKillSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (void)_calculateInterpolationDirection
{
  v21.receiver = self;
  v21.super_class = SBSwipeToKillSwitcherModifier;
  v3 = [(SBSwipeToKillSwitcherModifier *)&v21 scrollViewAttributes];
  v4 = [v3 interpolatesDuringSwipeToKill];

  if (v4)
  {
    [(SBSwipeToKillSwitcherModifier *)self scrollViewContentOffset];
    v6 = v5;
    v7 = [(SBSwipeToKillSwitcherModifier *)self appLayouts];
    v8 = [v7 indexOfObject:self->_appLayout];

    v9 = [(SBSwipeToKillSwitcherModifier *)self indexToScrollToAfterRemovingIndex:v8];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3010000000;
    v19 = 0;
    v20 = 0;
    v18 = &unk_21F9DA6A3;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__SBSwipeToKillSwitcherModifier__calculateInterpolationDirection__block_invoke;
    v14[3] = &unk_2783AA618;
    v14[5] = &v15;
    v14[6] = v9;
    v14[4] = self;
    [(SBSwipeToKillSwitcherModifier *)self _performBlockWhileSimulatingPostRemovalAppLayoutState:v14];
    v10 = [(SBSwipeToKillSwitcherModifier *)self isRTLEnabled];
    v11 = v16[4];
    v12 = 0.0;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    if (v6 >= 0.0)
    {
      v12 = v6;
    }

    if (v10)
    {
      if (v11 >= v12)
      {
LABEL_8:
        v13 = 1;
LABEL_12:
        _Block_object_dispose(&v15, 8);
        goto LABEL_13;
      }
    }

    else if (v11 < v12)
    {
      goto LABEL_8;
    }

    v13 = 2;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:
  self->_interpolationDirection = v13;
}

id __65__SBSwipeToKillSwitcherModifier__calculateInterpolationDirection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v7.receiver = *(a1 + 32);
  v7.super_class = SBSwipeToKillSwitcherModifier;
  result = objc_msgSendSuper2(&v7, sel_contentOffsetForIndex_alignment_, v2, 0);
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (unint64_t)_interpolatingAdjacentIndexForIndex:(unint64_t)a3
{
  if (!self->_interpolationDirection)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(SBSwipeToKillSwitcherModifier *)self appLayouts];
  v6 = [v5 indexOfObject:self->_appLayout];
  interpolationDirection = self->_interpolationDirection;
  if (interpolationDirection != 1 || v6 >= a3)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = interpolationDirection == 2 && v6 > a3;
    if (v9 && [v5 count] - 1 > a3)
    {
      v10 = a3 + 1;
    }
  }

  else
  {
    v10 = a3 - 1;
  }

  return v10;
}

- (void)initWithLayoutRole:(uint64_t)a1 inAppLayout:(uint64_t)a2 fadeOutSwipedItems:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwipeToKillSwitcherModifier.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end