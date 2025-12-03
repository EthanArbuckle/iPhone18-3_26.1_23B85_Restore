@interface SBAppExposeWindowingModifier
- (SBAppExposeWindowingModifier)initWithBundleIdentifier:(id)identifier;
- (double)opacityForItem:(id)item;
- (double)reopenClosedWindowsButtonAlpha;
- (double)reopenClosedWindowsButtonScale;
- (id)_updateReopenClosedWindowsButtonPresence;
- (id)appLayout;
- (id)appLayoutToScrollToBeforeReopeningClosedWindows;
- (id)desktopSpaceDisplayItems;
- (id)recentAppLayouts;
- (void)appLayoutTapped:(id)tapped;
- (void)itemInserted:(id)inserted;
- (void)itemRemoved:(id)removed;
- (void)tappedOutsideToDismiss:(id)dismiss;
- (void)timerFired:(id)fired;
- (void)transitionDidUpdate:(id)update;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBAppExposeWindowingModifier

- (SBAppExposeWindowingModifier)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SBAppExposeWindowingModifier;
  v6 = [(SBWindowingModifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appExposeBundleIdentifier, identifier);
    v8 = objc_alloc_init(SBExposeWindowingModifier);
    [(SBChainableModifier *)v7 addChildModifier:v8];
  }

  return v7;
}

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v5];

  toAppExposeBundleID = [beginCopy toAppExposeBundleID];

  if (!toAppExposeBundleID)
  {

    [(SBWindowingModifier *)self complete];
  }
}

- (void)transitionDidUpdate:(id)update
{
  updateCopy = update;
  fromAppExposeBundleID = [updateCopy fromAppExposeBundleID];

  if (!fromAppExposeBundleID)
  {
    _updateReopenClosedWindowsButtonPresence = [(SBAppExposeWindowingModifier *)self _updateReopenClosedWindowsButtonPresence];
    [(SBWindowingModifier *)self appendResponse:_updateReopenClosedWindowsButtonPresence];

    v7 = objc_alloc_init(SBInvalidateReopenButtonTextSwitcherEventResponse);
    [(SBWindowingModifier *)self appendResponse:v7];
  }

  v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v8];

  toAppExposeBundleID = [updateCopy toAppExposeBundleID];

  if (!toAppExposeBundleID)
  {

    [(SBWindowingModifier *)self complete];
  }
}

- (void)appLayoutTapped:(id)tapped
{
  tappedCopy = tapped;
  if (([tappedCopy isHandled] & 1) == 0)
  {
    v20.receiver = self;
    v20.super_class = SBAppExposeWindowingModifier;
    appLayout = [(SBAppExposeWindowingModifier *)&v20 appLayout];
    if (appLayout)
    {
      v6 = appLayout;
      windowManagementContext = [(SBAppExposeWindowingModifier *)self windowManagementContext];
      isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];

      if ((isAutomaticStageCreationEnabled & 1) == 0)
      {
        appLayout2 = [tappedCopy appLayout];
        v10 = [appLayout2 itemForLayoutRole:{objc_msgSend(tappedCopy, "layoutRole")}];
        if (v10)
        {
          v19.receiver = self;
          v19.super_class = SBAppExposeWindowingModifier;
          appLayout3 = [(SBAppExposeWindowingModifier *)&v19 appLayout];
          v12 = appLayout3;
          if (appLayout3)
          {
            if ([appLayout3 containsItem:v10])
            {
              v18.receiver = self;
              v18.super_class = SBAppExposeWindowingModifier;
              v13 = [(SBAppExposeWindowingModifier *)&v18 appLayoutContainingAppLayout:appLayout2];
            }

            else
            {
              v13 = [v12 appLayoutByInsertingItem:v10];
            }
          }

          else
          {
            v13 = appLayout2;
          }

          v15 = v13;
          v14 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
          v16 = [(SBAppExposeWindowingModifier *)self appLayoutByBringingItemToFront:v10 inAppLayout:v15];
          [(SBSwitcherTransitionRequest *)v14 setAppLayout:v16];
        }

        else
        {
          v14 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:appLayout2];
        }

        v17 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v14 gestureInitiated:0];
        [(SBWindowingModifier *)self appendResponse:v17];
        [tappedCopy handleWithReason:@"App Expose"];
      }
    }
  }
}

