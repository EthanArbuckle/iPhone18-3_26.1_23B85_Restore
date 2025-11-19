@interface QLCacheThread
@end

@implementation QLCacheThread

void __33___QLCacheThread_serverIsWorking__block_invoke(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33___QLCacheThread_serverIsWorking__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) modeLock];
  [v3 lock];

  [*(a1 + 32) setServerThreadIsIdle:0];
  if ([*(a1 + 32) currentMode] <= 3)
  {
    [*(a1 + 32) _updateMode];
  }

  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __33___QLCacheThread_serverIsWorking__block_invoke_cold_2();
  }

  v5 = [*(a1 + 32) modeLock];
  [v5 unlock];
}

void __30___QLCacheThread_serverIsIdle__block_invoke(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __30___QLCacheThread_serverIsIdle__block_invoke_cold_1();
  }

  [*(a1 + 32) _drainPendingBlocksNow];
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __30___QLCacheThread_serverIsIdle__block_invoke_cold_2();
  }

  v4 = [*(a1 + 32) modeLock];
  [v4 lock];

  [*(a1 + 32) setServerThreadIsIdle:1];
  if ([*(a1 + 32) currentMode] <= 3)
  {
    [*(a1 + 32) _updateMode];
  }

  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __30___QLCacheThread_serverIsIdle__block_invoke_cold_3();
  }

  v6 = [*(a1 + 32) modeLock];
  [v6 unlock];
}

void __47___QLCacheThread_Private___cleanUpDatabaseDone__block_invoke(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47___QLCacheThread_Private___cleanUpDatabaseDone__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) modeLock];
  [v3 lock];

  v4 = [*(a1 + 32) currentMode];
  v5 = *(a1 + 32);
  if (v4 != 2)
  {
    if (![v5 waitingForCleanup])
    {
      goto LABEL_13;
    }

    v8 = _log_3();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (![v5 thumbnailInMemoryToSaveCount] && !objc_msgSend(*(a1 + 32), "hitToSaveCount"))
  {
    if (![*(a1 + 32) waitingForCleanup])
    {
      goto LABEL_13;
    }

    v8 = _log_3();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_12:

      Current = CFRunLoopGetCurrent();
      CFRunLoopStop(Current);
      goto LABEL_13;
    }

LABEL_11:
    __47___QLCacheThread_Private___cleanUpDatabaseDone__block_invoke_cold_2();
    goto LABEL_12;
  }

  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __47___QLCacheThread_Private___cleanUpDatabaseDone__block_invoke_cold_3();
  }

  v7 = [*(a1 + 32) cleanUpDatabaseThread];
  [v7 startCleanUp];

LABEL_13:
  v10 = _log_3();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __47___QLCacheThread_Private___cleanUpDatabaseDone__block_invoke_cold_5();
  }

  v11 = [*(a1 + 32) modeLock];
  [v11 unlock];
}

void __81___QLCacheThread_CacheDelete__purgeableSpaceOnMountPoint_withUrgency_beforeDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskCache];
  *(*(*(a1 + 48) + 8) + 24) = [v2 sizeSumOfThumbnailsOlderThanDate:*(a1 + 40)];
}

BOOL __72___QLCacheThread_CacheDelete__purgeOnMountPoint_withUrgency_beforeDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskCache];
  *(*(*(a1 + 48) + 8) + 24) = [v2 removeThumbnailsOlderThanDate:*(a1 + 40)];

  return *(*(*(a1 + 48) + 8) + 24) > 0;
}

uint64_t __37___QLCacheThread__drainPendingBlocks__block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = _Block_copy(*(*(a1 + 32) + 8 * v2 + 136));
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v3 |= (*(v4 + 2))();

    ++v2;
  }

  while (v2 != 10);
  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __37___QLCacheThread__drainPendingBlocks__block_invoke_cold_1();
  }

  return v3 & 1;
}

