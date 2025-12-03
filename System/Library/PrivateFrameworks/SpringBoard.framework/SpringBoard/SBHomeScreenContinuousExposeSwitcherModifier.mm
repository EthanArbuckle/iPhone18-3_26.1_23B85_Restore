@interface SBHomeScreenContinuousExposeSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBHomeScreenContinuousExposeSwitcherModifier)init;
- (id)handleEvent:(id)event;
- (id)handleSwitcherShortcutActionEvent:(id)event;
- (id)handleTapSlideOverTongueEvent:(id)event;
- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event;
@end

@implementation SBHomeScreenContinuousExposeSwitcherModifier

- (SBHomeScreenContinuousExposeSwitcherModifier)init
{
  v6.receiver = self;
  v6.super_class = SBHomeScreenContinuousExposeSwitcherModifier;
  v2 = [(SBSwitcherModifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBHomeScreenSwitcherModifier);
    homeScreenModifier = v2->_homeScreenModifier;
    v2->_homeScreenModifier = v3;

    [(SBChainableModifier *)v2 addChildModifier:v2->_homeScreenModifier];
  }

  return v2;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  prefersStripHiddenAndDisabled = [(SBHomeScreenContinuousExposeSwitcherModifier *)self prefersStripHiddenAndDisabled];
  stripModifier = self->_stripModifier;
  if (prefersStripHiddenAndDisabled)
  {
    if (stripModifier)
    {
      [(SBWindowingModifier *)stripModifier setState:1];
      v7 = self->_stripModifier;
      self->_stripModifier = 0;
    }
  }

  else if (!stripModifier)
  {
    v8 = objc_alloc_init(SBStripLayoutWindowingModifier);
    v9 = self->_stripModifier;
    self->_stripModifier = v8;

    [(SBChainableModifier *)self addChildModifier:self->_stripModifier];
  }

  v12.receiver = self;
  v12.super_class = SBHomeScreenContinuousExposeSwitcherModifier;
  v10 = [(SBChainableModifier *)&v12 handleEvent:eventCopy];

  return v10;
}

- (id)handleTapSlideOverTongueEvent:(id)event
{
  v23[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = SBHomeScreenContinuousExposeSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v20 handleTapSlideOverTongueEvent:event];
  displayItemInSlideOver = [(SBHomeScreenContinuousExposeSwitcherModifier *)self displayItemInSlideOver];
  if (displayItemInSlideOver)
  {
    v6 = [SBAppLayout alloc];
    v23[0] = displayItemInSlideOver;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    LOBYTE(v17) = 0;
    v8 = [(SBAppLayout *)v6 initWithItems:v7 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v17 preferredDisplayOrdinal:[(SBHomeScreenContinuousExposeSwitcherModifier *)self displayOrdinal]];

    v9 = [(SBHomeScreenContinuousExposeSwitcherModifier *)self appLayoutByBringingItemToFront:displayItemInSlideOver inAppLayout:v8];

    v10 = [(SBHomeScreenContinuousExposeSwitcherModifier *)self layoutAttributesForDisplayItem:displayItemInSlideOver inAppLayout:v9];
    v11 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v9];
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    [(SBDisplayItemLayoutAttributes *)v10 slideOverConfiguration];
    BYTE1(v19) = 0;
    v12 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v10];

    v21 = displayItemInSlideOver;
    v22 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v11 setDisplayItemLayoutAttributesMap:v13];

    [v11 setSource:60];
    v14 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v11 gestureInitiated:0];
    v15 = SBAppendSwitcherModifierResponse(v14, v4);

    v4 = v15;
  }

  return v4;
}

- (id)handleSwitcherShortcutActionEvent:(id)event
{
  v24[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v21.receiver = self;
  v21.super_class = SBHomeScreenContinuousExposeSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v21 handleSwitcherShortcutActionEvent:eventCopy];
  if (([eventCopy isHandled] & 1) == 0)
  {
    windowManagementContext = [(SBHomeScreenContinuousExposeSwitcherModifier *)self windowManagementContext];
    if ([windowManagementContext isFlexibleWindowingEnabled])
    {
      shortcutActionType = [eventCopy shortcutActionType];

      if (shortcutActionType != 30)
      {
        goto LABEL_7;
      }

      windowManagementContext = [(SBHomeScreenContinuousExposeSwitcherModifier *)self displayItemInSlideOver];
      if (windowManagementContext)
      {
        v8 = [SBAppLayout alloc];
        v24[0] = windowManagementContext;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        LOBYTE(v18) = 0;
        v10 = [(SBAppLayout *)v8 initWithItems:v9 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v18 preferredDisplayOrdinal:[(SBHomeScreenContinuousExposeSwitcherModifier *)self displayOrdinal]];

        v11 = [(SBHomeScreenContinuousExposeSwitcherModifier *)self layoutAttributesForDisplayItem:windowManagementContext inAppLayout:v10];
        v12 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v10];
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        [(SBDisplayItemLayoutAttributes *)v11 slideOverConfiguration];
        BYTE1(v20) = 0;
        v13 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v11];

        v22 = windowManagementContext;
        v23 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        [v12 setDisplayItemLayoutAttributesMap:v14];

        v15 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v12 gestureInitiated:0];
        v16 = SBAppendSwitcherModifierResponse(v15, v5);

        v5 = v16;
      }
    }
  }

