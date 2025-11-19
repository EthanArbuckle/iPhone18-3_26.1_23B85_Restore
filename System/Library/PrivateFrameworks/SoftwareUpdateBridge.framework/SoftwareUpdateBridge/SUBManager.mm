@interface SUBManager
- (BOOL)adoptSimulationFileOfName:(id)a3;
- (SUBManager)initWithDelegate:(id)a3;
- (SUBManagerDelegate)delegate;
- (id)_serverConnection;
- (void)_forwardDownloadProgress:(id)a3;
- (void)_forwardInstallResult:(id)a3;
- (void)_forwardInstallationAwaitingUserInteraction:(id)a3;
- (void)_forwardInstallationCanProceed:(id)a3;
- (void)_forwardInstallationWillProceed:(id)a3;
- (void)_forwardScanResult:(id)a3;
- (void)_forwardUserDidAcceptTermsAndConditionsChanged:(id)a3;
- (void)_forwardUserInstallRequestTypeChanged:(id)a3;
- (void)dealloc;
- (void)getCloudDescriptors:(id)a3;
- (void)installUpdate:(id)a3;
- (void)installUpdate:(id)a3 passcode:(id)a4;
- (void)managerState:(id)a3;
- (void)performMigration;
- (void)purgeUpdate:(id)a3 completion:(id)a4;
- (void)removeCloudDescriptor:(id)a3;
- (void)scanForUpdates;
- (void)sendTermsRequest:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setUserInstallRequestTypeForUpdate:(id)a3 userInstallRequestType:(int64_t)a4 completion:(id)a5;
- (void)startDownload:(id)a3;
- (void)startDownload:(id)a3 passcode:(id)a4;
- (void)supportsInstallTonightWithCompletion:(id)a3;
- (void)userDidAcceptTermsAndConditionsForUpdate:(id)a3;
- (void)userDidAcceptTermsAndConditionsForUpdate:(id)a3 completion:(id)a4;
@end

@implementation SUBManager

