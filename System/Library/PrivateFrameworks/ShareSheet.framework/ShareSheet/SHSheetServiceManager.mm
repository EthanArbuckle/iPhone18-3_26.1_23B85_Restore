@interface SHSheetServiceManager
- (BOOL)canShareFileURL:(id)l;
- (SHSheetServiceManager)init;
- (SHSheetServiceManagerDelegate)delegate;
- (void)_handleConnectionCompletion;
- (void)_invalidateSlotManagerIfNeeded;
- (void)_sendConfiguration:(id)configuration;
- (void)activityViewControllerDidAppear;
- (void)activityViewControllerDidDisappear;
- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)handler;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)connectWithSession:(id)session;
- (void)connectionInterrupted;
- (void)dataSourceUpdatedWithSessionConfiguration:(id)configuration;
- (void)dealloc;
- (void)didPerformInServiceActivityWithIdentifier:(id)identifier completed:(BOOL)completed items:(id)items error:(id)error;
- (void)didUpdateAirDropTransferWithChange:(id)change;
- (void)favoriteUserDefaultsActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)findSupportedActivitiesWithCompletionHandler:(id)handler;
- (void)isShareOwnerForFileURL:(id)l share:(id)share completionHandler:(id)handler;
- (void)longPressShareActivityWithIdentifier:(id)identifier;
- (void)performActionActivityWithIdentifier:(id)identifier;
- (void)performActivityInHostWithUUID:(id)d;
- (void)performActivityWithType:(id)type completionHandler:(id)handler;
- (void)performAirDropActivityInHostWithNoContentView:(BOOL)view;
- (void)performEditAction;
- (void)performExtensionActivityInHostWithBundleID:(id)d request:(id)request;
- (void)performPersonSuggestionWithIdentifier:(id)identifier;
- (void)performShareActivityWithIdentifier:(id)identifier;
- (void)performShortcutActivityInHostWithBundleID:(id)d singleUseToken:(id)token;
- (void)performUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)performUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds activityCategory:(int64_t)category;
- (void)provideFeedbackForPeopleSugestionIdentifier:(id)identifier;
- (void)removePersonSuggestionWithIdentifier:(id)identifier;
- (void)setConnectionState:(int64_t)state;
- (void)toggleUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)update;
- (void)updateUserDefaultsFavorites:(id)favorites activityCategory:(int64_t)category;
- (void)updateUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds;
- (void)userDefaultsViewControllerDidDisappear;
- (void)willPerformInServiceActivityWithRequest:(id)request completion:(id)completion;
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