LABEL_7:

  return v5;
}

- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event
{
  eventCopy = event;
  v24.receiver = self;
  v24.super_class = SBHomeScreenContinuousExposeSwitcherModifier;
  v9 = [(SBChainableModifier *)&v24 responseForProposedChildResponse:response childModifier:modifier event:eventCopy];
  if ([eventCopy type] == 1)
  {
    v10 = eventCopy;
    fromAppLayout = [v10 fromAppLayout];
    toAppLayout = [v10 toAppLayout];
    fromPeekConfiguration = [v10 fromPeekConfiguration];
    toPeekConfiguration = [v10 toPeekConfiguration];
    if (fromAppLayout)
    {
      if (toAppLayout)
      {
        v15 = toPeekConfiguration;
        if (SBPeekConfigurationIsValid(fromPeekConfiguration) && !SBPeekConfigurationIsValid(v15))
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __101__SBHomeScreenContinuousExposeSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
          v18[3] = &unk_2783BEA90;
          v19 = toAppLayout;
          v20 = fromAppLayout;
          v21 = v10;
          selfCopy = self;
          v23 = fromPeekConfiguration;
          v16 = [v9 responseByTransformingResponseWithTransformer:v18];

          v9 = v16;
        }
      }
    }
  }

  return v9;
}

SBAddModifierSwitcherEventResponse *__101__SBHomeScreenContinuousExposeSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(SBAddModifierSwitcherEventResponse *a1, void *a2)
{
  v3 = a2;
  if ([v3 type] != 31)
  {
    goto LABEL_18;
  }

  v4 = [v3 modifier];
  v5 = [a1->super.super.super._validator containsAnyItemFromAppLayout:a1->_modifier];
  validator = a1->super.super.super._validator;
  if (v5)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __101__SBHomeScreenContinuousExposeSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_2;
    v41[3] = &unk_2783A8C90;
    v42 = a1->_modifier;
    v7 = [validator appLayoutWithItemsPassingTest:v41];
    if (v7 && ![a1->_level isIconZoomDisabled])
    {
      [(NSString *)a1->_key homeScreenIconFrameForAppLayout:v7];
    }

    else
    {
      v8 = *MEMORY[0x277CBF398];
      v9 = *(MEMORY[0x277CBF398] + 8);
      v10 = *(MEMORY[0x277CBF398] + 16);
      v11 = *(MEMORY[0x277CBF398] + 24);
    }

    if (CGRectIsNull(*&v8))
    {
      v19 = [SBContinuousExposeAppToAppModifier alloc];
      v20 = [a1->_level transitionID];
      modifier = a1->_modifier;
      v36 = v4;
      v22 = [a1->_level fromInterfaceOrientation];
      v23 = [a1->_level toAppLayout];
      v24 = [a1->_level toInterfaceOrientation];
      v25 = [a1->_level fromDisplayItemLayoutAttributesMap];
      v26 = [a1->_level toDisplayItemLayoutAttributesMap];
      v27 = [(SBContinuousExposeAppToAppModifier *)v19 initWithTransitionID:v20 fromAppLayout:modifier fromInterfaceOrientation:v22 toAppLayout:v23 toInterfaceOrientation:v24 fromDisplayItemLayoutAttributesMap:v25 toDisplayItemLayoutAttributesMap:v26];
    }

    else
    {
      v28 = [SBFullScreenToHomeIconZoomSwitcherModifier alloc];
      v29 = [a1->_level transitionID];
      v23 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)v28 initWithTransitionID:v29 appLayout:v7 direction:0];

      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v23 setShouldForceDefaultAnchorPointForTransition:1];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v23 setShouldDockOrderFrontDuringTransition:1];
      v20 = [(NSString *)a1->_key homeScreenIconLocationForAppLayout:v7];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v23 setShouldUpdateIconViewVisibility:SBIconLocationGroupContainsLocation() ^ 1];
      v27 = [[SBHomePeekToFullScreenTransitionModifier alloc] initWithTransitionModifier:v23 slidingOffPeekingAppLayout:0 fromPeekingConfiguration:1];
    }

    a1 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v27 level:3];
    goto LABEL_19;
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __101__SBHomeScreenContinuousExposeSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_3;
  v39[3] = &unk_2783A8C90;
  v40 = a1->_modifier;
  v12 = [validator appLayoutWithItemsPassingTest:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __101__SBHomeScreenContinuousExposeSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke_4;
  v37[3] = &unk_2783A8C90;
  v13 = a1->_modifier;
  v38 = a1->super.super.super._validator;
  v14 = [(SBSwitcherModifier *)v13 appLayoutWithItemsPassingTest:v37];
  if (v12 && ![a1->_level isIconZoomDisabled])
  {
    [(NSString *)a1->_key homeScreenIconFrameForAppLayout:v12];
  }

  else
  {
    v15 = *MEMORY[0x277CBF398];
    v16 = *(MEMORY[0x277CBF398] + 8);
    v17 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  IsNull = CGRectIsNull(*&v15);
  if (!IsNull)
  {
    v31 = [SBFullScreenToHomeIconZoomSwitcherModifier alloc];
    v32 = [a1->_level transitionID];
    v33 = [(SBFullScreenToHomeIconZoomSwitcherModifier *)v31 initWithTransitionID:v32 appLayout:v12 direction:0];

    [(SBFullScreenToHomeIconZoomSwitcherModifier *)v33 setShouldForceDefaultAnchorPointForTransition:1];
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)v33 setShouldDockOrderFrontDuringTransition:1];
    v34 = [(NSString *)a1->_key homeScreenIconLocationForAppLayout:v12];
    [(SBFullScreenToHomeIconZoomSwitcherModifier *)v33 setShouldUpdateIconViewVisibility:SBIconLocationGroupContainsLocation() ^ 1];
    v4 = [[SBHomePeekToFullScreenTransitionModifier alloc] initWithTransitionModifier:v33 slidingOffPeekingAppLayout:v14 fromPeekingConfiguration:a1[1].super.super.super.super.isa];

    a1 = [[SBAddModifierSwitcherEventResponse alloc] initWithModifier:v4 level:3];
  }

  if (IsNull)
  {
LABEL_18:
    a1 = v3;
  }

