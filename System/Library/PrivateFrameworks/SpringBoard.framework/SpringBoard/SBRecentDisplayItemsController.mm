@interface SBRecentDisplayItemsController
- (BOOL)_displayItem:(id)a3 matchesBundleID:(id)a4;
- (BOOL)_displayItemIsExecutableOnCurrentPlatform:(id)a3;
- (BOOL)_displayItemRepresentsAppClip:(id)a3;
- (BOOL)_isDisallowedDisplayItem:(id)a3;
- (SBRecentDisplayItemsController)initWithRemovalPersonality:(int64_t)a3 movePersonality:(int64_t)a4 transitionFromSources:(id)a5 maxDisplayItems:(unint64_t)a6 eventSource:(id)a7 applicationController:(id)a8 iconModelProvider:(id)a9;
- (SBRecentDisplayItemsControllerDelegate)delegate;
- (id)_addStateCaptureHandler;
- (id)_allDisplayItemsForBundleID:(id)a3;
- (id)_allDisplayItemsForUniqueID:(id)a3;
- (id)_allDisplayItemsForWebClipID:(id)a3;
- (id)_allDisplayItemsPassingTest:(id)a3;
- (id)_associatedWebClipIdentifierForAppClipIdentifier:(id)a3 sceneIdentifier:(id)a4;
- (id)_displayItemForLayoutElement:(id)a3;
- (id)_firstDisplayItemForBundleID:(id)a3;
- (id)_firstDisplayItemForUniqueID:(id)a3;
- (id)_webClipForIdentifier:(id)a3;
- (void)_addDisplayItemToFront:(id)a3;
- (void)_addOrMoveDisplayItemToFront:(id)a3;
- (void)_applicationsBecameHidden:(id)a3;
- (void)_clearDelayAfterTransitionTimer;
- (void)_disallowAppFromAppearingWhileHidden:(id)a3;
- (void)_moveDisplayItemToFront:(id)a3;
- (void)_removeDisplayItem:(id)a3;
- (void)_setupDelayAfterTransitionTimerForActivatingElement:(id)a3;
- (void)dealloc;
- (void)eventSource:(id)a3 didBeginTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7;
- (void)eventSource:(id)a3 keyboardFocusChangedToApplication:(id)a4;
- (void)eventSource:(id)a3 userDeletedApplications:(id)a4;
- (void)eventSource:(id)a3 userDeletedWebBookmark:(id)a4;
- (void)eventSource:(id)a3 userQuitApplicationInSwitcher:(id)a4;
- (void)eventSource:(id)a3 userRemovedSuggestions:(id)a4;
- (void)eventSource:(id)a3 userTouchedApplication:(id)a4;
- (void)setRecentDisplayItems:(id)a3;
@end

@implementation SBRecentDisplayItemsController

- (SBRecentDisplayItemsController)initWithRemovalPersonality:(int64_t)a3 movePersonality:(int64_t)a4 transitionFromSources:(id)a5 maxDisplayItems:(unint64_t)a6 eventSource:(id)a7 applicationController:(id)a8 iconModelProvider:(id)a9
{
  v26 = a5;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = SBRecentDisplayItemsController;
  v19 = [(SBRecentDisplayItemsController *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_removalPersonality = a3;
    v19->_movePersonality = a4;
    objc_storeStrong(&v19->_relevantTransitionFromSources, a5);
    v20->_maxDisplayItems = a6;
    objc_storeStrong(&v20->_appController, a8);
    objc_storeStrong(&v20->_iconModelProvider, a9);
    [v16 addObserver:v20];
    v21 = [(SBRecentDisplayItemsController *)v20 _addStateCaptureHandler];
    stateCaptureInvalidatable = v20->_stateCaptureInvalidatable;
    v20->_stateCaptureInvalidatable = v21;

    v23 = +[SBHomeGestureDomain rootSettings];
    homeGestureSettings = v20->_homeGestureSettings;
    v20->_homeGestureSettings = v23;
  }

  return v20;
}

- (void)setRecentDisplayItems:(id)a3
{
  v4 = [MEMORY[0x277CBEB40] orderedSetWithOrderedSet:a3];
  recentDisplayItems = self->_recentDisplayItems;
  self->_recentDisplayItems = v4;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  v3.receiver = self;
  v3.super_class = SBRecentDisplayItemsController;
  [(SBRecentDisplayItemsController *)&v3 dealloc];
}

- (void)eventSource:(id)a3 userRemovedSuggestions:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  obj = a4;
  if ((self->_removalPersonality & 8) != 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __69__SBRecentDisplayItemsController_eventSource_userRemovedSuggestions___block_invoke;
          v20[3] = &unk_2783A8C90;
          v20[4] = v9;
          v10 = [(SBRecentDisplayItemsController *)self _allDisplayItemsPassingTest:v20];
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [(SBRecentDisplayItemsController *)self _removeDisplayItem:*(*(&v16 + 1) + 8 * v14++)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }
  }
}

