@interface WBTabGroupManager
+ (id)ephemeralTabGroupManager;
- (BOOL)_didLocallyCreateUnnamedTabGroup:(id)a3;
- (BOOL)_needsInitialBlankTabInTabGroup:(id)a3;
- (BOOL)_shouldBeginDevicePresenceReporting;
- (BOOL)_shouldEndDevicePresenceReporting;
- (BOOL)closeAllTabsOnDevice:(id)a3;
- (BOOL)closeTab:(id)a3 onDevice:(id)a4;
- (BOOL)hasMultipleProfiles;
- (BOOL)isTab:(id)a3 childOfPinnedTabGroupOfNamedProfileOfUnnamedTabGroup:(id)a4;
- (NSArray)allNamedTabGroupsUnsorted;
- (NSArray)allSyncedTabGroupsExceptRemoteUnnamedTabGroups;
- (NSArray)namedProfiles;
- (NSArray)namedTabGroupsInDefaultProfile;
- (NSArray)profiles;
- (NSSet)allNamedProfileIdentifiers;
- (NSSet)allProfileIdentifiers;
- (NSSet)recentlyAddedTabGroupsAwaitingFirstStartPage;
- (WBProfile)defaultProfile;
- (WBTabGroupManager)initWithCollection:(id)a3;
- (id)_allSyncedTabGroupsExceptRemoteUnnamedTabGroups;
- (id)_allTabGroupsUnsorted;
- (id)_devicesForProfileWithIdentifier:(id)a3;
- (id)_findLocalDeviceForProfileWithIdentifier:(id)a3;
- (id)_findOrCreateLocalDeviceForProfileWithIdentifier:(id)a3;
- (id)_generatePositionForDevice:(id)a3 afterDevice:(id)a4;
- (id)_generatePositionForProfile:(id)a3 afterProfile:(id)a4;
- (id)_generatePositionForTabGroup:(id)a3 afterTabGroup:(id)a4;
- (id)_generatePositionForTabGroup:(id)a3 afterTabGroup:(id)a4 inTabGroups:(id)a5;
- (id)_insertDevice:(id)a3 inProfile:(id)a4 completionHandler:(id)a5;
- (id)_insertTabGroup:(id)a3 afterTabGroup:(id)a4 isMove:(BOOL)a5;
- (id)_namedProfiles;
- (id)_performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier:(id)a3 devicesByUUID:(id)a4 uninsertedSyncableTabsFromSyncableTabsByUUID:(id)a5;
- (id)_profiles;
- (id)_remoteDevicesForProfileWithIdentifier:(id)a3;
- (id)_shareRecordIfNeededToBeginCollaborationForTabGroup:(id)a3;
- (id)_shareRecordIfNeededToEndCollaborationForTabGroup:(id)a3;
- (id)_tabCacheForTabGroup:(id)a3;
- (id)_tabGroupAfterTabGroup:(id)a3 inTabGroups:(id)a4;
- (id)_tabGroupCacheForTabGroup:(id)a3;
- (id)_tabGroupWithUUID:(id)a3;
- (id)_tabGroupsForProfileWithIdentifier:(id)a3;
- (id)_tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:(id)a3;
- (id)_tabWithUUID:(id)a3;
- (id)_unnamedTabGroupsForDeviceWithUUID:(id)a3;
- (id)_unnamedTabGroupsForProfileWithIdentifier:(id)a3;
- (id)_unsafeTabGroupUUIDsToCKShares;
- (id)devicesForProfile:(id)a3;
- (id)insertUnnamedTabGroup:(id)a3;
- (id)namedTabGroupsForProfileWithIdentifier:(id)a3;
- (id)positionGenerator:(id)a3 positionForRecordName:(id)a4;
- (id)positionGenerator:(id)a3 recordNameOfBookmarksAfterRecordWithName:(id)a4;
- (id)positionGenerator:(id)a3 recordNameOfBookmarksBeforeRecordWithName:(id)a4;
- (id)profileWithIdentifier:(id)a3;
- (id)profileWithServerID:(id)a3;
- (id)shareRecordForTabGroup:(id)a3;
- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)a3;
- (id)tabGroupMatchingShare:(id)a3;
- (id)tabGroupWithServerID:(id)a3;
- (id)topScopedBookmarkListForTabGroup:(id)a3;
- (id)unnamedTabGroupsForProfileWithIdentifier:(id)a3;
- (id)updateProfileWithIdentifier:(id)a3 persist:(BOOL)a4 usingBlock:(id)a5 completionHandler:(id)a6;
- (int64_t)_nextInMemoryPositionChangeID;
- (unint64_t)numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)a3;
- (void)_addTab:(id)a3 toParentIdentifierInTabsToParentIdentifiersDictionary:(id)a4;
- (void)_addTabsInTabGroups:(id)a3 toParentIdentifierInTabsToParentIdentifiersDictionary:(id)a4;
- (void)_beginDevicePresenceReportingIfNeeded;
- (void)_cacheProfile:(id)a3;
- (void)_cacheTabGroup:(id)a3 creatorDeviceUUID:(id)a4;
- (void)_dequeueNextAcceptCloudKitShareMetadataIfNeeded;
- (void)_didModifyUnnamedTabGroup:(id)a3;
- (void)_didModifyUnnamedTabGroupInDeviceWithUUID:(id)a3;
- (void)_didReceiveShare:(id)a3 forTabGroupUUID:(id)a4;
- (void)_didRemoveProfiles:(id)a3 updateProfiles:(id)a4 previousProfiles:(id)a5 removeTabGroups:(id)a6 updateTabGroups:(id)a7 previousTabGroups:(id)a8;
- (void)_endDevicePresenceReportingIfNeeded;
- (void)_loadDatabase;
- (void)_mergeTabGroups:(id)a3;
- (void)_movePresenceForParticipantToTabWithUUID:(id)a3;
- (void)_notifyScopedBookmarkChangesInFolderWithID:(int)a3;
- (void)_notifySyncDidFinishedForScopedBookmarks;
- (void)_reloadProfilesAndTabGroupsAndNotify:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)_reorderTabGroup:(id)a3 afterTabGroup:(id)a4;
- (void)_sendAcceptanceResult:(int64_t)a3 forShareMetadata:(id)a4 toHandler:(id)a5;
- (void)_tabGroupSyncDidFinish:(id)a3;
- (void)_uncacheTab:(id)a3;
- (void)_uncacheTabGroup:(id)a3;
- (void)_updateDeviceNameIfNeededWithName:(id)a3;
- (void)_updatePositionsForTabsInTabGroup:(id)a3;
- (void)_updateTabGroupShares:(id)a3;
- (void)_updateTabsAndCacheTabGroup:(id)a3 withTabsByParentIdentifiers:(id)a4 creatorDeviceUUID:(id)a5;
- (void)_userDidAcceptTabGroupShareWithMetadata:(id)a3 inProfileWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)_willFlushDeletedTabs:(id)a3 inTabGroup:(id)a4;
- (void)acceptTabGroupShareWithMetadata:(id)a3 handler:(id)a4;
- (void)activeParticipantsDidUpdateInTabGroupWithUUID:(id)a3;
- (void)activeParticipantsDidUpdateInTabWithUUID:(id)a3;
- (void)appendProfile:(id)a3 completionHandler:(id)a4;
- (void)beginParticipantPresenceReportingForTabGroupWithUUID:(id)a3;
- (void)beginSharingTabGroupWithUUID:(id)a3 completionHandler:(id)a4;
- (void)closeAllTabsInProfilesWithIdentifiers:(id)a3;
- (void)dealloc;
- (void)deletePrivateWindowState:(id)a3;
- (void)deleteScopedBookmarkWithUUID:(id)a3 notify:(BOOL)a4 completionHandler:(id)a5;
- (void)deleteWindowStates:(id)a3 completionHandler:(id)a4;
- (void)disableDevicePresenceReporting;
- (void)endParticipantPresenceReportingForTabGroupWithUUID:(id)a3;
- (void)flushDeletedTabsInTabGroup:(id)a3;
- (void)getActiveParticipantsInTab:(id)a3 completionHandler:(id)a4;
- (void)getActiveParticipantsInTabGroup:(id)a3 completionHandler:(id)a4;
- (void)getPresenceTabUUIDForParticipantIdentifier:(id)a3 inTabGroup:(id)a4 completionHandler:(id)a5;
- (void)movePresenceForParticipantToTabWithUUID:(id)a3;
- (void)moveProfile:(id)a3 afterProfile:(id)a4;
- (void)moveTabGroup:(id)a3 afterTabGroup:(id)a4;
- (void)moveTabGroup:(id)a3 toProfileWithIdentifier:(id)a4 afterTabGroup:(id)a5;
- (void)moveTabs:(id)a3 toTabGroup:(id)a4 afterTab:(id)a5 withoutPersistingTabGroupsWithUUIDStrings:(id)a6;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)participantPresenceCoordinator:(id)a3 didUpdateActiveParticipants:(id)a4 inTabGroupWithIdentifier:(id)a5;
- (void)participantPresenceCoordinator:(id)a3 didUpdateActiveParticipants:(id)a4 inTabWithIdentifier:(id)a5;
- (void)registerPinnedTab:(id)a3;
- (void)registerWindowState:(id)a3;
- (void)reloadTabGroupsFromDatabaseWithCompletionHandler:(id)a3;
- (void)removeProfile:(id)a3 completionHandler:(id)a4;
- (void)removeTabGroup:(id)a3;
- (void)reorderScopedBookmarkWithUUID:(id)a3 afterBookmarkWithUUID:(id)a4 notify:(BOOL)a5;
- (void)saveWindowState:(id)a3 completionHandler:(id)a4;
- (void)setShouldPrepareBackgroundTaskExpiration:(BOOL)a3;
- (void)setSyncAgentProxy:(id)a3;
- (void)shareDidUpdateForTabGroupWithUUID:(id)a3;
- (void)syncDidFinishWithResult:(int64_t)a3;
- (void)unregisterWindowState:(id)a3;
- (void)updateScopedBookmarkWithUUID:(id)a3 title:(id)a4 address:(id)a5 notify:(BOOL)a6;
- (void)updateTabGroupWithUUID:(id)a3 persist:(BOOL)a4 usingBlock:(id)a5;
- (void)updateTabWithUUID:(id)a3 persist:(BOOL)a4 notify:(BOOL)a5 usingBlock:(id)a6;
- (void)updateTabsInTabGroupWithUUID:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)waitForSetupWithCompletionHandler:(id)a3;
@end

@implementation WBTabGroupManager

- (void)_loadDatabase
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_DEFAULT, "Loading all profiles, tab groups, and tabs records in the database", &buf, 2u);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  os_unfair_lock_lock(&profilesLock);
  v42 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(WBTabCollection *)self->_tabCollection mutableProfiles];
  v4 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v4)
  {
    v5 = *v54;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v54 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v53 + 1) + 8 * i);
        v8 = [v7 identifier];
        [(NSMutableDictionary *)v42 setObject:v7 forKeyedSubscript:v8];

        v9 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v7 privacyPreservingDescription];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v11;
          _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_DEFAULT, "Loaded profile from database: %{public}@", &buf, 0xCu);
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v12 = [v7 devices];
        v13 = [v12 countByEnumeratingWithState:&v49 objects:v63 count:16];
        if (v13)
        {
          v14 = *v50;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v50 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v49 + 1) + 8 * j);
              v17 = [v16 uuid];
              [(NSMutableDictionary *)v3 setObject:v16 forKeyedSubscript:v17];
            }

            v13 = [v12 countByEnumeratingWithState:&v49 objects:v63 count:16];
          }

          while (v13);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v4);
  }

  v18 = *MEMORY[0x277D49BD8];
  v19 = [(NSMutableDictionary *)v42 objectForKeyedSubscript:*MEMORY[0x277D49BD8]];
  v20 = v19 == 0;

  if (v20)
  {
    v21 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_272C20000, v21, OS_LOG_TYPE_DEFAULT, "Default profile does not exist. Inserting one...", &buf, 2u);
    }

    v22 = [(WBTabCollection *)self->_tabCollection mutableNamedTabGroupsInDefaultProfile];
    v23 = [WBMutableProfile createDefaultProfileWithTabGroups:v22];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__8;
    v61 = __Block_byref_object_dispose__8;
    v62 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __34__WBTabGroupManager__loadDatabase__block_invoke;
    v48[3] = &unk_279E77640;
    v48[4] = &buf;
    [(NSMutableDictionary *)v42 enumerateKeysAndObjectsUsingBlock:v48];
    v24 = MEMORY[0x277D49E80];
    v25 = *(*(&buf + 1) + 40);
    v26 = [(WBTabGroupManager *)self deviceIdentifier];
    v27 = [v24 positionBetweenPosition:0 andPosition:v25 withDeviceIdentifier:v26 changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
    [v23 setSyncPosition:v27];

    tabCollection = self->_tabCollection;
    v57 = v23;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [(WBTabCollection *)tabCollection insertItemsIntoPlace:v29 inParentWithID:0 completionHandler:&__block_literal_global_24];

    [(NSMutableDictionary *)v42 setObject:v23 forKeyedSubscript:v18];
    _Block_object_dispose(&buf, 8);
  }

  profilesByIdentifier = self->_profilesByIdentifier;
  self->_profilesByIdentifier = v42;
  v31 = v42;

  devicesByUUID = self->_devicesByUUID;
  self->_devicesByUUID = v3;
  v33 = v3;

  v34 = [MEMORY[0x277CBEB38] dictionary];
  v35 = self->_profilesByIdentifier;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_42;
  v46[3] = &unk_279E77690;
  v46[4] = self;
  v36 = v34;
  v47 = v36;
  [(NSMutableDictionary *)v35 enumerateKeysAndObjectsUsingBlock:v46];
  v37 = self->_devicesByUUID;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_3;
  v45[3] = &unk_279E776B8;
  v45[4] = self;
  [(NSMutableDictionary *)v37 enumerateKeysAndObjectsUsingBlock:v45];
  os_unfair_lock_unlock(&profilesLock);
  os_unfair_lock_unlock(&tabGroupsLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_4;
  block[3] = &unk_279E753F0;
  block[4] = self;
  v44 = v36;
  v38 = v36;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v39 = *MEMORY[0x277D85DE8];
}

- (WBProfile)defaultProfile
{
  os_unfair_lock_lock(&profilesLock);
  v3 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:*MEMORY[0x277D49BD8]];
  os_unfair_lock_unlock(&profilesLock);

  return v3;
}

- (NSArray)namedProfiles
{
  os_unfair_lock_lock(&profilesLock);
  v3 = [(WBTabGroupManager *)self _namedProfiles];
  os_unfair_lock_unlock(&profilesLock);

  return v3;
}

- (id)_namedProfiles
{
  v2 = [(WBTabGroupManager *)self _profiles];
  v3 = [v2 safari_filterObjectsUsingBlock:&__block_literal_global_95];

  return v3;
}

- (id)_profiles
{
  os_unfair_lock_assert_owner(&profilesLock);
  v3 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:*MEMORY[0x277D49BD8]];
  v4 = [(NSMutableDictionary *)self->_profilesByIdentifier allValues];
  v5 = [v4 mutableCopy];

  [v5 removeObject:v3];
  v6 = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  [v5 sortUsingComparator:v6];

  [v5 insertObject:v3 atIndex:0];
  v7 = [v5 copy];

  return v7;
}

uint64_t __35__WBTabGroupManager__namedProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 kind] == 1)
  {
    v3 = [v2 identifier];
    v4 = [v3 isEqualToString:*MEMORY[0x277D49BD8]] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)allNamedProfileIdentifiers
{
  v2 = [(WBTabGroupManager *)self namedProfiles];
  v3 = [v2 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_92];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

- (NSSet)allProfileIdentifiers
{
  v2 = [(WBTabGroupManager *)self profiles];
  v3 = [v2 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_90];

  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

- (NSArray)profiles
{
  os_unfair_lock_lock(&profilesLock);
  v3 = [(WBTabGroupManager *)self _profiles];
  os_unfair_lock_unlock(&profilesLock);

  return v3;
}

- (NSArray)allSyncedTabGroupsExceptRemoteUnnamedTabGroups
{
  os_unfair_lock_lock(&tabGroupsLock);
  v3 = [(WBTabGroupManager *)self _allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
  os_unfair_lock_unlock(&tabGroupsLock);

  return v3;
}

- (id)_allSyncedTabGroupsExceptRemoteUnnamedTabGroups
{
  v3 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__WBTabGroupManager__allSyncedTabGroupsExceptRemoteUnnamedTabGroups__block_invoke;
  v7[3] = &unk_279E75120;
  v7[4] = self;
  v4 = [v3 safari_filterObjectsUsingBlock:v7];

  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4 copyItems:1];

  return v5;
}

- (void)_beginDevicePresenceReportingIfNeeded
{
  if ([(WBTabGroupManager *)self _shouldBeginDevicePresenceReporting])
  {
    v3 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_DEFAULT, "Will begin device presence reporting", v4, 2u);
    }

    self->_isBroadcastingPresenceUpdates = 1;
    [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator beginDeviceCoordination];
  }
}

- (BOOL)_shouldBeginDevicePresenceReporting
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    if ([(WBTabGroupManager *)self hasSharedTabGroups])
    {
      numberOfDevicePresenceReportingRequests = self->_numberOfDevicePresenceReportingRequests;
      if (numberOfDevicePresenceReportingRequests)
      {
        LOBYTE(numberOfDevicePresenceReportingRequests) = !self->_isBroadcastingPresenceUpdates;
      }
    }

    else
    {
      LOBYTE(numberOfDevicePresenceReportingRequests) = 0;
    }
  }

  else
  {
    LOBYTE(numberOfDevicePresenceReportingRequests) = 0;
  }

  return numberOfDevicePresenceReportingRequests & 1;
}

- (void)_endDevicePresenceReportingIfNeeded
{
  if ([(WBTabGroupManager *)self _shouldEndDevicePresenceReporting])
  {
    [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator endDeviceCoordination];
    self->_isBroadcastingPresenceUpdates = 0;
  }
}

- (BOOL)_shouldEndDevicePresenceReporting
{
  if (!self->_isBroadcastingPresenceUpdates)
  {
    return 0;
  }

  if (self->_enableSharedTabGroupsFastSyncPresence && self->_numberOfDevicePresenceReportingRequests)
  {
    return ![(WBTabGroupManager *)self hasSharedTabGroups:v2];
  }

  return 1;
}

+ (id)ephemeralTabGroupManager
{
  v2 = [WBTabCollection alloc];
  v3 = +[WBCollectionConfiguration inMemoryTabCollectionConfiguration];
  v4 = [(WBTabCollection *)v2 initWithConfiguration:v3 openDatabase:1];

  v5 = [[WBTabGroupManager alloc] initWithCollection:v4];

  return v5;
}

