@interface SFShareSheetSlotManager
- (SFShareSheetSlotManager)init;
- (SFShareSheetSlotManagerDelegate)delegate;
- (id)exportedInterface;
- (id)remoteObjectInterface;
- (void)activate;
- (void)activityViewControllerDidAppearWithSessionID:(id)a3;
- (void)activityViewControllerDidDisappearWithSessionID:(id)a3;
- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)a3;
- (void)activityViewControllerPerformEditActionsWithSessionID:(id)a3;
- (void)activityViewControllerPerformedActivityWithSessionID:(id)a3 presentationMs:(unint64_t)a4 totalShareTimeMs:(unint64_t)a5 activityType:(id)a6 success:(BOOL)a7;
- (void)activityViewControllerSessionDidEndWithSessionID:(id)a3 testingSnapshot:(id)a4 completionHandler:(id)a5;
- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)a3;
- (void)activityViewControllerWithSessionID:(id)a3 didLongPressShareActivityWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 favoritedActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6;
- (void)activityViewControllerWithSessionID:(id)a3 findSupportedActivitiesWithCompletionHandler:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 performActivityWithType:(id)a4 completionHandler:(id)a5;
- (void)activityViewControllerWithSessionID:(id)a3 provideFeedbackForPeopleSuggestionWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 removedPersonWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 selectedActionWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 selectedActivityWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 selectedDefaultActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)activityViewControllerWithSessionID:(id)a3 selectedPersonWithIdentifier:(id)a4;
- (void)activityViewControllerWithSessionID:(id)a3 toggledActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)activityViewControllerWithSessionID:(id)a3 updatedFavoritesProxies:(id)a4 activityCategory:(int64_t)a5;
- (void)canShareFileURL:(id)a3 completionHandler:(id)a4;
- (void)connectToDaemonWithContext:(id)a3 completionHandler:(id)a4;
- (void)connectUIServiceToDaemonWithSessionID:(id)a3;
- (void)connectionEstablished;
- (void)connectionInterrupted;
- (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4;
- (void)dataSourceUpdatedWithSessionConfiguration:(id)a3;
- (void)deleteSharingURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5;
- (void)didPerformInServiceActivityWithIdentifier:(id)a3 completed:(BOOL)a4 items:(id)a5 error:(id)a6;
- (void)didUpdateAirDropTransferWithChange:(id)a3;
- (void)ensureConnectionEstablished;
- (void)ensureXPCStarted;
- (void)invalidate;
- (void)invalidated;
- (void)isShareOwnerOrAdminForFileURL:(id)a3 completionHandler:(id)a4;
- (void)performActivityInHostWithUUID:(id)a3;
- (void)performAirDropActivityInHostWithNoContentView:(BOOL)a3;
- (void)performExtensionActivityInHostWithBundleID:(id)a3 request:(id)a4;
- (void)performShortcutActivityInHostWithBundleID:(id)a3 singleUseToken:(id)a4;
- (void)performUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5 activityCategory:(int64_t)a6;
- (void)requestAddParticipantsAllowedForURL:(id)a3 share:(id)a4 completionHandler:(id)a5;
- (void)requestCollaborativeModeForContentIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestConfigurationWithSessionID:(id)a3 completion:(id)a4;
- (void)requestDefaultShareModeCollaborationForURL:(id)a3 completionHandler:(id)a4;
- (void)requestSharedURLForCollaborationRequest:(id)a3 completionHandler:(id)a4;
- (void)saveCollaborativeMode:(id)a3 forContentIdentifier:(id)a4;
- (void)sendConfiguration:(id)a3 completion:(id)a4;
- (void)shareStatusForFileURL:(id)a3 completionHandler:(id)a4;
- (void)updateUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5;
- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)a3;
- (void)willPerformInServiceActivityWithRequest:(id)a3 completion:(id)a4;
@end

@implementation SFShareSheetSlotManager

- (void)ensureXPCStarted
{
  if (!self->_connection)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [(SFShareSheetSlotManager *)self machServiceName];
    v5 = [v3 initWithMachServiceName:v4 options:0];
    connection = self->_connection;
    self->_connection = v5;

    if ([(SFShareSheetSlotManager *)self shouldEscapeXpcTryCatch])
    {
      [(NSXPCConnection *)self->_connection setDelegate:self];
    }

    v7 = [(SFShareSheetSlotManager *)self remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v7];

    v8 = [(SFShareSheetSlotManager *)self exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:v8];

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
  v4 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SFShareSheetSlotManager_ensureConnectionEstablished__block_invoke;
  v5[3] = &unk_1E71F95A8;
  objc_copyWeak(&v6, buf);
  [v4 establishConnectionWithCompletionHandler:v5];
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

  v4 = [(SFShareSheetSlotManager *)self delegate];
  [v4 connectionInterrupted];
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
      v6 = [(SFShareSheetSlotManager *)self machServiceName];
      v7 = 138412290;
      v8 = v6;
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

- (void)connectToDaemonWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/connectToDaemonWithSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 connectToDaemonWithContext:v6 completionHandler:v7];

  os_activity_scope_leave(&v10);
}

