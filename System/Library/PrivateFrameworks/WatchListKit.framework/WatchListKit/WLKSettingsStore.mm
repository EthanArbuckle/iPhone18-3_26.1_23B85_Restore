@interface WLKSettingsStore
+ (BOOL)isHostedInRemoteViewService;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
+ (id)sharedSettings;
+ (void)synchronizeSettingsDefaultsForKeys:(id)a3;
- (BOOL)hasPostPlayAutoPlayNextVideoPreferences;
- (BOOL)migratediOS;
- (BOOL)migratedtvOS;
- (BOOL)optedIn;
- (BOOL)postPlayAutoPlayNextVideo;
- (BOOL)privateModeEnabled;
- (BOOL)sportsScoreSpoilersAllowed;
- (BOOL)synchronize:(unint64_t)a3;
- (BOOL)upNextLockupsUseCoverArt;
- (NSNumber)optedInVal;
- (NSSet)suppressedSportsEventIDs;
- (NSString)pushToken;
- (WLKSettingsStore)init;
- (id)_appsForChannelID:(id)a3;
- (id)_connection;
- (id)_copyAppsForChannelID:(id)a3 apps:(id)a4;
- (id)_dictionaryRepresentationCopyingItems:(BOOL)a3;
- (id)_dictionaryRepresentationDataOnly;
- (id)_supportPath;
- (id)_watchListAppsFiltered;
- (id)consentedBrands;
- (id)deniedBrands;
- (id)description;
- (id)settingsForChannelID:(id)a3 externalID:(id)a4;
- (id)watchListApps;
- (void)_activeAccountChangedNotification:(id)a3;
- (void)_attemptCullingOfObsoleteApp:(id)a3;
- (void)_dictionaryOnDisk:(id)a3;
- (void)_loadFromDiskWithCompletion:(id)a3;
- (void)_removeWatchListApp:(id)a3;
- (void)_tickleKVO;
- (void)_updateDisplayNamesForUI:(id)a3;
- (void)_writeToDisk;
- (void)_writeToDisk:(id)a3 completion:(id)a4;
- (void)beginIgnoringChanges;
- (void)clearAllSportsNotificationSuppression;
- (void)dealloc;
- (void)endIgnoringChanges;
- (void)forceUpdateWithCompletion:(id)a3;
- (void)publishCrossProcessSettingsChangedNotification;
- (void)refreshWithCompletion:(id)a3;
- (void)removePostPlayAutoPlayNextVideoPreferences;
- (void)setLastSyncDate:(id)a3;
- (void)setLastSyncToCloudDate:(id)a3;
- (void)setMigratediOS:(BOOL)a3;
- (void)setMigratedtvOS:(BOOL)a3;
- (void)setName:(id)a3 forChannelID:(id)a4 externalID:(id)a5;
- (void)setOptedIn:(BOOL)a3;
- (void)setPushToken:(id)a3;
- (void)setSportsNotificationSuppression:(BOOL)a3 forEventID:(id)a4;
- (void)setStatus:(unint64_t)a3 forChannelID:(id)a4 externalID:(id)a5;
- (void)synchronize:(unint64_t)a3 completion:(id)a4;
@end

@implementation WLKSettingsStore

+ (id)sharedSettings
{
  if (sharedSettings___once != -1)
  {
    +[WLKSettingsStore sharedSettings];
  }

  v3 = sharedSettings___singleInstance;

  return v3;
}

void __34__WLKSettingsStore_sharedSettings__block_invoke()
{
  __isInitializing_0 = 1;
  v0 = objc_alloc_init(WLKSettingsStore);
  v1 = sharedSettings___singleInstance;
  sharedSettings___singleInstance = v0;

  __isInitializing_0 = 0;
}

- (WLKSettingsStore)init
{
  v20.receiver = self;
  v20.super_class = WLKSettingsStore;
  v2 = [(WLKSettingsStore *)&v20 init];
  if (v2)
  {
    NSLog(&cfstr_Wlksettingssto_0.isa);
    v3 = dispatch_queue_create("WLKSettingsQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("WLKSettingsQueueRW", 0);
    readWriteQueue = v2->_readWriteQueue;
    v2->_readWriteQueue = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    apps = v2->_apps;
    v2->_apps = v7;

    if (WLKIsTVApp())
    {
      v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      defaultsAccessor = v2->_defaultsAccessor;
      v2->_defaultsAccessor = v9;
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277CBEBD0]);
      defaultsAccessor = WLKTVAppBundleID();
      v12 = [v11 initWithSuiteName:defaultsAccessor];
      v13 = v2->_defaultsAccessor;
      v2->_defaultsAccessor = v12;
    }

    [(WLKSettingsStore *)v2 refreshWithCompletion:0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__WLKSettingsStore_init__block_invoke;
    handler[3] = &unk_279E5F5B8;
    v14 = v2;
    v19 = v14;
    notify_register_dispatch("com.apple.WatchListKit.WLKSettingsDidChangeNotification", &v2->_didChangeNotificationToken, MEMORY[0x277D85CD0], handler);
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = +[WLKAccountMonitor sharedInstance];
    [v15 addObserver:v14 selector:sel__activeAccountChangedNotification_ name:@"WLKAccountMonitorAccountDidChange" object:v16];
  }

  return v2;
}

+ (BOOL)isHostedInRemoteViewService
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  LOBYTE(v2) = [v3 isEqualToString:@"com.apple.TVAccessViewService"];
  return v2;
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_195];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __31__WLKSettingsStore__connection__block_invoke_2;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (id)_supportPath
{
  v2 = WLKDefaultSupportPath();
  if ([v2 length])
  {
    v3 = [v2 stringByAppendingPathComponent:@"settings.plist"];

    v4 = [v3 stringByExpandingTildeInPath];
  }

  else
  {
    NSLog(&cfstr_Wlksettingssto.isa);
    v4 = v2;
    v3 = v4;
  }

  return v4;
}

