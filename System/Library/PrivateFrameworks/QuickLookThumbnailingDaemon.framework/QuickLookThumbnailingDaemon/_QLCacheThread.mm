@interface _QLCacheThread
+ (int64_t)defaultCacheSize;
- (BOOL)_shouldQuitCleanUpDatabaseModeForMode:(unint64_t)a3;
- (BOOL)_shouldQuitClosedModeForMode:(unint64_t)a3;
- (BOOL)_shouldQuitLowSpaceModeForMode:(unint64_t)a3;
- (BOOL)_shouldQuitWorkingModeForMode:(unint64_t)a3;
- (BOOL)addNoThumbnailIntoCache:(id)a3;
- (BOOL)addThumbnailIntoCache:(id)a3 bitmapFormat:(id)a4 bitmapData:(id)a5 metadata:(id)a6 flavor:(int)a7 contentRect:(CGRect)a8 badgeType:(unint64_t)a9 externalGeneratorDataHash:(unint64_t)a10;
- (BOOL)addThumbnailRequest:(id)a3;
- (BOOL)isIdle;
- (BOOL)itemIsMissingRemoteThumbnail:(id)a3;
- (BOOL)locked_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3;
- (BOOL)locked_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3;
- (BOOL)setLastHitDateOfAllCachedThumbnailsToDate:(id)a3;
- (NSString)modeDescription;
- (QLServerThread)serverThread;
- (_QLCacheThread)initWithServerThread:(id)a3 cacheSize:(int64_t)a4 location:(id)a5;
- (id)_allThumbnailsEnumerateWithEnumerator:(id)a3;
- (id)allThumbnailsForFPItemID:(id)a3;
- (id)allThumbnailsForFileIdentifier:(id)a3;
- (id)allThumbnailsForIno:(unint64_t)a3 fsid:(fsid)a4;
- (id)allThumbnailsInfo;
- (id)cacheInfo;
- (id)contentDescriptionForURL:(__CFURL *)a3;
- (id)itemsAfterFilteringOutItemsWithMissingThumbnails:(id)a3;
- (int64_t)purgeOnMountPoint:(id)a3 withUrgency:(int)a4 beforeDate:(id)a5;
- (int64_t)purgeableSpaceOnMountPoint:(id)a3 withUrgency:(int)a4 beforeDate:(id)a5;
- (void)_addThumbnailRequestIntoDiskCacheQueryQueue:(id)a3;
- (void)_cleanUpDatabaseDone;
- (void)_destroyDrainTimer;
- (void)_dispatchThumbnailRequestInServerThread:(id)a3;
- (void)_drainPendingBlocks;
- (void)_drainPendingBlocksNow;
- (void)_registerMachPortForLowDiskSpaceNotification;
- (void)_scheduleBlockDrain;
- (void)_scheduledDrainPendingBlocks;
- (void)_sendThumbnailData:(id)a3 forThumbnailRequest:(id)a4;
- (void)_setLowDiskSpace:(BOOL)a3;
- (void)_setMode:(unint64_t)a3;
- (void)_thumbnailHasBeenCancelled:(id)a3;
- (void)_unregisterMachPortForLowDiskSpaceNotification;
- (void)_unscheduleBlockDrain;
- (void)_updateLowDisk;
- (void)_updateMode;
- (void)_waitForEndOfDatabaseCleanup;
- (void)_willStartCleanUpDatabaseModeFromMode:(unint64_t)a3;
- (void)_willStartClosedModeFromMode:(unint64_t)a3;
- (void)_willStartResetingModeFromMode:(unint64_t)a3;
- (void)closeCache;
- (void)databaseCorruptionDetected;
- (void)enqueueWriting:(id)a3;
- (void)forceCommit;
- (void)forceCommitAndClose;
- (void)noteRemoteThumbnailMissingForItems:(id)a3;
- (void)noteRemoteThumbnailPresentForItems:(id)a3;
- (void)openCache;
- (void)prepareToExit;
- (void)reset;
- (void)serverIsIdle;
- (void)serverIsWorking;
- (void)startWriting;
- (void)stopWriting;
- (void)updateMode;
@end

@implementation _QLCacheThread

- (void)serverIsWorking
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread serverIsWorking];
  }

  writeCoalesceQueue = self->_writeCoalesceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33___QLCacheThread_serverIsWorking__block_invoke;
  block[3] = &unk_279ADD0F8;
  block[4] = self;
  dispatch_sync(writeCoalesceQueue, block);
}

- (void)_updateMode
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread _updateMode];
  }

  if (!self->_lowDiskSpace)
  {
    v4 = [(NSOperationQueue *)self->_diskCacheQueryOperationQueue operations];
    if ([v4 count])
    {
      v5 = [(NSOperationQueue *)self->_memoryCacheQueryOperationQueue operations];
      v6 = [v5 count];

      if (v6)
      {
        v7 = 0;
LABEL_11:
        [(_QLCacheThread *)self _setMode:v7];
        return;
      }
    }

    else
    {
    }

    if (self->_serverThreadIsIdle)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    goto LABEL_11;
  }
}

- (void)startWriting
{
  v3 = os_transaction_create();
  writeTransaction = self->_writeTransaction;
  self->_writeTransaction = v3;

  MEMORY[0x2821F96F8]();
}

- (void)_cleanUpDatabaseDone
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread(Private) _cleanUpDatabaseDone];
  }

  WeakRetained = objc_loadWeakRetained(&self->_serverThread);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47___QLCacheThread_Private___cleanUpDatabaseDone__block_invoke;
  v5[3] = &unk_279ADD0F8;
  v5[4] = self;
  [WeakRetained perform:v5];
}

- (void)stopWriting
{
  writeTransaction = self->_writeTransaction;
  self->_writeTransaction = 0;
  MEMORY[0x2821F96F8]();
}

