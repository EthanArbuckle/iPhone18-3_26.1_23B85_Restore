@interface VCWatchSyncCoordinator
- (BOOL)companionSyncServiceShouldStartSession:(id)a3;
- (VCWatchSyncCoordinator)initWithSyncDataEndpoint:(id)a3 eventHandler:(id)a4;
- (int64_t)companionSyncService:(id)a3 typeForSession:(id)a4;
- (void)companionSyncService:(id)a3 didFinishSyncSession:(id)a4 withError:(id)a5;
- (void)companionSyncService:(id)a3 didRejectSessionWithError:(id)a4;
- (void)companionSyncService:(id)a3 outgoingSyncSession:(id)a4 didUpdateProgress:(double)a5;
- (void)companionSyncService:(id)a3 outgoingSyncSessionDidFinishSendingChanges:(id)a4;
- (void)dealloc;
- (void)handleDeviceDidChangeVersionNotification;
- (void)handleDidUnpairNotification:(id)a3;
- (void)requestSyncIfUnrestricted;
- (void)startObservingWatchChangeNotifications;
- (void)stopObservingWatchChangeNotifications;
- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4;
- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3;
@end

@implementation VCWatchSyncCoordinator

- (void)handleDidUnpairNotification:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D2BC40]];

  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 pairingID];
    *buf = 136315394;
    v30 = "[VCWatchSyncCoordinator handleDidUnpairNotification:]";
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s received DidUnpair notification for pairingID=%{public}@", buf, 0x16u);
  }

  v23 = v5;
  if (v5)
  {
    v8 = [VCNRDeviceSyncService alloc];
    v9 = [(VCWatchSyncCoordinator *)self service];
    v10 = [(VCNRDeviceSyncService *)v8 initWithCompanionSyncService:v9 device:v5];
  }

  else
  {
    v10 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [(VCWatchSyncCoordinator *)self syncDataEndpoint];
  v12 = [v11 syncDataHandlers];

  v13 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v24 = 0;
        v18 = [v17 resetSyncStateForService:v10 error:&v24];
        v19 = v24;
        if ((v18 & 1) == 0)
        {
          v20 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [(VCNRDeviceSyncService *)v10 syncServiceIdentifier];
            *buf = 136315650;
            v30 = "[VCWatchSyncCoordinator handleDidUnpairNotification:]";
            v31 = 2114;
            v32 = v21;
            v33 = 2114;
            v34 = v19;
            _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_ERROR, "%s Error removing sync state for sync service with identifier=%{public}@: %{public}@", buf, 0x20u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v14);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleDeviceDidChangeVersionNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[VCWatchSyncCoordinator handleDeviceDidChangeVersionNotification]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Received PairedDeviceDidChangeVersion notification", &v5, 0xCu);
  }

  [(VCWatchSyncCoordinator *)self requestSyncIfUnrestricted];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingWatchChangeNotifications
{
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D2BC80];
  v4 = [MEMORY[0x277D2BD00] sharedInstance];
  [v6 removeObserver:self name:v3 object:v4];

  v5 = [(VCWatchSyncCoordinator *)self eventHandler];
  [v5 removeObserver:self name:@"com.apple.nanoregistry.paireddevicedidchangeversion"];
}

- (void)startObservingWatchChangeNotifications
{
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D2BC80];
  v4 = [MEMORY[0x277D2BD00] sharedInstance];
  [v6 addObserver:self selector:sel_handleDidUnpairNotification_ name:v3 object:v4];

  v5 = [(VCWatchSyncCoordinator *)self eventHandler];
  [v5 addObserver:self selector:sel_handleDeviceDidChangeVersionNotification name:@"com.apple.nanoregistry.paireddevicedidchangeversion"];
}

