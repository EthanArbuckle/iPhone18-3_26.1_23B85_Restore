@interface SFShareSheetSlotManager
- (SFShareSheetSlotManager)init;
- (SFShareSheetSlotManagerDelegate)delegate;
- (id)exportedInterface;
- (id)remoteObjectInterface;
- (void)activate;
- (void)activityViewControllerDidAppearWithSessionID:(id)d;
- (void)activityViewControllerDidDisappearWithSessionID:(id)d;
- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)d;
- (void)activityViewControllerPerformEditActionsWithSessionID:(id)d;
- (void)activityViewControllerPerformedActivityWithSessionID:(id)d presentationMs:(unint64_t)ms totalShareTimeMs:(unint64_t)timeMs activityType:(id)type success:(BOOL)success;
- (void)activityViewControllerSessionDidEndWithSessionID:(id)d testingSnapshot:(id)snapshot completionHandler:(id)handler;
- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)d;
- (void)activityViewControllerWithSessionID:(id)d didLongPressShareActivityWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d favoritedActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)activityViewControllerWithSessionID:(id)d findSupportedActivitiesWithCompletionHandler:(id)handler;
- (void)activityViewControllerWithSessionID:(id)d performActivityWithType:(id)type completionHandler:(id)handler;
- (void)activityViewControllerWithSessionID:(id)d provideFeedbackForPeopleSuggestionWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d removedPersonWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d selectedActionWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d selectedActivityWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d selectedDefaultActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)activityViewControllerWithSessionID:(id)d selectedPersonWithIdentifier:(id)identifier;
- (void)activityViewControllerWithSessionID:(id)d toggledActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)activityViewControllerWithSessionID:(id)d updatedFavoritesProxies:(id)proxies activityCategory:(int64_t)category;
- (void)canShareFileURL:(id)l completionHandler:(id)handler;
- (void)connectToDaemonWithContext:(id)context completionHandler:(id)handler;
- (void)connectUIServiceToDaemonWithSessionID:(id)d;
- (void)connectionEstablished;
- (void)connectionInterrupted;
- (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler;
- (void)dataSourceUpdatedWithSessionConfiguration:(id)configuration;
- (void)deleteSharingURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler;
- (void)didPerformInServiceActivityWithIdentifier:(id)identifier completed:(BOOL)completed items:(id)items error:(id)error;
- (void)didUpdateAirDropTransferWithChange:(id)change;
- (void)ensureConnectionEstablished;
- (void)ensureXPCStarted;
- (void)invalidate;
- (void)invalidated;
- (void)isShareOwnerOrAdminForFileURL:(id)l completionHandler:(id)handler;
- (void)performActivityInHostWithUUID:(id)d;
- (void)performAirDropActivityInHostWithNoContentView:(BOOL)view;
- (void)performExtensionActivityInHostWithBundleID:(id)d request:(id)request;
- (void)performShortcutActivityInHostWithBundleID:(id)d singleUseToken:(id)token;
- (void)performUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds activityCategory:(int64_t)category;
- (void)requestAddParticipantsAllowedForURL:(id)l share:(id)share completionHandler:(id)handler;
- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestConfigurationWithSessionID:(id)d completion:(id)completion;
- (void)requestDefaultShareModeCollaborationForURL:(id)l completionHandler:(id)handler;
- (void)requestSharedURLForCollaborationRequest:(id)request completionHandler:(id)handler;
- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier;
- (void)sendConfiguration:(id)configuration completion:(id)completion;
- (void)shareStatusForFileURL:(id)l completionHandler:(id)handler;
- (void)updateUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds;
- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)d;
- (void)willPerformInServiceActivityWithRequest:(id)request completion:(id)completion;
@end

@implementation SFShareSheetSlotManager

