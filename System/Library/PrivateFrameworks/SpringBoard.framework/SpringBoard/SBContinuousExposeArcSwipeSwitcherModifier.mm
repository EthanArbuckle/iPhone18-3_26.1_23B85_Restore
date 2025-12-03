@interface SBContinuousExposeArcSwipeSwitcherModifier
- (SBContinuousExposeArcSwipeSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout selectedAppLayout:(id)selectedAppLayout initialVisibleAppLayouts:(id)layouts pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)radii;
- (double)fadeInDelayForSplitViewHandles;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)_selectedAppLayout;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionWillUpdate;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBContinuousExposeArcSwipeSwitcherModifier

- (SBContinuousExposeArcSwipeSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout selectedAppLayout:(id)selectedAppLayout initialVisibleAppLayouts:(id)layouts pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)radii
{
  radiiCopy = radii;
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  selectedAppLayoutCopy = selectedAppLayout;
  layoutsCopy = layouts;
  v42.receiver = self;
  v42.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  v18 = [(SBTransitionSwitcherModifier *)&v42 initWithTransitionID:dCopy];
  if (v18)
  {
    if (!appLayoutCopy)
    {
      [SBContinuousExposeArcSwipeSwitcherModifier initWithTransitionID:a2 fromAppLayout:v18 toAppLayout:? selectedAppLayout:? initialVisibleAppLayouts:? pinSpaceCornerRadiiToDisplayCornerRadii:?];
    }

    v19 = [[SBArcSwipeSwitcherModifier alloc] initWithTransitionID:dCopy fromAppLayout:layoutCopy toAppLayout:appLayoutCopy pinSpaceCornerRadiiToDisplayCornerRadii:radiiCopy];
    arcSwipeModifier = v18->_arcSwipeModifier;
    v18->_arcSwipeModifier = v19;

    objc_storeStrong(&v18->_fromAppLayout, layout);
    objc_storeStrong(&v18->_toAppLayout, appLayout);
    objc_storeStrong(&v18->_selectedAppLayout, selectedAppLayout);
    v21 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = layoutsCopy;
    v23 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        v26 = 0;
        do
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v22);
          }

          allItems = [*(*(&v38 + 1) + 8 * v26) allItems];
          [(NSSet *)v21 addObjectsFromArray:allItems];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v24);
    }

    initialVisibleDisplayItems = v18->_initialVisibleDisplayItems;
    v18->_initialVisibleDisplayItems = v21;
    v29 = v21;

    v30 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    selectedAppLayoutCopy = [v30 stringWithFormat:@"%@-%@", @"SBFlexibleWindowingArcSwipeTimerReason", uUIDString, selectedAppLayoutCopy];
    uniqueTimerReason = v18->_uniqueTimerReason;
    v18->_uniqueTimerReason = selectedAppLayoutCopy;
  }

  return v18;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  [(SBChainableModifier *)&v6 didMoveToParentModifier:?];
  if (modifier)
  {
    parentModifier = [(SBChainableModifier *)self->_arcSwipeModifier parentModifier];

    if (!parentModifier)
    {
      [(SBChainableModifier *)self addChildModifier:self->_arcSwipeModifier];
    }
  }
}

- (id)transitionWillUpdate
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v11 transitionWillUpdate];
  self->_hideSplitViewHandles = 1;
  v4 = [SBTimerEventSwitcherEventResponse alloc];
  v5 = [(SBTransitionSwitcherModifier *)self animationAttributesForLayoutElement:self->_selectedAppLayout];
  layoutSettings = [v5 layoutSettings];
  [layoutSettings settlingDuration];
  v8 = [(SBTimerEventSwitcherEventResponse *)v4 initWithDelay:0 validator:self->_uniqueTimerReason reason:v7 * 0.3];

  v9 = SBAppendSwitcherModifierResponse(v8, transitionWillUpdate);

  return v9;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = BSEqualStrings();
  if (eventCopy)
  {
    self->_hideSplitViewHandles = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:16 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)topMostLayoutElements
{
  _selectedAppLayout = [(SBContinuousExposeArcSwipeSwitcherModifier *)self _selectedAppLayout];
  v14.receiver = self;
  v14.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  topMostLayoutElements = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v14 topMostLayoutElements];
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 2)
  {
    if (_selectedAppLayout)
    {
      displayItemInSlideOver = [(SBContinuousExposeArcSwipeSwitcherModifier *)self displayItemInSlideOver];
      v6 = displayItemInSlideOver;
      if (displayItemInSlideOver)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __67__SBContinuousExposeArcSwipeSwitcherModifier_topMostLayoutElements__block_invoke;
        v12[3] = &unk_2783A8C90;
        v13 = displayItemInSlideOver;
        v7 = [_selectedAppLayout appLayoutWithItemsPassingTest:v12];
        if (v7)
        {
          v8 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:v7 toTopMostLayoutElements:topMostLayoutElements orderFront:1];

          topMostLayoutElements = v8;
        }

        v9 = topMostLayoutElements;

        topMostLayoutElements = v13;
      }

      else
      {
        v9 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:_selectedAppLayout toTopMostLayoutElements:topMostLayoutElements orderFront:1];
      }

      topMostLayoutElements = v9;
    }

    v10 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:self->_toAppLayout toTopMostLayoutElements:topMostLayoutElements orderFront:1];

    topMostLayoutElements = v10;
  }

  return topMostLayoutElements;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = [layoutCopy itemForLayoutRole:role];
  if (v9)
  {
    v10 = [(NSSet *)self->_initialVisibleDisplayItems containsObject:v9];
    v21.receiver = self;
    v21.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
    visibleAppLayouts = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v21 visibleAppLayouts];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __87__SBContinuousExposeArcSwipeSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke;
    v19[3] = &unk_2783A8CB8;
    v20 = v9;
    v12 = [visibleAppLayouts bs_containsObjectPassingTest:v19];

    transitionPhase = [(SBTransitionSwitcherModifier *)self transitionPhase];
    v14 = v10 & (v12 ^ 1);
    if (transitionPhase == 1)
    {
      v14 = !v10 & v12;
    }

    if (v14)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
    [(SBContinuousExposeArcSwipeSwitcherModifier *)&v18 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v15 = v16;
  }

  return v15;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBContinuousExposeArcSwipeSwitcherModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)visibleSplitViewHandleNubViews
{
  if (self->_hideSplitViewHandles)
  {
    visibleSplitViewHandleNubViews = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
    visibleSplitViewHandleNubViews = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v4 visibleSplitViewHandleNubViews];
  }

  return visibleSplitViewHandleNubViews;
}

- (id)visibleSplitViewHandleDimmingViews
{
  if (self->_hideSplitViewHandles)
  {
    visibleSplitViewHandleDimmingViews = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
    visibleSplitViewHandleDimmingViews = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v4 visibleSplitViewHandleDimmingViews];
  }

  return visibleSplitViewHandleDimmingViews;
}

- (id)_selectedAppLayout
{
  p_selectedAppLayout = &self->_selectedAppLayout;
  selectedAppLayout = self->_selectedAppLayout;
  if (!selectedAppLayout || [(SBAppLayout *)selectedAppLayout isEqual:self->_toAppLayout])
  {
    p_selectedAppLayout = &self->_fromAppLayout;
  }

  v5 = *p_selectedAppLayout;

  return v5;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:selectedAppLayout:initialVisibleAppLayouts:pinSpaceCornerRadiiToDisplayCornerRadii:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeArcSwipeSwitcherModifier.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end