- (WBTabGroupManager)initWithCollection:(id)a3
{
  v5 = a3;
  v65.receiver = self;
  v65.super_class = WBTabGroupManager;
  v6 = [(WBTabGroupManager *)&v65 init];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    objc_storeStrong(&v6->_tabCollection, a3);
    v9 = [v5 configuration];
    v10 = [v9 device];
    device = v7->_device;
    v7->_device = v10;

    v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7->_enableSharedTabGroupsFastSyncPresence = [v12 BOOLForKey:@"EnableSharedTabGroupsFastSyncPresence"];

    if (v7->_enableSharedTabGroupsFastSyncPresence)
    {
      v13 = objc_alloc_init(MEMORY[0x277D7B650]);
      presenceCoordinator = v7->_presenceCoordinator;
      v7->_presenceCoordinator = v13;

      [(WBParticipantPresenceCoordinator *)v7->_presenceCoordinator setDelegate:v7];
      v15 = [MEMORY[0x277CCA940] set];
      activeTabGroupUUIDs = v7->_activeTabGroupUUIDs;
      v7->_activeTabGroupUUIDs = v15;

      tabGroupUUIDsToCKShares = v7->_tabGroupUUIDsToCKShares;
      v7->_tabGroupUUIDsToCKShares = MEMORY[0x277CBEC10];

      v18 = [MEMORY[0x277CBEB38] dictionary];
      broadcastingTabGroupUUIDsToCKShare = v7->_broadcastingTabGroupUUIDsToCKShare;
      v7->_broadcastingTabGroupUUIDsToCKShare = v18;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _tabGroupManagerProfilesChanged, @"com.apple.mobilesafari.TabGroupManagerProfilesDidChange", 0, 1024);
    v21 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v21;

    v23 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    cloudTabObservers = v7->_cloudTabObservers;
    v7->_cloudTabObservers = v23;

    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WebBookmarks.WBTabGroupManager.%@.%p.%@", objc_opt_class(), v7, @"InternalQueue"];
    v26 = [v25 UTF8String];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_get_global_queue(0, 0);
    v29 = dispatch_queue_create_with_target_V2(v26, v27, v28);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v29;

    v31 = [objc_alloc(MEMORY[0x277D49E88]) initWithDelegate:v7];
    positionGenerator = v7->_positionGenerator;
    v7->_positionGenerator = v31;

    v33 = [MEMORY[0x277CBEB58] set];
    recentlyAddedTabGroupsAwaitingFirstStartPage = v7->_recentlyAddedTabGroupsAwaitingFirstStartPage;
    v7->_recentlyAddedTabGroupsAwaitingFirstStartPage = v33;

    v35 = [MEMORY[0x277CBEB38] dictionary];
    removedTabGroupsByUUID = v7->_removedTabGroupsByUUID;
    v7->_removedTabGroupsByUUID = v35;

    v37 = [MEMORY[0x277CBEB38] dictionary];
    removedTabsByUUID = v7->_removedTabsByUUID;
    v7->_removedTabsByUUID = v37;

    v39 = [MEMORY[0x277CBEB38] dictionary];
    localTabsByUUID = v7->_localTabsByUUID;
    v7->_localTabsByUUID = v39;

    v41 = [MEMORY[0x277CBEB38] dictionary];
    localTabGroupsByUUID = v7->_localTabGroupsByUUID;
    v7->_localTabGroupsByUUID = v41;

    v43 = [MEMORY[0x277CBEB38] dictionary];
    syncableTabsByUUID = v7->_syncableTabsByUUID;
    v7->_syncableTabsByUUID = v43;

    v45 = [MEMORY[0x277CBEB38] dictionary];
    syncableTabGroupsByUUID = v7->_syncableTabGroupsByUUID;
    v7->_syncableTabGroupsByUUID = v45;

    v47 = [MEMORY[0x277CBEB38] dictionary];
    profilesByIdentifier = v7->_profilesByIdentifier;
    v7->_profilesByIdentifier = v47;

    v49 = [MEMORY[0x277CBEB38] dictionary];
    removedProfilesByIdentifier = v7->_removedProfilesByIdentifier;
    v7->_removedProfilesByIdentifier = v49;

    v51 = [MEMORY[0x277CBEB38] dictionary];
    devicesByUUID = v7->_devicesByUUID;
    v7->_devicesByUUID = v51;

    v53 = [MEMORY[0x277CBEB38] dictionary];
    deviceUUIDByTabGroupUUID = v7->_deviceUUIDByTabGroupUUID;
    v7->_deviceUUIDByTabGroupUUID = v53;

    v55 = [objc_alloc(MEMORY[0x277D4A018]) initWithProfileProvider:v7];
    profileDataManager = v7->_profileDataManager;
    v7->_profileDataManager = v55;

    v57 = [MEMORY[0x277CBEB58] set];
    insertedItemUUIDsThatWereMissingDuringReload = v7->_insertedItemUUIDsThatWereMissingDuringReload;
    v7->_insertedItemUUIDsThatWereMissingDuringReload = v57;

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __40__WBTabGroupManager_initWithCollection___block_invoke;
    v63[3] = &unk_279E751F0;
    v59 = v7;
    v64 = v59;
    v60 = MEMORY[0x2743D6830](v63);
    [(WBTabGroupManager *)v59 _loadDatabase];
    [(WBSDevice *)v7->_device addObserver:v59 forKeyPath:@"userAssignedName" options:5 context:&deviceNameObserverContext];
    dispatch_async(MEMORY[0x277D85CD0], v60);
    v61 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v61 addObserver:v59 selector:sel__tabGroupSyncDidFinish_ name:@"com.apple.SafariTabGroupSync.SyncDidFinish" object:0];

    v8 = v59;
  }

  return v8;
}

uint64_t __40__WBTabGroupManager_initWithCollection___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 160) = 1;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidFinishSetup:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = *(*(a1 + 32) + 168);
  if (result)
  {
    result = (*(result + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  [(WBSDevice *)self->_device removeObserver:self forKeyPath:@"userAssignedName" context:&deviceNameObserverContext];
  v3.receiver = self;
  v3.super_class = WBTabGroupManager;
  [(WBTabGroupManager *)&v3 dealloc];
}

- (NSSet)recentlyAddedTabGroupsAwaitingFirstStartPage
{
  v2 = [(NSMutableSet *)self->_recentlyAddedTabGroupsAwaitingFirstStartPage copy];

  return v2;
}

- (void)setSyncAgentProxy:(id)a3
{
  v5 = a3;
  syncAgentProxy = self->_syncAgentProxy;
  if (syncAgentProxy != v5)
  {
    v7 = v5;
    [(WBTabGroupSyncAgentProtocol *)syncAgentProxy removeSyncObserver:self];
    objc_storeStrong(&self->_syncAgentProxy, a3);
    syncAgentProxy = [(WBTabGroupSyncAgentProtocol *)self->_syncAgentProxy addSyncObserver:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](syncAgentProxy, v5);
}

- (void)setShouldPrepareBackgroundTaskExpiration:(BOOL)a3
{
  if (self->_shouldPrepareBackgroundTaskExpiration != a3)
  {
    self->_shouldPrepareBackgroundTaskExpiration = a3;
    [(WBTabCollection *)self->_tabCollection setShouldPrepareBackgroundTaskExpiration:?];
  }
}

- (void)waitForSetupWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_didFinishSetup)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v7 = v4;
    v4[2]();
  }

  else
  {
    v7 = v4;
    v5 = MEMORY[0x2743D6830]();
    setupCompletionHandler = self->_setupCompletionHandler;
    self->_setupCompletionHandler = v5;
  }

  v4 = v7;
LABEL_6:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &deviceNameObserverContext)
  {
    v7 = [a5 objectForKeyedSubscript:{*MEMORY[0x277CCA2F0], a4}];
    os_unfair_lock_lock(&profilesLock);
    [(WBTabGroupManager *)self _updateDeviceNameIfNeededWithName:v7];
    os_unfair_lock_unlock(&profilesLock);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WBTabGroupManager;
    [(WBTabGroupManager *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

void __34__WBTabGroupManager__loadDatabase__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 syncPosition];
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  obj = v4;
  if (*(v6 + 40))
  {
    if ([v4 compare:?] != -1)
    {
      goto LABEL_5;
    }

    v6 = *(*(a1 + 32) + 8);
    v5 = obj;
  }

  objc_storeStrong((v6 + 40), v5);
LABEL_5:
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_2(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __34__WBTabGroupManager__loadDatabase__block_invoke_2_cold_1();
    }
  }
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a3 tabGroups];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [*(a1 + 32) _cacheTabGroup:v11 creatorDeviceUUID:0];
        v12 = [v11 bookmark];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __34__WBTabGroupManager__loadDatabase__block_invoke_2_43;
        v14[3] = &unk_279E77668;
        v15 = *(a1 + 40);
        v16 = v5;
        [v12 getReadOnlyCachedBookmarkSyncDataUsingBlock:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_2_43(uint64_t a1, void *a2)
{
  v3 = [a2 shareRecord];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];
}

void __34__WBTabGroupManager__loadDatabase__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 unnamedMutableTabGroups];
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

        [*(a1 + 32) _cacheTabGroup:*(*(&v12 + 1) + 8 * v10++) creatorDeviceUUID:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reloadProfilesAndTabGroupsAndNotify:(BOOL)a3 withCompletionHandler:(id)a4
{
  v52 = a3;
  v97 = *MEMORY[0x277D85DE8];
  v50 = a4;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v49 = [MEMORY[0x277CBEB58] set];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [(WBTabCollection *)self->_tabCollection mutableProfiles];
  v7 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v92;
    v53 = *v92;
    do
    {
      v10 = 0;
      v55 = v8;
      do
      {
        if (*v92 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v91 + 1) + 8 * v10);
        v12 = [v11 identifier];
        [v5 setObject:v11 forKeyedSubscript:v12];

        if (([v11 isDefault] & 1) == 0)
        {
          v13 = v5;
          v14 = self;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v15 = [v11 devices];
          v16 = [v15 countByEnumeratingWithState:&v87 objects:v95 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v88;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v88 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v87 + 1) + 8 * i);
                v21 = [v20 uuid];
                [v6 setObject:v20 forKeyedSubscript:v21];
              }

              v17 = [v15 countByEnumeratingWithState:&v87 objects:v95 count:16];
            }

            while (v17);
          }

          self = v14;
          v5 = v13;
          v9 = v53;
          v8 = v55;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v91 objects:v96 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  os_unfair_lock_lock(&profilesLock);
  v56 = [(WBTabGroupManager *)self _profiles];
  v22 = [(NSMutableDictionary *)self->_removedProfilesByIdentifier allKeys];
  [v5 removeObjectsForKeys:v22];

  v23 = [(WBTabGroupManager *)self _performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier:v5 devicesByUUID:v6 uninsertedSyncableTabsFromSyncableTabsByUUID:self->_syncableTabsByUUID];
  v24 = [MEMORY[0x277CBEB58] set];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke;
  v84[3] = &unk_279E776E0;
  v84[4] = self;
  v25 = v23;
  v85 = v25;
  v26 = v24;
  v86 = v26;
  [v5 enumerateKeysAndObjectsUsingBlock:v84];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2;
  v81[3] = &unk_279E77708;
  v81[4] = self;
  obja = v25;
  v82 = obja;
  v27 = v26;
  v83 = v27;
  [v6 enumerateKeysAndObjectsUsingBlock:v81];
  v28 = [MEMORY[0x277CBEB58] set];
  v29 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID copy];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3;
  v76[3] = &unk_279E77730;
  v30 = v27;
  v77 = v30;
  v78 = self;
  v31 = v49;
  v79 = v31;
  v32 = v28;
  v80 = v32;
  [v29 enumerateKeysAndObjectsUsingBlock:v76];

  v33 = [MEMORY[0x277CBEB58] set];
  v34 = self;
  v35 = [(NSMutableDictionary *)self->_profilesByIdentifier copy];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_48;
  v72[3] = &unk_279E776E0;
  v36 = v5;
  v73 = v36;
  v74 = v34;
  v37 = v33;
  v75 = v37;
  [v35 enumerateKeysAndObjectsUsingBlock:v72];

  v38 = [(NSMutableDictionary *)v34->_devicesByUUID copy];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2_49;
  v68[3] = &unk_279E77708;
  v54 = v6;
  v69 = v54;
  v70 = v34;
  v39 = v31;
  v71 = v39;
  [v38 enumerateKeysAndObjectsUsingBlock:v68];

  v40 = [(WBTabGroupManager *)v34 _unsafeTabGroupUUIDsToCKShares];
  objc_storeStrong(&v34->_insertedItemUUIDsThatWereMissingDuringReload, v49);
  v41 = [v39 count];
  os_unfair_lock_unlock(&profilesLock);
  os_unfair_lock_unlock(&tabGroupsLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3_50;
  block[3] = &unk_279E77758;
  block[4] = v34;
  v60 = v40;
  v67 = v52;
  v61 = v37;
  v62 = v36;
  v63 = v56;
  v64 = v32;
  v65 = v30;
  v66 = v50;
  v51 = v50;
  v42 = v30;
  v43 = v32;
  v44 = v56;
  v45 = v36;
  v46 = v37;
  v47 = v40;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v41)
  {
    [(WBTabGroupManager *)v34 _reloadProfilesAndTabGroupsAndNotify:v52 withCompletionHandler:0];
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 tabGroups];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = *(*(a1 + 32) + 48);
        v14 = [v12 uuid];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (!v15)
        {
          [*(a1 + 32) _updateTabsAndCacheTabGroup:v12 withTabsByParentIdentifiers:*(a1 + 40) creatorDeviceUUID:0];
          [v6 addObject:v12];
          v16 = *(a1 + 48);
          v17 = [v12 copy];
          [v16 addObject:v17];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [v5 setTabGroups:v6];
  [*(*(a1 + 32) + 104) setObject:v5 forKeyedSubscript:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = a2;
  v5 = a3;
  v23 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
  v7 = [v5 unnamedMutableTabGroups];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = *(a1[4] + 48);
        v14 = [v12 uuid];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (!v15)
        {
          v16 = a1[4];
          v17 = a1[5];
          v18 = [v6 uuid];
          [v16 _updateTabsAndCacheTabGroup:v12 withTabsByParentIdentifiers:v17 creatorDeviceUUID:v18];

          [v23 addObject:v12];
          v19 = a1[6];
          v20 = [v12 copy];
          [v19 addObject:v20];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  [v6 setUnnamedMutableTabGroups:v23];
  [*(a1[4] + 120) setObject:v6 forKeyedSubscript:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 isNamed])
  {
    v7 = [*(a1 + 32) containsObject:v6];
    v8 = [v6 bookmark];
    v9 = [v8 wasLoadedFromDatabase];
    v10 = v7 ^ 1;

    if (v9 && (v10 & 1) != 0)
    {
      goto LABEL_4;
    }

    if (([v6 isInserted] & v10) != 1)
    {
      goto LABEL_11;
    }

    v17 = *(*(a1 + 40) + 144);
    v18 = [v6 uuid];
    LOBYTE(v17) = [v17 containsObject:v18];

    if (v17)
    {
LABEL_4:
      v11 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v6 privacyPreservingDescription];
        v20 = 138543362;
        v21 = v13;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_DEFAULT, "Removing tab group after reload: %{public}@", &v20, 0xCu);
      }

      [*(a1 + 40) _uncacheTabGroup:v6];
      [*(*(a1 + 40) + 48) setObject:v6 forKeyedSubscript:v5];
      v14 = *(a1 + 56);
      v15 = [v6 copy];
    }

    else
    {
      v14 = *(a1 + 48);
      v15 = [v6 uuid];
    }

    v16 = v15;
    [v14 addObject:v15];
  }

LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v15];

  v7 = [v5 bookmark];
  v8 = [v7 wasLoadedFromDatabase];

  if (v8)
  {
    if (!v6)
    {
      v9 = *MEMORY[0x277D49BD8];
      if (!WBSIsEqual())
      {
        goto LABEL_7;
      }
    }
  }

  if ([v5 isInserted] && !v6)
  {
    v10 = *(*(a1 + 40) + 144);
    v11 = [v5 identifier];
    LOBYTE(v10) = [v10 containsObject:v11];

    if ((v10 & 1) == 0)
    {
      v12 = *(*(a1 + 40) + 144);
      v13 = [v5 identifier];
      goto LABEL_9;
    }

LABEL_7:
    [*(*(a1 + 40) + 104) setObject:0 forKeyedSubscript:v15];
    [*(*(a1 + 40) + 112) setObject:v5 forKeyedSubscript:v15];
    v12 = *(a1 + 48);
    v13 = [v5 copy];
LABEL_9:
    v14 = v13;
    [v12 addObject:v13];
  }
}

void __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_2_49(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];

  v6 = [v15 bookmark];
  v7 = [v6 wasLoadedFromDatabase];

  if (v7 && !v5)
  {
    goto LABEL_3;
  }

  v10 = [v15 bookmark];
  v11 = [v10 isInserted];

  if (v11 && !v5)
  {
    v12 = *(*(a1 + 40) + 144);
    v13 = [v15 uuid];
    LOBYTE(v12) = [v12 containsObject:v13];

    if ((v12 & 1) == 0)
    {
      v14 = *(a1 + 48);
      v9 = [v15 uuid];
      [v14 addObject:v9];
      goto LABEL_4;
    }

LABEL_3:
    v8 = *(*(a1 + 40) + 120);
    v9 = [v15 uuid];
    [v8 setObject:0 forKeyedSubscript:v9];
LABEL_4:
  }
}

uint64_t __80__WBTabGroupManager__reloadProfilesAndTabGroupsAndNotify_withCompletionHandler___block_invoke_3_50(uint64_t a1)
{
  [*(a1 + 32) _updateTabGroupShares:*(a1 + 40)];
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 32);
    v3 = MEMORY[0x277CBEB98];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) allValues];
    v6 = [v3 setWithArray:v5];
    [v2 _didRemoveProfiles:v4 updateProfiles:v6 previousProfiles:*(a1 + 64) removeTabGroups:*(a1 + 72) updateTabGroups:*(a1 + 80) previousTabGroups:0];
  }

  result = *(a1 + 88);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)_mergeTabGroups:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * i);
        v6 = [v5 uuid];
        v7 = [(WBTabGroupManager *)self _tabGroupWithUUID:v6];

        if (v7)
        {
          [v5 mergeWithTabGroup:v7];
        }

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [v5 tabs];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * j);
              v14 = [v13 uuid];
              v15 = [(WBTabGroupManager *)self _tabWithUUID:v14];

              if (v15)
              {
                [v13 mergeWithTab:v15];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier:(id)a3 devicesByUUID:(id)a4 uninsertedSyncableTabsFromSyncableTabsByUUID:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  os_unfair_lock_assert_owner(&profilesLock);
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke;
  v39[3] = &unk_279E77690;
  v39[4] = self;
  v12 = v11;
  v40 = v12;
  [v10 enumerateKeysAndObjectsUsingBlock:v39];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_52;
  v37[3] = &unk_279E77780;
  v37[4] = self;
  v13 = v12;
  v38 = v13;
  [v9 enumerateKeysAndObjectsUsingBlock:v37];

  v14 = MEMORY[0x277CBEB98];
  v15 = [v13 allValues];
  v16 = [v15 safari_flattenedArray];
  v17 = [v16 safari_mapObjectsUsingBlock:&__block_literal_global_55];
  v18 = [v14 setWithArray:v17];

  v19 = [MEMORY[0x277CBEB18] array];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_3;
  v32 = &unk_279E777A8;
  v33 = v18;
  v34 = self;
  v35 = v13;
  v20 = v19;
  v36 = v20;
  v21 = v13;
  v22 = v18;
  [v8 enumerateKeysAndObjectsUsingBlock:&v29];

  if ([v20 count])
  {
    v23 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [v20 count];
      *buf = 134218242;
      v42 = v25;
      v43 = 2114;
      v44 = v20;
      _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_DEFAULT, "%lu tabs were filtered because they were removed. UUIDS:%{public}@", buf, 0x16u);
    }
  }

  v26 = [v21 copy];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:a2];
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v5 privacyPreservingDescription];
      v10 = [v6 privacyPreservingDescription];
      v19 = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_DEFAULT, "Merging profile in database %@ with profile in the cache %@", &v19, 0x16u);
    }

    [v5 mergeWithProfile:v6];
  }

  else
  {
    v11 = *(*(a1 + 32) + 152);
    v12 = [v5 serverID];
    v13 = [v5 identifier];
    [v11 ensureProfileDirectoriesExistForProfileWithServerID:v12 profileIdentifier:v13];

    v14 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v5 privacyPreservingDescription];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't find profile in the cache %@", &v19, 0xCu);
    }
  }

  v17 = [v5 tabGroups];
  [*(a1 + 32) _mergeTabGroups:v17];
  [*(a1 + 32) _addTabsInTabGroups:v17 toParentIdentifierInTabsToParentIdentifiersDictionary:*(a1 + 40)];

  v18 = *MEMORY[0x277D85DE8];
}

