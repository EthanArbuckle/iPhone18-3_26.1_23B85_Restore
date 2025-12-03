@interface BRCDiskSpaceReclaimer
+ (double)accessTimeDeltaForUrgency:(int)urgency;
+ (int)simpleUrgencyForCacheDeleteUrgency:(int)urgency;
- (BOOL)performOptimizeStorageWithTimeDelta:(double)delta onDiskAccessTimeDelta:(double)timeDelta error:(id *)error;
- (BRCDiskSpaceReclaimer)initWithAccountSession:(id)session;
- (int)urgencyForCacheDeleteUrgency:(int)urgency;
- (int64_t)_computeCiconiaSizeInBytes:(BOOL)bytes;
- (int64_t)_dbAutovacuumableSpaceInBytes:(id)bytes;
- (int64_t)_dbSizeInBytes:(id)bytes;
- (int64_t)_doIncrementalVacuum:(id)vacuum amount:(int64_t)amount;
- (int64_t)_fullVacuumIfPossible:(id)possible;
- (int64_t)_garbageCollectGroupContainerStage;
- (int64_t)_vacuumDB:(id)b amount:(int64_t)amount withUrgency:(int)urgency;
- (int64_t)cachedNonPurgeableSpace;
- (int64_t)periodicReclaimSpace;
- (int64_t)purgeSpace:(int64_t)space withUrgency:(int)urgency;
- (unint64_t)nonPurgeableSizeWithPurgeableSize:(unint64_t)size;
- (unint64_t)totalSize;
- (void)_asyncAutovacuumIfNeeds:(id)needs;
- (void)_cleanFPCreationItemIdentifier:(id)identifier;
- (void)close;
- (void)computePurgeableSpaceForAllUrgenciesWithReply:(id)reply;
@end

@implementation BRCDiskSpaceReclaimer

- (BRCDiskSpaceReclaimer)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = BRCDiskSpaceReclaimer;
  v6 = [(BRCDiskSpaceReclaimer *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.bird.cache-delete", v9);

    queue = v7->_queue;
    v7->_queue = v10;

    objc_initWeak(&location, sessionCopy);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __48__BRCDiskSpaceReclaimer_initWithAccountSession___block_invoke;
    v19 = &unk_2784FF400;
    objc_copyWeak(&v20, &location);
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, &v16);
    v13 = [BRCSystemResourcesManager manager:v16];
    LODWORD(v10) = [v13 connectedToPowerSource];

    if (v10)
    {
      v14 = dispatch_time(0, 5000000000);
      dispatch_after(v14, v7->_queue, v12);
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __48__BRCDiskSpaceReclaimer_initWithAccountSession___block_invoke(uint64_t a1)
{
  v2 = +[BRCSystemResourcesManager manager];
  v3 = [v2 connectedToPowerSource];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained clientDB];

    if (v5)
    {
      v6 = [WeakRetained clientDB];
      v7 = [v6 serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__BRCDiskSpaceReclaimer_initWithAccountSession___block_invoke_2;
      block[3] = &unk_2784FF450;
      v14 = WeakRetained;
      dispatch_sync(v7, block);
    }

    v8 = [WeakRetained serverDB];

    if (v8)
    {
      v9 = [WeakRetained serverDB];
      v10 = [v9 serialQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__BRCDiskSpaceReclaimer_initWithAccountSession___block_invoke_3;
      v11[3] = &unk_2784FF450;
      v12 = WeakRetained;
      dispatch_sync(v10, v11);
    }
  }
}

void __48__BRCDiskSpaceReclaimer_initWithAccountSession___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) clientDB];
  [v1 autovacuumIfNeeded];
}

void __48__BRCDiskSpaceReclaimer_initWithAccountSession___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) serverDB];
  [v1 autovacuumIfNeeded];
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BRCDiskSpaceReclaimer_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)computePurgeableSpaceForAllUrgenciesWithReply:(id)reply
{
  replyCopy = reply;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke;
  v7[3] = &unk_278500048;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(queue, v7);
}