- (QLServerThread)serverThread
{
  WeakRetained = objc_loadWeakRetained(&self->_serverThread);

  return WeakRetained;
}

- (void)updateMode
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread updateMode];
  }

  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread updateMode];
  }

  [(NSLock *)self->_modeLock lock];
  if (self->_currentMode <= 3)
  {
    [(_QLCacheThread *)self _updateMode];
  }

  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread updateMode];
  }

  [(NSLock *)self->_modeLock unlock];
}

- (void)serverIsIdle
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread serverIsIdle];
  }

  writeCoalesceQueue = self->_writeCoalesceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30___QLCacheThread_serverIsIdle__block_invoke;
  block[3] = &unk_279ADD0F8;
  block[4] = self;
  dispatch_sync(writeCoalesceQueue, block);
}

- (void)_drainPendingBlocksNow
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread _drainPendingBlocksNow];
  }

  [(_QLCacheThread *)self _unscheduleBlockDrain];
  [(_QLCacheThread *)self _drainPendingBlocks];
}

- (void)_unscheduleBlockDrain
{
  drainTimer = self->_drainTimer;
  if (drainTimer)
  {
    v3 = dispatch_time(0, 1000000000000000);

    dispatch_source_set_timer(drainTimer, v3, 0x38D7EA4C68000uLL, 0);
  }
}

- (void)_drainPendingBlocks
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_2615D3000, v0, v1, "Coalesced %ld cache cleaning jobs", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (int64_t)purgeableSpaceOnMountPoint:(id)a3 withUrgency:(int)a4 beforeDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = [(_QLCacheThread *)self diskCache];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81___QLCacheThread_CacheDelete__purgeableSpaceOnMountPoint_withUrgency_beforeDate___block_invoke;
  v14[3] = &unk_279ADDE08;
  v16 = &v17;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  LOBYTE(v8) = [v9 doReading:v14];

  if (v8)
  {
    v11 = v18[3];
  }

  else
  {
    v12 = _log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_QLCacheThread(CacheDelete) purgeableSpaceOnMountPoint:v12 withUrgency:? beforeDate:?];
    }

    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (int64_t)purgeOnMountPoint:(id)a3 withUrgency:(int)a4 beforeDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = [(_QLCacheThread *)self diskCache];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72___QLCacheThread_CacheDelete__purgeOnMountPoint_withUrgency_beforeDate___block_invoke;
  v14[3] = &unk_279ADDE80;
  v16 = &v17;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  LOBYTE(v8) = [v9 doWriting:v14];

  if (v8)
  {
    v11 = v18[3];
  }

  else
  {
    v12 = _log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_QLCacheThread(CacheDelete) purgeOnMountPoint:v12 withUrgency:? beforeDate:?];
    }

    v11 = 0;
  }

  _Block_object_dispose(&v17, 8);
  return v11;
}

+ (int64_t)defaultCacheSize
{
  if (QLCacheInDebugMode_onceToken != -1)
  {
    QLCacheInDebugMode_cold_1();
  }

  if (QLCacheInDebugMode__cacheIsInDebugMode)
  {
    return 52428800;
  }

  else
  {
    return 524288000;
  }
}

- (_QLCacheThread)initWithServerThread:(id)a3 cacheSize:(int64_t)a4 location:(id)a5
{
  v8 = a3;
  v9 = a5;
  v31.receiver = self;
  v31.super_class = _QLCacheThread;
  v10 = [(_QLCacheThread *)&v31 init];
  if (v10)
  {
    if (!v9)
    {
      v29 = 0;
      goto LABEL_6;
    }

    v11 = dispatch_queue_create("com.apple.quicklook.ThumbnailsAgent.QLCacheThread.writequeue", 0);
    writeQueue = v10->_writeQueue;
    v10->_writeQueue = v11;

    v13 = dispatch_queue_create("quicklookd.cachecoalescer", 0);
    writeCoalesceQueue = v10->_writeCoalesceQueue;
    v10->_writeCoalesceQueue = v13;

    v10->_serverThreadIsIdle = 1;
    v15 = objc_alloc_init(MEMORY[0x277CCABD8]);
    memoryCacheQueryOperationQueue = v10->_memoryCacheQueryOperationQueue;
    v10->_memoryCacheQueryOperationQueue = v15;

    [(NSOperationQueue *)v10->_memoryCacheQueryOperationQueue setMaxConcurrentOperationCount:1];
    v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
    diskCacheQueryOperationQueue = v10->_diskCacheQueryOperationQueue;
    v10->_diskCacheQueryOperationQueue = v17;

    [(NSOperationQueue *)v10->_diskCacheQueryOperationQueue setMaxConcurrentOperationCount:1];
    v19 = [[QLDiskCache alloc] initWithPathLocation:v9 cacheSize:a4 cacheThread:v10];
    diskCache = v10->_diskCache;
    v10->_diskCache = v19;

    [(QLDiskCache *)v10->_diskCache setDelegate:v10];
    v21 = [[QLMemoryCache alloc] initWithCacheThread:v10];
    memoryCache = v10->_memoryCache;
    v10->_memoryCache = v21;

    v23 = [[QLCacheCleanUpDatabaseThread alloc] initWithCacheThread:v10];
    cleanUpDatabaseThread = v10->_cleanUpDatabaseThread;
    v10->_cleanUpDatabaseThread = v23;

    v10->_currentMode = 4;
    v25 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    modeLock = v10->_modeLock;
    v10->_modeLock = v25;

    objc_storeWeak(&v10->_serverThread, v8);
    v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
    diskCacheURL = v10->_diskCacheURL;
    v10->_diskCacheURL = v27;
  }

  v29 = v10;
LABEL_6:

  return v29;
}