void __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_52(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:a2];
  if (v5)
  {
    [v12 mergeWithDevice:v5];
  }

  v6 = [v12 unnamedMutableTabGroups];
  [*(a1 + 32) _mergeTabGroups:v6];
  v7 = [v12 isRemoteDevice];
  v8 = *(a1 + 32);
  if ((v7 & 1) == 0 && !v8[17])
  {
    v9 = [v12 title];
    v10 = *(a1 + 32);
    v11 = *(v10 + 136);
    *(v10 + 136) = v9;

    v8 = *(a1 + 32);
  }

  [v8 _addTabsInTabGroups:v6 toParentIdentifierInTabsToParentIdentifiersDictionary:*(a1 + 40)];
}

void __151__WBTabGroupManager__performCRDTMergeAndMapTabsToParentIdentifiersWithProfilesByIdentifier_devicesByUUID_uninsertedSyncableTabsFromSyncableTabsByUUID___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v18 = v4;
  v6 = [v4 uuid];
  LOBYTE(v5) = [v5 containsObject:v6];

  if ((v5 & 1) == 0)
  {
    v7 = [v18 bookmark];
    v8 = [v7 wasLoadedFromDatabase];

    if ((v8 & 1) == 0)
    {
      if (![v18 isInserted] || (v9 = *(*(a1 + 40) + 144), objc_msgSend(v18, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v9) = objc_msgSend(v9, "containsObject:", v10), v10, (v9 & 1) == 0))
      {
        v11 = *(*(a1 + 40) + 144);
        v12 = [v18 uuid];
        [v11 addObject:v12];

        [*(a1 + 40) _addTab:v18 toParentIdentifierInTabsToParentIdentifiersDictionary:*(a1 + 48)];
        v13 = *(*(a1 + 40) + 56);
        v14 = [v18 uuid];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = *(a1 + 56);
          v17 = [v18 uuid];
          [v16 addObject:v17];
        }
      }
    }
  }
}

- (void)_addTabsInTabGroups:(id)a3 toParentIdentifierInTabsToParentIdentifiersDictionary:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v50;
    *&v10 = 138543362;
    v40 = v10;
    v41 = *v50;
    do
    {
      v13 = 0;
      v42 = v11;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        removedTabGroupsByUUID = self->_removedTabGroupsByUUID;
        v16 = [v14 uuid];
        v17 = [(NSMutableDictionary *)removedTabGroupsByUUID objectForKeyedSubscript:v16];

        v18 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          if (v19)
          {
            v20 = v18;
            v21 = [v14 tabs];
            v22 = [v21 count];
            v23 = [v14 privacyPreservingDescription];
            *buf = 134218242;
            v55 = v22;
            v56 = 2114;
            v57 = v23;
            _os_log_impl(&dword_272C20000, v20, OS_LOG_TYPE_DEFAULT, "Did not cache %lu tabs in tab group %{public}@ because the tab group was removed", buf, 0x16u);
          }
        }

        else
        {
          v44 = v13;
          if (v19)
          {
            v24 = v18;
            v25 = [v14 privacyPreservingDescription];
            *buf = v40;
            v55 = v25;
            _os_log_impl(&dword_272C20000, v24, OS_LOG_TYPE_DEFAULT, "Add tabs in tab group to the parent identifier dictionary %{public}@", buf, 0xCu);
          }

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v26 = [v14 tabs];
          v27 = [v26 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v46;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v46 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v45 + 1) + 8 * i);
                [(WBTabGroupManager *)self _addTab:v31 toParentIdentifierInTabsToParentIdentifiersDictionary:v7];
                removedTabsByUUID = self->_removedTabsByUUID;
                v33 = [v31 uuid];
                v34 = [(NSMutableDictionary *)removedTabsByUUID objectForKeyedSubscript:v33];

                if (v34)
                {
                  v35 = [v31 uuid];
                  [v8 addObject:v35];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v28);
          }

          v12 = v41;
          v11 = v42;
          v13 = v44;
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v36 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
      v38 = [v8 count];
      *buf = 134218242;
      v55 = v38;
      v56 = 2114;
      v57 = v8;
      _os_log_impl(&dword_272C20000, v37, OS_LOG_TYPE_DEFAULT, "%lu tabs were filtered because they were removed. UUIDS:%{public}@", buf, 0x16u);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_addTab:(id)a3 toParentIdentifierInTabsToParentIdentifiersDictionary:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  removedTabsByUUID = self->_removedTabsByUUID;
  v9 = [v6 uuid];
  v10 = [(NSMutableDictionary *)removedTabsByUUID objectForKeyedSubscript:v9];

  if (!v10)
  {
    if ([v6 parentIdentifier] == 0x7FFFFFFF || !objc_msgSend(v6, "parentIdentifier"))
    {
      v14 = [v6 tabGroupUUID];
      v15 = 1;
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "parentIdentifier")}];
      v15 = 0;
    }

    v16 = [v7 objectForKeyedSubscript:v14];
    if (v16)
    {
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = [MEMORY[0x277CBEB18] array];
      [v7 setObject:v16 forKeyedSubscript:v14];
      if (!v15)
      {
LABEL_14:
        [v16 addObject:v6];

        goto LABEL_15;
      }
    }

    v17 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = [v6 privacyPreservingDescription];
      v21 = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_DEFAULT, "Tab %{public}@ has invalid parent identifier and moved under %{public}@", &v21, 0x16u);
    }

    goto LABEL_14;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v6 privacyPreservingDescription];
    v21 = 138543362;
    v22 = v13;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Filtering tab %{public}@ because it was removed", &v21, 0xCu);
  }

LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateTabsAndCacheTabGroup:(id)a3 withTabsByParentIdentifiers:(id)a4 creatorDeviceUUID:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEB18];
  v10 = a5;
  v11 = a4;
  v12 = [v9 array];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "identifier")}];
  v14 = [v11 objectForKeyedSubscript:v13];
  v15 = v14;
  v16 = MEMORY[0x277CBEBF8];
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  [v12 addObjectsFromArray:v17];

  v18 = [v8 uuid];
  v19 = [v11 objectForKeyedSubscript:v18];

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  [v12 addObjectsFromArray:v20];

  v21 = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  [v12 sortUsingComparator:v21];

  if (![v12 count])
  {
    v22 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v8 privacyPreservingDescription];
      v26 = 138543362;
      v27 = v24;
      _os_log_impl(&dword_272C20000, v23, OS_LOG_TYPE_DEFAULT, "Updating tabGroup %{public}@ with an empty tab list", &v26, 0xCu);
    }
  }

  [v8 setTabs:v12];
  [(WBTabGroupManager *)self _cacheTabGroup:v8 creatorDeviceUUID:v10];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_tabCacheForTabGroup:(id)a3
{
  v4 = [a3 isSyncable];
  v5 = 64;
  if (v4)
  {
    v5 = 80;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (id)_tabGroupCacheForTabGroup:(id)a3
{
  v4 = [a3 isSyncable];
  v5 = 72;
  if (v4)
  {
    v5 = 88;
  }

  v6 = *(&self->super.isa + v5);

  return v6;
}

- (void)_cacheTabGroup:(id)a3 creatorDeviceUUID:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = a4;
  v7 = [(WBTabGroupManager *)self _tabCacheForTabGroup:v6];
  v8 = [(WBTabGroupManager *)self _tabGroupCacheForTabGroup:v6];
  v9 = [v6 uuid];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 allTabs];
  v36 = v8;
  if ([v11 count])
  {
    v12 = [v6 uuid];
    v13 = [v8 objectForKeyedSubscript:v12];
    v14 = [v13 allTabs];
    v34 = [v14 count];
    v15 = [v6 allTabs];
    v33 = [v15 count];

    if (v34 != v33)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(WBTabGroupManager *)v16 _cacheTabGroup:v6 creatorDeviceUUID:v36];
      }
    }
  }

  else
  {
  }

  v17 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v6 privacyPreservingDescription];
    v20 = [v6 allTabs];
    *buf = 138543618;
    v43 = v19;
    v44 = 2050;
    v45 = [v20 count];
    _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_DEFAULT, "Saving tab group %{public}@ with %{public}lu tabs into the cache.", buf, 0x16u);
  }

  v21 = [v6 uuid];
  [v36 setObject:v6 forKeyedSubscript:v21];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = [v6 allTabs];
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * i);
        v28 = [v27 uuid];
        [(NSMutableDictionary *)self->_localTabsByUUID setObject:0 forKeyedSubscript:v28];
        [(NSMutableDictionary *)self->_syncableTabsByUUID setObject:0 forKeyedSubscript:v28];
        [(NSMutableDictionary *)self->_removedTabsByUUID setObject:0 forKeyedSubscript:v28];
        v29 = [v27 uuid];
        [v7 setObject:v27 forKeyedSubscript:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v24);
  }

  if (v35)
  {
    deviceUUIDByTabGroupUUID = self->_deviceUUIDByTabGroupUUID;
    v31 = [v6 uuid];
    [(NSMutableDictionary *)deviceUUIDByTabGroupUUID setObject:v35 forKeyedSubscript:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_uncacheTabGroup:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WBTabGroupManager *)self _tabCacheForTabGroup:v4];
  v6 = [(WBTabGroupManager *)self _tabGroupCacheForTabGroup:v4];
  v7 = [v4 uuid];
  [v6 setObject:0 forKeyedSubscript:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 allTabs];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) uuid];
        [v5 setObject:0 forKeyedSubscript:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_uncacheTab:(id)a3
{
  localTabsByUUID = self->_localTabsByUUID;
  v5 = a3;
  v6 = [v5 uuid];
  [(NSMutableDictionary *)localTabsByUUID setObject:0 forKeyedSubscript:v6];

  syncableTabsByUUID = self->_syncableTabsByUUID;
  v8 = [v5 uuid];

  [(NSMutableDictionary *)syncableTabsByUUID setObject:0 forKeyedSubscript:v8];
}

- (id)_tabWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_localTabsByUUID objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_syncableTabsByUUID objectForKeyedSubscript:v4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(NSMutableDictionary *)self->_removedTabsByUUID objectForKeyedSubscript:v4];
    }

    v7 = v10;
  }

  return v7;
}

- (id)_tabGroupWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_localTabGroupsByUUID objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID objectForKeyedSubscript:v4];
  }

  v8 = v7;

  return v8;
}

- (int64_t)_nextInMemoryPositionChangeID
{
  os_unfair_lock_lock(&inMemoryChangeIDLock);
  v2 = nextInMemoryPositionChangeID--;
  os_unfair_lock_unlock(&inMemoryChangeIDLock);
  return v2;
}

- (id)_generatePositionForTabGroup:(id)a3 afterTabGroup:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isNamed])
  {
    v8 = [v7 profileIdentifier];
    [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:v8];
  }

  else
  {
    v8 = [v7 deviceUUIDString];
    [(WBTabGroupManager *)self _unnamedTabGroupsForDeviceWithUUID:v8];
  }
  v9 = ;

  v10 = [(WBTabGroupManager *)self _generatePositionForTabGroup:v7 afterTabGroup:v6 inTabGroups:v9];

  return v10;
}

- (id)_generatePositionForTabGroup:(id)a3 afterTabGroup:(id)a4 inTabGroups:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(WBTabGroupManager *)self _tabGroupAfterTabGroup:v9 inTabGroups:a5];
  if ((WBSIsEqual() & 1) != 0 || WBSIsEqual())
  {
    v11 = [v8 syncPosition];
  }

  else
  {
    v12 = MEMORY[0x277D49E80];
    v13 = [v9 syncPosition];
    v14 = [v10 syncPosition];
    v15 = [(WBTabGroupManager *)self deviceIdentifier];
    v11 = [v12 positionBetweenPosition:v13 andPosition:v14 withDeviceIdentifier:v15 changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
  }

  return v11;
}

- (id)_tabGroupAfterTabGroup:(id)a3 inTabGroups:(id)a4
{
  if (a3)
  {
    [a4 safari_objectAfter:?];
  }

  else
  {
    [a4 firstObject];
  }
  v4 = ;

  return v4;
}

- (void)_updatePositionsForTabsInTabGroup:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isSyncable])
  {
    v21 = [v4 tabs];
    v5 = [v21 safari_filterObjectsUsingBlock:&__block_literal_global_60_0];
    v6 = [v5 valueForKey:@"uuid"];
    v7 = [v4 uuid];
    v27 = v7;
    v20 = v6;
    v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v28[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

    [(WBSCRDTPositionGenerator *)self->_positionGenerator generatePositionsForChildRecordNamesGroupedByParentFolders:v9];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          positionGenerator = self->_positionGenerator;
          v17 = [v15 uuid];
          v18 = [(WBSCRDTPositionGenerator *)positionGenerator positionForBookmarkWithRecordName:v17];
          [v15 setSyncPosition:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __55__WBTabGroupManager__updatePositionsForTabsInTabGroup___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 wasAdded])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 wasMoved];
  }

  return v3;
}

- (id)_generatePositionForProfile:(id)a3 afterProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBTabGroupManager *)self _namedProfiles];
  v9 = v8;
  if (v7)
  {
    [v8 safari_objectAfter:v7];
  }

  else
  {
    [v8 firstObject];
  }
  v10 = ;

  if ((WBSIsEqual() & 1) != 0 || WBSIsEqual())
  {
    v11 = [v6 syncPosition];
  }

  else
  {
    v12 = MEMORY[0x277D49E80];
    v13 = [v7 syncPosition];
    v14 = [v10 syncPosition];
    v15 = [(WBTabGroupManager *)self deviceIdentifier];
    v11 = [v12 positionBetweenPosition:v13 andPosition:v14 withDeviceIdentifier:v15 changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
  }

  return v11;
}

- (id)_generatePositionForDevice:(id)a3 afterDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 profileIdentifier];
  v9 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:v8];

  if (v7)
  {
    [v9 safari_objectAfter:v7];
  }

  else
  {
    [v9 firstObject];
  }
  v10 = ;
  if ((WBSIsEqual() & 1) != 0 || WBSIsEqual())
  {
    v11 = [v6 syncPosition];
  }

  else
  {
    v12 = MEMORY[0x277D49E80];
    v13 = [v7 syncPosition];
    v14 = [v10 syncPosition];
    v15 = [(WBTabGroupManager *)self deviceIdentifier];
    v11 = [v12 positionBetweenPosition:v13 andPosition:v14 withDeviceIdentifier:v15 changeID:{-[WBTabGroupManager _nextInMemoryPositionChangeID](self, "_nextInMemoryPositionChangeID")}];
  }

  return v11;
}

uint64_t __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 bookmark];
  v7 = [v5 bookmark];
  v8 = [v6 syncPosition];
  v9 = [v7 syncPosition];
  v10 = v9;
  if (v8 | v9)
  {
    if (v9)
    {
      if (v8)
      {
        v11 = [v8 compare:v9];
      }

      else
      {
        v17 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_2(v17);
        }

        v11 = 1;
      }
    }

    else
    {
      v16 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_2(v16);
      }

      v11 = -1;
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_1(v12, v4);
    }

    v13 = [v6 serverID];
    v14 = [v7 serverID];
    v15 = v14;
    v11 = 0;
    if (v13 && v14)
    {
      v11 = [v13 compare:v14];
    }
  }

  return v11;
}

- (void)_cacheProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    os_unfair_lock_lock(&profilesLock);
    profilesByIdentifier = self->_profilesByIdentifier;
    v6 = [v7 identifier];
    [(NSMutableDictionary *)profilesByIdentifier setObject:v7 forKeyedSubscript:v6];

    os_unfair_lock_unlock(&profilesLock);
    v4 = v7;
  }
}

- (void)registerWindowState:(id)a3
{
  v4 = a3;
  v5 = [v4 localTabGroup];
  [(WBTabGroupManager *)self _cacheTabGroup:v5 creatorDeviceUUID:0];

  v6 = [v4 privateTabGroup];

  [(WBTabGroupManager *)self _cacheTabGroup:v6 creatorDeviceUUID:0];
}

- (void)unregisterWindowState:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 localTabGroup];
    v8 = [v7 privacyPreservingDescription];
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_DEFAULT, "Unregistering window state with local tab group: %{public}@", &v12, 0xCu);
  }

  v9 = [v4 localTabGroup];
  [(WBTabGroupManager *)self _uncacheTabGroup:v9];

  v10 = [v4 privateTabGroup];
  [(WBTabGroupManager *)self _uncacheTabGroup:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveWindowState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (saveWindowState_completionHandler__lastSavedWindowState && [saveWindowState_completionHandler__lastSavedWindowState isEqualToWindowState:v6])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Skip saving current window state to database since it hasn't changed.", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
    tabCollection = self->_tabCollection;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke;
    v10[3] = &unk_279E77818;
    v11 = v6;
    v12 = v7;
    [(WBTabCollection *)tabCollection saveWindowState:v11 completionHandler:v10];
  }
}

void __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke_2;
  block[3] = &unk_279E777F0;
  v6 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __55__WBTabGroupManager_saveWindowState_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) copy];
    v3 = saveWindowState_completionHandler__lastSavedWindowState;
    saveWindowState_completionHandler__lastSavedWindowState = v2;
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(a1 + 48);
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)deleteWindowStates:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [(WBTabGroupManager *)self unregisterWindowState:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(WBTabCollection *)self->_tabCollection deleteWindowStates:v6 completionHandler:v7];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deletePrivateWindowState:(id)a3
{
  v4 = a3;
  if ([v4 isPrivateWindow])
  {
    v5 = [v4 localTabGroup];
    v6 = [v5 uuid];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__WBTabGroupManager_deletePrivateWindowState___block_invoke;
    v10[3] = &unk_279E751B8;
    v10[4] = self;
    [(WBTabGroupManager *)self updateTabGroupWithUUID:v6 persist:0 usingBlock:v10];

    v7 = [v4 privateTabGroup];
    v8 = [v7 uuid];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_3;
    v9[3] = &unk_279E751B8;
    v9[4] = self;
    [(WBTabGroupManager *)self updateTabGroupWithUUID:v8 persist:0 usingBlock:v9];
  }
}

