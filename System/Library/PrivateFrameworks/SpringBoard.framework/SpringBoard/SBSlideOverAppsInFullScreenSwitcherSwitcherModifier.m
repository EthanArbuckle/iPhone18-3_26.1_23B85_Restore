@interface SBSlideOverAppsInFullScreenSwitcherSwitcherModifier
- (id)_handleEvent:(id)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
@end

@implementation SBSlideOverAppsInFullScreenSwitcherSwitcherModifier

- (id)_handleEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBSlideOverAppsInFullScreenSwitcherSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 _handleEvent:v4];
  if (!self->_haveInvalidatedAppLayouts)
  {
    self->_haveInvalidatedAppLayouts = 1;
    v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v7 = SBAppendChainableModifierResponse(v6, v5);

    v5 = v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isExitingAnyPeekEvent])
  {
    [(SBChainableModifier *)self setState:1];
    v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v9 = SBAppendChainableModifierResponse(v8, v5);

    v5 = v9;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__SBSlideOverAppsInFullScreenSwitcherSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v8[3] = &unk_2783C0D00;
  v8[4] = self;
  v4 = [a3 bs_compactMap:v8];
  v7.receiver = self;
  v7.super_class = SBSlideOverAppsInFullScreenSwitcherSwitcherModifier;
  v5 = [(SBSlideOverAppsInFullScreenSwitcherSwitcherModifier *)&v7 adjustedAppLayoutsForAppLayouts:v4];

  return v5;
}

id __87__SBSlideOverAppsInFullScreenSwitcherSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isAppLayoutMostRecentRepresentationOfDisplayItems:v3])
  {
    if ([v3 environment] == 2)
    {
      v4 = [v3 appLayoutByModifyingEnvironment:1];
    }

    else
    {
      v4 = v3;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end