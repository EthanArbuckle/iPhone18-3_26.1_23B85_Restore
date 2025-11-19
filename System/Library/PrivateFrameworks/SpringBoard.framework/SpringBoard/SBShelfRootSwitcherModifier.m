@interface SBShelfRootSwitcherModifier
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)targetFrame;
- (id)floorModifierForTransitionEvent:(id)a3;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3;
- (id)insertionModifierForInsertionEvent:(id)a3;
- (id)orderedVisibleAppLayoutsForShelfExpansionModifier:(id)a3;
- (id)removalModifierForRemovalEvent:(id)a3;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3;
- (id)transitionModifierForMainTransitionEvent:(id)a3;
- (id)userScrollingModifierForScrollEvent:(id)a3;
- (int64_t)tintStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)_rebuildContainerBounds;
- (void)didMoveToParentModifier:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplayMode:(unint64_t)a3;
@end

@implementation SBShelfRootSwitcherModifier

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBShelfRootSwitcherModifier;
  [(SBFluidSwitcherRootSwitcherModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBShelfRootSwitcherModifier *)self _rebuildContainerBounds];
  }
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBShelfRootSwitcherModifier;
  [(SBFluidSwitcherRootSwitcherModifier *)&v5 setDelegate:?];
  if (a3)
  {
    [(SBShelfRootSwitcherModifier *)self _rebuildContainerBounds];
  }
}

- (void)setDisplayMode:(unint64_t)a3
{
  if (self->_displayMode != a3)
  {
    self->_displayMode = a3;
    v4 = [(SBChainableModifier *)self parentModifier];
    if (v4)
    {
    }

    else
    {
      v5 = [(SBChainableModifier *)self delegate];

      if (!v5)
      {
        return;
      }
    }

    [(SBShelfRootSwitcherModifier *)self _rebuildContainerBounds];
  }
}

- (void)_rebuildContainerBounds
{
  displayMode = self->_displayMode;
  if (displayMode == 1)
  {
    v16 = SBAppLayoutGenericAppLayoutWithConfiguration(3);
    [(SBShelfRootSwitcherModifier *)self preferredFrameForLayoutRole:1 inAppLayout:v16 bounds:4 interfaceOrientation:0.0, 0.0, self->_portraitContainerBounds.size.height, self->_portraitContainerBounds.size.width];
    self->_portraitContainerBounds.origin.x = v11;
    self->_portraitContainerBounds.origin.y = v12;
    self->_portraitContainerBounds.size.width = v13;
    self->_portraitContainerBounds.size.height = v14;
    size = self->_portraitContainerBounds.size;
    self->_landscapeContainerBounds.origin = self->_portraitContainerBounds.origin;
    self->_landscapeContainerBounds.size = size;
  }

  else if (!displayMode)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    if (v6 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v6 >= v8)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    self->_portraitContainerBounds.origin.x = 0.0;
    self->_portraitContainerBounds.origin.y = 0.0;
    self->_portraitContainerBounds.size.width = v9;
    self->_portraitContainerBounds.size.height = v10;
    self->_landscapeContainerBounds.origin.x = 0.0;
    self->_landscapeContainerBounds.origin.y = 0.0;
    self->_landscapeContainerBounds.size.width = v10;
    self->_landscapeContainerBounds.size.height = v9;
  }
}

