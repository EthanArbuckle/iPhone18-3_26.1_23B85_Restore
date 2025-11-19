@interface SKStatusPublishingService
+ (id)logger;
- (BOOL)_isHandleInvited:(id)a3 fromSenderHandle:(id)a4;
- (NSArray)invitedHandles;
- (SKStatusPublishingDaemonConnection)daemonConnection;
- (SKStatusPublishingService)initWithStatusTypeIdentifier:(id)a3;
- (void)_delegatesPerformOnResponseQueueForGroup:(id)a3 block:(id)a4;
- (void)_fetchHandleInvitability:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5;
- (void)_inviteHandles:(id)a3 fromSenderHandle:(id)a4 withInvitationPayload:(id)a5 completion:(id)a6;
- (void)_isHandleInvitable:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5;
- (void)_isHandleInvited:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5;
- (void)_registerForDelegateCallbacksIfNecessary;
- (void)_simulateCrashIfNecessaryForError:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)inviteHandle:(id)a3 fromSenderHandle:(id)a4 withInvitationPayload:(id)a5 completion:(id)a6;
- (void)inviteHandleFromPrimaryAccountHandle:(id)a3 withInvitationPayload:(id)a4 completion:(id)a5;
- (void)provisionPayloads:(id)a3 completion:(id)a4;
- (void)publishStatusRequest:(id)a3 completion:(id)a4;
- (void)publishingDaemonConnectionDidDisconnect:(id)a3;
- (void)removeAllInvitedHandlesWithCompletion:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)removeInvitedHandle:(id)a3 completion:(id)a4;
- (void)removeInvitedHandles:(id)a3 completion:(id)a4;
@end

@implementation SKStatusPublishingService

- (void)_registerForDelegateCallbacksIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  obj = self->_delegates;
  objc_sync_enter(obj);
  if (self->_registeredForDelegateCallbacks || ![(NSMapTable *)self->_delegates count])
  {
    objc_sync_exit(obj);
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_registeredForDelegateCallbacks = 1;
    objc_sync_exit(obj);

    v3 = [(SKStatusPublishingService *)self statusTypeIdentifier];
    v4 = +[SKStatusPublishingService logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Registering for delegate callbacks for statusTypeIdentifier: %{public}@", buf, 0xCu);
    }

    v5 = [(SKStatusPublishingService *)self daemonConnection];
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke;
    v14[3] = &unk_279D12BA0;
    objc_copyWeak(&v15, buf);
    v6 = [v5 asynchronousRemoteDaemonWithErrorHandler:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke_20;
    v11[3] = &unk_279D12BC8;
    objc_copyWeak(&v13, buf);
    v7 = v3;
    v12 = v7;
    [v6 registerForDelegateCallbacksWithStatusTypeIdentifier:v7 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);

    v8 = *MEMORY[0x277D85DE8];
  }
}

+ (id)logger
{
  if (logger_onceToken_7 != -1)
  {
    +[SKStatusPublishingService logger];
  }

  v3 = logger__logger_7;

  return v3;
}

- (SKStatusPublishingDaemonConnection)daemonConnection
{
  v2 = self;
  objc_sync_enter(v2);
  daemonConnection = v2->_daemonConnection;
  if (!daemonConnection)
  {
    v4 = [[SKStatusPublishingDaemonConnection alloc] initWithPublishingDaemonDelegate:v2 connectionDelegate:v2];
    v5 = v2->_daemonConnection;
    v2->_daemonConnection = v4;

    daemonConnection = v2->_daemonConnection;
  }

  v6 = daemonConnection;
  objc_sync_exit(v2);

  return v6;
}

- (SKStatusPublishingService)initWithStatusTypeIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SKStatusPublishingService;
  v5 = [(SKStatusPublishingService *)&v15 init];
  if (v5)
  {
    ValidateIdentifierMeetsBlastdoorRequirements(v4);
    v6 = [v4 copy];
    statusTypeIdentifier = v5->_statusTypeIdentifier;
    v5->_statusTypeIdentifier = v6;

    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegates = v5->_delegates;
    v5->_delegates = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_DEFAULT, 0);

    v12 = dispatch_queue_create("com.apple.StatusKit.PublishingService", v11);
    privateWorkQueue = v5->_privateWorkQueue;
    v5->_privateWorkQueue = v12;
  }

  return v5;
}

