@interface PHAMusicForTopicPrefetchJob
- (BOOL)shouldRunForLibrary:(id)a3 graphManager:(id)a4;
- (PHAMusicForTopicPrefetchJob)init;
- (void)runWithGraphManager:(id)a3 progressBlock:(id)a4 completionHandler:(id)a5;
@end

@implementation PHAMusicForTopicPrefetchJob

- (BOOL)shouldRunForLibrary:(id)a3 graphManager:(id)a4
{
  v4 = a4;
  if ([MEMORY[0x277D3BAE8] requiresGraph] && (objc_msgSend(v4, "isReady") & 1) == 0)
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_199);
    }

    v6 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicForTopicPrefetchJob - can not run because graph is not ready", v8, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __64__PHAMusicForTopicPrefetchJob_shouldRunForLibrary_graphManager___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (void)runWithGraphManager:(id)a3 progressBlock:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  runQueue = self->_runQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__PHAMusicForTopicPrefetchJob_runWithGraphManager_progressBlock_completionHandler___block_invoke;
  v12[3] = &unk_2788B2790;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(runQueue, v12);
}

void __83__PHAMusicForTopicPrefetchJob_runWithGraphManager_progressBlock_completionHandler___block_invoke(uint64_t a1)
{
  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_6437);
  }

  v2 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, v2, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicForTopicPrefetch - beginning music for topic prefetch job", buf, 2u);
  }

  v3 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:*(a1 + 32)];
  v4 = MEMORY[0x277D3BAE8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__PHAMusicForTopicPrefetchJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_193;
  v5[3] = &unk_2788B2CF8;
  v6 = *(a1 + 40);
  [v4 prefetchCuratedSongLibraryAssetsWithProgressReporter:v3 completionHandler:v5];
}

void __83__PHAMusicForTopicPrefetchJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_193(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_196);
  }

  v6 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&dword_22FA28000, v6, OS_LOG_TYPE_INFO, "[MemoriesMusic] PHAMusicForTopicPrefetch - music for topic prefetch job completed, success=%d, error=%{public}@", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __83__PHAMusicForTopicPrefetchJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_2_194()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __83__PHAMusicForTopicPrefetchJob_runWithGraphManager_progressBlock_completionHandler___block_invoke_2()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (PHAMusicForTopicPrefetchJob)init
{
  v8.receiver = self;
  v8.super_class = PHAMusicForTopicPrefetchJob;
  v2 = [(PHAMusicForTopicPrefetchJob *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.photoanalysisd.music.forTopicPrefetchJob", v4);
    runQueue = v2->_runQueue;
    v2->_runQueue = v5;
  }

  return v2;
}

@end