- (void)connectWithSession:(id)session
{
  sessionCopy = session;
  if ([(SHSheetServiceManager *)self connectionState])
  {
    identifier = share_sheet_log();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_18B359000, identifier, OS_LOG_TYPE_DEFAULT, "Connection to sharingd already happened.", buf, 2u);
    }
  }

  else
  {
    v54 = sessionCopy;
    [(SHSheetServiceManager *)self setConnectionState:1];
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Connecting to sharingd", buf, 2u);
    }

    objc_storeStrong(&self->_session, session);
    session = [(SHSheetServiceManager *)self session];
    identifier = [session identifier];

    session2 = [(SHSheetServiceManager *)self session];
    createDiscoveryContext = [session2 createDiscoveryContext];

    session3 = [(SHSheetServiceManager *)self session];
    selectedAssetIdentifiers = [session3 selectedAssetIdentifiers];

    session4 = [(SHSheetServiceManager *)self session];
    activityItemsManager = [session4 activityItemsManager];
    suggestionAssetIdentifiers = [activityItemsManager suggestionAssetIdentifiers];

    if ([suggestionAssetIdentifiers count])
    {
      v16 = [MEMORY[0x1E695DFA8] setWithArray:suggestionAssetIdentifiers];
      [v16 addObjectsFromArray:selectedAssetIdentifiers];
      allObjects = [v16 allObjects];

      selectedAssetIdentifiers = allObjects;
    }

    v51 = suggestionAssetIdentifiers;
    session5 = [(SHSheetServiceManager *)self session];
    excludedActivityTypes = [session5 excludedActivityTypes];
    if ([excludedActivityTypes containsObject:@"com.apple.UIKit.activity.SharePlay"])
    {
      canPerformSharePlay = 0;
    }

    else
    {
      session6 = [(SHSheetServiceManager *)self session];
      canPerformSharePlay = [session6 canPerformSharePlay];
    }

    session7 = [(SHSheetServiceManager *)self session];
    activityItemsManager2 = [session7 activityItemsManager];
    v24 = [activityItemsManager2 suggestedImageDataFromActivityItem:0];

    v50 = v24;
    if (v24)
    {
      delegate = [(SHSheetServiceManager *)self delegate];
      v24 = [delegate serviceManager:self identificationResultsFromSuggestedImageData:v24];
    }

    session8 = [(SHSheetServiceManager *)self session];
    activityItemsManager3 = [session8 activityItemsManager];
    v28 = [activityItemsManager3 activityItemURLValuesForActivity:0];

    v29 = SFSandboxExtensionDataByFileURLPathForURLs();
    v30 = [[SHSheetRemoteConnectionContext alloc] initWithSessionIdentifier:identifier];
    v53 = createDiscoveryContext;
    [(SHSheetRemoteConnectionContext *)v30 setDiscoveryContext:createDiscoveryContext];
    v52 = selectedAssetIdentifiers;
    [(SHSheetRemoteConnectionContext *)v30 setAssetIdentifiers:selectedAssetIdentifiers];
    [(SHSheetRemoteConnectionContext *)v30 setUrlsBeingShared:v28];
    v49 = v29;
    [(SHSheetRemoteConnectionContext *)v30 setSandboxExtensionsByfileURLPath:v29];
    session9 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setShouldSuggestFamilyMembers:](v30, "setShouldSuggestFamilyMembers:", [session9 shouldSuggestFamilyMembers]);

    session10 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setInstantShareSheet:](v30, "setInstantShareSheet:", [session10 instantShareSheet]);

    session11 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setRemoteShareSheet:](v30, "setRemoteShareSheet:", [session11 useRemoteUIService]);

    [(SHSheetRemoteConnectionContext *)v30 setIsSharePlayAvailable:canPerformSharePlay];
    session12 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setSupportsCollaboration:](v30, "setSupportsCollaboration:", [session12 supportsCollaboration]);

    session13 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setHideSuggestions:](v30, "setHideSuggestions:", [session13 hideSuggestions]);

    session14 = [(SHSheetServiceManager *)self session];
    peopleSuggestionBundleIds = [session14 peopleSuggestionBundleIds];
    [(SHSheetRemoteConnectionContext *)v30 setPeopleSuggestionBundleIds:peopleSuggestionBundleIds];

    v55 = v24;
    [(SHSheetRemoteConnectionContext *)v30 setProcessedImageResultsData:v24];
    [(SHSheetRemoteConnectionContext *)v30 setPeopleSuggestionsTimeout:0.5];
    session15 = [(SHSheetServiceManager *)self session];
    -[SHSheetRemoteConnectionContext setXrRenderingMode:](v30, "setXrRenderingMode:", [session15 xrRenderingMode]);

    createContextDictionary = [(SHSheetRemoteConnectionContext *)v30 createContextDictionary];
    v40 = share_sheet_log();
    v41 = share_sheet_log();
    session16 = [(SHSheetServiceManager *)self session];
    activityViewController = [session16 activityViewController];
    v44 = os_signpost_id_make_with_pointer(v41, activityViewController);

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
    [(SFShareSheetSlotManager *)slotManager connectToDaemonWithContext:createContextDictionary completionHandler:v56];
    objc_destroyWeak(&v57);
    objc_destroyWeak(buf);

    sessionCopy = v54;
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
  if (self)
  {
    v2 = @"asynchronously";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_18B359000, a2, OS_LOG_TYPE_DEBUG, "Sending new configuration to sharingd %@", &v3, 0xCu);
}

- (void)performShareActivityWithIdentifier:(id)identifier
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier selectedActivityWithIdentifier:identifierCopy];
}

- (void)performActionActivityWithIdentifier:(id)identifier
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier selectedActionWithIdentifier:identifierCopy];
}

- (void)performEditAction
{
  slotManager = self->_slotManager;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerPerformEditActionsWithSessionID:identifier];
}

- (void)performPersonSuggestionWithIdentifier:(id)identifier
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier selectedPersonWithIdentifier:identifierCopy];
}

- (void)removePersonSuggestionWithIdentifier:(id)identifier
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier removedPersonWithIdentifier:identifierCopy];
}

- (void)longPressShareActivityWithIdentifier:(id)identifier
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier didLongPressShareActivityWithIdentifier:identifierCopy];
}

- (void)toggleUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier toggledActivityWithIdentifier:identifierCopy activityCategory:category];
}