- (void)publishStatusRequest:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v8 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Publishing status request. StatusType: %{public}@ Request: %@", buf, 0x16u);
  }

  v10 = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke;
  v20[3] = &unk_279D12B28;
  v11 = v8;
  v21 = v11;
  v12 = v6;
  v22 = v12;
  objc_copyWeak(&v24, buf);
  v13 = v7;
  v23 = v13;
  v14 = [v10 asynchronousRemoteDaemonWithErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_4;
  v17[3] = &unk_279D12D30;
  objc_copyWeak(&v19, buf);
  v15 = v13;
  v18 = v15;
  [v14 publishStatusRequest:v12 statusTypeIdentifier:v11 completion:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_4_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Publish status request completed with statusUniqueIdentifier: %@", &v12, 0xCu);
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)provisionPayloads:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v8 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Provisioning request. Payloads: %{public}@", buf, 0xCu);
  }

  v10 = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke;
  v21[3] = &unk_279D129E8;
  v11 = v8;
  v22 = v11;
  objc_copyWeak(&v24, buf);
  v12 = v7;
  v23 = v12;
  v13 = [v10 asynchronousRemoteDaemonWithErrorHandler:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_6;
  v17[3] = &unk_279D12D58;
  objc_copyWeak(&v20, buf);
  v14 = v12;
  v19 = v14;
  v15 = v11;
  v18 = v15;
  [v13 provisionPayloads:v6 statusTypeIdentifier:v15 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 40) + 16))();
}

