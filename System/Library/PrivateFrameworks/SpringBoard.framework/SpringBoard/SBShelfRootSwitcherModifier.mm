@interface SBShelfRootSwitcherModifier
- (CGRect)containerViewBounds;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)targetFrame;
- (id)floorModifierForTransitionEvent:(id)event;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event;
- (id)insertionModifierForInsertionEvent:(id)event;
- (id)orderedVisibleAppLayoutsForShelfExpansionModifier:(id)modifier;
- (id)removalModifierForRemovalEvent:(id)event;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)event;
- (id)transitionModifierForMainTransitionEvent:(id)event;
- (id)userScrollingModifierForScrollEvent:(id)event;
- (int64_t)tintStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (void)_rebuildContainerBounds;
- (void)didMoveToParentModifier:(id)modifier;
- (void)setDelegate:(id)delegate;
- (void)setDisplayMode:(unint64_t)mode;
@end

@implementation SBShelfRootSwitcherModifier

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBShelfRootSwitcherModifier;
  [(SBFluidSwitcherRootSwitcherModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    [(SBShelfRootSwitcherModifier *)self _rebuildContainerBounds];
  }
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = SBShelfRootSwitcherModifier;
  [(SBFluidSwitcherRootSwitcherModifier *)&v5 setDelegate:?];
  if (delegate)
  {
    [(SBShelfRootSwitcherModifier *)self _rebuildContainerBounds];
  }
}

- (void)setDisplayMode:(unint64_t)mode
{
  if (self->_displayMode != mode)
  {
    self->_displayMode = mode;
    parentModifier = [(SBChainableModifier *)self parentModifier];
    if (parentModifier)
    {
    }

    else
    {
      delegate = [(SBChainableModifier *)self delegate];

      if (!delegate)
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
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

- (int64_t)tintStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy type] == 5)
  {
    goto LABEL_2;
  }

  if ([(SBShelfRootSwitcherModifier *)self userInterfaceStyle]== 2)
  {
    shelfFocusedDisplayItems = [(SBShelfRootSwitcherModifier *)self shelfFocusedDisplayItems];
    if ([layoutCopy containsAnyItemFromSet:shelfFocusedDisplayItems])
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
    shelfFocusedDisplayItems = [(SBShelfRootSwitcherModifier *)self shelfFocusedDisplayItems];
    if ([layoutCopy containsAnyItemFromSet:shelfFocusedDisplayItems])
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

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBShelfRootSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([v6 environment] == 2)
  {
    isRoutingFrameForIndexToFloating = self->_isRoutingFrameForIndexToFloating;
    self->_isRoutingFrameForIndexToFloating = 1;
    v25.receiver = self;
    v25.super_class = SBShelfRootSwitcherModifier;
    [(SBShelfRootSwitcherModifier *)&v25 frameForIndex:index];
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
    [(SBShelfRootSwitcherModifier *)&v24 frameForIndex:index];
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

- (id)floorModifierForTransitionEvent:(id)event
{
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (!floorModifier)
  {
    floorModifier = objc_alloc_init(SBShelfCarouselSwitcherModifier);
  }

  return floorModifier;
}

- (id)removalModifierForRemovalEvent:(id)event
{
  eventCopy = event;
  v4 = [SBRemovalSwitcherModifier alloc];
  layoutRole = [eventCopy layoutRole];
  appLayout = [eventCopy appLayout];
  reason = [eventCopy reason];

  v8 = [(SBRemovalSwitcherModifier *)v4 initWithLayoutRole:layoutRole inAppLayout:appLayout reason:reason];

  return v8;
}

- (id)insertionModifierForInsertionEvent:(id)event
{
  eventCopy = event;
  v4 = [SBInsertionSwitcherModifier alloc];
  appLayout = [eventCopy appLayout];

  v6 = [(SBInsertionSwitcherModifier *)v4 initWithAppLayout:appLayout];

  return v6;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)event
{
  eventCopy = event;
  v4 = [SBSwipeToKillSwitcherModifier alloc];
  layoutRole = [eventCopy layoutRole];
  appLayout = [eventCopy appLayout];

  v7 = [(SBSwipeToKillSwitcherModifier *)v4 initWithLayoutRole:layoutRole inAppLayout:appLayout fadeOutSwipedItems:1];

  return v7;
}

- (id)userScrollingModifierForScrollEvent:(id)event
{
  v3 = objc_alloc_init(SBScrollingSwitcherModifier);

  return v3;
}

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event
{
  eventCopy = event;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  appLayout = [eventCopy appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:appLayout];

  return v6;
}

- (id)transitionModifierForMainTransitionEvent:(id)event
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
    eventCopy = event;
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
      medusaSettings = [(SBShelfRootSwitcherModifier *)self medusaSettings];
      [medusaSettings switcherShelfGenieInitialYIncrementBelowScreen];
      v10 = v14 + v16;
    }

    v17 = [SBShelfExpansionSwitcherModifier alloc];
    transitionID = [eventCopy transitionID];

    v11 = [(SBShelfExpansionSwitcherModifier *)v17 initWithTransitionID:transitionID expand:self->_appearanceState == 1 style:self->_animationStyle target:self animationDelegate:v9, v10];
  }

  return v11;
}

- (id)orderedVisibleAppLayoutsForShelfExpansionModifier:(id)modifier
{
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  orderedVisibleAppLayouts = [floorModifier orderedVisibleAppLayouts];

  return orderedVisibleAppLayouts;
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