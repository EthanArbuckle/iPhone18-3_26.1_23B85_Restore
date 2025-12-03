@interface SBMedusaWindowDragGestureRootSwitcherModifier
- (SBMedusaWindowDragGestureRootSwitcherModifier)initWithSelectedLeafAppLayout:(id)layout currentMainAppLayout:(id)appLayout currentFloatingAppLayout:(id)floatingAppLayout currentFloatingConfiguration:(int64_t)configuration;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBMedusaWindowDragGestureRootSwitcherModifier

- (SBMedusaWindowDragGestureRootSwitcherModifier)initWithSelectedLeafAppLayout:(id)layout currentMainAppLayout:(id)appLayout currentFloatingAppLayout:(id)floatingAppLayout currentFloatingConfiguration:(int64_t)configuration
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  floatingAppLayoutCopy = floatingAppLayout;
  v17.receiver = self;
  v17.super_class = SBMedusaWindowDragGestureRootSwitcherModifier;
  v14 = [(SBGestureRootSwitcherModifier *)&v17 initWithStartingEnvironmentMode:3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_selectedLeafAppLayout, layout);
    objc_storeStrong(&v15->_currentMainAppLayout, appLayout);
    objc_storeStrong(&v15->_currentFloatingAppLayout, floatingAppLayout);
    v15->_currentFloatingConfiguration = configuration;
  }

  return v15;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  v6 = [SBMedusaWindowDragGestureSwitcherModifier alloc];
  gestureID = [eventCopy gestureID];

  v8 = [(SBMedusaWindowDragGestureSwitcherModifier *)v6 initWithGestureID:gestureID selectedLeafAppLayout:self->_selectedLeafAppLayout initialMainAppLayout:self->_currentMainAppLayout initialFloatingAppLayout:self->_currentFloatingAppLayout initialFloatingConfiguration:self->_currentFloatingConfiguration];

  return v8;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  modifierCopy = modifier;
  v8 = objc_opt_class();
  v9 = modifierCopy;
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
  fromAppLayout = [eventCopy fromAppLayout];
  allItems = [fromAppLayout allItems];
  [v13 addObjectsFromArray:allItems];

  fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
  allItems2 = [fromFloatingAppLayout allItems];
  [v13 addObjectsFromArray:allItems2];

  appLayouts = [(SBMedusaWindowDragGestureRootSwitcherModifier *)self appLayouts];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __117__SBMedusaWindowDragGestureRootSwitcherModifier_transitionChildModifierForMainTransitionEvent_activeGestureModifier___block_invoke;
  v52[3] = &unk_2783B0C68;
  v48 = appLayouts;
  v53 = v48;
  selfCopy = self;
  v51 = v12;
  v55 = v51;
  v49 = v13;
  [v13 bs_each:v52];
  if ([eventCopy isEnteringSlideOverPeekEvent])
  {
    isEnteringSplitViewPeekEvent = 1;
  }

  else
  {
    isEnteringSplitViewPeekEvent = [eventCopy isEnteringSplitViewPeekEvent];
  }

  v20 = [SBMedusaWindowDragTransitionSwitcherModifier alloc];
  transitionID = [eventCopy transitionID];
  selectedLeafAppLayout = self->_selectedLeafAppLayout;
  [eventCopy fromAppLayout];
  v23 = v47 = self;
  toAppLayout = [eventCopy toAppLayout];
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  toAppExposeBundleID = [eventCopy toAppExposeBundleID];
  currentDestination = [v11 currentDestination];
  v28 = v11;
  v29 = currentDestination;

  v30 = [(SBMedusaWindowDragTransitionSwitcherModifier *)v20 initWithTransitionID:transitionID selectedAppLayout:selectedLeafAppLayout fromAppLayout:v23 toAppLayout:toAppLayout toFloatingAppLayout:toFloatingAppLayout toHomeScreenPeek:isEnteringSplitViewPeekEvent toAppExposeBundleIdentifier:toAppExposeBundleID initiallyBlurredDisplayItems:v51 windowDragDestination:v29];
  if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
  {
    selectedAppLayout = [(SBGestureRootSwitcherModifier *)v47 selectedAppLayout];
    if ([selectedAppLayout environment] == 1)
    {
      toFloatingAppLayout2 = [eventCopy toFloatingAppLayout];
      v33 = [selectedAppLayout itemForLayoutRole:1];
      v34 = [toFloatingAppLayout2 containsItem:v33];

      if (v34)
      {
        toFloatingAppLayout3 = [eventCopy toFloatingAppLayout];

        selectedAppLayout = toFloatingAppLayout3;
      }
    }

    if ([eventCopy isIconZoomDisabled])
    {
      v36 = *MEMORY[0x277CBF398];
      v37 = *(MEMORY[0x277CBF398] + 8);
      v38 = *(MEMORY[0x277CBF398] + 16);
      v39 = *(MEMORY[0x277CBF398] + 24);
    }

    else
    {
      [(SBMedusaWindowDragGestureRootSwitcherModifier *)v47 homeScreenIconFrameForAppLayout:selectedAppLayout];
    }

    if (!CGRectIsNull(*&v36) && ([(SBMedusaWindowDragGestureRootSwitcherModifier *)v47 isReduceMotionEnabled]& 1) == 0)
    {
      v40 = [(SBAppLayout *)v47->_selectedLeafAppLayout itemForLayoutRole:1];
      toAppLayout2 = [eventCopy toAppLayout];
      v42 = [toAppLayout2 containsItem:v40];

      if (v42)
      {
        toAppLayout3 = [eventCopy toAppLayout];
        v44 = [toAppLayout3 leafAppLayoutForItem:v40];

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

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] == 1)
  {
    toAppLayout = [eventCopy toAppLayout];
    currentMainAppLayout = self->_currentMainAppLayout;
    self->_currentMainAppLayout = toAppLayout;

    toFloatingAppLayout = [eventCopy toFloatingAppLayout];
    currentFloatingAppLayout = self->_currentFloatingAppLayout;
    self->_currentFloatingAppLayout = toFloatingAppLayout;

    self->_currentFloatingConfiguration = [eventCopy toFloatingConfiguration];
  }

  v11.receiver = self;
  v11.super_class = SBMedusaWindowDragGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 handleTransitionEvent:eventCopy];

  return v9;
}

- (id)handleGestureEvent:(id)event
{
  p_gestureVelocity = &self->_gestureVelocity;
  eventCopy = event;
  [eventCopy velocityInContainerView];
  p_gestureVelocity->x = v6;
  p_gestureVelocity->y = v7;
  v10.receiver = self;
  v10.super_class = SBMedusaWindowDragGestureRootSwitcherModifier;
  v8 = [(SBGestureRootSwitcherModifier *)&v10 handleGestureEvent:eventCopy];

  return v8;
}

@end