uint64_t __33___QLCacheThread_enqueueWriting___block_invoke(uint64_t a1)
{
  v2 = 0;
  while (*(*(a1 + 32) + 136 + 8 * v2))
  {
    if (++v2 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v2 != 9)
  {
LABEL_9:
    v8 = _Block_copy(*(a1 + 40));
    v9 = *(a1 + 32) + 8 * v2;
    v10 = *(v9 + 136);
    *(v9 + 136) = v8;

    v11 = *(a1 + 32);

    return [v11 _scheduleBlockDrain];
  }

  v3 = _Block_copy(*(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  *(v4 + 208) = v3;

  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __33___QLCacheThread_enqueueWriting___block_invoke_cold_1();
  }

  return [*(a1 + 32) _drainPendingBlocksNow];
}

void __62___QLCacheThread__registerMachPortForLowDiskSpaceNotification__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v3 = dispatch_queue_create("low disk space source queue", v2);
  [*(a1 + 32) setLowDiskSpaceSourceQueue:v3];

  v4 = [*(a1 + 32) lowDiskSpaceSourceQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D40], 0, 0x304uLL, v4);
  [*(a1 + 32) setLowDiskSpaceSource:v5];

  v6 = [*(a1 + 32) lowDiskSpaceSource];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62___QLCacheThread__registerMachPortForLowDiskSpaceNotification__block_invoke_2;
  handler[3] = &unk_279ADD0F8;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(v6, handler);

  v7 = [*(a1 + 32) lowDiskSpaceSource];
  dispatch_resume(v7);

  [*(a1 + 32) _updateLowDisk];
}

uint64_t __64___QLCacheThread__unregisterMachPortForLowDiskSpaceNotification__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lowDiskSpaceSource];
  dispatch_source_cancel(v2);

  [*(a1 + 32) setLowDiskSpaceSource:0];
  v3 = *(a1 + 32);

  return [v3 setLowDiskSpaceSourceQueue:0];
}

uint64_t __37___QLCacheThread_forceCommitAndClose__block_invoke(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37___QLCacheThread_forceCommitAndClose__block_invoke_cold_1();
  }

  return [*(a1 + 32) _drainPendingBlocksNow];
}

void __27___QLCacheThread_cacheInfo__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) diskCache];
  v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v7, "size")}];
  [v5 setObject:v8 forKey:@"size"];

  v9 = *(a1 + 32);
  v10 = *(*(*(a1 + 40) + 8) + 40);
  v11 = MEMORY[0x277CCABB0];
  v13 = [v9 diskCache];
  [v13 fragmentation];
  v12 = [v11 numberWithFloat:?];
  [v10 setObject:v12 forKey:@"fragmentation"];
}

void __35___QLCacheThread_allThumbnailsInfo__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) diskCache];
  v13 = [v5 enumeratorForAllFilesUbiquitousFiles:0 withExtraInfo:1];

  v6 = [*(a1 + 32) diskCache];
  v7 = [v6 enumeratorForAllFilesUbiquitousFiles:1 withExtraInfo:1];

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [*(a1 + 32) _allThumbnailsEnumerateWithEnumerator:v13];
  [v8 addObjectsFromArray:v9];

  v10 = *(a1 + 32);
  v11 = *(*(*(a1 + 40) + 8) + 40);
  v12 = [v10 _allThumbnailsEnumerateWithEnumerator:v7];
  [v11 addObjectsFromArray:v12];
}

void __49___QLCacheThread_allThumbnailsForFileIdentifier___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) diskCache];
  v24 = a1;
  v25 = [v5 enumeratorForAllThumbnailsWithFileIdentifier:*(a1 + 40)];

  v6 = [v25 nextThumbnailData];
  if (v6)
  {
    v7 = v6;
    do
    {
      v32 = objc_alloc(MEMORY[0x277CBEB38]);
      v8 = MEMORY[0x277CCABB0];
      [v7 size];
      v31 = [v8 numberWithFloat:?];
      v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "iconMode")}];
      v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "iconVariant")}];
      v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "interpolationQuality")}];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "badgeType")}];
      v10 = [v7 iconMode];
      v11 = @"Thumbnail";
      if (v10)
      {
        v11 = @"Icon";
      }

      v28 = v11;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "hitCount")}];
      v12 = [v7 lastHitDate];
      v13 = [v7 bitmapFormat];
      v14 = MEMORY[0x277CCABB0];
      v27 = [v7 bitmapData];
      v15 = [v14 numberWithUnsignedInteger:{objc_msgSend(v27, "length")}];
      v16 = MEMORY[0x277CCABB0];
      v17 = [v7 metadata];
      v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "length")}];
      v19 = [v32 initWithObjectsAndKeys:{v31, @"size", v30, @"iconmode", v33, @"iconvariant", v9, @"interpolationquality", v29, @"badgeType", v28, @"humaniconmode", v26, @"hitcount", v12, @"lasthitdate", v13, @"bitmapFormat", v15, @"bitmaplength", v18, @"plistbufferlength", 0}];

      v20 = [v7 bitmapData];
      v21 = [v20 length];

      if (v21)
      {
        v22 = [v7 bitmapData];
        [v19 setObject:v22 forKey:@"image"];
      }

      [*(*(*(v24 + 48) + 8) + 40) addObject:v19];

      v23 = [v25 nextThumbnailData];

      v7 = v23;
    }

    while (v23);
  }
}