- (SUBManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUBManager;
  v5 = [(SUBManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.SUBManager.ipc", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = [(SUBManager *)v6 _serverConnection];
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26AB06000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc SUManager", buf, 2u);
  }

  serverConnection = self->_serverConnection;
  if (serverConnection)
  {
    xpc_connection_cancel(serverConnection);
  }

  v5.receiver = self;
  v5.super_class = SUBManager;
  [(SUBManager *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__SUBManager_setDelegate___block_invoke;
  v7[3] = &unk_279CA7820;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (SUBManagerDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__SUBManager_delegate__block_invoke;
  v5[3] = &unk_279CA7848;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __22__SUBManager_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (id)_serverConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__SUBManager__serverConnection__block_invoke;
  v5[3] = &unk_279CA7898;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__SUBManager__serverConnection__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    mach_service = xpc_connection_create_mach_service(SUBMachServiceName, 0, 2uLL);
    objc_storeStrong((*(a1 + 32) + 24), mach_service);
    objc_initWeak(&location, *(a1 + 32));
    v4 = *(*(a1 + 32) + 24);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__SUBManager__serverConnection__block_invoke_2;
    v10[3] = &unk_279CA7870;
    objc_copyWeak(&v13, &location);
    v5 = mach_service;
    v6 = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    xpc_connection_set_event_handler(v4, v10);
    xpc_connection_activate(*(*(a1 + 32) + 24));
    v7 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 24);
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_26AB06000, v7, OS_LOG_TYPE_DEFAULT, "activated server connection: %p", buf, 0xCu);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);

    v2 = *(*(a1 + 32) + 24);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __31__SUBManager__serverConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = MEMORY[0x26D6678D0](v3);
    if (v5 == MEMORY[0x277D86480])
    {
      v10 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *MEMORY[0x277D86400];
        v13 = v10;
        *buf = 134218242;
        v23 = v11;
        v24 = 2082;
        string = xpc_dictionary_get_string(v3, v12);
        _os_log_impl(&dword_26AB06000, v13, OS_LOG_TYPE_DEFAULT, "XPC error on server connection (%p): %{public}s", buf, 0x16u);
      }

      if (v3 == MEMORY[0x277D863F8])
      {
        v14 = [WeakRetained queue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __31__SUBManager__serverConnection__block_invoke_290;
        v19[3] = &unk_279CA7848;
        v21 = *(a1 + 40);
        v20 = WeakRetained;
        dispatch_async(v14, v19);
      }
    }

    else if (v5 == MEMORY[0x277D86468])
    {
      v15 = xpc_dictionary_get_string(v3, SUBMessageTypeKey);
      if (!strcmp(v15, SUBMessageTypeDownloadProgress))
      {
        [WeakRetained _forwardDownloadProgress:v3];
      }

      else if (!strcmp(v15, SUBMessageTypeScanResult))
      {
        [WeakRetained _forwardScanResult:v3];
      }

      else if (!strcmp(v15, SUBMessageTypeInstallResult))
      {
        [WeakRetained _forwardInstallResult:v3];
      }

      else if (!strcmp(v15, SUBMessageTypeInstallationCanProceed))
      {
        [WeakRetained _forwardInstallationCanProceed:v3];
      }

      else if (!strcmp(v15, SUBMessageTypeInstallationWillProceed))
      {
        [WeakRetained _forwardInstallationWillProceed:v3];
      }

      else if (!strcmp(v15, SUBMessageTypeUserDidAcceptTermsAndConditionsChanged))
      {
        [WeakRetained _forwardUserDidAcceptTermsAndConditionsChanged:v3];
      }

      else if (!strcmp(v15, SUBMessageTypeUserInstallRequestTypeChanged))
      {
        [WeakRetained _forwardUserInstallRequestTypeChanged:v3];
      }

      else if (!strcmp(v15, SUBMessageTypePresentingAlertOnGizmo))
      {
        [WeakRetained _forwardInstallationAwaitingUserInteraction:v3];
      }

      else
      {
        v16 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 136446466;
          v23 = v15;
          v24 = 2048;
          string = v17;
          _os_log_impl(&dword_26AB06000, v16, OS_LOG_TYPE_DEFAULT, "unhandled message type %{public}s on server connection %p", buf, 0x16u);
        }
      }
    }

    else
    {
      v6 = MEMORY[0x26D667810](v3);
      if (v6)
      {
        v7 = v6;
        v8 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 136446466;
          v23 = v7;
          v24 = 2048;
          string = v9;
          _os_log_impl(&dword_26AB06000, v8, OS_LOG_TYPE_DEFAULT, "unexpected message %{public}s on connection %p", buf, 0x16u);
        }

        free(v7);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __31__SUBManager__serverConnection__block_invoke_290(uint64_t a1)
{
  xpc_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
  v2 = *(a1 + 32);

  return [v2 setServerConnection:0];
}

- (void)_forwardScanResult:(id)a3
{
  v4 = SUBMessageDescriptorKey;
  v5 = a3;
  v6 = objc_opt_class();
  v11 = SUBIPCDecodeObjectForKey(v5, v4, v6);
  v7 = SUBMessageErrorKey;
  v8 = objc_opt_class();
  v9 = SUBIPCDecodeObjectForKey(v5, v7, v8);

  v10 = [(SUBManager *)self delegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 manager:self scanRequestDidLocateUpdate:v11 error:v9];
  }
}

- (void)_forwardDownloadProgress:(id)a3
{
  v4 = SUBMessageDownloadKey;
  v5 = a3;
  v6 = objc_opt_class();
  v20 = SUBIPCDecodeObjectForKey(v5, v4, v6);
  v7 = SUBMessageErrorKey;
  v8 = objc_opt_class();
  v9 = SUBIPCDecodeObjectForKey(v5, v7, v8);

  v10 = [(SUBManager *)self delegate];
  v11 = v10;
  if (v9)
  {
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 manager:self didFailDownload:v20 withError:v9];
    }
  }

  else
  {
    v12 = [v20 progress];
    v13 = [v12 isDone];

    if (v13)
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      if (objc_opt_respondsToSelector())
      {
        v14 = [v20 descriptor];
        v15 = [v20 descriptor];
        v16 = [v15 willProceedWithInstallation];
        v17 = [v20 descriptor];
        [v11 manager:self installationOfUpdate:v14 willProceed:v16 waitingForAdmissionControl:{objc_msgSend(v17, "isAwaitingAdmissionControlForInstallation")}];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_15;
        }

        v14 = [v20 descriptor];
        v18 = [v14 willProceedWithInstallation];
        v19 = [v20 descriptor];
        [v11 manager:self didFinishDownload:v20 willProceedWithInstallation:v18 waitingForAdmissionControl:{objc_msgSend(v19, "isAwaitingAdmissionControlForInstallation")}];
      }
    }

    else if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 manager:self didChangeProgressOnDownload:v20];
    }
  }