- (void)_tickleKVO
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__WLKSettingsStore__tickleKVO__block_invoke;
  v5[3] = &unk_279E5EE08;
  v5[4] = self;
  v2 = MEMORY[0x2743D2DF0](v5, a2);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __30__WLKSettingsStore__tickleKVO__block_invoke_2;
    v3[3] = &unk_279E5EA90;
    v4 = v2;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

- (id)deniedBrands
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(WLKSettingsStore *)self watchListApps];
  v3 = [v2 mutableCopy];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 accessStatus] == 2)
        {
          v11 = [v10 channelID];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 sortedArrayUsingSelector:sel_compare_];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)watchListApps
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = [MEMORY[0x277CBEB18] array];
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__WLKSettingsStore_watchListApps__block_invoke;
  v6[3] = &unk_279E5F9D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __33__WLKSettingsStore_watchListApps__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:{*(*(&v9 + 1) + 8 * v6++), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(*(*(a1 + 40) + 8) + 40) sortUsingComparator:&__block_literal_global_70];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)consentedBrands
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(WLKSettingsStore *)self watchListApps];
  v3 = [v2 mutableCopy];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 accessStatus] == 1)
        {
          v11 = [v10 channelID];
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 sortedArrayUsingSelector:sel_compare_];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)optedIn
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__WLKSettingsStore_optedIn__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasPostPlayAutoPlayNextVideoPreferences
{
  v2 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"PostPlayAutoPlayNextVideo"];
  v3 = v2 != 0;

  return v3;
}

uint64_t __30__WLKSettingsStore__tickleKVO__block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"watchListApps"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"watchListApps"];
}

void __24__WLKSettingsStore_init__block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 72), &state64);
  if (state64 != getpid())
  {
    NSLog(&cfstr_Wlksettingssto_1.isa);
    v2 = [*(a1 + 32) _dictionaryRepresentationDataOnly];
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __24__WLKSettingsStore_init__block_invoke_2;
    v5[3] = &unk_279E5E5F8;
    v6 = v3;
    v7 = v2;
    v4 = v2;
    [v6 refreshWithCompletion:v5];
  }
}

void __24__WLKSettingsStore_init__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _dictionaryRepresentationDataOnly];
  if (([*(a1 + 40) isEqualToDictionary:?] & 1) == 0)
  {
    NSLog(&cfstr_Wlksettingssto_2.isa);
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"WLKSettingsDidChangeNotification" object:0];
  }
}

- (void)dealloc
{
  didChangeNotificationToken = self->_didChangeNotificationToken;
  if (didChangeNotificationToken)
  {
    notify_cancel(didChangeNotificationToken);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = WLKSettingsStore;
  [(WLKSettingsStore *)&v5 dealloc];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___WLKSettingsStore;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v8, sel_keyPathsForValuesAffectingValueForKey_, v3);
  v5 = [v3 isEqualToString:{@"_watchListAppsFiltered", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = [v4 setByAddingObjectsFromArray:&unk_288222F60];

    v4 = v6;
  }

  return v4;
}

- (void)removePostPlayAutoPlayNextVideoPreferences
{
  v3 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"PostPlayAutoPlayNextVideo"];

  if (v3)
  {
    defaultsAccessor = self->_defaultsAccessor;

    [(NSUserDefaults *)defaultsAccessor removeObjectForKey:@"PostPlayAutoPlayNextVideo"];
  }
}