- (void)ensureXPCStarted
{
  if (!self->_connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    machServiceName = [(SFShareSheetSlotManager *)self machServiceName];
    v5 = [v3 initWithMachServiceName:machServiceName options:0];
    connection = self->_connection;
    self->_connection = v5;

    if ([(SFShareSheetSlotManager *)self shouldEscapeXpcTryCatch])
    {
      [(NSXPCConnection *)self->_connection setDelegate:self];
    }

    remoteObjectInterface = [(SFShareSheetSlotManager *)self remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:remoteObjectInterface];

    exportedInterface = [(SFShareSheetSlotManager *)self exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:exportedInterface];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__SFShareSheetSlotManager_ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E71F95A8;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__SFShareSheetSlotManager_ensureXPCStarted__block_invoke_3;
    v10[3] = &unk_1E71F95A8;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v10];
    [(NSXPCConnection *)self->_connection resume];
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SFShareSheetSlotManager ensureXPCStarted];
    }

    [(SFShareSheetSlotManager *)self ensureConnectionEstablished];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)ensureConnectionEstablished
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Establishing connection", buf, 2u);
  }

  objc_initWeak(buf, self);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SFShareSheetSlotManager_ensureConnectionEstablished__block_invoke;
  v5[3] = &unk_1E71F95A8;
  objc_copyWeak(&v6, buf);
  [synchronousRemoteObjectProxy establishConnectionWithCompletionHandler:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(buf);
}

void __54__SFShareSheetSlotManager_ensureConnectionEstablished__block_invoke(uint64_t a1)
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "connection established", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionEstablished];
}

- (void)connectionEstablished
{
  v2 = share_sheet_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18B359000, v2, OS_LOG_TYPE_DEFAULT, "connection established", v3, 2u);
  }
}

- (SFShareSheetSlotManager)init
{
  v3.receiver = self;
  v3.super_class = SFShareSheetSlotManager;
  return [(SFShareSheetSlotManager *)&v3 init];
}

void __43__SFShareSheetSlotManager_ensureXPCStarted__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  sf_dispatch_on_main_queue();
  objc_destroyWeak(&v1);
}

void __43__SFShareSheetSlotManager_ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interrupted];
}

void __43__SFShareSheetSlotManager_ensureXPCStarted__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  sf_dispatch_on_main_queue();
  objc_destroyWeak(&v1);
}

void __43__SFShareSheetSlotManager_ensureXPCStarted__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidated];
}

- (void)invalidated
{
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled)
    {
      v3 = share_sheet_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [SFShareSheetSlotManager invalidated];
      }
    }

    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFShareSheetSlotManager invalidated];
    }

    connection = self->_connection;
    self->_connection = 0;

    self->_invalidateDone = 1;
  }
}

- (void)connectionInterrupted
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SFShareSheetSlotManager connectionInterrupted];
  }

  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate connectionInterrupted];
}

void __55__SFShareSheetSlotManager_synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Failed to get synchronous remote object proxy with error %@", &v4, 0xCu);
    }
  }
}

void __44__SFShareSheetSlotManager_remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "Failed to get asynchronous remote object proxy with error %@", &v4, 0xCu);
    }
  }
}

- (void)activate
{
  v9 = *MEMORY[0x1E69E9840];
  activateCalled = self->_activateCalled;
  v4 = share_sheet_log();
  v5 = v4;
  if (activateCalled)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFShareSheetSlotManager activate];
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      machServiceName = [(SFShareSheetSlotManager *)self machServiceName];
      v7 = 138412290;
      v8 = machServiceName;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Activating %@", &v7, 0xCu);
    }

    self->_activateCalled = 1;
    [(SFShareSheetSlotManager *)self ensureXPCStarted];
  }
}

- (void)invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    connection = self->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection invalidate];
      v4 = self->_connection;
      self->_connection = 0;
    }

    else
    {

      [(SFShareSheetSlotManager *)self invalidated];
    }
  }
}

- (void)connectToDaemonWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/connectToDaemonWithSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy connectToDaemonWithContext:contextCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (void)connectUIServiceToDaemonWithSessionID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/connectUIServiceToDaemonWithSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy connectUIServiceToDaemonWithSessionID:dCopy];

  os_activity_scope_leave(&v7);
}

- (void)sendConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/sendConfiguration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy sendConfiguration:configurationCopy completion:completionCopy];

  os_activity_scope_leave(&v10);
}