uint64_t __60___QLCacheThread_setLastHitDateOfAllCachedThumbnailsToDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskCache];
  *(*(*(a1 + 48) + 8) + 24) = [v2 setLastHitDateOfAllCachedThumbnailsToDate:*(a1 + 40)];

  return *(*(*(a1 + 48) + 8) + 24);
}

uint64_t __67___QLCacheThread_itemsAfterFilteringOutItemsWithMissingThumbnails___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) itemsAfterFilteringOutItemsWithMissingThumbnails:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __47___QLCacheThread_itemIsMissingRemoteThumbnail___block_invoke(void *a1)
{
  result = [*(a1[4] + 40) itemIsMissingRemoteThumbnail:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __67___QLCacheThread_Private___dispatchThumbnailRequestInServerThread___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) request];
    v4 = [v3 fileIdentifier];
    v5 = [*(a1 + 32) request];
    [v5 size];
    v7 = v6;
    v8 = [*(a1 + 32) request];
    [v8 size];
    v26 = 138412802;
    v27 = v4;
    v28 = 2048;
    v29 = v7;
    v30 = 2048;
    v31 = v9;
    _os_log_impl(&dword_2615D3000, v2, OS_LOG_TYPE_INFO, "No thumbnail found in cache for %@ @ %.1f %.1f", &v26, 0x20u);
  }

  v10 = *(a1 + 32);
  if (([v10 shouldGenerateLowQualityThumbnailOnCacheMiss] & 1) == 0 && objc_msgSend(*(a1 + 32), "needsLowQualityThumbnailGeneration"))
  {
    v11 = MEMORY[0x277CDAAE0];
    v12 = [*(a1 + 32) request];
    v13 = [v11 errorWithCode:2 request:v12 additionalUserInfo:0];

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 312));
    [WeakRetained didNotFindLowQualityEntryInCachedForThumbnailRequest:*(a1 + 32) error:v13];
  }

  v15 = _log_3();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __67___QLCacheThread_Private___dispatchThumbnailRequestInServerThread___block_invoke_cold_1((a1 + 32), v15, v16, v17, v18, v19, v20, v21);
  }

  v22 = objc_loadWeakRetained((*(a1 + 40) + 312));
  [v22 queueThumbnailRequest:*(a1 + 32) tryCache:0 tryAdditionsFirst:1];

  v23 = [*(a1 + 40) modeLock];
  [v23 lock];

  [*(a1 + 40) setMissedCount:{objc_msgSend(*(a1 + 40), "missedCount") + 1}];
  if ([*(a1 + 40) currentMode] <= 3)
  {
    [*(a1 + 40) _updateMode];
  }

  v24 = [*(a1 + 40) modeLock];
  [v24 unlock];

  v25 = *MEMORY[0x277D85DE8];
}

void __71___QLCacheThread_Private___addThumbnailRequestIntoDiskCacheQueryQueue___block_invoke(id *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] modeLock];
  [v2 lock];

  if ([a1[4] currentMode] >= 4)
  {
    v4 = _log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [a1[5] fileIdentifier];
      *buf = 138412290;
      v32 = v6;
      v7 = "Refuse to query the disk cache: the cache is closed (%@)";
      goto LABEL_7;
    }

LABEL_8:

