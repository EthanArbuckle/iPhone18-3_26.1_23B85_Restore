@interface SBMedusaWindowDragGestureRootSwitcherModifier
- (SBMedusaWindowDragGestureRootSwitcherModifier)initWithSelectedLeafAppLayout:(id)a3 currentMainAppLayout:(id)a4 currentFloatingAppLayout:(id)a5 currentFloatingConfiguration:(int64_t)a6;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBMedusaWindowDragGestureRootSwitcherModifier

- (SBMedusaWindowDragGestureRootSwitcherModifier)initWithSelectedLeafAppLayout:(id)a3 currentMainAppLayout:(id)a4 currentFloatingAppLayout:(id)a5 currentFloatingConfiguration:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SBMedusaWindowDragGestureRootSwitcherModifier;
  v14 = [(SBGestureRootSwitcherModifier *)&v17 initWithStartingEnvironmentMode:3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_selectedLeafAppLayout, a3);
    objc_storeStrong(&v15->_currentMainAppLayout, a4);
    objc_storeStrong(&v15->_currentFloatingAppLayout, a5);
    v15->_currentFloatingConfiguration = a6;
  }

  return v15;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v5 = a3;
  v6 = [SBMedusaWindowDragGestureSwitcherModifier alloc];
  v7 = [v5 gestureID];

  v8 = [(SBMedusaWindowDragGestureSwitcherModifier *)v6 initWithGestureID:v7 selectedLeafAppLayout:self->_selectedLeafAppLayout initialMainAppLayout:self->_currentMainAppLayout initialFloatingAppLayout:self->_currentFloatingAppLayout initialFloatingConfiguration:self->_currentFloatingConfiguration];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v50 = v9;

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [v6 fromAppLayout];
  v15 = [v14 allItems];
  [v13 addObjectsFromArray:v15];

  v16 = [v6 fromFloatingAppLayout];
  v17 = [v16 allItems];
  [v13 addObjectsFromArray:v17];

  v18 = [(SBMedusaWindowDragGestureRootSwitcherModifier *)self appLayouts];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __117__SBMedusaWindowDragGestureRootSwitcherModifier_transitionChildModifierForMainTransitionEvent_activeGestureModifier___block_invoke;
  v52[3] = &unk_2783B0C68;
  v48 = v18;
  v53 = v48;
  v54 = self;
  v51 = v12;
  v55 = v51;
  v49 = v13;
  [v13 bs_each:v52];
  if ([v6 isEnteringSlideOverPeekEvent])
  {
    v19 = 1;
  }

  else
  {
    v19 = [v6 isEnteringSplitViewPeekEvent];
  }

  v20 = [SBMedusaWindowDragTransitionSwitcherModifier alloc];
  v21 = [v6 transitionID];
  selectedLeafAppLayout = self->_selectedLeafAppLayout;
  [v6 fromAppLayout];
  v23 = v47 = self;
  v24 = [v6 toAppLayout];
  v25 = [v6 toFloatingAppLayout];
  v26 = [v6 toAppExposeBundleID];
  v27 = [v11 currentDestination];
  v28 = v11;
  v29 = v27;

  v30 = [(SBMedusaWindowDragTransitionSwitcherModifier *)v20 initWithTransitionID:v21 selectedAppLayout:selectedLeafAppLayout fromAppLayout:v23 toAppLayout:v24 toFloatingAppLayout:v25 toHomeScreenPeek:v19 toAppExposeBundleIdentifier:v26 initiallyBlurredDisplayItems:v51 windowDragDestination:v29];
  if (SBPeekConfigurationIsValid([v6 toPeekConfiguration]))
  {
    v31 = [(SBGestureRootSwitcherModifier *)v47 selectedAppLayout];
    if ([v31 environment] == 1)
    {
      v32 = [v6 toFloatingAppLayout];
      v33 = [v31 itemForLayoutRole:1];
      v34 = [v32 containsItem:v33];

      if (v34)
      {
        v35 = [v6 toFloatingAppLayout];

        v31 = v35;
      }
    }

    if ([v6 isIconZoomDisabled])
    {
      v36 = *MEMORY[0x277CBF398];
      v37 = *(MEMORY[0x277CBF398] + 8);
      v38 = *(MEMORY[0x277CBF398] + 16);
      v39 = *(MEMORY[0x277CBF398] + 24);
    }

    else
    {
      [(SBMedusaWindowDragGestureRootSwitcherModifier *)v47 homeScreenIconFrameForAppLayout:v31];
    }

    if (!CGRectIsNull(*&v36) && ([(SBMedusaWindowDragGestureRootSwitcherModifier *)v47 isReduceMotionEnabled]& 1) == 0)
    {
      v40 = [(SBAppLayout *)v47->_selectedLeafAppLayout itemForLayoutRole:1];
      v41 = [v6 toAppLayout];
      v42 = [v41 containsItem:v40];

      if (v42)
      {
        v43 = [v6 toAppLayout];
        v44 = [v43 leafAppLayoutForItem:v40];

        if (v44)
        {
          v45 = [[SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc] initWithAppLayout:v44 gestureEdge:1 liftOffVelocity:v47->_gestureVelocity.x, v47->_gestureVelocity.y];
          [(SBChainableModifier *)v30 addChildModifier:v45];
        }
      }
    }
  }

  return v30;
}

void __117__SBMedusaWindowDragGestureRootSwitcherModifier_transitionChildModifierForMainTransitionEvent_activeGestureModifier___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __117__SBMedusaWindowDragGestureRootSwitcherModifier_transitionChildModifierForMainTransitionEvent_activeGestureModifier___block_invoke_2;
  v15[3] = &unk_2783A8CB8;
  v5 = v3;
  v16 = v5;
  v6 = [v4 bs_filter:v15];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(a1 + 40) isLayoutRoleBlurred:objc_msgSend(*(*(&v11 + 1) + 8 * v10) inAppLayout:{"layoutRoleForItem:", v5), *(*(&v11 + 1) + 8 * v10)}])
        {
          [*(a1 + 48) addObject:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v8);
  }
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 phase] == 1)
  {
    v5 = [v4 toAppLayout];
    currentMainAppLayout = self->_currentMainAppLayout;
    self->_currentMainAppLayout = v5;

    v7 = [v4 toFloatingAppLayout];
    currentFloatingAppLayout = self->_currentFloatingAppLayout;
    self->_currentFloatingAppLayout = v7;

    self->_currentFloatingConfiguration = [v4 toFloatingConfiguration];
  }

  v11.receiver = self;
  v11.super_class = SBMedusaWindowDragGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 handleTransitionEvent:v4];

  return v9;
}

- (id)handleGestureEvent:(id)a3
{
  p_gestureVelocity = &self->_gestureVelocity;
  v5 = a3;
  [v5 velocityInContainerView];
  p_gestureVelocity->x = v6;
  p_gestureVelocity->y = v7;
  v10.receiver = self;
  v10.super_class = SBMedusaWindowDragGestureRootSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v10 handleGestureEvent:v5];

  return v8;
}

@end