- (void)databaseCorruptionDetected
{
  WeakRetained = objc_loadWeakRetained(&self->_serverThread);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44___QLCacheThread_databaseCorruptionDetected__block_invoke;
  v4[3] = &unk_279ADD0F8;
  v4[4] = self;
  [WeakRetained perform:v4];
}

- (void)_scheduledDrainPendingBlocks
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread _scheduledDrainPendingBlocks];
  }

  [(_QLCacheThread *)self _drainPendingBlocks];
}

- (void)_scheduleBlockDrain
{
  drainTimer = self->_drainTimer;
  if (drainTimer)
  {
    v3 = dispatch_time(0, 2000000000);

    dispatch_source_set_timer(drainTimer, v3, 0x38D7EA4C68000uLL, 0);
  }

  else
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_writeCoalesceQueue);
    v6 = self->_drainTimer;
    self->_drainTimer = v5;

    v7 = self->_drainTimer;
    v8 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v7, v8, 0x38D7EA4C68000uLL, 0);
    v9 = self->_drainTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37___QLCacheThread__scheduleBlockDrain__block_invoke;
    handler[3] = &unk_279ADD0F8;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_drainTimer);
  }
}

- (void)_destroyDrainTimer
{
  drainTimer = self->_drainTimer;
  if (drainTimer)
  {
    dispatch_source_cancel(drainTimer);
    v4 = self->_drainTimer;
    self->_drainTimer = 0;
  }
}

- (void)enqueueWriting:(id)a3
{
  v4 = a3;
  writeCoalesceQueue = self->_writeCoalesceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33___QLCacheThread_enqueueWriting___block_invoke;
  v7[3] = &unk_279ADD550;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(writeCoalesceQueue, v7);
}

- (BOOL)addThumbnailRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread addThumbnailRequest:];
  }

  [(NSLock *)self->_modeLock lock];
  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread addThumbnailRequest:];
  }

  if (self->_currentMode > 3 || self->_lowDiskSpace)
  {
    v7 = _log_3();
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
    {
      v8 = stringForCacheMode(self->_currentMode);
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2615D3000, &v7->super.super, OS_LOG_TYPE_INFO, "database is not open (mode: %@), or low disk", &v14, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v10 = _log_3();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_2615D3000, v10, OS_LOG_TYPE_INFO, "Trying memory cache for %@", &v14, 0xCu);
    }

    v7 = [[QLMemoryCacheQueryOperation alloc] initWithThumbnailRequest:v4 cacheThread:self];
    [(NSOperationQueue *)self->_memoryCacheQueryOperationQueue addOperation:v7];
    [(_QLCacheThread *)self _updateMode];
    v9 = 1;
  }

  [(NSLock *)self->_modeLock unlock];
  v11 = _log_3();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread addThumbnailRequest:];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)addNoThumbnailIntoCache:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 request];
  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 fileIdentifier];
    [v5 size];
    v9 = v8;
    [v5 size];
    v19 = 138412802;
    v20 = v7;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&dword_2615D3000, v6, OS_LOG_TYPE_INFO, "adding no thumbnail for %@ @ %.1f %.1f", &v19, 0x20u);
  }

  v11 = [QLCacheThumbnailData alloc];
  [v5 maximumPixelSize];
  v13 = v12;
  v14 = [v4 badgeType];

  LODWORD(v15) = v13;
  v16 = [(QLCacheThumbnailData *)v11 initWithCacheId:0 thumbnailRequest:v5 size:v14 badgeType:v15];
  [(QLMemoryCache *)self->_memoryCache addThumbnailData:v16];

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)addThumbnailIntoCache:(id)a3 bitmapFormat:(id)a4 bitmapData:(id)a5 metadata:(id)a6 flavor:(int)a7 contentRect:(CGRect)a8 badgeType:(unint64_t)a9 externalGeneratorDataHash:(unint64_t)a10
{
  v46 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = _log_3();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = [v16 fileIdentifier];
    [v16 size];
    v23 = v22;
    [v16 size];
    *buf = 138413314;
    v37 = v21;
    v38 = 2048;
    v39 = v23;
    v40 = 2048;
    v41 = v24;
    v42 = 2048;
    v43 = [v17 width];
    v44 = 2048;
    v45 = [v17 height];
    _os_log_impl(&dword_2615D3000, v20, OS_LOG_TYPE_INFO, "adding thumbnail for %@ @ {%.1f, %.1f} (actual size %zd %zd)", buf, 0x34u);
  }

  v25 = [(QLDiskCache *)self->_diskCache reserveBufferForData:v18];
  if (!v25)
  {
    if (![v18 length])
    {
      v25 = 0;
      if (v19)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    [(QLDiskCache *)self->_diskCache freeDiskSpaceForNewThumbnails];
    v25 = [(QLDiskCache *)self->_diskCache reserveBufferForData:v18];
  }

  if (v19)
  {
LABEL_7:
    v26 = [(QLDiskCache *)self->_diskCache reserveBufferForData:v19];
    v27 = v26;
    if (v25 && v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_11:
  v27 = 0;
  if (v25)
  {
LABEL_9:
    v28 = [QLCacheThumbnailData alloc];
    [v16 maximumPixelSize];
    LODWORD(v35) = a7;
    v29 = [QLCacheThumbnailData initWithUnsavedDataForThumbnailRequest:v28 size:"initWithUnsavedDataForThumbnailRequest:size:bitmapFormat:bitmapData:reservationInfo:metadata:reservationInfo:flavor:contentRect:badgeType:" bitmapFormat:v16 bitmapData:v17 reservationInfo:v18 metadata:v25 reservationInfo:v19 flavor:v27 contentRect:v35 badgeType:a9];
    v30 = [(QLMemoryCache *)self->_memoryCache addThumbnailData:v29];

    goto LABEL_18;
  }

LABEL_12:
  v31 = _log_3();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v16 fileIdentifier];
    *buf = 138412290;
    v37 = v32;
    _os_log_impl(&dword_2615D3000, v31, OS_LOG_TYPE_INFO, "addThumbnailIntoCache: failed, discarding buffers for %@", buf, 0xCu);
  }

  if (v25)
  {
    [(QLDiskCache *)self->_diskCache discardReservedBuffer:v25];
  }

  if (!v27)
  {
    v30 = 0;
    goto LABEL_19;
  }

  [(QLDiskCache *)self->_diskCache discardReservedBuffer:v27];
  v30 = 0;
LABEL_18:

LABEL_19:
  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)_updateLowDisk
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/"];
  v4 = [QLDiskStore diskStoreForURL:v3];

  -[_QLCacheThread _setLowDiskSpace:](self, "_setLowDiskSpace:", [v4 availableDiskSpace] < 0xC800001);
}

