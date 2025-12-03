@interface SBGridSwitcherModifier
- (CGRect)containerViewBounds;
- (char)activityModeForAppLayout:(id)layout;
- (char)jetsamModeForAppLayout:(id)layout;
- (id)foregroundAppLayouts;
- (id)gridLayoutModifier;
- (id)handleRemovalEvent:(id)event;
- (id)handleScrollEvent:(id)event;
- (id)handleSwipeToKillEvent:(id)event;
- (id)handleTapAppLayoutEvent:(id)event;
- (id)handleTapOutsideToDismissEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)topMostLayoutElements;
- (void)didMoveToParentModifier:(id)modifier;
- (void)gridLayoutModifier;
@end

@implementation SBGridSwitcherModifier

- (void)didMoveToParentModifier:(id)modifier
{
  v11.receiver = self;
  v11.super_class = SBGridSwitcherModifier;
  [(SBChainableModifier *)&v11 didMoveToParentModifier:?];
  if (modifier)
  {
    if (!self->_gridLayoutModifier)
    {
      v5 = [[SBGridLayoutSwitcherModifier alloc] initWithAlignment:0 layoutDirection:0];
      gridLayoutModifier = self->_gridLayoutModifier;
      self->_gridLayoutModifier = v5;

      [(SBChainableModifier *)self addChildModifier:self->_gridLayoutModifier atLevel:0 key:0];
      v7 = objc_alloc_init(_SBGridFloorSwitcherModifier);
      floorModifier = self->_floorModifier;
      self->_floorModifier = v7;

      [(SBChainableModifier *)self addChildModifier:self->_floorModifier atLevel:1 key:0];
      v9 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
      [(SBChainableModifier *)self addChildModifier:v9 atLevel:2 key:0];

      v10 = *(MEMORY[0x277CBF398] + 16);
      self->_containerViewBounds_lastBounds.origin = *MEMORY[0x277CBF398];
      self->_containerViewBounds_lastBounds.size = v10;
    }
  }
}

- (id)gridLayoutModifier
{
  gridLayoutModifier = self->_gridLayoutModifier;
  if (gridLayoutModifier)
  {
  }

  else
  {
    v7[1] = v2;
    v8 = v3;
    [(SBGridSwitcherModifier *)a2 gridLayoutModifier:&self->_gridLayoutModifier];
    gridLayoutModifier = v7[0];
  }

  return gridLayoutModifier;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy toEnvironmentMode] == 2)
  {
    fromAppLayout = [eventCopy fromAppLayout];
    activeAppLayoutInSwitcher = self->_activeAppLayoutInSwitcher;
    self->_activeAppLayoutInSwitcher = fromAppLayout;
  }

  toAppLayout = [eventCopy toAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = toAppLayout;

  v11.receiver = self;
  v11.super_class = SBGridSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handleTransitionEvent:eventCopy];

  return v9;
}

- (id)handleRemovalEvent:(id)event
{
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBGridSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v16 handleRemovalEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    ++self->_ongoingAppLayoutRemovals;
    goto LABEL_13;
  }

  if ([eventCopy phase] == 2)
  {
    --self->_ongoingAppLayoutRemovals;
    appLayouts = [(SBGridSwitcherModifier *)self appLayouts];
    if ([appLayouts count])
    {
    }

    else
    {
      ongoingAppLayoutRemovals = self->_ongoingAppLayoutRemovals;

      if (!ongoingAppLayoutRemovals)
      {
        v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
        v12 = +[SBAppLayout homeScreenAppLayout];
        [(SBSwitcherTransitionRequest *)v10 setAppLayout:v12];

        [(SBSwitcherTransitionRequest *)v10 setAutoPIPDisabled:1];
LABEL_12:
        v13 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
        v14 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v13 toResponse:v5];

        v5 = v14;
        goto LABEL_13;
      }
    }

    appLayout = [eventCopy appLayout];
    if (!BSEqualObjects())
    {

      goto LABEL_13;
    }

    v9 = self->_ongoingAppLayoutRemovals;

    if (v9)
    {
      goto LABEL_13;
    }

    v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    v11 = +[SBAppLayout homeScreenAppLayout];
    [(SBSwitcherTransitionRequest *)v10 setAppLayout:v11];

    [(SBSwitcherTransitionRequest *)v10 setUnlockedEnvironmentMode:2];
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (id)handleScrollEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = SBGridSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v14 handleScrollEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 1)
  {
    v11 = *(MEMORY[0x277CBF398] + 16);
    self->_containerViewBounds_lastBounds.origin = *MEMORY[0x277CBF398];
    self->_containerViewBounds_lastBounds.size = v11;
  }

  else if (!phase)
  {
    v13.receiver = self;
    v13.super_class = SBGridSwitcherModifier;
    [(SBGridSwitcherModifier *)&v13 containerViewBounds];
    self->_containerViewBounds_lastBounds.origin.x = v7;
    self->_containerViewBounds_lastBounds.origin.y = v8;
    self->_containerViewBounds_lastBounds.size.width = v9;
    self->_containerViewBounds_lastBounds.size.height = v10;
  }

  return v5;
}

