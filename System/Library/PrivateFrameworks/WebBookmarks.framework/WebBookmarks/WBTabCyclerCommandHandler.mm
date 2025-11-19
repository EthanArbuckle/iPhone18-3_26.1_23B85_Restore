@interface WBTabCyclerCommandHandler
- (WBTabCyclerCommandHandler)initWithTabGroupManager:(id)a3;
- (id)_cyclerRepresentationOfProfile:(id)a3;
- (id)_cyclerRepresentationOfTab:(id)a3;
- (id)_cyclerRepresentationOfTabGroup:(id)a3;
- (id)_cyclerRepresentationOfTabGroupFavorite:(id)a3;
- (id)_cyclerRepresentationOfTopScopedBookmarkListForTabGroup:(id)a3;
- (id)_mutableTabBeforeIndex:(unint64_t)a3 inGroup:(id)a4;
- (id)_profileWithIdentifier:(id)a3;
- (id)_tabBeforeIndex:(unint64_t)a3 inGroup:(id)a4;
- (id)_tabGroupBeforeIndex:(unint64_t)a3 inProfileWithIdentifier:(id)a4;
- (id)_tabGroupFavoriteBeforeIndex:(unint64_t)a3 inList:(id)a4;
- (id)_tabGroupWithIdentifier:(id)a3;
- (id)_tabWithIdentifier:(id)a3;
- (void)_clearLocalProfilesWithCompletionHandler:(id)a3;
- (void)_clearLocalTabGroupsWithCompletionHandler:(id)a3 retryCooldown:(double)a4;
- (void)_clearRemoteProfilesWithCompletionHandler:(id)a3;
- (void)_clearRemoteTabGroupsWithCompletionHandler:(id)a3;
- (void)_deleteProfile:(id)a3 reply:(id)a4;
- (void)_deleteTab:(id)a3 reply:(id)a4;
- (void)_deleteTabGroup:(id)a3 reply:(id)a4;
- (void)_moveTabGroup:(id)a3 toProfileWithIdentifier:(id)a4 atIndex:(unint64_t)a5 reply:(id)a6;
- (void)_setSymbolImageName:(id)a3 forProfileWithIdentifier:(id)a4 reply:(id)a5;
- (void)_setTitle:(id)a3 forProfileWithIdentifier:(id)a4 reply:(id)a5;
- (void)_setTitle:(id)a3 forTabGroupWithUUID:(id)a4 reply:(id)a5;
- (void)_setTitle:(id)a3 forTabWithUUID:(id)a4 reply:(id)a5;
- (void)_startMonitoringSyncStatusWithCompletionHandler:(id)a3;
- (void)_triggerTabGroupSync;
- (void)clearBookmarksWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)createBookmarkListWithTitle:(id)a3 inListWithIdentifier:(id)a4 atIndex:(unint64_t)a5 reply:(id)a6;
- (void)createBookmarkWithTitle:(id)a3 url:(id)a4 inListWithIdentifier:(id)a5 atIndex:(unint64_t)a6 reply:(id)a7;
- (void)createProfileWithTitle:(id)a3 symbolName:(id)a4 inListWithIdentifier:(id)a5 reply:(id)a6;
- (void)dealloc;
- (void)deleteBookmarkWithIdentifier:(id)a3 reply:(id)a4;
- (void)fetchTopLevelBookmarkList:(id)a3;
- (void)moveBookmarkWithIdentifier:(id)a3 intoListWithIdentifier:(id)a4 atIndex:(unint64_t)a5 reply:(id)a6;
- (void)setSymbolImageName:(id)a3 forBookmarkWithIdentifier:(id)a4 reply:(id)a5;
- (void)setTitle:(id)a3 forBookmarkWithIdentifier:(id)a4 reply:(id)a5;
- (void)setURL:(id)a3 forBookmarkWithIdentifier:(id)a4 reply:(id)a5;
- (void)syncBookmarksWithCompletionHandler:(id)a3;
@end

@implementation WBTabCyclerCommandHandler