- (void)_registerMachPortForLowDiskSpaceNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_serverThread);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62___QLCacheThread__registerMachPortForLowDiskSpaceNotification__block_invoke;
  v4[3] = &unk_279ADD0F8;
  v4[4] = self;
  [WeakRetained perform:v4];
}

- (void)_unregisterMachPortForLowDiskSpaceNotification
{
  WeakRetained = objc_loadWeakRetained(&self->_serverThread);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64___QLCacheThread__unregisterMachPortForLowDiskSpaceNotification__block_invoke;
  v4[3] = &unk_279ADD0F8;
  v4[4] = self;
  [WeakRetained perform:v4];
}

- (void)reset
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread reset];
  }

  [(NSLock *)self->_modeLock lock];
  if (self->_currentMode > 3)
  {
    [(_QLCacheThread *)self _setMode:5];
    [(_QLCacheThread *)self _setMode:4];
  }

  else
  {
    [(QLCacheCleanUpDatabaseThread *)self->_cleanUpDatabaseThread cleanUpForReset];
    [(_QLCacheThread *)self _setMode:4];
    if ([(QLDiskCache *)self->_diskCache isOpened])
    {
      v4 = _log_3();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [_QLCacheThread reset];
      }

      [(QLDiskCache *)self->_diskCache forceResetAtNextLaunch];
      [(NSLock *)self->_modeLock unlock];
      v5 = _log_3();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [_QLCacheThread reset];
      }

      return;
    }

    [(_QLCacheThread *)self _setMode:5];
    [(_QLCacheThread *)self _setMode:4];
    if (!self->_lowDiskSpace)
    {
      [(_QLCacheThread *)self _setMode:3];
      WeakRetained = objc_loadWeakRetained(&self->_serverThread);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __23___QLCacheThread_reset__block_invoke;
      v8[3] = &unk_279ADD0F8;
      v8[4] = self;
      [WeakRetained perform:v8 afterDelay:500000000];
    }
  }

  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread reset];
  }

  [(NSLock *)self->_modeLock unlock];
}

- (void)openCache
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread openCache];
  }

  [(NSLock *)self->_modeLock lock];
  if (self->_currentMode >= 4)
  {
    [(_QLCacheThread *)self _setMode:3];
    WeakRetained = objc_loadWeakRetained(&self->_serverThread);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27___QLCacheThread_openCache__block_invoke;
    v6[3] = &unk_279ADD0F8;
    v6[4] = self;
    [WeakRetained perform:v6 afterDelay:500000000];
  }

  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread openCache];
  }

  [(NSLock *)self->_modeLock unlock];
}

- (void)closeCache
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread closeCache];
  }

  [(NSLock *)self->_modeLock lock];
  if (self->_currentMode <= 3)
  {
    [(_QLCacheThread *)self _setMode:4];
  }

  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread closeCache];
  }

  [(NSLock *)self->_modeLock unlock];
}

- (void)forceCommitAndClose
{
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread forceCommitAndClose];
  }

  writeCoalesceQueue = self->_writeCoalesceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37___QLCacheThread_forceCommitAndClose__block_invoke;
  block[3] = &unk_279ADD0F8;
  block[4] = self;
  dispatch_sync(writeCoalesceQueue, block);
  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread forceCommitAndClose];
  }

  [(_QLCacheThread *)self forceCommit];
  [(_QLCacheThread *)self closeCache];
}

- (void)forceCommit
{
  [(NSLock *)self->_modeLock lock];
  v3 = _log_3();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread forceCommit];
  }

  [(QLCacheCleanUpDatabaseThread *)self->_cleanUpDatabaseThread startCleanUp];
  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread forceCommit];
  }

  [(NSLock *)self->_modeLock unlock];
  [(_QLCacheThread *)self _waitForEndOfDatabaseCleanup];
}

- (BOOL)isIdle
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = (self->_currentMode < 5) & (0x1Au >> self->_currentMode);
  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = stringForCacheMode(self->_currentMode);
    v8 = [(NSOperationQueue *)self->_diskCacheQueryOperationQueue operations];
    v9 = [v8 count];
    v10 = [(NSOperationQueue *)self->_memoryCacheQueryOperationQueue operations];
    v11 = [v10 count];
    v12 = [(QLMemoryCache *)self->_memoryCache thumbnailToSaveCount];
    v13 = [(_QLCacheThread *)self hitToSaveCount];
    v14 = @"is not idle";
    v15 = 138413570;
    v16 = v7;
    if (v3)
    {
      v14 = @"is idle";
    }

    v17 = 2048;
    v18 = v9;
    v19 = 2048;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_debug_impl(&dword_2615D3000, v4, OS_LOG_TYPE_DEBUG, "current mode %@, disk cache queries: %lu, memory cache queries: %lu, thumbnail left to write: %lu, hit count left to save: %lu, result %@", &v15, 0x3Eu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)prepareToExit
{
  v2 = _log_3();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread prepareToExit];
  }
}