void __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_6_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Provisioning request completed with statusUniqueIdentifier: %@", &v13, 0xCu);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)invitedHandles
{
  v25 = *MEMORY[0x277D85DE8];
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v3 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Retrieving invited handles. StatusType: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v5 = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__SKStatusPublishingService_invitedHandles__block_invoke;
  v15[3] = &unk_279D12A10;
  v6 = v3;
  v16 = v6;
  objc_copyWeak(&v18, &location);
  p_buf = &buf;
  v7 = [v5 synchronousRemoteDaemonWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__SKStatusPublishingService_invitedHandles__block_invoke_8;
  v12[3] = &unk_279D12A38;
  v8 = v6;
  v13 = v8;
  v14 = &buf;
  [v7 invitedHandlesForStatusTypeIdentifier:v8 completion:v12];
  v9 = *(*(&buf + 1) + 40);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __43__SKStatusPublishingService_invitedHandles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __43__SKStatusPublishingService_invitedHandles__block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __43__SKStatusPublishingService_invitedHandles__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_26BA07000, v8, OS_LOG_TYPE_ERROR, "Retreived invited handles. StatusType: %{public}@ Handles: %@ Error: %@", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Retreived invited handles. StatusType: %{public}@ Handles: %@", &v14, 0x16u);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isHandleInvited:(id)a3 fromSenderHandle:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v8 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2114;
    v26 = v8;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ has already been invited (sync) from handle: %@. StatusType: %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v26) = 0;
  v10 = [(SKStatusPublishingService *)self daemonConnection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke;
  v22[3] = &unk_279D12A60;
  v11 = v8;
  v23 = v11;
  v24 = buf;
  v12 = [v10 synchronousRemoteDaemonWithErrorHandler:v22];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_9;
  v18[3] = &unk_279D12A88;
  v13 = v11;
  v19 = v13;
  v14 = v6;
  v20 = v14;
  v21 = buf;
  [v12 isHandleInvited:v14 fromSenderHandle:v7 forStatusTypeIdentifier:v13 completion:v18];
  v15 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_9(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKStatusPublishingService logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v13 = 138544130;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Checked if handle is invited (sync). StatusType: %{public}@ Handle: %@ isInvited:%d Error: %@", &v13, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Determined if handle is invited (sync). StatusType: %{public}@ Handle: %@ isInvited: %d", &v13, 0x1Cu);
  }

  *(*(a1[6] + 8) + 24) = a2;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_isHandleInvited:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v11 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v12 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ has already been invited (async) from handle: %@. StatusType: %{public}@", buf, 0x20u);
  }

  v13 = [(SKStatusPublishingService *)self daemonConnection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke;
  v26[3] = &unk_279D12AB0;
  v14 = v11;
  v27 = v14;
  v15 = v8;
  v28 = v15;
  v16 = v10;
  v29 = v16;
  v17 = [v13 asynchronousRemoteDaemonWithErrorHandler:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_11;
  v22[3] = &unk_279D12AD8;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 isHandleInvited:v19 fromSenderHandle:v9 forStatusTypeIdentifier:v20 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_11(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKStatusPublishingService logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v13 = 138544130;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Error while checking if handle has already been invited (async). StatusType: %{public}@ Handle: %@ isInvited:%d Error: %@", &v13, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Checked if handle is invited (async). StatusType: %{public}@ Handle: %@ isInvited: %d", &v13, 0x1Cu);
  }

  (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fetchHandleInvitability:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v11 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v12 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v8;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Fetching handle %@ invitability. StatusType: %{public}@", buf, 0x16u);
  }

  v13 = [(SKStatusPublishingService *)self daemonConnection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke;
  v26[3] = &unk_279D12AB0;
  v14 = v11;
  v27 = v14;
  v15 = v8;
  v28 = v15;
  v16 = v9;
  v29 = v16;
  v17 = [v13 asynchronousRemoteDaemonWithErrorHandler:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_12;
  v22[3] = &unk_279D12B00;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 fetchHandleInvitability:v19 fromHandle:v10 forStatusTypeIdentifier:v20 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_12(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusPublishingService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      v14 = 138544130;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_error_impl(&dword_26BA07000, v8, OS_LOG_TYPE_ERROR, "Error fetching handle invitability. StatusType: %{public}@ Handle: %@ invitability:%@ Error: %@", &v14, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[5];
    v14 = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Checked if handle is invitable. StatusType: %{public}@ Handle: %@ invitability: %@", &v14, 0x20u);
  }

  (*(a1[6] + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_isHandleInvitable:(id)a3 fromSenderHandle:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v11 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v12 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v8;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Checking if handle %@ is inviteable. StatusType: %{public}@", buf, 0x16u);
  }

  v13 = [(SKStatusPublishingService *)self daemonConnection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke;
  v26[3] = &unk_279D12AB0;
  v14 = v11;
  v27 = v14;
  v15 = v8;
  v28 = v15;
  v16 = v9;
  v29 = v16;
  v17 = [v13 asynchronousRemoteDaemonWithErrorHandler:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_14;
  v22[3] = &unk_279D12AD8;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 isHandleInviteable:v19 fromHandle:v10 forStatusTypeIdentifier:v20 completion:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_14(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKStatusPublishingService logger];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v13 = 138544130;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_26BA07000, v7, OS_LOG_TYPE_ERROR, "Error while checking if handle is inviteable. StatusType: %{public}@ Handle: %@ isInviteable:%d Error: %@", &v13, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v11 = a1[5];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 1024;
    v18 = a2;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Checked if handle is inviteable. StatusType: %{public}@ Handle: %@ isInviteable: %d", &v13, 0x1Cu);
  }

  (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)inviteHandle:(id)a3 fromSenderHandle:(id)a4 withInvitationPayload:(id)a5 completion:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v10 = MEMORY[0x277CBEA60];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 arrayWithObjects:&v17 count:1];

  [(SKStatusPublishingService *)self _inviteHandles:v15 fromSenderHandle:v13 withInvitationPayload:v12 completion:v11, v17, v18];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)inviteHandleFromPrimaryAccountHandle:(id)a3 withInvitationPayload:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v14 count:1];

  [(SKStatusPublishingService *)self _inviteHandles:v12 fromSenderHandle:0 withInvitationPayload:v10 completion:v9, v14, v15];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_inviteHandles:(id)a3 fromSenderHandle:(id)a4 withInvitationPayload:(id)a5 completion:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v14 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v15 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = v10;
    v33 = 2114;
    v34 = v14;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_26BA07000, v15, OS_LOG_TYPE_DEFAULT, "Received request to invite handles: %@ to personal channel with statusTypeIdentifier: %{public}@ from sender handle: %@", buf, 0x20u);
  }

  v16 = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke;
  v26[3] = &unk_279D12B28;
  v17 = v14;
  v27 = v17;
  v18 = v10;
  v28 = v18;
  objc_copyWeak(&v30, buf);
  v19 = v13;
  v29 = v19;
  v20 = [v16 asynchronousRemoteDaemonWithErrorHandler:v26];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_16;
  v23[3] = &unk_279D12B50;
  objc_copyWeak(&v25, buf);
  v21 = v19;
  v24 = v21;
  [v20 inviteHandles:v18 fromSenderHandle:v11 withInvitationPayload:v12 statusTypeIdentifier:v17 completion:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v30);

  objc_destroyWeak(buf);
  v22 = *MEMORY[0x277D85DE8];
}