- (WBTabCyclerCommandHandler)initWithTabGroupManager:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19.receiver = self;
  v19.super_class = WBTabCyclerCommandHandler;
  v6 = [(WBTabCyclerCommandHandler *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabGroupManager, a3);
    v8 = [WBTabCollection alloc];
    v9 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
    v10 = [(WBTabCollection *)v8 initWithConfiguration:v9 openDatabase:1];
    tabCollection = v7->_tabCollection;
    v7->_tabCollection = v10;

    v12 = [objc_alloc(MEMORY[0x277D49F38]) initWithNotificationName:@"com.apple.SafariTabGroupSync.SyncDidFinish"];
    syncAgentNotificationObserver = v7->_syncAgentNotificationObserver;
    v7->_syncAgentNotificationObserver = v12;

    v14 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v7->_tabCollection;
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_272C20000, v14, OS_LOG_TYPE_INFO, "Created Tab Cycler test target with tab collection: %@", buf, 0xCu);
    }

    v16 = v7;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)fetchTopLevelBookmarkList:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D49F08]) initWithTitle:@"tab-group-container-bookmark" uniqueIdentifier:@"tab-group-container-bookmark-uuid"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(WBTabCyclerCommandHandler *)self _cyclerRepresentationOfProfile:*(*(&v13 + 1) + 8 * v10)];
        [v5 addChild:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v4[2](v4, v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)clearBookmarksWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"local and remote";
    if ((v4 & 1) == 0)
    {
      v8 = @"local";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Clearing %@ profiles and tab groups", &v10, 0xCu);
  }

  if (v4)
  {
    [(WBTabCyclerCommandHandler *)self _clearRemoteProfilesWithCompletionHandler:v6];
  }

  else
  {
    [(WBTabCyclerCommandHandler *)self _clearLocalProfilesWithCompletionHandler:v6];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_clearLocalTabGroupsWithCompletionHandler:(id)a3 retryCooldown:(double)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 <= 64.0)
  {
    if ([(WBTabCollection *)self->_tabCollection lockSync])
    {
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __85__WBTabCyclerCommandHandler__clearLocalTabGroupsWithCompletionHandler_retryCooldown___block_invoke_2;
      v20 = &unk_279E773A0;
      v21 = v6;
      [(WBTabCyclerCommandHandler *)self _startMonitoringTabGroupUpdateExpectingMigration:0 completionHandler:&v17];
      tabCollection = self->_tabCollection;
      v9 = [(WBTabCollection *)tabCollection allNamedTabGroupsUnsorted:v17];
      [(WBTabCollection *)tabCollection deleteItems:v9 leaveTombstones:0];

      [(WBTabCollection *)self->_tabCollection unlockSync];
      [(WBTabGroupManager *)self->_tabGroupManager reloadTabGroupsFromDatabaseWithCompletionHandler:0];
      v10 = v21;
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v26 = a4;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Failed to acquire tab collection lock. Retrying after %f seconds.", buf, 0xCu);
      }

      v12 = MEMORY[0x277CBEBB8];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __85__WBTabCyclerCommandHandler__clearLocalTabGroupsWithCompletionHandler_retryCooldown___block_invoke;
      v22[3] = &unk_279E77378;
      v22[4] = self;
      v23 = v6;
      v24 = a4;
      v13 = [v12 timerWithTimeInterval:0 repeats:v22 block:a4];
      clearLocalTabGroupsRetryTimer = self->_clearLocalTabGroupsRetryTimer;
      self->_clearLocalTabGroupsRetryTimer = v13;

      v15 = [MEMORY[0x277CBEB88] mainRunLoop];
      [v15 addTimer:self->_clearLocalTabGroupsRetryTimer forMode:*MEMORY[0x277CBE640]];

      v10 = v23;
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v26 = a4 * 0.5;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Failed to acquire tab collection lock after backing off to a %f second wait. Giving up.", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSTimer *)self->_clearLocalTabGroupsRetryTimer invalidate];
  v3.receiver = self;
  v3.super_class = WBTabCyclerCommandHandler;
  [(WBTabCyclerCommandHandler *)&v3 dealloc];
}

- (void)_clearRemoteTabGroupsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__WBTabCyclerCommandHandler__clearRemoteTabGroupsWithCompletionHandler___block_invoke;
  v6[3] = &unk_279E75530;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v6);
}

void __72__WBTabCyclerCommandHandler__clearRemoteTabGroupsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tabGroups];
  v3 = [v2 count];

  if (v3)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__WBTabCyclerCommandHandler__clearRemoteTabGroupsWithCompletionHandler___block_invoke_2;
    v17[3] = &unk_279E773A0;
    v4 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v4 _startMonitoringSyncStatusWithCompletionHandler:v17];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [*(a1 + 32) tabGroups];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(a1 + 32) + 40) removeTabGroup:*(*(&v13 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
    v12 = *MEMORY[0x277D85DE8];

    v11();
  }
}