- (id)contentDescriptionForURL:(__CFURL *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v17 = 0;
  v7 = [objc_alloc(MEMORY[0x277CDAA80]) initWithFileURL:a3 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = [(QLDiskCache *)self->_diskCache enumeratorForAllThumbnailsWithFileIdentifier:v7];
    v10 = [v9 nextThumbnailData];
    if (v10)
    {
      v11 = v10;
      while (![v11 iconMode])
      {
        v12 = v5;
        if ([v5 length])
        {
          goto LABEL_8;
        }

LABEL_9:
        [v11 size];
        [v12 appendFormat:@"%.1f", v13];
        v14 = [v9 nextThumbnailData];

        v11 = v14;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      v12 = v6;
      if (![v6 length])
      {
        goto LABEL_9;
      }

LABEL_8:
      [v12 appendString:{@", "}];
      goto LABEL_9;
    }

LABEL_10:
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"thumbnail sizes: %@ - icon sizes: %@", v5, v6];
  }

  else
  {
    v9 = _log_3();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_QLCacheThread contentDescriptionForURL:];
    }

    v15 = 0;
  }

  return v15;
}

- (NSString)modeDescription
{
  currentMode = self->_currentMode;
  v3 = @"unknown";
  if (currentMode > 2)
  {
    switch(currentMode)
    {
      case 3:
        return @"pause";
      case 4:
        if (self->_lowDiskSpace)
        {
          return @"closed (low disk space)";
        }

        else
        {
          return @"closed";
        }

      case 5:
        return @"reseting";
      default:
        return @"unknown";
    }
  }

  else
  {
    if (currentMode == 2)
    {
      v3 = @"clean up";
    }

    if (currentMode == 1)
    {
      v3 = @"low disk space";
    }

    if (currentMode)
    {
      return &v3->isa;
    }

    else
    {
      return @"working";
    }
  }
}

- (BOOL)_shouldQuitWorkingModeForMode:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    goto LABEL_7;
  }

  v5 = [(NSOperationQueue *)self->_diskCacheQueryOperationQueue operations];
  if ([v5 count])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(NSOperationQueue *)self->_memoryCacheQueryOperationQueue operations];
    v6 = [v7 count] == 0;
  }

  v8 = _log_3();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = stringForCacheMode(self->_currentMode);
    v14 = stringForCacheMode(a3);
    if (v6)
    {
      v15 = @"accepted";
    }

    else
    {
      v15 = @"denied";
    }

    v16 = [(NSOperationQueue *)self->_diskCacheQueryOperationQueue operations];
    v17 = [v16 count];
    v18 = [(NSOperationQueue *)self->_memoryCacheQueryOperationQueue operations];
    *buf = 138413314;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v22 = v15;
    v23 = 2048;
    v24 = v17;
    v25 = 2048;
    v26 = [v18 count];
    _os_log_debug_impl(&dword_2615D3000, v8, OS_LOG_TYPE_DEBUG, "changing from %@ to %@: %@ (_diskCacheQueryOperationQueue %lu, _memoryCacheQueryOperationQueue %lu)", buf, 0x34u);
  }

  if (!v6)
  {
    result = 0;
  }

  else
  {
LABEL_7:
    v9 = dispatch_queue_create("quicklookd.operationssafeguard", 0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v22) = 0;
    v10 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48___QLCacheThread__shouldQuitWorkingModeForMode___block_invoke;
    block[3] = &unk_279ADD3E0;
    block[4] = buf;
    dispatch_after(v10, v9, block);
    [(NSOperationQueue *)self->_diskCacheQueryOperationQueue cancelAllOperations];
    [(NSOperationQueue *)self->_memoryCacheQueryOperationQueue cancelAllOperations];
    [(NSOperationQueue *)self->_diskCacheQueryOperationQueue waitUntilAllOperationsAreFinished];
    [(NSOperationQueue *)self->_memoryCacheQueryOperationQueue waitUntilAllOperationsAreFinished];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48___QLCacheThread__shouldQuitWorkingModeForMode___block_invoke_2;
    v19[3] = &unk_279ADD3E0;
    v19[4] = buf;
    dispatch_async(v9, v19);
    _Block_object_dispose(buf, 8);

    result = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_shouldQuitLowSpaceModeForMode:(unint64_t)a3
{
  v3 = a3 != 4 && self->_lowDiskSpace;
  if (v3)
  {
    v4 = _log_3();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [_QLCacheThread _shouldQuitLowSpaceModeForMode:];
    }
  }

  return !v3;
}

- (BOOL)_shouldQuitClosedModeForMode:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    if (a3 != 5)
    {
      v9 = _log_3();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(_QLCacheThread *)a3 _shouldQuitClosedModeForMode:v9];
      }

      return 0;
    }

    return 1;
  }

  [(_QLCacheThread *)self _registerMachPortForLowDiskSpaceNotification];
  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread _shouldQuitClosedModeForMode:?];
  }

  if ([(QLDiskCache *)self->_diskCache open])
  {
    return 1;
  }

  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_QLCacheThread _shouldQuitClosedModeForMode:];
  }

  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_QLCacheThread _shouldQuitClosedModeForMode:];
  }

  [(_QLCacheThread *)self _unregisterMachPortForLowDiskSpaceNotification];
  return 0;
}

- (BOOL)_shouldQuitCleanUpDatabaseModeForMode:(unint64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return 1;
      }

      goto LABEL_8;
    }

LABEL_7:
    [(QLCacheCleanUpDatabaseThread *)self->_cleanUpDatabaseThread pause];
    return 1;
  }

  if (a3 == 4)
  {
LABEL_8:
    [(QLCacheCleanUpDatabaseThread *)self->_cleanUpDatabaseThread stop];
    return 1;
  }

  if (a3 == 3)
  {
    goto LABEL_7;
  }

  return 1;
}

