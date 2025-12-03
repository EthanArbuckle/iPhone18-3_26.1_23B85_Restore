@interface ATXLocationManagerStateStoreOnDisk
- (ATXLocationManagerStateStoreOnDisk)initWithLocationParameters:(id)parameters;
- (ATXLocationManagerStateStoreOnDisk)initWithPath:(id)path environment:(id)environment locationParameters:(id)parameters;
- (BOOL)_tryToOpen;
- (id)loadNowOrCallLater:(id)later;
- (void)_deviceDidUnlock;
- (void)clear;
- (void)dealloc;
- (void)write:(id)write;
@end

@implementation ATXLocationManagerStateStoreOnDisk

- (BOOL)_tryToOpen
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_fd < 0)
  {
    v4 = [(ATXLocationManagerStateStoreOnDiskEnv *)selfCopy->_env openFileAtPath:selfCopy->_path dataProtectionClass:3];
    selfCopy->_fd = v4;
    v3 = v4 >= 0;
  }

  else
  {
    v3 = 1;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (ATXLocationManagerStateStoreOnDisk)initWithPath:(id)path environment:(id)environment locationParameters:(id)parameters
{
  pathCopy = path;
  environmentCopy = environment;
  parametersCopy = parameters;
  if (pathCopy)
  {
    if (environmentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXLocationManagerStateStoreOnDisk initWithPath:environment:locationParameters:];
    if (environmentCopy)
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
    objc_storeStrong(&v12->_path, path);
    objc_storeStrong(&v13->_env, environment);
    v13->_fd = -1;
    v13->_cacheExpirationInterval = [parametersCopy previousLOIExpirationTime];
  }

  return v13;
}

- (ATXLocationManagerStateStoreOnDisk)initWithLocationParameters:(id)parameters
{
  v4 = MEMORY[0x277CEBCB0];
  parametersCopy = parameters;
  v6 = [v4 appPredictionDirectoryFile:@"ATXLocationManagerState"];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  lowercaseString = [processName lowercaseString];
  v10 = [lowercaseString isEqualToString:@"contextstored"];

  if (v10)
  {
    knowledgeDirectory = [MEMORY[0x277CFE0D8] knowledgeDirectory];
    v12 = [knowledgeDirectory stringByAppendingPathComponent:@"ATXLocationManagerState"];

    v6 = v12;
  }

  v13 = [v6 stringByAppendingString:@"-unrestricted"];

  v14 = objc_opt_new();
  v15 = [(ATXLocationManagerStateStoreOnDisk *)self initWithPath:v13 environment:v14 locationParameters:parametersCopy];

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

- (id)loadNowOrCallLater:(id)later
{
  laterCopy = later;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ATXLocationManagerStateStoreOnDisk *)selfCopy _tryToOpen])
  {
    v6 = objc_autoreleasePoolPush();
    location = 0;
    fd = selfCopy->_fd;
    [(ATXLocationManagerStateStoreOnDisk *)selfCopy cacheExpirationInterval];
    ATXCacheFileRead();

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v8 = ![(ATXLocationManagerStateStoreOnDiskEnv *)selfCopy->_env isLocked];
    if (!laterCopy)
    {
      LOBYTE(v8) = 1;
    }

    if ((v8 & 1) == 0 && !selfCopy->_deferredLoadCallback)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [defaultManager fileExistsAtPath:selfCopy->_path];

      if (v10)
      {
        objc_initWeak(&location, selfCopy);
        v11 = MEMORY[0x2666EC640](laterCopy);
        deferredLoadCallback = selfCopy->_deferredLoadCallback;
        selfCopy->_deferredLoadCallback = v11;

        env = selfCopy->_env;
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

  objc_sync_exit(selfCopy);

  return 0;
}

void __57__ATXLocationManagerStateStoreOnDisk_loadNowOrCallLater___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceDidUnlock];
}

- (void)_deviceDidUnlock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(ATXLocationManagerStateStoreOnDisk *)selfCopy loadNowOrCallLater:0];
  v3 = MEMORY[0x2666EC640](selfCopy->_deferredLoadCallback);
  deferredLoadCallback = selfCopy->_deferredLoadCallback;
  selfCopy->_deferredLoadCallback = 0;

  objc_sync_exit(selfCopy);
  if (v3)
  {
    (v3)[2](v3, v5);
  }
}

- (void)write:(id)write
{
  v14[1] = *MEMORY[0x277D85DE8];
  writeCopy = write;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ATXLocationManagerStateStoreOnDisk *)selfCopy _tryToOpen])
  {
    v6 = objc_autoreleasePoolPush();
    v13 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:writeCopy requiringSecureCoding:1 error:&v13];
    v8 = v13;
    if (v7)
    {
      fd = selfCopy->_fd;
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
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  obj = self;
  objc_sync_enter(obj);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:obj->_path error:0];

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