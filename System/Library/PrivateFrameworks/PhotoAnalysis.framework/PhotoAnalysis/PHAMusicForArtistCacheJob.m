@interface PHAMusicForArtistCacheJob
- (BOOL)shouldRunForLibrary:(id)a3 graphManager:(id)a4;
- (PHAMusicForArtistCacheJob)init;
- (void)runWithGraphManager:(id)a3 progressBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation PHAMusicForArtistCacheJob

- (BOOL)shouldRunForLibrary:(id)a3 graphManager:(id)a4
{
  v4 = a4;
  if ([MEMORY[0x277D3BAC8] requiresGraph] && (objc_msgSend(v4, "isReady") & 1) == 0)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_203);
    }

    v6 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicForArtistCacheJob - can not run because graph is not ready", v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __62__PHAMusicForArtistCacheJob_shouldRunForLibrary_graphManager___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)runWithGraphManager:(id)a3 progressBlock:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, a3);
  runQueue = self->_runQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__PHAMusicForArtistCacheJob_runWithGraphManager_progressBlock_completionHandler___block_invoke;
  v13[3] = &unk_2788B2D20;
  objc_copyWeak(&v16, &location);
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(runQueue, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __81__PHAMusicForArtistCacheJob_runWithGraphManager_progressBlock_completionHandler___block_invoke(uint64_t a1)
{
  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_1728);
  }

  v2 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v2, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicForArtistCache - beginning music for artist cache job", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:*(a1 + 40)];
    if ([WeakRetained isReady])
    {
      v5 = [WeakRetained photoLibrary];
      v6 = MEMORY[0x277D3BAC8];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __81__PHAMusicForArtistCacheJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_197;
      v10[3] = &unk_2788B2CF8;
      v11 = *(a1 + 32);
      [v6 cacheMusicForMomentsInPhotoLibrary:v5 graphManager:WeakRetained progressReporter:v4 completionHandler:v10];
    }

    else
    {
      if (__PXLog_genericOnceToken != -1)
      {
        dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_195);
      }

      v8 = __PXLog_genericOSLog;
      if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v8, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicForArtistCache - skipping job due to non ready graph, will still write time to keep job from constantly re-trying.", buf, 2u);
      }

      v9 = *(a1 + 32);
      v5 = [MEMORY[0x277D3B698] errorForCode:-10];
      (*(v9 + 16))(v9, v5);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v4 = [MEMORY[0x277D3B698] errorForCode:-8];
    (*(v7 + 16))(v7, v4);
  }
}

void __81__PHAMusicForArtistCacheJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_197(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_200_1733);
  }

  v6 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicForArtistCache - music for artist cache job completed, success=%d, error=%{public}@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __81__PHAMusicForArtistCacheJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_2_198()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __81__PHAMusicForArtistCacheJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_193()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __81__PHAMusicForArtistCacheJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (PHAMusicForArtistCacheJob)init
{
  v8.receiver = self;
  v8.super_class = PHAMusicForArtistCacheJob;
  v2 = [(PHAMusicForArtistCacheJob *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.photoanalysisd.music.forArtistCacheJob", v4);
    runQueue = v2->_runQueue;
    v2->_runQueue = v5;
  }

  return v2;
}

@end