- (void)requestConfigurationWithSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestConfigurationWithSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy requestConfigurationWithSessionID:dCopy completion:completionCopy];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)d selectedActivityWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy selectedActivityWithIdentifier:identifierCopy];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)d selectedActionWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedActionWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy selectedActionWithIdentifier:identifierCopy];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)d selectedPersonWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedPersonWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy selectedPersonWithIdentifier:identifierCopy];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)d removedPersonWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerRemovedPersonWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy removedPersonWithIdentifier:identifierCopy];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)d provideFeedbackForPeopleSuggestionWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerProvideFeedbackForPeopleSuggestionWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy provideFeedbackForPeopleSuggestionWithIdentifier:identifierCopy];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)d didLongPressShareActivityWithIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidLongPressShareActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy didLongPressShareActivityWithIdentifier:identifierCopy];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)d toggledActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  dCopy = d;
  identifierCopy = identifier;
  v10 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerToggledActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy toggledActivityWithIdentifier:identifierCopy activityCategory:category];

  os_activity_scope_leave(&v12);
}

- (void)activityViewControllerWithSessionID:(id)d favoritedActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category
{
  activityCopy = activity;
  dCopy = d;
  identifierCopy = identifier;
  v12 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerFavoritedActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v12, &v14);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy favoritedActivity:activityCopy withIdentifier:identifierCopy activityCategory:category];

  os_activity_scope_leave(&v14);
}

- (void)activityViewControllerWithSessionID:(id)d selectedDefaultActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  dCopy = d;
  identifierCopy = identifier;
  v10 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedDefaultActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy selectedDefaultActivityWithIdentifier:identifierCopy activityCategory:category];

  os_activity_scope_leave(&v12);
}

- (void)activityViewControllerWithSessionID:(id)d updatedFavoritesProxies:(id)proxies activityCategory:(int64_t)category
{
  dCopy = d;
  proxiesCopy = proxies;
  v10 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerUpdatedFavoritesProxies", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWithSessionID:dCopy updatedFavoritesProxies:proxiesCopy activityCategory:category];

  os_activity_scope_leave(&v12);
}

- (void)activityViewControllerPerformedActivityWithSessionID:(id)d presentationMs:(unint64_t)ms totalShareTimeMs:(unint64_t)timeMs activityType:(id)type success:(BOOL)success
{
  successCopy = success;
  dCopy = d;
  typeCopy = type;
  v14 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerPerformedActivityWithSessionIDPresentationMsTotalShareTimeMsActivityTypeSuccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v14, &v16);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerPerformedActivityWithSessionID:dCopy presentationMs:ms totalShareTimeMs:timeMs activityType:typeCopy success:successCopy];

  os_activity_scope_leave(&v16);
}

- (void)activityViewControllerDidAppearWithSessionID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidAppear", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy activityViewControllerDidAppearWithSessionID:dCopy];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerDidDisappearWithSessionID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidDisappear", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy activityViewControllerDidDisappearWithSessionID:dCopy];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerSessionDidEndWithSessionID:(id)d testingSnapshot:(id)snapshot completionHandler:(id)handler
{
  dCopy = d;
  snapshotCopy = snapshot;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSessionDidEnd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerSessionDidEndWithSessionID:dCopy testingSnapshot:snapshotCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v13);
}

- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidEnterBackground", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerDidEnterBackgroundWithSessionID:dCopy];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerWillEnterForeground", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerWillEnterForegroundWithSessionID:dCopy];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerPerformEditActionsWithSessionID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerPerformEditActions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy activityViewControllerPerformEditActionsWithSessionID:dCopy];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerWithSessionID:(id)d performActivityWithType:(id)type completionHandler:(id)handler
{
  dCopy = d;
  typeCopy = type;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerWithSessionIDPerformActivityWithType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy activityViewControllerWithSessionID:dCopy performActivityWithType:typeCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v13);
}

- (void)activityViewControllerWithSessionID:(id)d findSupportedActivitiesWithCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerWithSessionIDFindSupportedActivities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy activityViewControllerWithSessionID:dCopy findSupportedActivitiesWithCompletionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)d
{
  dCopy = d;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/userDefaultsViewControllerDidDisappear", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy userDefaultsViewControllerDidDisappearWithSessionID:dCopy];

  os_activity_scope_leave(&v7);
}

- (void)dataSourceUpdatedWithSessionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate dataSourceUpdatedWithSessionConfiguration:configurationCopy];
}

