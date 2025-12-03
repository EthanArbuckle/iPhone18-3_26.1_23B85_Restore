@interface WBProfileWindow
- (BOOL)isInDefaultProfile;
- (WBProfileWindow)initWithWindowState:(id)state tabGroupManager:(id)manager;
- (WBProfileWindow)initWithWindowState:(id)state tabGroupManager:(id)manager preferredProfileIdentifier:(id)identifier;
- (WBProfileWindowDelegate)delegate;
- (WBTabGroup)unnamedTabGroupForActiveProfile;
- (id)_displayTitleProviderForTabGroupWithUUID:(id)d;
- (id)_findOrCreateUnnamedTabGroupForProfile:(id)profile;
- (id)_lastActiveTabGroupForProfile:(id)profile;
- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)identifier;
- (void)_attachLocalGroupToDefaultProfileIfNeeded;
- (void)_attachUnnamedTabGroupToProfileWithIdentifier:(id)identifier;
- (void)_selectPreferredProfileIfNeeded:(id)needed;
- (void)dealloc;
- (void)setActiveProfileIdentifier:(id)identifier;
- (void)setActiveTabGroupUUID:(id)d;
- (void)setUnnamedTabGroupDisplayTitleProvider:(id)provider;
- (void)tabGroupManager:(id)manager didRemoveProfileWithIdentifier:(id)identifier;
- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d;
- (void)willClose;
@end

@implementation WBProfileWindow

- (void)_attachLocalGroupToDefaultProfileIfNeeded
{
  v3 = *MEMORY[0x277D49BD8];
  localTabGroup = [(WBWindowState *)self->_windowState localTabGroup];
  profileIdentifier = [localTabGroup profileIdentifier];
  LOBYTE(v3) = [v3 isEqualToString:profileIdentifier];

  if ((v3 & 1) == 0)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    tabGroupManager = self->_tabGroupManager;
    localTabGroup2 = [(WBWindowState *)self->_windowState localTabGroup];
    uuid = [localTabGroup2 uuid];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__WBProfileWindow__attachLocalGroupToDefaultProfileIfNeeded__block_invoke;
    v9[3] = &unk_279E75168;
    v9[4] = v10;
    [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:uuid persist:1 usingBlock:v9];

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
  defaultProfile = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
  identifier = [defaultProfile identifier];
  LOBYTE(activeProfileIdentifier) = [(NSString *)activeProfileIdentifier isEqual:identifier];

  return activeProfileIdentifier;
}

- (WBProfileWindow)initWithWindowState:(id)state tabGroupManager:(id)manager
{
  managerCopy = manager;
  stateCopy = state;
  activeProfileIdentifier = [stateCopy activeProfileIdentifier];
  v9 = [(WBProfileWindow *)self initWithWindowState:stateCopy tabGroupManager:managerCopy preferredProfileIdentifier:activeProfileIdentifier];

  return v9;
}