- (CGRect)containerViewBounds
{
  if (([(SBShelfRootSwitcherModifier *)self switcherInterfaceOrientation]- 1) >= 2)
  {
    v3 = &OBJC_IVAR___SBShelfRootSwitcherModifier__landscapeContainerBounds;
  }

  else
  {
    v3 = &OBJC_IVAR___SBShelfRootSwitcherModifier__portraitContainerBounds;
  }

  v4 = (self + *v3);
  v5 = v4[2];
  v6 = v4[3];
  v7 = *v4;
  v8 = v4[1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (int64_t)tintStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v5 = a4;
  if ([v5 type] == 5)
  {
    goto LABEL_2;
  }

  if ([(SBShelfRootSwitcherModifier *)self userInterfaceStyle]== 2)
  {
    v7 = [(SBShelfRootSwitcherModifier *)self shelfFocusedDisplayItems];
    if ([v5 containsAnyItemFromSet:v7])
    {
      v6 = 2;
    }

    else
    {
      v6 = 4;
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([(SBShelfRootSwitcherModifier *)self userInterfaceStyle]== 1)
  {
    v7 = [(SBShelfRootSwitcherModifier *)self shelfFocusedDisplayItems];
    if ([v5 containsAnyItemFromSet:v7])
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    goto LABEL_11;
  }

LABEL_2:
  v6 = 0;
LABEL_12:

  return v6;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBShelfRootSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 environment] == 2)
  {
    isRoutingFrameForIndexToFloating = self->_isRoutingFrameForIndexToFloating;
    self->_isRoutingFrameForIndexToFloating = 1;
    v25.receiver = self;
    v25.super_class = SBShelfRootSwitcherModifier;
    [(SBShelfRootSwitcherModifier *)&v25 frameForIndex:a3];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    self->_isRoutingFrameForIndexToFloating = isRoutingFrameForIndexToFloating;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = SBShelfRootSwitcherModifier;
    [(SBShelfRootSwitcherModifier *)&v24 frameForIndex:a3];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)floorModifierForTransitionEvent:(id)a3
{
  v3 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (!v3)
  {
    v3 = objc_alloc_init(SBShelfCarouselSwitcherModifier);
  }

  return v3;
}

- (id)removalModifierForRemovalEvent:(id)a3
{
  v3 = a3;
  v4 = [SBRemovalSwitcherModifier alloc];
  v5 = [v3 layoutRole];
  v6 = [v3 appLayout];
  v7 = [v3 reason];

  v8 = [(SBRemovalSwitcherModifier *)v4 initWithLayoutRole:v5 inAppLayout:v6 reason:v7];

  return v8;
}

- (id)insertionModifierForInsertionEvent:(id)a3
{
  v3 = a3;
  v4 = [SBInsertionSwitcherModifier alloc];
  v5 = [v3 appLayout];

  v6 = [(SBInsertionSwitcherModifier *)v4 initWithAppLayout:v5];

  return v6;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3
{
  v3 = a3;
  v4 = [SBSwipeToKillSwitcherModifier alloc];
  v5 = [v3 layoutRole];
  v6 = [v3 appLayout];

  v7 = [(SBSwipeToKillSwitcherModifier *)v4 initWithLayoutRole:v5 inAppLayout:v6 fadeOutSwipedItems:1];

  return v7;
}

- (id)userScrollingModifierForScrollEvent:(id)a3
{
  v3 = objc_alloc_init(SBScrollingSwitcherModifier);

  return v3;
}

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3
{
  v3 = a3;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  v5 = [v3 appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:v5];

  return v6;
}

- (id)transitionModifierForMainTransitionEvent:(id)a3
{
  if (self->_appearanceState - 1 > 1)
  {
    v11 = 0;
  }

  else
  {
    x = self->_targetFrame.origin.x;
    y = self->_targetFrame.origin.y;
    width = self->_targetFrame.size.width;
    height = self->_targetFrame.size.height;
    v8 = a3;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    if (CGRectIsNull(v21))
    {
      v9 = *MEMORY[0x277CBF348];
      v10 = *(MEMORY[0x277CBF348] + 8);
    }

    else
    {
      UIRectGetCenter();
      v9 = v12;
      [(SBShelfRootSwitcherModifier *)self switcherViewBounds];
      v14 = v13;
      v15 = [(SBShelfRootSwitcherModifier *)self medusaSettings];
      [v15 switcherShelfGenieInitialYIncrementBelowScreen];
      v10 = v14 + v16;
    }

    v17 = [SBShelfExpansionSwitcherModifier alloc];
    v18 = [v8 transitionID];

    v11 = [(SBShelfExpansionSwitcherModifier *)v17 initWithTransitionID:v18 expand:self->_appearanceState == 1 style:self->_animationStyle target:self animationDelegate:v9, v10];
  }

  return v11;
}

- (id)orderedVisibleAppLayoutsForShelfExpansionModifier:(id)a3
{
  v3 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  v4 = [v3 orderedVisibleAppLayouts];

  return v4;
}

- (CGRect)targetFrame
{
  x = self->_targetFrame.origin.x;
  y = self->_targetFrame.origin.y;
  width = self->_targetFrame.size.width;
  height = self->_targetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end