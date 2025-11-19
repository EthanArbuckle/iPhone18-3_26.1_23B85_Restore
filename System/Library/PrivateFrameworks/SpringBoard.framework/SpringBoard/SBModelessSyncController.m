@interface SBModelessSyncController
+ (id)sharedInstance;
- (SBModelessSyncController)init;
- (void)_appSyncStateChanged;
- (void)_beginObservingICloudRestoreStatus;
- (void)_iCloudStatusChanged;
- (void)_setAppSyncState:(BOOL)a3;
- (void)_updateIconsForStateChange;
- (void)beginMonitoring;
- (void)connection:(id)a3 updatedProgress:(id)a4;
- (void)dealloc;
- (void)endMonitoring;
- (void)setIsSyncing:(BOOL)a3;
@end

@implementation SBModelessSyncController

- (SBModelessSyncController)init
{
  v5.receiver = self;
  v5.super_class = SBModelessSyncController;
  v2 = [(SBModelessSyncController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBModelessSyncController *)v2 _appSyncStateChanged];
  }

  return v3;
}

- (void)dealloc
{
  [(SBModelessSyncController *)self endMonitoring];
  v3.receiver = self;
  v3.super_class = SBModelessSyncController;
  [(SBModelessSyncController *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[SBModelessSyncController sharedInstance];
  }

  v3 = sharedInstance___instance_6;

  return v3;
}

uint64_t __42__SBModelessSyncController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBModelessSyncController);
  v1 = sharedInstance___instance_6;
  sharedInstance___instance_6 = v0;

  return kdebug_trace();
}

- (void)setIsSyncing:(BOOL)a3
{
  if (self->_isSyncing != a3)
  {
    self->_isSyncing = a3;
    v4 = @"kSBSyncSessionEnded";
    if (a3)
    {
      v4 = @"kSBSyncSessionBegan";
    }

    v5 = MEMORY[0x277CCAB98];
    v6 = v4;
    v7 = [v5 defaultCenter];
    [v7 postNotificationName:v6 object:0 userInfo:0];
  }
}

- (void)connection:(id)a3 updatedProgress:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKey:@"Enabled"];
  v7 = [v6 BOOLValue];

  v8 = [v5 objectForKey:@"AutoSync"];
  v9 = [v8 BOOLValue];

  v10 = [v5 objectForKey:@"Wireless"];

  LOBYTE(v5) = [v10 BOOLValue];
  [(SBModelessSyncController *)self setIsSyncing:v7];
  self->_isAutoSyncing = v9;
  self->_isWirelessSyncing = v5;
}

- (void)beginMonitoring
{
  [(SBModelessSyncController *)self _beginObservingICloudRestoreStatus];
  if (!self->_syncRegistrationToken)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__SBModelessSyncController_beginMonitoring__block_invoke;
    handler[3] = &unk_2783A95E8;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.atc.wsyncnotify", &self->_syncRegistrationToken, MEMORY[0x277D85CD0], handler);
  }

  v3 = objc_alloc_init(MEMORY[0x277CEA440]);
  airTrafficConnection = self->_airTrafficConnection;
  self->_airTrafficConnection = v3;

  [(ATConnection *)self->_airTrafficConnection setDelegate:self];
  [(ATConnection *)self->_airTrafficConnection registerForStatus];
}

- (void)endMonitoring
{
  [(SBModelessSyncController *)self _endObservingICloudRestoreStatus];
  syncRegistrationToken = self->_syncRegistrationToken;
  if (syncRegistrationToken)
  {
    notify_cancel(syncRegistrationToken);
    self->_syncRegistrationToken = 0;
  }

  [(ATConnection *)self->_airTrafficConnection setDelegate:0];
  airTrafficConnection = self->_airTrafficConnection;
  self->_airTrafficConnection = 0;
}

- (void)_appSyncStateChanged
{
  state64 = 0;
  notify_get_state(self->_syncRegistrationToken, &state64);
  [(SBModelessSyncController *)self _setAppSyncState:state64 != 0];
}

- (void)_setAppSyncState:(BOOL)a3
{
  if (self->_isAppSyncing != a3)
  {
    self->_isAppSyncing = a3;
    v4 = @"kSBWirelessAppSyncEnded";
    if (a3)
    {
      v4 = @"kSBWirelessAppSyncBegan";
    }

    v5 = MEMORY[0x277CCAB98];
    v6 = v4;
    v7 = [v5 defaultCenter];
    [v7 postNotificationName:v6 object:0 userInfo:0];

    if (!self->_isAppSyncing)
    {

      [(SBModelessSyncController *)self _updateIconsForStateChange];
    }
  }
}

- (void)_updateIconsForStateChange
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [SBApp windowSceneManager];
  v3 = [v2 connectedWindowScenes];

  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v20 + 1) + 8 * i) iconController];
        v9 = [v8 iconModel];

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [v9 leafIcons];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v16 + 1) + 8 * j);
              if ([v15 isApplicationIcon] && objc_msgSend(v15, "hasApplicationPlaceholder"))
              {
                [v15 noteExternalApplicationPlaceholderStateChange];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }
}

- (void)_iCloudStatusChanged
{
  state64 = 0;
  notify_get_state(self->_iCloudRestoreToken, &state64);
  v3 = state64 - 1;
  v4 = state64 - 1 < 2;
  if (self->_restoringFromICloud != v4)
  {
    self->_restoringFromICloud = v4;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v5;
    if (v3 >= 2)
    {
      v7 = @"SBICloudRestoreDidEndNotification";
    }

    else
    {
      v7 = @"SBICloudRestoreDidBeginNotification";
    }

    [v5 postNotificationName:v7 object:0];
  }
}

- (void)_beginObservingICloudRestoreStatus
{
  v3 = [*MEMORY[0x277D28AA0] UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62__SBModelessSyncController__beginObservingICloudRestoreStatus__block_invoke;
  handler[3] = &unk_2783A95E8;
  handler[4] = self;
  notify_register_dispatch(v3, &self->_iCloudRestoreToken, MEMORY[0x277D85CD0], handler);
  [(SBModelessSyncController *)self _iCloudStatusChanged];
}

@end