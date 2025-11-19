@interface WBTabCollection
+ (NSString)deviceIdentifier;
+ (id)databasePathForConfiguration:(id)a3;
- (BOOL)_deleteItems:(id)a3 leaveTombstones:(BOOL)a4 cleanBookmarks:(BOOL)a5;
- (BOOL)_deleteTabGroup:(id)a3 leaveTombstone:(BOOL)a4;
- (BOOL)_insertItems:(id)a3 inParentWithID:(unsigned int)a4 afterItem:(id)a5;
- (BOOL)_insertItemsIntoPlace:(id)a3 inParentWithID:(unsigned int)a4;
- (BOOL)_reorderBookmarkIntoPlace:(id)a3;
- (BOOL)_reorderItem:(id)a3 afterItem:(id)a4;
- (BOOL)_reorderItemIntoPlace:(id)a3;
- (BOOL)_saveBrowserState:(id)a3;
- (BOOL)_saveItem:(id)a3;
- (BOOL)_saveItems:(id)a3;
- (BOOL)_saveSettingsIfNeededForItem:(id)a3;
- (BOOL)_updatePinnedTabs:(id)a3 privatePinnedTabs:(id)a4;
- (BOOL)_updatePinnedTabsByProfileIdentifier:(id)a3;
- (BOOL)closeWindowState:(id)a3;
- (BOOL)copyTabsDatabase:(id)a3 hidingSensitiveData:(BOOL)a4 error:(id *)a5;
- (BOOL)deleteAllLocalSavedState;
- (BOOL)deleteAllWindowStates;
- (BOOL)deleteItems:(id)a3 leaveTombstones:(BOOL)a4;
- (BOOL)deleteItems:(id)a3 leaveTombstones:(BOOL)a4 cleanBookmarks:(BOOL)a5;
- (BOOL)deleteTabGroup:(id)a3;
- (BOOL)deleteTabs:(id)a3;
- (BOOL)deleteWindowState:(id)a3;
- (BOOL)deleteWindowStates:(id)a3;
- (BOOL)deleteWindowsNotInLastSession;
- (BOOL)hasCompletedMigration;
- (BOOL)hasMultipleProfiles;
- (BOOL)insertItems:(id)a3 inParentWithID:(unsigned int)a4 afterItem:(id)a5;
- (BOOL)insertTab:(id)a3 inTabGroup:(id)a4 afterTab:(id)a5;
- (BOOL)insertTabGroup:(id)a3 afterTabGroup:(id)a4;
- (BOOL)insertTabs:(id)a3 inTabGroup:(id)a4 afterTab:(id)a5;
- (BOOL)isLockedSync;
- (BOOL)lockSync;
- (BOOL)reorderItem:(id)a3 afterItem:(id)a4;
- (BOOL)saveBrowserState:(id)a3;
- (BOOL)saveItem:(id)a3;
- (BOOL)saveTabGroup:(id)a3;
- (BOOL)saveWindowState:(id)a3;
- (BOOL)updateItems:(id)a3 inParentWithID:(unsigned int)a4;
- (BOOL)updateTabs:(id)a3 inTabGroup:(id)a4;
- (NSArray)allMutableNamedTabGroupsUnsorted;
- (NSArray)mutableNamedTabGroupsInDefaultProfile;
- (NSArray)mutableProfiles;
- (NSArray)windowStates;
- (NSError)error;
- (WBBookmarkDatabaseSyncData)databaseSyncData;
- (WBBrowserState)browserState;
- (WBBrowserState)lastSessionBrowserState;
- (WBTabCollection)initWithTabCollection:(id)a3;
- (id)_activeParticipantsFromParticipantData:(id)a3;
- (id)_allMutableTabGroupsUnsorted;
- (id)_bookmarksForTabs:(id)a3;
- (id)_bookmarksForTabs:(id)a3 syncable:(BOOL)a4;
- (id)_bookmarksFromItems:(id)a3;
- (id)_collection;
- (id)_descriptionForScopedBookmark:(id)a3;
- (id)_lastSessionBrowserState;
- (id)_participantDataForTab:(id)a3;
- (id)_profiles;
- (id)_profilesQuery;
- (id)_shareRecordForTabGroup:(id)a3;
- (id)_tabGroupsInDefaultProfile;
- (id)activeParticipantsInTab:(id)a3;
- (id)activeParticipantsInTabGroup:(id)a3;
- (id)devicesForProfile:(id)a3;
- (id)itemsInParentWithID:(unsigned int)a3 ofType:(Class)a4;
- (id)mutableProfileWithIdentifier:(id)a3;
- (id)mutableTabGroupWithUUID:(id)a3;
- (id)mutableTabWithUUID:(id)a3;
- (id)mutableTabsForTabGroup:(id)a3;
- (id)namedTabGroupsForProfileWithIdentifier:(id)a3;
- (id)pinnedTabsForProfileWithIdentifier:(id)a3;
- (id)presenceTabUUIDForParticipantIdentifier:(id)a3 inTabGroup:(id)a4;
- (id)profileWithServerID:(id)a3;
- (id)recordIDForTab:(id)a3;
- (id)scopedBookmarkListWithID:(int)a3;
- (id)scopedBookmarkWithUUID:(id)a3;
- (id)shareRecordForTabGroup:(id)a3;
- (id)syncDataForItem:(id)a3;
- (id)syncDataForItemWithID:(int)a3;
- (id)tabGroupMatchingShare:(id)a3 inTabGroups:(id)a4;
- (id)tabGroupUUIDForServerID:(id)a3;
- (id)tabGroupWithUUID:(id)a3;
- (id)tabUUIDForServerID:(id)a3;
- (id)tabWithUUID:(id)a3;
- (id)tabsForTabGroup:(id)a3;
- (id)topScopedBookmarkListForTabGroup:(id)a3;
- (id)windowStateWithUUID:(id)a3;
- (int)frequentlyVisitedSitesFolderIDForProfileWithIdentifier:(id)a3;
- (int)pinnedTabsFolderID;
- (int)pinnedTabsFolderIDForProfileWithIdentifier:(id)a3;
- (int)privatePinnedTabsFolderID;
- (int64_t)tabCountForTabGroupWithUUID:(id)a3;
- (unint64_t)numberOfLocalTabsToBeClosed;
- (void)_addProfile:(id)a3 toLog:(id)a4 hidingSensitiveData:(BOOL)a5;
- (void)_addTabGroup:(id)a3 toLog:(id)a4 hidingSensitiveData:(BOOL)a5;
- (void)_createDatabaseQueue;
- (void)_readPropertiesOfBookmark:(id)a3;
- (void)createTopScopedBookmarkListIfNeededForTabGroup:(id)a3;
- (void)deleteItems:(id)a3 leaveTombstones:(BOOL)a4 completionHandler:(id)a5;
- (void)deleteWindowStates:(id)a3 completionHandler:(id)a4;
- (void)deleteWindowsNotInLastSessionWithCompletionHandler:(id)a3;
- (void)enumerateDescendantsOfItemWithID:(int)a3 usingBlock:(id)a4;
- (void)flushDeletedTabsInTabGroup:(id)a3 completionHandler:(id)a4;
- (void)frequentlyVisitedSitesForProfileWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getActiveParticipantsInTab:(id)a3 completionHandler:(id)a4;
- (void)insertItems:(id)a3 inParent:(id)a4 afterItem:(id)a5 completionHandler:(id)a6;
- (void)insertItems:(id)a3 inParentWithID:(unsigned int)a4 afterItem:(id)a5 completionHandler:(id)a6;
- (void)insertItemsIntoPlace:(id)a3 inParent:(id)a4 completionHandler:(id)a5;
- (void)insertItemsIntoPlace:(id)a3 inParentWithID:(unsigned int)a4 completionHandler:(id)a5;
- (void)performMaintenance;
- (void)reorderItem:(id)a3 afterItem:(id)a4 completionHandler:(id)a5;
- (void)reorderItemIntoPlace:(id)a3 completionHandler:(id)a4;
- (void)saveBrowserState:(id)a3 completionHandler:(id)a4;
- (void)saveItem:(id)a3 completionHandler:(id)a4;
- (void)saveItems:(id)a3 completionHandler:(id)a4;
- (void)saveMinimumAPISyncVersionOfDescendantItemsForMovedItem:(id)a3;
- (void)saveWindowRestorationArchiveData:(id)a3 forWindowUUIDString:(id)a4 completionHandler:(id)a5;
- (void)saveWindowState:(id)a3 completionHandler:(id)a4;
- (void)setCompletedMigration:(BOOL)a3;
- (void)setFrequentlyVisitedSites:(id)a3 forProfileWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setHasSharedTabGroupsWithCompletionHandler:(id)a3;
- (void)setShouldPrepareBackgroundTaskExpiration:(BOOL)a3;
- (void)shareRecordForTabGroup:(id)a3 completionHandler:(id)a4;
- (void)unlockSync;
- (void)updateItems:(id)a3 inParentWithID:(unsigned int)a4 completionHandler:(id)a5;
- (void)updateTabsInTabGroup:(id)a3 completionHandler:(id)a4;
@end

@implementation WBTabCollection

- (void)_createDatabaseQueue
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WebBookmarks.WBTabCollection.databaseQueue.%p", self];
  v3 = [v7 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);
  databaseQueue = self->_databaseQueue;
  self->_databaseQueue = v5;
}

- (NSArray)mutableProfiles
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__WBTabCollection_mutableProfiles__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

uint64_t __34__WBTabCollection_mutableProfiles__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _profiles];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_profiles
{
  v3 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"parent = 0 AND syncable = 1 AND type = 1 AND subtype = 2 AND special_id = 0" folderID:0 orderBy:@"order_index ASC" usingFilter:0];
  v4 = [WebBookmarkList alloc];
  v5 = [(WBTabCollection *)self _collection];
  v6 = [(WebBookmarkList *)v4 initWithQuery:v3 skipOffset:0 collection:v5];

  v7 = [(WebBookmarkList *)v6 bookmarkArray];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__WBTabCollection__profiles__block_invoke;
  v13[3] = &unk_279E76DC0;
  v13[4] = self;
  v8 = [v7 safari_mapAndFilterObjectsUsingBlock:v13];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = v10;

  return v10;
}

- (id)_collection
{
  collection = self->_collection;
  if (!collection)
  {
    v4 = [(WBTabCollection *)self _collectionWithConfiguration:self->_configuration checkIntegrity:0];
    v5 = self->_collection;
    self->_collection = v4;

    collection = self->_collection;
  }

  return collection;
}

id __28__WBTabCollection__profiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _collection];
  v5 = [v4 profileForBookmark:v3];

  return v5;
}

- (BOOL)hasCompletedMigration
{
  MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WBTabCollection");
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WBTabCollection_hasCompletedMigration__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
  return self;
}

void __40__WBTabCollection_hasCompletedMigration__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _collection];
  v2 = [v3 syncStringForKey:@"hasMigrated"];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (WBBrowserState)browserState
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WBTabCollection_browserState__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

void __31__WBTabCollection_browserState__block_invoke(uint64_t a1)
{
  v2 = [WBBrowserState alloc];
  v8 = [*(*(a1 + 32) + 24) pinnedTabs];
  v3 = [*(*(a1 + 32) + 24) privatePinnedTabs];
  v4 = [*(*(a1 + 32) + 24) windowStates];
  v5 = [(WBBrowserState *)v2 initWithPinnedTabs:v8 privatePinnedTabs:v3 windowStates:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (NSString)deviceIdentifier
{
  v2 = [(WebBookmarkCollection *)WebBookmarkTabCollection deviceIdentifierForCloudKitWithCollectionType:1 generateIfNeeded:1];
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];

  return v4;
}

+ (id)databasePathForConfiguration:(id)a3
{
  v3 = [(WebBookmarkCollection *)WebBookmarkTabCollection databasePathForConfiguration:a3];

  return v3;
}

- (WBTabCollection)initWithTabCollection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBTabCollection;
  v6 = [(WBTabCollection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(WBTabCollection *)v6 _createDatabaseQueue];
    objc_storeStrong(&v7->_collection, a3);
    [(WBTabCollection *)v7 _commonInit];
    v8 = v7;
  }

  return v7;
}