uint64_t __33__WLKSettingsStore_watchListApps__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (id)settingsForChannelID:(id)a3 externalID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__WLKSettingsStore_settingsForChannelID_externalID___block_invoke;
  v13[3] = &unk_279E602A0;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(accessQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __52__WLKSettingsStore_settingsForChannelID_externalID___block_invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_Wlksettingssto_3.isa, [*(a1[4] + 56) count], a1[5], a1[6]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 56);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 channelID];
        if ([v8 isEqualToString:a1[5]])
        {
          v9 = [v7 externalID];
          v10 = [WLKAppSettings isExternalID:v9 equalToExternalID:a1[6]];

          if (v10)
          {
            NSLog(&cfstr_Wlksettingssto_4.isa);
            objc_storeStrong((*(a1[7] + 8) + 40), v7);
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_copyAppsForChannelID:(id)a3 apps:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 channelID];
        v15 = [v14 isEqualToString:v5];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v16 = [v7 copy];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)setStatus:(unint64_t)a3 forChannelID:(id)a4 externalID:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__8;
    v38 = __Block_byref_object_dispose__8;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__8;
    v32 = __Block_byref_object_dispose__8;
    v33 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__WLKSettingsStore_setStatus_forChannelID_externalID___block_invoke;
    block[3] = &unk_279E602C8;
    v25 = &v28;
    block[4] = self;
    v23 = v8;
    v24 = v9;
    v26 = &v34;
    v27 = a3;
    dispatch_sync(accessQueue, block);
    if (!v35[5] && [v29[5] count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = v29[5];
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v40 count:16];
      if (v13)
      {
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            [v16 setAccessStatus:{2, v18}];
            [v16 setObsolete:1];
            [(WLKSettingsStore *)self _attemptCullingOfObsoleteApp:v16];
          }

          v13 = [v12 countByEnumeratingWithState:&v18 objects:v40 count:16];
        }

        while (v13);
      }
    }

    [(WLKSettingsStore *)self _tickleKVO];

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v34, 8);

    objc_autoreleasePoolPop(v10);
    [(WLKSettingsStore *)self _writeToDisk];
  }

  else
  {
    NSLog(&cfstr_Wlksettingssto_5.isa);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __54__WLKSettingsStore_setStatus_forChannelID_externalID___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v2[7] copy];
  v5 = [v2 _copyAppsForChannelID:v3 apps:v4];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(*(a1[7] + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 externalID];
        v15 = [WLKAppSettings isExternalID:v14 equalToExternalID:a1[6]];

        if (v15)
        {
          NSLog(&cfstr_Wlksettingssto_6.isa);
          objc_storeStrong((*(a1[8] + 8) + 40), v13);
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *(*(a1[8] + 8) + 40);
  if (v16)
  {
    [v16 setAccessStatus:a1[9]];
  }

  else
  {
    v17 = [[WLKAppSettings alloc] initWithChannelID:a1[5] accessStatus:a1[9] displayName:0 externalID:a1[6]];
    [*(a1[4] + 56) addObject:v17];
    NSLog(&cfstr_Wlksettingssto_7.isa);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setName:(id)a3 forChannelID:(id)a4 externalID:(id)a5
{
  v8 = a3;
  v9 = [(WLKSettingsStore *)self settingsForChannelID:a4 externalID:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 displayName];
    v12 = [v8 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      accessQueue = self->_accessQueue;
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __52__WLKSettingsStore_setName_forChannelID_externalID___block_invoke;
      v17 = &unk_279E5E5F8;
      v18 = v10;
      v19 = v8;
      dispatch_sync(accessQueue, &v14);
      [(WLKSettingsStore *)self _tickleKVO:v14];
    }
  }

  [(WLKSettingsStore *)self _writeToDisk];
}

- (void)publishCrossProcessSettingsChangedNotification
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__WLKSettingsStore_publishCrossProcessSettingsChangedNotification__block_invoke;
  v3[3] = &unk_279E5EC50;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __66__WLKSettingsStore_publishCrossProcessSettingsChangedNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[18];
    v4 = WeakRetained;
    v3 = getpid();
    notify_set_state(v2, v3);
    notify_post("com.apple.WatchListKit.WLKSettingsDidChangeNotification");
    WeakRetained = v4;
  }
}

- (NSSet)suppressedSportsEventIDs
{
  v3 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"SuppressedSportsEventIDs"];

  if (v3)
  {
    v4 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"SuppressedSportsEventIDs"];
    v10 = 0;
    v5 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v4 error:&v10];
    v6 = v10;
    v7 = v6;
    if (v6)
    {
      NSLog(&cfstr_Wlksettingssto_8.isa, v6);
      [MEMORY[0x277CBEB98] set];
    }

    else
    {
      [MEMORY[0x277CBEB98] setWithArray:v5];
    }
    v8 = ;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

- (void)setSportsNotificationSuppression:(BOOL)a3 forEventID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(WLKSettingsStore *)self suppressedSportsEventIDs];
  v8 = [v7 mutableCopy];

  v9 = [v8 containsObject:v6];
  if (v4)
  {
    if ((v9 & 1) == 0)
    {
      [v8 addObject:v6];
LABEL_6:
      accessQueue = self->_accessQueue;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __64__WLKSettingsStore_setSportsNotificationSuppression_forEventID___block_invoke;
      v11[3] = &unk_279E5E5F8;
      v12 = v8;
      v13 = self;
      dispatch_sync(accessQueue, v11);
    }
  }

  else if (v9)
  {
    [v8 removeObject:v6];
    goto LABEL_6;
  }
}

void __64__WLKSettingsStore_setSportsNotificationSuppression_forEventID___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allObjects];
  v12 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v12];
  v4 = v12;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_Wlksettingssto_9.isa, v4);
  }

  else
  {
    [*(*(a1 + 40) + 64) setObject:v3 forKey:@"SuppressedSportsEventIDs"];
    v6 = *(a1 + 40);
    v7 = objc_opt_class();
    v8 = MEMORY[0x277CBEB98];
    v13[0] = @"SuppressedSportsEventIDs";
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v8 setWithArray:v9];
    [v7 synchronizeSettingsDefaultsForKeys:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clearAllSportsNotificationSuppression
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WLKSettingsStore_clearAllSportsNotificationSuppression__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __57__WLKSettingsStore_clearAllSportsNotificationSuppression__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 64) removeObjectForKey:@"SuppressedSportsEventIDs"];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = MEMORY[0x277CBEB98];
  v8[0] = @"SuppressedSportsEventIDs";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [v4 setWithArray:v5];
  [v3 synchronizeSettingsDefaultsForKeys:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setOptedIn:(BOOL)a3
{
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WLKSettingsStore_setOptedIn___block_invoke;
  v5[3] = &unk_279E602F0;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(accessQueue, v5);
  [(WLKSettingsStore *)self _writeToDisk];
}

- (NSNumber)optedInVal
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__WLKSettingsStore_optedInVal__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__WLKSettingsStore_optedInVal__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setMigratediOS:(BOOL)a3
{
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__WLKSettingsStore_setMigratediOS___block_invoke;
  v5[3] = &unk_279E602F0;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(accessQueue, v5);
  [(WLKSettingsStore *)self _writeToDisk];
}

- (BOOL)migratediOS
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WLKSettingsStore_migratediOS__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setMigratedtvOS:(BOOL)a3
{
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__WLKSettingsStore_setMigratedtvOS___block_invoke;
  v5[3] = &unk_279E602F0;
  v5[4] = self;
  v6 = a3;
  dispatch_sync(accessQueue, v5);
  [(WLKSettingsStore *)self _writeToDisk];
}

- (BOOL)migratedtvOS
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__WLKSettingsStore_migratedtvOS__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLastSyncDate:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __36__WLKSettingsStore_setLastSyncDate___block_invoke;
  v10 = &unk_279E5E5F8;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, &v7);
  [(WLKSettingsStore *)self _writeToDisk:v7];
}