LABEL_9:
    [a1[4] _dispatchThumbnailRequestInServerThread:a1[6]];
    goto LABEL_10;
  }

  v3 = [a1[4] lowDiskSpace];
  v4 = _log_3();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = [a1[5] fileIdentifier];
      *buf = 138412290;
      v32 = v6;
      v7 = "Refuse to query the disk cache: we are in low disk space mode (%@)";
LABEL_7:
      _os_log_impl(&dword_2615D3000, v4, OS_LOG_TYPE_INFO, v7, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    v10 = a1[5];
    v11 = [v10 fileIdentifier];
    [a1[5] size];
    v13 = v12;
    [a1[5] size];
    v15 = v14;
    v16 = &stru_2873E31F0;
    if ([a1[5] iconMode])
    {
      v17 = @"Icon mode";
    }

    else
    {
      v17 = &stru_2873E31F0;
    }

    if ([a1[6] needsLowQualityThumbnailGeneration])
    {
      v18 = @"(low quality)";
    }

    else
    {
      v18 = &stru_2873E31F0;
    }

    v19 = [a1[6] badgeType];
    if (v19)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(a1[6], "badgeType")];
    }

    *buf = 138413826;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v35 = 2048;
    v36 = v13;
    v37 = 2048;
    v38 = v15;
    v39 = 2112;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 2112;
    v44 = v16;
    _os_log_impl(&dword_2615D3000, v4, OS_LOG_TYPE_INFO, "Trying disk cache for %@ fi: %@ @ %.1fx%.1f %@ %@ %@", buf, 0x48u);
    if (v19)
    {
    }
  }

  v20 = [a1[4] currentDiskCacheQueryOperation];
  if (!v20 || (v21 = v20, [a1[4] currentDiskCacheQueryOperation], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "appendThumbnailRequest:", a1[6]), v22, v21, (v23 & 1) == 0))
  {
    v24 = [[QLDiskCacheQueryOperation alloc] initWithCacheThread:a1[4]];
    [a1[4] setCurrentDiskCacheQueryOperation:v24];

    v25 = [a1[4] currentDiskCacheQueryOperation];
    v26 = [v25 appendThumbnailRequest:a1[6]];

    if (!v26)
    {
      v29 = _log_3();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [a1[5] fileIdentifier];
        *buf = 138412290;
        v32 = v30;
        _os_log_impl(&dword_2615D3000, v29, OS_LOG_TYPE_INFO, "Could not append thumbnail request to QLCacheThread. (%@)", buf, 0xCu);
      }

      [a1[4] setCurrentDiskCacheQueryOperation:0];
      goto LABEL_9;
    }

    v27 = [a1[4] diskCacheQueryOperationQueue];
    v28 = [a1[4] currentDiskCacheQueryOperation];
    [v27 addOperation:v28];
  }

LABEL_10:
  if ([a1[4] currentMode] <= 3)
  {
    [a1[4] _updateMode];
  }

  v8 = [a1[4] modeLock];
  [v8 unlock];

  v9 = *MEMORY[0x277D85DE8];
}

void __66___QLCacheThread_Private___sendThumbnailData_forThumbnailRequest___block_invoke(uint64_t a1)
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66___QLCacheThread_Private___sendThumbnailData_forThumbnailRequest___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) modeLock];
  [v3 lock];

  [*(a1 + 32) setHitCount:{objc_msgSend(*(a1 + 32), "hitCount") + 1}];
  if ([*(a1 + 32) currentMode] <= 3)
  {
    [*(a1 + 32) _updateMode];
  }

  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66___QLCacheThread_Private___sendThumbnailData_forThumbnailRequest___block_invoke_cold_2();
  }

  v5 = [*(a1 + 32) modeLock];
  [v5 unlock];
}

void __54___QLCacheThread_Private___thumbnailHasBeenCancelled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modeLock];
  [v2 lock];

  if ([*(a1 + 32) currentMode] <= 3)
  {
    [*(a1 + 32) _updateMode];
  }

  v3 = [*(a1 + 32) modeLock];
  [v3 unlock];
}

void __37___QLCacheThread__drainPendingBlocks__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "Coalesced %ld cache writing jobs", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67___QLCacheThread_Private___dispatchThumbnailRequestInServerThread___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, a2, a3, "Cache miss for %@, reenqueuing request", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end