- (void)setShouldPrepareBackgroundTaskExpiration:(BOOL)a3
{
  if (self->_shouldPrepareBackgroundTaskExpiration != a3)
  {
    self->_shouldPrepareBackgroundTaskExpiration = a3;
    if (a3)
    {
      [(WebBookmarkCollection *)self->_collection _interruptDatabase];
    }
  }
}

- (void)setCompletedMigration:(BOOL)a3
{
  MEMORY[0x2743D62A0](v8, @"com.apple.WebBookmarks.WBTabCollection");
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WBTabCollection_setCompletedMigration___block_invoke;
  block[3] = &unk_279E75F60;
  block[4] = self;
  v7 = a3;
  dispatch_sync(databaseQueue, block);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v8);
}

void __41__WBTabCollection_setCompletedMigration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  if (*(a1 + 40))
  {
    v3 = @"1";
  }

  else
  {
    v3 = 0;
  }

  v4 = v2;
  [v2 syncSetString:v3 forKey:@"hasMigrated"];
}

- (NSError)error
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__WBTabCollection_error__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

void __24__WBTabCollection_error__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 _errorForMostRecentSQLiteError];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id *__60__WBTabCollection_disableSuddenTerminationForPendingChanges__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);

    JUMPOUT(0x2743D62C0);
  }

  return result;
}

- (WBBrowserState)lastSessionBrowserState
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WBTabCollection_lastSessionBrowserState__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

uint64_t __42__WBTabCollection_lastSessionBrowserState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastSessionBrowserState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_lastSessionBrowserState
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [WBBrowserState alloc];
  v4 = [(WebBookmarkTabCollection *)self->_collection pinnedTabs];
  v5 = [(WebBookmarkTabCollection *)self->_collection privatePinnedTabs];
  v6 = [(WebBookmarkTabCollection *)self->_collection lastSessionWindowStates];
  v7 = [(WBBrowserState *)v3 initWithPinnedTabs:v4 privatePinnedTabs:v5 windowStates:v6];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(WBTabCollection *)self _profiles];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 kind])
        {
          collection = self->_collection;
          v15 = [v13 identifier];
          v16 = [(WebBookmarkTabCollection *)collection pinnedTabsForProfileWithIdentifier:v15];
          v17 = [v13 identifier];
          [v8 setObject:v16 forKeyedSubscript:v17];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [(WBBrowserState *)v7 setPinnedTabsByProfileIdentifier:v8];
  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)saveBrowserState:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__WBTabCollection_saveBrowserState___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

uint64_t __36__WBTabCollection_saveBrowserState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveBrowserState:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_saveBrowserState:(id)a3
{
  v4 = a3;
  v5 = [(WBTabCollection *)self _collection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__WBTabCollection__saveBrowserState___block_invoke;
  v8[3] = &unk_279E75968;
  v6 = v4;
  v9 = v6;
  v10 = self;
  LOBYTE(self) = [v5 performDatabaseUpdatesWithTransaction:v8 secureDelete:1];

  return self;
}

uint64_t __37__WBTabCollection__saveBrowserState___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pinnedTabs];
  v3 = [v2 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_34];

  v4 = [*(a1 + 32) privatePinnedTabs];
  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_36];

  if ([*(a1 + 40) _updatePinnedTabs:v3 privatePinnedTabs:v5] & 1) != 0 && (v6 = *(a1 + 40), objc_msgSend(*(a1 + 32), "pinnedTabsByProfileIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(v6) = objc_msgSend(v6, "_updatePinnedTabsByProfileIdentifier:", v7), v7, (v6))
  {
    v8 = [*(a1 + 40) _collection];
    [*(a1 + 32) windowStates];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v9 = v17 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if (([v8 _saveWindowState:{*(*(&v16 + 1) + 8 * v12), v16}] & 1) == 0)
          {

            v13 = 0;
            goto LABEL_14;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = [v8 _markWindowStatesAsLastSession:v9];
LABEL_14:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

id __37__WBTabCollection__saveBrowserState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

id __37__WBTabCollection__saveBrowserState___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

- (void)saveBrowserState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __54__WBTabCollection_saveBrowserState_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _saveBrowserState:*(a1 + 40)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)deleteAllLocalSavedState
{
  MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WBTabCollection");
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WBTabCollection_deleteAllLocalSavedState__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
  return self;
}

void __43__WBTabCollection_deleteAllLocalSavedState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__WBTabCollection_deleteAllLocalSavedState__block_invoke_2;
  v3[3] = &unk_279E757F0;
  v3[4] = *(a1 + 32);
  *(*(*(a1 + 40) + 8) + 24) = [v2 performDatabaseUpdatesWithTransaction:v3 secureDelete:1];
}

uint64_t __43__WBTabCollection_deleteAllLocalSavedState__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 _deleteAllWindowStates];

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [*(a1 + 32) _collection];
  v5 = [v4 _deleteAllLocalTabsAndGroups];

  return v5;
}

- (unint64_t)numberOfLocalTabsToBeClosed
{
  MEMORY[0x2743D62A0](v11, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WBTabCollection_numberOfLocalTabsToBeClosed__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v11);
  return v4;
}

void __46__WBTabCollection_numberOfLocalTabsToBeClosed__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _countOfAllLocalTabsToBeDeleted];
}

- (BOOL)_insertItems:(id)a3 inParentWithID:(unsigned int)a4 afterItem:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(WBTabCollection *)self _collection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__WBTabCollection__insertItems_inParentWithID_afterItem___block_invoke;
  v14[3] = &unk_279E76738;
  v14[4] = self;
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  v17 = a4;
  LOBYTE(a4) = [v10 performDatabaseUpdatesWithTransaction:v14 secureDelete:0];

  return a4;
}

uint64_t __57__WBTabCollection__insertItems_inParentWithID_afterItem___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _collection];
  v3 = [*(a1 + 40) bookmark];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      v8 = v3;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v7);
        v3 = [v9 bookmark];
        if (([v2 _saveAndMoveBookmark:v3 toFolderID:*(a1 + 56)] & 1) == 0 || !objc_msgSend(v2, "_reorderBookmark:afterBookmark:", v3, v8))
        {

          v10 = 0;
          v3 = v8;
          goto LABEL_13;
        }

        [*(a1 + 32) _saveSettingsIfNeededForItem:v9];

        ++v7;
        v8 = v3;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)insertItems:(id)a3 inParentWithID:(unsigned int)a4 afterItem:(id)a5
{
  v8 = a3;
  v9 = a5;
  MEMORY[0x2743D62A0](v23, @"com.apple.WebBookmarks.WBTabCollection");
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  databaseQueue = self->_databaseQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__WBTabCollection_insertItems_inParentWithID_afterItem___block_invoke;
  v14[3] = &unk_279E76760;
  v14[4] = self;
  v15 = v8;
  v18 = a4;
  v16 = v9;
  v17 = &v19;
  v11 = v9;
  v12 = v8;
  dispatch_sync(databaseQueue, v14);
  LOBYTE(v9) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v23);
  return v9;
}

uint64_t __56__WBTabCollection_insertItems_inParentWithID_afterItem___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _insertItems:*(a1 + 40) inParentWithID:*(a1 + 64) afterItem:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)insertItems:(id)a3 inParentWithID:(unsigned int)a4 afterItem:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    operator new();
  }

  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __74__WBTabCollection_insertItems_inParentWithID_afterItem_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _insertItems:*(a1 + 40) inParentWithID:*(a1 + 72) afterItem:*(a1 + 48)];
  v2 = *(*(*(a1 + 64) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)insertItems:(id)a3 inParent:(id)a4 afterItem:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    operator new();
  }

  v14 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __68__WBTabCollection_insertItems_inParent_afterItem_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) bookmark];
  [v2 _insertItems:v3 inParentWithID:objc_msgSend(v4 afterItem:{"identifier"), *(a1 + 56)}];

  v5 = *(*(*(a1 + 72) + 8) + 24);
  if (v5)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v5);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 64);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (BOOL)_insertItemsIntoPlace:(id)a3 inParentWithID:(unsigned int)a4
{
  v6 = a3;
  v7 = [(WBTabCollection *)self _collection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__WBTabCollection__insertItemsIntoPlace_inParentWithID___block_invoke;
  v10[3] = &unk_279E75FD0;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v12 = a4;
  LOBYTE(a4) = [v7 performDatabaseUpdatesWithTransaction:v10 secureDelete:0];

  return a4;
}

uint64_t __56__WBTabCollection__insertItemsIntoPlace_inParentWithID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _collection];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 bookmark];
        if ([v8 isSyncable])
        {
          v9 = [v8 syncPosition];
          v10 = [v2 orderIndexOfBookmark:v8 withSyncPosition:v9 inFolderWithID:{objc_msgSend(v8, "parentID")}];
        }

        else
        {
          v10 = [v8 orderIndex];
        }

        if (([v2 _saveAndMoveBookmark:v8 toFolderID:*(a1 + 48) orderIndex:v10] & 1) == 0)
        {

          v11 = 0;
          goto LABEL_14;
        }

        [*(a1 + 32) _saveSettingsIfNeededForItem:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)insertItemsIntoPlace:(id)a3 inParentWithID:(unsigned int)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x2020000000;
    operator new();
  }

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __73__WBTabCollection_insertItemsIntoPlace_inParentWithID_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _insertItemsIntoPlace:*(a1 + 40) inParentWithID:*(a1 + 64)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)insertItemsIntoPlace:(id)a3 inParent:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    operator new();
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __67__WBTabCollection_insertItemsIntoPlace_inParent_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) bookmark];
  [v2 _insertItemsIntoPlace:v3 inParentWithID:{objc_msgSend(v4, "identifier")}];

  v5 = *(*(*(a1 + 64) + 8) + 24);
  if (v5)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v5);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (BOOL)_saveItem:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_shouldPrepareBackgroundTaskExpiration)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 privacyPreservingDescription];
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing saving bookmarks. %{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v5 = [(WBTabCollection *)self _collection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__WBTabCollection__saveItem___block_invoke;
    v10[3] = &unk_279E75968;
    v10[4] = self;
    v11 = v4;
    v7 = [v5 performDatabaseUpdatesWithTransaction:v10 secureDelete:0];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __29__WBTabCollection__saveItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [*(a1 + 40) bookmark];
  v4 = [v2 _saveBookmark:v3 withSpecialID:0 updateGenerationIfNeeded:1];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _saveSettingsIfNeededForItem:v6];
}

- (BOOL)_saveSettingsIfNeededForItem:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 bookmark];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__WBTabCollection__saveSettingsIfNeededForItem___block_invoke;
    v15[3] = &unk_279E757C8;
    v6 = v4;
    v16 = v6;
    [v5 performWithFieldsWriteLock:v15];

    v7 = [(WBTabCollection *)self _collection];
    v8 = [v6 modifiedSettingsFieldsByName];
    v9 = [v6 bookmark];
    v10 = [v9 identifier];
    v11 = [v6 bookmark];
    v12 = [v11 serverID];
    v13 = [v7 saveSettings:v8 inParentWithID:v10 parentServerID:v12];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void __48__WBTabCollection__saveSettingsIfNeededForItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modifiedSettingsFieldsByName];
  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = v2;
    v4 = [v2 allValues];
    [v3 resumeIncrementingFields:v4];

    v2 = v5;
  }
}

