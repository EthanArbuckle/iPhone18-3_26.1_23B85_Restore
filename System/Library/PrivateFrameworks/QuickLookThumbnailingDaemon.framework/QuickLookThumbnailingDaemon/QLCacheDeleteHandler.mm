@interface QLCacheDeleteHandler
+ (id)dateBeforePurgingThumbnailsForUrgency:(int)urgency;
+ (void)setUpCacheDeleteWithThumbnailAdditionIndex:(id)index;
@end

@implementation QLCacheDeleteHandler

+ (void)setUpCacheDeleteWithThumbnailAdditionIndex:(id)index
{
  indexCopy = index;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke;
  aBlock[3] = &unk_279ADD0D0;
  v4 = indexCopy;
  v24 = v4;
  v5 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke_8;
  v21[3] = &unk_279ADD0D0;
  v6 = v4;
  v22 = v6;
  v7 = _Block_copy(v21);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke_9;
  v19[3] = &unk_279ADD0F8;
  v20 = v6;
  v8 = v6;
  v9 = _Block_copy(v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke_2;
  v15[3] = &unk_279ADD120;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v10 = setUpCacheDeleteWithThumbnailAdditionIndex__once;
  v11 = v9;
  v12 = v7;
  v13 = v5;
  if (v10 != -1)
  {
    dispatch_once(&setUpCacheDeleteWithThumbnailAdditionIndex__once, v15);
  }

  v14 = dispatch_get_global_queue(9, 0);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v14, &__block_literal_global_1);
}

uint64_t __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = _log_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_2615D3000, v6, OS_LOG_TYPE_INFO, "#CacheDelete computing purgeable space on %@ with urgency %d", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v8 = [QLCacheDeleteHandler dateBeforePurgingThumbnailsForUrgency:a2];
  v9 = [*(a1 + 32) purgeableSpaceOnMountPoint:v7 withUrgency:a2 beforeDate:v8];
  v10 = [QLServerThreadInstance cacheThreadForVolume:v7];
  v11 = [v10 purgeableSpaceOnMountPoint:v7 withUrgency:a2 beforeDate:v8];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{v11 + v9, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v5}];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:2];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = _log_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_2615D3000, v6, OS_LOG_TYPE_INFO, "#CacheDelete purging on %@ with urgency %d", buf, 0x12u);
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v8 = [QLCacheDeleteHandler dateBeforePurgingThumbnailsForUrgency:a2];
  v9 = [QLServerThreadInstance cacheThreadForVolume:v7];
  v10 = [*(a1 + 32) purgeOnMountPoint:v7 withUrgency:a2 beforeDate:v8];
  v11 = [v9 purgeOnMountPoint:v7 withUrgency:a2 beforeDate:v8];
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{v11 + v10, @"CACHE_DELETE_VOLUME", @"CACHE_DELETE_AMOUNT", v5}];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:2];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke_2(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x282146EF8](@"com.apple.quicklook.ThumbnailsAgent.CacheDelete", a1[4]);
}

void __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  string = xpc_dictionary_get_string(v2, "Name");
  v4 = xpc_dictionary_get_string(v2, *MEMORY[0x277D86430]);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  if ([v5 isEqualToString:@"EmptyingTrash"])
  {
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v7 = [v6 isEqualToString:@"DeleteImmediately"];

    if (!v7)
    {
      goto LABEL_8;
    }
  }

  v8 = xpc_dictionary_get_string(v2, "Object");
  v9 = _log_2();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = v4;
    v16 = 2080;
    v17 = string;
    v18 = 2080;
    v19 = v8;
    _os_log_impl(&dword_2615D3000, v9, OS_LOG_TYPE_DEFAULT, "Got event: %s, name: %s, object_str: %s", &v14, 0x20u);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  v11 = [v10 isEqualToString:@"com.apple.finder.cacheDelete"];

  if (v11)
  {
    v12 = +[QLThumbnailAdditionIndex sharedInstance];
    [v12 performDatabaseMaintenance];

    [QLServerThreadInstance forEachCacheThread:&__block_literal_global_32];
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

void __67__QLCacheDeleteHandler_setUpCacheDeleteWithThumbnailAdditionIndex___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setShouldRemoveThumbnailsForDeletedFiles:1];
  [v2 forceCommit];
  [v2 setShouldRemoveThumbnailsForDeletedFiles:0];
}

+ (id)dateBeforePurgingThumbnailsForUrgency:(int)urgency
{
  if ((urgency + 1) >= 6)
  {
    v5 = _log_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(QLCacheDeleteHandler *)urgency dateBeforePurgingThumbnailsForUrgency:v5];
    }

    v3 = 978307200.0;
  }

  else
  {
    v3 = dbl_2616304D0[urgency + 1];
  }

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v3];

  return v6;
}

+ (void)dateBeforePurgingThumbnailsForUrgency:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "Unhandled #CacheDelete urgency %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end