void __46__WBTabGroupManager_deletePrivateWindowState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allTabs];
  v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_70];
  v7 = [v5 mutableCopy];

  v6 = [v3 bookmark];

  [v7 addObject:v6];
  [*(*(a1 + 32) + 248) deleteItems:v7 leaveTombstones:0 cleanBookmarks:1];
}

id __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAdded:1];
  v3 = [v2 bookmark];

  return v3;
}

void __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allTabs];
  v5 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_73];
  v7 = [v5 mutableCopy];

  v6 = [v3 bookmark];

  [v7 addObject:v6];
  [*(*(a1 + 32) + 248) deleteItems:v7 leaveTombstones:0 cleanBookmarks:1];
}

id __46__WBTabGroupManager_deletePrivateWindowState___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAdded:1];
  v3 = [v2 bookmark];

  return v3;
}

- (id)_allTabGroupsUnsorted
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v5 = [v3 initWithArray:v4 copyItems:1];

  return v5;
}

uint64_t __68__WBTabGroupManager__allSyncedTabGroupsExceptRemoteUnnamedTabGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) _didLocallyCreateUnnamedTabGroup:v3];
  }

  return v4;
}

- (NSArray)allNamedTabGroupsUnsorted
{
  os_unfair_lock_lock(&tabGroupsLock);
  v3 = [(WBTabGroupManager *)self _allTabGroupsUnsorted];
  os_unfair_lock_unlock(&tabGroupsLock);

  return v3;
}

- (NSArray)namedTabGroupsInDefaultProfile
{
  os_unfair_lock_lock(&tabGroupsLock);
  v3 = [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:*MEMORY[0x277D49BD8]];
  os_unfair_lock_unlock(&tabGroupsLock);

  return v3;
}

- (id)namedTabGroupsForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:v4];

  os_unfair_lock_unlock(&tabGroupsLock);

  return v5;
}

- (id)unnamedTabGroupsForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [(WBTabGroupManager *)self _unnamedTabGroupsForProfileWithIdentifier:v4];

  os_unfair_lock_unlock(&tabGroupsLock);

  return v5;
}

- (id)tabGroupWithServerID:(id)a3
{
  v4 = a3;
  syncableTabGroupsByUUID = self->_syncableTabGroupsByUUID;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__WBTabGroupManager_tabGroupWithServerID___block_invoke;
  v9[3] = &unk_279E77860;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableDictionary *)syncableTabGroupsByUUID safari_valueOfEntryPassingTest:v9];

  return v7;
}

uint64_t __42__WBTabGroupManager_tabGroupWithServerID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 serverID];
  v5 = WBSIsEqual();

  return v5;
}

- (id)_insertTabGroup:(id)a3 afterTabGroup:(id)a4 isMove:(BOOL)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&tabGroupsLock);
  v9 = [v7 mutableCopy];
  v32 = v8;
  v10 = [v8 uuid];
  v11 = [(WBTabGroupManager *)self _tabGroupWithUUID:v10];

  v31 = v11;
  v12 = [(WBTabGroupManager *)self _generatePositionForTabGroup:v9 afterTabGroup:v11];
  [v9 setSyncPosition:v12];

  [(WBTabGroupManager *)self _cacheTabGroup:v9 creatorDeviceUUID:0];
  if ([v7 supportsTabGroupFavorites])
  {
    [(NSMutableSet *)self->_recentlyAddedTabGroupsAwaitingFirstStartPage addObject:v7];
  }

  os_unfair_lock_unlock(&tabGroupsLock);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [(NSHashTable *)self->_observers copy];
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v18 tabGroupManagerDidUpdateTabGroups:self];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v15);
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke;
  v33[3] = &unk_279E77888;
  v36 = a5;
  v33[4] = self;
  v19 = v9;
  v34 = v19;
  v20 = v7;
  v35 = v20;
  v21 = MEMORY[0x2743D6830](v33);
  os_unfair_lock_lock(&profilesLock);
  v22 = [v19 profileIdentifier];
  v23 = [(WBTabGroupManager *)self profileWithIdentifier:v22];

  os_unfair_lock_unlock(&profilesLock);
  if (v23 && [v23 kind] && objc_msgSend(v20, "isNamed"))
  {
    tabCollection = self->_tabCollection;
    v42 = v19;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    [(WBTabCollection *)tabCollection insertItemsIntoPlace:v25 inParent:v23 completionHandler:v21];
  }

  else
  {
    v26 = self->_tabCollection;
    v41 = v19;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    [(WBTabCollection *)v26 insertItemsIntoPlace:v25 inParentWithID:0 completionHandler:v21];
  }

  v27 = [v19 copy];
  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 32) + 248);
    if (v3)
    {
      [v4 saveMinimumAPISyncVersionOfDescendantItemsForMovedItem:*(a1 + 48)];
    }

    else
    {
      [v4 createTopScopedBookmarkListIfNeededForTabGroup:*(a1 + 40)];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __58__WBTabGroupManager__insertTabGroup_afterTabGroup_isMove___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)moveTabGroup:(id)a3 afterTabGroup:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && ([v6 profileIdentifier], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "profileIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, !v10))
  {
    v11 = [v7 profileIdentifier];
    [(WBTabGroupManager *)self moveTabGroup:v12 toProfileWithIdentifier:v11 afterTabGroup:v7];
  }

  else
  {
    [(WBTabGroupManager *)self _reorderTabGroup:v12 afterTabGroup:v7];
  }
}

- (void)_reorderTabGroup:(id)a3 afterTabGroup:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 privacyPreservingDescription];
    v11 = [v7 privacyPreservingDescription];
    *buf = 138543618;
    v42 = v10;
    v43 = 2114;
    v44 = v11;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Moving tab group %{public}@ after tab group %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  v12 = [v6 uuid];
  v13 = [(WBTabGroupManager *)self _tabGroupWithUUID:v12];

  v14 = [v7 uuid];
  v15 = [(WBTabGroupManager *)self _tabGroupWithUUID:v14];

  if (v13)
  {
    v16 = [v6 profileIdentifier];
    v17 = [(WBTabGroupManager *)self _tabGroupsForProfileWithIdentifier:v16];

    v18 = [(WBTabGroupManager *)self _tabGroupAfterTabGroup:v7 inTabGroups:v17];
    if ([v17 count] && !WBSIsEqual())
    {
      v32 = v18;
      v33 = v17;
      v34 = v15;
      v23 = [(WBTabGroupManager *)self _generatePositionForTabGroup:v13 afterTabGroup:v15 inTabGroups:v17];
      [v13 setSyncPosition:v23];

      os_unfair_lock_unlock(&tabGroupsLock);
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v24 = [(NSHashTable *)self->_observers copy];
      v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v37;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v37 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v36 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v29 tabGroupManagerDidUpdateTabGroups:self];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v26);
      }

      tabCollection = self->_tabCollection;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke;
      v35[3] = &unk_279E75238;
      v35[4] = self;
      [(WBTabCollection *)tabCollection reorderItemIntoPlace:v13 completionHandler:v35];
      v15 = v34;
      v18 = v32;
      v17 = v33;
    }

    else
    {
      v19 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        v21 = [v6 privacyPreservingDescription];
        *buf = 138543362;
        v42 = v21;
        _os_log_impl(&dword_272C20000, v20, OS_LOG_TYPE_INFO, "Not moving tab group %{public}@ because its position did not change.", buf, 0xCu);
      }

      os_unfair_lock_unlock(&tabGroupsLock);
    }
  }

  else
  {
    v22 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager _reorderTabGroup:v22 afterTabGroup:?];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __52__WBTabGroupManager__reorderTabGroup_afterTabGroup___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)moveTabGroup:(id)a3 toProfileWithIdentifier:(id)a4 afterTabGroup:(id)a5
{
  v13 = a5;
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&tabGroupsLock);
  v10 = [v9 uuid];

  v11 = [(WBTabGroupManager *)self _tabGroupWithUUID:v10];

  [v11 setProfileIdentifier:v8];
  os_unfair_lock_unlock(&tabGroupsLock);
  v12 = [(WBTabGroupManager *)self _insertTabGroup:v11 afterTabGroup:v13 isMove:1];
}

- (void)removeTabGroup:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [v4 uuid];
  v6 = [(WBTabGroupManager *)self _tabGroupWithUUID:v5];

  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 privacyPreservingDescription];
      *buf = 138543362;
      v44 = v10;
      _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_DEFAULT, "Removing tab group %{public}@", buf, 0xCu);
    }

    [(WBTabGroupManager *)self _uncacheTabGroup:v6];
    removedTabGroupsByUUID = self->_removedTabGroupsByUUID;
    v12 = [v6 uuid];
    v29 = v6;
    [(NSMutableDictionary *)removedTabGroupsByUUID setObject:v6 forKeyedSubscript:v12];

    os_unfair_lock_unlock(&tabGroupsLock);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [(NSHashTable *)self->_observers copy];
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        v17 = 0;
        do
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            v19 = [v4 uuid];
            [v18 tabGroupManager:self didRemoveTabGroupWithUUID:v19];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v15);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = [(NSHashTable *)self->_observers copy];
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        v24 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v32 + 1) + 8 * v24);
          if (objc_opt_respondsToSelector())
          {
            [v25 tabGroupManagerDidUpdateTabGroups:self];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v22);
    }

    tabCollection = self->_tabCollection;
    v6 = v29;
    v40 = v29;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __36__WBTabGroupManager_removeTabGroup___block_invoke;
    v30[3] = &unk_279E778B0;
    v30[4] = self;
    v31 = v29;
    [(WBTabCollection *)tabCollection deleteItems:v27 leaveTombstones:1 completionHandler:v30];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager removeTabGroup:v8];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __36__WBTabGroupManager_removeTabGroup___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __36__WBTabGroupManager_removeTabGroup___block_invoke_2;
    v3[3] = &unk_279E753F0;
    v2 = *(a1 + 40);
    v3[4] = *(a1 + 32);
    v4 = v2;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

void __36__WBTabGroupManager_removeTabGroup___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__WBTabGroupManager_removeTabGroup___block_invoke_3;
  v14[3] = &unk_279E753F0;
  v2 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v2;
  os_unfair_lock_lock(&tabGroupsLock);
  __36__WBTabGroupManager_removeTabGroup___block_invoke_3(v14);
  os_unfair_lock_unlock(&tabGroupsLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(*(a1 + 32) + 16) copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __36__WBTabGroupManager_removeTabGroup___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) uuid];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (void)updateTabGroupWithUUID:(id)a3 persist:(BOOL)a4 usingBlock:(id)a5
{
  v6 = a4;
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v57 = v8;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Updating tab group with uuid %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  v11 = [(WBTabGroupManager *)self _tabGroupWithUUID:v8];
  if (v11)
  {
    v36 = v6;
    v37 = v8;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v12 = [(NSHashTable *)self->_observers copy];
    v13 = [v12 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v18 = [v11 uuid];
            [v17 tabGroupManager:self willPerformBlockUpdatesForTabGroupWithUUID:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v14);
    }

    v9[2](v9, v11);
    [v11 updateLastSelectedTab];
    os_unfair_lock_unlock(&tabGroupsLock);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = [(NSHashTable *)self->_observers copy];
    v20 = [v19 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v46;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v45 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v25 = [v11 uuid];
            [v24 tabGroupManager:self didPerformBlockUpdatesForTabGroupWithUUID:v25];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v21);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v26 = [(NSHashTable *)self->_observers copy];
    v27 = [v26 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v41 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            v32 = [v11 uuid];
            [v31 tabGroupManager:self didUpdateTabGroupWithUUID:v32];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v28);
    }

    v8 = v37;
    if (v36)
    {
      tabCollection = self->_tabCollection;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke;
      v38[3] = &unk_279E778B0;
      v39 = v11;
      v40 = self;
      [(WBTabCollection *)tabCollection saveItem:v39 completionHandler:v38];
    }
  }

  else
  {
    v34 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v57 = v8;
      _os_log_impl(&dword_272C20000, v34, OS_LOG_TYPE_INFO, "Not updating tab group with uuid %{public}@ because it does not exist.", buf, 0xCu);
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if ([*(a1 + 32) isSyncable])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke_2;
      block[3] = &unk_279E751F0;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __63__WBTabGroupManager_updateTabGroupWithUUID_persist_usingBlock___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasMultipleProfiles
{
  v2 = [(WBTabGroupManager *)self profiles];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)_tabGroupsForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqual:*MEMORY[0x277D49BD8]];
  v6 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __56__WBTabGroupManager__tabGroupsForProfileWithIdentifier___block_invoke;
  v15 = &unk_279E77918;
  v16 = v4;
  v17 = v5;
  v7 = v4;
  v8 = [v6 safari_filterObjectsUsingBlock:&v12];

  v9 = [(WBTabGroupManager *)self _itemSyncPositionComparator:v12];
  v10 = [v8 sortedArrayUsingComparator:v9];

  return v10;
}

uint64_t __56__WBTabGroupManager__tabGroupsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = [v3 profileIdentifier];
    v5 = *(a1 + 32);
    if (WBSIsEqual())
    {
      v6 = 1;
    }

    else if (*(a1 + 40) == 1)
    {
      v6 = [v3 isInDefaultProfile];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_unnamedTabGroupsForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqual:*MEMORY[0x277D49BD8]];
  v6 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__WBTabGroupManager__unnamedTabGroupsForProfileWithIdentifier___block_invoke;
  v10[3] = &unk_279E77918;
  v11 = v4;
  v12 = v5;
  v7 = v4;
  v8 = [v6 safari_filterObjectsUsingBlock:v10];

  return v8;
}

uint64_t __63__WBTabGroupManager__unnamedTabGroupsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 profileIdentifier];
    v6 = *(a1 + 32);
    if (WBSIsEqual())
    {
      v4 = 1;
    }

    else if (*(a1 + 40) == 1)
    {
      v4 = [v3 isInDefaultProfile];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_unnamedTabGroupsForDeviceWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__WBTabGroupManager__unnamedTabGroupsForDeviceWithUUID___block_invoke;
  v11[3] = &unk_279E77940;
  v12 = v4;
  v6 = v4;
  v7 = [v5 safari_filterObjectsUsingBlock:v11];

  v8 = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  v9 = [v7 sortedArrayUsingComparator:v8];

  return v9;
}

uint64_t __56__WBTabGroupManager__unnamedTabGroupsForDeviceWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 deviceUUIDString];
    v6 = *(a1 + 32);
    v4 = WBSIsEqual();
  }

  return v4;
}

- (id)profileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_removedProfilesByIdentifier objectForKeyedSubscript:v4];
  }

  v8 = v7;

  return v8;
}

- (void)appendProfile:(id)a3 completionHandler:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v34 = a4;
  os_unfair_lock_lock(&profilesLock);
  v7 = [v6 mutableCopy];
  v8 = [(WBTabGroupManager *)self _namedProfiles];
  v9 = [v8 lastObject];
  v10 = [(WBTabGroupManager *)self _generatePositionForProfile:v6 afterProfile:v9];
  [v7 setSyncPosition:v10];

  profilesByIdentifier = self->_profilesByIdentifier;
  v12 = [v6 identifier];
  [(NSMutableDictionary *)profilesByIdentifier setObject:v7 forKeyedSubscript:v12];

  os_unfair_lock_unlock(&profilesLock);
  profileDataManager = self->_profileDataManager;
  v14 = [v6 serverID];
  v35 = v6;
  v15 = [v6 identifier];
  [(WBSProfileDataManager *)profileDataManager ensureProfileDirectoriesExistForProfileWithServerID:v14 profileIdentifier:v15];

  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v44 = 0u;
  v16 = [(NSHashTable *)self->_observers copy];
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      v20 = 0;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v44 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          v22 = [v7 identifier];
          [v21 tabGroupManager:self didInsertProfileWithIdentifier:v22];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v18);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = [(NSHashTable *)self->_observers copy];
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    do
    {
      v27 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v40 + 1) + 8 * v27);
        if (objc_opt_respondsToSelector())
        {
          [v28 tabGroupManagerDidUpdateProfiles:self];
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v25);
  }

  tabCollection = self->_tabCollection;
  v48 = v7;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke;
  v36[3] = &unk_279E77990;
  v38 = self;
  v39 = v34;
  v37 = v7;
  v31 = v7;
  v32 = v34;
  [(WBTabCollection *)tabCollection insertItemsIntoPlace:v30 inParentWithID:0 completionHandler:v36];

  v33 = *MEMORY[0x277D85DE8];
}

void __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_2;
    block[3] = &unk_279E77968;
    v7 = *(a1 + 48);
    v8 = a2;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_3;
    v4[3] = &unk_279E751F0;
    v4[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v4 = [*(a1 + 32) copy];
    (*(v1 + 16))(v1, v4);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }
}

void __53__WBTabGroupManager_appendProfile_completionHandler___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)updateProfileWithIdentifier:(id)a3 persist:(BOOL)a4 usingBlock:(id)a5 completionHandler:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  os_unfair_lock_lock(&profilesLock);
  v13 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:v10];
  v14 = v13;
  if (v13)
  {
    v30 = a4;
    v31 = v12;
    v33 = v10;
    v34 = [v13 copy];
    v32 = v11;
    v11[2](v11, v14);
    os_unfair_lock_unlock(&profilesLock);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = self;
    v16 = [(NSHashTable *)self->_observers copy];
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v22 = [v14 identifier];
            v23 = [v14 differenceFromProfile:v34];
            [v21 tabGroupManager:v15 didUpdateProfileWithIdentifier:v22 difference:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    if (v30)
    {
      tabCollection = v15->_tabCollection;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke;
      v35[3] = &unk_279E77990;
      v12 = v31;
      v38 = v31;
      v25 = v14;
      v36 = v25;
      v37 = v15;
      [(WBTabCollection *)tabCollection saveItem:v25 completionHandler:v35];
      v26 = [v25 copy];

      v11 = v32;
      v10 = v33;
    }

    else
    {
      v26 = [v14 copy];
      v11 = v32;
      v10 = v33;
      v12 = v31;
    }
  }

  else
  {
    v27 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v45 = v10;
      _os_log_impl(&dword_272C20000, v27, OS_LOG_TYPE_INFO, "Not updating profile with uuid %{public}@ because it does not exist.", buf, 0xCu);
    }

    os_unfair_lock_unlock(&profilesLock);
    v26 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v26;
}

void __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke_2;
    block[3] = &unk_279E779B8;
    v6 = *(a1 + 48);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    if ([*(a1 + 32) isSyncable])
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke_3;
      v4[3] = &unk_279E751F0;
      v4[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v4);
    }
  }
}

