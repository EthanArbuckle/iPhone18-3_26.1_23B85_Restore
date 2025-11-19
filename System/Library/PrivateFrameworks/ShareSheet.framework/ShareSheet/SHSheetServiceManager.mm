@interface SHSheetServiceManager
- (BOOL)canShareFileURL:(id)a3;
- (SHSheetServiceManager)init;
- (SHSheetServiceManagerDelegate)delegate;
- (void)_handleConnectionCompletion;
- (void)_invalidateSlotManagerIfNeeded;
- (void)_sendConfiguration:(id)a3;
- (void)activityViewControllerDidAppear;
- (void)activityViewControllerDidDisappear;
- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)a3;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)connectWithSession:(id)a3;
- (void)connectionInterrupted;
- (void)dataSourceUpdatedWithSessionConfiguration:(id)a3;
- (void)dealloc;
- (void)didPerformInServiceActivityWithIdentifier:(id)a3 completed:(BOOL)a4 items:(id)a5 error:(id)a6;
- (void)didUpdateAirDropTransferWithChange:(id)a3;
- (void)favoriteUserDefaultsActivity:(BOOL)a3 withIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)findSupportedActivitiesWithCompletionHandler:(id)a3;
- (void)isShareOwnerForFileURL:(id)a3 share:(id)a4 completionHandler:(id)a5;
- (void)longPressShareActivityWithIdentifier:(id)a3;
- (void)performActionActivityWithIdentifier:(id)a3;
- (void)performActivityInHostWithUUID:(id)a3;
- (void)performActivityWithType:(id)a3 completionHandler:(id)a4;
- (void)performAirDropActivityInHostWithNoContentView:(BOOL)a3;
- (void)performEditAction;
- (void)performExtensionActivityInHostWithBundleID:(id)a3 request:(id)a4;
- (void)performPersonSuggestionWithIdentifier:(id)a3;
- (void)performShareActivityWithIdentifier:(id)a3;
- (void)performShortcutActivityInHostWithBundleID:(id)a3 singleUseToken:(id)a4;
- (void)performUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4;
- (void)performUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5 activityCategory:(int64_t)a6;
- (void)provideFeedbackForPeopleSugestionIdentifier:(id)a3;
- (void)removePersonSuggestionWithIdentifier:(id)a3;
- (void)setConnectionState:(int64_t)a3;
- (void)toggleUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4;
- (void)update;
- (void)updateUserDefaultsFavorites:(id)a3 activityCategory:(int64_t)a4;
- (void)updateUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5;
- (void)userDefaultsViewControllerDidDisappear;
- (void)willPerformInServiceActivityWithRequest:(id)a3 completion:(id)a4;
@end

@implementation SHSheetServiceManager

- (SHSheetServiceManager)init
{
  v6.receiver = self;
  v6.super_class = SHSheetServiceManager;
  v2 = [(SHSheetServiceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFShareSheetSlotManager);
    slotManager = v2->_slotManager;
    v2->_slotManager = v3;

    [(SFShareSheetSlotManager *)v2->_slotManager setDelegate:v2];
    [(SFShareSheetSlotManager *)v2->_slotManager activate];
  }

  return v2;
}

- (void)dealloc
{
  [(SHSheetServiceManager *)self _invalidateSlotManagerIfNeeded];
  v3.receiver = self;
  v3.super_class = SHSheetServiceManager;
  [(SHSheetServiceManager *)&v3 dealloc];
}