- (BOOL)_saveItems:(id)a3
{
  v4 = a3;
  v5 = [(WBTabCollection *)self _collection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__WBTabCollection__saveItems___block_invoke;
  v8[3] = &unk_279E75968;
  v6 = v4;
  v9 = v6;
  v10 = self;
  LOBYTE(self) = [v5 performDatabaseUpdatesWithTransaction:v8 secureDelete:0];

  return self;
}

uint64_t __30__WBTabCollection__saveItems___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [*(a1 + 40) _collection];
        v8 = [v6 bookmark];
        v9 = [v7 _saveBookmark:v8 withSpecialID:0 updateGenerationIfNeeded:1];

        if ((v9 & 1) == 0 || ![*(a1 + 40) _saveSettingsIfNeededForItem:v6])
        {
          v10 = 0;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)saveItem:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__WBTabCollection_saveItem___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

uint64_t __28__WBTabCollection_saveItem___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _saveItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)saveItem:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __46__WBTabCollection_saveItem_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _saveItem:*(a1 + 40)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)saveItems:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __47__WBTabCollection_saveItems_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _saveItems:*(a1 + 40)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)_reorderItem:(id)a3 afterItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBTabCollection *)self _collection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__WBTabCollection__reorderItem_afterItem___block_invoke;
  v13[3] = &unk_279E759E0;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [v8 performDatabaseUpdatesWithTransaction:v13 secureDelete:0];

  return v11;
}

uint64_t __42__WBTabCollection__reorderItem_afterItem___block_invoke(id *a1)
{
  v2 = [a1[4] _collection];
  v3 = [a1[5] bookmark];
  v4 = [a1[6] bookmark];
  v5 = [v2 _reorderBookmark:v3 afterBookmark:v4];

  return v5;
}

- (BOOL)reorderItem:(id)a3 afterItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  MEMORY[0x2743D62A0](v20, @"com.apple.WebBookmarks.WBTabCollection");
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WBTabCollection_reorderItem_afterItem___block_invoke;
  block[3] = &unk_279E76828;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v20);
  return self;
}

uint64_t __41__WBTabCollection_reorderItem_afterItem___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _reorderItem:*(a1 + 40) afterItem:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)reorderItem:(id)a3 afterItem:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    operator new();
  }

  v11 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __59__WBTabCollection_reorderItem_afterItem_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reorderItem:*(a1 + 40) afterItem:*(a1 + 48)];
  v2 = *(*(*(a1 + 64) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)_reorderItemIntoPlace:(id)a3
{
  v4 = a3;
  v5 = [(WBTabCollection *)self _collection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__WBTabCollection__reorderItemIntoPlace___block_invoke;
  v9[3] = &unk_279E75968;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v7 = [v5 performDatabaseUpdatesWithTransaction:v9 secureDelete:0];

  return v7;
}

uint64_t __41__WBTabCollection__reorderItemIntoPlace___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) bookmark];
  v3 = [v1 _reorderBookmarkIntoPlace:v2];

  return v3;
}

- (void)reorderItemIntoPlace:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __58__WBTabCollection_reorderItemIntoPlace_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reorderItemIntoPlace:*(a1 + 40)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)_deleteItems:(id)a3 leaveTombstones:(BOOL)a4 cleanBookmarks:(BOOL)a5
{
  v8 = a3;
  v9 = [v8 safari_containsObjectPassingTest:&__block_literal_global_42];
  v10 = [(WBTabCollection *)self _collection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__WBTabCollection__deleteItems_leaveTombstones_cleanBookmarks___block_invoke_2;
  v14[3] = &unk_279E76870;
  v14[4] = self;
  v11 = v8;
  v15 = v11;
  v16 = a4;
  v17 = a5;
  v12 = [v10 performDatabaseUpdatesWithTransaction:v14 secureDelete:v9];

  return v12;
}

uint64_t __63__WBTabCollection__deleteItems_leaveTombstones_cleanBookmarks___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [*(a1 + 32) _bookmarksFromItems:*(a1 + 40)];
  v4 = [v2 _deleteBookmarks:v3 leaveTombstone:*(a1 + 48) cleanBookmarks:*(a1 + 49)];

  return v4;
}

- (BOOL)deleteItems:(id)a3 leaveTombstones:(BOOL)a4 cleanBookmarks:(BOOL)a5
{
  v8 = a3;
  MEMORY[0x2743D62A0](v22, @"com.apple.WebBookmarks.WBTabCollection");
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__WBTabCollection_deleteItems_leaveTombstones_cleanBookmarks___block_invoke;
  block[3] = &unk_279E76898;
  v14 = v8;
  v15 = &v18;
  block[4] = self;
  v16 = a4;
  v17 = a5;
  v10 = v8;
  dispatch_sync(databaseQueue, block);
  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v22);
  return v11;
}

uint64_t __62__WBTabCollection_deleteItems_leaveTombstones_cleanBookmarks___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deleteItems:*(a1 + 40) leaveTombstones:*(a1 + 56) cleanBookmarks:*(a1 + 57)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)deleteItems:(id)a3 leaveTombstones:(BOOL)a4
{
  v6 = a3;
  MEMORY[0x2743D62A0](v19, @"com.apple.WebBookmarks.WBTabCollection");
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WBTabCollection_deleteItems_leaveTombstones___block_invoke;
  block[3] = &unk_279E768C0;
  v12 = v6;
  v13 = &v15;
  block[4] = self;
  v14 = a4;
  v8 = v6;
  dispatch_sync(databaseQueue, block);
  v9 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v19);
  return v9;
}

uint64_t __47__WBTabCollection_deleteItems_leaveTombstones___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deleteItems:*(a1 + 40) leaveTombstones:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)deleteItems:(id)a3 leaveTombstones:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x2020000000;
    operator new();
  }

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __65__WBTabCollection_deleteItems_leaveTombstones_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _deleteItems:*(a1 + 40) leaveTombstones:*(a1 + 64)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_bookmarksFromItems:(id)a3
{
  v3 = [a3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_47];

  return v3;
}

id __39__WBTabCollection__bookmarksFromItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 bookmark];
  if (!v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __39__WBTabCollection__bookmarksFromItems___block_invoke_cold_1(v2, v4);
    }
  }

  return v3;
}

- (BOOL)updateItems:(id)a3 inParentWithID:(unsigned int)a4
{
  v6 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WBTabCollection_updateItems_inParentWithID___block_invoke;
  block[3] = &unk_279E76930;
  v11 = v6;
  v12 = &v14;
  block[4] = self;
  v13 = a4;
  v8 = v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(a4) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);
  return a4;
}

uint64_t __46__WBTabCollection_updateItems_inParentWithID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateItems:*(a1 + 40) inParentWithID:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)updateItems:(id)a3 inParentWithID:(unsigned int)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v11 = buf;
    v12 = 0x2020000000;
    operator new();
  }

  v9 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __64__WBTabCollection_updateItems_inParentWithID_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateItems:*(a1 + 40) inParentWithID:*(a1 + 64)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)itemsInParentWithID:(unsigned int)a3 ofType:(Class)a4
{
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WBTabCollection_itemsInParentWithID_ofType___block_invoke;
  block[3] = &unk_279E769A0;
  block[4] = self;
  block[5] = &v12;
  v11 = a3;
  block[6] = a4;
  dispatch_sync(databaseQueue, block);
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v8;
}

void __46__WBTabCollection_itemsInParentWithID_ofType___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WBTabCollection_itemsInParentWithID_ofType___block_invoke_2;
  v7[3] = &unk_279E76978;
  v2 = *(a1 + 32);
  v8 = *(a1 + 56);
  v3 = *(a1 + 48);
  v7[4] = v2;
  v7[5] = v3;
  v4 = __46__WBTabCollection_itemsInParentWithID_ofType___block_invoke_2(v7);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __46__WBTabCollection_itemsInParentWithID_ofType___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 listWithID:*(a1 + 48)];

  v4 = [v3 bookmarkArray];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WBTabCollection_itemsInParentWithID_ofType___block_invoke_3;
  v7[3] = &__block_descriptor_40_e48____WBBookmarkRepresentable__16__0__WebBookmark_8lu32l8;
  v7[4] = *(a1 + 40);
  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:v7];

  return v5;
}

id __46__WBTabCollection_itemsInParentWithID_ofType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(*(a1 + 32)) initWithBookmark:v3];

  return v4;
}

id *__31__WBTabCollection_reloadItems___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v7 = [*(a1 + 40) _collection];
        v8 = [v6 bookmark];
        v9 = [v7 bookmarkWithID:{objc_msgSend(v8, "identifier")}];
        [v6 setBookmark:v9];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);
    result = MEMORY[0x2743D62C0]();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)saveMinimumAPISyncVersionOfDescendantItemsForMovedItem:(id)a3
{
  v8 = a3;
  v4 = [(WBTabCollection *)self _collection];
  v5 = [(WBTabCollection *)self _collection];
  v6 = [v8 bookmark];
  v7 = [v5 bookmarkWithID:{objc_msgSend(v6, "identifier")}];
  [v4 saveMinimumAPISyncVersionOfDescendantItemsForItem:v7 includingAncestorItem:0];
}

- (void)enumerateDescendantsOfItemWithID:(int)a3 usingBlock:(id)a4
{
  v6 = a4;
  MEMORY[0x2743D62A0](v12, @"com.apple.WebBookmarks.WBTabCollection");
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__WBTabCollection_enumerateDescendantsOfItemWithID_usingBlock___block_invoke;
  v9[3] = &unk_279E769F0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(databaseQueue, v9);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v12);
}

void __63__WBTabCollection_enumerateDescendantsOfItemWithID_usingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__WBTabCollection_enumerateDescendantsOfItemWithID_usingBlock___block_invoke_2;
  v4[3] = &unk_279E763A8;
  v5 = *(a1 + 40);
  [v2 enumerateDescendantsOfBookmarkID:v3 usingBlock:v4];
}

- (BOOL)_updatePinnedTabs:(id)a3 privatePinnedTabs:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v28 = [v6 count];
    v29 = 2048;
    v30 = [v7 count];
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Update %zu pinned tabs and %zu private pinned tabs", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v6 arrayByAddingObjectsFromArray:{v7, 0}];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        [v13 setSyncable:0];
        v14 = [v13 bookmark];
        [(WBTabCollection *)self _readPropertiesOfBookmark:v14];
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v15 = [(WBTabCollection *)self _collection];
  v16 = [v6 valueForKey:@"bookmark"];
  v17 = [v15 _updateBookmarks:v16 inFolderWithID:{objc_msgSend(v15, "pinnedTabsFolderID")}];

  if (v17)
  {
    v18 = [v7 valueForKey:@"bookmark"];
    v19 = [v15 _updateBookmarks:v18 inFolderWithID:{objc_msgSend(v15, "privatePinnedTabsFolderID")}];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_updatePinnedTabsByProfileIdentifier:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v24 = a3;
  if ([v24 count])
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __56__WBTabCollection__updatePinnedTabsByProfileIdentifier___block_invoke;
    v40[3] = &unk_279E76A18;
    v5 = v4;
    v41 = v5;
    v23 = v5;
    [v24 enumerateKeysAndObjectsUsingBlock:v40];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [v5 objectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v7)
    {
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v12)
          {
            v13 = *v33;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v33 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v32 + 1) + 8 * j);
                [v15 setSyncable:0];
                v16 = [v15 bookmark];
                [(WBTabCollection *)self _readPropertiesOfBookmark:v16];
              }

              v12 = [v11 countByEnumeratingWithState:&v32 objects:v42 count:16];
            }

            while (v12);
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v7);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v17 = [(WBTabCollection *)self _collection];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__WBTabCollection__updatePinnedTabsByProfileIdentifier___block_invoke_3;
    v25[3] = &unk_279E76A60;
    v26 = v17;
    v27 = &v28;
    v18 = v17;
    [v23 enumerateKeysAndObjectsUsingBlock:v25];
    v19 = *(v29 + 24);

    _Block_object_dispose(&v28, 8);
    v20 = v19 ^ 1;
  }

  else
  {
    v20 = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

void __56__WBTabCollection__updatePinnedTabsByProfileIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_58];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

id __56__WBTabCollection__updatePinnedTabsByProfileIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

