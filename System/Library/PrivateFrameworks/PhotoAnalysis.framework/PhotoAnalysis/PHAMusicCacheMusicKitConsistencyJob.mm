@interface PHAMusicCacheMusicKitConsistencyJob
- (BOOL)shouldRunForLibrary:(id)library graphManager:(id)manager;
- (PHAMusicCacheMusicKitConsistencyJob)init;
- (void)runWithGraphManager:(id)manager progressBlock:(id)block completionHandler:(id)handler;
@end

@implementation PHAMusicCacheMusicKitConsistencyJob

- (BOOL)shouldRunForLibrary:(id)library graphManager:(id)manager
{
  managerCopy = manager;
  if ([MEMORY[0x277D3BAA8] requiresGraph] && (objc_msgSend(managerCopy, "isReady") & 1) == 0)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_200);
    }

    v6 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicCacheMusicKitConsistencyJob - can not run because graph is not ready", v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __72__PHAMusicCacheMusicKitConsistencyJob_shouldRunForLibrary_graphManager___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)runWithGraphManager:(id)manager progressBlock:(id)block completionHandler:(id)handler
{
  blockCopy = block;
  handlerCopy = handler;
  objc_initWeak(&location, manager);
  runQueue = self->_runQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__PHAMusicCacheMusicKitConsistencyJob_runWithGraphManager_progressBlock_completionHandler___block_invoke;
  v13[3] = &unk_2788B2D20;
  objc_copyWeak(&v16, &location);
  v14 = handlerCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = handlerCopy;
  dispatch_async(runQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __91__PHAMusicCacheMusicKitConsistencyJob_runWithGraphManager_progressBlock_completionHandler___block_invoke(uint64_t a1)
{
  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global);
  }

  v2 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v2, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicCacheMusicKitConsistencyJob - beginning music cache music consistency job", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:*(a1 + 40)];
    v5 = [WeakRetained photoLibrary];
    v6 = MEMORY[0x277D3BAA8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __91__PHAMusicCacheMusicKitConsistencyJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_194;
    v8[3] = &unk_2788B2CF8;
    v9 = *(a1 + 32);
    [v6 runWithPhotoLibrary:v5 progressReporter:v4 completionHandler:v8];
  }

  else
  {
    v7 = *(a1 + 32);
    v4 = [MEMORY[0x277D3B698] errorForCode:-8];
    (*(v7 + 16))(v7, v4);
  }
}

void __91__PHAMusicCacheMusicKitConsistencyJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_194(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_197);
  }

  v6 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicCacheMusicKitConsistencyJob - music cache music kit consistency job completed, success=%d, error=%{public}@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __91__PHAMusicCacheMusicKitConsistencyJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_2_195()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __91__PHAMusicCacheMusicKitConsistencyJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (PHAMusicCacheMusicKitConsistencyJob)init
{
  v8.receiver = self;
  v8.super_class = PHAMusicCacheMusicKitConsistencyJob;
  v2 = [(PHAMusicCacheMusicKitConsistencyJob *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.photoanalysisd.music.cacheConsistencyJob", v4);
    runQueue = v2->_runQueue;
    v2->_runQueue = v5;
  }

  return v2;
}

@end