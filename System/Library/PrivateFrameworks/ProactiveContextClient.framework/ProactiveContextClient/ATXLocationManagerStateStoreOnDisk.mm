@interface ATXLocationManagerStateStoreOnDisk
- (ATXLocationManagerStateStoreOnDisk)initWithLocationParameters:(id)a3;
- (ATXLocationManagerStateStoreOnDisk)initWithPath:(id)a3 environment:(id)a4 locationParameters:(id)a5;
- (BOOL)_tryToOpen;
- (id)loadNowOrCallLater:(id)a3;
- (void)_deviceDidUnlock;
- (void)clear;
- (void)dealloc;
- (void)write:(id)a3;
@end

@implementation ATXLocationManagerStateStoreOnDisk

- (BOOL)_tryToOpen
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_fd < 0)
  {
    v4 = [(ATXLocationManagerStateStoreOnDiskEnv *)v2->_env openFileAtPath:v2->_path dataProtectionClass:3];
    v2->_fd = v4;
    v3 = v4 >= 0;
  }

  else
  {
    v3 = 1;
  }

  objc_sync_exit(v2);

  return v3;
}

- (ATXLocationManagerStateStoreOnDisk)initWithPath:(id)a3 environment:(id)a4 locationParameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXLocationManagerStateStoreOnDisk initWithPath:environment:locationParameters:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [ATXLocationManagerStateStoreOnDisk initWithPath:environment:locationParameters:];
LABEL_3:
  v15.receiver = self;
  v15.super_class = ATXLocationManagerStateStoreOnDisk;
  v12 = [(ATXLocationManagerStateStoreOnDisk *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, a3);
    objc_storeStrong(&v13->_env, a4);
    v13->_fd = -1;
    v13->_cacheExpirationInterval = [v11 previousLOIExpirationTime];
  }

  return v13;
}

- (ATXLocationManagerStateStoreOnDisk)initWithLocationParameters:(id)a3
{
  v4 = MEMORY[0x277CEBCB0];
  v5 = a3;
  v6 = [v4 appPredictionDirectoryFile:@"ATXLocationManagerState"];
  v7 = [MEMORY[0x277CCAC38] processInfo];
  v8 = [v7 processName];
  v9 = [v8 lowercaseString];
  v10 = [v9 isEqualToString:@"contextstored"];

  if (v10)
  {
    v11 = [MEMORY[0x277CFE0D8] knowledgeDirectory];
    v12 = [v11 stringByAppendingPathComponent:@"ATXLocationManagerState"];

    v6 = v12;
  }

  v13 = [v6 stringByAppendingString:@"-unrestricted"];

  v14 = objc_opt_new();
  v15 = [(ATXLocationManagerStateStoreOnDisk *)self initWithPath:v13 environment:v14 locationParameters:v5];

  return v15;
}

- (void)dealloc
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
  }

  v4.receiver = self;
  v4.super_class = ATXLocationManagerStateStoreOnDisk;
  [(ATXLocationManagerStateStoreOnDisk *)&v4 dealloc];
}

- (id)loadNowOrCallLater:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(ATXLocationManagerStateStoreOnDisk *)v5 _tryToOpen])
  {
    v6 = objc_autoreleasePoolPush();
    location = 0;
    fd = v5->_fd;
    [(ATXLocationManagerStateStoreOnDisk *)v5 cacheExpirationInterval];
    ATXCacheFileRead();

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v8 = ![(ATXLocationManagerStateStoreOnDiskEnv *)v5->_env isLocked];
    if (!v4)
    {
      LOBYTE(v8) = 1;
    }

    if ((v8 & 1) == 0 && !v5->_deferredLoadCallback)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 fileExistsAtPath:v5->_path];

      if (v10)
      {
        objc_initWeak(&location, v5);
        v11 = MEMORY[0x2666EC640](v4);
        deferredLoadCallback = v5->_deferredLoadCallback;
        v5->_deferredLoadCallback = v11;

        env = v5->_env;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __57__ATXLocationManagerStateStoreOnDisk_loadNowOrCallLater___block_invoke;
        v15[3] = &unk_279AB7B90;
        objc_copyWeak(&v16, &location);
        [(ATXLocationManagerStateStoreOnDiskEnv *)env callOnNextUnlock:v15];
        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }
  }

  objc_sync_exit(v5);

  return 0;
}

void __57__ATXLocationManagerStateStoreOnDisk_loadNowOrCallLater___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceDidUnlock];
}

- (void)_deviceDidUnlock
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = [(ATXLocationManagerStateStoreOnDisk *)v2 loadNowOrCallLater:0];
  v3 = MEMORY[0x2666EC640](v2->_deferredLoadCallback);
  deferredLoadCallback = v2->_deferredLoadCallback;
  v2->_deferredLoadCallback = 0;

  objc_sync_exit(v2);
  if (v3)
  {
    (v3)[2](v3, v5);
  }
}

- (void)write:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(ATXLocationManagerStateStoreOnDisk *)v5 _tryToOpen])
  {
    v6 = objc_autoreleasePoolPush();
    v13 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
    v8 = v13;
    if (v7)
    {
      fd = v5->_fd;
      v14[0] = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
      LOBYTE(fd) = ATXCacheFileWriteChunks();

      if (fd)
      {
LABEL_9:

        objc_autoreleasePoolPop(v6);
        goto LABEL_10;
      }

      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ATXLocationManagerStateStoreOnDisk write:v11];
      }
    }

    else
    {
      v11 = __atxlog_handle_default();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(ATXLocationManagerStateStoreOnDisk *)v8 write:v11];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  objc_sync_exit(v5);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtPath:obj->_path error:0];

  fd = obj->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    obj->_fd = -1;
  }

  objc_sync_exit(obj);
}

- (void)initWithPath:environment:locationParameters:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ATXLocationManagerStateStore.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"path"}];
}

- (void)initWithPath:environment:locationParameters:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ATXLocationManagerStateStore.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
}

- (void)loadNowOrCallLater:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_260C9F000, a2, OS_LOG_TYPE_FAULT, "Error deserializing: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)write:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_260C9F000, a2, OS_LOG_TYPE_FAULT, "Error serializing: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end