@interface WBSCloudBookmarksMigrationCoordinator
- (BOOL)isMigrationEnabled;
- (WBSCloudBookmarksMigrationCoordinator)initWithSyncAgent:(id)a3 localDataProvider:(id)a4;
- (WBSCloudBookmarksMigrationCoordinatorLocalDataProvider)localDataProvider;
- (WBSSafariBookmarksSyncAgentProtocol)syncAgent;
- (void)_beginMigrationIfPossible;
- (void)_determineCourseOfActionFromRemoteMigrationState;
- (void)_determineCourseOfActionFromSyncAgentMigrationState;
- (void)_logErrorAsKeyAction:(id)a3;
- (void)_logKeyAction:(id)a3;
- (void)setMigrationEnabled:(BOOL)a3;
- (void)startCoordinatingMigration;
@end

@implementation WBSCloudBookmarksMigrationCoordinator

- (void)startCoordinatingMigration
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.opaque[0]) = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Starting migration coordination", &buf, 2u);
  }

  v4 = _os_activity_create(&dword_1BB6F3000, "Start coordinating migration in UI process", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  buf.opaque[0] = 0;
  buf.opaque[1] = 0;
  os_activity_scope_enter(v4, &buf);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSCloudBookmarksMigrationCoordinator_startCoordinatingMigration__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_async(processingQueue, block);
  os_activity_scope_leave(&buf);
}

uint64_t __67__WBSCloudBookmarksMigrationCoordinator_startCoordinatingMigration__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 32);
  if (v2[40])
  {

    return [v2 _determineCourseOfActionFromSyncAgentMigrationState];
  }

  else
  {
    result = [v2 _logKeyAction:@"Not migrating because migration is disabled"];
    *(*(a1 + 32) + 32) = 2;
  }

  return result;
}

- (void)_determineCourseOfActionFromSyncAgentMigrationState
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Requesting local migration state from data provider", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_localDataProvider);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromSyncAgentMigrationState__block_invoke;
  v5[3] = &unk_1E7FB7508;
  v5[4] = self;
  [WeakRetained getLocalMigrationStateForMigrationCoordinator:self completionHandler:v5];
}

void __92__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromSyncAgentMigrationState__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 <= 0)
  {
    if (v2 == -1)
    {
      v9 = *(a1 + 32);

      [v9 _logKeyAction:@"Could not open the database to check the state; do not migrate"];
    }

    else if (!v2)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "Sync agent is idle; consulting remote migration state to determine what to do", v11, 2u);
      }

      [*(a1 + 32) _determineCourseOfActionFromRemoteMigrationState];
      v5 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "Notifying the agent to periodically check the remote migration state", v10, 2u);
      }

      [*(*(a1 + 32) + 8) observeRemoteMigrationStateForSecondaryMigration];
    }
  }

  else
  {
    if (v2 == 1)
    {
      v6 = *(a1 + 32);
      v7 = @"Resuming migration because sync agent claims we are already responsible for migration";
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          v3 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Not migrating because sync agent claims migration is already finished", buf, 2u);
          }
        }

        return;
      }

      v6 = *(a1 + 32);
      v7 = @"Trying to resume local-only local migration";
    }

    [v6 _logKeyAction:v7];
    v8 = *(*(a1 + 32) + 8);

    [v8 beginMigrationFromDAV];
  }
}

- (WBSCloudBookmarksMigrationCoordinator)initWithSyncAgent:(id)a3 localDataProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSCloudBookmarksMigrationCoordinator;
  v9 = [(WBSCloudBookmarksMigrationCoordinator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncAgent, a3);
    objc_storeWeak(&v10->_localDataProvider, v8);
    v11 = dispatch_queue_create("com.apple.SafariShared.WBSCloudBookmarksMigrationCoordinatorProcessingQueue", 0);
    processingQueue = v10->_processingQueue;
    v10->_processingQueue = v11;

    v10->_migrationEnabled = 1;
    v13 = v10;
  }

  return v10;
}

- (WBSSafariBookmarksSyncAgentProtocol)syncAgent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__WBSCloudBookmarksMigrationCoordinator_syncAgent__block_invoke;
  v5[3] = &unk_1E7FB7490;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setMigrationEnabled:(BOOL)a3
{
  processingQueue = self->_processingQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__WBSCloudBookmarksMigrationCoordinator_setMigrationEnabled___block_invoke;
  v4[3] = &unk_1E7FB74B8;
  v5 = a3;
  v4[4] = self;
  dispatch_async(processingQueue, v4);
}

