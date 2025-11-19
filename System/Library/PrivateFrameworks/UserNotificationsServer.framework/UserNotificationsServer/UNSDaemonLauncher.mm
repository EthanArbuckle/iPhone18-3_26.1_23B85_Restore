@interface UNSDaemonLauncher
- (UNSDaemonLauncher)init;
- (id)_queue_ensureConnectionForBundleIdentifier:(id)a3;
- (void)_queue_invalidatedConnectionForBundleIdentifier:(id)a3;
- (void)didChangeSettings:(id)a3 forBundleIdentifier:(id)a4;
- (void)didOpenApplicationForResponse:(id)a3 forBundleIdentifier:(id)a4;
- (void)didReceiveNotificationResponse:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation UNSDaemonLauncher

- (UNSDaemonLauncher)init
{
  v12.receiver = self;
  v12.super_class = UNSDaemonLauncher;
  v2 = [(UNSDaemonLauncher *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionByBundleIdentifier = v2->_connectionByBundleIdentifier;
    v2->_connectionByBundleIdentifier = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.usernotifications.UNSDaemonLauncher", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.usernotifications.UNSDaemonLauncher.call-out", v8);
    callOutQueue = v2->_callOutQueue;
    v2->_callOutQueue = v9;
  }

  return v2;
}

- (void)didReceiveNotificationResponse:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v9;
    _os_log_impl(&dword_270AA8000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending didReceiveNotificationResponse:forBundleIdentifier:", buf, 0xCu);
  }

  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke;
  v17[3] = &unk_279E106B0;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v10;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  dispatch_async(queue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnectionForBundleIdentifier:*(a1 + 40)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_279E10638;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v15 = v3;
  v16 = v4;
  v17 = *(a1 + 56);
  v5 = [v2 remoteObjectProxyWithErrorHandler:v14];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2_5;
  v10[3] = &unk_279E10688;
  v8 = v6;
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  v13 = *(a1 + 56);
  [v5 didReceiveNotificationResponse:v7 forBundleIdentifier:v8 withCompletionHandler:v10];
}

void __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(a1);
  }

  v4 = *(*(a1 + 40) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2;
  block[3] = &unk_279E10610;
  v6 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2_5(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_270AA8000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] didReceiveNotificationResponse:forBundleIdentifier: succeeded", buf, 0xCu);
  }

  v6 = *(*(a1 + 40) + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_6;
  v8[3] = &unk_279E10660;
  v9 = *(a1 + 48);
  v10 = a2;
  dispatch_async(v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)didOpenApplicationForResponse:(id)a3 forBundleIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending didOpenApplicationForResponse:forBundleIdentifier:", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__UNSDaemonLauncher_didOpenApplicationForResponse_forBundleIdentifier___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __71__UNSDaemonLauncher_didOpenApplicationForResponse_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnectionForBundleIdentifier:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__UNSDaemonLauncher_didOpenApplicationForResponse_forBundleIdentifier___block_invoke_2;
  v4[3] = &unk_279E106D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 didOpenApplicationForResponse:*(a1 + 48) forBundleIdentifier:*(a1 + 40)];
}

void __71__UNSDaemonLauncher_didOpenApplicationForResponse_forBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __71__UNSDaemonLauncher_didOpenApplicationForResponse_forBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

- (void)didChangeSettings:(id)a3 forBundleIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CE2078];
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_270AA8000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending didChangeSettings:forBundleIdentifier:", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__UNSDaemonLauncher_didChangeSettings_forBundleIdentifier___block_invoke;
  block[3] = &unk_279E10700;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __59__UNSDaemonLauncher_didChangeSettings_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnectionForBundleIdentifier:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__UNSDaemonLauncher_didChangeSettings_forBundleIdentifier___block_invoke_2;
  v4[3] = &unk_279E106D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 didChangeSettings:*(a1 + 48) forBundleIdentifier:*(a1 + 40)];
}

void __59__UNSDaemonLauncher_didChangeSettings_forBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*MEMORY[0x277CE2078], OS_LOG_TYPE_ERROR))
  {
    __59__UNSDaemonLauncher_didChangeSettings_forBundleIdentifier___block_invoke_2_cold_1(a1);
  }
}

- (id)_queue_ensureConnectionForBundleIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_connectionByBundleIdentifier objectForKey:v4];
  if (!v5)
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x277CE2038] serviceNameForBundleIdentifier:v4];
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:v6 options:0];
    [(NSMutableDictionary *)self->_connectionByBundleIdentifier setObject:v5 forKey:v4];
    v7 = [MEMORY[0x277CE2038] serverInterface];
    [v5 setRemoteObjectInterface:v7];

    objc_initWeak(&from, self->_queue);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke;
    v17[3] = &unk_279E10750;
    objc_copyWeak(&v19, &from);
    objc_copyWeak(&v20, &location);
    v8 = v4;
    v18 = v8;
    [v5 setInterruptionHandler:v17];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke_3;
    v13 = &unk_279E10750;
    objc_copyWeak(&v15, &from);
    objc_copyWeak(&v16, &location);
    v14 = v8;
    [v5 setInvalidationHandler:&v10];
    [v5 resume];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke_2;
    v3[3] = &unk_279E10728;
    objc_copyWeak(&v5, a1 + 6);
    v4 = a1[4];
    dispatch_async(WeakRetained, v3);

    objc_destroyWeak(&v5);
  }
}

void __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_interruptedConnectionForBundleIdentifier:*(a1 + 32)];
}

void __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke_4;
    v3[3] = &unk_279E10728;
    objc_copyWeak(&v5, a1 + 6);
    v4 = a1[4];
    dispatch_async(WeakRetained, v3);

    objc_destroyWeak(&v5);
  }
}

void __64__UNSDaemonLauncher__queue_ensureConnectionForBundleIdentifier___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_invalidatedConnectionForBundleIdentifier:*(a1 + 32)];
}

- (void)_queue_invalidatedConnectionForBundleIdentifier:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_connectionByBundleIdentifier objectForKey:v5];
  [v6 invalidate];
  [v6 setInterruptionHandler:0];
  [v6 setInvalidationHandler:0];
  [v6 setExportedObject:0];
  [(NSMutableDictionary *)self->_connectionByBundleIdentifier removeObjectForKey:v5];
}

void __94__UNSDaemonLauncher_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v2, v3, "[%{public}@] didReceiveNotificationResponse:forBundleIdentifier: failed with error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __71__UNSDaemonLauncher_didOpenApplicationForResponse_forBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v2, v3, "[%{public}@] didOpenApplicationForResponse:forBundleIdentifier: failed with error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __59__UNSDaemonLauncher_didChangeSettings_forBundleIdentifier___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_270AA8000, v2, v3, "[%{public}@] didChangeSettings:forBundleIdentifier: failed with error: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

@end