void __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 16) & 1) == 0 && *(v2 + 17) != 1)
  {
    v5 = [*(v2 + 8) clientState];
    v6 = [v5 dictionary];

    v7 = [v6 objectForKeyedSubscript:@"purgeableSpaceDate"];
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSinceDate:v7];
    v10 = v9;

    v11 = [BRCUserDefaults defaultsForMangledID:0];
    [v11 cacheDeleteRecomputeInterval];
    v13 = v12;

    if (v7 && v10 < v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"purgeableSpace"];
      v15 = [v6 objectForKeyedSubscript:@"nonPurgeableSpace"];
      v16 = v15;
      if (v14 && v15)
      {
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          *&buf[22] = 2112;
          v63 = v17;
          _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] returning purgeable info from cache\npurgeableSpaceByUrgency:%@\nnonPurgeableSpace:%@%@", buf, 0x20u);
        }

        (*(*(a1 + 40) + 16))();
LABEL_29:

        v56 = *MEMORY[0x277D85DE8];
        return;
      }

      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] could not retrieve cached purgeable space%@", buf, 0xCu);
      }
    }

    memset(v61, 0, sizeof(v61));
    __brc_create_section(0, "[BRCDiskSpaceReclaimer computePurgeableSpaceForAllUrgenciesWithReply:]_block_invoke", 125, 0, v61);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_cold_1(v61, v21, v22);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v63 = 0;
    v23 = [*(*(a1 + 32) + 8) clientDB];
    v24 = [v23 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_15;
    block[3] = &unk_278502000;
    block[4] = *(a1 + 32);
    block[5] = buf;
    dispatch_sync(v24, block);

    v25 = [*(*(a1 + 32) + 8) serverDB];
    v26 = [v25 serialQueue];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_2;
    v59[3] = &unk_278502000;
    v59[4] = *(a1 + 32);
    v59[5] = buf;
    dispatch_sync(v26, v59);

    v27 = [BRCUserDefaults defaultsForMangledID:0];
    v28 = [v27 dbReclaimableSpaceThreshold];

    *(*&buf[8] + 24) = (*(*&buf[8] + 24) - v28) & ~((*(*&buf[8] + 24) - v28) >> 63);
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [BRCDumpContext stringFromByteCount:*(*&buf[8] + 24) context:0];
      objc_claimAutoreleasedReturnValue();
      __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_cold_2();
    }

    v31 = [*(*(a1 + 32) + 8) stageRegistry];
    v32 = [v31 purgableSpace];

    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [BRCDumpContext stringFromByteCount:v32 context:0];
      objc_claimAutoreleasedReturnValue();
      __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_cold_3();
    }

    v35 = [*(a1 + 32) _computeCiconiaSizeInBytes:0];
    v36 = [*(*(a1 + 32) + 8) stageRegistry];
    v37 = [v36 liveItemsSpace];

    v38 = brc_bread_crumbs();
    v39 = brc_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [BRCDumpContext stringFromByteCount:v37 context:0];
      objc_claimAutoreleasedReturnValue();
      __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_cold_4();
    }

    v40 = [*(*(a1 + 32) + 8) stageRegistry];
    v41 = [v40 uploadsSpace];

    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [BRCDumpContext stringFromByteCount:v41 context:0];
      objc_claimAutoreleasedReturnValue();
      __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_cold_5();
    }

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_18;
    v58[3] = &unk_278508290;
    v58[4] = *(a1 + 32);
    v44 = MEMORY[0x22AA4A310](v58);
    v45 = brc_bread_crumbs();
    v46 = brc_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_cold_6(v45, v46);
    }

    v47 = objc_opt_new();
    v48 = v35 + v32;
    v49 = [MEMORY[0x277CCABB0] numberWithLongLong:v48 + *(*&buf[8] + 24)];
    [v47 setObject:v49 forKeyedSubscript:&unk_2837B0B38];

    v50 = [MEMORY[0x277CCABB0] numberWithLongLong:v48 + *(*&buf[8] + 24)];
    [v47 setObject:v50 forKeyedSubscript:&unk_2837B0B50];

    v51 = [MEMORY[0x277CCABB0] numberWithLongLong:v48 + *(*&buf[8] + 24)];
    [v47 setObject:v51 forKeyedSubscript:&unk_2837B0B68];

    v52 = [*(a1 + 32) nonPurgeableSizeWithPurgeableSize:v48 + v37 + v41 + *(*&buf[8] + 24)];
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v52];
    (v44)[2](v44, v47, v53);

    v54 = *(a1 + 40);
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v52];
    (*(v54 + 16))(v54, v47, v55, 0);

    _Block_object_dispose(buf, 8);
    __brc_leave_section(v61);
    goto LABEL_29;
  }

  v3 = *(a1 + 40);
  v57 = [MEMORY[0x277CCA9B8] brc_errorOperationCancelled];
  (*(v3 + 16))(v3, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
}

