@interface SBiPadOSPlatformSwitcherModifier
- (char)activityModeForAppLayout:(id)layout;
- (char)jetsamModeForAppLayout:(id)layout;
- (id)foregroundAppLayouts;
- (id)handleGestureEvent:(id)event;
- (id)handlePrepareForSceneUpdateEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)handleUpdateWindowingModeEvent:(id)event;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBiPadOSPlatformSwitcherModifier

- (void)didMoveToParentModifier:(id)modifier
{
  v10.receiver = self;
  v10.super_class = SBiPadOSPlatformSwitcherModifier;
  [(SBChainableModifier *)&v10 didMoveToParentModifier:?];
  if (modifier)
  {
    v5 = [(SBChainableModifier *)self childModifierByKey:@"kiPadOSPlatformModifierChildKey"];

    if (!v5)
    {
      windowManagementContext = [(SBiPadOSPlatformSwitcherModifier *)self windowManagementContext];
      isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

      v8 = off_27839F4A0;
      if (!isChamoisOrFlexibleWindowing)
      {
        v8 = off_2783A0BB8;
      }

      v9 = objc_alloc_init(*v8);
      [(SBChainableModifier *)self addChildModifier:v9 atLevel:0 key:@"kiPadOSPlatformModifierChildKey"];
    }
  }
}

- (id)handlePrepareForSceneUpdateEvent:(id)event
{
  v4 = MEMORY[0x277CBEB98];
  eventCopy = event;
  liveAppLayouts = [eventCopy liveAppLayouts];
  v7 = [v4 setWithArray:liveAppLayouts];
  activatingLiveAppLayouts = self->_activatingLiveAppLayouts;
  self->_activatingLiveAppLayouts = v7;

  v11.receiver = self;
  v11.super_class = SBiPadOSPlatformSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handlePrepareForSceneUpdateEvent:eventCopy];

  return v9;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v38.receiver = self;
  v38.super_class = SBiPadOSPlatformSwitcherModifier;
  v37 = [(SBSwitcherModifier *)&v38 handleTransitionEvent:eventCopy];
  if ([eventCopy isiPadOSWindowingModeChangeEvent] && objc_msgSend(eventCopy, "phase") == 1 && objc_msgSend(eventCopy, "isAnimated"))
  {
    fromAppLayout = [eventCopy fromAppLayout];
    toAppLayout = [eventCopy toAppLayout];
    v7 = toAppLayout;
    if (self->_currentUnlockedEnvironmentMode == 3 && fromAppLayout != 0 && toAppLayout != 0)
    {
      v10 = [SBiPadOSWindowModeChangeTransitionModifier alloc];
      transitionID = [eventCopy transitionID];
      v12 = [(SBiPadOSWindowModeChangeTransitionModifier *)v10 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:v7];

      [(SBChainableModifier *)self addChildModifier:v12 atLevel:0 key:0];
    }
  }

  v13 = MEMORY[0x277CBEB98];
  fromAppLayout2 = [eventCopy fromAppLayout];
  allItems = [fromAppLayout2 allItems];
  fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
  allItems2 = [fromFloatingAppLayout allItems];
  v18 = [allItems arrayByAddingObjectsFromArray:allItems2];
  v19 = [v13 setWithArray:v18];
  previousDisplayItems = self->_previousDisplayItems;
  self->_previousDisplayItems = v19;

  v21 = MEMORY[0x277CBEB98];
  toAppLayout2 = [eventCopy toAppLayout];
  allItems3 = [toAppLayout2 allItems];
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  allItems4 = [toFloatingAppLayout allItems];
  v26 = [allItems3 arrayByAddingObjectsFromArray:allItems4];
  v27 = [v21 setWithArray:v26];
  displayItems = self->_displayItems;
  self->_displayItems = v27;

  if (([eventCopy isGestureInitiated] & 1) == 0)
  {
    lastGesturedDisplayItem = self->_lastGesturedDisplayItem;
    self->_lastGesturedDisplayItem = 0;
  }

  activatingAppLayout = [eventCopy activatingAppLayout];
  v31 = activatingAppLayout;
  if (activatingAppLayout)
  {
    if (![eventCopy isMainPulseEvent] || (objc_msgSend(eventCopy, "toAppLayout"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31 == v32))
    {
      activatingAppLayout = 0;
    }

    else
    {
      activatingAppLayout = [(SBDisplayItem *)v31 itemForLayoutRole:1];
    }
  }

  lastPulsedDisplayItem = self->_lastPulsedDisplayItem;
  self->_lastPulsedDisplayItem = activatingAppLayout;

  unhandledCopy = [eventCopy unhandledCopy];
  lastTransitionEvent = self->_lastTransitionEvent;
  self->_lastTransitionEvent = unhandledCopy;

  self->_currentUnlockedEnvironmentMode = [eventCopy toEnvironmentMode];

  return v37;
}

- (id)handleGestureEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = SBiPadOSPlatformSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v12 handleGestureEvent:eventCopy];
  selectedAppLayout = [eventCopy selectedAppLayout];

  allItems = [selectedAppLayout allItems];
  v8 = [allItems count];

  if (v8 == 1)
  {
    v9 = [selectedAppLayout itemForLayoutRole:1];
  }

  else
  {
    v9 = 0;
  }

  lastGesturedDisplayItem = self->_lastGesturedDisplayItem;
  self->_lastGesturedDisplayItem = v9;

  return v5;
}