uint64_t __61__WBSCloudBookmarksMigrationCoordinator_setMigrationEnabled___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 40))
  {
    *(v2 + 40) = v1;
    result = *(result + 32);
    if (*(result + 40) == 1 && *(result + 32) == 2)
    {
      return [result startCoordinatingMigration];
    }
  }

  return result;
}

- (BOOL)isMigrationEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__WBSCloudBookmarksMigrationCoordinator_isMigrationEnabled__block_invoke;
  v5[3] = &unk_1E7FB7490;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_logKeyAction:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
  }

  [(WBSLogger *)self->_keyActionsLogger logMessage:v4];
}

- (void)_logErrorAsKeyAction:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(WBSCloudBookmarksMigrationCoordinator *)v4 _logErrorAsKeyAction:v5];
  }

  [(WBSLogger *)self->_keyActionsLogger logMessage:v4];
}

void __92__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromSyncAgentMigrationState__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromSyncAgentMigrationState__block_invoke_2;
  v4[3] = &unk_1E7FB74E0;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

- (void)_determineCourseOfActionFromRemoteMigrationState
{
  v3 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Requesting remote migration state from sync agent", buf, 2u);
  }

  syncAgent = self->_syncAgent;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromRemoteMigrationState__block_invoke;
  v5[3] = &unk_1E7FB7530;
  v5[4] = self;
  [(WBSSafariBookmarksSyncAgentProtocol *)syncAgent fetchRemoteMigrationStateWithCompletionHandler:v5];
}

void __89__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromRemoteMigrationState__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __89__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromRemoteMigrationState__block_invoke_cold_1(v7, v6);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromRemoteMigrationState__block_invoke_13;
    v10[3] = &unk_1E7FB74E0;
    v10[4] = v8;
    v10[5] = a2;
    dispatch_async(v9, v10);
  }
}

void __89__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromRemoteMigrationState__block_invoke_13(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 > 0)
  {
    if (v2 == 1)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Remote migration state indicates someone else is migrating", v7, 2u);
      }

      [*(a1 + 32) _considerOverridingOtherMigratingDevice];
    }

    else if (v2 == 2)
    {
      [*(a1 + 32) _logKeyAction:@"Remote migration state indicates migration is done; triggering local migration"];
      v4 = *(*(a1 + 32) + 8);

      [v4 beginMigrationFromDAV];
    }
  }

  else if (v2 == -1)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __89__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromRemoteMigrationState__block_invoke_13_cold_1(v5);
    }
  }

  else if (!v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Remote migration state indicates migration has not happened yet", buf, 2u);
    }

    [*(a1 + 32) _beginMigrationIfPossible];
  }
}

- (void)_beginMigrationIfPossible
{
  if (self->_didDetermineReadyToMigrate)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v11 = 0;
    v3 = "Not doing anything since there was no change in migration readiness";
    v4 = &v11;
    v5 = v2;
LABEL_12:
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    return;
  }

  self->_didDetermineReadyToMigrate = 1;
  v7 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_DEFAULT, "Decided migration is possible", buf, 2u);
  }

  migrationEnabled = self->_migrationEnabled;
  v9 = WBS_LOG_CHANNEL_PREFIXCloudBookmarks();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!migrationEnabled)
  {
    if (!v10)
    {
      return;
    }

    *v13 = 0;
    v3 = "Not migrating since migration has been disabled";
    v4 = v13;
    v5 = v9;
    goto LABEL_12;
  }

  if (v10)
  {
    *v12 = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_DEFAULT, "Requesting migration from sync agent", v12, 2u);
  }

  [(WBSSafariBookmarksSyncAgentProtocol *)self->_syncAgent beginMigrationFromDAV];
}

- (WBSCloudBookmarksMigrationCoordinatorLocalDataProvider)localDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_localDataProvider);

  return WeakRetained;
}

- (void)_logErrorAsKeyAction:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

void __89__WBSCloudBookmarksMigrationCoordinator__determineCourseOfActionFromRemoteMigrationState__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Error fetching remote migration state: %{public}@", &v5, 0xCu);
}

@end