- (void)connectWithSession:(id)a3
{
  v5 = a3;
  if ([(SHSheetServiceManager *)self connectionState])
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Connection to sharingd already happened.", buf, 2u);
    }
  }

  else
  {
    v54 = v5;
    [(SHSheetServiceManager *)self setConnectionState:1];
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Connecting to sharingd", buf, 2u);
    }

    objc_storeStrong(&self->_session, a3);
    v8 = [(SHSheetServiceManager *)self session];
    v6 = [v8 identifier];

    v9 = [(SHSheetServiceManager *)self session];
    v10 = [v9 createDiscoveryContext];

    v11 = [(SHSheetServiceManager *)self session];
    v12 = [v11 selectedAssetIdentifiers];

    v13 = [(SHSheetServiceManager *)self session];
    v14 = [v13 activityItemsManager];
    v15 = [v14 suggestionAssetIdentifiers];

    if ([v15 count])
    {
      v16 = [MEMORY[0x1E695DFA8] setWithArray:v15];
      [v16 addObjectsFromArray:v12];
      v17 = [v16 allObjects];

      v12 = v17;
    }

    v51 = v15;
    v18 = [(SHSheetServiceManager *)self session];
    v19 = [v18 excludedActivityTypes];
    if ([v19 containsObject:@"com.apple.UIKit.activity.SharePlay"])
    {
      v20 = 0;
    }

    else
    {
      v21 = [(SHSheetServiceManager *)self session];
      v20 = [v21 canPerformSharePlay];
    }

    v22 = [(SHSheetServiceManager *)self session];
    v23 = [v22 activityItemsManager];
    v24 = [v23 suggestedImageDataFromActivityItem:0];

    v50 = v24;
    if (v24)
    {
      v25 = [(SHSheetServiceManager *)self delegate];
      v24 = [v25 serviceManager:self identificationResultsFromSuggestedImageData:v24];
    }

    v26 = [(SHSheetServiceManager *)self session];
    v27 = [v26 activityItemsManager];
    v28 = [v27 activityItemURLValuesForActivity:0];

    v29 = SFSandboxExtensionDataByFileURLPathForURLs();
    v30 = [[SHSheetRemoteConnectionContext alloc] initWithSessionIdentifier:v6];
    v53 = v10;
    [(SHSheetRemoteConnectionContext *)v30 setDiscoveryContext:v10];
    v52 = v12;
    [(SHSheetRemoteConnectionContext *)v30 setAssetIdentifiers:v12];
    [(SHSheetRemoteConnectionContext *)v30 setUrlsBeingShared:v28];
    v49 = v29;
    [(SHSheetRemoteConnectionContext *)v30 setSandboxExtensionsByfileURLPath:v29];
    v31 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setShouldSuggestFamilyMembers:](v30, "setShouldSuggestFamilyMembers:", [v31 shouldSuggestFamilyMembers]);

    v32 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setInstantShareSheet:](v30, "setInstantShareSheet:", [v32 instantShareSheet]);

    v33 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setRemoteShareSheet:](v30, "setRemoteShareSheet:", [v33 useRemoteUIService]);

    [(SHSheetRemoteConnectionContext *)v30 setIsSharePlayAvailable:v20];
    v34 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setSupportsCollaboration:](v30, "setSupportsCollaboration:", [v34 supportsCollaboration]);

    v35 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setHideSuggestions:](v30, "setHideSuggestions:", [v35 hideSuggestions]);

    v36 = [(SHSheetServiceManager *)self session];
    v37 = [v36 peopleSuggestionBundleIds];
    [(SHSheetRemoteConnectionContext *)v30 setPeopleSuggestionBundleIds:v37];

    v55 = v24;
    [(SHSheetRemoteConnectionContext *)v30 setProcessedImageResultsData:v24];
    [(SHSheetRemoteConnectionContext *)v30 setPeopleSuggestionsTimeout:0.5];
    v38 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setXrRenderingMode:](v30, "setXrRenderingMode:", [v38 xrRenderingMode]);

    v39 = [(SHSheetRemoteConnectionContext *)v30 createContextDictionary];
    v40 = share_sheet_log();
    v41 = share_sheet_log();
    v42 = [(SHSheetServiceManager *)self session];
    v43 = [v42 activityViewController];
    v44 = os_signpost_id_make_with_pointer(v41, v43);

    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v40, OS_SIGNPOST_INTERVAL_END, v44, "InitializeUIAVC", " enableTelemetry=YES ", buf, 2u);
    }

    v45 = share_sheet_log();
    v46 = share_sheet_log();
    v47 = os_signpost_id_make_with_pointer(v46, self);

    if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_18B359000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v47, "ConnectToDaemon", " enableTelemetry=YES ", buf, 2u);
    }

    objc_initWeak(buf, self);
    slotManager = self->_slotManager;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __44__SHSheetServiceManager_connectWithSession___block_invoke;
    v56[3] = &unk_1E71F95A8;
    objc_copyWeak(&v57, buf);
    [(SFShareSheetSlotManager *)slotManager connectToDaemonWithContext:v39 completionHandler:v56];
    objc_destroyWeak(&v57);
    objc_destroyWeak(buf);

    v5 = v54;
  }
}