void __36__WLKSettingsStore_setLastSyncDate___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  [*(*(a1 + 32) + 64) setObject:*(*(a1 + 32) + 96) forKey:@"WLKSettingsLastSyncDate"];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = MEMORY[0x277CBEB98];
  v8[0] = @"WLKSettingsLastSyncDate";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [v4 setWithArray:v5];
  [v3 synchronizeSettingsDefaultsForKeys:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setLastSyncToCloudDate:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __43__WLKSettingsStore_setLastSyncToCloudDate___block_invoke;
  v10 = &unk_279E5E5F8;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, &v7);
  [(WLKSettingsStore *)self _writeToDisk:v7];
}

- (void)setPushToken:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WLKSettingsStore_setPushToken___block_invoke;
  block[3] = &unk_279E5FE18;
  v6 = v4;
  v8 = v6;
  v9 = self;
  v10 = &v11;
  dispatch_sync(accessQueue, block);
  if (*(v12 + 24) == 1)
  {
    [(WLKSettingsStore *)self _writeToDisk];
  }

  _Block_object_dispose(&v11, 8);
}

void __33__WLKSettingsStore_setPushToken___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:*(*(a1 + 40) + 24)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 24), *(a1 + 32));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (NSString)pushToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__WLKSettingsStore_pushToken__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)description
{
  v2 = [(WLKSettingsStore *)self _dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (id)_watchListAppsFiltered
{
  v2 = self;
  v53 = *MEMORY[0x277D85DE8];
  v3 = [(WLKSettingsStore *)self watchListApps];
  v4 = [v3 mutableCopy];

  v35 = v4;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = +[WLKChannelUtilities sharedInstance];
  v7 = [v6 orderedChannels];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    v38 = v5;
    v39 = v2;
    v36 = *v48;
    v37 = v8;
    do
    {
      v12 = 0;
      v40 = v10;
      do
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v47 + 1) + 8 * v12);
        if ([v13 isWatchListEnabled] && (objc_msgSend(v13, "isFirstParty") & 1) == 0)
        {
          v14 = [v13 channelID];
          v15 = [(WLKSettingsStore *)v2 _appsForChannelID:v14];

          if ([v15 count])
          {
            v42 = v12;
            v16 = [MEMORY[0x277CBEB18] array];
            v17 = [v13 appBundleIDs];
            v18 = [v17 firstObject];
            v19 = WLKSubscriptionIdentifierForBundleID(v18);

            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = v15;
            v20 = v15;
            v21 = [v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = 0;
              v24 = *v44;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v44 != v24)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v26 = *(*(&v43 + 1) + 8 * i);
                  v27 = [v26 displayName];
                  if ([v27 length])
                  {
                    v28 = [v26 accessStatus];

                    if (v28)
                    {
                      v29 = [v26 externalID];
                      v30 = [WLKAppSettings isExternalID:v29 equalToExternalID:v19];

                      if (v30)
                      {
                        v31 = v26;

                        v23 = v31;
                      }

                      else
                      {
                        [v16 addObject:v26];
                      }
                    }
                  }

                  else
                  {
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
              }

              while (v22);

              v5 = v38;
              v2 = v39;
              v11 = v36;
              v8 = v37;
              if (v23)
              {
                [v38 addObject:v23];
                goto LABEL_28;
              }
            }

            else
            {
            }

            if ([v16 count])
            {
              v32 = [v16 firstObject];
              [v5 addObject:v32];
            }

            v23 = 0;
LABEL_28:

            v10 = v40;
            v15 = v41;
            v12 = v42;
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v10);
  }

  [v5 sortUsingComparator:&__block_literal_global_102];
  v33 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __42__WLKSettingsStore__watchListAppsFiltered__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (void)_updateDisplayNamesForUI:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__WLKSettingsStore__updateDisplayNamesForUI___block_invoke;
  v7[3] = &unk_279E5EFC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__WLKSettingsStore__updateDisplayNamesForUI___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = +[WLKChannelUtilities sharedInstance];
  v3 = [v2 channelsByID];

  if (v3)
  {
    [*(a1 + 32) beginIgnoringChanges];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = a1;
    obj = [*(a1 + 32) watchListApps];
    v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v4)
    {
      goto LABEL_21;
    }

    v5 = v4;
    v6 = *v25;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 channelID];
        v10 = [v3 objectForKeyedSubscript:v9];

        v11 = [v10 title];
        if ([v11 length])
        {
          v12 = [v8 displayName];
          v13 = v11;
          v14 = v12;
          v15 = v14;
          if (v13 == v14)
          {

            goto LABEL_18;
          }

          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {

LABEL_17:
            v18 = *(v22 + 32);
            v15 = [v8 channelID];
            v19 = [v8 externalID];
            [v18 setName:v13 forChannelID:v15 externalID:v19];
            v13 = v19;
LABEL_18:

            goto LABEL_19;
          }

          v17 = [v13 isEqual:v14];

          if ((v17 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

LABEL_19:
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v5)
      {
LABEL_21:

        a1 = v22;
        [*(v22 + 32) endIgnoringChanges];
        break;
      }
    }
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v3 != 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)refreshWithCompletion:(id)a3
{
  v4 = a3;
  if ([(WLKSettingsStore *)self ignoreChangesCount]< 1)
  {
    [(WLKSettingsStore *)self _loadFromDiskWithCompletion:v4];
  }

  else
  {
    NSLog(&cfstr_Wlksettingssto_10.isa);
    if (v4)
    {
      v4[2]();
    }
  }
}