void __56__WBTabCollection__updatePinnedTabsByProfileIdentifier___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) pinnedTabsFolderIDForProfileWithIdentifier:v11];
  v9 = *(a1 + 32);
  v10 = [v7 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_62];
  *(*(*(a1 + 40) + 8) + 24) = [v9 _updateBookmarks:v10 inFolderWithID:v8] ^ 1;

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

id __56__WBTabCollection__updatePinnedTabsByProfileIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];

  return v2;
}

- (int)pinnedTabsFolderID
{
  MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WBTabCollection");
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WBTabCollection_pinnedTabsFolderID__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(databaseQueue, block);
  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
  return self;
}

void __37__WBTabCollection_pinnedTabsFolderID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 pinnedTabsFolderID];
}

- (int)privatePinnedTabsFolderID
{
  MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WBTabCollection");
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WBTabCollection_privatePinnedTabsFolderID__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(databaseQueue, block);
  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
  return self;
}

void __44__WBTabCollection_privatePinnedTabsFolderID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 privatePinnedTabsFolderID];
}

- (int)pinnedTabsFolderIDForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__WBTabCollection_pinnedTabsFolderIDForProfileWithIdentifier___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LODWORD(self) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

void __62__WBTabCollection_pinnedTabsFolderIDForProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 48) + 8) + 24) = [v2 pinnedTabsFolderIDForProfileWithIdentifier:*(a1 + 40)];
}

- (id)pinnedTabsForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__WBTabCollection_pinnedTabsForProfileWithIdentifier___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __54__WBTabCollection_pinnedTabsForProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 pinnedTabsForProfileWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)frequentlyVisitedSitesForProfileWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__WBTabCollection_frequentlyVisitedSitesForProfileWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_279E76A88;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

void __84__WBTabCollection_frequentlyVisitedSitesForProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) _collection];
  v4 = [*(a1 + 32) _collection];
  v5 = [v4 frequentlyVisitedSitesFolderIDForProfileWithIdentifier:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WBTabCollection_frequentlyVisitedSitesForProfileWithIdentifier_completionHandler___block_invoke_2;
  v7[3] = &unk_279E76270;
  v6 = v2;
  v8 = v6;
  [v3 enumerateDescendantsOfBookmarkID:v5 usingBlock:v7];

  (*(*(a1 + 48) + 16))();
}

- (void)setFrequentlyVisitedSites:(id)a3 forProfileWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 copy];

  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    operator new();
  }

  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __88__WBTabCollection_setFrequentlyVisitedSites_forProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) _collection];
  [v2 updateBookmarks:v3 inFolderWithID:objc_msgSend(v4 secureDelete:{"frequentlyVisitedSitesFolderIDForProfileWithIdentifier:", *(a1 + 48)), 0}];

  v5 = *(*(*(a1 + 64) + 8) + 24);
  if (v5)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v5);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (int)frequentlyVisitedSitesFolderIDForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__WBTabCollection_frequentlyVisitedSitesFolderIDForProfileWithIdentifier___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LODWORD(self) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

void __74__WBTabCollection_frequentlyVisitedSitesFolderIDForProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 48) + 8) + 24) = [v2 frequentlyVisitedSitesFolderIDForProfileWithIdentifier:*(a1 + 40)];
}

- (id)_tabGroupsInDefaultProfile
{
  v3 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"parent = 0 AND syncable = 1 AND type = 1 AND subtype = 0 AND hidden = 0 AND special_id = 0" folderID:0 orderBy:@"order_index ASC" usingFilter:0];
  v4 = [WebBookmarkList alloc];
  v5 = [(WBTabCollection *)self _collection];
  v6 = [(WebBookmarkList *)v4 initWithQuery:v3 skipOffset:0 collection:v5];

  v7 = [(WebBookmarkList *)v6 bookmarkArray];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__WBTabCollection__tabGroupsInDefaultProfile__block_invoke;
  v13[3] = &unk_279E75918;
  v13[4] = self;
  v8 = [v7 safari_mapAndFilterObjectsUsingBlock:v13];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = v10;

  return v10;
}

id __45__WBTabCollection__tabGroupsInDefaultProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _collection];
  v5 = [v4 tabGroupForBookmark:v3];

  if (*(*(a1 + 32) + 40))
  {
    [v5 truncateToNumberOfTabs:?];
  }

  return v5;
}

- (NSArray)mutableNamedTabGroupsInDefaultProfile
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WBTabCollection_mutableNamedTabGroupsInDefaultProfile__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

uint64_t __56__WBTabCollection_mutableNamedTabGroupsInDefaultProfile__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _tabGroupsInDefaultProfile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)allMutableNamedTabGroupsUnsorted
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WBTabCollection_allMutableNamedTabGroupsUnsorted__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

uint64_t __51__WBTabCollection_allMutableNamedTabGroupsUnsorted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _allMutableTabGroupsUnsorted];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_allMutableTabGroupsUnsorted
{
  v2 = [(WBTabCollection *)self _profiles];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [v2 safari_reduceObjectsWithInitialValue:v3 usingBlock:&__block_literal_global_75];

  return v4;
}

id __47__WBTabCollection__allMutableTabGroupsUnsorted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 tabGroups];
  [v4 addObjectsFromArray:v5];

  return v4;
}

- (id)namedTabGroupsForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:*MEMORY[0x277D49BD8]])
  {
    v7 = [(WBTabCollection *)self profiles];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__WBTabCollection_namedTabGroupsForProfileWithIdentifier___block_invoke;
    v13[3] = &unk_279E76AD0;
    v14 = v5;
    v8 = [v7 safari_firstObjectPassingTest:v13];

    v9 = [v8 tabGroups];
    v10 = v9;
    v11 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v11 = v9;
    }

    v6 = v11;
  }

  else
  {
    v6 = [(WBTabCollection *)self namedTabGroupsInDefaultProfile];
  }

  return v6;
}

uint64_t __58__WBTabCollection_namedTabGroupsForProfileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)mutableTabGroupWithUUID:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__WBTabCollection_mutableTabGroupWithUUID___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __43__WBTabCollection_mutableTabGroupWithUUID___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _collection];
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithUUID:*(a1 + 40)];
  v4 = [v7 tabGroupForBookmark:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)tabGroupWithUUID:(id)a3
{
  v3 = [(WBTabCollection *)self mutableTabGroupWithUUID:a3];

  return v3;
}

- (id)tabGroupUUIDForServerID:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__WBTabCollection_tabGroupUUIDForServerID___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __43__WBTabCollection_tabGroupUUIDForServerID___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__WBTabCollection_tabGroupUUIDForServerID___block_invoke_2;
  v6[3] = &unk_279E76AF8;
  v2 = a1[5];
  v6[4] = a1[4];
  v7 = v2;
  v3 = __43__WBTabCollection_tabGroupUUIDForServerID___block_invoke_2(v6);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __43__WBTabCollection_tabGroupUUIDForServerID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithServerID:*(a1 + 40) excludeDeletedBookmarks:1];

  if (v3 && ([v3 isFolder] & 1) != 0 && !objc_msgSend(v3, "subtype"))
  {
    v4 = [v3 UUID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)deleteTabGroup:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__WBTabCollection_deleteTabGroup___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

uint64_t __34__WBTabCollection_deleteTabGroup___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deleteTabGroup:*(a1 + 40) leaveTombstone:1];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_deleteTabGroup:(id)a3 leaveTombstone:(BOOL)a4
{
  v6 = a3;
  v7 = [(WBTabCollection *)self _collection];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__WBTabCollection__deleteTabGroup_leaveTombstone___block_invoke;
  v11[3] = &unk_279E76B20;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = a4;
  v9 = [v7 performDatabaseUpdatesWithTransaction:v11 secureDelete:{objc_msgSend(v8, "isPrivateBrowsing")}];

  return v9;
}

uint64_t __50__WBTabCollection__deleteTabGroup_leaveTombstone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [*(a1 + 40) bookmark];
  v4 = [v2 deleteBookmark:v3 leaveTombstone:*(a1 + 48)];

  return v4;
}

- (BOOL)insertTabGroup:(id)a3 afterTabGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  MEMORY[0x2743D62A0](v20, @"com.apple.WebBookmarks.WBTabCollection");
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WBTabCollection_insertTabGroup_afterTabGroup___block_invoke;
  block[3] = &unk_279E76828;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = &v16;
  v9 = v7;
  v10 = v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v20);
  return self;
}

void __48__WBTabCollection_insertTabGroup_afterTabGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__WBTabCollection_insertTabGroup_afterTabGroup___block_invoke_2;
  v5[3] = &unk_279E759E0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) = [v2 performDatabaseUpdatesWithTransaction:v5 secureDelete:0];
}

uint64_t __48__WBTabCollection_insertTabGroup_afterTabGroup___block_invoke_2(id *a1)
{
  v2 = [a1[4] bookmark];
  v3 = [a1[5] _collection];
  v4 = [a1[4] lastSelectedTabUUID];
  v5 = [v3 bookmarkWithUUID:v4];
  [v2 setLastSelectedChildID:{objc_msgSend(v5, "identifier")}];

  v6 = [a1[5] _collection];
  LOBYTE(v4) = [v6 _saveBookmark:v2 withSpecialID:0 updateGenerationIfNeeded:1];

  if (v4)
  {
    [a1[5] createTopScopedBookmarkListIfNeededForTabGroup:a1[4]];
    v7 = [a1[5] _collection];
    v8 = [a1[4] uuid];
    v9 = [v7 bookmarkWithUUID:v8];

    v10 = [a1[5] _collection];
    v11 = [a1[6] uuid];
    v12 = [v10 bookmarkWithUUID:v11];

    v13 = [a1[5] _collection];
    v14 = [v13 _reorderBookmark:v9 afterBookmark:v12];

    v2 = v9;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)saveTabGroup:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__WBTabCollection_saveTabGroup___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

void __32__WBTabCollection_saveTabGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__WBTabCollection_saveTabGroup___block_invoke_2;
  v5[3] = &unk_279E75968;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  *(*(*(a1 + 48) + 8) + 24) = [v2 performDatabaseUpdatesWithTransaction:v5 secureDelete:0];
}

uint64_t __32__WBTabCollection_saveTabGroup___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bookmark];
  v3 = [*(a1 + 40) _collection];
  v4 = [*(a1 + 32) lastSelectedTabUUID];
  v5 = [v3 bookmarkWithUUID:v4];
  [v2 setLastSelectedChildID:{objc_msgSend(v5, "identifier")}];

  v6 = [*(a1 + 40) _collection];
  v7 = [v6 _saveBookmark:v2 withSpecialID:0 updateGenerationIfNeeded:1];

  return v7;
}

- (id)mutableTabsForTabGroup:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__WBTabCollection_mutableTabsForTabGroup___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __42__WBTabCollection_mutableTabsForTabGroup___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _collection];
  v2 = [*(a1 + 40) bookmark];
  v3 = [v6 tabsForTabGroupBookmark:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)tabsForTabGroup:(id)a3
{
  v3 = [(WBTabCollection *)self mutableTabsForTabGroup:a3];

  return v3;
}

- (int64_t)tabCountForTabGroupWithUUID:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v16, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WBTabCollection_tabCountForTabGroupWithUUID___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v16);
  return v7;
}

void __47__WBTabCollection_tabCountForTabGroupWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 48) + 8) + 24) = [v2 tabCountForTabGroupWithUUID:*(a1 + 40)];
}

- (id)mutableTabWithUUID:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__WBTabCollection_mutableTabWithUUID___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __38__WBTabCollection_mutableTabWithUUID___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WBTabCollection_mutableTabWithUUID___block_invoke_2;
  v6[3] = &unk_279E76B48;
  v2 = a1[5];
  v6[4] = a1[4];
  v7 = v2;
  v3 = __38__WBTabCollection_mutableTabWithUUID___block_invoke_2(v6);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