void __44__SHSheetServiceManager_connectWithSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionCompletion];
}

- (void)update
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"synchronously";
  if (a1)
  {
    v2 = @"asynchronously";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_18B359000, a2, OS_LOG_TYPE_DEBUG, "Sending new configuration to sharingd %@", &v3, 0xCu);
}

- (void)performShareActivityWithIdentifier:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v7 = [(SHSheetServiceManager *)self session];
  v6 = [v7 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v6 selectedActivityWithIdentifier:v5];
}

- (void)performActionActivityWithIdentifier:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v7 = [(SHSheetServiceManager *)self session];
  v6 = [v7 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v6 selectedActionWithIdentifier:v5];
}

- (void)performEditAction
{
  slotManager = self->_slotManager;
  v4 = [(SHSheetServiceManager *)self session];
  v3 = [v4 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerPerformEditActionsWithSessionID:v3];
}

- (void)performPersonSuggestionWithIdentifier:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v7 = [(SHSheetServiceManager *)self session];
  v6 = [v7 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v6 selectedPersonWithIdentifier:v5];
}

- (void)removePersonSuggestionWithIdentifier:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v7 = [(SHSheetServiceManager *)self session];
  v6 = [v7 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v6 removedPersonWithIdentifier:v5];
}

- (void)longPressShareActivityWithIdentifier:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v7 = [(SHSheetServiceManager *)self session];
  v6 = [v7 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v6 didLongPressShareActivityWithIdentifier:v5];
}

- (void)toggleUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4
{
  slotManager = self->_slotManager;
  v7 = a3;
  v9 = [(SHSheetServiceManager *)self session];
  v8 = [v9 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v8 toggledActivityWithIdentifier:v7 activityCategory:a4];
}

- (void)favoriteUserDefaultsActivity:(BOOL)a3 withIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v6 = a3;
  slotManager = self->_slotManager;
  v9 = a4;
  v11 = [(SHSheetServiceManager *)self session];
  v10 = [v11 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v10 favoritedActivity:v6 withIdentifier:v9 activityCategory:a5];
}

- (void)updateUserDefaultsFavorites:(id)a3 activityCategory:(int64_t)a4
{
  slotManager = self->_slotManager;
  v7 = a3;
  v9 = [(SHSheetServiceManager *)self session];
  v8 = [v9 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v8 updatedFavoritesProxies:v7 activityCategory:a4];
}

- (void)performUserDefaultsActivityWithIdentifier:(id)a3 activityCategory:(int64_t)a4
{
  slotManager = self->_slotManager;
  v7 = a3;
  v9 = [(SHSheetServiceManager *)self session];
  v8 = [v9 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v8 selectedDefaultActivityWithIdentifier:v7 activityCategory:a4];
}

- (void)userDefaultsViewControllerDidDisappear
{
  slotManager = self->_slotManager;
  v4 = [(SHSheetServiceManager *)self session];
  v3 = [v4 identifier];
  [(SFShareSheetSlotManager *)slotManager userDefaultsViewControllerDidDisappearWithSessionID:v3];
}

- (void)provideFeedbackForPeopleSugestionIdentifier:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v7 = [(SHSheetServiceManager *)self session];
  v6 = [v7 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v6 provideFeedbackForPeopleSuggestionWithIdentifier:v5];
}