- (void)favoriteUserDefaultsActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category
{
  activityCopy = activity;
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier favoritedActivity:activityCopy withIdentifier:identifierCopy activityCategory:category];
}

- (void)updateUserDefaultsFavorites:(id)favorites activityCategory:(int64_t)category
{
  slotManager = self->_slotManager;
  favoritesCopy = favorites;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier updatedFavoritesProxies:favoritesCopy activityCategory:category];
}

- (void)performUserDefaultsActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier selectedDefaultActivityWithIdentifier:identifierCopy activityCategory:category];
}

- (void)userDefaultsViewControllerDidDisappear
{
  slotManager = self->_slotManager;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager userDefaultsViewControllerDidDisappearWithSessionID:identifier];
}

- (void)provideFeedbackForPeopleSugestionIdentifier:(id)identifier
{
  slotManager = self->_slotManager;
  identifierCopy = identifier;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier provideFeedbackForPeopleSuggestionWithIdentifier:identifierCopy];
}

- (void)performActivityWithType:(id)type completionHandler:(id)handler
{
  slotManager = self->_slotManager;
  handlerCopy = handler;
  typeCopy = type;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier performActivityWithType:typeCopy completionHandler:handlerCopy];
}

- (void)findSupportedActivitiesWithCompletionHandler:(id)handler
{
  slotManager = self->_slotManager;
  handlerCopy = handler;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWithSessionID:identifier findSupportedActivitiesWithCompletionHandler:handlerCopy];
}

- (void)setConnectionState:(int64_t)state
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_connectionState != state)
  {
    self->_connectionState = state;
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

    delegate = [(SHSheetServiceManager *)self delegate];
    [delegate serviceManagerDidChangeConnectionState:self];
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

- (void)_sendConfiguration:(id)configuration
{
  v10 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = configurationCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Sending configuration %@", buf, 0xCu);
  }

  slotManager = self->_slotManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SHSheetServiceManager__sendConfiguration___block_invoke;
  v7[3] = &unk_1E71FAA98;
  v7[4] = self;
  [(SFShareSheetSlotManager *)slotManager sendConfiguration:configurationCopy completion:v7];
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

- (void)dataSourceUpdatedWithSessionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__SHSheetServiceManager_dataSourceUpdatedWithSessionConfiguration___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v6[4] = self;
  v7 = configurationCopy;
  v5 = configurationCopy;
  sh_dispatch_on_main_queue(v6);
}

void __67__SHSheetServiceManager_dataSourceUpdatedWithSessionConfiguration___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) session];
  [v2 setConfiguration:v1];
}

- (void)performActivityInHostWithUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__SHSheetServiceManager_performActivityInHostWithUUID___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v7 = dCopy;
  selfCopy = self;
  v5 = dCopy;
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

- (void)performExtensionActivityInHostWithBundleID:(id)d request:(id)request
{
  dCopy = d;
  requestCopy = request;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SHSheetServiceManager_performExtensionActivityInHostWithBundleID_request___block_invoke;
  block[3] = &unk_1E71F9638;
  v11 = dCopy;
  v12 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
  v9 = dCopy;
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

- (void)performAirDropActivityInHostWithNoContentView:(BOOL)view
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__SHSheetServiceManager_performAirDropActivityInHostWithNoContentView___block_invoke;
  v3[3] = &unk_1E71F9908;
  v3[4] = self;
  viewCopy = view;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __71__SHSheetServiceManager_performAirDropActivityInHostWithNoContentView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceManager:*(a1 + 32) performAirdropViewActivityWithNoContentView:*(a1 + 40)];
}

- (void)performShortcutActivityInHostWithBundleID:(id)d singleUseToken:(id)token
{
  dCopy = d;
  tokenCopy = token;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SHSheetServiceManager_performShortcutActivityInHostWithBundleID_singleUseToken___block_invoke;
  block[3] = &unk_1E71F9638;
  v11 = dCopy;
  v12 = tokenCopy;
  selfCopy = self;
  v8 = tokenCopy;
  v9 = dCopy;
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

- (void)willPerformInServiceActivityWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SHSheetServiceManager_willPerformInServiceActivityWithRequest_completion___block_invoke;
  block[3] = &unk_1E71F9958;
  block[4] = self;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__SHSheetServiceManager_willPerformInServiceActivityWithRequest_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceManager:*(a1 + 32) willPerformActivityInServiceForRequest:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)didPerformInServiceActivityWithIdentifier:(id)identifier completed:(BOOL)completed items:(id)items error:(id)error
{
  identifierCopy = identifier;
  itemsCopy = items;
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__SHSheetServiceManager_didPerformInServiceActivityWithIdentifier_completed_items_error___block_invoke;
  block[3] = &unk_1E71FAAC0;
  block[4] = self;
  v17 = identifierCopy;
  completedCopy = completed;
  v18 = itemsCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = itemsCopy;
  v15 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__SHSheetServiceManager_didPerformInServiceActivityWithIdentifier_completed_items_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 serviceManager:*(a1 + 32) didPerformInServiceActivityWithIdentifier:*(a1 + 40) completed:*(a1 + 64) items:*(a1 + 48) error:*(a1 + 56)];
}