LABEL_15:
}

- (void)_forwardInstallResult:(id)a3
{
  v4 = SUBMessageDescriptorKey;
  v5 = a3;
  v6 = objc_opt_class();
  v12 = SUBIPCDecodeObjectForKey(v5, v4, v6);
  v7 = SUBMessageErrorKey;
  v8 = objc_opt_class();
  v9 = SUBIPCDecodeObjectForKey(v5, v7, v8);

  v10 = [(SUBManager *)self delegate];
  v11 = v10;
  if (v9)
  {
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 manager:self didFailInstallation:v12 withError:v9];
    }
  }

  else if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v11 manager:self didFinishInstallation:v12];
  }
}

- (void)_forwardInstallationCanProceed:(id)a3
{
  xdict = a3;
  v4 = [(SUBManager *)self delegate];
  if (v4)
  {
    v5 = SUBMessageDescriptorKey;
    v6 = objc_opt_class();
    v7 = SUBIPCDecodeObjectForKey(xdict, v5, v6);
    int64 = xpc_dictionary_get_int64(xdict, SUBMessageCanProceedWithInstallationKey);
    if (objc_opt_respondsToSelector())
    {
      [v4 manager:self installationOfUpdate:v7 willProceed:0 waitingForAdmissionControl:int64 == 0];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v4 manager:self installationOfUpdate:v7 canProceed:int64 != 0];
    }
  }
}

- (void)_forwardInstallationWillProceed:(id)a3
{
  v8 = a3;
  v4 = [(SUBManager *)self delegate];
  if (v4)
  {
    v5 = SUBMessageDescriptorKey;
    v6 = objc_opt_class();
    v7 = SUBIPCDecodeObjectForKey(v8, v5, v6);
    if (objc_opt_respondsToSelector())
    {
      [v4 manager:self installationOfUpdate:v7 willProceed:1 waitingForAdmissionControl:0];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v4 manager:self willProceedWithInstallation:v7];
    }
  }
}

- (void)_forwardUserDidAcceptTermsAndConditionsChanged:(id)a3
{
  v4 = [(SUBManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 managerUserDidAcceptTermsAndConditionsForUpdate:self];
  }
}

- (void)_forwardUserInstallRequestTypeChanged:(id)a3
{
  v8 = a3;
  v4 = [(SUBManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = SUBMessageUserInstallRequestTypeKey;
    v6 = objc_opt_class();
    v7 = SUBIPCDecodeObjectForKey(v8, v5, v6);
    [v4 manager:self userInstallRequestTypeDidChange:{objc_msgSend(v7, "unsignedIntegerValue")}];
  }
}

- (void)_forwardInstallationAwaitingUserInteraction:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = SUBMessageDescriptorKey;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = SUBIPCDecodeObjectForKey(v5, v4, v6);

  v8 = [(SUBManager *)self delegate];
  v9 = objc_opt_respondsToSelector();
  v10 = softwareupdatebridge_log;
  v11 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 136446210;
      v14 = SUBMessageTypePresentingAlertOnGizmo;
      _os_log_impl(&dword_26AB06000, v10, OS_LOG_TYPE_DEFAULT, "Delegate found to handle %{public}s notification", &v13, 0xCu);
    }

    [v8 manager:self installationAwaitingUserInteraction:v7];
  }

  else if (v11)
  {
    v13 = 136446210;
    v14 = SUBMessageTypePresentingAlertOnGizmo;
    _os_log_impl(&dword_26AB06000, v10, OS_LOG_TYPE_DEFAULT, "No delegate currently responds to %{public}s notification", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)managerState:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, SUBMessageTypeKey, SUBMessageTypeQueryManagerState);
  v6 = [(SUBManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __27__SUBManager_managerState___block_invoke;
  handler[3] = &unk_279CA78C0;
  v7 = v4;
  v10 = v7;
  xpc_connection_send_message_with_reply(v6, v5, 0, handler);

  if ((atomic_exchange(&self->_hasQueriedStateOnceFlag, 1u) & 1) == 0)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, SUBMessageTypeKey, SUBMessageTypeAddClient);
    xpc_connection_send_message(self->_serverConnection, v8);
  }
}