- (void)tappedOutsideToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  if (([dismissCopy isHandled] & 1) == 0)
  {
    v5 = objc_opt_new();
    appLayout = [(SBAppExposeWindowingModifier *)self appLayout];
    if (appLayout)
    {
      v11.receiver = self;
      v11.super_class = SBAppExposeWindowingModifier;
      recentAppLayouts = [(SBAppExposeWindowingModifier *)&v11 recentAppLayouts];
      firstObject = [recentAppLayouts firstObject];
      [v5 setAppLayout:firstObject];

      [v5 setPeekConfiguration:2];
      [v5 setUnlockedEnvironmentMode:1];
      [v5 setBundleIdentifierForAppExpose:0];
    }

    else
    {
      v9 = +[(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest];

      v5 = v9;
    }

    v10 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v5 gestureInitiated:0];
    [(SBWindowingModifier *)self appendResponse:v10];

    [dismissCopy handleWithReason:@"App Expose"];
  }
}

- (void)itemRemoved:(id)removed
{
  if ([removed phase] == 2)
  {
    _updateReopenClosedWindowsButtonPresence = [(SBAppExposeWindowingModifier *)self _updateReopenClosedWindowsButtonPresence];
    [(SBWindowingModifier *)self appendResponse:_updateReopenClosedWindowsButtonPresence];

    v5 = objc_alloc_init(SBInvalidateReopenButtonTextSwitcherEventResponse);
    [(SBWindowingModifier *)self appendResponse:v5];
  }
}

- (void)itemInserted:(id)inserted
{
  if ([inserted phase] == 2)
  {
    _updateReopenClosedWindowsButtonPresence = [(SBAppExposeWindowingModifier *)self _updateReopenClosedWindowsButtonPresence];
    [(SBWindowingModifier *)self appendResponse:_updateReopenClosedWindowsButtonPresence];
  }
}

- (void)timerFired:(id)fired
{
  reason = [fired reason];
  v5 = [reason isEqualToString:@"kSBAppExposeReopenReason"];

  if (v5)
  {
    self->_isShowingReopenClosedWindowsButton = 1;
    v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:3];
    [(SBWindowingModifier *)self appendResponse:v6];
  }
}

- (double)reopenClosedWindowsButtonAlpha
{
  if (![(SBAppExposeWindowingModifier *)self _canShowReopenClosedWindowsButton]|| (result = 1.0, !self->_isShowingReopenClosedWindowsButton))
  {
    v4.receiver = self;
    v4.super_class = SBAppExposeWindowingModifier;
    [(SBAppExposeWindowingModifier *)&v4 reopenClosedWindowsButtonAlpha];
  }

  return result;
}

- (id)appLayoutToScrollToBeforeReopeningClosedWindows
{
  appLayouts = [(SBAppExposeWindowingModifier *)self appLayouts];
  firstObject = [appLayouts firstObject];

  if (firstObject)
  {
    visibleItems = [(SBWindowingModifier *)self visibleItems];
    v6 = [visibleItems containsObject:firstObject];

    if ((v6 & 1) == 0)
    {

      firstObject = 0;
    }
  }

  return firstObject;
}

- (double)reopenClosedWindowsButtonScale
{
  if (self->_isShowingReopenClosedWindowsButton)
  {
    return 1.0;
  }

  switcherSettings = [(SBAppExposeWindowingModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  [animationSettings reopenButtonInitialScale];
  v6 = v5;

  return v6;
}

- (double)opacityForItem:(id)item
{
  itemCopy = item;
  v5 = 1.0;
  if ([itemCopy isAppLayout])
  {
    v12.receiver = self;
    v12.super_class = SBAppExposeWindowingModifier;
    appLayouts = [(SBAppExposeWindowingModifier *)&v12 appLayouts];
    v7 = [(SBAppExposeWindowingModifier *)self adjustedAppLayoutsForAppLayouts:appLayouts];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SBAppExposeWindowingModifier_opacityForItem___block_invoke;
    v10[3] = &unk_2783A8CB8;
    v11 = itemCopy;
    v8 = [v7 bs_containsObjectPassingTest:v10];

    if (v8)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  return v5;
}

uint64_t __47__SBAppExposeWindowingModifier_opacityForItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 appLayout];
  v5 = [v3 isOrContainsAppLayout:v4];

  return v5;
}

- (id)appLayout
{
  v7.receiver = self;
  v7.super_class = SBAppExposeWindowingModifier;
  appLayout = [(SBAppExposeWindowingModifier *)&v7 appLayout];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SBAppExposeWindowingModifier_appLayout__block_invoke;
  v6[3] = &unk_2783A8C90;
  v6[4] = self;
  v4 = [appLayout appLayoutWithItemsPassingTest:v6];

  return v4;
}

uint64_t __41__SBAppExposeWindowingModifier_appLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 192)];

  return v4;
}