- (void)performActivityWithType:(id)a3 completionHandler:(id)a4
{
  slotManager = self->_slotManager;
  v7 = a4;
  v8 = a3;
  v10 = [(SHSheetServiceManager *)self session];
  v9 = [v10 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v9 performActivityWithType:v8 completionHandler:v7];
}

- (void)findSupportedActivitiesWithCompletionHandler:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v7 = [(SHSheetServiceManager *)self session];
  v6 = [v7 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:v6 findSupportedActivitiesWithCompletionHandler:v5];
}

- (void)setConnectionState:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_connectionState != a3)
  {
    self->_connectionState = a3;
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      connectionState = self->_connectionState;
      if (connectionState > 2)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E71FAB80[connectionState];
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Connection state changed:%@", &v8, 0xCu);
    }

    v7 = [(SHSheetServiceManager *)self delegate];
    [v7 serviceManagerDidChangeConnectionState:self];
  }
}

- (void)_handleConnectionCompletion
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Connection to sharingd established", buf, 2u);
  }

  [(SHSheetServiceManager *)self setConnectionState:2];
  v4 = share_sheet_log();
  v5 = share_sheet_log();
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B359000, v4, OS_SIGNPOST_INTERVAL_END, v6, "ConnectToDaemon", " enableTelemetry=YES ", v7, 2u);
  }

  if ([(SHSheetServiceManager *)self updateAfterConnection])
  {
    [(SHSheetServiceManager *)self setUpdateAfterConnection:0];
    [(SHSheetServiceManager *)self update];
  }
}

- (void)_sendConfiguration:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Sending configuration %@", buf, 0xCu);
  }

  slotManager = self->_slotManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SHSheetServiceManager__sendConfiguration___block_invoke;
  v7[3] = &unk_1E71FAA98;
  v7[4] = self;
  [(SFShareSheetSlotManager *)slotManager sendConfiguration:v4 completion:v7];
}

- (void)_invalidateSlotManagerIfNeeded
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating slot manager", v5, 2u);
  }

  [(SFShareSheetSlotManager *)self->_slotManager setDelegate:0];
  [(SFShareSheetSlotManager *)self->_slotManager invalidate];
  slotManager = self->_slotManager;
  self->_slotManager = 0;
}

- (void)connectionInterrupted
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SHSheetServiceManager_connectionInterrupted__block_invoke;
  block[3] = &unk_1E71F9510;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __46__SHSheetServiceManager_connectionInterrupted__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setConnectionState:0];
  [*(a1 + 32) _invalidateSlotManagerIfNeeded];
  v2 = *(a1 + 32);
  v3 = [v2 session];
  [v2 connectWithSession:v3];

  v4 = *(a1 + 32);

  return [v4 update];
}

- (void)dataSourceUpdatedWithSessionConfiguration:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__SHSheetServiceManager_dataSourceUpdatedWithSessionConfiguration___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sh_dispatch_on_main_queue(v6);
}

void __67__SHSheetServiceManager_dataSourceUpdatedWithSessionConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) session];
  [v2 setConfiguration:v1];
}

- (void)performActivityInHostWithUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SHSheetServiceManager_performActivityInHostWithUUID___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __55__SHSheetServiceManager_performActivityInHostWithUUID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "Performing in host %@", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) session];
  v5 = [v4 activitiesManager];
  v6 = [v5 activityForIdentifier:*(a1 + 32)];

  if (v6)
  {
    v7 = [*(a1 + 40) delegate];
    [v7 serviceManager:*(a1 + 40) performActivity:v6];
  }
}

- (void)performExtensionActivityInHostWithBundleID:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SHSheetServiceManager_performExtensionActivityInHostWithBundleID_request___block_invoke;
  block[3] = &unk_1E71F9638;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__SHSheetServiceManager_performExtensionActivityInHostWithBundleID_request___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "Performing in host %@", &v7, 0xCu);
  }

  v4 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:*(a1 + 32) error:0];
  if (v4)
  {
    v5 = [_UIActivityApplicationExtensionDiscovery extensionBasedActivityForExtension:v4];
    [v5 setExtensionItemDataRequest:*(a1 + 40)];
    v6 = [*(a1 + 48) delegate];
    [v6 serviceManager:*(a1 + 48) performActivity:v5];
  }
}