uint64_t __69__SBRecentDisplayItemsController_eventSource_userRemovedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 uniqueIdentifier];
    v5 = [v6 isEqualToString:*(a1 + 32)];
  }

  return v5;
}

- (void)eventSource:(id)a3 userDeletedApplications:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = v5;
  if ((self->_removalPersonality & 4) != 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = [(SBRecentDisplayItemsController *)self _allDisplayItemsForBundleID:v11, 0];
          v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v18;
            do
            {
              v16 = 0;
              do
              {
                if (*v18 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [(SBRecentDisplayItemsController *)self _removeDisplayItem:*(*(&v17 + 1) + 8 * v16++)];
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v14);
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }
  }
}

- (void)eventSource:(id)a3 userTouchedApplication:(id)a4
{
  if ((self->_movePersonality & 2) != 0)
  {
    v6 = a4;
    [(SBRecentDisplayItemsController *)self _clearDelayAfterTransitionTimer];
    v7 = [(SBRecentDisplayItemsController *)self _firstDisplayItemForBundleID:v6];

    [(SBRecentDisplayItemsController *)self _moveDisplayItemToFront:v7];
  }
}

- (void)eventSource:(id)a3 keyboardFocusChangedToApplication:(id)a4
{
  if ((self->_movePersonality & 4) != 0)
  {
    v6 = [(SBRecentDisplayItemsController *)self _firstDisplayItemForBundleID:a4];
    [(SBRecentDisplayItemsController *)self _moveDisplayItemToFront:v6];
  }
}

- (void)eventSource:(id)a3 didBeginTransitionToMode:(int64_t)a4 withLayoutState:(id)a5 activatingElement:(id)a6 triggeredBy:(int64_t)a7
{
  v28 = a3;
  v12 = a5;
  v13 = a6;
  if (a4 == 1)
  {
    if ((self->_movePersonality & 1) == 0)
    {
      goto LABEL_18;
    }

    v25 = +[SBDisplayItem homeScreenDisplayItem];
    [(SBRecentDisplayItemsController *)self _moveDisplayItemToFront:v25];
    goto LABEL_17;
  }

  if (a4 == 3)
  {
    [(SBRecentDisplayItemsController *)self _clearDelayAfterTransitionTimer];
    movePersonality = self->_movePersonality;
    if ((movePersonality & 0x10) != 0)
    {
      v15 = [v12 elementWithRole:3];
      v16 = [(SBRecentDisplayItemsController *)self _displayItemForLayoutElement:v15];
      [(SBRecentDisplayItemsController *)self _addOrMoveDisplayItemToFront:v16];

      v17 = [v12 elementWithRole:2];
      v18 = [(SBRecentDisplayItemsController *)self _displayItemForLayoutElement:v17];
      [(SBRecentDisplayItemsController *)self _addOrMoveDisplayItemToFront:v18];

      v19 = [v12 elementWithRole:1];
      v20 = [(SBRecentDisplayItemsController *)self _displayItemForLayoutElement:v19];
      [(SBRecentDisplayItemsController *)self _addOrMoveDisplayItemToFront:v20];

      movePersonality = self->_movePersonality;
    }

    if ((movePersonality & 8) != 0)
    {
      relevantTransitionFromSources = self->_relevantTransitionFromSources;
      if (!relevantTransitionFromSources || ([MEMORY[0x277CCABB0] numberWithInteger:a7], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSSet containsObject:](relevantTransitionFromSources, "containsObject:", v22), v22, v23))
      {
        if (v13)
        {
          v24 = v13;
        }

        else
        {
          v24 = [v12 elementWithRole:1];
        }

        v25 = v24;
        if (a7 == 11 && ([(SBHomeGestureSettings *)self->_homeGestureSettings secondsToResetSwitcherListAfterTransition], v26 > 0.0))
        {
          [(SBRecentDisplayItemsController *)self _setupDelayAfterTransitionTimerForActivatingElement:v25];
        }

        else
        {
          v27 = [(SBRecentDisplayItemsController *)self _displayItemForLayoutElement:v25];
          [(SBRecentDisplayItemsController *)self _addOrMoveDisplayItemToFront:v27];
        }

LABEL_17:
      }
    }
  }

