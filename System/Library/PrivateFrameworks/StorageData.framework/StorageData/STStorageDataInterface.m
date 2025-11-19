@interface STStorageDataInterface
+ (id)storageInfoDict_Remote;
- (STStorageDataInterface)init;
@end

@implementation STStorageDataInterface

- (STStorageDataInterface)init
{
  v6.receiver = self;
  v6.super_class = STStorageDataInterface;
  v2 = [(STStorageDataInterface *)&v6 init];
  if (v2)
  {
    v3 = +[STStorageAppsMonitor sharedMonitor];
    appsMonitor = v2->_appsMonitor;
    v2->_appsMonitor = v3;

    [(STStorageAppsMonitor *)v2->_appsMonitor sync];
  }

  return v2;
}

uint64_t __30__STStorageDataInterface_apps__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

uint64_t __43__STStorageDataInterface_appsOrderedBySize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 appSize];
  v7 = [v6 userTotal];
  v8 = [v5 appSize];
  v9 = [v8 userTotal];

  if (v7 <= v9)
  {
    v11 = [v5 appSize];
    v12 = [v11 userTotal];
    v13 = [v4 appSize];
    v14 = [v13 userTotal];

    if (v12 <= v14)
    {
      v15 = [v4 name];
      v16 = [v5 name];
      v10 = [v15 localizedCaseInsensitiveCompare:v16];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t __43__STStorageDataInterface_appsOrderedByName__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

+ (id)storageInfoDict_Remote
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v2 = STStorageLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26BB8E000, v2, OS_LOG_TYPE_INFO, "Connecting to StorageDataService", buf, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.storagedatad" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287C949F0];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__STStorageDataInterface_storageInfoDict_Remote__block_invoke_13;
  v8[3] = &unk_279D1D438;
  v8[4] = &v10;
  [v5 storageInfoDict:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __48__STStorageDataInterface_storageInfoDict_Remote__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = STStorageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__STMTelemetryController_retrieveTelemetryWithCompletionHandler___block_invoke_cold_1(v2, v3);
  }
}

@end