WBMutableTab *__38__WBTabCollection_mutableTabWithUUID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithUUID:*(a1 + 40)];

  if (v3)
  {
    v4 = [(WBTab *)[WBMutableTab alloc] initWithBookmark:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tabWithUUID:(id)a3
{
  v3 = [(WBTabCollection *)self mutableTabWithUUID:a3];

  return v3;
}

- (BOOL)deleteTabs:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_containsObjectPassingTest:&__block_literal_global_82];
  MEMORY[0x2743D62A0](v17, @"com.apple.WebBookmarks.WBTabCollection");
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__WBTabCollection_deleteTabs___block_invoke_2;
  block[3] = &unk_279E768C0;
  v10 = v4;
  v11 = &v13;
  block[4] = self;
  v12 = v5;
  v7 = v4;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v17);
  return self;
}

void __30__WBTabCollection_deleteTabs___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__WBTabCollection_deleteTabs___block_invoke_3;
  v4[3] = &unk_279E75968;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  *(*(*(a1 + 48) + 8) + 24) = [v2 performDatabaseUpdatesWithTransaction:v4 secureDelete:*(a1 + 56)];
}

uint64_t __30__WBTabCollection_deleteTabs___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _bookmarksForTabs:*(a1 + 40)];
  v3 = [*(a1 + 32) _collection];
  v4 = [v3 _deleteBookmarks:v2 leaveTombstone:1];

  return v4;
}

- (BOOL)insertTab:(id)a3 inTabGroup:(id)a4 afterTab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  MEMORY[0x2743D62A0](v25, @"com.apple.WebBookmarks.WBTabCollection");
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  databaseQueue = self->_databaseQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__WBTabCollection_insertTab_inTabGroup_afterTab___block_invoke;
  v16[3] = &unk_279E76BB8;
  v19 = v9;
  v20 = &v21;
  v16[4] = self;
  v17 = v8;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_sync(databaseQueue, v16);
  LOBYTE(v10) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v25);
  return v10;
}

void __49__WBTabCollection_insertTab_inTabGroup_afterTab___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _collection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__WBTabCollection_insertTab_inTabGroup_afterTab___block_invoke_2;
  v9[3] = &unk_279E76B90;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  *(*(*(a1 + 64) + 8) + 24) = [v3 performDatabaseUpdatesWithTransaction:v9 secureDelete:0];
}

uint64_t __49__WBTabCollection_insertTab_inTabGroup_afterTab___block_invoke_2(id *a1)
{
  v2 = [a1[4] bookmark];
  v3 = [a1[5] _collection];
  v4 = [a1[6] uuid];
  v5 = [v3 bookmarkWithUUID:v4];

  [v2 _setSyncable:{objc_msgSend(a1[7], "isSyncable")}];
  v6 = [a1[5] _insertBookmark:v2 afterBookmark:v5 inFolderWithID:{objc_msgSend(a1[7], "identifier")}];

  return v6;
}

- (id)tabUUIDForServerID:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__WBTabCollection_tabUUIDForServerID___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __38__WBTabCollection_tabUUIDForServerID___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__WBTabCollection_tabUUIDForServerID___block_invoke_2;
  v6[3] = &unk_279E76AF8;
  v2 = a1[5];
  v6[4] = a1[4];
  v7 = v2;
  v3 = __38__WBTabCollection_tabUUIDForServerID___block_invoke_2(v6);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __38__WBTabCollection_tabUUIDForServerID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithServerID:*(a1 + 40) excludeDeletedBookmarks:1];

  if (!v3 || ([v3 isFolder] & 1) != 0 || objc_msgSend(v3, "subtype"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 UUID];
  }

  return v4;
}

- (BOOL)insertTabs:(id)a3 inTabGroup:(id)a4 afterTab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  MEMORY[0x2743D62A0](v25, @"com.apple.WebBookmarks.WBTabCollection");
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  databaseQueue = self->_databaseQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__WBTabCollection_insertTabs_inTabGroup_afterTab___block_invoke;
  v16[3] = &unk_279E76BB8;
  v19 = v8;
  v20 = &v21;
  v16[4] = self;
  v17 = v10;
  v18 = v9;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_sync(databaseQueue, v16);
  LOBYTE(self) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v25);
  return self;
}

void __50__WBTabCollection_insertTabs_inTabGroup_afterTab___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__WBTabCollection_insertTabs_inTabGroup_afterTab___block_invoke_2;
  v8[3] = &unk_279E76B90;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  *(*(*(a1 + 64) + 8) + 24) = [v2 performDatabaseUpdatesWithTransaction:v8 secureDelete:0];
}

uint64_t __50__WBTabCollection_insertTabs_inTabGroup_afterTab___block_invoke_2(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _collection];
  v3 = [a1[5] uuid];
  v4 = [v2 bookmarkWithUUID:v3];

  v5 = [a1[6] identifier];
  [a1[7] safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_84];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v9);
        [v11 setSyncable:{objc_msgSend(a1[6], "isSyncable", v15)}];
        v4 = [v11 bookmark];
        if (([a1[4] _insertBookmark:v4 afterBookmark:v10 inFolderWithID:v5] & 1) == 0)
        {

          v12 = 0;
          goto LABEL_11;
        }

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [v6 makeObjectsPerformSelector:sel_markClean];
  v12 = 1;
  v10 = v4;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id __50__WBTabCollection_insertTabs_inTabGroup_afterTab___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];

  return v2;
}

- (BOOL)updateTabs:(id)a3 inTabGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[WBTabCollection _bookmarksForTabs:syncable:](self, "_bookmarksForTabs:syncable:", v6, [v7 isSyncable]);
  MEMORY[0x2743D62A0](v21, @"com.apple.WebBookmarks.WBTabCollection");
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__WBTabCollection_updateTabs_inTabGroup___block_invoke;
  block[3] = &unk_279E76828;
  block[4] = self;
  v14 = v8;
  v15 = v7;
  v16 = &v17;
  v10 = v7;
  v11 = v8;
  dispatch_sync(databaseQueue, block);
  LOBYTE(v8) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v21);

  return v8;
}

void __41__WBTabCollection_updateTabs_inTabGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 56) + 8) + 24) = [v2 updateBookmarks:*(a1 + 40) inFolderWithID:objc_msgSend(*(a1 + 48) secureDelete:{"identifier"), objc_msgSend(*(a1 + 48), "isPrivateBrowsing")}];
}

- (void)updateTabsInTabGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WBTabCollection *)self flushDeletedTabsInTabGroup:v6 completionHandler:0];
  v8 = [v6 isSyncable];
  v9 = [v6 allTabs];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__WBTabCollection_updateTabsInTabGroup_completionHandler___block_invoke;
  v16[3] = &unk_279E76BE0;
  v20 = v8;
  v10 = v6;
  v17 = v10;
  v18 = v9;
  v19 = self;
  v11 = v9;
  [v11 enumerateObjectsUsingBlock:v16];
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WBTabCollection_updateTabsInTabGroup_completionHandler___block_invoke_89;
  block[3] = &unk_279E76C08;
  v15 = v7;
  v13 = v7;
  dispatch_async(databaseQueue, block);
}

void __58__WBTabCollection_updateTabsInTabGroup_completionHandler___block_invoke(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 56) == [v5 isSyncable])
  {
    if (a3)
    {
      a3 = [*(a1 + 40) objectAtIndexedSubscript:&a3[-1].isa + 7];
    }

    if ([v5 wasAdded])
    {
      v6 = *(a1 + 48);
      if (*(a1 + 56) == 1)
      {
        v13 = v5;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
        [v6 insertItemsIntoPlace:v7 inParent:*(a1 + 32) completionHandler:0];
      }

      else
      {
        v12 = v5;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
        [v6 insertItems:v7 inParent:*(a1 + 32) afterItem:a3 completionHandler:0];
      }
    }

    else
    {
      if ([v5 wasMoved])
      {
        v10 = *(a1 + 48);
        if (*(a1 + 56) == 1)
        {
          [v10 reorderItemIntoPlace:v5 completionHandler:0];
        }

        else
        {
          [v10 reorderItem:v5 afterItem:a3 completionHandler:0];
        }
      }

      if ([v5 wasModified])
      {
        [*(a1 + 48) saveItem:v5 completionHandler:0];
      }
    }

    [v5 markClean];
  }

  else
  {
    a3 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
    {
      v8 = [v5 privacyPreservingDescription];
      v9 = [*(a1 + 32) privacyPreservingDescription];
      __58__WBTabCollection_updateTabsInTabGroup_completionHandler___block_invoke_cold_1(v8, v9, buf, a3);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __58__WBTabCollection_updateTabsInTabGroup_completionHandler___block_invoke_89(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)flushDeletedTabsInTabGroup:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 deletedTabs];
  v9 = [v8 copy];

  if ([v9 count])
  {
    v10 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v9 count];
      v12 = [v6 privacyPreservingDescription];
      *buf = 134349314;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Flushing %{public}zu deleted tabs in tab group: %{public}@", buf, 0x16u);
    }
  }

  [v6 clearDeletedTabs];
  v13 = [v6 isSyncable];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__WBTabCollection_flushDeletedTabsInTabGroup_completionHandler___block_invoke;
  v18[3] = &unk_279E76C30;
  v14 = v6;
  v19 = v14;
  v15 = v9;
  v20 = v15;
  v16 = v7;
  v21 = self;
  v22 = v16;
  [(WBTabCollection *)self deleteItems:v15 leaveTombstones:v13 completionHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __64__WBTabCollection_flushDeletedTabsInTabGroup_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setDeletedTabs:*(a1 + 40)];
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(*(a1 + 48) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__WBTabCollection_flushDeletedTabsInTabGroup_completionHandler___block_invoke_2;
    block[3] = &unk_279E76C08;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

- (id)topScopedBookmarkListForTabGroup:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_shouldPrepareBackgroundTaskExpiration)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 privacyPreservingDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Background task will expire soon. Block reading bookmarks. %{public}@", &buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    MEMORY[0x2743D62A0](v14, @"com.apple.WebBookmarks.WBTabCollection");
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__4;
    v18 = __Block_byref_object_dispose__4;
    v19 = 0;
    databaseQueue = self->_databaseQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__WBTabCollection_topScopedBookmarkListForTabGroup___block_invoke;
    v11[3] = &unk_279E766C8;
    p_buf = &buf;
    v11[4] = self;
    v12 = v4;
    dispatch_sync(databaseQueue, v11);
    v7 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v14);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

void __52__WBTabCollection_topScopedBookmarkListForTabGroup___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 topScopedBookmarkListForTabGroup:*(a1 + 40) onQueue:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)createTopScopedBookmarkListIfNeededForTabGroup:(id)a3
{
  v5 = a3;
  v4 = [(WBTabCollection *)self _collection];
  if ([v4 allowsScopedBookmarksInTabGroup:v5])
  {
    [v4 createTopScopedBookmarkListForTabGroup:v5];
  }
}

- (id)scopedBookmarkListWithID:(int)a3
{
  MEMORY[0x2743D62A0](v16, @"com.apple.WebBookmarks.WBTabCollection");
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__WBTabCollection_scopedBookmarkListWithID___block_invoke;
  v8[3] = &unk_279E76C80;
  v8[4] = self;
  v8[5] = &v10;
  v9 = a3;
  dispatch_sync(databaseQueue, v8);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v16);

  return v6;
}

void __44__WBTabCollection_scopedBookmarkListWithID___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__WBTabCollection_scopedBookmarkListWithID___block_invoke_2;
  v5[3] = &unk_279E76C58;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v2 = __44__WBTabCollection_scopedBookmarkListWithID___block_invoke_2(v5);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id __44__WBTabCollection_scopedBookmarkListWithID___block_invoke_2(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithID:*(a1 + 40)];

  if ([v3 subtype] == 1 && (objc_msgSend(v3, "isFolder") & 1) != 0)
  {
    v4 = [*(a1 + 32) _bookmarkListWithFolderID:*(a1 + 40) usingFilter:0 options:8];
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) _descriptionForScopedBookmark:v3];
      __44__WBTabCollection_scopedBookmarkListWithID___block_invoke_2_cold_1(v7, v10, v6);
    }

    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

