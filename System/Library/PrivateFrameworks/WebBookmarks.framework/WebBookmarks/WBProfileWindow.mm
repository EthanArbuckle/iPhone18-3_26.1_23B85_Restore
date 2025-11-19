@interface WBProfileWindow
- (BOOL)isInDefaultProfile;
- (WBProfileWindow)initWithWindowState:(id)a3 tabGroupManager:(id)a4;
- (WBProfileWindow)initWithWindowState:(id)a3 tabGroupManager:(id)a4 preferredProfileIdentifier:(id)a5;
- (WBProfileWindowDelegate)delegate;
- (WBTabGroup)unnamedTabGroupForActiveProfile;
- (id)_displayTitleProviderForTabGroupWithUUID:(id)a3;
- (id)_findOrCreateUnnamedTabGroupForProfile:(id)a3;
- (id)_lastActiveTabGroupForProfile:(id)a3;
- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)a3;
- (void)_attachLocalGroupToDefaultProfileIfNeeded;
- (void)_attachUnnamedTabGroupToProfileWithIdentifier:(id)a3;
- (void)_selectPreferredProfileIfNeeded:(id)a3;
- (void)dealloc;
- (void)setActiveProfileIdentifier:(id)a3;
- (void)setActiveTabGroupUUID:(id)a3;
- (void)setUnnamedTabGroupDisplayTitleProvider:(id)a3;
- (void)tabGroupManager:(id)a3 didRemoveProfileWithIdentifier:(id)a4;
- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4;
- (void)willClose;
@end

@implementation WBProfileWindow

- (void)_attachLocalGroupToDefaultProfileIfNeeded
{
  v3 = *MEMORY[0x277D49BD8];
  v4 = [(WBWindowState *)self->_windowState localTabGroup];
  v5 = [v4 profileIdentifier];
  LOBYTE(v3) = [v3 isEqualToString:v5];

  if ((v3 & 1) == 0)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    tabGroupManager = self->_tabGroupManager;
    v7 = [(WBWindowState *)self->_windowState localTabGroup];
    v8 = [v7 uuid];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__WBProfileWindow__attachLocalGroupToDefaultProfileIfNeeded__block_invoke;
    v9[3] = &unk_279E75168;
    v9[4] = v10;
    [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:v8 persist:1 usingBlock:v9];

    _Block_object_dispose(v10, 8);
  }
}

- (WBTabGroup)unnamedTabGroupForActiveProfile
{
  if ([(WBProfileWindow *)self isInDefaultProfile])
  {
    [(WBWindowState *)self->_windowState localTabGroup];
  }

  else
  {
    [(WBProfileWindow *)self existingUnnamedTabGroupForProfileWithIdentifier:self->_activeProfileIdentifier];
  }
  v3 = ;

  return v3;
}

- (BOOL)isInDefaultProfile
{
  activeProfileIdentifier = self->_activeProfileIdentifier;
  v3 = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
  v4 = [v3 identifier];
  LOBYTE(activeProfileIdentifier) = [(NSString *)activeProfileIdentifier isEqual:v4];

  return activeProfileIdentifier;
}

- (WBProfileWindow)initWithWindowState:(id)a3 tabGroupManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 activeProfileIdentifier];
  v9 = [(WBProfileWindow *)self initWithWindowState:v7 tabGroupManager:v6 preferredProfileIdentifier:v8];

  return v9;
}

