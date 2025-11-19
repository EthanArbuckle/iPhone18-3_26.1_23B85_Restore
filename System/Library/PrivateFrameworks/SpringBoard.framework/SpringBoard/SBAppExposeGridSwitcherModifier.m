@interface SBAppExposeGridSwitcherModifier
- (CGSize)floatingCardSize;
- (CGSize)fullScreenCardSize;
- (SBAppExposeGridSwitcherModifier)initWithBundleIdentifier:(id)a3 fullScreenCardSize:(CGSize)a4 floatingCardSize:(CGSize)a5;
- (double)reopenClosedWindowsButtonAlpha;
- (double)reopenClosedWindowsButtonScale;
- (id)_updateReopenClosedWindowsButtonPresence;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)appLayoutToScrollToBeforeReopeningClosedWindows;
- (id)copyWithZone:(_NSZone *)a3;
- (id)handleInsertionEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBAppExposeGridSwitcherModifier

- (SBAppExposeGridSwitcherModifier)initWithBundleIdentifier:(id)a3 fullScreenCardSize:(CGSize)a4 floatingCardSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v10 = a3;
  v15.receiver = self;
  v15.super_class = SBAppExposeGridSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
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

- (void)didMoveToParentModifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBAppExposeGridSwitcherModifier;
  [(SBChainableModifier *)&v7 didMoveToParentModifier:?];
  if (a3)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBAppExposeGridSwitcherModifier;
  v4 = [(SBChainableModifier *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_bundleIdentifier copy];
  v6 = *(v4 + 22);
  *(v4 + 22) = v5;

  *(v4 + 184) = self->_fullScreenCardSize;
  *(v4 + 200) = self->_floatingCardSize;
  v4[169] = self->_reversesFloatingCardDirection;
  return v4;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBAppExposeGridSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handleTransitionEvent:v4];
  if ([v4 toEnvironmentMode] == 2 && objc_msgSend(v4, "fromEnvironmentMode") != 2)
  {
    self->_previousContentOffset = SBInvalidPoint;
    self->_isScrollingForward = 1;
  }

  v6 = [v4 fromAppExposeBundleID];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if ([v4 phase] != 2)
    {
      goto LABEL_9;
    }

    v8 = [(SBAppExposeGridSwitcherModifier *)self _updateReopenClosedWindowsButtonPresence];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

    v7 = objc_alloc_init(SBInvalidateReopenButtonTextSwitcherEventResponse);
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v9];
  }

LABEL_9:

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBAppExposeGridSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v11 handleRemovalEvent:v4];
  v6 = [v4 phase];

  if (v6 == 2)
  {
    v7 = [(SBAppExposeGridSwitcherModifier *)self _updateReopenClosedWindowsButtonPresence];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v9 = objc_alloc_init(SBInvalidateReopenButtonTextSwitcherEventResponse);
    v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v8];
  }

  return v5;
}

- (id)handleInsertionEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBAppExposeGridSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleInsertionEvent:v4];
  v6 = [v4 phase];

  if (v6 == 2)
  {
    v7 = [(SBAppExposeGridSwitcherModifier *)self _updateReopenClosedWindowsButtonPresence];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBAppExposeGridSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"kSBAppExposeModifierShowReopenButtonReason"];
  if (v4)
  {
    self->_isShowingReopenClosedWindowsButton = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(SBMixedGridSwitcherModifier *)self->_mixedGridModifier adjustedAppLayoutsForAppLayouts:v4];
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

  v3 = [(SBAppExposeGridSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];
  [v4 reopenButtonInitialScale];
  v6 = v5;

  return v6;
}

- (id)appLayoutToScrollToBeforeReopeningClosedWindows
{
  v3 = [(SBAppExposeGridSwitcherModifier *)self appLayouts];
  if ([(SBMixedGridSwitcherModifier *)self->_mixedGridModifier numberOfFloatingAppLayouts])
  {
    v4 = [(SBMixedGridSwitcherModifier *)self->_mixedGridModifier indexOfFirstMainAppLayoutFromAppLayouts:v3];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v3 lastObject];
    }

    else
    {
      [v3 objectAtIndex:v4 - 1];
    }
    v5 = ;
  }

  else
  {
    v5 = [v3 firstObject];
  }

  v6 = v5;
  if (v5 && -[SBMixedGridSwitcherModifier isIndexVisible:](self->_mixedGridModifier, "isIndexVisible:", [v3 indexOfObject:v5]))
  {

    v6 = 0;
  }

  return v6;
}

- (id)_updateReopenClosedWindowsButtonPresence
{
  v3 = [(SBAppExposeGridSwitcherModifier *)self _canShowReopenClosedWindowsButton];
  self->_numberOfHiddenAppLayouts = [(SBAppExposeGridSwitcherModifier *)self numberOfHiddenAppLayoutsForBundleIdentifier:self->_bundleIdentifier];
  v4 = 0;
  if ([(SBAppExposeGridSwitcherModifier *)self _canShowReopenClosedWindowsButton]&& !v3)
  {
    self->_isShowingReopenClosedWindowsButton = 0;
    v5 = [(SBAppExposeGridSwitcherModifier *)self switcherSettings];
    v6 = [v5 animationSettings];
    [v6 reopenButtonFadeInDelay];
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