- (WBProfileWindow)initWithWindowState:(id)state tabGroupManager:(id)manager preferredProfileIdentifier:(id)identifier
{
  stateCopy = state;
  managerCopy = manager;
  identifierCopy = identifier;
  v27.receiver = self;
  v27.super_class = WBProfileWindow;
  v12 = [(WBProfileWindow *)&v27 init];
  if (v12)
  {
    activeProfileIdentifier = [stateCopy activeProfileIdentifier];
    v14 = activeProfileIdentifier;
    if (activeProfileIdentifier)
    {
      v15 = activeProfileIdentifier;
      activeProfileIdentifier = v12->_activeProfileIdentifier;
      v12->_activeProfileIdentifier = v15;
    }

    else
    {
      activeProfileIdentifier = [managerCopy defaultProfile];
      identifier = [activeProfileIdentifier identifier];
      v18 = v12->_activeProfileIdentifier;
      v12->_activeProfileIdentifier = identifier;
    }

    objc_storeStrong(&v12->_tabGroupManager, manager);
    objc_storeStrong(&v12->_windowState, state);
    [(WBProfileWindow *)v12 _attachLocalGroupToDefaultProfileIfNeeded];
    [(WBProfileWindow *)v12 _attachUnnamedTabGroupToProfileWithIdentifier:identifierCopy];
    [(WBTabGroupManager *)v12->_tabGroupManager addTabGroupObserver:v12];
    [(WBProfileWindow *)v12 _selectPreferredProfileIfNeeded:identifierCopy];
    activeTabGroupUUID = [stateCopy activeTabGroupUUID];
    v20 = activeTabGroupUUID;
    if (activeTabGroupUUID)
    {
      v21 = activeTabGroupUUID;
      activeTabGroupUUID = v12->_activeTabGroupUUID;
      v12->_activeTabGroupUUID = v21;
    }

    else
    {
      activeTabGroupUUID = [(WBProfileWindow *)v12 existingUnnamedTabGroupForProfileWithIdentifier:identifierCopy];
      uuid = [activeTabGroupUUID uuid];
      v24 = v12->_activeTabGroupUUID;
      v12->_activeTabGroupUUID = uuid;
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

- (void)setActiveProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSString *)self->_activeProfileIdentifier isEqual:identifierCopy]& 1) == 0)
  {
    v4 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:identifierCopy];
    if (v4)
    {
      v5 = [(WBProfileWindow *)self _findOrCreateUnnamedTabGroupForProfile:v4];
      if (v5)
      {
        v6 = [identifierCopy copy];
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

- (void)setActiveTabGroupUUID:(id)d
{
  dCopy = d;
  if (([(NSString *)self->_activeTabGroupUUID isEqual:?]& 1) == 0)
  {
    v4 = [dCopy copy];
    activeTabGroupUUID = self->_activeTabGroupUUID;
    self->_activeTabGroupUUID = v4;

    v6 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:dCopy];
    if (([v6 isPrivateBrowsing] & 1) == 0)
    {
      profileIdentifier = [v6 profileIdentifier];
      [(WBWindowState *)self->_windowState setActiveProfileIdentifier:profileIdentifier];
    }

    [(WBWindowState *)self->_windowState setActiveTabGroupUUID:dCopy forProfileWithIdentifier:self->_activeProfileIdentifier];
    tabCollection = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
    [tabCollection saveWindowState:self->_windowState completionHandler:0];
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
  unnamedTabGroupUUIDs = [(WBWindowState *)self->_windowState unnamedTabGroupUUIDs];
  v4 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(unnamedTabGroupUUIDs);
        }

        v8 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [(WBTabGroupManager *)self->_tabGroupManager removeTabGroup:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setUnnamedTabGroupDisplayTitleProvider:(id)provider
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [provider copy];
  unnamedTabGroupDisplayTitleProvider = self->_unnamedTabGroupDisplayTitleProvider;
  self->_unnamedTabGroupDisplayTitleProvider = v4;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  unnamedTabGroupUUIDs = [(WBWindowState *)self->_windowState unnamedTabGroupUUIDs];
  v7 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(unnamedTabGroupUUIDs);
        }

        [(WBTabGroupManager *)self->_tabGroupManager updateTabGroupWithUUID:MEMORY[0x277D85DD0] persist:3221225472 usingBlock:__58__WBProfileWindow_setUnnamedTabGroupDisplayTitleProvider___block_invoke, &unk_279E750F8, self, *(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [unnamedTabGroupUUIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)existingUnnamedTabGroupForProfileWithIdentifier:(id)identifier
{
  v4 = [(WBTabGroupManager *)self->_tabGroupManager unnamedTabGroupsForProfileWithIdentifier:identifier];
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

- (void)tabGroupManager:(id)manager didRemoveTabGroupWithUUID:(id)d
{
  dCopy = d;
  v6 = [manager removedTabGroupWithUUID:?];
  profileIdentifier = [v6 profileIdentifier];
  if ([profileIdentifier length])
  {
    v8 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:profileIdentifier];
    if (!v8)
    {
LABEL_15:

      goto LABEL_16;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    unnamedTabGroupUUIDs = [(WBWindowState *)self->_windowState unnamedTabGroupUUIDs];
    v11 = [unnamedTabGroupUUIDs containsObject:dCopy];

    if (v11)
    {
      [(WBWindowState *)self->_windowState removeUnnamedTabGroupUUID:dCopy];
      [(WBWindowState *)self->_windowState removeActiveTabGroupUUIDForProfileWithIdentifier:profileIdentifier];
      if ([(WBProfileWindow *)self canSwitchProfiles])
      {
        if ([(WBProfileWindow *)self _isProfileActive:profileIdentifier])
        {
          tabCollection = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
          [tabCollection saveWindowState:self->_windowState completionHandler:&__block_literal_global];

          defaultProfile = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
          [WeakRetained profileWindow:self selectProfile:defaultProfile];
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
      uuid = [v6 uuid];
      v15 = [uuid isEqual:self->_activeTabGroupUUID];

      if (v15)
      {
        defaultProfile = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:self->_activeProfileIdentifier];
        defaultProfile2 = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
        v17 = [defaultProfile isEqual:defaultProfile2];

        if (v17)
        {
          localTabGroup = [(WBWindowState *)self->_windowState localTabGroup];
          [WeakRetained profileWindow:self selectTabGroup:localTabGroup];
        }

        else
        {
          localTabGroup = [v8 identifier];
          v19 = [(WBProfileWindow *)self existingUnnamedTabGroupForProfileWithIdentifier:localTabGroup];
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

- (void)tabGroupManager:(id)manager didRemoveProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(WBProfileWindow *)self existingUnnamedTabGroupForProfileWithIdentifier:?];
  if (v5)
  {
    [(WBTabGroupManager *)self->_tabGroupManager removeTabGroup:v5];
    if ([(WBProfileWindow *)self _isProfileActive:identifierCopy])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ([(WBProfileWindow *)self canSwitchProfiles])
      {
        defaultProfile = [(WBTabGroupManager *)self->_tabGroupManager defaultProfile];
        [WeakRetained profileWindow:self selectProfile:defaultProfile];
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

- (void)_attachUnnamedTabGroupToProfileWithIdentifier:(id)identifier
{
  if (identifier)
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

- (id)_displayTitleProviderForTabGroupWithUUID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__WBProfileWindow__displayTitleProviderForTabGroupWithUUID___block_invoke;
  v8[3] = &unk_279E75190;
  objc_copyWeak(&v10, &location);
  v9 = dCopy;
  v5 = dCopy;
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

- (id)_findOrCreateUnnamedTabGroupForProfile:(id)profile
{
  profileCopy = profile;
  identifier = [profileCopy identifier];
  v6 = [identifier isEqual:*MEMORY[0x277D49BD8]];

  if (v6)
  {
    localTabGroup = [(WBWindowState *)self->_windowState localTabGroup];
  }

  else
  {
    identifier2 = [profileCopy identifier];
    v9 = [(WBProfileWindow *)self existingUnnamedTabGroupForProfileWithIdentifier:identifier2];

    if (v9)
    {
      displayTitleProvider = [v9 displayTitleProvider];

      if (!displayTitleProvider)
      {
        tabGroupManager = self->_tabGroupManager;
        uuid = [v9 uuid];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __58__WBProfileWindow__findOrCreateUnnamedTabGroupForProfile___block_invoke;
        v32[3] = &unk_279E751B8;
        v32[4] = self;
        [(WBTabGroupManager *)tabGroupManager updateTabGroupWithUUID:uuid persist:0 usingBlock:v32];
      }

      localTabGroup = v9;
    }

    else
    {
      windowState = self->_windowState;
      identifier3 = [profileCopy identifier];
      deviceIdentifier = [profileCopy deviceIdentifier];
      v16 = [(WBWindowState *)windowState localOrUnnamedTabGroupForRestoration:0 inProfileWithIdentifier:identifier3 deviceIdentifier:deviceIdentifier];

      uuid2 = [v16 uuid];
      v18 = [(WBProfileWindow *)self _displayTitleProviderForTabGroupWithUUID:uuid2];
      [v16 setDisplayTitleProvider:v18];

      identifier4 = [profileCopy identifier];
      [v16 setProfileIdentifier:identifier4];

      v20 = [(WBTabGroupManager *)self->_tabGroupManager insertUnnamedTabGroup:v16];
      tabCollection = [(WBTabGroupManager *)self->_tabGroupManager tabCollection];
      v22 = [tabCollection saveWindowState:self->_windowState];

      if (v22)
      {
        localTabGroup = v20;
      }

      else
      {
        v23 = WBS_LOG_CHANNEL_PREFIXProfiles();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(WBProfileWindow *)v23 _findOrCreateUnnamedTabGroupForProfile:v24, v25, v26, v27, v28, v29, v30];
        }

        localTabGroup = 0;
      }
    }
  }

  return localTabGroup;
}

void __58__WBProfileWindow__findOrCreateUnnamedTabGroupForProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 uuid];
  v4 = [v2 _displayTitleProviderForTabGroupWithUUID:v5];
  [v3 setDisplayTitleProvider:v4];
}

- (id)_lastActiveTabGroupForProfile:(id)profile
{
  windowState = self->_windowState;
  identifier = [profile identifier];
  v6 = [(WBWindowState *)windowState activeTabGroupUUIDForProfileWithIdentifier:identifier];

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

- (void)_selectPreferredProfileIfNeeded:(id)needed
{
  neededCopy = needed;
  if (neededCopy)
  {
    v17 = neededCopy;
    v5 = [(WBTabGroupManager *)self->_tabGroupManager profileWithIdentifier:neededCopy];
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

        activeTabGroupUUID = [(WBWindowState *)self->_windowState activeTabGroupUUID];
        if (activeTabGroupUUID)
        {
          tabGroupManager = self->_tabGroupManager;
          activeTabGroupUUID2 = [(WBWindowState *)self->_windowState activeTabGroupUUID];
          v13 = [(WBTabGroupManager *)tabGroupManager tabGroupWithUUID:activeTabGroupUUID2];
        }

        else
        {
          v13 = 0;
        }

        profileIdentifier = [v13 profileIdentifier];
        v15 = [profileIdentifier isEqualToString:v17];

        if ((v15 & 1) == 0)
        {
          uuid = [v6 uuid];
          [(WBWindowState *)self->_windowState setActiveTabGroupUUID:uuid];
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