LABEL_18:
}

- (void)eventSource:(id)a3 userQuitApplicationInSwitcher:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_removalPersonality)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(SBRecentDisplayItemsController *)self _allDisplayItemsForBundleID:a4, 0];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(SBRecentDisplayItemsController *)self _removeDisplayItem:*(*(&v10 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)eventSource:(id)a3 userDeletedWebBookmark:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if ((self->_removalPersonality & 4) != 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [a4 webClip];
    v6 = [v5 identifier];
    v7 = [(SBRecentDisplayItemsController *)self _allDisplayItemsForWebClipID:v6];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(SBRecentDisplayItemsController *)self _removeDisplayItem:*(*(&v12 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_clearDelayAfterTransitionTimer
{
  [(NSTimer *)self->_delayAfterTransitionTimer invalidate];
  delayAfterTransitionTimer = self->_delayAfterTransitionTimer;
  self->_delayAfterTransitionTimer = 0;
}

- (void)_setupDelayAfterTransitionTimerForActivatingElement:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CBEBB8];
  [(SBHomeGestureSettings *)self->_homeGestureSettings secondsToResetSwitcherListAfterTransition];
  v7 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__SBRecentDisplayItemsController__setupDelayAfterTransitionTimerForActivatingElement___block_invoke;
  v12[3] = &unk_2783AF5B0;
  objc_copyWeak(&v14, &location);
  v8 = v4;
  v13 = v8;
  v9 = [v5 timerWithTimeInterval:0 repeats:v12 block:v7];
  delayAfterTransitionTimer = self->_delayAfterTransitionTimer;
  self->_delayAfterTransitionTimer = v9;

  v11 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v11 addTimer:self->_delayAfterTransitionTimer forMode:*MEMORY[0x277CBE738]];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __86__SBRecentDisplayItemsController__setupDelayAfterTransitionTimerForActivatingElement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _displayItemForLayoutElement:*(a1 + 32)];
  [WeakRetained _addOrMoveDisplayItemToFront:v2];

  [WeakRetained _clearDelayAfterTransitionTimer];
}

- (BOOL)_displayItemIsExecutableOnCurrentPlatform:(id)a3
{
  v4 = a3;
  if ([v4 type])
  {
    v5 = 1;
  }

  else
  {
    appController = self->_appController;
    v7 = [v4 bundleIdentifier];
    v8 = [(SBApplicationController *)appController applicationWithBundleIdentifier:v7];

    v9 = [v8 info];
    if ([v9 supports64Bit])
    {
      v5 = 1;
    }

    else
    {
      v10 = +[SBApplicationPlaceholderController sharedInstance];
      v11 = [v4 bundleIdentifier];
      v12 = [v10 placeholderForDisplayID:v11];
      v5 = [v12 isAppClip];
    }
  }

  return v5;
}

- (BOOL)_isDisallowedDisplayItem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [MEMORY[0x277CBEA60] arrayWithObjects:{@"com.apple.purplebuddy", 0}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v3 bundleIdentifier];
        LOBYTE(v8) = [v9 isEqualToString:v8];

        if (v8)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)_firstDisplayItemForUniqueID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_recentDisplayItems;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_displayItem:(id)a3 matchesBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 5 && -[SBRecentDisplayItemsController _displayItemRepresentsAppClip:](self, "_displayItemRepresentsAppClip:", v6))
  {
    v8 = [v6 uniqueIdentifier];
    v9 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v8];

    v10 = [(SBRecentDisplayItemsController *)self _webClipForIdentifier:v9];
    v11 = [v10 applicationBundleIdentifier];
    v12 = [v11 isEqualToString:v7];
  }

  else
  {
    v9 = [v6 bundleIdentifier];
    v12 = [v9 isEqualToString:v7];
  }

  return v12;
}