- (void)_willStartClosedModeFromMode:(unint64_t)a3
{
  self->_missedCount = 0;
  self->_hitCount = 0;
  if (a3 != 5)
  {
    block[7] = v3;
    block[8] = v4;
    v6 = _log_3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [_QLCacheThread _willStartClosedModeFromMode:];
    }

    writeCoalesceQueue = self->_writeCoalesceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47___QLCacheThread__willStartClosedModeFromMode___block_invoke;
    block[3] = &unk_279ADD0F8;
    block[4] = self;
    dispatch_async(writeCoalesceQueue, block);
    [(QLDiskCache *)self->_diskCache close];
    if ([(QLDiskCache *)self->_diskCache isOpened])
    {
      v8 = _log_3();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_QLCacheThread _willStartClosedModeFromMode:];
      }
    }

    else
    {
      [(_QLCacheThread *)self _unregisterMachPortForLowDiskSpaceNotification];
    }
  }
}

- (void)_willStartResetingModeFromMode:(unint64_t)a3
{
  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_2615D3000, v4, OS_LOG_TYPE_INFO, "reset database", v5, 2u);
  }

  [(QLMemoryCache *)self->_memoryCache reset];
  [(QLDiskCache *)self->_diskCache reset];
}

- (void)_willStartCleanUpDatabaseModeFromMode:(unint64_t)a3
{
  v4 = _log_3();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread _willStartCleanUpDatabaseModeFromMode:];
  }

  [(QLCacheCleanUpDatabaseThread *)self->_cleanUpDatabaseThread startCleanUp];
}

- (void)_waitForEndOfDatabaseCleanup
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_2615D3000, log, OS_LOG_TYPE_DEBUG, "Loop waiting for clean-up end", buf, 2u);
}

- (void)_setMode:(unint64_t)a3
{
  p_currentMode = &self->_currentMode;
  if (self->_currentMode == a3)
  {
    return;
  }

  v6 = _log_3();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_QLCacheThread *)p_currentMode _setMode:a3];
  }

  v7 = *p_currentMode;
  if (*p_currentMode > 2)
  {
    switch(v7)
    {
      case 3uLL:
        if (![(_QLCacheThread *)self _shouldQuitPauseModeForMode:a3])
        {
          goto LABEL_16;
        }

        break;
      case 4uLL:
        if (![(_QLCacheThread *)self _shouldQuitClosedModeForMode:a3])
        {
          goto LABEL_16;
        }

        break;
      case 5uLL:
        if ([(_QLCacheThread *)self _shouldQuitResetingModeForMode:a3])
        {
          break;
        }

        goto LABEL_16;
      default:
        return;
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return;
      }

      if ([(_QLCacheThread *)self _shouldQuitCleanUpDatabaseModeForMode:a3])
      {
        goto LABEL_24;
      }

LABEL_16:
      v8 = _log_3();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [_QLCacheThread _setMode:];
      }

      goto LABEL_19;
    }

    if (![(_QLCacheThread *)self _shouldQuitLowSpaceModeForMode:a3])
    {
      goto LABEL_16;
    }
  }

  else if (![(_QLCacheThread *)self _shouldQuitWorkingModeForMode:a3])
  {
    goto LABEL_16;
  }

LABEL_24:
  v10 = *p_currentMode;
  *p_currentMode = a3;
  v11 = _log_3();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread _setMode:?];
  }

  v12 = *p_currentMode;
  if (*p_currentMode > 2)
  {
    switch(v12)
    {
      case 3uLL:
        [(_QLCacheThread *)self _willStartPauseModeFromMode:v10];
        break;
      case 4uLL:
        [(_QLCacheThread *)self _willStartClosedModeFromMode:v10];
        break;
      case 5uLL:
        [(_QLCacheThread *)self _willStartResetingModeFromMode:v10];
        if ([(QLDiskCache *)self->_diskCache isOpened])
        {
          *p_currentMode = v10;
        }

        break;
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      [(_QLCacheThread *)self _willStartLowSpaceModeFromMode:v10];
    }

    else if (v12 == 2)
    {
      [(_QLCacheThread *)self _willStartCleanUpDatabaseModeFromMode:v10];
    }
  }

  else
  {
    [(_QLCacheThread *)self _willStartWorkingModeFromMode:v10];
  }

LABEL_19:
  v9 = _log_3();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread _setMode:?];
  }
}

- (id)cacheInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  diskCache = self->_diskCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27___QLCacheThread_cacheInfo__block_invoke;
  v5[3] = &unk_279ADD578;
  v5[4] = self;
  v5[5] = &v6;
  [(QLDiskCache *)diskCache doReading:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)allThumbnailsInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  diskCache = self->_diskCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35___QLCacheThread_allThumbnailsInfo__block_invoke;
  v5[3] = &unk_279ADD578;
  v5[4] = self;
  v5[5] = &v6;
  [(QLDiskCache *)diskCache doReading:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_allThumbnailsEnumerateWithEnumerator:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v36 = a3;
  v37 = objc_opt_new();
  v3 = [v36 nextFileInfo];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = [v4 fileIdentifier];
      v6 = [v5 fileIdentifier];

      v7 = [v4 fileIdentifier];
      v8 = [v7 version];

      if (v8)
      {
        v9 = [v4 fileIdentifier];
        v10 = [v9 version];
        v11 = [v10 description];
      }

      else
      {
        v11 = @"cannot read the version";
      }

      v12 = objc_alloc(MEMORY[0x277CBEB38]);
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "cacheId")}];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "thumbnailCount")}];
      v15 = MEMORY[0x277CCABB0];
      [v4 minSize];
      v16 = [v15 numberWithFloat:?];
      v17 = MEMORY[0x277CCABB0];
      [v4 maxSize];
      v18 = [v17 numberWithFloat:?];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "totalDataLength")}];
      v20 = [v12 initWithObjectsAndKeys:{v13, @"cacheid", v11, @"versiondescription", v14, @"thumbnailcount", v16, @"minsize", v18, @"maxsize", v19, @"datalength", 0}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = [v6 itemID];
        v32 = [v31 providerDomainID];
        [v20 setObject:v32 forKeyedSubscript:@"fpid"];

        v26 = [v6 itemID];
        v27 = [v26 identifier];
        v28 = v20;
        v29 = v27;
        v30 = @"itemid";
        goto LABEL_10;
      }