- (void)_clearRemoteProfilesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__WBTabCyclerCommandHandler__clearRemoteProfilesWithCompletionHandler___block_invoke;
  v6[3] = &unk_279E75530;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v6);
}

void __71__WBTabCyclerCommandHandler__clearRemoteProfilesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) namedProfiles];
  if ([v2 count])
  {

LABEL_4:
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__WBTabCyclerCommandHandler__clearRemoteProfilesWithCompletionHandler___block_invoke_2;
    v27[3] = &unk_279E773A0;
    v5 = *(a1 + 32);
    v28 = *(a1 + 40);
    [v5 _startMonitoringSyncStatusWithCompletionHandler:v27];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [*(*(a1 + 32) + 40) namedProfiles];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(a1 + 32) + 40) removeProfile:*(*(&v23 + 1) + 8 * i) completionHandler:0];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v8);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [*(*(a1 + 32) + 40) namedTabGroupsForProfileWithIdentifier:{*MEMORY[0x277D49BD8], 0}];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(a1 + 32) + 40) removeTabGroup:*(*(&v19 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v13);
    }

    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = [*(*(a1 + 32) + 40) namedTabGroupsInDefaultProfile];
  v4 = [v3 count];

  if (v4)
  {
    goto LABEL_4;
  }

  v17 = *(*(a1 + 40) + 16);
  v18 = *MEMORY[0x277D85DE8];

  v17();
}

- (void)_clearLocalProfilesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__WBTabCyclerCommandHandler__clearLocalProfilesWithCompletionHandler___block_invoke;
  v10[3] = &unk_279E773A0;
  v11 = v4;
  v5 = v4;
  [(WBTabCyclerCommandHandler *)self _startMonitoringTabGroupUpdateExpectingMigration:0 completionHandler:v10];
  tabCollection = self->_tabCollection;
  v7 = [(WBTabGroupManager *)self->_tabGroupManager namedProfiles];
  [(WBTabCollection *)tabCollection deleteItems:v7 leaveTombstones:0];

  v8 = self->_tabCollection;
  v9 = [(WBTabGroupManager *)self->_tabGroupManager namedTabGroupsInDefaultProfile];
  [(WBTabCollection *)v8 deleteItems:v9 leaveTombstones:0];

  [(WBTabGroupManager *)self->_tabGroupManager reloadTabGroupsFromDatabaseWithCompletionHandler:0];
}

- (void)createBookmarkListWithTitle:(id)a3 inListWithIdentifier:(id)a4 atIndex:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [WBMutableTabGroup alloc];
  v14 = [(WBTabCyclerCommandHandler *)self deviceIdentifier];
  v15 = [(WBTabGroup *)v13 initWithTitle:v12 deviceIdentifier:v14];

  [(WBMutableTabGroup *)v15 setProfileIdentifier:v11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__WBTabCyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke;
  block[3] = &unk_279E75DC8;
  v18 = v15;
  v19 = a5;
  block[4] = self;
  v16 = v15;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v10[2](v10, 1);
}

void __92__WBTabCyclerCommandHandler_createBookmarkListWithTitle_inListWithIdentifier_atIndex_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) profileIdentifier];
  v6 = [v2 _tabGroupBeforeIndex:v3 inProfileWithIdentifier:v4];

  v5 = [*(*(a1 + 32) + 40) insertTabGroup:*(a1 + 40) afterTabGroup:v6];
}