void __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__SKPresence__inviteHandles_fromSenderHandle_completion___block_invoke_53_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Inviting handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeInvitedHandle:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];

  [(SKStatusPublishingService *)self removeInvitedHandles:v9 completion:v7, v11, v12];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeInvitedHandles:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v8 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v9 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Removing invited handles. StatusType: %{public}@ Handles: %@", buf, 0x16u);
  }

  v10 = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke;
  v20[3] = &unk_279D12B28;
  v11 = v8;
  v21 = v11;
  v12 = v6;
  v22 = v12;
  objc_copyWeak(&v24, buf);
  v13 = v7;
  v23 = v13;
  v14 = [v10 asynchronousRemoteDaemonWithErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_17;
  v17[3] = &unk_279D12B50;
  objc_copyWeak(&v19, buf);
  v15 = v13;
  v18 = v15;
  [v14 removeInvitedHandles:v12 statusTypeIdentifier:v11 completion:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 48) + 16))();
}

void __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__SKPresence_removeInvitedHandles_completion___block_invoke_54_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Remove invited handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeAllInvitedHandlesWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
  v5 = [(SKStatusPublishingService *)self statusTypeIdentifier];
  v6 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Removing all invited handles. StatusType: %{public}@", buf, 0xCu);
  }

  v7 = [(SKStatusPublishingService *)self daemonConnection];
  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke;
  v16[3] = &unk_279D129E8;
  v8 = v5;
  v17 = v8;
  objc_copyWeak(&v19, buf);
  v9 = v4;
  v18 = v9;
  v10 = [v7 asynchronousRemoteDaemonWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_18;
  v13[3] = &unk_279D12B50;
  objc_copyWeak(&v15, buf);
  v11 = v9;
  v14 = v11;
  [v10 removeAllInvitedHandlesFromPersonalChannelWithStatusTypeIdentifier:v8 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v19);

  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 40) + 16))();
}

void __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_18_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Remove all invited handles completed.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_delegates;
  objc_sync_enter(v7);
  v8 = [[SKDelegateResponseQueue alloc] initWithQueue:v6];
  [(NSMapTable *)self->_delegates setObject:v8 forKey:v9];

  objc_sync_exit(v7);
  [(SKStatusPublishingService *)self _registerForDelegateCallbacksIfNecessary];
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_delegates removeObjectForKey:v5];
  objc_sync_exit(v4);
}

void __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];
}

