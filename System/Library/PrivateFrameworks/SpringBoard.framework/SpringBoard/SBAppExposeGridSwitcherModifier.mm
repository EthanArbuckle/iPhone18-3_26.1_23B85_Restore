@interface SBAppExposeGridSwitcherModifier
- (CGSize)floatingCardSize;
- (CGSize)fullScreenCardSize;
- (SBAppExposeGridSwitcherModifier)initWithBundleIdentifier:(id)identifier fullScreenCardSize:(CGSize)size floatingCardSize:(CGSize)cardSize;
- (double)reopenClosedWindowsButtonAlpha;
- (double)reopenClosedWindowsButtonScale;
- (id)_updateReopenClosedWindowsButtonPresence;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)appLayoutToScrollToBeforeReopeningClosedWindows;
- (id)copyWithZone:(_NSZone *)zone;
- (id)handleInsertionEvent:(id)event;
- (id)handleRemovalEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBAppExposeGridSwitcherModifier

- (SBAppExposeGridSwitcherModifier)initWithBundleIdentifier:(id)identifier fullScreenCardSize:(CGSize)size floatingCardSize:(CGSize)cardSize
{
  height = cardSize.height;
  width = cardSize.width;
  v7 = size.height;
  v8 = size.width;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SBAppExposeGridSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v11->_fullScreenCardSize.width = v8;
    v11->_fullScreenCardSize.height = v7;
    v11->_floatingCardSize.width = width;
    v11->_floatingCardSize.height = height;
    v11->_reversesFloatingCardDirection = 1;
  }

  return v11;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v7.receiver = self;
  v7.super_class = SBAppExposeGridSwitcherModifier;
  [(SBChainableModifier *)&v7 didMoveToParentModifier:?];
  if (modifier)
  {
    if (!self->_mixedGridModifier)
    {
      v5 = [[SBMixedGridSwitcherModifier alloc] initWithFullScreenCardSize:self->_fullScreenCardSize.width floatingCardSize:self->_fullScreenCardSize.height, self->_floatingCardSize.width, self->_floatingCardSize.height];
      mixedGridModifier = self->_mixedGridModifier;
      self->_mixedGridModifier = v5;

      [(SBMixedGridSwitcherModifier *)self->_mixedGridModifier setMaximumNumberOfFullScreenCardsForSingleRow:2];
      [(SBMixedGridSwitcherModifier *)self->_mixedGridModifier setLowDensityGridLayoutAlignment:1];
      [(SBMixedGridSwitcherModifier *)self->_mixedGridModifier setReversesFloatingCardDirection:self->_reversesFloatingCardDirection];
      [(SBChainableModifier *)self addChildModifier:self->_mixedGridModifier];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBAppExposeGridSwitcherModifier;
  v4 = [(SBChainableModifier *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_bundleIdentifier copy];
  v6 = *(v4 + 22);
  *(v4 + 22) = v5;

  *(v4 + 184) = self->_fullScreenCardSize;
  *(v4 + 200) = self->_floatingCardSize;
  v4[169] = self->_reversesFloatingCardDirection;
  return v4;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBAppExposeGridSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handleTransitionEvent:eventCopy];
  if ([eventCopy toEnvironmentMode] == 2 && objc_msgSend(eventCopy, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  fromAppExposeBundleID = [eventCopy fromAppExposeBundleID];
  if (fromAppExposeBundleID)
  {
    v7 = fromAppExposeBundleID;
  }

  else
  {
    if ([eventCopy phase] != 2)
    {
      goto LABEL_9;
    }

    _updateReopenClosedWindowsButtonPresence = [(SBAppExposeGridSwitcherModifier *)self _updateReopenClosedWindowsButtonPresence];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:_updateReopenClosedWindowsButtonPresence toResponse:v5];

    v7 = objc_alloc_init(SBInvalidateReopenButtonTextSwitcherEventResponse);
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v9];
  }

LABEL_9:

  return v5;
}

- (id)handleRemovalEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBAppExposeGridSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleRemovalEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 2)
  {
    _updateReopenClosedWindowsButtonPresence = [(SBAppExposeGridSwitcherModifier *)self _updateReopenClosedWindowsButtonPresence];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:_updateReopenClosedWindowsButtonPresence toResponse:v5];

    v9 = objc_alloc_init(SBInvalidateReopenButtonTextSwitcherEventResponse);
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v8];
  }

  return v5;
}