void __86__WBTabGroupManager_updateProfileWithIdentifier_persist_usingBlock_completionHandler___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeProfile:(id)a3 completionHandler:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&profilesLock);
  profilesByIdentifier = self->_profilesByIdentifier;
  v9 = [v6 identifier];
  v10 = [(NSMutableDictionary *)profilesByIdentifier objectForKeyedSubscript:v9];

  v11 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      v13 = v11;
      v14 = [v6 privacyPreservingDescription];
      *buf = 138543362;
      v56 = v14;
      _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Removing profile %{public}@", buf, 0xCu);
    }

    v39 = v7;
    v15 = self->_profilesByIdentifier;
    v16 = [v6 identifier];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];

    removedProfilesByIdentifier = self->_removedProfilesByIdentifier;
    v18 = [v10 identifier];
    v38 = v10;
    [(NSMutableDictionary *)removedProfilesByIdentifier setObject:v10 forKeyedSubscript:v18];

    os_unfair_lock_unlock(&profilesLock);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = [(NSHashTable *)self->_observers copy];
    v20 = [v19 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v48 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v25 = [v6 identifier];
            [v24 tabGroupManager:self didRemoveProfileWithIdentifier:v25];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v21);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = [(NSHashTable *)self->_observers copy];
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v45;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v44 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v31 tabGroupManagerDidUpdateProfiles:self];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v28);
    }

    v10 = v38;
    if (![(WBTabGroupManager *)self hasMultipleProfiles])
    {
      v32 = [(WBTabGroupManager *)self updateProfileWithIdentifier:*MEMORY[0x277D49BD8] persist:1 usingBlock:&__block_literal_global_107 completionHandler:0];
    }

    tabCollection = self->_tabCollection;
    v52 = v38;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_2;
    v40[3] = &unk_279E77A00;
    v7 = v39;
    v43 = v39;
    v40[4] = self;
    v41 = v6;
    v42 = v38;
    [(WBTabCollection *)tabCollection deleteItems:v34 leaveTombstones:1 completionHandler:v40];
  }

  else
  {
    if (v12)
    {
      v35 = v11;
      v36 = [v6 privacyPreservingDescription];
      *buf = 138543362;
      v56 = v36;
      _os_log_impl(&dword_272C20000, v35, OS_LOG_TYPE_INFO, "Not removing profile %{public}@ because it no longer exists", buf, 0xCu);
    }

    os_unfair_lock_unlock(&profilesLock);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:&stru_288259858];
  v3 = [MEMORY[0x277D499E8] defaultPersonalProfileSymbolImage];
  [v2 setSymbolImageName:v3];

  v4 = [MEMORY[0x277D499E8] defaultPersonalProfileColor];
  [v2 setColor:v4];
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (*(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_3;
    block[3] = &unk_279E779B8;
    v7 = *(a1 + 56);
    v8 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    [*(*(a1 + 32) + 152) didRemoveProfile:*(a1 + 40)];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_4;
    v4[3] = &unk_279E753F0;
    v4[4] = *(a1 + 32);
    v5 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_5;
  v14[3] = &unk_279E753F0;
  v2 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v2;
  os_unfair_lock_lock(&profilesLock);
  __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_5(v14);
  os_unfair_lock_unlock(&profilesLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(*(a1 + 32) + 16) copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __53__WBTabGroupManager_removeProfile_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = [*(a1 + 40) identifier];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (void)moveProfile:(id)a3 afterProfile:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 privacyPreservingDescription];
    v11 = [v7 privacyPreservingDescription];
    *buf = 138543618;
    v38 = v10;
    v39 = 2114;
    v40 = v11;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Moving profile %{public}@ after profile %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&profilesLock);
  profilesByIdentifier = self->_profilesByIdentifier;
  v13 = [v6 identifier];
  v14 = [(NSMutableDictionary *)profilesByIdentifier objectForKeyedSubscript:v13];

  v15 = self->_profilesByIdentifier;
  v16 = [v7 identifier];
  v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];

  if (v14)
  {
    v30 = v17;
    v18 = [(WBTabGroupManager *)self _generatePositionForProfile:v6 afterProfile:v17];
    [v14 setSyncPosition:v18];

    os_unfair_lock_unlock(&profilesLock);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [(NSHashTable *)self->_observers copy];
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v24 tabGroupManagerDidUpdateProfiles:self];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }

    tabCollection = self->_tabCollection;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke;
    v31[3] = &unk_279E75238;
    v31[4] = self;
    [(WBTabCollection *)tabCollection reorderItemIntoPlace:v14 completionHandler:v31];
    v17 = v30;
  }

  else
  {
    v26 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v28 = [v6 privacyPreservingDescription];
      *buf = 138543362;
      v38 = v28;
      _os_log_impl(&dword_272C20000, v27, OS_LOG_TYPE_INFO, "Not moving profile %{public}@ because it no longer exists", buf, 0xCu);
    }

    os_unfair_lock_unlock(&profilesLock);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __46__WBTabGroupManager_moveProfile_afterProfile___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)insertUnnamedTabGroup:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&profilesLock);
  v5 = [v4 mutableCopy];

  v6 = [v5 profileIdentifier];
  v7 = [(WBTabGroupManager *)self profileWithIdentifier:v6];

  v8 = [v7 identifier];
  v9 = [(WBTabGroupManager *)self _findOrCreateLocalDeviceForProfileWithIdentifier:v8];

  v10 = [v9 uuid];
  deviceUUIDByTabGroupUUID = self->_deviceUUIDByTabGroupUUID;
  v12 = [v5 uuid];
  [(NSMutableDictionary *)deviceUUIDByTabGroupUUID setObject:v10 forKeyedSubscript:v12];

  os_unfair_lock_unlock(&profilesLock);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke;
  v22[3] = &unk_279E75D50;
  v23 = v5;
  v24 = self;
  v25 = v9;
  v13 = v9;
  v14 = v5;
  os_unfair_lock_lock(&tabGroupsLock);
  __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke(v22);
  os_unfair_lock_unlock(&tabGroupsLock);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_2;
  v21[3] = &unk_279E75238;
  v21[4] = self;
  v15 = MEMORY[0x2743D6830](v21);
  tabCollection = self->_tabCollection;
  v26[0] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [(WBTabCollection *)tabCollection insertItemsIntoPlace:v17 inParent:v13 completionHandler:v15];

  v18 = [v14 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke(id *a1)
{
  v2 = [a1[5] _generatePositionForTabGroup:a1[4] afterTabGroup:0];
  [a1[4] setSyncPosition:v2];

  v3 = [a1[6] profileIdentifier];
  [a1[4] setDeviceUUIDString:v3];

  v5 = a1[4];
  v4 = a1[5];
  v6 = [a1[6] profileIdentifier];
  [v4 _cacheTabGroup:v5 creatorDeviceUUID:v6];
}

void __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_3;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__WBTabGroupManager_insertUnnamedTabGroup___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *MEMORY[0x277D49BD8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (WBSIsEqual())
        {
          [(NSMutableDictionary *)self->_localTabGroupsByUUID allValues];
        }

        else
        {
          [(WBTabGroupManager *)self _unnamedTabGroupsForProfileWithIdentifier:v12, v16];
        }
        v13 = ;
        [v5 addObjectsFromArray:{v13, v16}];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(WBTabGroupManager *)self _tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:a3, 0];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) tabs];
        v10 = [v9 safari_filterObjectsUsingBlock:&__block_literal_global_114];
        v6 += [v10 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)closeAllTabsInProfilesWithIdentifiers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(WBTabGroupManager *)self _tabGroupsWithTabsToBeClosedForProfilesWithIdentifiers:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) uuid];
        [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:v9 persist:1 usingBlock:&__block_literal_global_116];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isTab:(id)a3 childOfPinnedTabGroupOfNamedProfileOfUnnamedTabGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isNamed] & 1) != 0 || (objc_msgSend(v7, "profileIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D49BD8]), v8, (v9))
  {
    v10 = 0;
  }

  else
  {
    tabCollection = self->_tabCollection;
    v12 = [v7 profileIdentifier];
    LODWORD(tabCollection) = [(WBTabCollection *)tabCollection pinnedTabsFolderIDForProfileWithIdentifier:v12];

    v10 = [v6 parentIdentifier] == tabCollection;
  }

  return v10;
}

- (id)profileWithServerID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&profilesLock);
  profilesByIdentifier = self->_profilesByIdentifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__WBTabGroupManager_profileWithServerID___block_invoke;
  v9[3] = &unk_279E77A48;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableDictionary *)profilesByIdentifier safari_valueOfEntryPassingTest:v9];
  os_unfair_lock_unlock(&profilesLock);

  return v7;
}

uint64_t __41__WBTabGroupManager_profileWithServerID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 serverID];
  v5 = *(a1 + 32);
  v6 = WBSIsEqual();

  return v6;
}

- (id)syncedRemoteCloudTabDevicesForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&profilesLock);
  v5 = [(WBTabGroupManager *)self _remoteDevicesForProfileWithIdentifier:v4];

  os_unfair_lock_unlock(&profilesLock);

  return v5;
}

- (BOOL)closeTab:(id)a3 onDevice:(id)a4
{
  v5 = [a3 uuidString];
  v6 = [(WBTabGroupManager *)self _tabWithUUID:v5];

  v7 = [v6 tabGroupUUID];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__WBTabGroupManager_closeTab_onDevice___block_invoke;
  v10[3] = &unk_279E751B8;
  v11 = v6;
  v8 = v6;
  [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:v7 persist:1 usingBlock:v10];

  return 1;
}

void __39__WBTabGroupManager_closeTab_onDevice___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v6 count:1];
  [v3 deleteTabs:{v4, v6, v7}];

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)closeAllTabsOnDevice:(id)a3
{
  v4 = [a3 tabs];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__WBTabGroupManager_closeAllTabsOnDevice___block_invoke;
  v12[3] = &unk_279E77A70;
  v12[4] = self;
  v5 = [v4 safari_mapObjectsUsingBlock:v12];

  v6 = [v5 count];
  if (v6)
  {
    v7 = [v5 firstObject];
    v8 = [v7 tabGroupUUID];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__WBTabGroupManager_closeAllTabsOnDevice___block_invoke_2;
    v10[3] = &unk_279E751B8;
    v11 = v5;
    [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:v8 persist:1 usingBlock:v10];
  }

  return v6 != 0;
}

id __42__WBTabGroupManager_closeAllTabsOnDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuidString];
  v4 = [v2 _tabWithUUID:v3];

  return v4;
}

- (id)devicesForProfile:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&profilesLock);
  v5 = [v4 identifier];

  v6 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:v5];

  os_unfair_lock_unlock(&profilesLock);

  return v6;
}

- (id)_devicesForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_devicesByUUID allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__WBTabGroupManager__devicesForProfileWithIdentifier___block_invoke;
  v11[3] = &unk_279E77A98;
  v12 = v4;
  v6 = v4;
  v7 = [v5 safari_filterObjectsUsingBlock:v11];

  v8 = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  v9 = [v7 sortedArrayUsingComparator:v8];

  return v9;
}

uint64_t __54__WBTabGroupManager__devicesForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 profileIdentifier];
  v4 = *(a1 + 32);
  v5 = WBSIsEqual();

  return v5;
}

- (id)_remoteDevicesForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_devicesByUUID allValues];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WBTabGroupManager__remoteDevicesForProfileWithIdentifier___block_invoke;
  v11[3] = &unk_279E77A98;
  v12 = v4;
  v6 = v4;
  v7 = [v5 safari_filterObjectsUsingBlock:v11];

  v8 = [(WBTabGroupManager *)self _itemSyncPositionComparator];
  v9 = [v7 sortedArrayUsingComparator:v8];

  return v9;
}

BOOL __60__WBTabGroupManager__remoteDevicesForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bookmark];
  if ([v4 subtype] == 4)
  {
    v5 = [v3 profileIdentifier];
    v6 = *(a1 + 32);
    if (WBSIsEqual())
    {
      v7 = [v3 tabs];
      v8 = [v7 count] != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_insertDevice:(id)a3 inProfile:(id)a4 completionHandler:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  os_unfair_lock_assert_owner(&profilesLock);
  v11 = [(WBTabGroupManager *)self _generatePositionForDevice:v8 afterDevice:0];
  [v8 setSyncPosition:v11];

  devicesByUUID = self->_devicesByUUID;
  v13 = [v8 uuid];
  [(NSMutableDictionary *)devicesByUUID setObject:v8 forKeyedSubscript:v13];

  tabCollection = self->_tabCollection;
  v22[0] = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke;
  v20[3] = &unk_279E77AC0;
  v20[4] = self;
  v21 = v9;
  v16 = v9;
  [(WBTabCollection *)tabCollection insertItemsIntoPlace:v15 inParent:v10 completionHandler:v20];

  v17 = v8;
  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

void __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke_2;
    block[3] = &unk_279E779B8;
    v6 = *(a1 + 40);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (a2)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke_3;
    v4[3] = &unk_279E751F0;
    v4[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __63__WBTabGroupManager__insertDevice_inProfile_completionHandler___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_findOrCreateLocalDeviceForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WBTabGroupManager *)self _findLocalDeviceForProfileWithIdentifier:v4];
  if (!v5)
  {
    v6 = [(NSMutableDictionary *)self->_profilesByIdentifier objectForKeyedSubscript:v4];
    lastLocalDeviceNameSaved = self->_lastLocalDeviceNameSaved;
    v8 = [(WBSDevice *)self->_device userUniqueDeviceIdentifier];
    v9 = [(WBTabGroupManager *)self deviceIdentifier];
    v10 = [WBDeviceParameters localDeviceWithTitle:lastLocalDeviceNameSaved creationDeviceIdentifier:v8 deviceIdentifier:v9];

    v11 = [(WBSDevice *)self->_device deviceTypeIdentifier];
    [v10 setDeviceTypeIdentifier:v11];

    v12 = [WBDevice deviceWithParameters:v10 unnamedTabGroups:MEMORY[0x277CBEBF8] profileIdentifier:v4];
    v5 = [(WBTabGroupManager *)self _insertDevice:v12 inProfile:v6 completionHandler:0];
  }

  return v5;
}

- (id)_findLocalDeviceForProfileWithIdentifier:(id)a3
{
  v3 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:a3];
  v4 = [v3 safari_firstObjectPassingTest:&__block_literal_global_123];

  return v4;
}

- (void)_didModifyUnnamedTabGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceUUIDString];
  [(WBTabGroupManager *)self _didModifyUnnamedTabGroupInDeviceWithUUID:v5];

  os_unfair_lock_lock(&tabGroupsLock);
  v6 = [v4 deviceUUIDString];
  v7 = [(WBTabGroupManager *)self _unnamedTabGroupsForDeviceWithUUID:v6];

  v8 = [v7 firstObject];
  v9 = [v4 isEqual:v8];

  if (v9)
  {
    os_unfair_lock_unlock(&tabGroupsLock);
  }

  else
  {
    v10 = [(WBTabGroupManager *)self _generatePositionForTabGroup:v4 afterTabGroup:0];
    [v4 setSyncPosition:v10];

    os_unfair_lock_unlock(&tabGroupsLock);
    tabCollection = self->_tabCollection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke;
    v12[3] = &unk_279E75238;
    v12[4] = self;
    [(WBTabCollection *)tabCollection reorderItemIntoPlace:v4 completionHandler:v12];
  }
}

void __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __47__WBTabGroupManager__didModifyUnnamedTabGroup___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didModifyUnnamedTabGroupInDeviceWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:v4];

  v6 = [v5 profileIdentifier];
  v7 = [(WBTabGroupManager *)self _devicesForProfileWithIdentifier:v6];

  v8 = [v7 firstObject];
  v9 = [v5 isEqual:v8];

  if (v9)
  {
    os_unfair_lock_unlock(&tabGroupsLock);
  }

  else
  {
    v10 = [(WBTabGroupManager *)self _generatePositionForDevice:v5 afterDevice:0];
    [v5 setSyncPosition:v10];

    os_unfair_lock_unlock(&tabGroupsLock);
    tabCollection = self->_tabCollection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke;
    v12[3] = &unk_279E75238;
    v12[4] = self;
    [(WBTabCollection *)tabCollection reorderItemIntoPlace:v5 completionHandler:v12];
  }
}

void __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __63__WBTabGroupManager__didModifyUnnamedTabGroupInDeviceWithUUID___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDeviceNameIfNeededWithName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(NSString *)self->_lastLocalDeviceNameSaved isEqualToString:v5])
  {
    v6 = [(NSMutableDictionary *)self->_devicesByUUID allValues];
    v7 = [v6 safari_filterObjectsUsingBlock:&__block_literal_global_125];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v16 + 1) + 8 * v12++) setTitle:v5];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    objc_storeStrong(&self->_lastLocalDeviceNameSaved, a3);
    tabCollection = self->_tabCollection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_2;
    v15[3] = &unk_279E75238;
    v15[4] = self;
    [(WBTabCollection *)tabCollection saveItems:v8 completionHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_3;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __55__WBTabGroupManager__updateDeviceNameIfNeededWithName___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_didLocallyCreateUnnamedTabGroup:(id)a3
{
  deviceUUIDByTabGroupUUID = self->_deviceUUIDByTabGroupUUID;
  v5 = [a3 uuid];
  v6 = [(NSMutableDictionary *)deviceUUIDByTabGroupUUID objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_devicesByUUID objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 isRemoteDevice] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (void)updateTabWithUUID:(id)a3 persist:(BOOL)a4 notify:(BOOL)a5 usingBlock:(id)a6
{
  v7 = a5;
  v8 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v45 = v10;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Updating tabs with uuid %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  v13 = [(WBTabGroupManager *)self _tabWithUUID:v10];
  v14 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v13 privacyPreservingDescription];
      *buf = 138543362;
      v45 = v17;
      _os_log_impl(&dword_272C20000, v16, OS_LOG_TYPE_INFO, "Updating tab %{public}@", buf, 0xCu);
    }

    v11[2](v11, v13);
    v18 = [v13 tabGroupUUID];
    v19 = [(WBTabGroupManager *)self _tabGroupWithUUID:v18];

    LODWORD(v18) = [v13 wasModified];
    v20 = [v13 isSyncable];
    os_unfair_lock_unlock(&tabGroupsLock);
    if (v18)
    {
      if (v7)
      {
        v33 = v20;
        v34 = v19;
        v35 = v8;
        v36 = v10;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v21 = [(NSHashTable *)self->_observers copy];
        v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v40;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v40 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v39 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v27 = [v13 uuid];
                [v26 tabGroupManager:self didUpdateTabWithUUID:v27 userDriven:1];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v23);
        }

        v10 = v36;
        v8 = v35;
        v19 = v34;
        v20 = v33;
      }

      if (v8)
      {
        tabCollection = self->_tabCollection;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke;
        v37[3] = &unk_279E77B08;
        v38 = v20;
        v37[4] = self;
        [(WBTabCollection *)tabCollection saveItem:v13 completionHandler:v37];
        [v13 markClean];
        if (([v19 isNamed] & 1) == 0)
        {
          v29 = [v19 deviceUUIDString];
          if (v29)
          {
            v30 = v29;
            v31 = [MEMORY[0x277D49A08] isSafariProfilesEnabled];

            if (v31)
            {
              [(WBTabGroupManager *)self _didModifyUnnamedTabGroup:v19];
            }
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager updateTabWithUUID:persist:notify:usingBlock:];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    block[5] = v1;
    block[6] = v2;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke_2;
    block[3] = &unk_279E751F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __65__WBTabGroupManager_updateTabWithUUID_persist_notify_usingBlock___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)moveTabs:(id)a3 toTabGroup:(id)a4 afterTab:(id)a5 withoutPersistingTabGroupsWithUUIDStrings:(id)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v45 = a4;
  v42 = a5;
  v43 = a6;
  v10 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v9 count];
    v13 = [v45 privacyPreservingDescription];
    *buf = 134218242;
    v72 = v12;
    v73 = 2114;
    v74 = v13;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Moving %zu tabs to tab group %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&reloadAfterSyncLock);
  v44 = [MEMORY[0x277CBEB18] array];
  v49 = [MEMORY[0x277CBEB38] dictionary];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v9;
  v48 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v48)
  {
    v47 = *v66;
    do
    {
      v50 = 0;
      do
      {
        if (*v66 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v65 + 1) + 8 * v50);
        v15 = [v14 tabGroupUUID];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = [v14 tabGroupUUID];
          v18 = [v49 objectForKeyedSubscript:v17];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = [MEMORY[0x277CBEB18] array];
          }

          v25 = v20;

          [v25 addObject:v14];
          [v49 setObject:v25 forKeyedSubscript:v17];
LABEL_26:

          goto LABEL_27;
        }

        v21 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_272C20000, v21, OS_LOG_TYPE_INFO, "Moving tab with no tab group", buf, 2u);
        }

        v22 = [v14 isSyncable];
        if (v22 != [v45 isSyncable])
        {
          v23 = [WBMutableTab alloc];
          v24 = [v14 deviceIdentifier];
          v17 = [(WBTab *)v23 initWithUUID:0 deviceIdentifier:v24];

          [(WBMutableTab *)v17 adoptAttributesFromTab:v14];
          [v44 addObject:v17];
          v63 = 0u;
          v64 = 0u;
          v62 = 0u;
          v61 = 0u;
          v25 = [(NSHashTable *)self->_observers copy];
          v26 = [v25 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v26)
          {
            v27 = *v62;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v62 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v61 + 1) + 8 * i);
                if (objc_opt_respondsToSelector())
                {
                  v30 = [v14 uuid];
                  v31 = [(WBTab *)v17 uuid];
                  [v29 tabGroupManager:self willReplaceTabWithUUID:v30 withTabWithUUID:v31];
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v61 objects:v69 count:16];
            }

            while (v26);
          }

          goto LABEL_26;
        }

        v17 = [v14 mutableCopy];
        [v44 addObject:v17];