- (id)handleUpdateWindowingModeEvent:(id)event
{
  v23.receiver = self;
  v23.super_class = SBiPadOSPlatformSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v23 handleUpdateWindowingModeEvent:event];
  v5 = [(SBChainableModifier *)self childModifierByKey:@"kiPadOSPlatformModifierChildKey"];
  windowManagementContext = [(SBiPadOSPlatformSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v9 = SBAppendSwitcherModifierResponse(v8, v4);

    if (self->_currentUnlockedEnvironmentMode != 3)
    {
      v10 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
      v11 = SBAppendSwitcherModifierResponse(v10, v9);

      v9 = v11;
    }

    v12 = [[SBInvalidateSnapshotCacheSwitcherEventResponse alloc] initWithDisplayItems:0];
    v4 = SBAppendSwitcherModifierResponse(v12, v9);

    [(SBChainableModifier *)self removeChildModifier:v5];
    v13 = off_27839F4A0;
    if (!isChamoisOrFlexibleWindowing)
    {
      v13 = off_2783A0BB8;
    }

    v14 = objc_alloc_init(*v13);

    [(SBChainableModifier *)self addChildModifier:v14 atLevel:0 key:@"kiPadOSPlatformModifierChildKey"];
    lastTransitionEvent = self->_lastTransitionEvent;
    if (lastTransitionEvent)
    {
      v16 = [(SBTransitionSwitcherModifierEvent *)lastTransitionEvent copy];
      fromAppLayout = [(SBTransitionSwitcherModifierEvent *)self->_lastTransitionEvent fromAppLayout];
      appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing = [fromAppLayout appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];

      [v16 setFromAppLayout:appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];
      toAppLayout = [(SBTransitionSwitcherModifierEvent *)self->_lastTransitionEvent toAppLayout];
      appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing2 = [toAppLayout appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];

      [v16 setToAppLayout:appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing2];
      v21 = [v14 handleEvent:v16];
    }
  }

  else
  {
    v14 = v5;
  }

  return v4;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__SBiPadOSPlatformSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke;
  v11[3] = &unk_2783B4C28;
  v11[4] = self;
  layoutCopy = layout;
  v7 = [layouts sortedArrayUsingComparator:v11];
  v10.receiver = self;
  v10.super_class = SBiPadOSPlatformSwitcherModifier;
  v8 = [(SBiPadOSPlatformSwitcherModifier *)&v10 preferredAppLayoutToReuseAccessoryForAppLayout:layoutCopy fromAppLayouts:v7];

  return v8;
}

uint64_t __98__SBiPadOSPlatformSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 containsItem:*(*(a1 + 32) + 144)])
  {
    goto LABEL_2;
  }

  if (([v6 containsItem:*(*(a1 + 32) + 144)] & 1) != 0 || objc_msgSend(v5, "containsAnyItemFromSet:", *(*(a1 + 32) + 128)) && !objc_msgSend(v6, "containsAnyItemFromSet:", *(*(a1 + 32) + 128)))
  {
    goto LABEL_4;
  }

  if (([v5 containsAnyItemFromSet:*(*(a1 + 32) + 128)] & 1) == 0 && (objc_msgSend(v6, "containsAnyItemFromSet:", *(*(a1 + 32) + 128)) & 1) != 0 || objc_msgSend(v5, "environment") == 2)
  {
    goto LABEL_2;
  }

  if ([v6 environment] == 2)
  {
LABEL_4:
    v7 = -1;
    goto LABEL_5;
  }

  if ([v5 environment] != 3)
  {
    if ([v6 environment] == 3)
    {
      goto LABEL_4;
    }

    v9 = *(a1 + 32);
    if (!*(v9 + 152))
    {
      goto LABEL_19;
    }

    if (([v5 containsItem:?] & 1) == 0)
    {
      v9 = *(a1 + 32);
      if (*(v9 + 152))
      {
        if ([v6 containsItem:?])
        {
          goto LABEL_4;
        }

        v9 = *(a1 + 32);
      }

LABEL_19:
      if (![v5 containsAnyItemFromSet:*(v9 + 128)] || (objc_msgSend(v5, "containsAnyItemFromSet:", *(*(a1 + 32) + 136)) & 1) == 0)
      {
        if (![v6 containsAnyItemFromSet:*(*(a1 + 32) + 128)] || (objc_msgSend(v6, "containsAnyItemFromSet:", *(*(a1 + 32) + 136)) & 1) == 0)
        {
          v7 = 0;
          goto LABEL_5;
        }

        goto LABEL_2;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v7 = 1;
LABEL_5:

  return v7;
}

- (id)foregroundAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBiPadOSPlatformSwitcherModifier;
  foregroundAppLayouts = [(SBiPadOSPlatformSwitcherModifier *)&v6 foregroundAppLayouts];
  if ([(NSSet *)self->_activatingLiveAppLayouts count])
  {
    v4 = [foregroundAppLayouts setByAddingObjectsFromSet:self->_activatingLiveAppLayouts];

    foregroundAppLayouts = v4;
  }

  return foregroundAppLayouts;
}

- (char)jetsamModeForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(NSSet *)self->_activatingLiveAppLayouts containsObject:layoutCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBiPadOSPlatformSwitcherModifier;
    v5 = [(SBiPadOSPlatformSwitcherModifier *)&v7 jetsamModeForAppLayout:layoutCopy];
  }

  return v5;
}

- (char)activityModeForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(NSSet *)self->_activatingLiveAppLayouts containsObject:layoutCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBiPadOSPlatformSwitcherModifier;
    v5 = [(SBiPadOSPlatformSwitcherModifier *)&v7 activityModeForAppLayout:layoutCopy];
  }

  return v5;
}

@end