- (id)_dictionaryRepresentationCopyingItems:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WLKSettingsStore__dictionaryRepresentationCopyingItems___block_invoke;
  block[3] = &unk_279E60318;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(accessQueue, block);
  v6 = [v11[5] copy];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __58__WLKSettingsStore__dictionaryRepresentationCopyingItems___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v2 forKeyedSubscript:@"DSID"];

  v3 = *(a1 + 32);
  v4 = v3[3];
  if (v4)
  {
    v5 = [v4 copy];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKeyedSubscript:@"PushToken"];

    v3 = *(a1 + 32);
  }

  v6 = v3[12];
  if (v6)
  {
    v7 = [v6 copy];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v7 forKeyedSubscript:@"LastSyncDate"];

    v3 = *(a1 + 32);
  }

  v8 = v3[13];
  if (v8)
  {
    v9 = [v8 copy];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"LastSyncToCloudDate"];
  }

  v14 = [MEMORY[0x277CBEB38] dictionary];
  if ([*(*(a1 + 32) + 56) count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(*(a1 + 32) + 56) copyItems:*(a1 + 48)];
    [v14 setObject:v10 forKeyedSubscript:@"AppsArray"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 48)];
  [v14 setObject:v11 forKeyedSubscript:@"OptedIn"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 49)];
  [v14 setObject:v12 forKeyedSubscript:@"MigratediOS"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 50)];
  [v14 setObject:v13 forKeyedSubscript:@"MigratedtvOS"];

  [*(*(*(a1 + 40) + 8) + 40) setObject:v14 forKeyedSubscript:@"SynchronizedSettings"];
}

- (id)_dictionaryRepresentationDataOnly
{
  v2 = [(WLKSettingsStore *)self _dictionaryRepresentationCopyingItems:1];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:@"LastSyncDate"];
  [v3 removeObjectForKey:@"LastSyncToCloudDate"];
  v4 = [v3 copy];

  return v4;
}

- (void)_loadFromDiskWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WLKSettingsStore__loadFromDiskWithCompletion___block_invoke;
  v6[3] = &unk_279E60368;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v6[4] = self;
  v7 = v5;
  [(WLKSettingsStore *)self _dictionaryOnDisk:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__WLKSettingsStore__loadFromDiskWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 objectForKeyedSubscript:@"DSID"];
    v33 = [WeakRetained _dictionaryRepresentation];
    v6 = [MEMORY[0x277D6C478] activeAccount];
    v7 = [v6 ams_DSID];
    v8 = [v7 stringValue];

    v9 = v8;
    v10 = v5;
    v11 = v10;
    v31 = v10;
    if (v9 == v10)
    {
      v16 = v9;
    }

    else
    {
      if (v10)
      {
        v12 = v9 == 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      if (v12)
      {
      }

      else
      {
        v14 = [v9 isEqual:{v10, v10}];

        if (v14)
        {
          goto LABEL_21;
        }
      }

      v17 = [MEMORY[0x277CBEB38] dictionary];

      if (!v13 || (NSLog(&cfstr_Wlksettingssto_12.isa), !WLKShouldRunInProcess()))
      {
        v3 = v17;
        goto LABEL_21;
      }

      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [WeakRetained _supportPath];
      [v16 removeItemAtPath:v11 error:0];
      v3 = v17;
    }

LABEL_21:
    v18 = [v3 objectForKeyedSubscript:{@"PushToken", v31}];
    v19 = [v3 objectForKeyedSubscript:@"SynchronizedSettings"];
    v20 = [v19 objectForKeyedSubscript:@"AppsArray"];
    v21 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__WLKSettingsStore__loadFromDiskWithCompletion___block_invoke_2;
    block[3] = &unk_279E60340;
    objc_copyWeak(&v42, (a1 + 48));
    v41 = *(a1 + 40);
    v3 = v3;
    v35 = v3;
    v22 = v9;
    v36 = v22;
    v23 = v18;
    v37 = v23;
    v24 = v19;
    v38 = v24;
    v25 = v20;
    v26 = *(a1 + 32);
    v39 = v25;
    v40 = v26;
    dispatch_sync(v21, block);
    v27 = [v33 objectForKeyedSubscript:@"SynchronizedSettings"];
    v28 = [v27 objectForKeyedSubscript:@"AppsArray"];
    v29 = [v25 isEqualToArray:v28];

    if ((v29 & 1) == 0)
    {
      [WeakRetained _tickleKVO];
    }

    v30 = *(a1 + 40);
    if (v30)
    {
      (*(v30 + 16))();
    }

    objc_destroyWeak(&v42);
    goto LABEL_26;
  }

  NSLog(&cfstr_Wlksettingssto_11.isa);
  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }

LABEL_26:
}