void __27__SUBManager_managerState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x26D6678D0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v12 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_26AB06000, v12, OS_LOG_TYPE_DEFAULT, "Got XPC error querying manager state", v21, 2u);
    }

    v10 = *(a1 + 32);
    string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
    v11 = @"Error from XPC: %s";
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v14 = SUBMessageDescriptorKey;
      v15 = objc_opt_class();
      v13 = SUBIPCDecodeObjectForKey(v3, v14, v15);
      xpc_dictionary_get_int64(v3, SUBMessageManagerStateKey);
      v16 = SUBMessageErrorKey;
      v17 = objc_opt_class();
      v18 = SUBIPCDecodeObjectForKey(v3, v16, v17);
      (*(*(a1 + 32) + 16))();

      goto LABEL_11;
    }

    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v5, OS_LOG_TYPE_DEFAULT, "unexpected XPC type querying manager state", buf, 2u);
    }

    v10 = *(a1 + 32);
    v11 = @"Unexpected XPC type";
  }

  v13 = SUBError(@"SUBError", 2, 0, v11, v6, v7, v8, v9, string);
  (*(v10 + 16))(v10, 0, 0, v13);
LABEL_11:
}

- (void)scanForUpdates
{
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypeScanForUpdates);
  v3 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v3, message);
}

- (void)startDownload:(id)a3
{
  v4 = a3;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypeStartDownload);
  SUBIPCEncodeObject(message, SUBMessageDescriptorKey, v4);

  v5 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v5, message);
}

- (void)startDownload:(id)a3 passcode:(id)a4
{
  v6 = a4;
  v7 = a3;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypeStartDownload);
  SUBIPCEncodeObject(message, SUBMessageDescriptorKey, v7);

  SUBIPCEncodeObject(message, SUBMessagePasscodeKey, v6);
  v8 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v8, message);
}

- (void)installUpdate:(id)a3
{
  v4 = a3;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypeInstallUpdate);
  SUBIPCEncodeObject(message, SUBMessageDescriptorKey, v4);

  v5 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v5, message);
}

- (void)installUpdate:(id)a3 passcode:(id)a4
{
  v6 = a4;
  v7 = a3;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypeInstallUpdate);
  SUBIPCEncodeObject(message, SUBMessageDescriptorKey, v7);

  SUBIPCEncodeObject(message, SUBMessagePasscodeKey, v6);
  v8 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v8, message);
}

- (void)userDidAcceptTermsAndConditionsForUpdate:(id)a3
{
  v4 = a3;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypeUserDidAcceptTermsAndConditions);
  SUBIPCEncodeObject(message, SUBMessageDescriptorKey, v4);
  v5 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v5, message);

  [v4 setUserDidAcceptTermsAndConditions:1];
}

- (void)getCloudDescriptors:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, SUBMessageTypeKey, SUBMessageTypeGetCloudDescriptors);
  v6 = [(SUBManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __34__SUBManager_getCloudDescriptors___block_invoke;
  handler[3] = &unk_279CA78C0;
  v9 = v4;
  v7 = v4;
  xpc_connection_send_message_with_reply(v6, v5, 0, handler);
}

void __34__SUBManager_getCloudDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = MEMORY[0x26D6678D0]();
  if (MEMORY[0x277D86480] != MEMORY[0x277D86468] && v3 == MEMORY[0x277D86468])
  {
    v6 = SUBMessageDescriptorArrayKey;
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = SUBIPCDecodeObjectsForKey(v12, v6, v9);

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, v10);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

- (void)removeCloudDescriptor:(id)a3
{
  v4 = a3;
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypeRemoveCloudDescriptor);
  SUBIPCEncodeObject(message, SUBMessageDescriptorKey, v4);

  v5 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v5, message);
}