LABEL_27:

        ++v50;
      }

      while (v50 != v48);
      v32 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      v48 = v32;
    }

    while (v32);
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke;
  v56[3] = &unk_279E77B58;
  v33 = v43;
  v57 = v33;
  v34 = v45;
  v58 = v34;
  v59 = self;
  v35 = v44;
  v60 = v35;
  [v49 enumerateKeysAndObjectsUsingBlock:v56];
  v36 = [v34 uuid];
  v37 = [v33 containsObject:v36];

  v38 = [v34 uuid];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_3;
  v52[3] = &unk_279E77B80;
  v39 = v35;
  v53 = v39;
  v54 = self;
  v40 = v42;
  v55 = v40;
  [(WBTabGroupManager *)self updateTabsInTabGroupWithUUID:v38 persist:v37 ^ 1u usingBlock:v52];

  os_unfair_lock_unlock(&reloadAfterSyncLock);
  v41 = *MEMORY[0x277D85DE8];
}

void __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 containsObject:v7];
  v9 = [*(a1 + 40) uuid];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 ^ 1u;
  v13 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_2;
  v17[3] = &unk_279E77B30;
  v18 = v5;
  v16 = *(a1 + 40);
  v14 = v16.i64[0];
  v19 = vextq_s8(v16, v16, 8uLL);
  v20 = *(a1 + 56);
  v15 = v5;
  [v13 updateTabsInTabGroupWithUUID:v7 options:v11 | v12 usingBlock:v17];
}

void __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v22 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v22)
  {
    v21 = *v24;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = *(a1 + 40);
        v7 = [v5 uuid];
        v8 = [v6 _tabWithUUID:v7];

        v9 = [v3 isSyncable];
        v10 = [*(a1 + 48) isSyncable];
        v11 = [v3 profileIdentifier];
        v12 = [*(a1 + 48) profileIdentifier];
        v13 = WBSIsEqual();

        if (v9 == v10 && v13)
        {
          [v3 removeTab:v8];
          [*(a1 + 56) addObject:v8];
        }

        else
        {
          v27 = v8;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
          [v3 deleteTabs:v14];

          v15 = [WBMutableTab alloc];
          v16 = [v5 uuid];
          v17 = [v5 deviceIdentifier];
          v18 = [(WBTab *)v15 initWithUUID:v16 deviceIdentifier:v17];

          [(WBMutableTab *)v18 adoptAttributesFromTab:v5];
          [*(a1 + 56) addObject:v18];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v22);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __92__WBTabGroupManager_moveTabs_toTabGroup_afterTab_withoutPersistingTabGroupsWithUUIDStrings___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v7 = [v4 uuid];
  v6 = [v3 _tabWithUUID:v7];
  [v5 insertTabs:v2 afterTab:v6];
}

- (BOOL)_needsInitialBlankTabInTabGroup:(id)a3
{
  v3 = a3;
  v4 = [v3 firstUnpinnedTab];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 pinnedStartPage];
    v5 = v6 == 0;
  }

  return v5;
}

- (void)updateTabsInTabGroupWithUUID:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  v6 = a4;
  v90 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v89 = v8;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Updating tabs in tab group with uuid %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&tabGroupsLock);
  v11 = [(WBTabGroupManager *)self _tabGroupWithUUID:v8];
  v12 = v11;
  if (v11)
  {
    v13 = v6 & 4;
    devicesByUUID = self->_devicesByUUID;
    v15 = [v11 deviceUUIDString];
    v16 = [(NSMutableDictionary *)devicesByUUID objectForKeyedSubscript:v15];

    v58 = [v16 isRemoteDevice];
    v55 = v9;
    v54 = v6;
    v56 = v13;
    v57 = v16;
    if ((v6 & 4) == 0 && (v58 & 1) == 0)
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v17 = [(NSHashTable *)self->_observers copy];
      v18 = [v17 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v80;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v80 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v79 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v23 = [v12 uuid];
              [v22 tabGroupManager:self willPerformBlockUpdatesForTabGroupWithUUID:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v19);
      }

      v9 = v55;
      v13 = 0;
      v16 = v57;
    }

    if (v9)
    {
      v9[2](v9, v12);
    }

    if ((v6 & 2) == 0 && [(WBTabGroupManager *)self _needsInitialBlankTabInTabGroup:v12])
    {
      v24 = [v12 deviceIdentifier];
      v25 = [(WBTab *)WBMutableTab startPageTabWithDeviceIdentifier:v24];

      v86 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
      [v12 appendTabs:v26];

      v27 = [v25 uuid];
      [v12 setLastSelectedTabUUID:v27];
    }

    v28 = [v16 uuid];
    [(WBTabGroupManager *)self _cacheTabGroup:v12 creatorDeviceUUID:v28];

    [(WBTabGroupManager *)self _updatePositionsForTabsInTabGroup:v12];
    v29 = [v12 deletedTabs];
    [(WBTabGroupManager *)self _willFlushDeletedTabs:v29 inTabGroup:v12];
    if ([MEMORY[0x277D49A08] isInternalInstall])
    {
      v30 = [(WBTabGroupManager *)self _localTabGroups];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke;
      v76[3] = &unk_279E77BA8;
      v77 = v29;
      v78 = self;
      [v30 enumerateObjectsUsingBlock:v76];
    }

    os_unfair_lock_unlock(&tabGroupsLock);
    if (v13)
    {
      goto LABEL_58;
    }

    if (v58)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v31 = self->_cloudTabObservers;
      v32 = [(NSHashTable *)v31 countByEnumeratingWithState:&v72 objects:v85 count:16];
      if (!v32)
      {
LABEL_57:

        v13 = v56;
        v16 = v57;
LABEL_58:
        if (v6)
        {
          tabCollection = self->_tabCollection;
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_2;
          v60[3] = &unk_279E75D00;
          v61 = v12;
          v62 = self;
          v63 = v13 >> 2;
          [(WBTabCollection *)tabCollection updateTabsInTabGroup:v61 completionHandler:v60];
        }

        goto LABEL_61;
      }

      v33 = v32;
      v59 = v29;
      v34 = *v73;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v73 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v72 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v37 = [v12 profileIdentifier];
            [v36 cloudTabDeviceProvider:self didUpdateCloudTabsInProfileWithIdentifier:v37];
          }
        }

        v33 = [(NSHashTable *)v31 countByEnumeratingWithState:&v72 objects:v85 count:16];
      }

      while (v33);
    }

    else
    {
      v59 = v29;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      v68 = 0u;
      v39 = [(NSHashTable *)self->_observers copy];
      v40 = [v39 countByEnumeratingWithState:&v68 objects:v84 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v69;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v69 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v68 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              v45 = [v12 uuid];
              [v44 tabGroupManager:self didPerformBlockUpdatesForTabGroupWithUUID:v45];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v68 objects:v84 count:16];
        }

        while (v41);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v31 = [(NSHashTable *)self->_observers copy];
      v46 = [(NSHashTable *)v31 countByEnumeratingWithState:&v64 objects:v83 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v65;
        do
        {
          for (m = 0; m != v47; ++m)
          {
            if (*v65 != v48)
            {
              objc_enumerationMutation(v31);
            }

            v50 = *(*(&v64 + 1) + 8 * m);
            if (objc_opt_respondsToSelector())
            {
              v51 = [v12 uuid];
              [v50 tabGroupManager:self didUpdateTabsInTabGroupWithUUID:v51];
            }
          }

          v47 = [(NSHashTable *)v31 countByEnumeratingWithState:&v64 objects:v83 count:16];
        }

        while (v47);
      }
    }

    v9 = v55;
    v6 = v54;
    v29 = v59;
    goto LABEL_57;
  }

  v38 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    [WBTabGroupManager updateTabsInTabGroupWithUUID:options:usingBlock:];
  }

  os_unfair_lock_unlock(&tabGroupsLock);
LABEL_61:

  v53 = *MEMORY[0x277D85DE8];
}

void __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = [a2 tabs];
  if ([v15 count] > 1)
  {
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = [*(a1 + 32) count];

    if (v6 >= 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [*(*(a1 + 40) + 16) copy];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v12 tabGroupManagerDidDeletedAllLocalTabs:*(a1 + 40)];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      *a4 = 1;
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

void __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_3;
  block[3] = &unk_279E75D00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__WBTabGroupManager_updateTabsInTabGroupWithUUID_options_usingBlock___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isNamed] & 1) == 0)
  {
    v2 = [*(a1 + 32) deviceUUIDString];
    if (v2)
    {
      v3 = v2;
      v4 = [MEMORY[0x277D49A08] isSafariProfilesEnabled];

      if (v4)
      {
        [*(a1 + 40) _didModifyUnnamedTabGroup:*(a1 + 32)];
      }
    }
  }

  if ([*(a1 + 32) isSyncable] && (*(a1 + 48) & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [*(*(a1 + 40) + 16) copy];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 tabGroupManagerDidUpdateSyncableContent:*(a1 + 40)];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)flushDeletedTabsInTabGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&tabGroupsLock);
  v5 = [v4 deletedTabs];
  [(WBTabGroupManager *)self _willFlushDeletedTabs:v5 inTabGroup:v4];
  [(WBTabCollection *)self->_tabCollection flushDeletedTabsInTabGroup:v4 completionHandler:0];
}

- (void)_willFlushDeletedTabs:(id)a3 inTabGroup:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_assert_owner(&tabGroupsLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [(WBTabGroupManager *)self _uncacheTab:v11, v15];
        removedTabsByUUID = self->_removedTabsByUUID;
        v13 = [v11 uuid];
        [(NSMutableDictionary *)removedTabsByUUID setObject:v11 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerPinnedTab:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&tabGroupsLock);
  v5 = [v4 mutableCopy];
  localTabsByUUID = self->_localTabsByUUID;
  v7 = [v4 uuid];

  [(NSMutableDictionary *)localTabsByUUID setObject:v5 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&tabGroupsLock);
}

- (id)positionGenerator:(id)a3 positionForRecordName:(id)a4
{
  v4 = [(WBTabGroupManager *)self _tabWithUUID:a4];
  v5 = [v4 syncPosition];

  return v5;
}

- (id)positionGenerator:(id)a3 recordNameOfBookmarksBeforeRecordWithName:(id)a4
{
  v5 = [(WBTabGroupManager *)self _tabWithUUID:a4];
  v6 = [v5 tabGroupUUID];
  v7 = [(WBTabGroupManager *)self _tabGroupWithUUID:v6];

  v8 = [v7 tabs];
  v9 = [v8 safari_objectBefore:v5];
  v10 = [v9 uuid];

  return v10;
}

- (id)positionGenerator:(id)a3 recordNameOfBookmarksAfterRecordWithName:(id)a4
{
  v5 = [(WBTabGroupManager *)self _tabWithUUID:a4];
  v6 = [v5 tabGroupUUID];
  v7 = [(WBTabGroupManager *)self _tabGroupWithUUID:v6];

  v8 = [v7 tabs];
  v9 = [v8 safari_objectAfter:v5];
  v10 = [v9 uuid];

  return v10;
}

- (id)topScopedBookmarkListForTabGroup:(id)a3
{
  tabCollection = self->_tabCollection;
  v5 = a3;
  os_unfair_lock_lock(&tabGroupsLock);
  v6 = [v5 uuid];

  v7 = [(WBTabGroupManager *)self tabGroupWithUUID:v6];

  os_unfair_lock_unlock(&tabGroupsLock);
  v8 = [(WBTabCollection *)tabCollection topScopedBookmarkListForTabGroup:v7];

  return v8;
}

- (void)reorderScopedBookmarkWithUUID:(id)a3 afterBookmarkWithUUID:(id)a4 notify:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:a3];
  if (v9)
  {
    v10 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:v8];
    v11 = v10;
    if (!v8 || v10)
    {
      if (![(WBTabCollection *)self->_tabCollection reorderItem:v9 afterItem:v10])
      {
        v12 = WBS_LOG_CHANNEL_PREFIXTabGroup();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = [v9 identifier];
          if (v11)
          {
            v15 = [v11 identifier];
          }

          else
          {
            v15 = -1;
          }

          v16[0] = 67109376;
          v16[1] = v14;
          v17 = 1024;
          v18 = v15;
          _os_log_error_impl(&dword_272C20000, v12, OS_LOG_TYPE_ERROR, "Failed to reorder scoped bookmark(%d) behind anchor(%d).", v16, 0xEu);
        }
      }

      if (v5)
      {
        -[WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:](self, "_notifyScopedBookmarkChangesInFolderWithID:", [v9 parentID]);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateScopedBookmarkWithUUID:(id)a3 title:(id)a4 address:(id)a5 notify:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:a3];
  v13 = v12;
  if (v12)
  {
    [v12 setTitle:v10];
    [v13 setAddress:v11];
    if (![(WBTabCollection *)self->_tabCollection saveItem:v13])
    {
      v14 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [WBTabGroupManager updateScopedBookmarkWithUUID:v14 title:? address:? notify:?];
        if (!v6)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v6)
    {
LABEL_5:
      -[WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:](self, "_notifyScopedBookmarkChangesInFolderWithID:", [v13 parentID]);
    }
  }

LABEL_6:
}

- (void)deleteScopedBookmarkWithUUID:(id)a3 notify:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(WBTabCollection *)self->_tabCollection scopedBookmarkWithUUID:a3];
  v10 = v9;
  if (!v9)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  tabCollection = self->_tabCollection;
  v17[0] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v13 = [(WBTabCollection *)tabCollection deleteItems:v12 leaveTombstones:1];

  if (!v13)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    [WBTabGroupManager deleteScopedBookmarkWithUUID:v14 notify:? completionHandler:?];
    if (v8)
    {
LABEL_5:
      v8[2](v8, 0);
    }
  }

LABEL_6:
  if (v5)
  {
    -[WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:](self, "_notifyScopedBookmarkChangesInFolderWithID:", [v10 parentID]);
  }

  v15 = !v13;
  if (!v8)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
LABEL_11:
    v8[2](v8, 1);
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_notifyScopedBookmarkChangesInFolderWithID:(int)a3
{
  v4 = [(WBTabCollection *)self->_tabCollection scopedBookmarkListWithID:?];
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__WBTabGroupManager__notifyScopedBookmarkChangesInFolderWithID___block_invoke;
    v7[3] = &unk_279E753F0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager _notifyScopedBookmarkChangesInFolderWithID:];
    }
  }
}

void __64__WBTabGroupManager__notifyScopedBookmarkChangesInFolderWithID___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManager:*(a1 + 32) didUpdateScopedBookmarkList:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(*(a1 + 32) + 16) copy];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 tabGroupManagerDidUpdateSyncableContent:*(a1 + 32)];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)shareRecordForTabGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 isSyncable])
  {
    v6 = [(WBTabCollection *)self->_tabCollection shareRecordForTabGroup:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)acceptTabGroupShareWithMetadata:(id)a3 handler:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 safari_supportsSharedTabGroups])
  {
    v8 = [v6 share];
    v9 = [v8 recordID];
    [(WBSPair *)self->_currentShareAcceptancePair second];
    v11 = v10 = self;
    v12 = [v11 share];
    v13 = [v12 recordID];
    v14 = [v9 isEqual:v13];

    v51 = v10;
    if (v14)
    {
      v15 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v49 = [v8 recordID];
        v47 = [v49 zoneID];
        v17 = [v47 ckShortDescription];
        v18 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
        v19 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
        v20 = [v6 ownerIdentity];
        v21 = [v20 safari_handle];
        *buf = 138544131;
        v58 = v17;
        v59 = 2114;
        v60 = v18;
        v61 = 2117;
        v62 = v19;
        v63 = 2117;
        v64 = v21;
        _os_log_impl(&dword_272C20000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring accept CloudKit share metadata because it is already being processed, with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
      }

      [(WBTabGroupManager *)v10 _sendAcceptanceResult:1 forShareMetadata:v6 toHandler:v7];
    }

    else
    {
      v48 = v7;
      v50 = v6;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v22 = v10->_pendingShareAcceptancePairQueue;
      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v53;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v53 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v52 + 1) + 8 * i);
            v28 = [v8 recordID];
            v29 = [v27 second];
            v30 = [v29 share];
            v31 = [v30 recordID];
            v32 = [v28 isEqual:v31];

            if (v32)
            {
              v37 = WBS_LOG_CHANNEL_PREFIXTabGroup();
              v6 = v50;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v37;
                v39 = [v8 recordID];
                v46 = [v39 zoneID];
                v40 = [v46 ckShortDescription];
                v41 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
                v42 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
                v43 = [v50 ownerIdentity];
                v44 = [v43 safari_handle];
                *buf = 138544131;
                v58 = v40;
                v59 = 2114;
                v60 = v41;
                v61 = 2117;
                v62 = v42;
                v63 = 2117;
                v64 = v44;
                _os_log_impl(&dword_272C20000, v38, OS_LOG_TYPE_DEFAULT, "Ignoring accept CloudKit share metadata because it is already pending processing, with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
              }

              v7 = v48;
              [(WBTabGroupManager *)v51 _sendAcceptanceResult:1 forShareMetadata:v50 toHandler:v48];

              goto LABEL_21;
            }
          }

          v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      pendingShareAcceptancePairQueue = v51->_pendingShareAcceptancePairQueue;
      if (!pendingShareAcceptancePairQueue)
      {
        v34 = [MEMORY[0x277CBEB18] array];
        v35 = v51->_pendingShareAcceptancePairQueue;
        v51->_pendingShareAcceptancePairQueue = v34;

        pendingShareAcceptancePairQueue = v51->_pendingShareAcceptancePairQueue;
      }

      v7 = v48;
      v6 = v50;
      v36 = [objc_alloc(MEMORY[0x277D49A80]) initWithFirst:v48 second:v50];
      [(NSMutableArray *)pendingShareAcceptancePairQueue addObject:v36];

      [(WBTabGroupManager *)v51 _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
    }