void __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_15(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) clientDB];
  *(*(*(a1 + 40) + 8) + 24) += [v2 autovacuumableSpaceInBytes];
}

void __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) serverDB];
  *(*(*(a1 + 40) + 8) + 24) += [v2 autovacuumableSpaceInBytes];
}

void __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) clientDB];
  v8 = [v7 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_2_19;
  block[3] = &unk_2784FF4A0;
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_sync(v8, block);
}

void __71__BRCDiskSpaceReclaimer_computePurgeableSpaceForAllUrgenciesWithReply___block_invoke_2_19(void *a1)
{
  v4 = [*(a1[4] + 8) clientState];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v4 setObject:v2 forKeyedSubscript:@"purgeableSpaceDate"];

  [v4 setObject:a1[5] forKeyedSubscript:@"purgeableSpace"];
  [v4 setObject:a1[6] forKeyedSubscript:@"nonPurgeableSpace"];
  v3 = [*(a1[4] + 8) clientDB];
  [v3 forceBatchStart];
}

- (int64_t)_computeCiconiaSizeInBytes:(BOOL)bytes
{
  bytesCopy = bytes;
  v43 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  brc_ciconiaDumpDirForCurrentPersona = [MEMORY[0x277CBEBC0] brc_ciconiaDumpDirForCurrentPersona];
  v41 = 0;
  path = [brc_ciconiaDumpDirForCurrentPersona path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:&v41];
  v8 = v41;

  v9 = 0;
  if (v7 && (v8 & 1) != 0)
  {
    path2 = [brc_ciconiaDumpDirForCurrentPersona path];
    v11 = [defaultManager attributesOfItemAtPath:path2 error:0];
    fileCreationDate = [v11 fileCreationDate];

    [fileCreationDate timeIntervalSinceNow];
    v9 = 0;
    if (fabs(v13) > 86400.0)
    {
      v32 = bytesCopy;
      v33 = fileCreationDate;
      v14 = *MEMORY[0x277CBE838];
      v15 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE838]];
      v34 = defaultManager;
      v16 = [defaultManager enumeratorAtURL:brc_ciconiaDumpDirForCurrentPersona includingPropertiesForKeys:v15 options:0 errorHandler:0];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v9 = 0;
        v21 = *v38;
        do
        {
          v22 = 0;
          v23 = v20;
          do
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v37 + 1) + 8 * v22);
            v36 = 0;
            v25 = [v24 getResourceValue:&v36 forKey:v14 error:0];
            v20 = v36;

            if (v25)
            {
              v9 += [v20 unsignedLongLongValue];
            }

            ++v22;
            v23 = v20;
          }

          while (v19 != v22);
          v19 = [v17 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v19);
      }

      else
      {
        v20 = 0;
        v9 = 0;
      }

      if (v32)
      {
        v35 = 0;
        defaultManager = v34;
        v26 = [v34 removeItemAtURL:brc_ciconiaDumpDirForCurrentPersona error:&v35];
        v27 = v35;
        fileCreationDate = v33;
        if ((v26 & 1) == 0)
        {
          v28 = brc_bread_crumbs();
          v29 = brc_default_log();
          if (os_log_type_enabled(v29, 0x90u))
          {
            [BRCDiskSpaceReclaimer _computeCiconiaSizeInBytes:];
          }

          v9 = 0;
        }
      }

      else
      {
        fileCreationDate = v33;
        defaultManager = v34;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)_dbSizeInBytes:(id)bytes
{
  bytesCopy = bytes;
  v4 = bytesCopy;
  if (bytesCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    serialQueue = [bytesCopy serialQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__BRCDiskSpaceReclaimer__dbSizeInBytes___block_invoke;
    v8[3] = &unk_278502000;
    v10 = &v11;
    v9 = v4;
    dispatch_sync(serialQueue, v8);

    v6 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __40__BRCDiskSpaceReclaimer__dbSizeInBytes___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) sizeInBytes];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_dbAutovacuumableSpaceInBytes:(id)bytes
{
  bytesCopy = bytes;
  serialQueue = [bytesCopy serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [bytesCopy serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);
  }

  if (bytesCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    serialQueue3 = [bytesCopy serialQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__BRCDiskSpaceReclaimer__dbAutovacuumableSpaceInBytes___block_invoke;
    v9[3] = &unk_278502000;
    v11 = &v12;
    v10 = bytesCopy;
    dispatch_sync(serialQueue3, v9);

    v7 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __55__BRCDiskSpaceReclaimer__dbAutovacuumableSpaceInBytes___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) autovacuumableSpaceInBytes];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_fullVacuumIfPossible:(id)possible
{
  possibleCopy = possible;
  serialQueue = [possibleCopy serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [possibleCopy serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);
  }

  if (possibleCopy)
  {
    v7 = [(BRCDiskSpaceReclaimer *)self _doIncrementalVacuum:possibleCopy amount:[(BRCDiskSpaceReclaimer *)self _dbAutovacuumableSpaceInBytes:possibleCopy]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_doIncrementalVacuum:(id)vacuum amount:(int64_t)amount
{
  v39 = *MEMORY[0x277D85DE8];
  vacuumCopy = vacuum;
  serialQueue = [vacuumCopy serialQueue];

  if (serialQueue)
  {
    serialQueue2 = [vacuumCopy serialQueue];
    dispatch_assert_queue_not_V2(serialQueue2);
  }

  v23 = [BRCUserDefaults defaultsForMangledID:0];
  dbAutovacuumBatchSize = [v23 dbAutovacuumBatchSize];
  if (dbAutovacuumBatchSize)
  {
    amountCopy = dbAutovacuumBatchSize;
  }

  else
  {
    amountCopy = amount;
  }

  mach_absolute_time();
  v11 = [(BRCDiskSpaceReclaimer *)self _dbSizeInBytes:vacuumCopy];
  if (amount >= 1)
  {
    v12 = 0;
    do
    {
      serialQueue3 = [vacuumCopy serialQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__BRCDiskSpaceReclaimer__doIncrementalVacuum_amount___block_invoke;
      block[3] = &unk_278503680;
      v25 = vacuumCopy;
      amountCopy2 = amount;
      v27 = v12;
      v28 = amountCopy;
      dispatch_sync(serialQueue3, block);

      v12 += amountCopy;
    }

    while (v12 < amount);
  }

  v14 = v11 - [(BRCDiskSpaceReclaimer *)self _dbSizeInBytes:vacuumCopy];
  mach_absolute_time();
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    label = [vacuumCopy label];
    brc_monotonic_time_diff_to_interval();
    v19 = v18;
    v20 = [BRCDumpContext stringFromByteCount:v14 context:0];
    *buf = 138413314;
    v30 = label;
    v31 = 2048;
    v32 = v19;
    v33 = 2112;
    v34 = v20;
    v35 = 2048;
    v36 = v14 * 100.0 / v11;
    v37 = 2112;
    v38 = v15;
    _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] Incremental vacuuming %@ took %f seconds reclaimed %@ (size reduction %.2f percent)%@", buf, 0x34u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __53__BRCDiskSpaceReclaimer__doIncrementalVacuum_amount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  if (*(a1 + 40) - v2 >= *(a1 + 56))
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = *(a1 + 40) - v2;
  }

  return [*(a1 + 32) incrementalVacuum:v3];
}

- (int64_t)_vacuumDB:(id)b amount:(int64_t)amount withUrgency:(int)urgency
{
  bCopy = b;
  v9 = [(BRCDiskSpaceReclaimer *)self _dbAutovacuumableSpaceInBytes:bCopy];
  if (bCopy)
  {
    if (urgency < 3 || 2 * v9 >= amount)
    {
      v10 = [(BRCDiskSpaceReclaimer *)self _doIncrementalVacuum:bCopy amount:amount];
    }

    else
    {
      v10 = [(BRCDiskSpaceReclaimer *)self _fullVacuumIfPossible:bCopy];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_asyncAutovacuumIfNeeds:(id)needs
{
  needsCopy = needs;
  serialQueue = [needsCopy serialQueue];
  if (serialQueue)
  {
    session = self->_session;
    if (session)
    {
      if (![(BRCAccountSession *)session isCancelled])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__BRCDiskSpaceReclaimer__asyncAutovacuumIfNeeds___block_invoke;
        block[3] = &unk_2784FF450;
        v8 = needsCopy;
        dispatch_async(serialQueue, block);
      }
    }
  }
}

- (int64_t)_garbageCollectGroupContainerStage
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  [v3 downloadStageAgeDelta];
  v5 = [(BRCDiskSpaceReclaimer *)self _garbageCollectGroupContainersStageOfType:0 maxAgeDelta:v4];

  return v5;
}

uint64_t __79__BRCDiskSpaceReclaimer__garbageCollectGroupContainersStageOfType_maxAgeDelta___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(*(a1[5] + 8) + 24) & 1) != 0 || ([MEMORY[0x277CCACA8] stringWithUTF8String:a2], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", a1[4]), v5, !v6))
  {
    if (a3 && a1[7] - *(a3 + 48) >= a1[8])
    {
      result = 0;
      *(*(a1[6] + 8) + 24) += *(a3 + 96);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)_cleanFPCreationItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BRCDiskSpaceReclaimer *)v5 _cleanFPCreationItemIdentifier:v6];
  }

  clientState = [(BRCAccountSession *)self->_session clientState];
  v8 = [clientState objectForKeyedSubscript:@"most-recent-item-creation-date"];

  v9 = [BRCUserDefaults defaultsForMangledID:0];
  [v9 itemsCreationAgeDelta];
  v11 = v10;

  if (v8)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v8];
    v14 = v13;

    if (v14 > v11)
    {
      [identifierCopy execute:@"UPDATE client_items SET fp_creation_item_identifier = NULL WHERE fp_creation_item_identifier IS NOT NULL"];
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BRCDiskSpaceReclaimer _cleanFPCreationItemIdentifier:];
      }
    }
  }
}