void __48__WLKSettingsStore__loadFromDiskWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v63 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    +[WLKSystemPreferencesStore sharedPreferences];
    v4 = v3 = WeakRetained;
    [v4 migratePrivateModeFromDiskIfNeeded:*(v1 + 32)];

    v5 = +[WLKSystemPreferencesStore sharedPreferences];
    [v5 migrateSportsSpoilersFromDiskIfNeeded:*(v1 + 32)];

    v6 = [*(v1 + 32) objectForKeyedSubscript:@"LastSyncDate"];
    v7 = *(v3 + 12);
    *(v3 + 12) = v6;

    v8 = [*(v1 + 32) objectForKeyedSubscript:@"LastSyncToCloudDate"];
    v9 = *(v3 + 13);
    *(v3 + 13) = v8;

    objc_storeStrong(v3 + 4, *(v1 + 40));
    objc_storeStrong(v3 + 3, *(v1 + 48));
    v10 = [*(v1 + 56) objectForKeyedSubscript:@"OptedIn"];
    *(v3 + 48) = [v10 BOOLValue];

    v11 = [*(v1 + 56) objectForKeyedSubscript:@"OptedIn"];
    v12 = *(v3 + 5);
    *(v3 + 5) = v11;

    v13 = [*(v1 + 56) objectForKeyedSubscript:@"MigratediOS"];
    *(v3 + 49) = [v13 BOOLValue];

    v14 = [*(v1 + 56) objectForKeyedSubscript:@"MigratedtvOS"];
    v44 = v3;
    *(v3 + 50) = [v14 BOOLValue];

    v49 = [MEMORY[0x277CBEB18] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = *(v1 + 64);
    v48 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (!v48)
    {
      goto LABEL_28;
    }

    v46 = v1;
    v47 = *v58;
    while (1)
    {
      for (i = 0; i != v48; i = v34 + 1)
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v50 = i;
        v16 = *(*(&v57 + 1) + 8 * i);
        v17 = MEMORY[0x277CCACA8];
        v18 = [v16 channelID];
        v19 = [v16 externalID];
        v20 = [v17 stringWithFormat:@"%@:%@", v18, v19];
        [v49 addObject:v20];

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = *(*(v1 + 72) + 56);
        v22 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (!v22)
        {

LABEL_25:
          [*(*(v1 + 72) + 56) addObject:v16];
          v34 = v50;
          continue;
        }

        v23 = v22;
        v51 = 0;
        v24 = *v54;
        do
        {
          v25 = 0;
          v52 = v23;
          do
          {
            if (*v54 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v53 + 1) + 8 * v25);
            v27 = [v26 channelID];
            v28 = [v16 channelID];
            if (([v27 isEqualToString:v28] & 1) == 0)
            {

              goto LABEL_16;
            }

            v29 = [v26 externalID];
            v30 = v16;
            v31 = [v16 externalID];
            v32 = [WLKAppSettings isExternalID:v29 equalToExternalID:v31];

            if (v32)
            {
              v27 = v51;
              v23 = v52;
              v51 = v26;
              v16 = v30;
LABEL_16:

              goto LABEL_18;
            }

            v16 = v30;
            v23 = v52;
LABEL_18:
            ++v25;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v23);

        v1 = v46;
        if (!v51)
        {
          goto LABEL_25;
        }

        [v51 setAccessStatus:{objc_msgSend(v16, "accessStatus")}];
        v33 = [v16 displayName];
        v34 = v50;
        if ([v33 length])
        {
          [v51 setDisplayName:v33];
        }
      }

      v48 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (!v48)
      {
LABEL_28:

        v35 = objc_alloc_init(MEMORY[0x277CCAB58]);
        if ([*(*(v1 + 72) + 56) count])
        {
          v36 = 0;
          do
          {
            v37 = [*(*(v1 + 72) + 56) objectAtIndex:v36];
            v38 = MEMORY[0x277CCACA8];
            v39 = [v37 channelID];
            v40 = [v37 externalID];
            v41 = [v38 stringWithFormat:@"%@:%@", v39, v40];

            if (([v49 containsObject:v41] & 1) == 0)
            {
              [v35 addIndex:v36];
            }

            ++v36;
          }

          while (v36 < [*(*(v1 + 72) + 56) count]);
        }

        [*(*(v1 + 72) + 56) removeObjectsAtIndexes:v35];

        WeakRetained = v44;
        goto LABEL_36;
      }
    }
  }

  NSLog(&cfstr_Wlksettingssto_13.isa);
  v42 = *(v1 + 80);
  if (v42)
  {
    (*(v42 + 16))();
  }

LABEL_36:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_writeToDisk
{
  if ([(WLKSettingsStore *)self ignoreChangesCount]< 1)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = dispatch_semaphore_create(0);
    v5 = [(WLKSettingsStore *)self _dictionaryRepresentation];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__WLKSettingsStore__writeToDisk__block_invoke;
    v8[3] = &unk_279E60390;
    v9 = v4;
    v6 = v4;
    [(WLKSettingsStore *)self _writeToDisk:v5 completion:v8];

    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v6, v7);

    objc_autoreleasePoolPop(v3);
  }

  else
  {

    [(WLKSettingsStore *)self setHasOutstandingChanges:1];
  }
}

- (void)_writeToDisk:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (WLKShouldRunInProcess())
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__WLKSettingsStore__writeToDisk_completion___block_invoke;
    v12[3] = &unk_279E60430;
    objc_copyWeak(&v15, &location);
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    [(WLKSettingsStore *)self _dictionaryOnDisk:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    readWriteQueue = self->_readWriteQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__WLKSettingsStore__writeToDisk_completion___block_invoke_5;
    v9[3] = &unk_279E60480;
    v9[4] = self;
    v11 = v7;
    v10 = v6;
    dispatch_async(readWriteQueue, v9);
  }
}