- (id)recentAppLayouts
{
  v11.receiver = self;
  v11.super_class = SBAppExposeWindowingModifier;
  recentAppLayouts = [(SBAppExposeWindowingModifier *)&v11 recentAppLayouts];
  windowManagementContext = [(SBAppExposeWindowingModifier *)self windowManagementContext];
  isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];

  if ((isAutomaticStageCreationEnabled & 1) == 0)
  {
    v6 = [recentAppLayouts bs_compactMap:&__block_literal_global_283];
    bs_flatten = [v6 bs_flatten];

    recentAppLayouts = bs_flatten;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__SBAppExposeWindowingModifier_recentAppLayouts__block_invoke_2;
  v10[3] = &unk_2783AE218;
  v10[4] = self;
  v8 = [recentAppLayouts bs_compactMap:v10];

  return v8;
}

id __48__SBAppExposeWindowingModifier_recentAppLayouts__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11.receiver = *(a1 + 32);
  v11.super_class = SBAppExposeWindowingModifier;
  v4 = objc_msgSendSuper2(&v11, sel_appLayout);
  v5 = [v3 isEqual:v4];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 appLayout];
  }

  else
  {
    if ([v3 containsItemWithBundleIdentifier:v6[24]])
    {
      v8 = v3;
    }

    else
    {
      v8 = 0;
    }

    v7 = v8;
  }

  v9 = v7;

  return v9;
}

- (id)desktopSpaceDisplayItems
{
  v7.receiver = self;
  v7.super_class = SBAppExposeWindowingModifier;
  desktopSpaceDisplayItems = [(SBAppExposeWindowingModifier *)&v7 desktopSpaceDisplayItems];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBAppExposeWindowingModifier_desktopSpaceDisplayItems__block_invoke;
  v6[3] = &unk_2783A8C90;
  v6[4] = self;
  v4 = [desktopSpaceDisplayItems bs_filter:v6];

  return v4;
}

uint64_t __56__SBAppExposeWindowingModifier_desktopSpaceDisplayItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 192)];

  return v4;
}

- (id)_updateReopenClosedWindowsButtonPresence
{
  _canShowReopenClosedWindowsButton = [(SBAppExposeWindowingModifier *)self _canShowReopenClosedWindowsButton];
  self->_numberOfHiddenAppLayouts = [(SBAppExposeWindowingModifier *)self numberOfHiddenAppLayoutsForBundleIdentifier:self->_appExposeBundleIdentifier];
  v4 = 0;
  if ([(SBAppExposeWindowingModifier *)self _canShowReopenClosedWindowsButton]&& !_canShowReopenClosedWindowsButton)
  {
    self->_isShowingReopenClosedWindowsButton = 0;
    switcherSettings = [(SBAppExposeWindowingModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings reopenButtonFadeInDelay];
    v8 = v7;

    objc_initWeak(&location, self);
    v9 = [SBTimerEventSwitcherEventResponse alloc];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__SBAppExposeWindowingModifier__updateReopenClosedWindowsButtonPresence__block_invoke;
    v11[3] = &unk_2783AD4A0;
    objc_copyWeak(&v12, &location);
    v4 = [(SBTimerEventSwitcherEventResponse *)v9 initWithDelay:v11 validator:@"kSBAppExposeReopenReason" reason:v8];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v4;
}

BOOL __72__SBAppExposeWindowingModifier__updateReopenClosedWindowsButtonPresence__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

@end