- (void)createBookmarkWithTitle:(id)a3 url:(id)a4 inListWithIdentifier:(id)a5 atIndex:(unint64_t)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v14 hasPrefix:@"TopScopedBookmarkList_"];
  tabGroupManager = self->_tabGroupManager;
  if (!v16)
  {
    v19 = [(WBTabGroupManager *)self->_tabGroupManager tabGroupWithUUID:v14];
    if (v19)
    {
      v32 = [WBMutableTab alloc];
      v33 = [(WBTabCyclerCommandHandler *)self deviceIdentifier];
      v34 = [(WBTab *)v32 initWithTitle:v12 url:v13 deviceIdentifier:v33];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__WBTabCyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke;
      block[3] = &unk_279E773F0;
      block[4] = self;
      v39 = v19;
      v40 = v34;
      v41 = a6;
      v35 = v34;
      dispatch_sync(MEMORY[0x277D85CD0], block);
      v15[2](v15, 1);

      goto LABEL_7;
    }

LABEL_6:
    v15[2](v15, 0);
    goto LABEL_7;
  }

  v37 = a6;
  v18 = [v14 substringFromIndex:{objc_msgSend(@"TopScopedBookmarkList_", "length")}];
  v19 = [(WBTabGroupManager *)tabGroupManager tabGroupWithUUID:v18];

  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = [(WBTabGroupManager *)self->_tabGroupManager topScopedBookmarkListForTabGroup:v19];
  v21 = v12;
  v22 = [WebBookmark alloc];
  [v13 absoluteString];
  v23 = v36 = v13;
  v24 = [v20 folderID];
  v25 = [(WBTabGroupManager *)self->_tabGroupManager deviceIdentifier];
  v26 = [(WebBookmark *)v22 initWithTitle:v21 address:v23 parentID:v24 subtype:1 deviceIdentifier:v25 collectionType:1];

  v27 = [(WBTabCyclerCommandHandler *)self _tabGroupFavoriteBeforeIndex:v37 inList:v20];
  v28 = self->_tabGroupManager;
  v29 = [v20 folderID];
  v30 = [v27 UUID];
  v31 = v29;
  v12 = v21;
  [(WBTabGroupManager *)v28 insertScopedBookmark:v26 inScopedBookmarkFolderWithID:v31 afterBookmarkWithUUID:v30 notify:1];

  v13 = v36;
  v15[2](v15, 1);

LABEL_7:
}

void __92__WBTabCyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) uuid];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__WBTabCyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke_2;
  v6[3] = &unk_279E773C8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 56);
  [v2 updateTabsInTabGroupWithUUID:v3 persist:1 usingBlock:v6];
}

void __92__WBTabCyclerCommandHandler_createBookmarkWithTitle_url_inListWithIdentifier_atIndex_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [*(a1 + 40) _mutableTabBeforeIndex:*(a1 + 48) inGroup:{v4, v8, v9}];
  [v4 insertTabs:v5 afterTab:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)createProfileWithTitle:(id)a3 symbolName:(id)a4 inListWithIdentifier:(id)a5 reply:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [WBProfile alloc];
  v13 = [(WBTabCyclerCommandHandler *)self deviceIdentifier];
  v14 = [(WBProfile *)v12 initWithTitle:v11 symbolImageName:v10 favoritesFolderServerID:@"Favorites Bar" deviceIdentifier:v13];

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __90__WBTabCyclerCommandHandler_createProfileWithTitle_symbolName_inListWithIdentifier_reply___block_invoke;
  v20 = &unk_279E753F0;
  v21 = self;
  v22 = v14;
  v15 = v14;
  dispatch_sync(MEMORY[0x277D85CD0], &v17);
  v16 = [(WBProfile *)v15 identifier:v17];
  v9[2](v9, 1, v16);
}

- (void)deleteBookmarkWithIdentifier:(id)a3 reply:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WBTabCyclerCommandHandler *)self _profileWithIdentifier:v10];
  if (v7)
  {
    [(WBTabCyclerCommandHandler *)self _deleteProfile:v7 reply:v6];
  }

  else
  {
    v8 = [(WBTabCyclerCommandHandler *)self _tabGroupWithIdentifier:v10];
    if (v8)
    {
      [(WBTabCyclerCommandHandler *)self _deleteTabGroup:v8 reply:v6];
    }

    else
    {
      v9 = [(WBTabCyclerCommandHandler *)self _tabWithIdentifier:v10];
      if (v9)
      {
        [(WBTabCyclerCommandHandler *)self _deleteTab:v9 reply:v6];
      }

      else
      {
        v6[2](v6, 0);
      }
    }
  }
}

- (void)_deleteProfile:(id)a3 reply:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__WBTabCyclerCommandHandler__deleteProfile_reply___block_invoke;
  v9[3] = &unk_279E753F0;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  v8 = a4;
  dispatch_sync(MEMORY[0x277D85CD0], v9);
  v8[2](v8, 1);
}

- (void)_deleteTabGroup:(id)a3 reply:(id)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__WBTabCyclerCommandHandler__deleteTabGroup_reply___block_invoke;
  v9[3] = &unk_279E753F0;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  v8 = a4;
  dispatch_sync(MEMORY[0x277D85CD0], v9);
  v8[2](v8, 1);
}

