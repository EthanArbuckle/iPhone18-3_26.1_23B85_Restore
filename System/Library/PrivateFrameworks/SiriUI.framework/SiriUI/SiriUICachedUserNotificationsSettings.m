@interface SiriUICachedUserNotificationsSettings
- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)a3;
- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)a3 fromSettingsCenter:(id)a4;
- (BOOL)_currentlyObservingForAppBundleId:(id)a3;
- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)a3;
- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)a3 fromSettingsCenter:(id)a4;
- (BOOL)syncAnnounceNotificationsEnabledForAppBundleId:(id)a3;
- (BOOL)syncNotificationBannersVisibleInCarPlayForAppBundleId:(id)a3;
- (SiriUICachedUserNotificationsSettings)init;
- (id)_appNotificationSettingsForAppBundleId:(id)a3;
- (id)_appNotificationSettingsForAppBundleId:(id)a3 fromSettingsCenter:(id)a4;
- (id)cachedNotificationSettingsForAppBundleId:(id)a3 asyncFetchNewValuesAndUpdateObservers:(BOOL)a4;
- (void)_addObserver:(id)a3 forAppBundleId:(id)a4;
- (void)_notifyAllObserversThatPreferencesDidChange;
- (void)_notifyAllObserversWithAppBundleIdThatPreferencesDidChange:(id)a3;
- (void)_removeObserver:(id)a3 forAppBundleId:(id)a4;
- (void)_updateNotificationSettingsChangeAndNotifyObserversForAppBundleId:(id)a3 ifDifferentFromSettings:(id)a4;
- (void)_updateNotificationSettingsChangeForAppBundleId:(id)a3 fromSettingsCenter:(id)a4 notifyObservers:(BOOL)a5;
- (void)_updateNotificationSystemSettingsChangeFromSettingsCenter:(id)a3 notifyObservers:(BOOL)a4;
- (void)addObserver:(id)a3 forAppBundleId:(id)a4;
- (void)removeObserver:(id)a3 forAppBundleId:(id)a4;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4;
@end

@implementation SiriUICachedUserNotificationsSettings

- (SiriUICachedUserNotificationsSettings)init
{
  v14.receiver = self;
  v14.super_class = SiriUICachedUserNotificationsSettings;
  v2 = [(SiriUICachedUserNotificationsSettings *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    appObservers = v2->_appObservers;
    v2->_appObservers = v3;

    v5 = dispatch_queue_create("SiriUICachedUserNotificationsSettings", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    appNotificationSettings = v2->_appNotificationSettings;
    v2->_appNotificationSettings = v7;

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

- (void)addObserver:(id)a3 forAppBundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__SiriUICachedUserNotificationsSettings_addObserver_forAppBundleId___block_invoke;
    v9[3] = &unk_279C59FC8;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
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

- (void)removeObserver:(id)a3 forAppBundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__SiriUICachedUserNotificationsSettings_removeObserver_forAppBundleId___block_invoke;
    v9[3] = &unk_279C59FC8;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
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

- (BOOL)syncAnnounceNotificationsEnabledForAppBundleId:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v6 = v4;
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

- (BOOL)syncNotificationBannersVisibleInCarPlayForAppBundleId:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v6 = v4;
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

- (id)cachedNotificationSettingsForAppBundleId:(id)a3 asyncFetchNewValuesAndUpdateObservers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_appNotificationSettings objectForKeyedSubscript:v6];
  if (v4 && [v6 length])
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __120__SiriUICachedUserNotificationsSettings_cachedNotificationSettingsForAppBundleId_asyncFetchNewValuesAndUpdateObservers___block_invoke;
    v12[3] = &unk_279C59FC8;
    objc_copyWeak(&v15, &location);
    v13 = v6;
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

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__SiriUICachedUserNotificationsSettings_userNotificationSettingsCenter_didUpdateNotificationSystemSettings___block_invoke;
  v8[3] = &unk_279C5A018;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSourceIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__SiriUICachedUserNotificationsSettings_userNotificationSettingsCenter_didUpdateNotificationSourceIdentifiers___block_invoke;
  block[3] = &unk_279C5A040;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
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

- (void)_addObserver:(id)a3 forAppBundleId:(id)a4
{
  v9 = a3;
  appObservers = self->_appObservers;
  v7 = a4;
  v8 = [(NSMapTable *)appObservers objectForKey:v7];
  if (!v8)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  }

  if (([v8 containsObject:v9] & 1) == 0)
  {
    [v8 addObject:v9];
  }

  [(NSMapTable *)self->_appObservers setObject:v8 forKey:v7];
  [(SiriUICachedUserNotificationsSettings *)self _updateNotificationSettingsChangeForAppBundleId:v7 fromSettingsCenter:self->_notificationsSettingsCenter notifyObservers:0];
}

- (void)_removeObserver:(id)a3 forAppBundleId:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_appObservers objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:v9];
  }

  if (![v8 count])
  {
    [(NSMapTable *)self->_appObservers removeObjectForKey:v6];
  }

  [(NSMutableDictionary *)self->_appNotificationSettings removeObjectForKey:v6];
}

- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)a3
{
  v3 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:a3];
  v4 = [v3 isAnnounceEnabled];

  return v4;
}

- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)a3
{
  v3 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:a3];
  v4 = [v3 areCarPlayBannersEnabled];

  return v4;
}

- (id)_appNotificationSettingsForAppBundleId:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_appNotificationSettings objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:v4 fromSettingsCenter:self->_notificationsSettingsCenter];
  }

  v8 = v7;

  return v8;
}

- (id)_appNotificationSettingsForAppBundleId:(id)a3 fromSettingsCenter:(id)a4
{
  notificationsSettingsCenter = self->_notificationsSettingsCenter;
  v6 = a3;
  v7 = [(SiriUICachedUserNotificationsSettings *)self _announceNotificationsEnabledForAppBundleId:v6 fromSettingsCenter:notificationsSettingsCenter];
  v8 = [(SiriUICachedUserNotificationsSettings *)self _notificationBannersVisibleInCarPlayForAppBundleId:v6 fromSettingsCenter:self->_notificationsSettingsCenter];

  v9 = [[AppNotificationSettings alloc] initWithAnnounceEnabled:v7 carPlayBannersEnabled:v8];

  return v9;
}

- (void)_updateNotificationSystemSettingsChangeFromSettingsCenter:(id)a3 notifyObservers:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 notificationSystemSettings];
  v7 = [v6 announcementCarPlaySetting];

  if (v7 != self->_cachedAnnounceCarPlaySetting)
  {
    self->_cachedAnnounceCarPlaySetting = v7;
    if (v4)
    {

      [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversThatPreferencesDidChange];
    }
  }
}

- (void)_updateNotificationSettingsChangeForAppBundleId:(id)a3 fromSettingsCenter:(id)a4 notifyObservers:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  if ([(SiriUICachedUserNotificationsSettings *)self _currentlyObservingForAppBundleId:v11])
  {
    v9 = [(NSMutableDictionary *)self->_appNotificationSettings objectForKeyedSubscript:v11];
    v10 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:v11 fromSettingsCenter:v8];
    if (!v9 || ([v9 isEqual:v10] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_appNotificationSettings setObject:v10 forKeyedSubscript:v11];
      if (v5)
      {
        [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversWithAppBundleIdThatPreferencesDidChange:v11];
      }
    }
  }
}

- (void)_updateNotificationSettingsChangeAndNotifyObserversForAppBundleId:(id)a3 ifDifferentFromSettings:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(SiriUICachedUserNotificationsSettings *)self _currentlyObservingForAppBundleId:v8])
  {
    v7 = [(SiriUICachedUserNotificationsSettings *)self _appNotificationSettingsForAppBundleId:v8 fromSettingsCenter:self->_notificationsSettingsCenter];
    if (([v7 isEqual:v6] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_appNotificationSettings setObject:v7 forKeyedSubscript:v8];
      [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversWithAppBundleIdThatPreferencesDidChange:v8];
    }
  }
}

- (BOOL)_announceNotificationsEnabledForAppBundleId:(id)a3 fromSettingsCenter:(id)a4
{
  v4 = [a4 notificationSourceWithIdentifier:a3];
  v5 = [v4 sourceSettings];
  v6 = [v5 notificationSettings];
  v7 = [v6 announcementSetting] == 2;

  return v7;
}

- (BOOL)_notificationBannersVisibleInCarPlayForAppBundleId:(id)a3 fromSettingsCenter:(id)a4
{
  v4 = [a4 notificationSourceWithIdentifier:a3];
  v5 = [v4 sourceSettings];
  v6 = [v5 notificationSettings];
  v7 = [v6 carPlaySetting] == 2;

  return v7;
}

- (BOOL)_currentlyObservingForAppBundleId:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMapTable *)self->_appObservers keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(NSMapTable *)self->_appObservers keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(SiriUICachedUserNotificationsSettings *)self _notifyAllObserversWithAppBundleIdThatPreferencesDidChange:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_notifyAllObserversWithAppBundleIdThatPreferencesDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_appObservers objectForKey:v4];
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

        [*(*(&v10 + 1) + 8 * v9++) cachedSettings:self didChangeForAppBundleId:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end