- (void)userDidAcceptTermsAndConditionsForUpdate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 userDidAcceptTermsAndConditions])
  {
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__SUBManager_userDidAcceptTermsAndConditionsForUpdate_completion___block_invoke;
    v8[3] = &unk_279CA78E8;
    v11 = v7;
    v9 = v6;
    v10 = self;
    [(SUBManager *)self supportsInstallTonightWithCompletion:v8];
  }
}

void __66__SUBManager_userDidAcceptTermsAndConditionsForUpdate_completion___block_invoke(void **a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = *(v6 + 2);
LABEL_8:
      v7();
    }
  }

  else if (a3)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, SUBMessageTypeKey, SUBMessageTypeUserDidAcceptTermsAndConditionsWithReply);
    SUBIPCEncodeObject(v8, SUBMessageDescriptorKey, a1[4]);
    SUBIPCEncodeObject(v8, SUBMessageUserDidAcceptTermsAndConditionsKey, MEMORY[0x277CBEC38]);
    v9 = [a1[5] _serverConnection];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __66__SUBManager_userDidAcceptTermsAndConditionsForUpdate_completion___block_invoke_2;
    handler[3] = &unk_279CA78C0;
    v12 = a1[6];
    xpc_connection_send_message_with_reply(v9, v8, 0, handler);
  }

  else
  {
    [a1[5] userDidAcceptTermsAndConditionsForUpdate:a1[4]];
    v10 = a1[6];
    if (v10)
    {
      v7 = *(v10 + 2);
      goto LABEL_8;
    }
  }
}

void __66__SUBManager_userDidAcceptTermsAndConditionsForUpdate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x26D6678D0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v12 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26AB06000, v12, OS_LOG_TYPE_DEFAULT, "Got XPC error setting user install request type", v19, 2u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      v11 = @"Error from XPC: %s";
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v14 = SUBMessageErrorKey;
      v15 = objc_opt_class();
      v13 = SUBIPCDecodeObjectForKey(v3, v14, v15);
      v16 = *(a1 + 32);
      if (v16)
      {
        (*(v16 + 16))(v16, v13);
      }

      goto LABEL_14;
    }

    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v5, OS_LOG_TYPE_DEFAULT, "Got XPC error setting user install request type", buf, 2u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = @"Unexpected XPC type";
LABEL_11:
      v13 = SUBError(@"SUBError", 2, 0, v11, v6, v7, v8, v9, string);
      (*(v10 + 16))(v10, v13);
LABEL_14:
    }
  }
}

- (void)purgeUpdate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, SUBMessageTypeKey, SUBMessageTypePurgeUpdate);
  SUBIPCEncodeObject(v8, SUBMessageDescriptorKey, v7);

  v9 = [(SUBManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__SUBManager_purgeUpdate_completion___block_invoke;
  handler[3] = &unk_279CA78C0;
  v12 = v6;
  v10 = v6;
  xpc_connection_send_message_with_reply(v9, v8, 0, handler);
}

void __37__SUBManager_purgeUpdate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = SUBMessageErrorKey;
  v4 = a2;
  v5 = objc_opt_class();
  v7 = SUBIPCDecodeObjectForKey(v4, v3, v5);

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

- (void)setUserInstallRequestTypeForUpdate:(id)a3 userInstallRequestType:(int64_t)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 136446210;
    v22 = SUBStringForUserInstallRequestType(a4);
    _os_log_impl(&dword_26AB06000, v11, OS_LOG_TYPE_DEFAULT, "Request Type: %{public}s", buf, 0xCu);
  }

  v12 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_26AB06000, v12, OS_LOG_TYPE_DEFAULT, "Descriptor(setUserInstallRequestTypeForUpdate): %{public}@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__SUBManager_setUserInstallRequestTypeForUpdate_userInstallRequestType_completion___block_invoke;
  v16[3] = &unk_279CA7938;
  v19 = v9;
  v20 = a4;
  v17 = v8;
  v18 = self;
  v13 = v8;
  v14 = v9;
  [(SUBManager *)self supportsInstallTonightWithCompletion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __83__SUBManager_setUserInstallRequestTypeForUpdate_userInstallRequestType_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (!v5)
  {
    if (a3)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v7, SUBMessageTypeKey, SUBMessageTypeSetUserInstallRequestType);
      SUBIPCEncodeObject(v7, SUBMessageDescriptorKey, *(a1 + 32));
      v8 = SUBMessageUserInstallRequestTypeKey;
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
      SUBIPCEncodeObject(v7, v8, v9);

      v10 = [*(a1 + 40) _serverConnection];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __83__SUBManager_setUserInstallRequestTypeForUpdate_userInstallRequestType_completion___block_invoke_2;
      v14[3] = &unk_279CA7910;
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v15 = v11;
      v16 = v12;
      xpc_connection_send_message_with_reply(v10, v7, 0, v14);
    }

    else
    {
      if (!*(a1 + 48))
      {
        goto LABEL_9;
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUBError" code:39 userInfo:0];
      v13 = *(a1 + 56);
      (*(*(a1 + 48) + 16))();
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, *(a1 + 56));
  }