void __44__WLKSettingsStore__writeToDisk_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_initWeak(&location, WeakRetained);
  v5 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WLKSettingsStore__writeToDisk_completion___block_invoke_2;
  v7[3] = &unk_279E60408;
  objc_copyWeak(&v12, &location);
  v8 = *(a1 + 40);
  v9 = v3;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __44__WLKSettingsStore__writeToDisk_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([*(a1 + 32) isEqualToDictionary:*(a1 + 40)])
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))(v3, 1);
    }

    NSLog(&cfstr_Wlksettingssto_15.isa);
  }

  else
  {
    v4 = WLKDefaultSupportPath();
    if ([v4 length])
    {
      v5 = [MEMORY[0x277CCAA00] defaultManager];
      [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

      v6 = *(a1 + 32);
      v17 = 0;
      v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v17];
      v8 = v17;
      if (v7)
      {
        v9 = [WeakRetained _supportPath];
        v10 = [v7 writeToFile:v9 atomically:1];
      }

      else
      {
        v10 = 0;
      }

      NSLog(&cfstr_Wlksettingssto_14.isa, v10);
      v11 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__WLKSettingsStore__writeToDisk_completion___block_invoke_3;
      block[3] = &unk_279E603E0;
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      block[4] = WeakRetained;
      block[5] = v12;
      v15 = v13;
      v16 = v10;
      dispatch_async(v11, block);
    }

    else
    {
      NSLog(&cfstr_Wlksettingssto.isa);
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __44__WLKSettingsStore__writeToDisk_completion___block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__WLKSettingsStore__writeToDisk_completion___block_invoke_4;
  v4[3] = &unk_279E603B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  [v2 _loadFromDiskWithCompletion:v4];
}

uint64_t __44__WLKSettingsStore__writeToDisk_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = getpid();
  notify_set_state(v2, v3);
  notify_post("com.apple.WatchListKit.WLKSettingsDidChangeNotification");
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(a1 + 48);
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __44__WLKSettingsStore__writeToDisk_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WLKSettingsStore__writeToDisk_completion___block_invoke_6;
  v7[3] = &unk_279E5EB38;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];

  NSLog(&cfstr_Wlksettingssto_17.isa);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__WLKSettingsStore__writeToDisk_completion___block_invoke_7;
  v5[3] = &unk_279E60458;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 writeSettingsStore:v4 replyHandler:v5];
}

uint64_t __44__WLKSettingsStore__writeToDisk_completion___block_invoke_6(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_Wlksettingssto_16.isa, a2);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __44__WLKSettingsStore__writeToDisk_completion___block_invoke_7(uint64_t a1)
{
  NSLog(&cfstr_Wlksettingssto_18.isa);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_dictionaryOnDisk:(id)a3
{
  v4 = a3;
  if (+[WLKSettingsStore isHostedInRemoteViewService])
  {
    v5 = 10000000;
  }

  else
  {
    v5 = 0;
  }

  v6 = dispatch_time(0, v5);
  readWriteQueue = self->_readWriteQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__WLKSettingsStore__dictionaryOnDisk___block_invoke;
  v9[3] = &unk_279E5EFC0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_after(v6, readWriteQueue, v9);
}

void __38__WLKSettingsStore__dictionaryOnDisk___block_invoke(uint64_t a1)
{
  if (WLKShouldRunInProcess())
  {
    v2 = objc_autoreleasePoolPush();
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__8;
    v31 = __Block_byref_object_dispose__8;
    v32 = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__WLKSettingsStore__dictionaryOnDisk___block_invoke_2;
    block[3] = &unk_279E5F280;
    block[4] = v3;
    block[5] = &v27;
    dispatch_sync(v4, block);
    if (v28[5])
    {
      v5 = objc_alloc(MEMORY[0x277CCAAC8]);
      v6 = v28[5];
      v25 = 0;
      v7 = [v5 initForReadingFromData:v6 error:&v25];
      v8 = v25;
      v9 = v8;
      if (v8)
      {
        NSLog(&cfstr_Wlksettingssto_19.isa, v8);
        v10 = 0;
      }

      else
      {
        v13 = MEMORY[0x277CBEB98];
        v14 = objc_opt_class();
        v15 = objc_opt_class();
        v16 = objc_opt_class();
        v17 = objc_opt_class();
        v18 = objc_opt_class();
        v19 = [v13 setWithObjects:{v14, v15, v16, v17, v18, objc_opt_class(), 0}];
        v10 = [v7 decodeObjectOfClasses:v19 forKey:*MEMORY[0x277CCA308]];
      }
    }

    else
    {
      v10 = 0;
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      (*(v20 + 16))(v20, v10);
    }

    _Block_object_dispose(&v27, 8);

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v11 = [*(a1 + 32) _connection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__WLKSettingsStore__dictionaryOnDisk___block_invoke_3;
    v23[3] = &unk_279E5EB38;
    v24 = *(a1 + 40);
    v12 = [v11 remoteObjectProxyWithErrorHandler:v23];

    NSLog(&cfstr_Wlksettingssto_20.isa);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__WLKSettingsStore__dictionaryOnDisk___block_invoke_4;
    v21[3] = &unk_279E604A8;
    v22 = *(a1 + 40);
    [v12 readSettingsStore:v21];
  }
}

void __38__WLKSettingsStore__dictionaryOnDisk___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA90];
  v6 = [*(a1 + 32) _supportPath];
  v3 = [v2 dataWithContentsOfFile:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __38__WLKSettingsStore__dictionaryOnDisk___block_invoke_3(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_Wlksettingssto_16.isa, a2);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __38__WLKSettingsStore__dictionaryOnDisk___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  NSLog(&cfstr_Wlksettingssto_21.isa);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)forceUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v3 = +[WLKChannelUtilities sharedInstanceFiltered];
  [v3 invalidateCache];

  [WLKSettingsCloudUtilities forceUpdateWithCompletion:v4];
}