- (void)companionSyncService:(id)a3 outgoingSyncSession:(id)a4 didUpdateProgress:(double)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator:a3];
  v7 = [v6 activeSyncSession];

  if (v7)
  {
    [v7 reportProgress:a5];
    v8 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 sessionIdentifier];
      v11 = 136315650;
      v12 = "[VCWatchSyncCoordinator companionSyncService:outgoingSyncSession:didUpdateProgress:]";
      v13 = 2048;
      v14 = a5;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Reported progress %f for PairedSync session %{public}@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)companionSyncService:(id)a3 outgoingSyncSessionDidFinishSendingChanges:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator:a3];
  v5 = [v4 activeSyncSession];

  if (v5)
  {
    [v5 syncDidCompleteSending];
    v6 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 sessionIdentifier];
      v9 = 136315394;
      v10 = "[VCWatchSyncCoordinator companionSyncService:outgoingSyncSessionDidFinishSendingChanges:]";
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Finished sending changes for PairedSync session %{public}@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)companionSyncService:(id)a3 didRejectSessionWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
  v7 = [v6 activeSyncSession];

  if (v7)
  {
    if (v5)
    {
      [v7 syncDidFailWithError:v5];
      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 sessionIdentifier];
        v15 = 136315650;
        v16 = "[VCWatchSyncCoordinator companionSyncService:didRejectSessionWithError:]";
        v17 = 2114;
        v18 = v9;
        v19 = 2114;
        v20 = v5;
        v10 = "%s PairedSync session %{public}@ failed to start syncing with error: %{public}@";
        v11 = v8;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 32;
LABEL_7:
        _os_log_impl(&dword_23103C000, v11, v12, v10, &v15, v13);
      }
    }

    else
    {
      [v7 syncDidComplete];
      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 sessionIdentifier];
        v15 = 136315394;
        v16 = "[VCWatchSyncCoordinator companionSyncService:didRejectSessionWithError:]";
        v17 = 2114;
        v18 = v9;
        v10 = "%s Completed PairedSync session %{public}@ succesfully because no changes had to be sent";
        v11 = v8;
        v12 = OS_LOG_TYPE_INFO;
        v13 = 22;
        goto LABEL_7;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)companionSyncService:(id)a3 didFinishSyncSession:(id)a4 withError:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
  v8 = [v7 activeSyncSession];

  if (v8)
  {
    if (v6)
    {
      [v8 syncDidFailWithError:v6];
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 sessionIdentifier];
        v16 = 136315650;
        v17 = "[VCWatchSyncCoordinator companionSyncService:didFinishSyncSession:withError:]";
        v18 = 2114;
        v19 = v10;
        v20 = 2114;
        v21 = v6;
        v11 = "%s PairedSync session %{public}@ failed with error: %{public}@";
        v12 = v9;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 32;
LABEL_7:
        _os_log_impl(&dword_23103C000, v12, v13, v11, &v16, v14);
      }
    }

    else
    {
      [v8 syncDidComplete];
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v8 sessionIdentifier];
        v16 = 136315394;
        v17 = "[VCWatchSyncCoordinator companionSyncService:didFinishSyncSession:withError:]";
        v18 = 2114;
        v19 = v10;
        v11 = "%s Completed PairedSync session %{public}@ succesfully";
        v12 = v9;
        v13 = OS_LOG_TYPE_INFO;
        v14 = 22;
        goto LABEL_7;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)companionSyncService:(id)a3 typeForSession:(id)a4
{
  v4 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator:a3];
  v5 = [v4 activeSyncSession];

  if (v5)
  {
    v6 = [v5 syncSessionType];
    if (v6)
    {
      v7 = 2 * (v6 == 1);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)companionSyncServiceShouldStartSession:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
  v4 = [v3 syncRestriction];

  if (v4 == 1)
  {
    v5 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[VCWatchSyncCoordinator companionSyncServiceShouldStartSession:]";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Not syncing because of PSYSyncRestrictionLimitPush", &v8, 0xCu);
    }
  }

  result = v4 != 1;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[VCWatchSyncCoordinator syncCoordinatorDidChangeSyncRestriction:]";
    v9 = 2048;
    v10 = [v4 syncRestriction];
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Sync restriction changed to %lu", &v7, 0x16u);
  }

  [(VCWatchSyncCoordinator *)self requestSyncIfUnrestricted];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)a3 didInvalidateSyncSession:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 sessionIdentifier];
    v11 = 136315394;
    v12 = "[VCWatchSyncCoordinator syncCoordinator:didInvalidateSyncSession:]";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Invalidated PairedSync session %{public}@", &v11, 0x16u);
  }

  v8 = [(VCWatchSyncCoordinator *)self startedSessions];
  v9 = [v5 sessionIdentifier];
  [v8 removeObject:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncCoordinator:(id)a3 beginSyncSession:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 sessionIdentifier];
    v9 = 136315394;
    v10 = "[VCWatchSyncCoordinator syncCoordinator:beginSyncSession:]";
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Starting PairedSync session %{public}@", &v9, 0x16u);
  }

  [(VCWatchSyncCoordinator *)self requestSyncIfUnrestricted];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestSyncIfUnrestricted
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(VCWatchSyncCoordinator *)self service];
  v4 = [(VCWatchSyncCoordinator *)self companionSyncServiceShouldStartSession:v3];

  if (v4)
  {
    v5 = [(VCWatchSyncCoordinator *)self pairedSyncCoordinator];
    v6 = [v5 activeSyncSession];

    if (v6)
    {
      v7 = [v6 sessionIdentifier];
      v8 = [(VCWatchSyncCoordinator *)self startedSessions];
      v9 = [v8 containsObject:v7];

      if ((v9 & 1) == 0)
      {
        v10 = [v6 syncSessionType];
        v11 = [(VCWatchSyncCoordinator *)self service];
        v12 = v11;
        if (v10)
        {
          [v11 requestSyncImmediately];
        }

        else
        {
          [v11 requestFullResync];
        }

        v13 = [(VCWatchSyncCoordinator *)self startedSessions];
        [v13 addObject:v7];

        v14 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = 136315394;
          v17 = "[VCWatchSyncCoordinator requestSyncIfUnrestricted]";
          v18 = 2114;
          v19 = v7;
          _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_INFO, "%s Requested CompanionSync session for PairedSync session %{public}@", &v16, 0x16u);
        }
      }
    }

    else
    {
      v7 = [(VCWatchSyncCoordinator *)self service];
      [v7 requestSync];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(VCWatchSyncCoordinator *)self stopObservingWatchChangeNotifications];
  v3.receiver = self;
  v3.super_class = VCWatchSyncCoordinator;
  [(VCWatchSyncCoordinator *)&v3 dealloc];
}