- (id)_firstDisplayItemForBundleID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_recentDisplayItems;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(SBRecentDisplayItemsController *)self _displayItem:v10 matchesBundleID:v4, v13])
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)_allDisplayItemsForBundleID:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SBRecentDisplayItemsController__allDisplayItemsForBundleID___block_invoke;
  v8[3] = &unk_2783AF5D8;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(SBRecentDisplayItemsController *)self _allDisplayItemsPassingTest:v8];

  return v6;
}

- (id)_allDisplayItemsForUniqueID:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SBRecentDisplayItemsController__allDisplayItemsForUniqueID___block_invoke;
  v8[3] = &unk_2783A8C90;
  v9 = v4;
  v5 = v4;
  v6 = [(SBRecentDisplayItemsController *)self _allDisplayItemsPassingTest:v8];

  return v6;
}

uint64_t __62__SBRecentDisplayItemsController__allDisplayItemsForUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_allDisplayItemsForWebClipID:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SBRecentDisplayItemsController__allDisplayItemsForWebClipID___block_invoke;
  v8[3] = &unk_2783A8C90;
  v9 = v4;
  v5 = v4;
  v6 = [(SBRecentDisplayItemsController *)self _allDisplayItemsPassingTest:v8];

  return v6;
}

uint64_t __63__SBRecentDisplayItemsController__allDisplayItemsForWebClipID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 5)
  {
    v4 = [v3 uniqueIdentifier];
    v5 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v4];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_allDisplayItemsPassingTest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_recentDisplayItems;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEB18] array];
          }

          [v8 addObject:{v11, v13}];
        }
      }

      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_displayItemForLayoutElement:(id)a3
{
  v3 = a3;
  v4 = [v3 workspaceEntity];
  if ([v4 isApplicationSceneEntity])
  {
    v5 = [v4 application];
    if ([v5 isWebApplication])
    {
      v6 = [v3 uniqueIdentifier];
      v7 = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:v6];
LABEL_8:

      goto LABEL_9;
    }

    v6 = [v5 bundleIdentifier];
    v8 = [v3 uniqueIdentifier];
LABEL_7:
    v9 = v8;
    v7 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:v6 sceneIdentifier:v8];

    goto LABEL_8;
  }

  if ([v4 isAppClipPlaceholderEntity])
  {
    v5 = [v4 appClipPlaceholderEntity];
    v6 = [v5 bundleIdentifier];
    v8 = [v5 futureSceneIdentifier];
    goto LABEL_7;
  }

  if ([v4 isHomeScreenEntity])
  {
    v7 = +[SBDisplayItem homeScreenDisplayItem];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (void)_addOrMoveDisplayItemToFront:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 type])
  {
    v5 = [(SBRecentDisplayItemsController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 recentDisplayItemsControllerShouldRepresentAppClipsAsWebClips:self] && -[SBRecentDisplayItemsController _displayItemRepresentsAppClip:](self, "_displayItemRepresentsAppClip:", v4))
    {
      v6 = [v4 bundleIdentifier];
      v7 = [v4 uniqueIdentifier];
      v8 = [(SBRecentDisplayItemsController *)self _associatedWebClipIdentifierForAppClipIdentifier:v6 sceneIdentifier:v7];

      if (!v8)
      {

        goto LABEL_21;
      }

      v9 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v8];
      v10 = [SBDisplayItem webAppDisplayItemWithWebAppIdentifier:v9];

      v4 = v10;
    }
  }

  if ([(NSMutableOrderedSet *)self->_recentDisplayItems containsObject:v4])
  {
    [(SBRecentDisplayItemsController *)self _moveDisplayItemToFront:v4];
  }

  else
  {
    if (-[NSMutableOrderedSet count](self->_recentDisplayItems, "count") && ![v4 type])
    {
      recentDisplayItems = self->_recentDisplayItems;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __63__SBRecentDisplayItemsController__addOrMoveDisplayItemToFront___block_invoke;
      v22[3] = &unk_2783AF600;
      v23 = v4;
      v12 = [(NSMutableOrderedSet *)recentDisplayItems indexesOfObjectsPassingTest:v22];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v13 = [(NSMutableOrderedSet *)self->_recentDisplayItems objectsAtIndexes:v12, 0];
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [(SBRecentDisplayItemsController *)self _removeDisplayItem:*(*(&v18 + 1) + 8 * v17++)];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v15);
      }
    }

    [(SBRecentDisplayItemsController *)self _addDisplayItemToFront:v4];
  }