LABEL_9:
}

void __83__SUBManager_setUserInstallRequestTypeForUpdate_userInstallRequestType_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x26D6678D0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v12 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v12, OS_LOG_TYPE_DEFAULT, "Got XPC error setting user install request type", buf, 2u);
    }

    v10 = *(a1 + 32);
    string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
    v11 = @"Error from XPC: %s";
    goto LABEL_9;
  }

  if (v4 != MEMORY[0x277D86468])
  {
    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v5, OS_LOG_TYPE_DEFAULT, "Got XPC error setting user install request type", buf, 2u);
    }

    v10 = *(a1 + 32);
    v11 = @"Unexpected XPC type";
LABEL_9:
    v13 = SUBError(@"SUBError", 2, 0, v11, v6, v7, v8, v9, string);
    (*(v10 + 16))(v10, v13, *(a1 + 40));
    goto LABEL_10;
  }

  v15 = SUBMessageErrorKey;
  v16 = objc_opt_class();
  v13 = SUBIPCDecodeObjectForKey(v3, v15, v16);
  v17 = SUBMessageUserInstallRequestTypeKey;
  v18 = objc_opt_class();
  v19 = SUBIPCDecodeObjectForKey(v3, v17, v18);
  v20 = [v19 integerValue];

  v21 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    *buf = 136446210;
    v26 = SUBStringForUserInstallRequestType(v20);
    _os_log_impl(&dword_26AB06000, v22, OS_LOG_TYPE_DEFAULT, "Decoded request type: %{public}s", buf, 0xCu);
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    (*(v23 + 16))(v23, v13, v20);
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)adoptSimulationFileOfName:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, SUBMessageTypeKey, SUBMessageTypeSetSimulationFile);
  SUBIPCEncodeObject(v5, SUBMessageSimulationFileNameKey, v4);
  v6 = [(SUBManager *)self _serverConnection];
  v7 = xpc_connection_send_message_with_reply_sync(v6, v5);

  v8 = MEMORY[0x26D6678D0](v7);
  if (v8 != MEMORY[0x277D86480])
  {
    v9 = v8;
    v10 = MEMORY[0x277D86468];
    v11 = softwareupdatebridge_log;
    v12 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v9 != v10)
    {
      if (v12)
      {
        v25 = 138412290;
        v26 = v4;
        v13 = "[AdoptSimulationFile]: Got unexpected response when trying to adopt simulation file of name %@";
LABEL_7:
        _os_log_impl(&dword_26AB06000, v11, OS_LOG_TYPE_DEFAULT, v13, &v25, 0xCu);
        goto LABEL_8;
      }

      goto LABEL_8;
    }

    if (v12)
    {
      v25 = 138412290;
      v26 = v4;
      _os_log_impl(&dword_26AB06000, v11, OS_LOG_TYPE_DEFAULT, "[AdoptSimulationFile]: Parsing response to adopt simulation file(%@) request", &v25, 0xCu);
    }

    v15 = SUBMessageErrorKey;
    v16 = objc_opt_class();
    v17 = SUBIPCDecodeObjectForKey(v7, v15, v16);
    v14 = v17 == 0;
    v18 = softwareupdatebridge_log;
    v19 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v25 = 138412546;
        v26 = v4;
        v27 = 2112;
        v28 = v17;
        v20 = "[AdoptSimulationFile]: Got error while trying to adopt simulation file %@: %@";
        v21 = v18;
        v22 = 22;