- (void)_deleteTab:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WBTabCyclerCommandHandler__deleteTab_reply___block_invoke;
  block[3] = &unk_279E77418;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __46__WBTabCyclerCommandHandler__deleteTab_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) tabGroupUUID];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__WBTabCyclerCommandHandler__deleteTab_reply___block_invoke_2;
  v4[3] = &unk_279E751B8;
  v5 = *(a1 + 40);
  [v2 updateTabsInTabGroupWithUUID:v3 persist:1 usingBlock:v4];

  (*(*(a1 + 48) + 16))();
}

void __46__WBTabCyclerCommandHandler__deleteTab_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v2 = MEMORY[0x277CBEA60];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v6 count:1];
  [v3 deleteTabs:{v4, v6, v7}];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)moveBookmarkWithIdentifier:(id)a3 intoListWithIdentifier:(id)a4 atIndex:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(WBTabCyclerCommandHandler *)self _tabGroupWithIdentifier:v10];
  if (v13)
  {
    [(WBTabCyclerCommandHandler *)self _moveTabGroup:v13 toProfileWithIdentifier:v11 atIndex:a5 reply:v12];
  }

  else
  {
    v14 = [(WBTabCyclerCommandHandler *)self _tabWithIdentifier:v10];
    v15 = [(WBTabCyclerCommandHandler *)self _tabGroupWithIdentifier:v11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__WBTabCyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke;
    block[3] = &unk_279E77440;
    block[4] = self;
    v19 = v14;
    v20 = v15;
    v22 = a5;
    v21 = v12;
    v16 = v15;
    v17 = v14;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __93__WBTabCyclerCommandHandler_moveBookmarkWithIdentifier_intoListWithIdentifier_atIndex_reply___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 40);
  v8[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) _tabBeforeIndex:*(a1 + 64) inGroup:v4];
  [v2 moveTabs:v3 toTabGroup:v4 afterTab:v5 withoutPersistingTabGroupsWithUUIDStrings:0];

  result = (*(*(a1 + 56) + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_moveTabGroup:(id)a3 toProfileWithIdentifier:(id)a4 atIndex:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(WBTabCyclerCommandHandler *)self _profileWithIdentifier:v11];
  v14 = [v13 identifier];

  if (!v14)
  {
    v12[2](v12, 0);
  }

  v15 = [(WBTabGroupManager *)self->_tabGroupManager namedTabGroupsForProfileWithIdentifier:v11];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __81__WBTabCyclerCommandHandler__moveTabGroup_toProfileWithIdentifier_atIndex_reply___block_invoke;
  v27[3] = &unk_279E77468;
  v16 = v10;
  v28 = v16;
  if ([v15 indexOfObjectPassingTest:v27] >= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a5 + 1;
  }

  v18 = [(WBTabCyclerCommandHandler *)self _tabGroupBeforeIndex:v17 inProfileWithIdentifier:v14];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__WBTabCyclerCommandHandler__moveTabGroup_toProfileWithIdentifier_atIndex_reply___block_invoke_2;
  block[3] = &unk_279E75C98;
  v23 = v16;
  v24 = v14;
  v25 = self;
  v26 = v18;
  v19 = v18;
  v20 = v14;
  v21 = v16;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v12[2](v12, 1);
}

uint64_t __81__WBTabCyclerCommandHandler__moveTabGroup_toProfileWithIdentifier_atIndex_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __81__WBTabCyclerCommandHandler__moveTabGroup_toProfileWithIdentifier_atIndex_reply___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) profileIdentifier];
  v3 = [v2 isEqualToString:*(a1 + 40)];

  v4 = *(*(a1 + 48) + 40);
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = *(a1 + 56);

    return [v4 moveTabGroup:v5 afterTabGroup:v6];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);

    return [v4 moveTabGroup:v5 toProfileWithIdentifier:v8 afterTabGroup:v9];
  }
}

- (void)setTitle:(id)a3 forBookmarkWithIdentifier:(id)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WBTabCyclerCommandHandler *)self _profileWithIdentifier:v8];
  if (v10)
  {
    [(WBTabCyclerCommandHandler *)self _setTitle:v13 forProfileWithIdentifier:v8 reply:v9];
  }

  else
  {
    v11 = [(WBTabCyclerCommandHandler *)self _tabGroupWithIdentifier:v8];
    if (v11)
    {
      [(WBTabCyclerCommandHandler *)self _setTitle:v13 forTabGroupWithUUID:v8 reply:v9];
    }

    else
    {
      v12 = [(WBTabCyclerCommandHandler *)self _tabWithIdentifier:v8];
      if (v12)
      {
        [(WBTabCyclerCommandHandler *)self _setTitle:v13 forTabWithUUID:v8 reply:v9];
      }

      else
      {
        v9[2](v9, 0);
      }
    }
  }
}