- (void)performAirDropActivityInHostWithNoContentView:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__SHSheetServiceManager_performAirDropActivityInHostWithNoContentView___block_invoke;
  v3[3] = &unk_1E71F9908;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __71__SHSheetServiceManager_performAirDropActivityInHostWithNoContentView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceManager:*(a1 + 32) performAirdropViewActivityWithNoContentView:*(a1 + 40)];
}

- (void)performShortcutActivityInHostWithBundleID:(id)a3 singleUseToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SHSheetServiceManager_performShortcutActivityInHostWithBundleID_singleUseToken___block_invoke;
  block[3] = &unk_1E71F9638;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__SHSheetServiceManager_performShortcutActivityInHostWithBundleID_singleUseToken___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:*(a1 + 32) error:0];
  if (v2)
  {
    v9 = v2;
    v3 = [UIShortcutActivity alloc];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) session];
    v6 = [v5 selectedAssetIdentifiers];
    v7 = [(UIShortcutActivity *)v3 initWithApplicationExtension:v9 singleUseToken:v4 photosAssetIdentifiers:v6];

    v8 = [*(a1 + 48) delegate];
    [v8 serviceManager:*(a1 + 48) performActivity:v7];

    v2 = v9;
  }
}

- (void)willPerformInServiceActivityWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SHSheetServiceManager_willPerformInServiceActivityWithRequest_completion___block_invoke;
  block[3] = &unk_1E71F9958;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__SHSheetServiceManager_willPerformInServiceActivityWithRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceManager:*(a1 + 32) willPerformActivityInServiceForRequest:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)didPerformInServiceActivityWithIdentifier:(id)a3 completed:(BOOL)a4 items:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__SHSheetServiceManager_didPerformInServiceActivityWithIdentifier_completed_items_error___block_invoke;
  block[3] = &unk_1E71FAAC0;
  block[4] = self;
  v17 = v10;
  v20 = a4;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__SHSheetServiceManager_didPerformInServiceActivityWithIdentifier_completed_items_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceManager:*(a1 + 32) didPerformInServiceActivityWithIdentifier:*(a1 + 40) completed:*(a1 + 64) items:*(a1 + 48) error:*(a1 + 56)];
}

- (void)performUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5 activityCategory:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__SHSheetServiceManager_performUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_activityCategory___block_invoke;
  block[3] = &unk_1E71FAAE8;
  block[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = a6;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __113__SHSheetServiceManager_performUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_activityCategory___block_invoke(uint64_t a1)
{
  v15 = [SHSheetUserDefaultsContext alloc];
  v14 = [*(a1 + 32) session];
  v13 = [v14 activitiesManager];
  v2 = [v13 applicationActivityTypes];
  v3 = [*(a1 + 32) session];
  v4 = [v3 activitiesManager];
  v5 = [v4 activitiesByUUID];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) session];
  v10 = [v9 heroActionActivityTypes];
  LOBYTE(v12) = 1;
  v16 = [(SHSheetUserDefaultsContext *)v15 initWithApplicationActivityTypes:v2 activitiesByUUID:v5 favoritesProxies:v8 suggestionProxies:v6 orderedUUIDs:v7 excludedActivityTypes:v10 activityCategory:*(a1 + 64) isPresentedModally:v12];

  v11 = [*(a1 + 32) delegate];
  [v11 serviceManager:*(a1 + 32) performUserDefaultsActivityWithContext:v16];
}

