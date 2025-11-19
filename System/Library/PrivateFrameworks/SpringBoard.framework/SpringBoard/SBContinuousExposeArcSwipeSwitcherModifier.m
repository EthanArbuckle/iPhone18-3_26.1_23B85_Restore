@interface SBContinuousExposeArcSwipeSwitcherModifier
- (SBContinuousExposeArcSwipeSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 selectedAppLayout:(id)a6 initialVisibleAppLayouts:(id)a7 pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)a8;
- (double)fadeInDelayForSplitViewHandles;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)_selectedAppLayout;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillUpdate;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBContinuousExposeArcSwipeSwitcherModifier

- (SBContinuousExposeArcSwipeSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 selectedAppLayout:(id)a6 initialVisibleAppLayouts:(id)a7 pinSpaceCornerRadiiToDisplayCornerRadii:(BOOL)a8
{
  v8 = a8;
  v44 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v37 = a4;
  v16 = a5;
  v36 = a6;
  v17 = a7;
  v42.receiver = self;
  v42.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  v18 = [(SBTransitionSwitcherModifier *)&v42 initWithTransitionID:v15];
  if (v18)
  {
    if (!v16)
    {
      [SBContinuousExposeArcSwipeSwitcherModifier initWithTransitionID:a2 fromAppLayout:v18 toAppLayout:? selectedAppLayout:? initialVisibleAppLayouts:? pinSpaceCornerRadiiToDisplayCornerRadii:?];
    }

    v19 = [[SBArcSwipeSwitcherModifier alloc] initWithTransitionID:v15 fromAppLayout:v37 toAppLayout:v16 pinSpaceCornerRadiiToDisplayCornerRadii:v8];
    arcSwipeModifier = v18->_arcSwipeModifier;
    v18->_arcSwipeModifier = v19;

    objc_storeStrong(&v18->_fromAppLayout, a4);
    objc_storeStrong(&v18->_toAppLayout, a5);
    objc_storeStrong(&v18->_selectedAppLayout, a6);
    v21 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = v17;
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

          v27 = [*(*(&v38 + 1) + 8 * v26) allItems];
          [(NSSet *)v21 addObjectsFromArray:v27];

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
    v31 = [MEMORY[0x277CCAD78] UUID];
    v32 = [v31 UUIDString];
    v33 = [v30 stringWithFormat:@"%@-%@", @"SBFlexibleWindowingArcSwipeTimerReason", v32, v36];
    uniqueTimerReason = v18->_uniqueTimerReason;
    v18->_uniqueTimerReason = v33;
  }

  return v18;
}

- (void)didMoveToParentModifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  [(SBChainableModifier *)&v6 didMoveToParentModifier:?];
  if (a3)
  {
    v5 = [(SBChainableModifier *)self->_arcSwipeModifier parentModifier];

    if (!v5)
    {
      [(SBChainableModifier *)self addChildModifier:self->_arcSwipeModifier];
    }
  }
}

- (id)transitionWillUpdate
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v11 transitionWillUpdate];
  self->_hideSplitViewHandles = 1;
  v4 = [SBTimerEventSwitcherEventResponse alloc];
  v5 = [(SBTransitionSwitcherModifier *)self animationAttributesForLayoutElement:self->_selectedAppLayout];
  v6 = [v5 layoutSettings];
  [v6 settlingDuration];
  v8 = [(SBTimerEventSwitcherEventResponse *)v4 initWithDelay:0 validator:self->_uniqueTimerReason reason:v7 * 0.3];

  v9 = SBAppendSwitcherModifierResponse(v8, v3);

  return v9;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = BSEqualStrings();
  if (v4)
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
  v3 = [(SBContinuousExposeArcSwipeSwitcherModifier *)self _selectedAppLayout];
  v14.receiver = self;
  v14.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
  v4 = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v14 topMostLayoutElements];
  if ([(SBTransitionSwitcherModifier *)self transitionPhase]== 2)
  {
    if (v3)
    {
      v5 = [(SBContinuousExposeArcSwipeSwitcherModifier *)self displayItemInSlideOver];
      v6 = v5;
      if (v5)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __67__SBContinuousExposeArcSwipeSwitcherModifier_topMostLayoutElements__block_invoke;
        v12[3] = &unk_2783A8C90;
        v13 = v5;
        v7 = [v3 appLayoutWithItemsPassingTest:v12];
        if (v7)
        {
          v8 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:v7 toTopMostLayoutElements:v4 orderFront:1];

          v4 = v8;
        }

        v9 = v4;

        v4 = v13;
      }

      else
      {
        v9 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:v3 toTopMostLayoutElements:v4 orderFront:1];
      }

      v4 = v9;
    }

    v10 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:self->_toAppLayout toTopMostLayoutElements:v4 orderFront:1];

    v4 = v10;
  }

  return v4;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [v8 itemForLayoutRole:a3];
  if (v9)
  {
    v10 = [(NSSet *)self->_initialVisibleDisplayItems containsObject:v9];
    v21.receiver = self;
    v21.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
    v11 = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v21 visibleAppLayouts];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __87__SBContinuousExposeArcSwipeSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke;
    v19[3] = &unk_2783A8CB8;
    v20 = v9;
    v12 = [v11 bs_containsObjectPassingTest:v19];

    v13 = [(SBTransitionSwitcherModifier *)self transitionPhase];
    v14 = v10 & (v12 ^ 1);
    if (v13 == 1)
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
    [(SBContinuousExposeArcSwipeSwitcherModifier *)&v18 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v15 = v16;
  }

  return v15;
}

- (double)fadeInDelayForSplitViewHandles
{
  v2 = [(SBContinuousExposeArcSwipeSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (id)visibleSplitViewHandleNubViews
{
  if (self->_hideSplitViewHandles)
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
    v2 = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v4 visibleSplitViewHandleNubViews];
  }

  return v2;
}

- (id)visibleSplitViewHandleDimmingViews
{
  if (self->_hideSplitViewHandles)
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBContinuousExposeArcSwipeSwitcherModifier;
    v2 = [(SBContinuousExposeArcSwipeSwitcherModifier *)&v4 visibleSplitViewHandleDimmingViews];
  }

  return v2;
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