- (void)_setTitle:(id)a3 forTabGroupWithUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WBTabCyclerCommandHandler__setTitle_forTabGroupWithUUID_reply___block_invoke;
  block[3] = &unk_279E75D50;
  block[4] = self;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  v12 = a5;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v12[2](v12, 1);
}

void __65__WBTabCyclerCommandHandler__setTitle_forTabGroupWithUUID_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__WBTabCyclerCommandHandler__setTitle_forTabGroupWithUUID_reply___block_invoke_2;
  v3[3] = &unk_279E751B8;
  v4 = *(a1 + 48);
  [v2 updateTabGroupWithUUID:v1 persist:1 usingBlock:v3];
}

- (void)_setTitle:(id)a3 forTabWithUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WBTabCyclerCommandHandler__setTitle_forTabWithUUID_reply___block_invoke;
  block[3] = &unk_279E75D50;
  block[4] = self;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  v12 = a5;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v12[2](v12, 1);
}

void __60__WBTabCyclerCommandHandler__setTitle_forTabWithUUID_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__WBTabCyclerCommandHandler__setTitle_forTabWithUUID_reply___block_invoke_2;
  v3[3] = &unk_279E77490;
  v4 = *(a1 + 48);
  [v2 updateTabWithUUID:v1 persist:1 notify:1 usingBlock:v3];
}

- (void)_setTitle:(id)a3 forProfileWithIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WBTabCyclerCommandHandler__setTitle_forProfileWithIdentifier_reply___block_invoke;
  block[3] = &unk_279E75D50;
  block[4] = self;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  v12 = a5;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v12[2](v12, 1);
}

void __70__WBTabCyclerCommandHandler__setTitle_forProfileWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__WBTabCyclerCommandHandler__setTitle_forProfileWithIdentifier_reply___block_invoke_2;
  v4[3] = &unk_279E774B8;
  v5 = *(a1 + 48);
  v3 = [v2 updateProfileWithIdentifier:v1 persist:1 usingBlock:v4 completionHandler:0];
}

- (void)setURL:(id)a3 forBookmarkWithIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WBTabCyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke;
  block[3] = &unk_279E75D50;
  block[4] = self;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  v12 = a5;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v12[2](v12, 1);
}

void __68__WBTabCyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__WBTabCyclerCommandHandler_setURL_forBookmarkWithIdentifier_reply___block_invoke_2;
  v3[3] = &unk_279E77490;
  v4 = *(a1 + 48);
  [v2 updateTabWithUUID:v1 persist:1 notify:1 usingBlock:v3];
}

- (void)setSymbolImageName:(id)a3 forBookmarkWithIdentifier:(id)a4 reply:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(WBTabCyclerCommandHandler *)self _profileWithIdentifier:v8];
  if (v10)
  {
    [(WBTabCyclerCommandHandler *)self _setSymbolImageName:v11 forProfileWithIdentifier:v8 reply:v9];
  }

  else
  {
    v9[2](v9, 0);
  }
}

- (void)_setSymbolImageName:(id)a3 forProfileWithIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WBTabCyclerCommandHandler__setSymbolImageName_forProfileWithIdentifier_reply___block_invoke;
  block[3] = &unk_279E75D50;
  block[4] = self;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  v12 = a5;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v12[2](v12, 1);
}

void __80__WBTabCyclerCommandHandler__setSymbolImageName_forProfileWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__WBTabCyclerCommandHandler__setSymbolImageName_forProfileWithIdentifier_reply___block_invoke_2;
  v4[3] = &unk_279E774B8;
  v5 = *(a1 + 48);
  v3 = [v2 updateProfileWithIdentifier:v1 persist:1 usingBlock:v4 completionHandler:0];
}