LABEL_16:
        _os_log_impl(&dword_26AB06000, v21, OS_LOG_TYPE_DEFAULT, v20, &v25, v22);
      }
    }

    else if (v19)
    {
      v25 = 138412290;
      v26 = v4;
      v20 = "[AdoptSimulationFile]: Successfully adopted simulation file %@";
      v21 = v18;
      v22 = 12;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v11 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v4;
    v13 = "[AdoptSimulationFile]: Got XPC error while trying to adopt simulation file of name %@";
    goto LABEL_7;
  }

LABEL_8:
  v14 = 0;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)performMigration
{
  message = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(message, SUBMessageTypeKey, SUBMessageTypePerformMigration);
  v3 = [(SUBManager *)self _serverConnection];
  xpc_connection_send_message(v3, message);
}

- (void)supportsInstallTonightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D2BCF8] sharedInstance];
  v6 = [v5 getActivePairedDevice];

  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"79C6122C-6767-4098-9B1E-30DE4D6D0180"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v9, SUBMessageTypeKey, SUBMessageTypeGetSupportsInstallTonight);
    v10 = [(SUBManager *)self _serverConnection];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__SUBManager_supportsInstallTonightWithCompletion___block_invoke;
    handler[3] = &unk_279CA78C0;
    v12 = v4;
    xpc_connection_send_message_with_reply(v10, v9, 0, handler);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __51__SUBManager_supportsInstallTonightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x26D6678D0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v12 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_26AB06000, v12, OS_LOG_TYPE_DEFAULT, "Got XPC error querying install tonight support", v23, 2u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      v11 = @"Error from XPC: %s";
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v14 = SUBMessageErrorKey;
      v15 = objc_opt_class();
      v13 = SUBIPCDecodeObjectForKey(v3, v14, v15);
      v16 = SUBMessageSupportsInstallTonightKey;
      v17 = objc_opt_class();
      v18 = SUBIPCDecodeObjectForKey(v3, v16, v17);
      v19 = v18;
      v20 = *(a1 + 32);
      if (v20)
      {
        (*(v20 + 16))(v20, v13, [v18 BOOLValue]);
      }

      goto LABEL_15;
    }

    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v5, OS_LOG_TYPE_DEFAULT, "Got XPC error querying install tonight support", buf, 2u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = @"Unexpected XPC type";
LABEL_11:
      v13 = SUBError(@"SUBError", 2, 0, v11, v6, v7, v8, v9, string);
      (*(v10 + 16))(v10, v13, 0);
LABEL_15:
    }
  }
}

- (void)sendTermsRequest:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, SUBMessageTypeKey, SUBMessageTypeSendTermsRequest);
  v6 = [(SUBManager *)self _serverConnection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__SUBManager_sendTermsRequest___block_invoke;
  handler[3] = &unk_279CA78C0;
  v9 = v4;
  v7 = v4;
  xpc_connection_send_message_with_reply(v6, v5, 0, handler);
}

void __31__SUBManager_sendTermsRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x26D6678D0]();
  if (v4 == MEMORY[0x277D86480])
  {
    v12 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26AB06000, v12, OS_LOG_TYPE_DEFAULT, "Got XPC error trying to request terms", v19, 2u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
      v11 = @"Error from XPC: %s";
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 == MEMORY[0x277D86468])
    {
      v14 = SUBMessageErrorKey;
      v15 = objc_opt_class();
      v13 = SUBIPCDecodeObjectForKey(v3, v14, v15);
      v16 = *(a1 + 32);
      if (v16)
      {
        (*(v16 + 16))(v16, v13);
      }

      goto LABEL_14;
    }

    v5 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26AB06000, v5, OS_LOG_TYPE_DEFAULT, "Got XPC error querying install tonight support", buf, 2u);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = @"Unexpected XPC type";
LABEL_11:
      v13 = SUBError(@"SUBError", 2, 0, v11, v6, v7, v8, v9, string);
      (*(v10 + 16))(v10, v13);
LABEL_14:
    }
  }
}

@end