- (int64_t)purgeSpace:(int64_t)space withUrgency:(int)urgency
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BRCDiskSpaceReclaimer_purgeSpace_withUrgency___block_invoke;
  v7[3] = &unk_2785082E0;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = space;
  urgencyCopy = urgency;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __48__BRCDiskSpaceReclaimer_purgeSpace_withUrgency___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[16] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v2 _purgeSpaceUnderQueue:*(a1 + 48) withUrgency:*(a1 + 56)];
    *(*(*(a1 + 40) + 8) + 24) += [*(a1 + 32) _computeCiconiaSizeInBytes:1];
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [BRCDumpContext stringFromByteCount:*(*(*(a1 + 40) + 8) + 24) context:0];
      v7 = [BRCDumpContext stringFromByteCount:*(a1 + 48) context:0];
      v8 = *(a1 + 56);
      v9 = 138413058;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] Purged %@ when asked to purge %@ for urgency %d%@", &v9, 0x26u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (int64_t)periodicReclaimSpace
{
  v3 = self->_session;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__BRCDiskSpaceReclaimer_periodicReclaimSpace__block_invoke;
  block[3] = &unk_278508308;
  v9 = v3;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  dispatch_sync(queue, block);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __45__BRCDiskSpaceReclaimer_periodicReclaimSpace__block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = a1;
    v3 = [*(v1 + 8) stageRegistry];
    v4 = [v3 purgeSpace:0x7FFFFFFFFFFFFFFFLL withUrgency:4294967294];
    v5 = v2[6];
    v2 += 6;
    *(*(v5 + 8) + 24) += v4;

    *(*(*v2 + 8) + 24) += [*(v2 - 2) _computeCiconiaSizeInBytes:1];
    v6 = [*(v2 - 1) clientDB];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __45__BRCDiskSpaceReclaimer_periodicReclaimSpace__block_invoke_2;
    v17 = &unk_278500FA8;
    v7 = *(v2 - 1);
    v18 = *(v2 - 2);
    v19 = v7;
    [v6 performWithFlags:1 action:&v14];

    v8 = *(v2 - 2);
    v9 = [*(v2 - 1) clientDB];
    *(*(*v2 + 8) + 24) += [v8 _fullVacuumIfPossible:v9];

    v10 = *(v2 - 2);
    v11 = [*(v2 - 1) serverDB];
    *(*(*v2 + 8) + 24) += [v10 _fullVacuumIfPossible:v11];

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __45__BRCDiskSpaceReclaimer_periodicReclaimSpace__block_invoke_cold_1();
    }
  }
}