- (void)updateUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__SHSheetServiceManager_updateUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs___block_invoke;
  v14[3] = &unk_1E71FAB10;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __95__SHSheetServiceManager_updateUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs___block_invoke(uint64_t a1)
{
  v15 = [SHSheetUserDefaultsContext alloc];
  v14 = [*(a1 + 32) session];
  v13 = [v14 activitiesManager];
  v2 = [v13 applicationActivityTypes];
  v3 = [*(a1 + 32) session];
  v4 = [v3 activitiesManager];
  v5 = [v4 activitiesByUUID];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) session];
  v10 = [v9 heroActionActivityTypes];
  LOBYTE(v12) = 1;
  v16 = [(SHSheetUserDefaultsContext *)v15 initWithApplicationActivityTypes:v2 activitiesByUUID:v5 favoritesProxies:v8 suggestionProxies:v6 orderedUUIDs:v7 excludedActivityTypes:v10 activityCategory:1 isPresentedModally:v12];

  v11 = [*(a1 + 32) delegate];
  [v11 serviceManager:*(a1 + 32) updateUserDefaultsActivityWithContext:v16];
}

- (void)didUpdateAirDropTransferWithChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SHSheetServiceManager_didUpdateAirDropTransferWithChange___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __60__SHSheetServiceManager_didUpdateAirDropTransferWithChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceManager:*(a1 + 32) didUpdateAirDropTransferWithChange:*(a1 + 40)];
}

- (void)activityViewControllerDidAppear
{
  slotManager = self->_slotManager;
  v4 = [(SHSheetServiceManager *)self session];
  v3 = [v4 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerDidAppearWithSessionID:v3];
}

- (void)activityViewControllerDidDisappear
{
  slotManager = self->_slotManager;
  v4 = [(SHSheetServiceManager *)self session];
  v3 = [v4 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerDidDisappearWithSessionID:v3];
}

- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)a3
{
  slotManager = self->_slotManager;
  v5 = a3;
  v9 = [(SHSheetServiceManager *)self session];
  v6 = [v9 identifier];
  v7 = [(SHSheetServiceManager *)self session];
  v8 = [v7 testingSnapshot];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerSessionDidEndWithSessionID:v6 testingSnapshot:v8 completionHandler:v5];
}

- (void)applicationDidEnterBackground
{
  slotManager = self->_slotManager;
  v4 = [(SHSheetServiceManager *)self session];
  v3 = [v4 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerDidEnterBackgroundWithSessionID:v3];
}

- (void)applicationWillEnterForeground
{
  slotManager = self->_slotManager;
  v4 = [(SHSheetServiceManager *)self session];
  v3 = [v4 identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWillEnterForegroundWithSessionID:v3];
}

- (BOOL)canShareFileURL:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([v4 isFileURL])
  {
    slotManager = self->_slotManager;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SHSheetServiceManager_canShareFileURL___block_invoke;
    v8[3] = &unk_1E71FAB38;
    v8[4] = &v9;
    [(SFShareSheetSlotManager *)slotManager canShareFileURL:v4 completionHandler:v8];
    v6 = *(v10 + 24);
  }

  else
  {
    v6 = 1;
  }

  _Block_object_dispose(&v9, 8);

  return v6 & 1;
}

- (void)isShareOwnerForFileURL:(id)a3 share:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = MEMORY[0x1E69CDE78];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__SHSheetServiceManager_isShareOwnerForFileURL_share_completionHandler___block_invoke;
    v17[3] = &unk_1E71FAB60;
    v18 = v10;
    [v12 isShareOwnerOrAdminForShare:v9 completionHandler:v17];
    v13 = v18;
LABEL_5:

    goto LABEL_6;
  }

  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__SHSheetServiceManager_isShareOwnerForFileURL_share_completionHandler___block_invoke_2;
    v15[3] = &unk_1E71FAB60;
    v16 = v10;
    [(SHSheetServiceManager *)self isShareOwnerOrAdminForFileURL:v8 completionHandler:v15];
    v13 = v16;
    goto LABEL_5;
  }

  v14 = share_sheet_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [SHSheetServiceManager isShareOwnerForFileURL:v14 share:? completionHandler:?];
  }

  v11[2](v11, 0);
LABEL_6:
}

- (SHSheetServiceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end