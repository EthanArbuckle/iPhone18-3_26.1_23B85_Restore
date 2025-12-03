@interface SBSplitViewRootSwitcherModifier
- (SBSplitViewRootSwitcherModifier)init;
- (id)_handleEvent:(id)event;
- (id)handleEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event;
- (id)visibleHomeAffordanceLayoutElements;
@end

@implementation SBSplitViewRootSwitcherModifier

- (SBSplitViewRootSwitcherModifier)init
{
  v6.receiver = self;
  v6.super_class = SBSplitViewRootSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBFullScreenFluidSwitcherRootSwitcherModifier);
    fullScreenModifier = v2->_fullScreenModifier;
    v2->_fullScreenModifier = &v3->super.super;

    [(SBChainableModifier *)v2 addChildModifier:v2->_fullScreenModifier];
  }

  return v2;
}

- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = SBSplitViewRootSwitcherModifier;
  modifierCopy = modifier;
  v10 = [(SBChainableModifier *)&v14 responseForProposedChildResponse:response childModifier:modifierCopy event:eventCopy];
  fullScreenModifier = self->_fullScreenModifier;

  if (fullScreenModifier == modifierCopy)
  {
    v12 = [(SBSplitViewRootSwitcherModifier *)self _routingModifierForEvent:eventCopy, v14.receiver, v14.super_class];

    if (v12)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  routingModifier = self->_routingModifier;
  if (routingModifier)
  {
    parentModifier = [(SBChainableModifier *)routingModifier parentModifier];
    v7 = parentModifier != self;
  }

  else
  {
    v7 = 1;
  }

  v45.receiver = self;
  v45.super_class = SBSplitViewRootSwitcherModifier;
  v33 = [(SBChainableModifier *)&v45 handleEvent:eventCopy];
  v8 = self->_routingModifier;
  if (v8)
  {
    parentModifier2 = [(SBChainableModifier *)v8 parentModifier];
    v10 = parentModifier2 == self;
  }

  else
  {
    v10 = 0;
  }

  if ([eventCopy isGestureEvent])
  {
    v11 = eventCopy;
    type = [v11 type];
    if (type <= 5 && ((1 << type) & 0x2C) != 0)
    {
      if (![v11 phase])
      {
        v13 = [SBGestureSwitcherModifier alloc];
        gestureID = [v11 gestureID];
        v15 = [(SBGestureSwitcherModifier *)v13 initWithGestureID:gestureID];
        gestureTrackingModifier = self->_gestureTrackingModifier;
        self->_gestureTrackingModifier = v15;
      }

      if (!v7 && !v10)
      {
        self->_stoppedRoutingDueToArcSwipe = 1;
      }
    }

    else
    {
      v17 = self->_gestureTrackingModifier;
      self->_gestureTrackingModifier = 0;
    }
  }

  if ([eventCopy isTransitionEvent])
  {
    v18 = eventCopy;
    if ([v18 phase] == 1)
    {
      v19 = [SBTransitionSwitcherModifier alloc];
      transitionID = [v18 transitionID];
      v21 = [(SBTransitionSwitcherModifier *)v19 initWithTransitionID:transitionID];
      transitionTrackingModifier = self->_transitionTrackingModifier;
      self->_transitionTrackingModifier = v21;
    }
  }

  v23 = self->_gestureTrackingModifier;
  if (v23)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __47__SBSplitViewRootSwitcherModifier_handleEvent___block_invoke;
    v38[3] = &unk_2783AEA70;
    v38[4] = self;
    v39 = eventCopy;
    v40 = &v41;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v23 usingBlock:v38];
    [(SBChainableModifier *)self->_gestureTrackingModifier setState:v42[3]];

    _Block_object_dispose(&v41, 8);
  }

  v24 = self->_transitionTrackingModifier;
  if (v24)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __47__SBSplitViewRootSwitcherModifier_handleEvent___block_invoke_2;
    v35[3] = &unk_2783AEA70;
    v35[4] = self;
    v36 = eventCopy;
    v37 = &v41;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v24 usingBlock:v35];
    [(SBChainableModifier *)self->_transitionTrackingModifier setState:v42[3]];

    _Block_object_dispose(&v41, 8);
  }

  if ([(SBGestureSwitcherModifier *)self->_gestureTrackingModifier gesturePhase]== 3 && [(SBChainableModifier *)self->_gestureTrackingModifier state]<= 0)
  {
    [(SBChainableModifier *)self->_gestureTrackingModifier setState:1];
    if (v10)
    {
      goto LABEL_34;
    }
  }

  else if (v10)
  {
LABEL_34:
    v26 = v34;
    goto LABEL_35;
  }

  if (!self->_stoppedRoutingDueToArcSwipe)
  {
    goto LABEL_34;
  }

  v25 = self->_gestureTrackingModifier;
  v26 = v34;
  if (!v25 || [(SBChainableModifier *)v25 state]== 1)
  {
    v27 = self->_transitionTrackingModifier;
    if (!v27 || [(SBChainableModifier *)v27 state]== 1)
    {
      v28 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBSplitViewRootSwitcherModifierTimerEventReason" reason:0.4];
      v29 = SBAppendSwitcherModifierResponse(v28, v34);

      v26 = v29;
    }
  }