LABEL_21:
  }

  else
  {
    [(WBTabGroupManager *)self _sendAcceptanceResult:3 forShareMetadata:v6 toHandler:v7];
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_dequeueNextAcceptCloudKitShareMetadataIfNeeded
{
  v52 = *MEMORY[0x277D85DE8];
  p_currentShareAcceptancePair = &self->_currentShareAcceptancePair;
  if (!self->_currentShareAcceptancePair)
  {
    v4 = [(NSMutableArray *)self->_pendingShareAcceptancePairQueue firstObject];
    if (v4)
    {
      [(NSMutableArray *)self->_pendingShareAcceptancePairQueue removeObjectAtIndex:0];
      objc_storeStrong(p_currentShareAcceptancePair, v4);
      v5 = [v4 second];
      v6 = [v5 share];
      v7 = [(WBTabGroupManager *)self tabGroupMatchingShare:v6];

      v8 = WBS_LOG_CHANNEL_PREFIXTabGroup();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          log = v8;
          v33 = [v6 recordID];
          v31 = [v33 zoneID];
          [v31 ckShortDescription];
          v11 = v10 = v6;
          v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
          v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
          v14 = [v5 ownerIdentity];
          v15 = [v14 safari_handle];
          *buf = 138544131;
          v45 = v11;
          v46 = 2114;
          v47 = v12;
          v48 = 2117;
          v49 = v13;
          v50 = 2117;
          v51 = v15;
          _os_log_impl(&dword_272C20000, log, OS_LOG_TYPE_DEFAULT, "Ignoring accept CloudKit share metadata because it was already accepted, with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);

          v6 = v10;
        }

        v16 = [v4 first];
        [(WBTabGroupManager *)self _sendAcceptanceResult:2 forShareMetadata:v5 toHandler:v16];

        currentShareAcceptancePair = self->_currentShareAcceptancePair;
        self->_currentShareAcceptancePair = 0;

        [(WBTabGroupManager *)self _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
      }

      else
      {
        if (v9)
        {
          loga = v8;
          v34 = [v6 recordID];
          v32 = [v34 zoneID];
          v18 = [v32 ckShortDescription];
          v19 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
          v20 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
          v21 = [v5 ownerIdentity];
          v22 = [v21 safari_handle];
          *buf = 138544131;
          v45 = v18;
          v46 = 2114;
          v47 = v19;
          v48 = 2117;
          v49 = v20;
          v50 = 2117;
          v51 = v22;
          _os_log_impl(&dword_272C20000, loga, OS_LOG_TYPE_DEFAULT, "Will accept CloudKit Share metadata with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
        }

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke;
        v40[3] = &unk_279E77BD0;
        v23 = v5;
        v41 = v23;
        v42 = self;
        v24 = v4;
        v43 = v24;
        v25 = MEMORY[0x2743D6830](v40);
        v26 = [v24 first];
        v27 = [(WBTabGroupManager *)self profiles];
        if ([v27 count] >= 2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke_148;
          v35[3] = &unk_279E77BF8;
          v35[4] = self;
          v36 = v6;
          v37 = v26;
          v38 = v23;
          v39 = v25;
          [v37 tabGroupManager:self selectProfileIdentifierForShareMetadata:v38 completionHandler:v35];
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            [v26 tabGroupManager:self didBeginAcceptingTabGroupShareWithMetadata:v23];
          }

          [(WBTabGroupManager *)self _userDidAcceptTabGroupShareWithMetadata:v23 inProfileWithIdentifier:*MEMORY[0x277D49BD8] completionHandler:v25];
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke(id *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v23 = v8;
      v32 = [v5 recordID];
      v30 = [v32 zoneID];
      v24 = [v30 ckShortDescription];
      v25 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
      v26 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
      v27 = [a1[4] ownerIdentity];
      v28 = [v27 safari_handle];
      v29 = [v6 safari_privacyPreservingError];
      *buf = 138544387;
      v34 = v24;
      v35 = 2114;
      v36 = v25;
      v37 = 2117;
      v38 = v26;
      v39 = 2117;
      v40 = v28;
      v41 = 2114;
      v42 = v29;
      _os_log_error_impl(&dword_272C20000, v23, OS_LOG_TYPE_ERROR, "Did fail to accept CloudKit Share metadata with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@, error: %{public}@", buf, 0x34u);
    }

    v9 = 4;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      v31 = [v5 recordID];
      v11 = [v31 zoneID];
      v12 = [v11 ckShortDescription];
      v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC0A0]];
      v14 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBC098]];
      v15 = [a1[4] ownerIdentity];
      v16 = [v15 safari_handle];
      *buf = 138544131;
      v34 = v12;
      v35 = 2114;
      v36 = v13;
      v37 = 2117;
      v38 = v14;
      v39 = 2117;
      v40 = v16;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_DEFAULT, "Did accept CloudKit Share metadata with zone %{public}@, type: %{public}@, title: %{sensitive}@, owner: %{sensitive}@", buf, 0x2Au);
    }

    v9 = 0;
  }

  v18 = a1[4];
  v17 = a1[5];
  v19 = [a1[6] first];
  [v17 _sendAcceptanceResult:v9 forShareMetadata:v18 toHandler:v19];

  v20 = a1[5];
  v21 = v20[22];
  v20[22] = 0;

  [a1[5] _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
  v22 = *MEMORY[0x277D85DE8];
}

void __68__WBTabGroupManager__dequeueNextAcceptCloudKitShareMetadataIfNeeded__block_invoke_148(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = v4;
      v8 = [v6 recordID];
      v9 = [v8 zoneID];
      v10 = [v9 ckShortDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Will accept tab group share with zone %{public}@, in profile with UUID: %{public}@", &v15, 0x16u);
    }

    v11 = *(a1 + 48);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) tabGroupManager:*(a1 + 32) didBeginAcceptingTabGroupShareWithMetadata:*(a1 + 56)];
    }

    [*(a1 + 32) _userDidAcceptTabGroupShareWithMetadata:*(a1 + 56) inProfileWithIdentifier:v3 completionHandler:*(a1 + 64)];
  }

  else
  {
    if (v5)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "Did cancel accepting tab group share by cancelling profile selection", &v15, 2u);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 176);
    *(v12 + 176) = 0;

    [*(a1 + 32) _dequeueNextAcceptCloudKitShareMetadataIfNeeded];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sendAcceptanceResult:(int64_t)a3 forShareMetadata:(id)a4 toHandler:(id)a5
{
  v9 = a4;
  v8 = a5;
  if (objc_opt_respondsToSelector())
  {
    [v8 tabGroupManager:self didFinishAcceptingTabGroupShareWithMetadata:v9 result:a3];
  }
}

- (void)_userDidAcceptTabGroupShareWithMetadata:(id)a3 inProfileWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_279E77C48;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = a4;
  v13 = MEMORY[0x2743D6830](v14);
  [(WBTabGroupSyncAgentProtocol *)self->_syncAgentProxy userDidAcceptTabGroupShareWithMetadata:v11 inProfileWithIdentifier:v12 completionHandler:v13];
}

void __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2;
  block[3] = &unk_279E77C20;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v6;
  v16 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(*(a1 + 40) + 248);
    v5 = [v2 recordID];
    v6 = [v5 zoneID];
    v7 = [v6 safari_tabGroupRootRecordName];
    v8 = [v4 tabGroupUUIDForServerID:v7];

    v9 = [v8 length];
    v10 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v3;
        v13 = v11;
        v14 = [v12 recordID];
        v15 = [v14 zoneID];
        v16 = [v15 ckShortDescription];
        v22 = 138543618;
        v23 = v16;
        v24 = 2114;
        v25 = v8;
        _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_DEFAULT, "Did successfully join share %{public}@ with tab group UUID: %{public}@", &v22, 0x16u);
      }

      [*(a1 + 40) _didReceiveShare:*(a1 + 32) forTabGroupUUID:v8];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_1(v3, v11);
    }
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_2(a1, v17);
    }
  }

  v18 = *(a1 + 32);
  v19 = *(a1 + 56);
  result = (*(*(a1 + 64) + 16))();
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)beginSharingTabGroupWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  syncAgentProxy = self->_syncAgentProxy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke;
  v11[3] = &unk_279E77C48;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(WBTabGroupSyncAgentProtocol *)syncAgentProxy beginSharingTabGroupWithUUID:v10 completionHandler:v11];
}

void __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2;
  block[3] = &unk_279E77C20;
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = v4;
      v8 = [v5 recordID];
      v9 = [v8 zoneID];
      v10 = [v9 ckShortDescription];
      v15 = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Did successfully begin sharing tab group with UUID: %{public}@, share: %{public}@", &v15, 0x16u);
    }

    [*(a1 + 48) _didReceiveShare:*(a1 + 32) forTabGroupUUID:*(a1 + 40)];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2_cold_1(a1, v4);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  result = (*(*(a1 + 64) + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)tabGroupMatchingShare:(id)a3
{
  tabCollection = self->_tabCollection;
  v5 = a3;
  v6 = [(WBTabGroupManager *)self allNamedTabGroupsUnsorted];
  v7 = [(WBTabCollection *)tabCollection tabGroupMatchingShare:v5 inTabGroups:v6];

  return v7;
}

- (void)getActiveParticipantsInTabGroup:(id)a3 completionHandler:(id)a4
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    presenceCoordinator = self->_presenceCoordinator;
    v7 = a4;
    v12 = [a3 bookmark];
    v8 = [v12 serverID];
    [(WBParticipantPresenceCoordinator *)presenceCoordinator getActiveParticipantsInTabGroupWithIdentifier:v8 completionHandler:v7];
  }

  else
  {
    v9 = MEMORY[0x277CBEB98];
    tabCollection = self->_tabCollection;
    v11 = a4;
    v12 = [(WBTabCollection *)tabCollection activeParticipantsInTabGroup:a3];
    v8 = [v9 setWithArray:?];
    (*(a4 + 2))(v11, v8);
  }
}

- (void)getActiveParticipantsInTab:(id)a3 completionHandler:(id)a4
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    presenceCoordinator = self->_presenceCoordinator;
    v6 = a4;
    v9 = [a3 bookmark];
    v7 = [v9 serverID];
    [(WBParticipantPresenceCoordinator *)presenceCoordinator getActiveParticipantsInTabWithIdentifier:v7 completionHandler:v6];
  }

  else
  {
    tabCollection = self->_tabCollection;
    v9 = a4;
    [(WBTabCollection *)tabCollection getActiveParticipantsInTab:a3 completionHandler:?];
  }
}

- (void)getPresenceTabUUIDForParticipantIdentifier:(id)a3 inTabGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    presenceCoordinator = self->_presenceCoordinator;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__WBTabGroupManager_getPresenceTabUUIDForParticipantIdentifier_inTabGroup_completionHandler___block_invoke;
    v12[3] = &unk_279E77C70;
    v13 = v8;
    v14 = self;
    v15 = v9;
    [(WBParticipantPresenceCoordinator *)presenceCoordinator getCurrentLocationIdentifiersForParticipantIdentifier:a3 completionHandler:v12];
  }

  else
  {
    v11 = [(WBTabCollection *)self->_tabCollection presenceTabUUIDForParticipantIdentifier:a3 inTabGroup:v8];
    (*(v9 + 2))(v9, v11);
  }
}

void __93__WBTabGroupManager_getPresenceTabUUIDForParticipantIdentifier_inTabGroup_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 bookmark];
  v8 = [v7 serverID];
  v9 = WBSIsEqual();

  v10 = a1[6];
  if (v9)
  {
    v11 = [*(a1[5] + 248) tabUUIDForServerID:v12];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(a1[6], 0);
  }
}

- (void)movePresenceForParticipantToTabWithUUID:(id)a3
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    [(WBTabGroupManager *)self _movePresenceForParticipantToTabWithUUID:a3];
  }

  else
  {
    [(WBTabGroupSyncAgentProtocol *)self->_syncAgentProxy movePresenceForParticipantToTabWithUUID:a3];
  }
}

- (id)_unsafeTabGroupUUIDsToCKShares
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    os_unfair_lock_assert_owner(&tabGroupsLock);
    v4 = [(NSMutableDictionary *)self->_syncableTabGroupsByUUID safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_155];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

id __51__WBTabGroupManager__unsafeTabGroupUUIDsToCKShares__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v5 isNamed])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__8;
    v14 = __Block_byref_object_dispose__8;
    v15 = 0;
    v6 = [v5 bookmark];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__WBTabGroupManager__unsafeTabGroupUUIDsToCKShares__block_invoke_2;
    v9[3] = &unk_279E77CB8;
    v9[4] = &v10;
    [v6 getReadOnlyCachedBookmarkSyncDataUsingBlock:v9];

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __51__WBTabGroupManager__unsafeTabGroupUUIDsToCKShares__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 shareRecord];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_updateTabGroupShares:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v4 = [a3 copy];
    tabGroupUUIDsToCKShares = self->_tabGroupUUIDsToCKShares;
    self->_tabGroupUUIDsToCKShares = v4;

    if ([(WBTabGroupManager *)self hasSharedTabGroups])
    {
      [(WBTabGroupManager *)self _beginDevicePresenceReportingIfNeeded];
      [(WBTabCollection *)self->_tabCollection setHasSharedTabGroupsWithCompletionHandler:0];
    }

    else
    {
      [(WBTabGroupManager *)self _endDevicePresenceReportingIfNeeded];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare allKeys];
    v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = [(NSDictionary *)self->_tabGroupUUIDsToCKShares objectForKeyedSubscript:v10];
          if (v11)
          {
            v12 = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:v10];
            v13 = [v12 recordChangeTag];
            v14 = [v11 recordChangeTag];
            v15 = [v13 isEqualToString:v14];

            if ((v15 & 1) == 0)
            {
              [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v11 forKeyedSubscript:v10];
              [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator shareDidUpdate:v11];
            }
          }

          else
          {
            presenceCoordinator = self->_presenceCoordinator;
            v17 = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:v10];
            [(WBParticipantPresenceCoordinator *)presenceCoordinator endCollaborationForShare:v17];

            [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:0 forKeyedSubscript:v10];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v18 = self->_tabGroupUUIDsToCKShares;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__WBTabGroupManager__updateTabGroupShares___block_invoke;
    v21[3] = &unk_279E77CE0;
    v21[4] = self;
    [(NSDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v21];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __43__WBTabGroupManager__updateTabGroupShares___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 232) objectForKeyedSubscript:v11];

  if (!v6)
  {
    if ([*(*(a1 + 32) + 208) containsObject:v11])
    {
      [*(*(a1 + 32) + 232) setObject:v5 forKeyedSubscript:v11];
      [*(*(a1 + 32) + 192) beginCollaborationForShare:v5];
      v7 = [*(*(a1 + 32) + 216) first];
      v8 = [v7 isEqualToString:v11];

      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = [v9[27] second];
        [v9 _movePresenceForParticipantToTabWithUUID:v10];
      }
    }
  }
}