- (void)performUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds activityCategory:(int64_t)category
{
  proxiesCopy = proxies;
  suggestionProxiesCopy = suggestionProxies;
  dsCopy = ds;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__SHSheetServiceManager_performUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_activityCategory___block_invoke;
  block[3] = &unk_1E71FAAE8;
  block[4] = self;
  v17 = proxiesCopy;
  v18 = suggestionProxiesCopy;
  v19 = dsCopy;
  categoryCopy = category;
  v13 = dsCopy;
  v14 = suggestionProxiesCopy;
  v15 = proxiesCopy;
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

- (void)updateUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds
{
  proxiesCopy = proxies;
  suggestionProxiesCopy = suggestionProxies;
  dsCopy = ds;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__SHSheetServiceManager_updateUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs___block_invoke;
  v14[3] = &unk_1E71FAB10;
  v14[4] = self;
  v15 = proxiesCopy;
  v16 = suggestionProxiesCopy;
  v17 = dsCopy;
  v11 = dsCopy;
  v12 = suggestionProxiesCopy;
  v13 = proxiesCopy;
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

- (void)didUpdateAirDropTransferWithChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__SHSheetServiceManager_didUpdateAirDropTransferWithChange___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
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
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerDidAppearWithSessionID:identifier];
}

- (void)activityViewControllerDidDisappear
{
  slotManager = self->_slotManager;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerDidDisappearWithSessionID:identifier];
}

- (void)activityViewControllerSessionDidEndWithCompletionHandler:(id)handler
{
  slotManager = self->_slotManager;
  handlerCopy = handler;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  session2 = [(SHSheetServiceManager *)self session];
  testingSnapshot = [session2 testingSnapshot];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerSessionDidEndWithSessionID:identifier testingSnapshot:testingSnapshot completionHandler:handlerCopy];
}

- (void)applicationDidEnterBackground
{
  slotManager = self->_slotManager;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerDidEnterBackgroundWithSessionID:identifier];
}

- (void)applicationWillEnterForeground
{
  slotManager = self->_slotManager;
  session = [(SHSheetServiceManager *)self session];
  identifier = [session identifier];
  [(SFShareSheetSlotManager *)slotManager activityViewControllerWillEnterForegroundWithSessionID:identifier];
}

- (BOOL)canShareFileURL:(id)l
{
  lCopy = l;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([lCopy isFileURL])
  {
    slotManager = self->_slotManager;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SHSheetServiceManager_canShareFileURL___block_invoke;
    v8[3] = &unk_1E71FAB38;
    v8[4] = &v9;
    [(SFShareSheetSlotManager *)slotManager canShareFileURL:lCopy completionHandler:v8];
    v6 = *(v10 + 24);
  }

  else
  {
    v6 = 1;
  }

  _Block_object_dispose(&v9, 8);

  return v6 & 1;
}

- (void)isShareOwnerForFileURL:(id)l share:(id)share completionHandler:(id)handler
{
  lCopy = l;
  shareCopy = share;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (shareCopy)
  {
    v12 = MEMORY[0x1E69CDE78];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__SHSheetServiceManager_isShareOwnerForFileURL_share_completionHandler___block_invoke;
    v17[3] = &unk_1E71FAB60;
    v18 = handlerCopy;
    [v12 isShareOwnerOrAdminForShare:shareCopy completionHandler:v17];
    v13 = v18;
LABEL_5:

    goto LABEL_6;
  }

  if (lCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__SHSheetServiceManager_isShareOwnerForFileURL_share_completionHandler___block_invoke_2;
    v15[3] = &unk_1E71FAB60;
    v16 = handlerCopy;
    [(SHSheetServiceManager *)self isShareOwnerOrAdminForFileURL:lCopy completionHandler:v15];
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