void __64__WBTabCollection_scopedBookmarkListWithID_filteredUsingString___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__WBTabCollection_scopedBookmarkListWithID_filteredUsingString___block_invoke_2;
  v6[3] = &unk_279E76CA8;
  v2 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = v2;
  v3 = __64__WBTabCollection_scopedBookmarkListWithID_filteredUsingString___block_invoke_2(v6);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __64__WBTabCollection_scopedBookmarkListWithID_filteredUsingString___block_invoke_2(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithID:*(a1 + 48)];

  if (!*(a1 + 48) || [v3 subtype] == 1 && objc_msgSend(v3, "isFolder"))
  {
    if ([*(a1 + 40) length])
    {
      v4 = 24;
    }

    else
    {
      v4 = 8;
    }

    v5 = [*(a1 + 32) _bookmarkListWithFolderID:*(a1 + 48) usingFilter:*(a1 + 40) options:v4];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = [*(a1 + 32) _descriptionForScopedBookmark:v3];
      __64__WBTabCollection_scopedBookmarkListWithID_filteredUsingString___block_invoke_2_cold_1(v8, v11, v7);
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)scopedBookmarkWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    MEMORY[0x2743D62A0](v17, @"com.apple.WebBookmarks.WBTabCollection");
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__4;
    v15 = __Block_byref_object_dispose__4;
    v16 = 0;
    databaseQueue = self->_databaseQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__WBTabCollection_scopedBookmarkWithUUID___block_invoke;
    v8[3] = &unk_279E766C8;
    v10 = &v11;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(databaseQueue, v8);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v17);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __42__WBTabCollection_scopedBookmarkWithUUID___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__WBTabCollection_scopedBookmarkWithUUID___block_invoke_2;
  v6[3] = &unk_279E76CD0;
  v2 = a1[5];
  v6[4] = a1[4];
  v7 = v2;
  v3 = __42__WBTabCollection_scopedBookmarkWithUUID___block_invoke_2(v6);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __42__WBTabCollection_scopedBookmarkWithUUID___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithUUID:*(a1 + 40)];

  if (v3 && ([v3 subtype] != 1 || objc_msgSend(v3, "isFolder")))
  {
    v4 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 32) _descriptionForScopedBookmark:v3];
      __42__WBTabCollection_scopedBookmarkWithUUID___block_invoke_2_cold_1(v5, v6, v9, v4);
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_descriptionForScopedBookmark:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 subtype];
  v6 = [v3 isFolder];
  v7 = @"non-scoped";
  if (v5 == 1)
  {
    v7 = @"scoped";
  }

  v8 = @"bookmark";
  if (v6)
  {
    v8 = @"folder";
  }

  v9 = [v4 stringWithFormat:@"%@ %@", v7, v8];

  return v9;
}

- (id)syncDataForItem:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__WBTabCollection_syncDataForItem___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __35__WBTabCollection_syncDataForItem___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _collection];
  v2 = [*(a1 + 40) bookmark];
  v3 = [v6 syncDataForBookmark:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)syncDataForItemWithID:(int)a3
{
  MEMORY[0x2743D62A0](v16, @"com.apple.WebBookmarks.WBTabCollection");
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__WBTabCollection_syncDataForItemWithID___block_invoke;
  v8[3] = &unk_279E76C80;
  v8[4] = self;
  v8[5] = &v10;
  v9 = a3;
  dispatch_sync(databaseQueue, v8);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v16);

  return v6;
}

void __41__WBTabCollection_syncDataForItemWithID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 syncDataForBookmarkID:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (WBBookmarkDatabaseSyncData)databaseSyncData
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WBTabCollection_databaseSyncData__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

void __35__WBTabCollection_databaseSyncData__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 databaseSyncData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)recordIDForTab:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__WBTabCollection_recordIDForTab___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __34__WBTabCollection_recordIDForTab___block_invoke(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__WBTabCollection_recordIDForTab___block_invoke_2;
  v6[3] = &unk_279E76CF8;
  v2 = a1[5];
  v6[4] = a1[4];
  v7 = v2;
  v3 = __34__WBTabCollection_recordIDForTab___block_invoke_2(v6);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id __34__WBTabCollection_recordIDForTab___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  v3 = [*(a1 + 40) bookmark];
  v4 = [v2 syncDataForBookmark:v3];
  v5 = [v4 record];
  v6 = [v5 recordID];

  if (!v6)
  {
    v7 = [*(a1 + 40) bookmark];
    v8 = [v7 serverID];

    if ([v8 length])
    {
      v9 = [*(a1 + 40) bookmark];
      v10 = [v2 syncDataForBookmarkID:{objc_msgSend(v9, "parentID")}];

      v11 = [v10 record];
      v12 = [v11 recordID];
      v13 = [v12 zoneID];

      v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v8 zoneID:v13];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_shareRecordForTabGroup:(id)a3
{
  v4 = a3;
  v5 = [(WBTabCollection *)self _collection];
  v6 = [v4 bookmark];
  v7 = [v5 syncDataForBookmark:v6];
  v8 = [v7 shareRecord];

  return v8;
}

- (id)shareRecordForTabGroup:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__WBTabCollection_shareRecordForTabGroup___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

uint64_t __42__WBTabCollection_shareRecordForTabGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shareRecordForTabGroup:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)shareRecordForTabGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

void __60__WBTabCollection_shareRecordForTabGroup_completionHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _shareRecordForTabGroup:*(a1 + 40)];
  v2 = *(*(*(a1 + 56) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)setHasSharedTabGroupsWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v7 = buf;
    v8 = 0x2020000000;
    operator new();
  }

  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __62__WBTabCollection_setHasSharedTabGroupsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setHasSharedTabGroups];
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v2);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)activeParticipantsInTabGroup:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4;
  v37 = __Block_byref_object_dispose__4;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = 0;
  MEMORY[0x2743D62A0](v26, @"com.apple.WebBookmarks.WBTabCollection");
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WBTabCollection_activeParticipantsInTabGroup___block_invoke;
  block[3] = &unk_279E76D48;
  block[4] = self;
  v6 = v4;
  v23 = v6;
  v24 = &v33;
  v25 = &v27;
  dispatch_sync(databaseQueue, block);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v26);
  if (v34[5])
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v34[5];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v39 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (([v12 isCurrentUser] & 1) == 0 && objc_msgSend(v12, "acceptanceStatus") == 2)
          {
            v13 = v28[5];
            v14 = [v12 safari_shareParticipantIdentifier];
            LODWORD(v13) = [v13 containsObject:v14];

            if (v13)
            {
              [v7 addObject:v12];
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v18 objects:v39 count:16];
      }

      while (v9);
    }

    v15 = [v7 copy];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __48__WBTabCollection_activeParticipantsInTabGroup___block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) _collection];
  v2 = [*(a1 + 40) bookmark];
  v3 = [v13 syncDataForBookmark:v2];
  v4 = [v3 shareRecord];

  if (v4)
  {
    v5 = [v4 participants];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 40) bookmark];
    v9 = [v8 serverID];
    v10 = [v13 activeParticipantsInTabGroupWithServerID:v9];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)activeParticipantsInTab:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  MEMORY[0x2743D62A0](v16, @"com.apple.WebBookmarks.WBTabCollection");
  databaseQueue = self->_databaseQueue;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __43__WBTabCollection_activeParticipantsInTab___block_invoke;
  v12 = &unk_279E766C8;
  v15 = &v17;
  v13 = self;
  v6 = v4;
  v14 = v6;
  dispatch_sync(databaseQueue, &v9);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v16);
  v7 = [(WBTabCollection *)self _activeParticipantsFromParticipantData:v18[5], v9, v10, v11, v12, v13];
  _Block_object_dispose(&v17, 8);

  return v7;
}

uint64_t __43__WBTabCollection_activeParticipantsInTab___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _participantDataForTab:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)getActiveParticipantsInTab:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

void __64__WBTabCollection_getActiveParticipantsInTab_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _participantDataForTab:*(a1 + 40)];
  v3 = *(*(*(a1 + 56) + 8) + 24);
  if (v3)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
    MEMORY[0x2743D62C0]();
  }

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __64__WBTabCollection_getActiveParticipantsInTab_completionHandler___block_invoke_2;
  v11 = &unk_279E76D70;
  v4 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__WBTabCollection_getActiveParticipantsInTab_completionHandler___block_invoke_3;
  v6[3] = &unk_279E76D70;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  __64__WBTabCollection_getActiveParticipantsInTab_completionHandler___block_invoke_3(v6, v2);
}

void __64__WBTabCollection_getActiveParticipantsInTab_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _activeParticipantsFromParticipantData:a2];
  (*(v2 + 16))(v2);
}

void __64__WBTabCollection_getActiveParticipantsInTab_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _activeParticipantsFromParticipantData:a2];
  (*(v2 + 16))(v2);
}

- (id)_participantDataForTab:(id)a3
{
  v4 = a3;
  v5 = [(WBTabCollection *)self _collection];
  v6 = [v4 bookmark];
  v7 = [v5 syncDataForBookmarkID:{objc_msgSend(v6, "parentID")}];
  v8 = [v7 shareRecord];

  if (v8)
  {
    v9 = objc_opt_new();
    v10 = [v8 participants];
    [v9 setParticipants:v10];

    v11 = [v4 bookmark];
    v12 = [v11 serverID];
    v13 = [v5 activeParticipantsInTabWithServerID:v12];
    [v9 setActiveParticipantIDs:v13];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_activeParticipantsFromParticipantData:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v3 = [v18 participants];

  if (v3)
  {
    v17 = [MEMORY[0x277CBEB58] set];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [v18 participants];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          if (([v8 isCurrentUser] & 1) == 0 && objc_msgSend(v8, "acceptanceStatus") == 2)
          {
            v9 = [v8 userIdentity];
            v10 = [v18 activeParticipantIDs];
            v11 = [v9 userRecordID];
            v12 = [v11 recordName];
            v13 = [v10 containsObject:v12];

            if (v13)
            {
              [v17 addObject:v8];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    v14 = [v17 copy];
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)presenceTabUUIDForParticipantIdentifier:(id)a3 inTabGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  MEMORY[0x2743D62A0](v23, @"com.apple.WebBookmarks.WBTabCollection");
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WBTabCollection_presenceTabUUIDForParticipantIdentifier_inTabGroup___block_invoke;
  block[3] = &unk_279E76828;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(databaseQueue, block);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v23);

  return v11;
}

void __70__WBTabCollection_presenceTabUUIDForParticipantIdentifier_inTabGroup___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _collection];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) bookmark];
  v4 = [v3 serverID];
  v5 = [v8 presenceTabUUIDForParticipant:v2 inTabGroupWithServerID:v4];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)tabGroupMatchingShare:(id)a3 inTabGroups:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordID];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__WBTabCollection_tabGroupMatchingShare_inTabGroups___block_invoke;
  v12[3] = &unk_279E76D98;
  v13 = v8;
  v14 = self;
  v9 = v8;
  v10 = [v7 safari_firstObjectPassingTest:v12];

  return v10;
}

uint64_t __53__WBTabCollection_tabGroupMatchingShare_inTabGroups___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) shareRecordForTabGroup:a2];
  v4 = [v3 recordID];
  v5 = [v2 isEqual:v4];

  return v5;
}

- (id)_profilesQuery
{
  v2 = [[WebBookmarkListQuery alloc] initWithBookmarksWhere:@"parent = 0 AND syncable = 1 AND type = 1 AND subtype = 2 AND special_id = 0" folderID:0 orderBy:@"order_index ASC" usingFilter:0];

  return v2;
}

