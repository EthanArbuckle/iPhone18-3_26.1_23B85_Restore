@interface SBiPadOSPlatformSwitcherModifier
- (char)activityModeForAppLayout:(id)a3;
- (char)jetsamModeForAppLayout:(id)a3;
- (id)foregroundAppLayouts;
- (id)handleGestureEvent:(id)a3;
- (id)handlePrepareForSceneUpdateEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)handleUpdateWindowingModeEvent:(id)a3;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)a3 fromAppLayouts:(id)a4;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBiPadOSPlatformSwitcherModifier

- (void)didMoveToParentModifier:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBiPadOSPlatformSwitcherModifier;
  [(SBChainableModifier *)&v10 didMoveToParentModifier:?];
  if (a3)
  {
    v5 = [(SBChainableModifier *)self childModifierByKey:@"kiPadOSPlatformModifierChildKey"];

    if (!v5)
    {
      v6 = [(SBiPadOSPlatformSwitcherModifier *)self windowManagementContext];
      v7 = [v6 isChamoisOrFlexibleWindowing];

      v8 = off_27839F4A0;
      if (!v7)
      {
        v8 = off_2783A0BB8;
      }

      v9 = objc_alloc_init(*v8);
      [(SBChainableModifier *)self addChildModifier:v9 atLevel:0 key:@"kiPadOSPlatformModifierChildKey"];
    }
  }
}

- (id)handlePrepareForSceneUpdateEvent:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v5 liveAppLayouts];
  v7 = [v4 setWithArray:v6];
  activatingLiveAppLayouts = self->_activatingLiveAppLayouts;
  self->_activatingLiveAppLayouts = v7;

  v11.receiver = self;
  v11.super_class = SBiPadOSPlatformSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 handlePrepareForSceneUpdateEvent:v5];

  return v9;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SBiPadOSPlatformSwitcherModifier;
  v37 = [(SBSwitcherModifier *)&v38 handleTransitionEvent:v4];
  if ([v4 isiPadOSWindowingModeChangeEvent] && objc_msgSend(v4, "phase") == 1 && objc_msgSend(v4, "isAnimated"))
  {
    v5 = [v4 fromAppLayout];
    v6 = [v4 toAppLayout];
    v7 = v6;
    if (self->_currentUnlockedEnvironmentMode == 3 && v5 != 0 && v6 != 0)
    {
      v10 = [SBiPadOSWindowModeChangeTransitionModifier alloc];
      v11 = [v4 transitionID];
      v12 = [(SBiPadOSWindowModeChangeTransitionModifier *)v10 initWithTransitionID:v11 fromAppLayout:v5 toAppLayout:v7];

      [(SBChainableModifier *)self addChildModifier:v12 atLevel:0 key:0];
    }
  }

  v13 = MEMORY[0x277CBEB98];
  v14 = [v4 fromAppLayout];
  v15 = [v14 allItems];
  v16 = [v4 fromFloatingAppLayout];
  v17 = [v16 allItems];
  v18 = [v15 arrayByAddingObjectsFromArray:v17];
  v19 = [v13 setWithArray:v18];
  previousDisplayItems = self->_previousDisplayItems;
  self->_previousDisplayItems = v19;

  v21 = MEMORY[0x277CBEB98];
  v22 = [v4 toAppLayout];
  v23 = [v22 allItems];
  v24 = [v4 toFloatingAppLayout];
  v25 = [v24 allItems];
  v26 = [v23 arrayByAddingObjectsFromArray:v25];
  v27 = [v21 setWithArray:v26];
  displayItems = self->_displayItems;
  self->_displayItems = v27;

  if (([v4 isGestureInitiated] & 1) == 0)
  {
    lastGesturedDisplayItem = self->_lastGesturedDisplayItem;
    self->_lastGesturedDisplayItem = 0;
  }

  v30 = [v4 activatingAppLayout];
  v31 = v30;
  if (v30)
  {
    if (![v4 isMainPulseEvent] || (objc_msgSend(v4, "toAppLayout"), v32 = objc_claimAutoreleasedReturnValue(), v32, v31 == v32))
    {
      v30 = 0;
    }

    else
    {
      v30 = [(SBDisplayItem *)v31 itemForLayoutRole:1];
    }
  }

  lastPulsedDisplayItem = self->_lastPulsedDisplayItem;
  self->_lastPulsedDisplayItem = v30;

  v34 = [v4 unhandledCopy];
  lastTransitionEvent = self->_lastTransitionEvent;
  self->_lastTransitionEvent = v34;

  self->_currentUnlockedEnvironmentMode = [v4 toEnvironmentMode];

  return v37;
}