- (void)syncBookmarksWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__WBTabCyclerCommandHandler_syncBookmarksWithCompletionHandler___block_invoke;
  v6[3] = &unk_279E75530;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __64__WBTabCyclerCommandHandler_syncBookmarksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabGroups];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _startMonitoringSyncStatusWithCompletionHandler:*(a1 + 40)];
    v5 = *(a1 + 32);

    [v5 _triggerTabGroupSync];
  }

  else
  {
    [v4[1] lockSync];
    v6 = [*(*(a1 + 32) + 8) tabCollection];
    [v6 setSyncData:0 forKey:@"BASyncData"];

    [*(*(a1 + 32) + 8) unlockSync];
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __64__WBTabCyclerCommandHandler_syncBookmarksWithCompletionHandler___block_invoke_2;
    v11 = &unk_279E774E0;
    v12 = v7;
    v13 = *(a1 + 40);
    [v7 _startMonitoringSyncStatusWithCompletionHandler:&v8];
    [*(a1 + 32) _triggerTabGroupSync];
  }
}

uint64_t __64__WBTabCyclerCommandHandler_syncBookmarksWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startMonitoringTabGroupUpdateExpectingMigration:1 completionHandler:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 40);

  return [v2 reloadTabGroupsFromDatabaseWithCompletionHandler:0];
}

- (void)_triggerTabGroupSync
{
  v2 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_INFO, "Triggering tab group sync", v4, 2u);
  }

  v3 = +[WBTabGroupSyncAgentProxy sharedProxy];
  [v3 scheduleSyncIfNeeded];
}

- (void)_startMonitoringSyncStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__WBTabCyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke;
  v12[3] = &unk_279E77508;
  objc_copyWeak(&v14, &location);
  v5 = v4;
  v13 = v5;
  [(WBSDistributedNotificationObserver *)self->_syncAgentNotificationObserver setNotificationHandler:v12];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __77__WBTabCyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke_40;
  v10 = &unk_279E75478;
  v6 = v5;
  v11 = v6;
  [(WBSDistributedNotificationObserver *)self->_syncAgentNotificationObserver setTimeoutHandler:&v7];
  [(WBSDistributedNotificationObserver *)self->_syncAgentNotificationObserver waitWithTimeout:900.0, v7, v8, v9, v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

BOOL __77__WBTabCyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"syncResult"];

  v5 = [v4 integerValue];
  if (v5 == 1)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Sync finished but local migration has not completed. Waiting for migration to complete.", v14, 2u);
    }

    v8 = 0;
  }

  else
  {
    v6 = v5;
    if (v5 == 5)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v8 = WeakRetained == 0;
      if (WeakRetained)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXCycler();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Sync agent reset sync data. Triggering another sync.", buf, 2u);
        }

        [WeakRetained _triggerTabGroupSync];
      }
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Sync agent finished syncing", v13, 2u);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32), v6 == 0);
      v8 = 1;
    }
  }

  return v8;
}

uint64_t __77__WBTabCyclerCommandHandler__startMonitoringSyncStatusWithCompletionHandler___block_invoke_40(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v2, OS_LOG_TYPE_INFO, "Timed out waiting for sync agent to finish syncing", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __96__WBTabCyclerCommandHandler__startMonitoringTabGroupUpdateExpectingMigration_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    WeakRetained[2] = 0;
    v4 = WeakRetained;

    (*(*(a1 + 32) + 16))();
    WeakRetained = v4;
  }
}

- (id)_tabGroupBeforeIndex:(unint64_t)a3 inProfileWithIdentifier:(id)a4
{
  v5 = [(WBTabGroupManager *)self->_tabGroupManager namedTabGroupsForProfileWithIdentifier:a4];
  v6 = v5;
  if (a3)
  {
    if ([v5 count] >= a3)
    {
      a3 = [v6 objectAtIndexedSubscript:a3 - 1];
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

- (id)_tabBeforeIndex:(unint64_t)a3 inGroup:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 tabs];
    v8 = [v7 count];

    if (v8 >= a3)
    {
      v9 = [v6 tabs];
      a3 = [v9 objectAtIndexedSubscript:a3 - 1];
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

- (id)_mutableTabBeforeIndex:(unint64_t)a3 inGroup:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 tabs];
    v8 = [v7 count];

    if (v8 >= a3)
    {
      v9 = [v6 tabs];
      a3 = [v9 objectAtIndexedSubscript:a3 - 1];
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

- (id)_tabGroupFavoriteBeforeIndex:(unint64_t)a3 inList:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    if ([v5 bookmarkCount] >= a3)
    {
      v7 = [v6 bookmarkArray];
      a3 = [v7 objectAtIndexedSubscript:a3 - 1];
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

- (id)_profileWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WBTabGroupManager *)self->_tabGroupManager profiles];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__WBTabCyclerCommandHandler__profileWithIdentifier___block_invoke;
  v11[3] = &unk_279E77558;
  v6 = v4;
  v12 = v6;
  v7 = [v5 indexOfObjectPassingTest:v11];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(WBTabGroupManager *)self->_tabGroupManager profiles];
    v8 = [v9 objectAtIndexedSubscript:v7];
  }

  return v8;
}