- (void)connectUIServiceToDaemonWithSessionID:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/connectUIServiceToDaemonWithSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  v6 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v6 connectUIServiceToDaemonWithSessionID:v4];

  os_activity_scope_leave(&v7);
}

- (void)sendConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/sendConfiguration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 sendConfiguration:v6 completion:v7];

  os_activity_scope_leave(&v10);
}

- (void)requestConfigurationWithSessionID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestConfigurationWithSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 requestConfigurationWithSessionID:v6 completion:v7];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 selectedActivityWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 activityViewControllerWithSessionID:v6 selectedActivityWithIdentifier:v7];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 selectedActionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedActionWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 activityViewControllerWithSessionID:v6 selectedActionWithIdentifier:v7];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 selectedPersonWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedPersonWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 activityViewControllerWithSessionID:v6 selectedPersonWithIdentifier:v7];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 removedPersonWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerRemovedPersonWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 activityViewControllerWithSessionID:v6 removedPersonWithIdentifier:v7];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 provideFeedbackForPeopleSuggestionWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerProvideFeedbackForPeopleSuggestionWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 activityViewControllerWithSessionID:v6 provideFeedbackForPeopleSuggestionWithIdentifier:v7];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 didLongPressShareActivityWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidLongPressShareActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 activityViewControllerWithSessionID:v6 didLongPressShareActivityWithIdentifier:v7];

  os_activity_scope_leave(&v10);
}

- (void)activityViewControllerWithSessionID:(id)a3 toggledActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerToggledActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  v11 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v11 activityViewControllerWithSessionID:v8 toggledActivityWithIdentifier:v9 activityCategory:a5];

  os_activity_scope_leave(&v12);
}

- (void)activityViewControllerWithSessionID:(id)a3 favoritedActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerFavoritedActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v12, &v14);
  v13 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v13 activityViewControllerWithSessionID:v10 favoritedActivity:v8 withIdentifier:v11 activityCategory:a6];

  os_activity_scope_leave(&v14);
}

- (void)activityViewControllerWithSessionID:(id)a3 selectedDefaultActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSelectedDefaultActivityWithIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  v11 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v11 activityViewControllerWithSessionID:v8 selectedDefaultActivityWithIdentifier:v9 activityCategory:a5];

  os_activity_scope_leave(&v12);
}

- (void)activityViewControllerWithSessionID:(id)a3 updatedFavoritesProxies:(id)a4 activityCategory:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerUpdatedFavoritesProxies", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  v11 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v11 activityViewControllerWithSessionID:v8 updatedFavoritesProxies:v9 activityCategory:a5];

  os_activity_scope_leave(&v12);
}

- (void)activityViewControllerPerformedActivityWithSessionID:(id)a3 presentationMs:(unint64_t)a4 totalShareTimeMs:(unint64_t)a5 activityType:(id)a6 success:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a6;
  v14 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerPerformedActivityWithSessionIDPresentationMsTotalShareTimeMsActivityTypeSuccess", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v14, &v16);
  v15 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v15 activityViewControllerPerformedActivityWithSessionID:v12 presentationMs:a4 totalShareTimeMs:a5 activityType:v13 success:v7];

  os_activity_scope_leave(&v16);
}

- (void)activityViewControllerDidAppearWithSessionID:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidAppear", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  v6 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v6 activityViewControllerDidAppearWithSessionID:v4];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerDidDisappearWithSessionID:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidDisappear", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  v6 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v6 activityViewControllerDidDisappearWithSessionID:v4];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerSessionDidEndWithSessionID:(id)a3 testingSnapshot:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerSessionDidEnd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  v12 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v12 activityViewControllerSessionDidEndWithSessionID:v8 testingSnapshot:v9 completionHandler:v10];

  os_activity_scope_leave(&v13);
}

- (void)activityViewControllerDidEnterBackgroundWithSessionID:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerDidEnterBackground", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  v6 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v6 activityViewControllerDidEnterBackgroundWithSessionID:v4];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerWillEnterForegroundWithSessionID:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerWillEnterForeground", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  v6 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v6 activityViewControllerWillEnterForegroundWithSessionID:v4];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerPerformEditActionsWithSessionID:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerPerformEditActions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  v6 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v6 activityViewControllerPerformEditActionsWithSessionID:v4];

  os_activity_scope_leave(&v7);
}

- (void)activityViewControllerWithSessionID:(id)a3 performActivityWithType:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerWithSessionIDPerformActivityWithType", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  v12 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v12 activityViewControllerWithSessionID:v8 performActivityWithType:v9 completionHandler:v10];

  os_activity_scope_leave(&v13);
}