uint64_t __45__BRCDiskSpaceReclaimer_periodicReclaimSpace__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _cleanFPCreationItemIdentifier:v4];
  v5 = [*(a1 + 40) namedThrottleManager];
  [v5 cleanNamedThrottleTable:v4];

  v6 = [*(a1 + 40) fsUploader];
  [v6 deleteExpiredJobs];

  v7 = [*(a1 + 40) fsDownloader];
  [v7 deleteExpiredJobs];

  v8 = [*(a1 + 40) applyScheduler];
  [v8 deleteExpiredJobs];

  v9 = [*(a1 + 40) syncUpScheduler];
  [v9 deleteExpiredJobs];

  v10 = [*(a1 + 40) analyticsReporter];
  [v10 deleteMissingErrorThrottles];

  return 1;
}

+ (int)simpleUrgencyForCacheDeleteUrgency:(int)urgency
{
  if ((urgency - 1) >= 4)
  {
    return 3;
  }

  else
  {
    return urgency;
  }
}

- (int)urgencyForCacheDeleteUrgency:(int)urgency
{
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  if ((urgency - 1) >= 4)
  {
    return 3;
  }

  else
  {
    return urgency;
  }
}

+ (double)accessTimeDeltaForUrgency:(int)urgency
{
  v3 = 978307200.0;
  if (urgency <= 1)
  {
    if (urgency == -2 || urgency == 1)
    {
      v4 = [BRCUserDefaults defaultsForMangledID:0];
      [v4 accessTimeDeltaInLowUrgency];
      goto LABEL_11;
    }
  }

  else
  {
    switch(urgency)
    {
      case 2:
        v4 = [BRCUserDefaults defaultsForMangledID:0];
        [v4 accessTimeDeltaInMedUrgency];
        goto LABEL_11;
      case 3:
        v4 = [BRCUserDefaults defaultsForMangledID:0];
        [v4 accessTimeDeltaInHighUrgency];
        goto LABEL_11;
      case 4:
        v4 = [BRCUserDefaults defaultsForMangledID:0];
        [v4 accessTimeDeltaInVeryHighUrgency];
LABEL_11:
        v3 = v5;

        break;
    }
  }

  return v3;
}