LABEL_21:
}

uint64_t __63__SBRecentDisplayItemsController__addOrMoveDisplayItemToFront___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_addDisplayItemToFront:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && [(SBRecentDisplayItemsController *)self _displayItemIsExecutableOnCurrentPlatform:v4]&& ![(SBRecentDisplayItemsController *)self _isDisallowedDisplayItem:v4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = [(NSMutableOrderedSet *)WeakRetained recentDisplayItemsController:self shouldAddItem:v4];
    }

    else
    {
      v6 = 1;
    }

    v7 = MEMORY[0x277CEBE80];
    v8 = [(NSMutableOrderedSet *)v4 bundleIdentifier];
    v9 = [v7 applicationWithBundleIdentifier:v8];

    v10 = [v9 isHidden];
    v11 = SBLogDockRecents();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v10 || !v6)
    {
      if (v12)
      {
        *buf = 138412546;
        v30 = WeakRetained;
        v31 = 2112;
        v32 = v4;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "delegate %@ returned NO for recentDisplayItemsController:shouldAddItem: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v12)
      {
        recentDisplayItems = self->_recentDisplayItems;
        *buf = 138412546;
        v30 = v4;
        v31 = 2112;
        v32 = recentDisplayItems;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "will insertObject: %@; atIndex: 0; into: %@;", buf, 0x16u);
      }

      [(NSMutableOrderedSet *)self->_recentDisplayItems insertObject:v4 atIndex:0];
      v14 = [(NSMutableOrderedSet *)self->_recentDisplayItems count];
      v11 = 0;
      maxDisplayItems = self->_maxDisplayItems;
      if (v14 > maxDisplayItems)
      {
        v16 = [(NSMutableOrderedSet *)self->_recentDisplayItems count]- self->_maxDisplayItems;
        v17 = SBLogDockRecents();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v34.location = maxDisplayItems;
          v34.length = v16;
          v18 = NSStringFromRange(v34);
          v19 = self->_recentDisplayItems;
          *buf = 138412546;
          v30 = v18;
          v31 = 2112;
          v32 = v19;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "will removeObjectsInRange: %@; from: %@;", buf, 0x16u);
        }

        v11 = [MEMORY[0x277CBEB70] orderedSetWithOrderedSet:self->_recentDisplayItems range:maxDisplayItems copyItems:{v16, 0}];
        [(NSMutableOrderedSet *)self->_recentDisplayItems removeObjectsInRange:maxDisplayItems, v16];
      }

      if (objc_opt_respondsToSelector())
      {
        [(NSMutableOrderedSet *)WeakRetained recentDisplayItemsControllerDidUpdateDisplayItems:self];
      }

      if (v11)
      {
        if (objc_opt_respondsToSelector())
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = v11;
          v20 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v25;
            do
            {
              v23 = 0;
              do
              {
                if (*v25 != v22)
                {
                  objc_enumerationMutation(v11);
                }

                [(NSMutableOrderedSet *)WeakRetained recentDisplayItemsController:self didAddItem:v4 andDropItem:*(*(&v24 + 1) + 8 * v23++), v24];
              }

              while (v21 != v23);
              v21 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
            }

            while (v21);
          }
        }
      }

      else if (objc_opt_respondsToSelector())
      {
        [(NSMutableOrderedSet *)WeakRetained recentDisplayItemsController:self didAddItem:v4];
      }
    }
  }
}