- (WBProfileWindow)initWithWindowState:(id)a3 tabGroupManager:(id)a4 preferredProfileIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = WBProfileWindow;
  v12 = [(WBProfileWindow *)&v27 init];
  if (v12)
  {
    v13 = [v9 activeProfileIdentifier];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      activeProfileIdentifier = v12->_activeProfileIdentifier;
      v12->_activeProfileIdentifier = v15;
    }

    else
    {
      activeProfileIdentifier = [v10 defaultProfile];
      v17 = [activeProfileIdentifier identifier];
      v18 = v12->_activeProfileIdentifier;
      v12->_activeProfileIdentifier = v17;
    }

    objc_storeStrong(&v12->_tabGroupManager, a4);
    objc_storeStrong(&v12->_windowState, a3);
    [(WBProfileWindow *)v12 _attachLocalGroupToDefaultProfileIfNeeded];
    [(WBProfileWindow *)v12 _attachUnnamedTabGroupToProfileWithIdentifier:v11];
    [(WBTabGroupManager *)v12->_tabGroupManager addTabGroupObserver:v12];
    [(WBProfileWindow *)v12 _selectPreferredProfileIfNeeded:v11];
    v19 = [v9 activeTabGroupUUID];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      activeTabGroupUUID = v12->_activeTabGroupUUID;
      v12->_activeTabGroupUUID = v21;
    }

    else
    {
      activeTabGroupUUID = [(WBProfileWindow *)v12 existingUnnamedTabGroupForProfileWithIdentifier:v11];
      v23 = [activeTabGroupUUID uuid];
      v24 = v12->_activeTabGroupUUID;
      v12->_activeTabGroupUUID = v23;
    }

    v25 = v12;
  }

  return v12;
}

- (void)dealloc
{
  [(WBTabGroupManager *)self->_tabGroupManager removeTabGroupObserver:self];
  v3.receiver = self;
  v3.super_class = WBProfileWindow;
  [(WBProfileWindow *)&v3 dealloc];
}

- (void)setActiveProfileIdentifier:(id)a3
{
  v12 = a3;
  if (([(NSString *)self->_activeProfileIdentifier isEqual:v12]& 1) == 0)
  {
    v4 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:v12];
    if (v4)
    {
      v5 = [(WBProfileWindow *)self _findOrCreateUnnamedTabGroupForProfile:v4];
      if (v5)
      {
        v6 = [v12 copy];
        activeProfileIdentifier = self->_activeProfileIdentifier;
        self->_activeProfileIdentifier = v6;

        v8 = [(WBProfileWindow *)self _lastActiveTabGroupForProfile:v4];
        v9 = v8;
        if (!v8 || (v10 = v8, [v8 isPrivateBrowsing]))
        {
          v10 = v5;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained profileWindow:self selectTabGroup:v10];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)setActiveTabGroupUUID:(id)a3
{
  v9 = a3;
  if (([(NSString *)self->_activeTabGroupUUID isEqual:?]& 1) == 0)
  {
    v4 = [v9 copy];
    activeTabGroupUUID = self->_activeTabGroupUUID;
    self->_activeTabGroupUUID = v4;

    v6 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v9];
    if (([v6 isPrivateBrowsing] & 1) == 0)
    {
      v7 = [v6 profileIdentifier];
      [(WBWindowState *)self->_windowState setActiveProfileIdentifier:v7];
    }

    [(WBWindowState *)self->_windowState setActiveTabGroupUUID:v9 forProfileWithIdentifier:self->_activeProfileIdentifier];
    v8 = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
    [v8 saveWindowState:self->_windowState completionHandler:0];
  }
}

- (void)willClose
{
  v15 = *MEMORY[0x277D85DE8];
  [(WBTabGroupManager *)self->_tabGroupManager removeTabGroupObserver:self];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(WBWindowState *)self->_windowState unnamedTabGroupUUIDs];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [(WBTabGroupManager *)self->_tabGroupManager removeTabGroup:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setUnnamedTabGroupDisplayTitleProvider:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  unnamedTabGroupDisplayTitleProvider = self->_unnamedTabGroupDisplayTitleProvider;
  self->_unnamedTabGroupDisplayTitleProvider = v4;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(WBWindowState *)self->_windowState unnamedTabGroupUUIDs];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(WBTabGroupManager *)self->_tabGroupManager updateTabGroupWithUUID:MEMORY[0x277D85DD0] persist:3221225472 usingBlock:__58__WBProfileWindow_setUnnamedTabGroupDisplayTitleProvider___block_invoke, &unk_279E750F8, self, *(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__WBProfileWindow_setUnnamedTabGroupDisplayTitleProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _displayTitleProviderForTabGroupWithUUID:v3];
  [v4 setDisplayTitleProvider:v5];
}

- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)a3
{
  v4 = [(WBTabGroupManager *)self->_tabGroupManager unnamedTabGroupsForProfileWithIdentifier:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__WBProfileWindow_existingUnnamedTabGroupForProfileWithIdentifier___block_invoke;
  v7[3] = &unk_279E75120;
  v7[4] = self;
  v5 = [v4 safari_firstObjectPassingTest:v7];

  return v5;
}

uint64_t __67__WBProfileWindow_existingUnnamedTabGroupForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 unnamedTabGroupUUIDs];
  v5 = [v3 uuid];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4
{
  v20 = a4;
  v6 = [a3 removedTabGroupWithUUID:?];
  v7 = [v6 profileIdentifier];
  if ([v7 length])
  {
    v8 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:v7];
    if (!v8)
    {
LABEL_15:

      goto LABEL_16;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [(WBWindowState *)self->_windowState unnamedTabGroupUUIDs];
    v11 = [v10 containsObject:v20];

    if (v11)
    {
      [(WBWindowState *)self->_windowState removeUnnamedTabGroupUUID:v20];
      [(WBWindowState *)self->_windowState removeActiveTabGroupUUIDForProfileWithIdentifier:v7];
      if ([(WBProfileWindow *)self canSwitchProfiles])
      {
        if ([(WBProfileWindow *)self _isProfileActive:v7])
        {
          v12 = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
          [v12 saveWindowState:self->_windowState completionHandler:&__block_literal_global];

          v13 = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
          [WeakRetained profileWindow:self selectProfile:v13];
LABEL_13:
        }
      }

      else
      {
        [WeakRetained closeProfileWindow:self];
      }
    }

    else
    {
      v14 = [v6 uuid];
      v15 = [v14 isEqual:self->_activeTabGroupUUID];

      if (v15)
      {
        v13 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:self->_activeProfileIdentifier];
        v16 = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
        v17 = [v13 isEqual:v16];

        if (v17)
        {
          v18 = [(WBWindowState *)self->_windowState localTabGroup];
          [WeakRetained profileWindow:self selectTabGroup:v18];
        }

        else
        {
          v18 = [v8 identifier];
          v19 = [(WBProfileWindow *)self existingUnnamedTabGroupForProfileWithIdentifier:v18];
          [WeakRetained profileWindow:self selectTabGroup:v19];
        }

        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

void __61__WBProfileWindow_tabGroupManager_didRemoveTabGroupWithUUID___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXProfiles();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __61__WBProfileWindow_tabGroupManager_didRemoveTabGroupWithUUID___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)tabGroupManager:(id)a3 didRemoveProfileWithIdentifier:(id)a4
{
  v8 = a4;
  v5 = [(WBProfileWindow *)self existingUnnamedTabGroupForProfileWithIdentifier:?];
  if (v5)
  {
    [(WBTabGroupManager *)self->_tabGroupManager removeTabGroup:v5];
    if ([(WBProfileWindow *)self _isProfileActive:v8])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ([(WBProfileWindow *)self canSwitchProfiles])
      {
        v7 = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
        [WeakRetained profileWindow:self selectProfile:v7];
      }

      else
      {
        [WeakRetained closeProfileWindow:self];
      }
    }
  }
}

uint64_t __60__WBProfileWindow__attachLocalGroupToDefaultProfileIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 setProfileIdentifier:*MEMORY[0x277D49BD8]];
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

- (void)_attachUnnamedTabGroupToProfileWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:?];
    v5 = v4;
    if (v4 && [v4 kind])
    {
      v6 = [(WBProfileWindow *)self _findOrCreateUnnamedTabGroupForProfile:v5];
      if (!v6)
      {
        v7 = WBS_LOG_CHANNEL_PREFIXProfiles();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(WBProfileWindow *)v7 _attachUnnamedTabGroupToProfileWithIdentifier:v8, v9, v10, v11, v12, v13, v14];
        }
      }
    }
  }
}