- (id)handleInsertionEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBAppExposeGridSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleInsertionEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 2)
  {
    _updateReopenClosedWindowsButtonPresence = [(SBAppExposeGridSwitcherModifier *)self _updateReopenClosedWindowsButtonPresence];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:_updateReopenClosedWindowsButtonPresence toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBAppExposeGridSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"kSBAppExposeModifierShowReopenButtonReason"];
  if (eventCopy)
  {
    self->_isShowingReopenClosedWindowsButton = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v18 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(SBMixedGridSwitcherModifier *)self->_mixedGridModifier adjustedAppLayoutsForAppLayouts:layoutsCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 containsItemWithBundleIdentifier:self->_bundleIdentifier])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (double)reopenClosedWindowsButtonAlpha
{
  if (![(SBAppExposeGridSwitcherModifier *)self _canShowReopenClosedWindowsButton]|| (result = 1.0, !self->_isShowingReopenClosedWindowsButton))
  {
    v4.receiver = self;
    v4.super_class = SBAppExposeGridSwitcherModifier;
    [(SBAppExposeGridSwitcherModifier *)&v4 reopenClosedWindowsButtonAlpha];
  }

  return result;
}

- (double)reopenClosedWindowsButtonScale
{
  if (self->_isShowingReopenClosedWindowsButton)
  {
    return 1.0;
  }

  switcherSettings = [(SBAppExposeGridSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings reopenButtonInitialScale];
  v6 = v5;

  return v6;
}

- (id)appLayoutToScrollToBeforeReopeningClosedWindows
{
  appLayouts = [(SBAppExposeGridSwitcherModifier *)self appLayouts];
  if ([(SBMixedGridSwitcherModifier *)self->_mixedGridModifier numberOfFloatingAppLayouts])
  {
    v4 = [(SBMixedGridSwitcherModifier *)self->_mixedGridModifier indexOfFirstMainAppLayoutFromAppLayouts:appLayouts];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [appLayouts lastObject];
    }

    else
    {
      [appLayouts objectAtIndex:v4 - 1];
    }
    firstObject = ;
  }

  else
  {
    firstObject = [appLayouts firstObject];
  }

  v6 = firstObject;
  if (firstObject && -[SBMixedGridSwitcherModifier isIndexVisible:](self->_mixedGridModifier, "isIndexVisible:", [appLayouts indexOfObject:firstObject]))
  {

    v6 = 0;
  }

  return v6;
}

- (id)_updateReopenClosedWindowsButtonPresence
{
  _canShowReopenClosedWindowsButton = [(SBAppExposeGridSwitcherModifier *)self _canShowReopenClosedWindowsButton];
  self->_numberOfHiddenAppLayouts = [(SBAppExposeGridSwitcherModifier *)self numberOfHiddenAppLayoutsForBundleIdentifier:self->_bundleIdentifier];
  v4 = 0;
  if ([(SBAppExposeGridSwitcherModifier *)self _canShowReopenClosedWindowsButton]&& !_canShowReopenClosedWindowsButton)
  {
    self->_isShowingReopenClosedWindowsButton = 0;
    switcherSettings = [(SBAppExposeGridSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings reopenButtonFadeInDelay];
    v8 = v7;

    objc_initWeak(&location, self);
    v9 = [SBTimerEventSwitcherEventResponse alloc];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __75__SBAppExposeGridSwitcherModifier__updateReopenClosedWindowsButtonPresence__block_invoke;
    v11[3] = &unk_2783AD4A0;
    objc_copyWeak(&v12, &location);
    v4 = [(SBTimerEventSwitcherEventResponse *)v9 initWithDelay:v11 validator:@"kSBAppExposeModifierShowReopenButtonReason" reason:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v4;
}

BOOL __75__SBAppExposeGridSwitcherModifier__updateReopenClosedWindowsButtonPresence__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (CGSize)fullScreenCardSize
{
  width = self->_fullScreenCardSize.width;
  height = self->_fullScreenCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)floatingCardSize
{
  width = self->_floatingCardSize.width;
  height = self->_floatingCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end