- (void)_moveDisplayItemToFront:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && [(NSMutableOrderedSet *)self->_recentDisplayItems containsObject:v4]&& [(SBRecentDisplayItemsController *)self _displayItemIsExecutableOnCurrentPlatform:v4])
  {
    v5 = SBLogDockRecents();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      recentDisplayItems = self->_recentDisplayItems;
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = recentDisplayItems;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "will removeObject: %@; from: %@;", &v10, 0x16u);
    }

    [(NSMutableOrderedSet *)self->_recentDisplayItems removeObject:v4];
    v7 = SBLogDockRecents();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_recentDisplayItems;
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "will insertObject: %@; atIndex 0; into: %@;", &v10, 0x16u);
    }

    [(NSMutableOrderedSet *)self->_recentDisplayItems insertObject:v4 atIndex:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained recentDisplayItemsControllerDidUpdateDisplayItems:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained recentDisplayItemsController:self didMoveItemToFront:v4];
    }
  }
}

- (void)_removeDisplayItem:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && [(NSMutableOrderedSet *)self->_recentDisplayItems containsObject:v4])
  {
    v5 = SBLogDockRecents();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      recentDisplayItems = self->_recentDisplayItems;
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = recentDisplayItems;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "will removeObject: %@; from: %@;", &v8, 0x16u);
    }

    [(NSMutableOrderedSet *)self->_recentDisplayItems removeObject:v4];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained recentDisplayItemsControllerDidUpdateDisplayItems:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained recentDisplayItemsController:self didRemoveItem:v4];
    }
  }
}

- (void)_disallowAppFromAppearingWhileHidden:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  [(SBRecentDisplayItemsController *)self _applicationsBecameHidden:v4];
}

- (BOOL)_displayItemRepresentsAppClip:(id)a3
{
  v4 = a3;
  if (![v4 type])
  {
    v6 = [v4 bundleIdentifier];
    v7 = [(SBApplicationController *)self->_appController applicationWithBundleIdentifier:v6];
    v9 = [v7 info];
    if ([v9 isAppClip])
    {
      v8 = 1;
    }

    else
    {
      v10 = +[SBApplicationPlaceholderController sharedInstance];
      v11 = [v10 placeholderForDisplayID:v6];
      v8 = [v11 isAppClip];
    }

    goto LABEL_9;
  }

  if ([v4 type] == 5)
  {
    v5 = [v4 uniqueIdentifier];
    v6 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v5];

    v7 = [(SBRecentDisplayItemsController *)self _webClipForIdentifier:v6];
    v8 = [v7 isAppClip];
LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)_associatedWebClipIdentifierForAppClipIdentifier:(id)a3 sceneIdentifier:(id)a4
{
  v5 = MEMORY[0x277D0AC98];
  v6 = a4;
  v7 = [v5 storeForApplication:a3];
  v8 = [v7 sceneStoreForIdentifier:v6 creatingIfNecessary:0];

  v9 = [v8 objectForKey:@"appClipIdentifier"];

  return v9;
}

- (id)_webClipForIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(SBIconModelProviding *)self->_iconModelProvider iconModel];
  v7 = [v6 leafIconForIdentifier:v4];
  v8 = SBSafeCast(v5, v7);

  if (v8)
  {
    [v8 webClip];
  }

  else
  {
    [MEMORY[0x277D75D70] webClipWithIdentifier:v4];
  }
  v9 = ;

  return v9;
}

- (id)_addStateCaptureHandler
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - SBRecentDisplayItemsController - %p", self];
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v7, &location);
  v5 = BSLogAddStateCaptureBlockWithTitle();
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v5;
}

__CFString *__57__SBRecentDisplayItemsController__addStateCaptureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[1] description];
  }

  else
  {
    v3 = &stru_283094718;
  }

  return v3;
}

- (void)_applicationsBecameHidden:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ((self->_removalPersonality & 2) != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v11 = [(SBRecentDisplayItemsController *)self _allDisplayItemsForBundleID:v10, 0];
          v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v17;
            do
            {
              v15 = 0;
              do
              {
                if (*v17 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [(SBRecentDisplayItemsController *)self _removeDisplayItem:*(*(&v16 + 1) + 8 * v15++)];
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v13);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }
  }
}

- (SBRecentDisplayItemsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end