- (id)_displayTitleProviderForTabGroupWithUUID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__WBProfileWindow__displayTitleProviderForTabGroupWithUUID___block_invoke;
  v8[3] = &unk_279E75190;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = MEMORY[0x2743D6830](v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

__CFString *__60__WBProfileWindow__displayTitleProviderForTabGroupWithUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && (v4 = WeakRetained[7]) != 0)
  {
    v5 = [WeakRetained[1] tabGroupWithUUID:*(a1 + 32)];
    v6 = v4[2](v4, v5);
  }

  else
  {
    v6 = &stru_288259858;
  }

  return v6;
}

- (id)_findOrCreateUnnamedTabGroupForProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqual:*MEMORY[0x277D49BD8]];

  if (v6)
  {
    v7 = [(WBWindowState *)self->_windowState localTabGroup];
  }

  else
  {
    v8 = [v4 identifier];
    v9 = [(WBProfileWindow *)self existingUnnamedTabGroupForProfileWithIdentifier:v8];

    if (v9)
    {
      v10 = [v9 displayTitleProvider];

      if (!v10)
      {
        tabGroupManager = self->_tabGroupManager;
        v12 = [v9 uuid];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __58__WBProfileWindow__findOrCreateUnnamedTabGroupForProfile___block_invoke;
        v32[3] = &unk_279E751B8;
        v32[4] = self;
        [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:v12 persist:0 usingBlock:v32];
      }

      v7 = v9;
    }

    else
    {
      windowState = self->_windowState;
      v14 = [v4 identifier];
      v15 = [v4 deviceIdentifier];
      v16 = [(WBWindowState *)windowState localOrUnnamedTabGroupForRestoration:0 inProfileWithIdentifier:v14 deviceIdentifier:v15];

      v17 = [v16 uuid];
      v18 = [(WBProfileWindow *)self _displayTitleProviderForTabGroupWithUUID:v17];
      [v16 setDisplayTitleProvider:v18];

      v19 = [v4 identifier];
      [v16 setProfileIdentifier:v19];

      v20 = [(WBTabGroupManager *)self->_tabGroupManager insertUnnamedTabGroup:v16];
      v21 = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
      v22 = [v21 saveWindowState:self->_windowState];

      if (v22)
      {
        v7 = v20;
      }

      else
      {
        v23 = WBS_LOG_CHANNEL_PREFIXProfiles();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(WBProfileWindow *)v23 _findOrCreateUnnamedTabGroupForProfile:v24, v25, v26, v27, v28, v29, v30];
        }

        v7 = 0;
      }
    }
  }

  return v7;
}

void __58__WBProfileWindow__findOrCreateUnnamedTabGroupForProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 uuid];
  v4 = [v2 _displayTitleProviderForTabGroupWithUUID:v5];
  [v3 setDisplayTitleProvider:v4];
}

- (id)_lastActiveTabGroupForProfile:(id)a3
{
  windowState = self->_windowState;
  v5 = [a3 identifier];
  v6 = [(WBWindowState *)windowState activeTabGroupUUIDForProfileWithIdentifier:v5];

  if (v6)
  {
    v7 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_selectPreferredProfileIfNeeded:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = v4;
    v5 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:v4];
    if (v5)
    {
      v6 = [(WBProfileWindow *)self _findOrCreateUnnamedTabGroupForProfile:v5];
      if (v6)
      {
        v7 = [v17 copy];
        activeProfileIdentifier = self->_activeProfileIdentifier;
        self->_activeProfileIdentifier = v7;

        v9 = [v17 copy];
        [(WBWindowState *)self->_windowState setActiveProfileIdentifier:v9];

        v10 = [(WBWindowState *)self->_windowState activeTabGroupUUID];
        if (v10)
        {
          tabGroupManager = self->_tabGroupManager;
          v12 = [(WBWindowState *)self->_windowState activeTabGroupUUID];
          v13 = [(WBTabGroupManager *)tabGroupManager tabGroupWithUUID:v12];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v13 profileIdentifier];
        v15 = [v14 isEqualToString:v17];

        if ((v15 & 1) == 0)
        {
          v16 = [v6 uuid];
          [(WBWindowState *)self->_windowState setActiveTabGroupUUID:v16];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (WBProfileWindowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end