LABEL_35:
  if ([(SBChainableModifier *)self->_gestureTrackingModifier state]== 1)
  {
    v30 = self->_gestureTrackingModifier;
    self->_gestureTrackingModifier = 0;
  }

  if ([(SBChainableModifier *)self->_transitionTrackingModifier state]== 1)
  {
    v31 = self->_transitionTrackingModifier;
    self->_transitionTrackingModifier = 0;
  }

  return v26;
}

uint64_t __47__SBSplitViewRootSwitcherModifier_handleEvent___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) handleEvent:a1[5]];
  result = [*(a1[4] + 144) state];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __47__SBSplitViewRootSwitcherModifier_handleEvent___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 152) handleEvent:a1[5]];
  result = [*(a1[4] + 152) state];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)_handleEvent:(id)event
{
  eventCopy = event;
  parentModifier = [(SBChainableModifier *)self->_fullScreenModifier parentModifier];
  v20.receiver = self;
  v20.super_class = SBSplitViewRootSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v20 _handleEvent:eventCopy];
  routingModifier = self->_routingModifier;
  if (!routingModifier)
  {
    goto LABEL_5;
  }

  parentModifier2 = [(SBChainableModifier *)routingModifier parentModifier];

  if (!parentModifier2)
  {
    [(SBChainableModifier *)self->_fullScreenModifier setState:0];
    [(SBChainableModifier *)self addChildModifier:self->_fullScreenModifier];
    v9 = self->_routingModifier;
    self->_routingModifier = 0;
  }

  if (!self->_routingModifier)
  {
LABEL_5:
    v10 = [(SBSplitViewRootSwitcherModifier *)self _routingModifierForEvent:eventCopy];
    if (v10)
    {
      objc_storeStrong(&self->_routingModifier, v10);
      [(SBChainableModifier *)self addChildModifier:self->_routingModifier];
      parentModifier3 = [(SBChainableModifier *)self->_fullScreenModifier parentModifier];

      if (parentModifier3)
      {
        [(SBChainableModifier *)self removeChildModifier:self->_fullScreenModifier];
      }

      if ([eventCopy isTransitionEvent])
      {
        unhandledCopy = [eventCopy unhandledCopy];
        fromAppLayout = [unhandledCopy fromAppLayout];
        [unhandledCopy setToAppLayout:fromAppLayout];

        [unhandledCopy setToEnvironmentMode:{objc_msgSend(unhandledCopy, "fromEnvironmentMode")}];
        [unhandledCopy setPhase:3];
        [unhandledCopy setAnimated:0];
        v14 = [(SBChainableModifier *)self->_routingModifier handleEvent:unhandledCopy];
      }

      [(SBChainableModifier *)self->_routingModifier setState:0];
    }
  }

  if (!parentModifier)
  {
    parentModifier4 = [(SBChainableModifier *)self->_fullScreenModifier parentModifier];

    if (!parentModifier4)
    {
      fullScreenModifier = self->_fullScreenModifier;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __48__SBSplitViewRootSwitcherModifier__handleEvent___block_invoke;
      v18[3] = &unk_2783A92D8;
      v18[4] = self;
      v19 = eventCopy;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fullScreenModifier usingBlock:v18];
    }
  }

  return v6;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBSplitViewRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"SBSplitViewRootSwitcherModifierTimerEventReason"];
  if (eventCopy)
  {
    self->_stoppedRoutingDueToArcSwipe = 0;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:16 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  if (self->_stoppedRoutingDueToArcSwipe)
  {
    visibleHomeAffordanceLayoutElements = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBSplitViewRootSwitcherModifier;
    visibleHomeAffordanceLayoutElements = [(SBSplitViewRootSwitcherModifier *)&v4 visibleHomeAffordanceLayoutElements];
  }

  return visibleHomeAffordanceLayoutElements;
}

@end