- (void)performUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds activityCategory:(int64_t)category
{
  dsCopy = ds;
  suggestionProxiesCopy = suggestionProxies;
  proxiesCopy = proxies;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate performUserDefaultsWithFavoritesProxies:proxiesCopy suggestionProxies:suggestionProxiesCopy orderedUUIDs:dsCopy activityCategory:category];
}

- (void)updateUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds
{
  dsCopy = ds;
  suggestionProxiesCopy = suggestionProxies;
  proxiesCopy = proxies;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate updateUserDefaultsWithFavoritesProxies:proxiesCopy suggestionProxies:suggestionProxiesCopy orderedUUIDs:dsCopy];
}

- (void)performExtensionActivityInHostWithBundleID:(id)d request:(id)request
{
  requestCopy = request;
  dCopy = d;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate performExtensionActivityInHostWithBundleID:dCopy request:requestCopy];
}

- (void)performShortcutActivityInHostWithBundleID:(id)d singleUseToken:(id)token
{
  tokenCopy = token;
  dCopy = d;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate performShortcutActivityInHostWithBundleID:dCopy singleUseToken:tokenCopy];
}

- (void)performActivityInHostWithUUID:(id)d
{
  dCopy = d;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate performActivityInHostWithUUID:dCopy];
}

- (void)performAirDropActivityInHostWithNoContentView:(BOOL)view
{
  viewCopy = view;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate performAirDropActivityInHostWithNoContentView:viewCopy];
}

- (void)willPerformInServiceActivityWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate willPerformInServiceActivityWithRequest:requestCopy completion:completionCopy];
}

- (void)didPerformInServiceActivityWithIdentifier:(id)identifier completed:(BOOL)completed items:(id)items error:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  itemsCopy = items;
  identifierCopy = identifier;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate didPerformInServiceActivityWithIdentifier:identifierCopy completed:completedCopy items:itemsCopy error:errorCopy];
}

- (void)didUpdateAirDropTransferWithChange:(id)change
{
  changeCopy = change;
  delegate = [(SFShareSheetSlotManager *)self delegate];
  [delegate didUpdateAirDropTransferWithChange:changeCopy];
}

- (void)canShareFileURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy canShareFileURL:lCopy completionHandler:handlerCopy];
}

- (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/createSharingURLForCollaborationRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy createSharingURLForCollaborationRequest:requestCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (void)requestDefaultShareModeCollaborationForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestDefaultShareModeCollaborationForURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy requestDefaultShareModeCollaborationForURL:lCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (void)requestSharedURLForCollaborationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestSharedURLForCollaborationRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy requestSharedURLForCollaborationRequest:requestCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestCollaborativeModeForContentIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy requestCollaborativeModeForContentIdentifier:identifierCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (void)requestAddParticipantsAllowedForURL:(id)l share:(id)share completionHandler:(id)handler
{
  lCopy = l;
  shareCopy = share;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestAddParticipantsAllowedForURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy requestAddParticipantsAllowedForURL:lCopy share:shareCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v13);
}

- (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier
{
  modeCopy = mode;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/saveCollaborativeMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  synchronousRemoteObjectProxy = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [synchronousRemoteObjectProxy saveCollaborativeMode:modeCopy forContentIdentifier:identifierCopy];

  os_activity_scope_leave(&v10);
}

- (void)deleteSharingURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/removeSharingURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy deleteSharingURL:lCopy containerSetupInfo:infoCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v13);
}

- (void)isShareOwnerOrAdminForFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/isShareOwnerOrAdminForFileURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy isShareOwnerOrAdminForFileURL:lCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (void)shareStatusForFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/shareStatusForFileURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  remoteObjectProxy = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [remoteObjectProxy shareStatusForFileURL:lCopy completionHandler:handlerCopy];

  os_activity_scope_leave(&v10);
}