- (id)mutableProfileWithIdentifier:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__WBTabCollection_mutableProfileWithIdentifier___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __48__WBTabCollection_mutableProfileWithIdentifier___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _collection];
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithUUID:*(a1 + 40)];
  v4 = [v7 profileForBookmark:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)devicesForProfile:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__WBTabCollection_devicesForProfile___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __37__WBTabCollection_devicesForProfile___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 devicesForProfile:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)profileWithServerID:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__WBTabCollection_profileWithServerID___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __39__WBTabCollection_profileWithServerID___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _collection];
  v2 = [*(a1 + 32) _collection];
  v3 = [v2 bookmarkWithServerID:*(a1 + 40) excludeDeletedBookmarks:1];
  v4 = [v7 profileForBookmark:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)hasMultipleProfiles
{
  MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WBTabCollection");
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WBTabCollection_hasMultipleProfiles__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
  return self;
}

void __38__WBTabCollection_hasMultipleProfiles__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _profilesQuery];
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 40) + 8) + 24) = [v3 countInCollection:v2] > 1;
}

- (id)windowStateWithUUID:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v18, @"com.apple.WebBookmarks.WBTabCollection");
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__WBTabCollection_windowStateWithUUID___block_invoke;
  v9[3] = &unk_279E766C8;
  v10 = v4;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v18);

  return v7;
}

void __39__WBTabCollection_windowStateWithUUID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _collection];
  v2 = [v5 windowStateWithUUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)windowStates
{
  MEMORY[0x2743D62A0](v13, @"com.apple.WebBookmarks.WBTabCollection");
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__WBTabCollection_windowStates__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(databaseQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v13);

  return v4;
}

uint64_t __31__WBTabCollection_windowStates__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) windowStates];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)closeWindowState:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__WBTabCollection_closeWindowState___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

void __36__WBTabCollection_closeWindowState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 48) + 8) + 24) = [v2 closeWindowState:*(a1 + 40)];
}

- (BOOL)deleteWindowState:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__WBTabCollection_deleteWindowState___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

void __37__WBTabCollection_deleteWindowState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 48) + 8) + 24) = [v2 deleteWindowState:*(a1 + 40)];
}

- (BOOL)deleteWindowStates:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__WBTabCollection_deleteWindowStates___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

void __38__WBTabCollection_deleteWindowStates___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 48) + 8) + 24) = [v2 deleteWindowStates:*(a1 + 40)];
}

- (void)deleteWindowStates:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __56__WBTabCollection_deleteWindowStates_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  [v2 deleteWindowStates:*(a1 + 40)];

  v3 = *(*(*(a1 + 56) + 8) + 24);
  if (v3)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (BOOL)deleteAllWindowStates
{
  MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WBTabCollection");
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WBTabCollection_deleteAllWindowStates__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
  return self;
}

void __40__WBTabCollection_deleteAllWindowStates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 deleteAllWindowStates];
}

- (BOOL)deleteWindowsNotInLastSession
{
  MEMORY[0x2743D62A0](v10, @"com.apple.WebBookmarks.WBTabCollection");
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WBTabCollection_deleteWindowsNotInLastSession__block_invoke;
  block[3] = &unk_279E76070;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(databaseQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v10);
  return self;
}

void __48__WBTabCollection_deleteWindowsNotInLastSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _deleteWindowsNotInLastSession];
}

- (void)deleteWindowsNotInLastSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v7 = buf;
    v8 = 0x2020000000;
    operator new();
  }

  v5 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __70__WBTabCollection_deleteWindowsNotInLastSessionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  [v2 _deleteWindowsNotInLastSession];

  v3 = *(*(*(a1 + 48) + 8) + 24);
  if (v3)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (BOOL)saveWindowState:(id)a3
{
  v4 = a3;
  MEMORY[0x2743D62A0](v15, @"com.apple.WebBookmarks.WBTabCollection");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  databaseQueue = self->_databaseQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__WBTabCollection_saveWindowState___block_invoke;
  v8[3] = &unk_279E766C8;
  v9 = v4;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, v8);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v15);
  return self;
}

void __35__WBTabCollection_saveWindowState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  *(*(*(a1 + 48) + 8) + 24) = [v2 saveWindowState:*(a1 + 40)];
}

- (void)saveWindowState:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    operator new();
  }

  v8 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }
}

uint64_t __53__WBTabCollection_saveWindowState_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  [v2 saveWindowState:*(a1 + 40)];

  v3 = *(*(*(a1 + 56) + 8) + 24);
  if (v3)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)saveWindowRestorationArchiveData:(id)a3 forWindowUUIDString:(id)a4 completionHandler:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WBS_LOG_CHANNEL_PREFIXTabGroup();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Queueing save operation for Window(%{public}@) restoration archive(%p).", buf, 0x16u);
  }

  if (!self->_shouldPrepareBackgroundTaskExpiration)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    operator new();
  }

  v12 = WBS_LOG_CHANNEL_PREFIXBookmarks();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Background task will expire soon. Block performing database task", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __90__WBTabCollection_saveWindowRestorationArchiveData_forWindowUUIDString_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collection];
  [v2 saveWindowRestorationArchiveData:*(a1 + 40) forWindowUUIDString:*(a1 + 48)];

  v3 = *(*(*(a1 + 64) + 8) + 24);
  if (v3)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v3);
    MEMORY[0x2743D62C0]();
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (id)_bookmarksForTabs:(id)a3
{
  v3 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_122];

  return v3;
}

id __37__WBTabCollection__bookmarksForTabs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bookmark];

  return v2;
}

- (id)_bookmarksForTabs:(id)a3 syncable:(BOOL)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__WBTabCollection__bookmarksForTabs_syncable___block_invoke;
  v6[3] = &__block_descriptor_33_e28___WebBookmark_16__0__WBTab_8l;
  v7 = a4;
  v4 = [a3 safari_mapObjectsUsingBlock:v6];

  return v4;
}

id __46__WBTabCollection__bookmarksForTabs_syncable___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bookmark];
  if (([v3 isInserted] & 1) == 0)
  {
    [v3 _setSyncable:*(a1 + 32)];
  }

  return v3;
}

- (void)_readPropertiesOfBookmark:(id)a3
{
  v7 = a3;
  v4 = [(WBTabCollection *)self _collection];
  v5 = [v7 UUID];
  v6 = [v4 identifierOfBookmarkWithUUID:v5];

  [v7 _setID:v6];
  [v7 _setInserted:v6 != 0x7FFFFFFF];
  [v7 _setOrderIndex:{objc_msgSend(v4, "orderIndexOfBookmark:", v7)}];
  [v7 _setParentID:{objc_msgSend(v4, "parentIdentifierOfBookmarkWithID:", objc_msgSend(v7, "identifier"))}];
  [v7 setModifiedAttributes:{objc_msgSend(v7, "modifiedAttributes") | objc_msgSend(v4, "modifiedAttributesOfBookmark:", v7)}];
}

- (BOOL)_reorderBookmarkIntoPlace:(id)a3
{
  v4 = a3;
  v5 = [(WBTabCollection *)self _collection];
  if ([v4 isSyncable])
  {
    v6 = [v4 syncPosition];
    v7 = [v5 orderIndexOfBookmark:v4 withSyncPosition:v6 inFolderWithID:{objc_msgSend(v4, "parentID")}];
  }

  else
  {
    v7 = [v4 orderIndex];
  }

  v8 = [v5 _reorderBookmark:v4 toIndex:v7 generateSyncPositionIfNeeded:0];

  return v8;
}

- (BOOL)lockSync
{
  v2 = [(WBTabCollection *)self _collection];
  v3 = [objc_opt_class() lockSync];

  return v3;
}

- (void)unlockSync
{
  v2 = [(WBTabCollection *)self _collection];
  [objc_opt_class() unlockSync];
}

- (BOOL)isLockedSync
{
  v2 = [(WBTabCollection *)self _collection];
  v3 = [objc_opt_class() isLockedSync];

  return v3;
}

- (void)performMaintenance
{
  MEMORY[0x2743D62A0](v5, @"com.apple.WebBookmarks.WBTabCollection");
  databaseQueue = self->_databaseQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__WBTabCollection_performMaintenance__block_invoke;
  v4[3] = &unk_279E757C8;
  v4[4] = self;
  dispatch_sync(databaseQueue, v4);
  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v5);
}

void __37__WBTabCollection_performMaintenance__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _collection];
  [v1 performMaintenance];
}