- (void)_didReceiveShare:(id)a3 forTabGroupUUID:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && self->_enableSharedTabGroupsFastSyncPresence)
  {
    v8 = [(NSDictionary *)self->_tabGroupUUIDsToCKShares objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 recordChangeTag];
      v11 = [v6 recordChangeTag];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v6 forKeyedSubscript:v7];
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator shareDidUpdate:v6];
      }
    }

    else
    {
      tabGroupUUIDsToCKShares = self->_tabGroupUUIDsToCKShares;
      v21 = v7;
      v22[0] = v6;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v15 = [(NSDictionary *)tabGroupUUIDsToCKShares safari_dictionaryByMergingWithDictionary:v14];
      v16 = self->_tabGroupUUIDsToCKShares;
      self->_tabGroupUUIDsToCKShares = v15;

      if ([(NSCountedSet *)self->_activeTabGroupUUIDs containsObject:v7])
      {
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v6 forKeyedSubscript:v7];
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator beginCollaborationForShare:v6];
        v17 = [(WBSPair *)self->_activeTabGroupAndTabUUIDPair first];
        v18 = [v17 isEqualToString:v7];

        if (v18)
        {
          v19 = [(WBSPair *)self->_activeTabGroupAndTabUUIDPair second];
          [(WBTabGroupManager *)self _movePresenceForParticipantToTabWithUUID:v19];
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_movePresenceForParticipantToTabWithUUID:(id)a3
{
  v4 = a3;
  v19 = [(WBTabGroupManager *)self tabWithUUID:v4];
  v5 = [v19 tabGroupUUID];
  v6 = [(WBTabGroupManager *)self tabGroupWithUUID:v5];

  v7 = objc_alloc(MEMORY[0x277D49A80]);
  v8 = [v19 tabGroupUUID];
  v9 = [v7 initWithFirst:v8 second:v4];

  activeTabGroupAndTabUUIDPair = self->_activeTabGroupAndTabUUIDPair;
  self->_activeTabGroupAndTabUUIDPair = v9;

  tabGroupUUIDsToCKShares = self->_tabGroupUUIDsToCKShares;
  v12 = [v19 tabGroupUUID];
  v13 = [(NSDictionary *)tabGroupUUIDsToCKShares objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [v6 bookmark];
    v13 = [v14 serverID];

    v15 = [v19 bookmark];
    v16 = [v15 serverID];
  }

  else
  {
    v16 = 0;
  }

  presenceCoordinator = self->_presenceCoordinator;
  v18 = [(WBTabGroupManager *)self deviceIdentifier];
  [(WBParticipantPresenceCoordinator *)presenceCoordinator moveCurrentParticipantToTabIdentifier:v16 inTabGroupIdentifier:v13 withDeviceIdentifier:v18];
}

- (void)beginParticipantPresenceReportingForTabGroupWithUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v8 = v4;
    v6 = [(WBTabGroupManager *)self tabGroupWithUUID:v4];
    if (v6)
    {
      [(NSCountedSet *)self->_activeTabGroupUUIDs addObject:v8];
      v7 = [(WBTabGroupManager *)self _shareRecordIfNeededToBeginCollaborationForTabGroup:v6];
      if (v7)
      {
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v7 forKeyedSubscript:v8];
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator beginCollaborationForShare:v7];
      }
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)_shareRecordIfNeededToBeginCollaborationForTabGroup:(id)a3
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v4 = [a3 uuid];
    if ([(NSCountedSet *)self->_activeTabGroupUUIDs containsObject:v4]&& ([(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v6 = [(NSDictionary *)self->_tabGroupUUIDsToCKShares objectForKeyedSubscript:v4];
      [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:v6 forKeyedSubscript:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)endParticipantPresenceReportingForTabGroupWithUUID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v8 = v4;
    v6 = [(WBTabGroupManager *)self tabGroupWithUUID:v4];
    if (v6)
    {
      [(NSCountedSet *)self->_activeTabGroupUUIDs removeObject:v8];
      v7 = [(WBTabGroupManager *)self _shareRecordIfNeededToEndCollaborationForTabGroup:v6];
      if (v7)
      {
        [(WBParticipantPresenceCoordinator *)self->_presenceCoordinator endCollaborationForShare:v7];
        [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare setObject:0 forKeyedSubscript:v8];
      }
    }

    v5 = v8;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (id)_shareRecordIfNeededToEndCollaborationForTabGroup:(id)a3
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v4 = [a3 uuid];
    v5 = [(NSMutableDictionary *)self->_broadcastingTabGroupUUIDsToCKShare objectForKeyedSubscript:v4];
    if (v5 && ([(NSCountedSet *)self->_activeTabGroupUUIDs containsObject:v4]& 1) == 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)disableDevicePresenceReporting
{
  --self->_numberOfDevicePresenceReportingRequests;
  [(WBTabGroupManager *)self _endDevicePresenceReportingIfNeeded];
  v2 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_DEFAULT, "Did end device presence reporting", v3, 2u);
  }
}

- (void)participantPresenceCoordinator:(id)a3 didUpdateActiveParticipants:(id)a4 inTabGroupWithIdentifier:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(WBTabCollection *)self->_tabCollection tabGroupUUIDForServerID:a5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSHashTable *)self->_observers copy];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 tabGroupManager:self didUpadateActiveParticipants:v7 inTabGroupWithUUID:v8];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)participantPresenceCoordinator:(id)a3 didUpdateActiveParticipants:(id)a4 inTabWithIdentifier:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(WBTabCollection *)self->_tabCollection tabUUIDForServerID:a5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NSHashTable *)self->_observers copy];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 tabGroupManager:self didUpadateActiveParticipants:v7 inTabWithUUID:v8];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)shareDidUpdateForTabGroupWithUUID:(id)a3
{
  if (self->_enableSharedTabGroupsFastSyncPresence)
  {
    v5 = a3;
    v7 = [(WBTabGroupManager *)self tabGroupWithUUID:v5];
    v6 = [(WBTabGroupManager *)self shareRecordForTabGroup:v7];
    [(WBTabGroupManager *)self _didReceiveShare:v6 forTabGroupUUID:v5];
  }
}

- (void)activeParticipantsDidUpdateInTabGroupWithUUID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_enableSharedTabGroupsFastSyncPresence)
  {
    tabCollection = self->_tabCollection;
    v6 = [(WBTabGroupManager *)self tabGroupWithUUID:v4];
    v7 = [(WBTabCollection *)tabCollection activeParticipantsInTabGroup:v6];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(NSHashTable *)self->_observers copy];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            v14 = [MEMORY[0x277CBEB98] setWithArray:v7];
            [v13 tabGroupManager:self didUpadateActiveParticipants:v14 inTabGroupWithUUID:v4];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)activeParticipantsDidUpdateInTabWithUUID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_enableSharedTabGroupsFastSyncPresence)
  {
    tabCollection = self->_tabCollection;
    v6 = [(WBTabGroupManager *)self tabWithUUID:v4];
    v7 = [(WBTabCollection *)tabCollection activeParticipantsInTab:v6];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(NSHashTable *)self->_observers copy];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 tabGroupManager:self didUpadateActiveParticipants:v7 inTabWithUUID:v4];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_tabGroupSyncDidFinish:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Tab group sync did finish", buf, 2u);
  }

  v6 = [v4 userInfo];
  v7 = [v6 safari_numberForKey:@"syncResult"];

  v8 = [v7 integerValue];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(WBTabGroupManager *)self syncDidFinishWithResult:0];
  }

  else
  {
    v10 = v8;
    v18 = v4;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 tabGroupManager:self didReloadAferSyncWithResult:v10];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    v4 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)syncDidFinishWithResult:(int64_t)a3
{
  if (!a3)
  {
    v6[6] = v3;
    v6[7] = v4;
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke;
    v6[3] = &unk_279E75C10;
    v6[4] = self;
    v6[5] = 0;
    dispatch_async(internalQueue, v6);
  }
}

void __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&reloadAfterSyncLock);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke_2;
  v3[3] = &unk_279E75C10;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v2;
  [v4 _reloadProfilesAndTabGroupsAndNotify:1 withCompletionHandler:v3];
  [*(a1 + 32) _notifySyncDidFinishedForScopedBookmarks];
  os_unfair_lock_unlock(&reloadAfterSyncLock);
}

void __45__WBTabGroupManager_syncDidFinishWithResult___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 16) copy];
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManager:*(a1 + 32) didReloadAferSyncWithResult:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_notifySyncDidFinishedForScopedBookmarks
{
  v3 = [(WBTabGroupManager *)self allSyncedTabGroupsExceptRemoteUnnamedTabGroups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke;
  v8[3] = &unk_279E77D08;
  v8[4] = self;
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:v8];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke_2;
  block[3] = &unk_279E753F0;
  block[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isNamed])
  {
    v4 = [*(a1 + 32) topScopedBookmarkListForTabGroup:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __61__WBTabGroupManager__notifySyncDidFinishedForScopedBookmarks__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 tabGroupManager:*(a1 + 32) didFinishSyncForScopedBookmarkLists:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reloadTabGroupsFromDatabaseWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Reloading tab groups from database", v7, 2u);
  }

  if (self->_tabCollection)
  {
    [(WBTabGroupManager *)self _reloadProfilesAndTabGroupsAndNotify:1 withCompletionHandler:v4];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBTabGroupManager reloadTabGroupsFromDatabaseWithCompletionHandler:];
    }
  }
}

- (void)_didRemoveProfiles:(id)a3 updateProfiles:(id)a4 previousProfiles:(id)a5 removeTabGroups:(id)a6 updateTabGroups:(id)a7 previousTabGroups:(id)a8
{
  v203 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v104 = a4;
  v95 = a5;
  v100 = a6;
  v102 = a7;
  v118 = [(NSHashTable *)self->_observers copy];
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  obj = v13;
  v114 = [obj countByEnumeratingWithState:&v185 objects:v202 count:16];
  if (v114)
  {
    v110 = *v186;
    do
    {
      v14 = 0;
      do
      {
        if (*v186 != v110)
        {
          objc_enumerationMutation(obj);
        }

        v119 = v14;
        v15 = *(*(&v185 + 1) + 8 * v14);
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v16 = v118;
        v17 = [v16 countByEnumeratingWithState:&v181 objects:v201 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v182;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v182 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v181 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                v22 = [v15 identifier];
                [v21 tabGroupManager:self didRemoveProfileWithIdentifier:v22];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v181 objects:v201 count:16];
          }

          while (v18);
        }

        [(WBSProfileDataManager *)self->_profileDataManager didRemoveProfile:v15];
        v176[0] = MEMORY[0x277D85DD0];
        v176[1] = 3221225472;
        v177 = __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke;
        v178 = &unk_279E753F0;
        v179 = self;
        v180 = v15;
        os_unfair_lock_lock(&profilesLock);
        v177(v176);
        os_unfair_lock_unlock(&profilesLock);
        v14 = v119 + 1;
      }

      while ((v119 + 1) != v114);
      v114 = [obj countByEnumeratingWithState:&v185 objects:v202 count:16];
    }

    while (v114);
  }

  v23 = [v104 allObjects];
  v24 = [v95 differenceFromArray:v23 withOptions:4];

  v94 = v24;
  if ([v24 hasChanges])
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v25 = v118;
    v26 = [v25 countByEnumeratingWithState:&v172 objects:v200 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v173;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v173 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v172 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v30 tabGroupManagerDidUpdateProfiles:self];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v172 objects:v200 count:16];
      }

      while (v27);
    }
  }

  v31 = MEMORY[0x277CBEAC0];
  v32 = [v95 valueForKey:@"identifier"];
  v107 = [v31 dictionaryWithObjects:v95 forKeys:v32];

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v98 = v104;
  v108 = [v98 countByEnumeratingWithState:&v168 objects:v199 count:16];
  if (v108)
  {
    v105 = *v169;
    do
    {
      v33 = 0;
      do
      {
        if (*v169 != v105)
        {
          objc_enumerationMutation(v98);
        }

        v111 = v33;
        v120 = *(*(&v168 + 1) + 8 * v33);
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v115 = v118;
        v34 = [v115 countByEnumeratingWithState:&v164 objects:v198 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v165;
          do
          {
            for (k = 0; k != v35; ++k)
            {
              if (*v165 != v36)
              {
                objc_enumerationMutation(v115);
              }

              v38 = *(*(&v164 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                v39 = [v120 identifier];
                v40 = [v120 identifier];
                v41 = [v107 objectForKeyedSubscript:v40];
                v42 = [v120 differenceFromProfile:v41];
                [v38 tabGroupManager:self didUpdateProfileWithIdentifier:v39 difference:v42];
              }
            }

            v35 = [v115 countByEnumeratingWithState:&v164 objects:v198 count:16];
          }

          while (v35);
        }

        v162 = 0u;
        v163 = 0u;
        v160 = 0u;
        v161 = 0u;
        v43 = self->_cloudTabObservers;
        v44 = [(NSHashTable *)v43 countByEnumeratingWithState:&v160 objects:v197 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v161;
          do
          {
            for (m = 0; m != v45; ++m)
            {
              if (*v161 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v160 + 1) + 8 * m);
              if (objc_opt_respondsToSelector())
              {
                v49 = [v120 identifier];
                [v48 cloudTabDeviceProvider:self didUpdateCloudTabsInProfileWithIdentifier:v49];
              }
            }

            v45 = [(NSHashTable *)v43 countByEnumeratingWithState:&v160 objects:v197 count:16];
          }

          while (v45);
        }

        v33 = v111 + 1;
      }

      while ((v111 + 1) != v108);
      v108 = [v98 countByEnumeratingWithState:&v168 objects:v199 count:16];
    }

    while (v108);
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v97 = v100;
  v116 = [v97 countByEnumeratingWithState:&v156 objects:v196 count:16];
  if (v116)
  {
    v112 = *v157;
    do
    {
      v50 = 0;
      do
      {
        if (*v157 != v112)
        {
          objc_enumerationMutation(v97);
        }

        v121 = v50;
        v51 = *(*(&v156 + 1) + 8 * v50);
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v52 = v118;
        v53 = [v52 countByEnumeratingWithState:&v152 objects:v195 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v153;
          do
          {
            for (n = 0; n != v54; ++n)
            {
              if (*v153 != v55)
              {
                objc_enumerationMutation(v52);
              }

              v57 = *(*(&v152 + 1) + 8 * n);
              if (objc_opt_respondsToSelector())
              {
                v58 = [v51 uuid];
                [v57 tabGroupManager:self didRemoveTabGroupWithUUID:v58];
              }
            }

            v54 = [v52 countByEnumeratingWithState:&v152 objects:v195 count:16];
          }

          while (v54);
        }

        v147[0] = MEMORY[0x277D85DD0];
        v147[1] = 3221225472;
        v148 = __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke_2;
        v149 = &unk_279E753F0;
        v150 = self;
        v151 = v51;
        os_unfair_lock_lock(&tabGroupsLock);
        v148(v147);
        os_unfair_lock_unlock(&tabGroupsLock);
        v50 = v121 + 1;
      }

      while ((v121 + 1) != v116);
      v116 = [v97 countByEnumeratingWithState:&v156 objects:v196 count:16];
    }

    while (v116);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v96 = v102;
  v103 = [v96 countByEnumeratingWithState:&v143 objects:v194 count:16];
  if (v103)
  {
    v101 = *v144;
    do
    {
      v59 = 0;
      do
      {
        if (*v144 != v101)
        {
          objc_enumerationMutation(v96);
        }

        v106 = v59;
        v60 = *(*(&v143 + 1) + 8 * v59);
        os_unfair_lock_lock(&tabGroupsLock);
        v117 = v60;
        v61 = [v60 uuid];
        v62 = [(WBTabGroupManager *)self _tabGroupWithUUID:v61];
        v63 = [v62 tabs];

        os_unfair_lock_unlock(&tabGroupsLock);
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v109 = v63;
        v122 = [v109 countByEnumeratingWithState:&v139 objects:v193 count:16];
        if (v122)
        {
          v113 = *v140;
          do
          {
            for (ii = 0; ii != v122; ++ii)
            {
              if (*v140 != v113)
              {
                objc_enumerationMutation(v109);
              }

              v65 = *(*(&v139 + 1) + 8 * ii);
              v135 = 0u;
              v136 = 0u;
              v137 = 0u;
              v138 = 0u;
              v66 = v118;
              v67 = [v66 countByEnumeratingWithState:&v135 objects:v192 count:16];
              if (v67)
              {
                v68 = v67;
                v69 = *v136;
                do
                {
                  for (jj = 0; jj != v68; ++jj)
                  {
                    if (*v136 != v69)
                    {
                      objc_enumerationMutation(v66);
                    }

                    v71 = *(*(&v135 + 1) + 8 * jj);
                    if (objc_opt_respondsToSelector())
                    {
                      v72 = [v65 uuid];
                      [v71 tabGroupManager:self didUpdateTabWithUUID:v72 userDriven:0];
                    }
                  }

                  v68 = [v66 countByEnumeratingWithState:&v135 objects:v192 count:16];
                }

                while (v68);
              }
            }

            v122 = [v109 countByEnumeratingWithState:&v139 objects:v193 count:16];
          }

          while (v122);
        }

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v73 = v118;
        v74 = [v73 countByEnumeratingWithState:&v131 objects:v191 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v132;
          do
          {
            for (kk = 0; kk != v75; ++kk)
            {
              if (*v132 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v78 = *(*(&v131 + 1) + 8 * kk);
              if (objc_opt_respondsToSelector())
              {
                v79 = [v117 uuid];
                [v78 tabGroupManager:self didUpdateTabsInTabGroupWithUUID:v79];
              }
            }

            v75 = [v73 countByEnumeratingWithState:&v131 objects:v191 count:16];
          }

          while (v75);
        }

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v80 = v73;
        v81 = [v80 countByEnumeratingWithState:&v127 objects:v190 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v128;
          do
          {
            for (mm = 0; mm != v82; ++mm)
            {
              if (*v128 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v127 + 1) + 8 * mm);
              if (objc_opt_respondsToSelector())
              {
                v86 = [v117 uuid];
                [v85 tabGroupManager:self didUpdateTabGroupWithUUID:v86];
              }
            }

            v82 = [v80 countByEnumeratingWithState:&v127 objects:v190 count:16];
          }

          while (v82);
        }

        v59 = v106 + 1;
      }

      while (v106 + 1 != v103);
      v103 = [v96 countByEnumeratingWithState:&v143 objects:v194 count:16];
    }

    while (v103);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v87 = v118;
  v88 = [v87 countByEnumeratingWithState:&v123 objects:v189 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v124;
    do
    {
      for (nn = 0; nn != v89; ++nn)
      {
        if (*v124 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v123 + 1) + 8 * nn);
        if (objc_opt_respondsToSelector())
        {
          [v92 tabGroupManagerDidUpdateTabGroups:self];
        }
      }

      v89 = [v87 countByEnumeratingWithState:&v123 objects:v189 count:16];
    }

    while (v89);
  }

  v93 = *MEMORY[0x277D85DE8];
}

void __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 112);
  v2 = [*(a1 + 40) identifier];
  [v1 setObject:0 forKeyedSubscript:v2];
}

void __122__WBTabGroupManager__didRemoveProfiles_updateProfiles_previousProfiles_removeTabGroups_updateTabGroups_previousTabGroups___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) uuid];
  [v1 setObject:0 forKeyedSubscript:v2];
}

- (void)_cacheTabGroup:(void *)a3 creatorDeviceUUID:.cold.1(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 uuid];
  v7 = [a3 objectForKeyedSubscript:v6];
  v8 = [v7 allTabs];
  [v8 count];
  v9 = [a2 allTabs];
  [v9 count];
  OUTLINED_FUNCTION_6_1(&dword_272C20000, v10, v11, "Tab group cache is updated from %{public}lu to %{public}lu", v12, v13, v14, v15, 0);

  v16 = *MEMORY[0x277D85DE8];
}

void __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 privacyPreservingDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  v6 = 138543618;
  v7 = a2;
  OUTLINED_FUNCTION_5_1();
  _os_log_fault_impl(&dword_272C20000, v3, OS_LOG_TYPE_FAULT, "Items do not have sync positions: %{public}@, %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void __48__WBTabGroupManager__itemSyncPositionComparator__block_invoke_cold_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0(&dword_272C20000, v4, v5, "Item does not have a sync position %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reorderTabGroup:(void *)a1 afterTabGroup:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeTabGroup:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateTabWithUUID:persist:notify:usingBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateTabsInTabGroupWithUUID:options:usingBlock:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)insertScopedBookmark:(os_log_t)log inScopedBookmarkFolderWithID:afterBookmarkWithUUID:notify:.cold.2(void *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = [a1 identifier];
  }

  else
  {
    v5 = -1;
  }

  v7[0] = 67109376;
  v7[1] = a2;
  v8 = 1024;
  v9 = v5;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Failed to insert scoped bookmark into parent(%d) after anchor(%d).", v7, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateScopedBookmarkWithUUID:(void *)a1 title:address:notify:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_4_0() identifier];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteScopedBookmarkWithUUID:(void *)a1 notify:completionHandler:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_4_0() identifier];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_notifyScopedBookmarkChangesInFolderWithID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_1(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_4_0() recordID];
  v6 = [v5 ckShortDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0(&dword_272C20000, v7, v8, "tabGroupUUID is nil despite successfully accepting share %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __103__WBTabGroupManager__userDidAcceptTabGroupShareWithMetadata_inProfileWithIdentifier_completionHandler___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v3 share];
  v6 = [v5 recordID];
  v7 = [v6 zoneID];
  v8 = [v7 ckShortDescription];
  v9 = [*(a1 + 56) safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_1(&dword_272C20000, v10, v11, "Failed to join shared tab group %{public}@ with error: %{public}@", v12, v13, v14, v15, 2u);

  v16 = *MEMORY[0x277D85DE8];
}

void __68__WBTabGroupManager_beginSharingTabGroupWithUUID_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [OUTLINED_FUNCTION_4_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

@end