- (void)activityViewControllerWithSessionID:(id)a3 findSupportedActivitiesWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/activityViewControllerWithSessionIDFindSupportedActivities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v9 activityViewControllerWithSessionID:v6 findSupportedActivitiesWithCompletionHandler:v7];

  os_activity_scope_leave(&v10);
}

- (void)userDefaultsViewControllerDidDisappearWithSessionID:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/userDefaultsViewControllerDidDisappear", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  v6 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v6 userDefaultsViewControllerDidDisappearWithSessionID:v4];

  os_activity_scope_leave(&v7);
}

- (void)dataSourceUpdatedWithSessionConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SFShareSheetSlotManager *)self delegate];
  [v5 dataSourceUpdatedWithSessionConfiguration:v4];
}

- (void)performUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5 activityCategory:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(SFShareSheetSlotManager *)self delegate];
  [v13 performUserDefaultsWithFavoritesProxies:v12 suggestionProxies:v11 orderedUUIDs:v10 activityCategory:a6];
}

- (void)updateUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SFShareSheetSlotManager *)self delegate];
  [v11 updateUserDefaultsWithFavoritesProxies:v10 suggestionProxies:v9 orderedUUIDs:v8];
}

- (void)performExtensionActivityInHostWithBundleID:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SFShareSheetSlotManager *)self delegate];
  [v8 performExtensionActivityInHostWithBundleID:v7 request:v6];
}

- (void)performShortcutActivityInHostWithBundleID:(id)a3 singleUseToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SFShareSheetSlotManager *)self delegate];
  [v8 performShortcutActivityInHostWithBundleID:v7 singleUseToken:v6];
}

- (void)performActivityInHostWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(SFShareSheetSlotManager *)self delegate];
  [v5 performActivityInHostWithUUID:v4];
}

- (void)performAirDropActivityInHostWithNoContentView:(BOOL)a3
{
  v3 = a3;
  v4 = [(SFShareSheetSlotManager *)self delegate];
  [v4 performAirDropActivityInHostWithNoContentView:v3];
}

- (void)willPerformInServiceActivityWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SFShareSheetSlotManager *)self delegate];
  [v8 willPerformInServiceActivityWithRequest:v7 completion:v6];
}

- (void)didPerformInServiceActivityWithIdentifier:(id)a3 completed:(BOOL)a4 items:(id)a5 error:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(SFShareSheetSlotManager *)self delegate];
  [v13 didPerformInServiceActivityWithIdentifier:v12 completed:v7 items:v11 error:v10];
}

- (void)didUpdateAirDropTransferWithChange:(id)a3
{
  v4 = a3;
  v5 = [(SFShareSheetSlotManager *)self delegate];
  [v5 didUpdateAirDropTransferWithChange:v4];
}

- (void)canShareFileURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v8 canShareFileURL:v7 completionHandler:v6];
}

- (void)createSharingURLForCollaborationRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/createSharingURLForCollaborationRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v9 createSharingURLForCollaborationRequest:v6 completionHandler:v7];

  os_activity_scope_leave(&v10);
}

- (void)requestDefaultShareModeCollaborationForURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestDefaultShareModeCollaborationForURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 requestDefaultShareModeCollaborationForURL:v6 completionHandler:v7];

  os_activity_scope_leave(&v10);
}

- (void)requestSharedURLForCollaborationRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestSharedURLForCollaborationRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v9 requestSharedURLForCollaborationRequest:v6 completionHandler:v7];

  os_activity_scope_leave(&v10);
}

- (void)requestCollaborativeModeForContentIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestCollaborativeModeForContentIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 requestCollaborativeModeForContentIdentifier:v6 completionHandler:v7];

  os_activity_scope_leave(&v10);
}

- (void)requestAddParticipantsAllowedForURL:(id)a3 share:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/requestAddParticipantsAllowedForURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  v12 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v12 requestAddParticipantsAllowedForURL:v8 share:v9 completionHandler:v10];

  os_activity_scope_leave(&v13);
}

- (void)saveCollaborativeMode:(id)a3 forContentIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/saveCollaborativeMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self synchronousRemoteObjectProxy];
  [v9 saveCollaborativeMode:v6 forContentIdentifier:v7];

  os_activity_scope_leave(&v10);
}

- (void)deleteSharingURL:(id)a3 containerSetupInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/removeSharingURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v11, &v13);
  v12 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v12 deleteSharingURL:v8 containerSetupInfo:v9 completionHandler:v10];

  os_activity_scope_leave(&v13);
}

- (void)isShareOwnerOrAdminForFileURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/isShareOwnerOrAdminForFileURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v9 isShareOwnerOrAdminForFileURL:v6 completionHandler:v7];

  os_activity_scope_leave(&v10);
}

- (void)shareStatusForFileURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_18B359000, "Sharing/SFShareSheetSlotManager/shareStatusForFileURL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  v9 = [(SFShareSheetSlotManager *)self remoteObjectProxy];
  [v9 shareStatusForFileURL:v6 completionHandler:v7];

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