LABEL_11:
      [v37 addObject:v20];

      v33 = [v36 nextFileInfo];

      v4 = v33;
      if (!v33)
      {
        goto LABEL_12;
      }
    }

    v21 = [v6 fsid];
    v22 = HIDWORD(v21);
    v23 = [v6 fileId];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:v21];
    v38[0] = v24;
    v25 = [MEMORY[0x277CCABB0] numberWithInt:v22];
    v38[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

    [v20 setObject:v26 forKeyedSubscript:@"fsid"];
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
    v28 = v20;
    v29 = v27;
    v30 = @"ino";
LABEL_10:
    [v28 setObject:v29 forKeyedSubscript:v30];

    goto LABEL_11;
  }

LABEL_12:

  v34 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)allThumbnailsForIno:(unint64_t)a3 fsid:(fsid)a4
{
  v5 = [objc_alloc(MEMORY[0x277CDAA80]) initWithFileId:a3 fsid:a4];
  if (v5)
  {
    v6 = [(_QLCacheThread *)self allThumbnailsForFileIdentifier:v5];
  }

  else
  {
    v7 = _log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_QLCacheThread allThumbnailsForIno:fsid:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)allThumbnailsForFPItemID:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CDAA90]) initWithItemID:v4];
  if (v5)
  {
    v6 = [(_QLCacheThread *)self allThumbnailsForFileIdentifier:v5];
  }

  else
  {
    v7 = _log_3();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_QLCacheThread allThumbnailsForFPItemID:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)allThumbnailsForFileIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  diskCache = self->_diskCache;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49___QLCacheThread_allThumbnailsForFileIdentifier___block_invoke;
  v9[3] = &unk_279ADDE08;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [(QLDiskCache *)diskCache doReading:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)locked_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(_QLCacheThread *)self diskCache];
  v6 = [v5 removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:v4];

  [(QLMemoryCache *)self->_memoryCache removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:v4];
  return v6;
}

- (BOOL)locked_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(_QLCacheThread *)self diskCache];
  v6 = [v5 removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:v4];

  [(QLMemoryCache *)self->_memoryCache removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:v4];
  return v6;
}

- (BOOL)setLastHitDateOfAllCachedThumbnailsToDate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  diskCache = self->_diskCache;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60___QLCacheThread_setLastHitDateOfAllCachedThumbnailsToDate___block_invoke;
  v8[3] = &unk_279ADDE80;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(QLDiskCache *)diskCache doWriting:v8];
  LOBYTE(diskCache) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return diskCache;
}

- (void)noteRemoteThumbnailMissingForItems:(id)a3
{
  v4 = a3;
  diskCache = self->_diskCache;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___QLCacheThread_noteRemoteThumbnailMissingForItems___block_invoke;
  v7[3] = &unk_279ADDED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(QLDiskCache *)diskCache doWriting:v7];
}

- (void)noteRemoteThumbnailPresentForItems:(id)a3
{
  v4 = a3;
  diskCache = self->_diskCache;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53___QLCacheThread_noteRemoteThumbnailPresentForItems___block_invoke;
  v7[3] = &unk_279ADDED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(QLDiskCache *)diskCache doWriting:v7];
}

- (id)itemsAfterFilteringOutItemsWithMissingThumbnails:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  diskCache = self->_diskCache;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67___QLCacheThread_itemsAfterFilteringOutItemsWithMissingThumbnails___block_invoke;
  v9[3] = &unk_279ADDE08;
  v11 = &v12;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  [(QLDiskCache *)diskCache doReading:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)itemIsMissingRemoteThumbnail:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  diskCache = self->_diskCache;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___QLCacheThread_itemIsMissingRemoteThumbnail___block_invoke;
  v8[3] = &unk_279ADDE08;
  v10 = &v11;
  v8[4] = self;
  v6 = v4;
  v9 = v6;
  [(QLDiskCache *)diskCache doReading:v8];
  LOBYTE(diskCache) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return diskCache;
}

- (void)_setLowDiskSpace:(BOOL)a3
{
  if (self->_lowDiskSpace != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    [(_QLCacheThread *)self willChangeValueForKey:@"lowDiskSpace"];
    [(NSLock *)self->_modeLock lock];
    self->_lowDiskSpace = v5;
    v7 = _log_3();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_2615D3000, v7, OS_LOG_TYPE_INFO, "QLCacheThread is now running on low disk space mode.", buf, 2u);
      }

      v9 = 1;
    }

    else
    {
      if (v8)
      {
        *v10 = 0;
        _os_log_impl(&dword_2615D3000, v7, OS_LOG_TYPE_INFO, "QLCacheThread is not longer running on low disk space.", v10, 2u);
      }

      if (self->_currentMode > 3)
      {
        v9 = 4;
      }

      else
      {
        [(_QLCacheThread *)self _setMode:3];
        if (!self->_serverThreadIsIdle)
        {
LABEL_13:
          [(NSLock *)self->_modeLock unlock];
          [(_QLCacheThread *)self didChangeValueForKey:@"lowDiskSpace"];
          return;
        }

        v9 = 2;
      }
    }

    [(_QLCacheThread *)self _setMode:v9];
    goto LABEL_13;
  }
}