- (id)exportedInterface
{
  v58 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF00FD0];
  v61 = MEMORY[0x1E695DFD8];
  v59 = objc_opt_class();
  v56 = objc_opt_class();
  v54 = objc_opt_class();
  v52 = objc_opt_class();
  v50 = objc_opt_class();
  v48 = objc_opt_class();
  v47 = objc_opt_class();
  v46 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v61 setWithObjects:{v59, v56, v54, v52, v50, v48, v47, v46, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v58 setClasses:v11 forSelector:sel_willPerformInServiceActivityWithRequest_completion_ argumentIndex:0 ofReply:1];

  v62 = MEMORY[0x1E695DFD8];
  v60 = objc_opt_class();
  v57 = objc_opt_class();
  v55 = objc_opt_class();
  v53 = objc_opt_class();
  v51 = objc_opt_class();
  v49 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v62 setWithObjects:{v60, v57, v55, v53, v51, v49, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  [v58 setClasses:v22 forSelector:sel_didPerformInServiceActivityWithIdentifier_completed_items_error_ argumentIndex:1 ofReply:0];

  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v23 setWithObjects:{v24, v25, objc_opt_class(), 0}];
  [v58 setClasses:v26 forSelector:sel_performUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_activityCategory_ argumentIndex:0 ofReply:0];

  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
  [v58 setClasses:v30 forSelector:sel_performUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_activityCategory_ argumentIndex:1 ofReply:0];

  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  [v58 setClasses:v33 forSelector:sel_performUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_activityCategory_ argumentIndex:2 ofReply:0];

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
  [v58 setClasses:v37 forSelector:sel_updateUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_ argumentIndex:0 ofReply:0];

  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
  [v58 setClasses:v41 forSelector:sel_updateUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_ argumentIndex:1 ofReply:0];

  v42 = MEMORY[0x1E695DFD8];
  v43 = objc_opt_class();
  v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
  [v58 setClasses:v44 forSelector:sel_updateUserDefaultsWithFavoritesProxies_suggestionProxies_orderedUUIDs_ argumentIndex:2 ofReply:0];

  [v58 setClass:objc_opt_class() forSelector:sel_didUpdateAirDropTransferWithChange_ argumentIndex:0 ofReply:0];
  [v58 setClass:objc_opt_class() forSelector:sel_dataSourceUpdatedWithSessionConfiguration_ argumentIndex:0 ofReply:0];

  return v58;
}

- (id)remoteObjectInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF36228];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v3 setWithObjects:{v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_connectToDaemonWithContext_completionHandler_ argumentIndex:0 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:sel_connectUIServiceToDaemonWithSessionID_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_sendConfiguration_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_requestConfigurationWithSessionID_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_selectedPersonWithIdentifier_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_selectedPersonWithIdentifier_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_removedPersonWithIdentifier_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_removedPersonWithIdentifier_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_didLongPressShareActivityWithIdentifier_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_didLongPressShareActivityWithIdentifier_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_provideFeedbackForPeopleSuggestionWithIdentifier_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerWithSessionID_provideFeedbackForPeopleSuggestionWithIdentifier_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerSessionDidEndWithSessionID_testingSnapshot_completionHandler_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerSessionDidEndWithSessionID_testingSnapshot_completionHandler_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_activityViewControllerSessionDidEndWithSessionID_testingSnapshot_completionHandler_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_userDefaultsViewControllerDidDisappearWithSessionID_ argumentIndex:0 ofReply:0];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v2 setClasses:v13 forSelector:sel_activityViewControllerWithSessionID_updatedFavoritesProxies_activityCategory_ argumentIndex:1 ofReply:0];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [v2 setClasses:v16 forSelector:sel_activityViewControllerWithSessionID_findSupportedActivitiesWithCompletionHandler_ argumentIndex:0 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_createSharingURLForCollaborationRequest_completionHandler_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_createSharingURLForCollaborationRequest_completionHandler_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_requestSharedURLForCollaborationRequest_completionHandler_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_requestSharedURLForCollaborationRequest_completionHandler_ argumentIndex:0 ofReply:1];
  [v2 setClass:getCKContainerSetupInfoClass() forSelector:sel_deleteSharingURL_containerSetupInfo_completionHandler_ argumentIndex:1 ofReply:0];
  [v2 setClass:getCKShareClass() forSelector:sel_requestAddParticipantsAllowedForURL_share_completionHandler_ argumentIndex:1 ofReply:0];

  return v2;
}

- (SFShareSheetSlotManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end