- (id)handleGestureEvent:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBiPadOSPlatformSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v12 handleGestureEvent:v4];
  v6 = [v4 selectedAppLayout];

  v7 = [v6 allItems];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v6 itemForLayoutRole:1];
  }

  else
  {
    v9 = 0;
  }

  lastGesturedDisplayItem = self->_lastGesturedDisplayItem;
  self->_lastGesturedDisplayItem = v9;

  return v5;
}

- (id)handleUpdateWindowingModeEvent:(id)a3
{
  v23.receiver = self;
  v23.super_class = SBiPadOSPlatformSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v23 handleUpdateWindowingModeEvent:a3];
  v5 = [(SBChainableModifier *)self childModifierByKey:@"kiPadOSPlatformModifierChildKey"];
  v6 = [(SBiPadOSPlatformSwitcherModifier *)self windowManagementContext];
  v7 = [v6 isChamoisOrFlexibleWindowing];

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
    if (!v7)
    {
      v13 = off_2783A0BB8;
    }

    v14 = objc_alloc_init(*v13);

    [(SBChainableModifier *)self addChildModifier:v14 atLevel:0 key:@"kiPadOSPlatformModifierChildKey"];
    lastTransitionEvent = self->_lastTransitionEvent;
    if (lastTransitionEvent)
    {
      v16 = [(SBTransitionSwitcherModifierEvent *)lastTransitionEvent copy];
      v17 = [(SBTransitionSwitcherModifierEvent *)self->_lastTransitionEvent fromAppLayout];
      v18 = [v17 appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];

      [v16 setFromAppLayout:v18];
      v19 = [(SBTransitionSwitcherModifierEvent *)self->_lastTransitionEvent toAppLayout];
      v20 = [v19 appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];

      [v16 setToAppLayout:v20];
      v21 = [v14 handleEvent:v16];
    }
  }

  else
  {
    v14 = v5;
  }

  return v4;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)a3 fromAppLayouts:(id)a4
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__SBiPadOSPlatformSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke;
  v11[3] = &unk_2783B4C28;
  v11[4] = self;
  v6 = a3;
  v7 = [a4 sortedArrayUsingComparator:v11];
  v10.receiver = self;
  v10.super_class = SBiPadOSPlatformSwitcherModifier;
  v8 = [(SBiPadOSPlatformSwitcherModifier *)&v10 preferredAppLayoutToReuseAccessoryForAppLayout:v6 fromAppLayouts:v7];

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
  v3 = [(SBiPadOSPlatformSwitcherModifier *)&v6 foregroundAppLayouts];
  if ([(NSSet *)self->_activatingLiveAppLayouts count])
  {
    v4 = [v3 setByAddingObjectsFromSet:self->_activatingLiveAppLayouts];

    v3 = v4;
  }

  return v3;
}

- (char)jetsamModeForAppLayout:(id)a3
{
  v4 = a3;
  if ([(NSSet *)self->_activatingLiveAppLayouts containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBiPadOSPlatformSwitcherModifier;
    v5 = [(SBiPadOSPlatformSwitcherModifier *)&v7 jetsamModeForAppLayout:v4];
  }

  return v5;
}

- (char)activityModeForAppLayout:(id)a3
{
  v4 = a3;
  if ([(NSSet *)self->_activatingLiveAppLayouts containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBiPadOSPlatformSwitcherModifier;
    v5 = [(SBiPadOSPlatformSwitcherModifier *)&v7 activityModeForAppLayout:v4];
  }

  return v5;
}

@end