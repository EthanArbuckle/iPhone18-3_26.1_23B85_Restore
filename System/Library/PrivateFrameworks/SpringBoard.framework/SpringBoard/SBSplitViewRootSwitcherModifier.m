@interface SBSplitViewRootSwitcherModifier
- (SBSplitViewRootSwitcherModifier)init;
- (id)_handleEvent:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
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

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = SBSplitViewRootSwitcherModifier;
  v9 = a4;
  v10 = [(SBChainableModifier *)&v14 responseForProposedChildResponse:a3 childModifier:v9 event:v8];
  fullScreenModifier = self->_fullScreenModifier;

  if (fullScreenModifier == v9)
  {
    v12 = [(SBSplitViewRootSwitcherModifier *)self _routingModifierForEvent:v8, v14.receiver, v14.super_class];

    if (v12)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  routingModifier = self->_routingModifier;
  if (routingModifier)
  {
    v6 = [(SBChainableModifier *)routingModifier parentModifier];
    v7 = v6 != self;
  }

  else
  {
    v7 = 1;
  }

  v45.receiver = self;
  v45.super_class = SBSplitViewRootSwitcherModifier;
  v33 = [(SBChainableModifier *)&v45 handleEvent:v4];
  v8 = self->_routingModifier;
  if (v8)
  {
    v9 = [(SBChainableModifier *)v8 parentModifier];
    v10 = v9 == self;
  }

  else
  {
    v10 = 0;
  }

  if ([v4 isGestureEvent])
  {
    v11 = v4;
    v12 = [v11 type];
    if (v12 <= 5 && ((1 << v12) & 0x2C) != 0)
    {
      if (![v11 phase])
      {
        v13 = [SBGestureSwitcherModifier alloc];
        v14 = [v11 gestureID];
        v15 = [(SBGestureSwitcherModifier *)v13 initWithGestureID:v14];
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

  if ([v4 isTransitionEvent])
  {
    v18 = v4;
    if ([v18 phase] == 1)
    {
      v19 = [SBTransitionSwitcherModifier alloc];
      v20 = [v18 transitionID];
      v21 = [(SBTransitionSwitcherModifier *)v19 initWithTransitionID:v20];
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
    v39 = v4;
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
    v36 = v4;
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

- (id)_handleEvent:(id)a3
{
  v4 = a3;
  v5 = [(SBChainableModifier *)self->_fullScreenModifier parentModifier];
  v20.receiver = self;
  v20.super_class = SBSplitViewRootSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v20 _handleEvent:v4];
  routingModifier = self->_routingModifier;
  if (!routingModifier)
  {
    goto LABEL_5;
  }

  v8 = [(SBChainableModifier *)routingModifier parentModifier];

  if (!v8)
  {
    [(SBChainableModifier *)self->_fullScreenModifier setState:0];
    [(SBChainableModifier *)self addChildModifier:self->_fullScreenModifier];
    v9 = self->_routingModifier;
    self->_routingModifier = 0;
  }

  if (!self->_routingModifier)
  {
LABEL_5:
    v10 = [(SBSplitViewRootSwitcherModifier *)self _routingModifierForEvent:v4];
    if (v10)
    {
      objc_storeStrong(&self->_routingModifier, v10);
      [(SBChainableModifier *)self addChildModifier:self->_routingModifier];
      v11 = [(SBChainableModifier *)self->_fullScreenModifier parentModifier];

      if (v11)
      {
        [(SBChainableModifier *)self removeChildModifier:self->_fullScreenModifier];
      }

      if ([v4 isTransitionEvent])
      {
        v12 = [v4 unhandledCopy];
        v13 = [v12 fromAppLayout];
        [v12 setToAppLayout:v13];

        [v12 setToEnvironmentMode:{objc_msgSend(v12, "fromEnvironmentMode")}];
        [v12 setPhase:3];
        [v12 setAnimated:0];
        v14 = [(SBChainableModifier *)self->_routingModifier handleEvent:v12];
      }

      [(SBChainableModifier *)self->_routingModifier setState:0];
    }
  }

  if (!v5)
  {
    v15 = [(SBChainableModifier *)self->_fullScreenModifier parentModifier];

    if (!v15)
    {
      fullScreenModifier = self->_fullScreenModifier;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __48__SBSplitViewRootSwitcherModifier__handleEvent___block_invoke;
      v18[3] = &unk_2783A92D8;
      v18[4] = self;
      v19 = v4;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:fullScreenModifier usingBlock:v18];
    }
  }

  return v6;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBSplitViewRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"SBSplitViewRootSwitcherModifierTimerEventReason"];
  if (v4)
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
    v2 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBSplitViewRootSwitcherModifier;
    v2 = [(SBSplitViewRootSwitcherModifier *)&v4 visibleHomeAffordanceLayoutElements];
  }

  return v2;
}

@end