- (void)_dispatchThumbnailRequestInServerThread:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serverThread);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___QLCacheThread_Private___dispatchThumbnailRequestInServerThread___block_invoke;
  v7[3] = &unk_279ADD200;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [WeakRetained perform:v7];
}

- (void)_addThumbnailRequestIntoDiskCacheQueryQueue:(id)a3
{
  v4 = a3;
  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_QLCacheThread(Private) _addThumbnailRequestIntoDiskCacheQueryQueue:];
  }

  v6 = [v4 request];
  WeakRetained = objc_loadWeakRetained(&self->_serverThread);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71___QLCacheThread_Private___addThumbnailRequestIntoDiskCacheQueryQueue___block_invoke;
  v10[3] = &unk_279ADD2A0;
  v10[4] = self;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  [WeakRetained perform:v10];
}

- (void)_sendThumbnailData:(id)a3 forThumbnailRequest:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 request];
  v9 = [v6 hasData];
  v10 = _log_3();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      [v8 size];
      v13 = v12;
      [v8 size];
      v15 = v14;
      [v8 maximumPixelSize];
      v17 = v16;
      [v6 size];
      v18 = &stru_2873E31F0;
      if (v17 == v19)
      {
        v20 = &stru_2873E31F0;
      }

      else
      {
        v20 = @"Low quality returned";
      }

      if ([v6 iconMode])
      {
        v21 = @"Icon mode";
      }

      else
      {
        v21 = &stru_2873E31F0;
      }

      v22 = [v6 bitmapData];
      v23 = [v6 badgeType];
      if (v23)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v6, "badgeType")];
      }

      *buf = 138413826;
      v36 = v8;
      v37 = 2048;
      v38 = v13;
      v39 = 2048;
      v40 = v15;
      v41 = 2112;
      v42 = v20;
      v43 = 2112;
      v44 = v21;
      v45 = 2048;
      v46 = v22;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_2615D3000, v10, OS_LOG_TYPE_INFO, "cache : hit thumbnail for %@ @ %.1fx%.1f %@ %@ %p %@", buf, 0x48u);
      if (v23)
      {
      }
    }

    v24 = _log_3();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&dword_2615D3000, v24, OS_LOG_TYPE_INFO, "completing thumbnail request %@ after cache hit", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_serverThread);
    [WeakRetained completeThumbnailRequest:v7 thumbnailData:v6 updatedMetadata:0];
  }

  else
  {
    if (v11)
    {
      [v8 size];
      v27 = v26;
      [v8 size];
      *buf = 138412802;
      v36 = v8;
      v37 = 2048;
      v38 = v27;
      v39 = 2048;
      v40 = v28;
      _os_log_impl(&dword_2615D3000, v10, OS_LOG_TYPE_INFO, "cache : hit with no thumbnail for %@ @ %.1fx%.1f", buf, 0x20u);
    }

    v29 = MEMORY[0x277CDAAE0];
    v30 = [v7 request];
    WeakRetained = [v29 errorWithCode:2 request:v30 additionalUserInfo:0];

    v31 = objc_loadWeakRetained(&self->_serverThread);
    [v31 failedToCompleteThumbnailRequest:v7 error:WeakRetained];
  }

  [(QLCacheCleanUpDatabaseThread *)self->_cleanUpDatabaseThread addHitWithThumbnailData:v6];
  v32 = objc_loadWeakRetained(&self->_serverThread);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __66___QLCacheThread_Private___sendThumbnailData_forThumbnailRequest___block_invoke;
  v34[3] = &unk_279ADD0F8;
  v34[4] = self;
  [v32 perform:v34];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_thumbnailHasBeenCancelled:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _log_3();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 request];
    [v6 size];
    v8 = v7;
    v9 = [v4 request];
    [v9 size];
    *buf = 138412802;
    v19 = v4;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&dword_2615D3000, v5, OS_LOG_TYPE_INFO, "cache : thumbnail for %@ has been cancelled @ %.1fx%.1f", buf, 0x20u);
  }

  v11 = MEMORY[0x277CDAAE0];
  v12 = [v4 request];
  v13 = [v11 errorWithCode:5 request:v12 additionalUserInfo:0];

  WeakRetained = objc_loadWeakRetained(&self->_serverThread);
  [WeakRetained failedToCompleteThumbnailRequest:v4 error:v13];

  v15 = objc_loadWeakRetained(&self->_serverThread);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54___QLCacheThread_Private___thumbnailHasBeenCancelled___block_invoke;
  v17[3] = &unk_279ADD0F8;
  v17[4] = self;
  [v15 perform:v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)contentDescriptionForURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_2615D3000, v1, OS_LOG_TYPE_ERROR, "Could not identify file at URL %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_shouldQuitClosedModeForMode:(unint64_t)a1 .cold.1(unint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = stringForCacheMode(a1);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_2615D3000, a2, OS_LOG_TYPE_ERROR, "Can not switch from closed mode to %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_shouldQuitClosedModeForMode:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(a1 + 48) thumbnailToSaveCount];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setMode:(unint64_t *)a1 .cold.1(unint64_t *a1, unint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = stringForCacheMode(*a1);
  v10 = stringForCacheMode(a2);
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setMode:(unint64_t *)a1 .cold.3(unint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = stringForCacheMode(*a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setMode:(unint64_t *)a1 .cold.4(unint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = stringForCacheMode(*a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allThumbnailsForIno:fsid:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 1024;
  v5 = v0;
  v6 = 2112;
  v7 = 0;
  _os_log_error_impl(&dword_2615D3000, v1, OS_LOG_TYPE_ERROR, "Could not identify file at ino %llu fsid %d: %@", v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)allThumbnailsForFPItemID:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&dword_2615D3000, v0, OS_LOG_TYPE_ERROR, "Could not identify file with file provider item %@ : %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end