- (VCWatchSyncCoordinator)initWithSyncDataEndpoint:(id)a3 eventHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23.receiver = self;
  v23.super_class = VCWatchSyncCoordinator;
  v7 = [(VCWatchSyncCoordinator *)&v23 init];
  if (v7)
  {
    v8 = [MEMORY[0x277D79F18] currentDevice];
    if ([v8 idiom] == 1)
    {
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "[VCWatchSyncCoordinator initWithSyncDataEndpoint:eventHandler:]";
        v10 = "%s Not running WatchSync on iPad";
LABEL_16:
        _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
      }
    }

    else if (objc_opt_class())
    {
      if (objc_opt_class())
      {
        v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v9 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

        v13 = dispatch_queue_create("com.apple.VCWatchSyncCoordinator", v9);
        queue = v7->_queue;
        v7->_queue = v13;

        objc_storeStrong(&v7->_syncDataEndpoint, a3);
        v15 = [[VCCompanionSyncService alloc] initWithSyncDataEndpoint:v6];
        service = v7->_service;
        v7->_service = v15;

        [(VCCompanionSyncService *)v7->_service setDelegate:v7];
        if (v7->_service)
        {
          v17 = objc_opt_new();
          startedSessions = v7->_startedSessions;
          v7->_startedSessions = v17;

          v19 = [MEMORY[0x277D37C38] syncCoordinatorWithServiceName:@"com.apple.pairedsync.siriactionsd"];
          pairedSyncCoordinator = v7->_pairedSyncCoordinator;
          v7->_pairedSyncCoordinator = v19;

          [(PSYSyncCoordinator *)v7->_pairedSyncCoordinator setDelegate:v7 queue:v7->_queue];
          if (v7->_service)
          {
            [(VCWatchSyncCoordinator *)v7 startObservingWatchChangeNotifications];
          }

          v11 = v7;
          goto LABEL_18;
        }
      }

      else
      {
        v9 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v25 = "[VCWatchSyncCoordinator initWithSyncDataEndpoint:eventHandler:]";
          v10 = "%s The NanoRegistry framework is not present on this device";
          goto LABEL_16;
        }
      }
    }

    else
    {
      v9 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "[VCWatchSyncCoordinator initWithSyncDataEndpoint:eventHandler:]";
        v10 = "%s The PairedSync framework is not present on this device";
        goto LABEL_16;
      }
    }

    v11 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v11;
}

@end