- (int64_t)cachedNonPurgeableSpace
{
  clientState = [(BRCAccountSession *)self->_session clientState];
  v3 = [clientState objectForKeyedSubscript:@"nonPurgeableSpace"];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)performOptimizeStorageWithTimeDelta:(double)delta onDiskAccessTimeDelta:(double)timeDelta error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = brc_task_tracker_create("com.apple.bird.eviction");
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] evicting for storage optimization%@", &v20, 0xCu);
  }

  v9 = dispatch_time(0, 60000000000);
  v10 = brc_task_tracker_wait_timeout(v6, v9);
  if (v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      [BRCDiskSpaceReclaimer performOptimizeStorageWithTimeDelta:v11 onDiskAccessTimeDelta:v12 error:?];
    }

    v13 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:60 description:@"timed out waiting for eviction"];
    if (v13)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, 0x90u))
      {
        v19 = "(passed to caller)";
        v20 = 136315906;
        v21 = "[BRCDiskSpaceReclaimer performOptimizeStorageWithTimeDelta:onDiskAccessTimeDelta:error:]";
        v22 = 2080;
        if (!error)
        {
          v19 = "(ignored by caller)";
        }

        v23 = v19;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", &v20, 0x2Au);
      }
    }

    if (error)
    {
      v16 = v13;
      *error = v13;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

- (unint64_t)nonPurgeableSizeWithPurgeableSize:(unint64_t)size
{
  totalSize = [(BRCDiskSpaceReclaimer *)self totalSize];
  if (totalSize >= size)
  {
    return totalSize - size;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)totalSize
{
  sessionDirPath = [(BRCAccountSession *)self->_session sessionDirPath];
  v4 = BRCRecursivelySizeDirectoryAtPath(sessionDirPath);

  cacheDirPath = [(BRCAccountSession *)self->_session cacheDirPath];
  v6 = BRCRecursivelySizeDirectoryAtPath(cacheDirPath);

  return &v4[v6];
}

@end