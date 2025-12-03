@interface SiriUICachedUserNotificationsSettings
- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)id;
- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)id fromSettingsCenter:(id)center;
- (BOOL)_currentlyObservingForAppBundleId:(id)id;
- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)id;
- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)id fromSettingsCenter:(id)center;
- (BOOL)syncAnnounceNotificationsEnabledForAppBundleId:(id)id;
- (BOOL)syncNotificationBannersVisibleInCarPlayForAppBundleId:(id)id;
- (SiriUICachedUserNotificationsSettings)init;
- (id)_appNotificationSettingsForAppBundleId:(id)id;
- (id)_appNotificationSettingsForAppBundleId:(id)id fromSettingsCenter:(id)center;
- (id)cachedNotificationSettingsForAppBundleId:(id)id asyncFetchNewValuesAndUpdateObservers:(BOOL)observers;
- (void)_addObserver:(id)observer forAppBundleId:(id)id;
- (void)_notifyAllObserversThatPreferencesDidChange;
- (void)_notifyAllObserversWithAppBundleIdThatPreferencesDidChange:(id)change;
- (void)_removeObserver:(id)observer forAppBundleId:(id)id;
- (void)_updateNotificationSettingsChangeAndNotifyObserversForAppBundleId:(id)id ifDifferentFromSettings:(id)settings;
- (void)_updateNotificationSettingsChangeForAppBundleId:(id)id fromSettingsCenter:(id)center notifyObservers:(BOOL)observers;
- (void)_updateNotificationSystemSettingsChangeFromSettingsCenter:(id)center notifyObservers:(BOOL)observers;
- (void)addObserver:(id)observer forAppBundleId:(id)id;
- (void)removeObserver:(id)observer forAppBundleId:(id)id;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings;
@end

@implementation SiriUICachedUserNotificationsSettings

- (SiriUICachedUserNotificationsSettings)init
{
  v14.receiver = self;
  v14.super_class = SiriUICachedUserNotificationsSettings;
  v2 = [(SiriUICachedUserNotificationsSettings *)&v14 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    appObservers = v2->_appObservers;
    v2->_appObservers = strongToStrongObjectsMapTable;

    v5 = dispatch_queue_create("SiriUICachedUserNotificationsSettings", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    appNotificationSettings = v2->_appNotificationSettings;
    v2->_appNotificationSettings = dictionary;

    objc_initWeak(&location, v2);
    v9 = v2->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__SiriUICachedUserNotificationsSettings_init__block_invoke;
    v11[3] = &unk_279C59FA0;
    objc_copyWeak(&v12, &location);
    dispatch_async(v9, v11);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __45__SiriUICachedUserNotificationsSettings_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x277D77F68] currentNotificationSettingsCenter];
    v3 = v4[3];
    v4[3] = v2;

    [v4[3] setDelegate:v4];
    [v4 _updateNotificationSystemSettingsChangeFromSettingsCenter:v4[3] notifyObservers:1];
    WeakRetained = v4;
  }
}

- (void)addObserver:(id)observer forAppBundleId:(id)id
{
  observerCopy = observer;
  idCopy = id;
  if ([idCopy length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__SiriUICachedUserNotificationsSettings_addObserver_forAppBundleId___block_invoke;
    v9[3] = &unk_279C59FC8;
    objc_copyWeak(&v12, &location);
    v10 = observerCopy;
    v11 = idCopy;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __68__SiriUICachedUserNotificationsSettings_addObserver_forAppBundleId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _addObserver:*(a1 + 32) forAppBundleId:*(a1 + 40)];
}

- (void)removeObserver:(id)observer forAppBundleId:(id)id
{
  observerCopy = observer;
  idCopy = id;
  if ([idCopy length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__SiriUICachedUserNotificationsSettings_removeObserver_forAppBundleId___block_invoke;
    v9[3] = &unk_279C59FC8;
    objc_copyWeak(&v12, &location);
    v10 = observerCopy;
    v11 = idCopy;
    dispatch_async(queue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __71__SiriUICachedUserNotificationsSettings_removeObserver_forAppBundleId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeObserver:*(a1 + 32) forAppBundleId:*(a1 + 40)];
}

- (BOOL)syncAnnounceNotificationsEnabledForAppBundleId:(id)id
{
  idCopy = id;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__SiriUICachedUserNotificationsSettings_syncAnnounceNotificationsEnabledForAppBundleId___block_invoke;
  v8[3] = &unk_279C59FF0;
  v10 = &v13;
  objc_copyWeak(&v11, &location);
  v9 = idCopy;
  v6 = idCopy;
  dispatch_sync(queue, v8);
  LOBYTE(queue) = *(v14 + 24);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v13, 8);
  return queue;
}

void __88__SiriUICachedUserNotificationsSettings_syncAnnounceNotificationsEnabledForAppBundleId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _announceNotificationsEnabledForAppBundleId:*(a1 + 32)];
}