- (void)synchronize:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1)
  {
    v7 = v5;
    v5 = [WLKSettingsCloudUtilities updateLocalStoreWithCompletion:v5];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v7 = v5;
    v5 = [WLKSettingsCloudUtilities updateCloudStoreWithCompletion:v5];
  }

  v6 = v7;
LABEL_6:

  MEMORY[0x2821F96F8](v5, v6);
}

- (BOOL)synchronize:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [v5 isMainThread];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"WLKSettingsStoreException" reason:@"don't call synchronize: on main thread!" userInfo:0];
    [v7 raise];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__WLKSettingsStore_synchronize___block_invoke;
  v12[3] = &unk_279E604D0;
  v14 = &v15;
  v9 = v8;
  v13 = v9;
  [(WLKSettingsStore *)self synchronize:a3 completion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (void)_attemptCullingOfObsoleteApp:(id)a3
{
  v4 = a3;
  v5 = +[WLKReachabilityMonitor sharedInstance];
  v6 = [v5 isNetworkReachable];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__WLKSettingsStore__attemptCullingOfObsoleteApp___block_invoke;
    v7[3] = &unk_279E604F8;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [WLKSettingsCloudUtilities updateCloudStoreAppSettings:v8 deleteHistory:0 removeEntry:1 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __49__WLKSettingsStore__attemptCullingOfObsoleteApp___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _removeWatchListApp:*(a1 + 32)];
  }
}

+ (void)synchronizeSettingsDefaultsForKeys:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WLKSettingsStore_synchronizeSettingsDefaultsForKeys___block_invoke;
  block[3] = &unk_279E5EE08;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __55__WLKSettingsStore_synchronizeSettingsDefaultsForKeys___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Wlksettingssto_23.isa);
  v3 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v2 = WLKTVAppBundleID();
  [v3 synchronizeUserDefaultsDomain:v2 keys:*(a1 + 32)];

  NSLog(&cfstr_Wlksettingssto_24.isa);
}

- (void)_activeAccountChangedNotification:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [MEMORY[0x277D6C478] activeAccount];
  v6 = [v5 ams_DSID];

  if (v6)
  {
    v7 = [v5 ams_DSID];
    v6 = [v7 stringValue];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__WLKSettingsStore__activeAccountChangedNotification___block_invoke;
  block[3] = &unk_279E5FE18;
  v9 = v6;
  v11 = v9;
  v12 = self;
  v13 = &v14;
  dispatch_sync(accessQueue, block);
  if (*(v15 + 24) == 1)
  {
    [(WLKSettingsStore *)self refreshWithCompletion:0];
  }

  _Block_object_dispose(&v14, 8);
}

void __54__WLKSettingsStore__activeAccountChangedNotification___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    if (([v2 isEqualToString:*(a1[5] + 32)] & 1) == 0)
    {
      NSLog(&cfstr_Wlksettingssto_25.isa);
      *(*(a1[6] + 8) + 24) = 1;
    }
  }
}

- (BOOL)sportsScoreSpoilersAllowed
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = [v2 sportsScoreSpoilersAllowed];

  return v3;
}

- (BOOL)upNextLockupsUseCoverArt
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = [v2 upNextLockupsUseCoverArt];

  return v3;
}

- (BOOL)privateModeEnabled
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = [v2 privateModeEnabled];

  return v3;
}

- (BOOL)postPlayAutoPlayNextVideo
{
  v2 = +[WLKSystemPreferencesStore sharedPreferences];
  v3 = [v2 postPlayAutoPlayNextVideo];

  return v3;
}

- (id)_appsForChannelID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = [MEMORY[0x277CBEB18] array];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WLKSettingsStore__appsForChannelID___block_invoke;
  block[3] = &unk_279E5FE18;
  block[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  dispatch_sync(accessQueue, block);
  if ([v13[5] count])
  {
    v7 = [v13[5] copy];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __38__WLKSettingsStore__appsForChannelID___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1[4] + 56);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 channelID];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          [*(*(a1[6] + 8) + 40) addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeWatchListApp:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __40__WLKSettingsStore__removeWatchListApp___block_invoke;
  v10 = &unk_279E5E5F8;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, &v7);
  [(WLKSettingsStore *)self _tickleKVO:v7];
  [(WLKSettingsStore *)self _writeToDisk];
}

- (void)beginIgnoringChanges
{
  v3 = [(WLKSettingsStore *)self ignoreChangesCount];
  if (!v3)
  {
    NSLog(&cfstr_Wlksettingssto_26.isa);
  }

  [(WLKSettingsStore *)self setIgnoreChangesCount:(v3 + 1)];
}

- (void)endIgnoringChanges
{
  if ([(WLKSettingsStore *)self ignoreChangesCount]>= 1)
  {
    [(WLKSettingsStore *)self setIgnoreChangesCount:[(WLKSettingsStore *)self ignoreChangesCount]- 1];
    if (![(WLKSettingsStore *)self ignoreChangesCount])
    {
      NSLog(&cfstr_Wlksettingssto_27.isa);
      if ([(WLKSettingsStore *)self hasOutstandingChanges])
      {
        NSLog(&cfstr_Wlksettingssto_28.isa);
        [(WLKSettingsStore *)self setHasOutstandingChanges:0];

        [(WLKSettingsStore *)self _writeToDisk];
      }
    }
  }
}

void __31__WLKSettingsStore__connection__block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_Wlksettingssto_30.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__WLKSettingsStore__connection__block_invoke_3;
    block[3] = &unk_279E5EE08;
    v6 = WeakRetained;
    dispatch_async(v4, block);
  }
}

void __31__WLKSettingsStore__connection__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

@end