uint64_t __52__WBTabCyclerCommandHandler__profileWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_tabGroupWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WBTabCyclerCommandHandler *)self tabGroups];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__WBTabCyclerCommandHandler__tabGroupWithIdentifier___block_invoke;
  v11[3] = &unk_279E77468;
  v6 = v4;
  v12 = v6;
  v7 = [v5 indexOfObjectPassingTest:v11];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(WBTabCyclerCommandHandler *)self tabGroups];
    v8 = [v9 objectAtIndexedSubscript:v7];
  }

  return v8;
}

uint64_t __53__WBTabCyclerCommandHandler__tabGroupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_tabWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(WBTabCyclerCommandHandler *)self tabGroups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__WBTabCyclerCommandHandler__tabWithIdentifier___block_invoke;
  v9[3] = &unk_279E775A8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__WBTabCyclerCommandHandler__tabWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 tabs];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__WBTabCyclerCommandHandler__tabWithIdentifier___block_invoke_2;
  v13[3] = &unk_279E77580;
  v14 = *(a1 + 32);
  v8 = [v7 indexOfObjectPassingTest:v13];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 tabs];
    v10 = [v9 objectAtIndexedSubscript:v8];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

uint64_t __48__WBTabCyclerCommandHandler__tabWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_cyclerRepresentationOfProfile:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D49F10]);
  v6 = [v4 title];
  v7 = [v4 symbolImageName];
  v8 = [v4 identifier];
  v9 = [v5 initWithTitle:v6 symbolImageName:v7 uniqueIdentifier:v8];

  tabGroupManager = self->_tabGroupManager;
  v11 = [v4 identifier];
  v12 = [(WBTabGroupManager *)tabGroupManager namedTabGroupsForProfileWithIdentifier:v11];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(WBTabCyclerCommandHandler *)self _cyclerRepresentationOfTabGroup:*(*(&v21 + 1) + 8 * i), v21];
        [v9 addChild:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_cyclerRepresentationOfTabGroup:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D49F18]);
  v6 = [v4 title];
  v7 = [v4 uuid];
  v8 = [v5 initWithTitle:v6 uniqueIdentifier:v7];

  v9 = [(WBTabCyclerCommandHandler *)self _cyclerRepresentationOfTopScopedBookmarkListForTabGroup:v4];
  [v8 addChild:v9];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v4 tabs];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(WBTabCyclerCommandHandler *)self _cyclerRepresentationOfTab:*(*(&v18 + 1) + 8 * i)];
        [v8 addChild:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_cyclerRepresentationOfTab:(id)a3
{
  v3 = MEMORY[0x277D49EF8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 url];
  v7 = [v4 title];
  v8 = [v4 uuid];

  v9 = [v5 initWithURL:v6 title:v7 uniqueIdentifier:v8];

  return v9;
}

- (id)_cyclerRepresentationOfTopScopedBookmarkListForTabGroup:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WBTabGroupManager *)self->_tabGroupManager topScopedBookmarkListForTabGroup:v4];
  v6 = objc_alloc(MEMORY[0x277D49F20]);
  v7 = MEMORY[0x277CCACA8];
  v8 = [v4 uuid];
  v9 = [v7 stringWithFormat:@"%@%@", @"TopScopedBookmarkList_", v8];
  v10 = [v6 initWithTitle:&stru_288259858 uniqueIdentifier:v9];

  v11 = [v5 bookmarkArray];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(WBTabCyclerCommandHandler *)self _cyclerRepresentationOfTabGroupFavorite:*(*(&v19 + 1) + 8 * i)];
        [v10 addChild:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_cyclerRepresentationOfTabGroupFavorite:(id)a3
{
  v3 = MEMORY[0x277D49EF8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v4 address];
  v8 = [v6 URLWithString:v7];
  v9 = [v4 title];
  v10 = [v4 UUID];

  v11 = [v5 initWithURL:v8 title:v9 uniqueIdentifier:v10];

  return v11;
}

@end