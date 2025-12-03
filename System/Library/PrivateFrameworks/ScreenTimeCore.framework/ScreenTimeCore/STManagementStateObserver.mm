@interface STManagementStateObserver
+ (void)createObserverWithDSID:(id)d completionHandler:(id)handler;
- (id)_initWithDSID:(id)d;
- (void)_screenTimeSettingsDidChange;
- (void)dealloc;
@end

@implementation STManagementStateObserver

- (id)_initWithDSID:(id)d
{
  dCopy = d;
  v19.receiver = self;
  v19.super_class = STManagementStateObserver;
  v5 = [(STManagementStateObserver *)&v19 init];
  v6 = [dCopy copy];
  dsid = v5->_dsid;
  v5->_dsid = v6;

  v8 = objc_opt_new();
  managementState = v5->_managementState;
  v5->_managementState = v8;

  v5->_contactManagementState = 0;
  objc_initWeak(&location, v5);
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_DEFAULT, 0);

  v12 = dispatch_queue_create([@"com.apple.ScreenTimeAgent.contact-management-state-observer-screentime-settings" UTF8String], v11);
  screenTimeSettingsChangeQueue = v5->_screenTimeSettingsChangeQueue;
  v5->_screenTimeSettingsChangeQueue = v12;

  v14 = v5->_screenTimeSettingsChangeQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __43__STManagementStateObserver__initWithDSID___block_invoke;
  v16[3] = &unk_1E7CE7330;
  objc_copyWeak(&v17, &location);
  notify_register_dispatch("com.apple.ScreenTimeAgent.SettingsDidChangeNotification", &v5->_screenTimeSettingsChangeNotifyToken, v14, v16);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
  return v5;
}

void __43__STManagementStateObserver__initWithDSID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _screenTimeSettingsDidChange];
}

- (void)dealloc
{
  notify_cancel(self->_screenTimeSettingsChangeNotifyToken);
  v3.receiver = self;
  v3.super_class = STManagementStateObserver;
  [(STManagementStateObserver *)&v3 dealloc];
}

+ (void)createObserverWithDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = [[self alloc] _initWithDSID:dCopy];
  managementState = [v8 managementState];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__STManagementStateObserver_createObserverWithDSID_completionHandler___block_invoke;
  v12[3] = &unk_1E7CE79B8;
  v13 = v8;
  v14 = handlerCopy;
  v10 = v8;
  v11 = handlerCopy;
  [managementState contactManagementStateForDSID:dCopy completionHandler:v12];
}

void __70__STManagementStateObserver_createObserverWithDSID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog managementStateObserver];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__STManagementStateObserver_createObserverWithDSID_completionHandler___block_invoke_cold_1(v5, v6);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    [*(a1 + 32) setContactManagementState:a2];
    v8 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (void)_screenTimeSettingsDidChange
{
  managementState = [(STManagementStateObserver *)self managementState];
  dsid = [(STManagementStateObserver *)self dsid];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__STManagementStateObserver__screenTimeSettingsDidChange__block_invoke;
  v5[3] = &unk_1E7CE79E0;
  v5[4] = self;
  [managementState contactManagementStateForDSID:dsid completionHandler:v5];
}

void __57__STManagementStateObserver__screenTimeSettingsDidChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog managementStateObserver];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__STManagementStateObserver__screenTimeSettingsDidChange__block_invoke_cold_1(v5, v6);
    }
  }

  else if ([*(a1 + 32) contactManagementState] != a2)
  {
    v7 = +[STLog managementStateObserver];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) contactManagementState];
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = a2;
      _os_log_impl(&dword_1B831F000, v7, OS_LOG_TYPE_DEFAULT, "Contact management state changed from %lld to %lld", &v10, 0x16u);
    }

    [*(a1 + 32) setContactManagementState:a2];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __70__STManagementStateObserver_createObserverWithDSID_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch initial contact management state: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __57__STManagementStateObserver__screenTimeSettingsDidChange__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch contact management state: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end