- (id)handleSwipeToKillEvent:(id)event
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = SBGridSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v13 handleSwipeToKillEvent:eventCopy];
  if ([eventCopy isDragging] & 1) == 0 && (objc_msgSend(eventCopy, "progress"), BSFloatIsZero()) && (objc_msgSend(eventCopy, "decelerationTargetProgress"), (BSFloatIsZero()))
  {
    v6 = *(MEMORY[0x277CBF398] + 16);
    self->_containerViewBounds_lastBounds.origin = *MEMORY[0x277CBF398];
    self->_containerViewBounds_lastBounds.size = v6;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBGridSwitcherModifier;
    [(SBGridSwitcherModifier *)&v12 containerViewBounds];
    self->_containerViewBounds_lastBounds.origin.x = v7;
    self->_containerViewBounds_lastBounds.origin.y = v8;
    self->_containerViewBounds_lastBounds.size.width = v9;
    self->_containerViewBounds_lastBounds.size.height = v10;
  }

  return v5;
}

- (id)handleTapAppLayoutEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBGridSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleTapAppLayoutEvent:eventCopy];
  v6 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:eventCopy, v10.receiver, v10.super_class];

  [v6 setRetainsSiri:{-[SBGridSwitcherModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
  v7 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v6 gestureInitiated:0];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  return v8;
}

- (id)handleTapOutsideToDismissEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBGridSwitcherModifier;
  eventCopy = event;
  v4 = [(SBSwitcherModifier *)&v11 handleTapOutsideToDismissEvent:eventCopy];
  isHandled = [eventCopy isHandled];

  if ((isHandled & 1) == 0)
  {
    v6 = [SBPerformTransitionSwitcherEventResponse alloc];
    v7 = +[SBSwitcherTransitionRequest requestForActivatingHomeScreen];
    v8 = [(SBPerformTransitionSwitcherEventResponse *)v6 initWithTransitionRequest:v7 gestureInitiated:0];

    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v4];

    v4 = v9;
  }

  return v4;
}

- (CGRect)containerViewBounds
{
  p_containerViewBounds_lastBounds = &self->_containerViewBounds_lastBounds;
  if (CGRectIsNull(self->_containerViewBounds_lastBounds))
  {
    v8.receiver = self;
    v8.super_class = SBGridSwitcherModifier;
    [(SBGridSwitcherModifier *)&v8 containerViewBounds];
  }

  else
  {
    x = p_containerViewBounds_lastBounds->origin.x;
    y = p_containerViewBounds_lastBounds->origin.y;
    width = p_containerViewBounds_lastBounds->size.width;
    height = p_containerViewBounds_lastBounds->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)topMostLayoutElements
{
  appLayouts = [(SBGridSwitcherModifier *)self appLayouts];
  gridLayoutModifier = self->_gridLayoutModifier;
  [(SBGridSwitcherModifier *)self scrollViewContentOffset];
  v5 = [(SBGridLayoutSwitcherModifier *)gridLayoutModifier visibleAppLayoutRangeForContentOffset:?];
  v7 = [appLayouts subarrayWithRange:{v5, v6}];

  return v7;
}

- (id)foregroundAppLayouts
{
  v4.receiver = self;
  v4.super_class = SBGridSwitcherModifier;
  foregroundAppLayouts = [(SBGridSwitcherModifier *)&v4 foregroundAppLayouts];

  return foregroundAppLayouts;
}

- (char)jetsamModeForAppLayout:(id)layout
{
  if (self->_activeAppLayoutInSwitcher == layout)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBGridSwitcherModifier;
  return [(SBGridSwitcherModifier *)&v6 jetsamModeForAppLayout:?];
}

- (char)activityModeForAppLayout:(id)layout
{
  if (self->_activeAppLayoutInSwitcher == layout)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBGridSwitcherModifier;
  return [(SBGridSwitcherModifier *)&v6 activityModeForAppLayout:?];
}

- (void)gridLayoutModifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBGridSwitcherModifier.m" lineNumber:78 description:@"Trying to use the grid layout modifier but it doesn't exist yet!"];

  *a4 = *a3;
}

@end