- (BOOL)copyTabsDatabase:(id)a3 hidingSensitiveData:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v9 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
  v36 = self;
  v10 = [WBTabCollection databasePathForConfiguration:v9];

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v12 = MEMORY[0x277CBEBC0];
  v13 = [v10 stringByAppendingString:@"-shm"];
  v35 = a4;
  v14 = [v12 fileURLWithPath:v13];

  v15 = MEMORY[0x277CBEBC0];
  v16 = [v10 stringByAppendingString:@"-wal"];
  v17 = [v15 fileURLWithPath:v16];

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v18 safari_removeFileAtURL:v8 error:a5] & 1) != 0 && objc_msgSend(v18, "copyItemAtURL:toURL:error:", v11, v8, a5))
  {
    v34 = v11;
    v19 = MEMORY[0x277CBEBC0];
    v20 = [v8 path];
    v21 = [v20 stringByAppendingString:@"-shm"];
    v22 = [v19 fileURLWithPath:v21];

    v33 = v22;
    if ([v18 copyItemAtURL:v14 toURL:v22 error:a5])
    {
      v23 = MEMORY[0x277CBEBC0];
      v24 = [v8 path];
      v25 = [v24 stringByAppendingString:@"-wal"];
      v26 = [v23 fileURLWithPath:v25];

      v11 = v34;
      if ([v18 copyItemAtURL:v17 toURL:v26 error:a5])
      {
        v27 = [objc_alloc(MEMORY[0x277D49B00]) initWithURL:v8 queue:v36->_databaseQueue];
        v48 = 0;
        v49 = &v48;
        v50 = 0x3032000000;
        v51 = __Block_byref_object_copy__4;
        v52 = __Block_byref_object_dispose__4;
        v53 = 0;
        v44 = 0;
        v45 = &v44;
        v46 = 0x2020000000;
        v47 = 1;
        databaseQueue = v36->_databaseQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__WBTabCollection_copyTabsDatabase_hidingSensitiveData_error___block_invoke;
        block[3] = &unk_279E76E50;
        v41 = &v44;
        v42 = &v48;
        v29 = v27;
        v38 = v29;
        v39 = v36;
        v43 = v35;
        v40 = &unk_2882696C8;
        dispatch_sync(databaseQueue, block);
        v30 = v49[5];
        if (v30 || (v45[3] & 1) == 0)
        {
          v11 = v34;
          if (a5)
          {
            *a5 = v30;
          }

          [v18 safari_removeFileAtURL:v8 error:0];
          v31 = 0;
        }

        else
        {
          v31 = 1;
          v11 = v34;
        }

        _Block_object_dispose(&v44, 8);
        _Block_object_dispose(&v48, 8);
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
      v11 = v34;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void __62__WBTabCollection_copyTabsDatabase_hidingSensitiveData_error___block_invoke(uint64_t a1)
{
  v126 = *MEMORY[0x277D85DE8];
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __62__WBTabCollection_copyTabsDatabase_hidingSensitiveData_error___block_invoke_2;
  v117[3] = &unk_279E76E28;
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v119 = *(a1 + 56);
  v118 = v1;
  v84 = MEMORY[0x2743D6830](v117);
  v3 = *v2;
  v4 = *(*(v2 + 32) + 8);
  obj = *(v4 + 40);
  v5 = [v3 openWithAccessType:2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 64) + 8);
    v115 = *(v7 + 40);
    v8 = [v6 executeQuery:@"BEGIN IMMEDIATE" error:&v115];
    objc_storeStrong((v7 + 40), v115);
    *(*(*(a1 + 56) + 8) + 24) = v8;
    if (v84[2]())
    {
      v9 = @"BEGIN IMMEDIATE";
    }

    else
    {
      v10 = [*(a1 + 32) fetchQuery:@"PRAGMA secure_delete = ON"];
      [*(*(a1 + 40) + 24) windowStates];
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v83 = v112 = 0u;
      v11 = [v83 countByEnumeratingWithState:&v111 objects:v125 count:16];
      if (v11)
      {
        v12 = *v112;
        v9 = @"BEGIN IMMEDIATE";
        while (2)
        {
          v13 = 0;
          v14 = v9;
          do
          {
            if (*v112 != v12)
            {
              objc_enumerationMutation(v83);
            }

            v15 = [*(*(&v111 + 1) + 8 * v13) privateTabGroup];
            v16 = [v15 identifier];

            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM bookmarks WHERE parent IN (SELECT folder_id FROM folder_ancestors WHERE ancestor_id = %d) OR parent = %d OR id = %d", v16, v16, v16];

            v17 = *(a1 + 32);
            v18 = *(*(a1 + 64) + 8);
            v110 = *(v18 + 40);
            v19 = [v17 executeQuery:v9 error:&v110];
            objc_storeStrong((v18 + 40), v110);
            *(*(*(a1 + 56) + 8) + 24) = v19;
            if (v84[2]())
            {

              goto LABEL_76;
            }

            ++v13;
            v14 = v9;
          }

          while (v11 != v13);
          v11 = [v83 countByEnumeratingWithState:&v111 objects:v125 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v9 = @"BEGIN IMMEDIATE";
      }

      if (*(a1 + 72))
      {
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v20 = [*(a1 + 48) keyEnumerator];
        v76 = v20;
        v21 = 0;
        v22 = [v20 countByEnumeratingWithState:&v106 objects:v124 count:16];
        if (v22)
        {
          v23 = *v107;
          v24 = 0x277CBE000uLL;
          v74 = *v107;
          while (2)
          {
            v25 = 0;
            v73 = v22;
            do
            {
              if (*v107 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(v24 + 2968);
              v79 = *(*(&v106 + 1) + 8 * v25);
              v27 = [*(a1 + 48) objectForKeyedSubscript:?];
              v75 = v25;
              v28 = [v26 setWithArray:v27];

              v29 = *(a1 + 32);
              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"select name from PRAGMA_TABLE_INFO('%@')", v79];
              v77 = [v29 fetchQuery:v30];

              v81 = [MEMORY[0x277CBEB18] array];
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v31 = v77;
              v32 = [v31 countByEnumeratingWithState:&v102 objects:v123 count:16];
              if (v32)
              {
                v33 = *v103;
                while (2)
                {
                  for (i = 0; i != v32; ++i)
                  {
                    if (*v103 != v33)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v35 = [*(*(&v102 + 1) + 8 * i) stringAtIndex:0];
                    if (!v35)
                    {
                      *(*(*(a1 + 56) + 8) + 24) = 0;

                      goto LABEL_48;
                    }

                    if (([v28 containsObject:v35] & 1) == 0)
                    {
                      [v81 addObject:v35];
                      ++v21;
                    }
                  }

                  v32 = [v31 countByEnumeratingWithState:&v102 objects:v123 count:16];
                  if (v32)
                  {
                    continue;
                  }

                  break;
                }
              }

              v36 = [v31 statement];
              [v36 invalidate];

              v100 = 0u;
              v101 = 0u;
              v98 = 0u;
              v99 = 0u;
              v78 = v81;
              v37 = [v78 countByEnumeratingWithState:&v98 objects:v122 count:16];
              if (v37)
              {
                v38 = *v99;
                while (2)
                {
                  v39 = 0;
                  v40 = v9;
                  do
                  {
                    if (*v99 != v38)
                    {
                      objc_enumerationMutation(v78);
                    }

                    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE %@ SET %@ = 'redacted'", v79, *(*(&v98 + 1) + 8 * v39)];

                    v41 = *(a1 + 32);
                    v42 = *(*(a1 + 64) + 8);
                    v97 = *(v42 + 40);
                    v43 = [v41 executeQuery:v9 error:&v97];
                    objc_storeStrong((v42 + 40), v97);
                    *(*(*(a1 + 56) + 8) + 24) = v43;
                    if (v84[2]())
                    {
                      v44 = 0;
                      goto LABEL_41;
                    }

                    ++v39;
                    v40 = v9;
                  }

                  while (v37 != v39);
                  v37 = [v78 countByEnumeratingWithState:&v98 objects:v122 count:16];
                  if (v37)
                  {
                    continue;
                  }

                  break;
                }
              }

              v44 = 1;
LABEL_41:

              v23 = v74;
              if (!v44)
              {
LABEL_48:

                goto LABEL_76;
              }

              v20 = v76;
              v25 = v75 + 1;
              v24 = 0x277CBE000;
            }

            while (v75 + 1 != v73);
            v22 = [v76 countByEnumeratingWithState:&v106 objects:v124 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v45 = [*(a1 + 48) allValues];
        v46 = v21 < [v45 count];

        if (v46)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
        }

        else
        {
          v80 = [*(a1 + 32) fetchQuery:@"SELECT name FROM sqlite_master where type='table'"];
          v82 = [MEMORY[0x277CBEB18] array];
          v96 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v47 = v80;
          v48 = [v47 countByEnumeratingWithState:&v93 objects:v121 count:16];
          if (v48)
          {
            v49 = *v94;
            while (2)
            {
              for (j = 0; j != v48; ++j)
              {
                if (*v94 != v49)
                {
                  objc_enumerationMutation(v47);
                }

                v51 = [*(*(&v93 + 1) + 8 * j) stringAtIndex:0];
                if (!v51)
                {
                  *(*(*(a1 + 56) + 8) + 24) = 0;

                  goto LABEL_73;
                }

                [v82 addObject:v51];
              }

              v48 = [v47 countByEnumeratingWithState:&v93 objects:v121 count:16];
              if (v48)
              {
                continue;
              }

              break;
            }
          }

          v52 = [v47 statement];
          [v52 invalidate];

          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v53 = v82;
          v54 = [v53 countByEnumeratingWithState:&v89 objects:v120 count:16];
          if (v54)
          {
            v55 = *v90;
            while (2)
            {
              for (k = 0; k != v54; ++k)
              {
                if (*v90 != v55)
                {
                  objc_enumerationMutation(v53);
                }

                v57 = *(*(&v89 + 1) + 8 * k);
                v58 = [*(a1 + 48) objectForKeyedSubscript:v57];
                if (v58)
                {
                }

                else if (([v57 isEqualToString:@"sqlite_sequence"] & 1) == 0)
                {
                  v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"DROP TABLE IF EXISTS %@", v57];

                  v60 = *(a1 + 32);
                  v61 = *(*(a1 + 64) + 8);
                  v88 = *(v61 + 40);
                  v62 = [v60 executeQuery:v59 error:&v88];
                  objc_storeStrong((v61 + 40), v88);
                  *(*(*(a1 + 56) + 8) + 24) = v62;
                  if (v84[2]())
                  {

                    goto LABEL_75;
                  }

                  v9 = v59;
                }
              }

              v54 = [v53 countByEnumeratingWithState:&v89 objects:v120 count:16];
              if (v54)
              {
                continue;
              }

              break;
            }
          }

          v63 = [v53 count];
          if (v63 <= [*(a1 + 48) count])
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_73:
            v59 = v9;
          }

          else
          {

            v64 = *(a1 + 32);
            v65 = *(*(a1 + 64) + 8);
            v87 = *(v65 + 40);
            v66 = [v64 executeQuery:@"COMMIT" error:&v87];
            objc_storeStrong((v65 + 40), v87);
            *(*(*(a1 + 56) + 8) + 24) = v66;
            if (v84[2]())
            {
              v59 = @"COMMIT";
            }

            else
            {
              v68 = *(a1 + 32);
              v69 = *(*(a1 + 64) + 8);
              v86 = *(v69 + 40);
              v70 = [v68 executeQuery:@"VACUUM" error:&v86];
              objc_storeStrong((v69 + 40), v86);
              *(*(*(a1 + 56) + 8) + 24) = v70;
              if (v84[2]())
              {
                v59 = @"VACUUM";
              }

              else
              {
                v71 = [*(a1 + 32) fetchQuery:@"PRAGMA wal_checkpoint(TRUNCATE)"];
                v72 = [v71 nextObject];
                *(*(*(a1 + 56) + 8) + 24) = [v72 intAtIndex:0] == 0;
                [*(a1 + 32) close];

                v59 = @"PRAGMA wal_checkpoint(TRUNCATE)";
              }
            }
          }

LABEL_75:

          v9 = v59;
        }
      }

      else
      {
        [*(a1 + 32) close];
      }

LABEL_76:
    }
  }

  v67 = *MEMORY[0x277D85DE8];
}

uint64_t __62__WBTabCollection_copyTabsDatabase_hidingSensitiveData_error___block_invoke_2(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && !*(*(*(a1 + 48) + 8) + 40))
  {
    return 0;
  }

  [*(a1 + 32) close];
  return 1;
}

- (void)_addProfile:(id)a3 toLog:(id)a4 hidingSensitiveData:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v7 = a4;
  if (v5)
  {
    [v9 privacyPreservingDescription];
  }

  else
  {
    [v9 description];
  }
  v8 = ;
  [v7 appendFormat:@"%@\n\n", v8];
}

- (void)_addTabGroup:(id)a3 toLog:(id)a4 hidingSensitiveData:(BOOL)a5
{
  v5 = a5;
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = a4;
  v22 = v7;
  if (v5)
  {
    [v7 privacyPreservingDescription];
  }

  else
  {
    [v7 description];
  }
  v8 = ;
  [v24 appendFormat:@"%@\n", v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v7 tabs];
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = MEMORY[0x277CCACA8];
        if (v5)
        {
          v14 = [*(*(&v25 + 1) + 8 * i) url];
          v15 = [v14 absoluteString];
          v16 = [v15 safari_urlHashesOfComponents];
          v17 = [v13 stringWithFormat:@"hashed url: %@, ", v16];
        }

        else
        {
          v14 = [*(*(&v25 + 1) + 8 * i) title];
          v15 = [v12 url];
          v17 = [v13 stringWithFormat:@"title: %@, url: %@, ", v14, v15];
        }

        v18 = [v12 uuid];
        v19 = [v12 bookmark];
        v20 = [v19 serverID];
        [v24 appendFormat:@"Tab, %@identifier: %@, server_id: %@\n", v17, v18, v20];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  [v24 appendString:@"\n\n"];
  v21 = *MEMORY[0x277D85DE8];
}

void __39__WBTabCollection__bookmarksFromItems___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138477827;
  v4 = a1;
  _os_log_fault_impl(&dword_272C20000, a2, OS_LOG_TYPE_FAULT, "Skipping item %{private}@ because underlying bookmark is nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__WBTabCollection_updateTabsInTabGroup_completionHandler___block_invoke_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_272C20000, log, OS_LOG_TYPE_FAULT, "Not updating tab %{public}@ in tab group %{public}@ because they are different types", buf, 0x16u);
}

void __44__WBTabCollection_scopedBookmarkListWithID___block_invoke_2_cold_1(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_4(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&dword_272C20000, v5, OS_LOG_TYPE_ERROR, "Could not load a scoped bookmark folder with the id(%d) of a %@.", v4, 0x12u);
}

void __64__WBTabCollection_scopedBookmarkListWithID_filteredUsingString___block_invoke_2_cold_1(void *a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_0_4(a1, a2, a3, 1.5047e-36);
  _os_log_error_impl(&dword_272C20000, v5, OS_LOG_TYPE_ERROR, "Could not filter scoped bookmark folder with the id(%d) of a %@.", v4, 0x12u);
}

void __42__WBTabCollection_scopedBookmarkWithUUID___block_invoke_2_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Could not load a scoped bookmark with uuid(%{public}@) of a %@.", buf, 0x16u);
}

@end