LABEL_19:

  return a1;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBHomeScreenContinuousExposeSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  displayItemLayoutAttributesCalculator = [(SBHomeScreenContinuousExposeSwitcherModifier *)self displayItemLayoutAttributesCalculator];
  v8 = [(SBHomeScreenContinuousExposeSwitcherModifier *)self appLayoutContainingAppLayout:v6];
  switcherInterfaceOrientation = [(SBHomeScreenContinuousExposeSwitcherModifier *)self switcherInterfaceOrientation];
  [(SBHomeScreenContinuousExposeSwitcherModifier *)self floatingDockHeight];
  v49 = v10;
  [(SBHomeScreenContinuousExposeSwitcherModifier *)self screenScale];
  v48 = v11;
  [(SBHomeScreenContinuousExposeSwitcherModifier *)self containerViewBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  isDisplayEmbedded = [(SBHomeScreenContinuousExposeSwitcherModifier *)self isDisplayEmbedded];
  prefersStripHidden = [(SBHomeScreenContinuousExposeSwitcherModifier *)self prefersStripHidden];
  prefersDockHidden = [(SBHomeScreenContinuousExposeSwitcherModifier *)self prefersDockHidden];
  [(SBHomeScreenContinuousExposeSwitcherModifier *)self leftStatusBarPartIntersectionRegion];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(SBHomeScreenContinuousExposeSwitcherModifier *)self rightStatusBarPartIntersectionRegion];
  v35 = [displayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:v8 containerOrientation:switcherInterfaceOrientation floatingDockHeight:isDisplayEmbedded screenScale:prefersStripHidden bounds:prefersDockHidden isEmbeddedDisplay:v49 prefersStripHidden:v48 prefersDockHidden:v13 leftStatusBarPartIntersectionRegion:v15 rightStatusBarPartIntersectionRegion:{v17, v19, v24, v26, v28, v30, v31, v32, v33, v34}];

  [v35 boundingBox];
  v37 = v36;
  v39 = v38;
  v50.receiver = self;
  v50.super_class = SBHomeScreenContinuousExposeSwitcherModifier;
  [(SBHomeScreenContinuousExposeSwitcherModifier *)&v50 frameForIndex:index];
  UIRectGetCenter();
  v41 = v40 - v37 * 0.5;
  v43 = v42 - v39 * 0.5;

  v44 = v41;
  v45 = v43;
  v46 = v37;
  v47 = v39;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

@end