void __69__SKStatusPublishingService__registerForDelegateCallbacksIfNecessary__block_invoke_20(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusPublishingService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_59_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Completed registration for delegate callbacks for statusTypeIdentifier: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_simulateCrashIfNecessaryForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (![v5 isEqualToString:@"SKStatusKitErrorDomain"])
  {
LABEL_5:

    goto LABEL_6;
  }

  v6 = [v4 code];

  if (v6 == 1)
  {
    v5 = +[SKStatusPublishingService logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SKStatusPublishingService *)self _simulateCrashIfNecessaryForError:v5];
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (void)_delegatesPerformOnResponseQueueForGroup:(id)a3 block:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_delegates;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)self->_delegates copy];
  objc_sync_exit(v8);

  if (![v9 count])
  {
    v10 = +[SKStatusPublishingService logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "No delegates available to perform publishing service delegate callback", buf, 2u);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v9 keyEnumerator];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        v16 = [v15 dispatchQueue];
        dispatch_group_enter(v6);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__SKStatusPublishingService__delegatesPerformOnResponseQueueForGroup_block___block_invoke;
        block[3] = &unk_279D12BF0;
        v21 = v7;
        block[4] = v14;
        v20 = v6;
        dispatch_async(v16, block);
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __76__SKStatusPublishingService__delegatesPerformOnResponseQueueForGroup_block___block_invoke(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  dispatch_group_leave(v3);
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[SKStatusPublishingService logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    statusTypeIdentifier = self->_statusTypeIdentifier;
    *buf = 138412290;
    v8 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing SKStatusPublishingService for status type identifier %@", buf, 0xCu);
  }

  [(SKStatusPublishingDaemonConnection *)self->_daemonConnection invalidate];
  v6.receiver = self;
  v6.super_class = SKStatusPublishingService;
  [(SKStatusPublishingService *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishingDaemonConnectionDidDisconnect:(id)a3
{
  v4 = self->_delegates;
  objc_sync_enter(v4);
  self->_registeredForDelegateCallbacks = 0;
  objc_sync_exit(v4);

  v5 = dispatch_group_create();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SKStatusPublishingService_publishingDaemonConnectionDidDisconnect___block_invoke;
  v6[3] = &unk_279D12D80;
  v6[4] = self;
  [(SKStatusPublishingService *)self _delegatesPerformOnResponseQueueForGroup:v5 block:v6];
}

void __69__SKStatusPublishingService_publishingDaemonConnectionDidDisconnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKStatusPublishingService logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Notifying publishing service delegate that the XPC connection has disconnected", buf, 2u);
    }

    [v3 publishingServiceDaemonDisconnected:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Subscription publishing delegate does not implement the delegate method to be notified the XPC connection has disconnected", v7, 2u);
    }
  }
}

uint64_t __35__SKStatusPublishingService_logger__block_invoke()
{
  logger__logger_7 = os_log_create("com.apple.StatusKit", "PublishingService");

  return MEMORY[0x2821F96F8]();
}

void __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__SKStatusPublishingService_publishStatusRequest_completion___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Publish status request failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__SKStatusPublishingService_provisionPayloads_completion___block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Provisioning request failed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__SKStatusPublishingService_invitedHandles__block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__SKStatusPublishingService__isHandleInvited_fromSenderHandle___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__SKStatusPublishingService__isHandleInvited_fromSenderHandle_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__SKStatusPublishingService__fetchHandleInvitability_fromSenderHandle_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SKStatusPublishingService__isHandleInvitable_fromSenderHandle_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __94__SKStatusPublishingService__inviteHandles_fromSenderHandle_withInvitationPayload_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__SKStatusPublishingService_removeInvitedHandles_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__SKStatusPublishingService_removeAllInvitedHandlesWithCompletion___block_invoke_18_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Remove all invited handles completed with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_simulateCrashIfNecessaryForError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 statusTypeIdentifier];
  OUTLINED_FUNCTION_3();
  v6 = 2112;
  v7 = @"com.apple.StatusKit.publish.types";
  _os_log_fault_impl(&dword_26BA07000, a2, OS_LOG_TYPE_FAULT, "Client is attempting to publish status of type %{public}@ but is not entitled. Client needs %@ entitlement with this status type identifier.", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end