- (BOOL)syncNotificationBannersVisibleInCarPlayForAppBundleId:(id)id
{
  idCopy = id;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__SiriUICachedUserNotificationsSettings_syncNotificationBannersVisibleInCarPlayForAppBundleId___block_invoke;
  v8[3] = &unk_279C59FF0;
  v10 = &v13;
  objc_copyWeak(&v11, &location);
  v9 = idCopy;
  v6 = idCopy;
  dispatch_sync(queue, v8);
  LOBYTE(queue) = *(v14 + 24);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v13, 8);
  return queue;
}

void __95__SiriUICachedUserNotificationsSettings_syncNotificationBannersVisibleInCarPlayForAppBundleId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _notificationBannersVisibleInCarPlayForAppBundleId:*(a1 + 32)];
}

- (id)cachedNotificationSettingsForAppBundleId:(id)id asyncFetchNewValuesAndUpdateObservers:(BOOL)observers
{
  observersCopy = observers;
  idCopy = id;
  v7 = [(NSMutableDictionary *)self->_appNotificationSettings objectForKeyedSubscript:idCopy];
  if (observersCopy && [idCopy length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __120__SiriUICachedUserNotificationsSettings_cachedNotificationSettingsForAppBundleId_asyncFetchNewValuesAndUpdateObservers___block_invoke;
    v12[3] = &unk_279C59FC8;
    objc_copyWeak(&v15, &location);
    v13 = idCopy;
    v14 = v7;
    dispatch_async(queue, v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [[AppNotificationSettings alloc] initWithAnnounceEnabled:0 carPlayBannersEnabled:0];
  }

  v10 = v9;

  return v10;
}

void __120__SiriUICachedUserNotificationsSettings_cachedNotificationSettingsForAppBundleId_asyncFetchNewValuesAndUpdateObservers___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateNotificationSettingsChangeAndNotifyObserversForAppBundleId:*(a1 + 32) ifDifferentFromSettings:*(a1 + 40)];
}

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings
{
  centerCopy = center;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__SiriUICachedUserNotificationsSettings_userNotificationSettingsCenter_didUpdateNotificationSystemSettings___block_invoke;
  v8[3] = &unk_279C5A018;
  v8[4] = self;
  v9 = centerCopy;
  v7 = centerCopy;
  dispatch_async(queue, v8);
}

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSourceIdentifiers:(id)identifiers
{
  centerCopy = center;
  identifiersCopy = identifiers;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__SiriUICachedUserNotificationsSettings_userNotificationSettingsCenter_didUpdateNotificationSourceIdentifiers___block_invoke;
  block[3] = &unk_279C5A040;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = centerCopy;
  v9 = centerCopy;
  v10 = identifiersCopy;
  dispatch_async(queue, block);
}

void __111__SiriUICachedUserNotificationsSettings_userNotificationSettingsCenter_didUpdateNotificationSourceIdentifiers___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _updateNotificationSettingsChangeForAppBundleId:*(*(&v7 + 1) + 8 * v6++) fromSettingsCenter:*(a1 + 48) notifyObservers:{1, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_addObserver:(id)observer forAppBundleId:(id)id
{
  observerCopy = observer;
  appObservers = self->_appObservers;
  idCopy = id;
  weakObjectsHashTable = [(NSMapTable *)appObservers objectForKey:idCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  }

  if (([weakObjectsHashTable containsObject:observerCopy] & 1) == 0)
  {
    [weakObjectsHashTable addObject:observerCopy];
  }

  [(NSMapTable *)self->_appObservers setObject:weakObjectsHashTable forKey:idCopy];
  [(SiriUICachedUserNotificationsSettings *)self _updateNotificationSettingsChangeForAppBundleId:idCopy fromSettingsCenter:self->_notificationsSettingsCenter notifyObservers:0];
}

- (void)_removeObserver:(id)observer forAppBundleId:(id)id
{
  observerCopy = observer;
  idCopy = id;
  v7 = [(NSMapTable *)self->_appObservers objectForKey:idCopy];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:observerCopy];
  }

  if (![v8 count])
  {
    [(NSMapTable *)self->_appObservers removeObjectForKey:idCopy];
  }

  [(NSMutableDictionary *)self->_appNotificationSettings removeObjectForKey:idCopy];
}

- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)id
{
  v3 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:id];
  isAnnounceEnabled = [v3 isAnnounceEnabled];

  return isAnnounceEnabled;
}

- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)id
{
  v3 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:id];
  areCarPlayBannersEnabled = [v3 areCarPlayBannersEnabled];

  return areCarPlayBannersEnabled;
}

- (id)_appNotificationSettingsForAppBundleId:(id)id
{
  idCopy = id;
  v5 = [(NSMutableDictionary *)self->_appNotificationSettings objectForKeyedSubscript:idCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:idCopy fromSettingsCenter:self->_notificationsSettingsCenter];
  }

  v8 = v7;

  return v8;
}

- (id)_appNotificationSettingsForAppBundleId:(id)id fromSettingsCenter:(id)center
{
  notificationsSettingsCenter = self->_notificationsSettingsCenter;
  idCopy = id;
  v7 = [(SiriUICachedUserNotificationsSettings *)self _announceNotificationsEnabledForAppBundleId:idCopy fromSettingsCenter:notificationsSettingsCenter];
  v8 = [(SiriUICachedUserNotificationsSettings *)self _notificationBannersVisibleInCarPlayForAppBundleId:idCopy fromSettingsCenter:self->_notificationsSettingsCenter];

  v9 = [[AppNotificationSettings alloc] initWithAnnounceEnabled:v7 carPlayBannersEnabled:v8];

  return v9;
}

- (void)_updateNotificationSystemSettingsChangeFromSettingsCenter:(id)center notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  notificationSystemSettings = [center notificationSystemSettings];
  announcementCarPlaySetting = [notificationSystemSettings announcementCarPlaySetting];

  if (announcementCarPlaySetting != self->_cachedAnnounceCarPlaySetting)
  {
    self->_cachedAnnounceCarPlaySetting = announcementCarPlaySetting;
    if (observersCopy)
    {

      [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversThatPreferencesDidChange];
    }
  }
}

- (void)_updateNotificationSettingsChangeForAppBundleId:(id)id fromSettingsCenter:(id)center notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  idCopy = id;
  centerCopy = center;
  if ([(SiriUICachedUserNotificationsSettings *)self _currentlyObservingForAppBundleId:idCopy])
  {
    v9 = [(NSMutableDictionary *)self->_appNotificationSettings objectForKeyedSubscript:idCopy];
    v10 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:idCopy fromSettingsCenter:centerCopy];
    if (!v9 || ([v9 isEqual:v10] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_appNotificationSettings setObject:v10 forKeyedSubscript:idCopy];
      if (observersCopy)
      {
        [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversWithAppBundleIdThatPreferencesDidChange:idCopy];
      }
    }
  }
}

- (void)_updateNotificationSettingsChangeAndNotifyObserversForAppBundleId:(id)id ifDifferentFromSettings:(id)settings
{
  idCopy = id;
  settingsCopy = settings;
  if ([(SiriUICachedUserNotificationsSettings *)self _currentlyObservingForAppBundleId:idCopy])
  {
    v7 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:idCopy fromSettingsCenter:self->_notificationsSettingsCenter];
    if (([v7 isEqual:settingsCopy] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_appNotificationSettings setObject:v7 forKeyedSubscript:idCopy];
      [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversWithAppBundleIdThatPreferencesDidChange:idCopy];
    }
  }
}

- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)id fromSettingsCenter:(id)center
{
  v4 = [center notificationSourceWithIdentifier:id];
  sourceSettings = [v4 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];
  v7 = [notificationSettings announcementSetting] == 2;

  return v7;
}

- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)id fromSettingsCenter:(id)center
{
  v4 = [center notificationSourceWithIdentifier:id];
  sourceSettings = [v4 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];
  v7 = [notificationSettings carPlaySetting] == 2;

  return v7;
}

- (BOOL)_currentlyObservingForAppBundleId:(id)id
{
  v15 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMapTable *)self->_appObservers keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:idCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_notifyAllObserversThatPreferencesDidChange
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  keyEnumerator = [(NSMapTable *)self->_appObservers keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversWithAppBundleIdThatPreferencesDidChange:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [keyEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_notifyAllObserversWithAppBundleIdThatPreferencesDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = [(NSMapTable *)self->_appObservers objectForKey:changeCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        [*(*(&v10 + 1) + 8 * v9++) cachedSettings:self didChangeForAppBundleId:changeCopy];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end