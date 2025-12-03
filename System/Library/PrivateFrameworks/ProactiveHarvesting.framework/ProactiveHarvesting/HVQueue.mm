@interface HVQueue
- (BOOL)cleanupWithError:(id *)error shouldContinueBlock:(id)block;
- (BOOL)deleteContentWithRequest:(id)request error:(id *)error;
- (BOOL)dequeueContent:(id *)content dataSourceContentState:(id)state minimumLevelOfService:(unsigned __int8)service inMemoryItemsOnly:(BOOL)only error:(id *)error;
- (BOOL)dequeuedContentConsumedWithError:(id *)error;
- (BOOL)dequeuedContentNotConsumed:(id)consumed error:(id *)error;
- (BOOL)enqueueContent:(id)content error:(id *)error;
- (BOOL)ensureDeletionScanHasOccurredWithError:(id *)error;
- (HVQueue)initWithIdentifier:(id)identifier biomeStream:(id)stream memoryLimit:(signed __int16)limit contentProtection:(id)protection contentExpectedFromMultipleApps:(BOOL)apps;
- (_BYTE)_filterBlockForBundleIdentifier:(void *)identifier contentIdentifierSet:(void *)set domainSelection:;
- (__CFString)_bundleIdForEvent:(__CFString *)event;
- (id)_identifierForContentWithUniqueIdentifier:(void *)identifier bundleId:;
- (id)description;
- (id)diskStorageStreamCount;
- (id)statsWithError:(id *)error;
- (id)uniqueIdentifiersInDiskStorage;
- (id)uniqueIdentifiersInMemoryStorage;
- (uint64_t)_updateMemoryQueueTransactionExtendingTimer:(uint64_t)result;
- (unsigned)_identifierForContent:(unsigned __int8 *)content;
- (void)_deleteWithFilter:(int)filter memory:(int)memory disk:;
- (void)_writeEventsToDisk:(void *)disk guardedData:;
@end

@implementation HVQueue

void __34__HVQueue__flushMemoryQueueToDisk__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 diskStorage];

  if (!v4)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HVQueue.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"guardedData.diskStorage != nil"}];
  }

  v5 = [v3 memoryStorage];
  v6 = [v5 count];

  if (v6)
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 32);
      v9 = [v3 memoryStorage];
      *buf = 138412546;
      v16 = v8;
      v17 = 2048;
      v18 = [v9 count];
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: Flushing memory queue to disk (%tu items)", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v11 = [v3 memoryStorage];
    [(HVQueue *)v10 _writeEventsToDisk:v11 guardedData:v3];

    v12 = [v3 memoryStorage];
    [v12 removeAllObjects];

    [(HVQueue *)*(a1 + 32) _updateMemoryQueueTransactionExtendingTimer:?];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)cleanupWithError:(id *)error shouldContinueBlock:(id)block
{
  blockCopy = block;
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-1209600.0];
  [v6 timeIntervalSinceReferenceDate];
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HVQueue_cleanupWithError_shouldContinueBlock___block_invoke;
  v12[3] = &unk_278969470;
  v12[4] = self;
  v13 = v6;
  v14 = blockCopy;
  v15 = v8;
  v9 = blockCopy;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v12 shouldContinueBlock:v9];

  return 1;
}

void __48__HVQueue_cleanupWithError_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 diskStorageIsKnownToBeEmpty] & 1) == 0)
  {
    v4 = hv_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 32);
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: starting cleanup tasks with cutoff date %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v7 = [v3 diskStorage];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __48__HVQueue_cleanupWithError_shouldContinueBlock___block_invoke_324;
    v15 = &unk_278969448;
    v16 = *(a1 + 48);
    v17 = &v20;
    v19 = *(a1 + 56);
    v18 = buf;
    [v7 pruneWithPredicateBlock:&v12];

    if ((v21[3] & 1) == 0)
    {
      [v3 setDiskStorageEventCount:{*(*&buf[8] + 24), v12, v13, v14, v15}];
      if (!*(*&buf[8] + 24))
      {
        [v3 setDiskStorageIsKnownToBeEmpty:1];
        [v3 setDiskContentBloomFilter:0];
      }
    }

    v8 = hv_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 24))
      {
        v9 = @"completed";
      }

      else
      {
        v9 = @"was asked to defer during";
      }

      v10 = *(*(a1 + 32) + 32);
      *v24 = 138412546;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: %{public}@ cleanup tasks.", v24, 0x16u);
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(buf, 8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

BOOL __48__HVQueue_cleanupWithError_shouldContinueBlock___block_invoke_324(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a2;
  if ((v6(v5) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  [v7 timestamp];
  v9 = v8;

  v10 = *(a1 + 56);
  if (v9 >= v10)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  return v9 < v10;
}

- (id)diskStorageStreamCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__HVQueue_diskStorageStreamCount__block_invoke;
  v5[3] = &unk_278969420;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7[3]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__HVQueue_diskStorageStreamCount__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 diskStorage];
  v4 = [v3 publisherFromStartTime:0.0];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__HVQueue_diskStorageStreamCount__block_invoke_3;
  v6[3] = &unk_2789693F8;
  v6[4] = *(a1 + 32);
  v5 = [v4 sinkWithCompletion:&__block_literal_global_322 receiveInput:v6];
}

- (id)statsWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__971;
  v11 = __Block_byref_object_dispose__972;
  v12 = 0;
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__HVQueue_statsWithError___block_invoke;
  v6[3] = &unk_278968FF8;
  v6[4] = self;
  v6[5] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __26__HVQueue_statsWithError___block_invoke(uint64_t a1, void *a2)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v34[0] = *(*(a1 + 32) + 32);
  v33[0] = @"Identifier";
  v33[1] = @"Enqueued Count";
  v7 = 0x277CCA000;
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "enqueuedCount")}];
  v34[1] = v28;
  v33[2] = @"Dequeued Count";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "dequeuedCount")}];
  v34[2] = v27;
  v33[3] = @"Dequeued Identifiers";
  v26 = [v6 dequeuedContentIdentifiers];
  v25 = [v26 allObjects];
  v34[3] = v25;
  v33[4] = @"Memory";
  v31[0] = @"count";
  v8 = MEMORY[0x277CCABB0];
  v24 = [v6 memoryStorage];
  v23 = [v8 numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
  v32[0] = v23;
  v31[1] = @"limit";
  v22 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v6, "memoryStorageLimit")}];
  v32[1] = v22;
  v31[2] = @"full";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isMemoryStorageFull")}];
  v32[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v34[4] = v10;
  v33[5] = @"Disk";
  v11 = [v6 diskStorage];
  if (v11)
  {
    v29[0] = @"stream";
    v21 = [v6 diskStorage];
    v20 = [v21 identifier];
    v30[0] = v20;
    v29[1] = @"count";
    v19 = [*(a1 + 32) diskStorageStreamCount];
    v30[1] = v19;
    v29[2] = @"known to be empty";
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "diskStorageIsKnownToBeEmpty")}];
    v30[2] = v18;
    v29[3] = @"Bookmark";
    v17 = [v6 bookmark];
    v3 = [v17 jsonDict];
    v30[3] = v3;
    v29[4] = @"Bloom filter hits";
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "bloomFilterHits")}];
    v30[4] = v4;
    v29[5] = @"Bloom filter hits (false positives)";
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "bloomFilterFalsePositives")}];
    v30[5] = v2;
    v29[6] = @"Bloom filter misses";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "bloomFilterMisses")}];
    v30[6] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:7];
  }

  else
  {
    v12 = @"no disk queue";
  }

  v34[5] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (v11)
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)ensureDeletionScanHasOccurredWithError:(id *)error
{
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__HVQueue_ensureDeletionScanHasOccurredWithError___block_invoke;
  v5[3] = &unk_2789691B0;
  v5[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v5];
  return 1;
}

void __50__HVQueue_ensureDeletionScanHasOccurredWithError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 diskContentBloomFilter];
  if (v3)
  {
  }

  else if (([v4 diskStorageIsKnownToBeEmpty] & 1) == 0)
  {
    [(HVQueue *)*(a1 + 32) _deleteWithFilter:0 memory:1 disk:?];
  }
}

- (void)_deleteWithFilter:(int)filter memory:(int)memory disk:
{
  v7 = a2;
  v8 = v7;
  if (self && filter | memory)
  {
    v9 = *(self + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__HVQueue__deleteWithFilter_memory_disk___block_invoke;
    v10[3] = &unk_278969298;
    memoryCopy = memory;
    filterCopy = filter;
    v10[4] = self;
    v11 = v7;
    [v9 runWithLockAcquired:v10];
  }
}

void __41__HVQueue__deleteWithFilter_memory_disk___block_invoke(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 diskContentBloomFilter];

  if (*(a1 + 48) == 1)
  {
    [v3 setDiskContentBloomFilter:0];
  }

  if (*(a1 + 49) == 1)
  {
    v5 = [v3 memoryStorage];
    v6 = [v5 indexesOfObjectsPassingTest:*(a1 + 40)];

    if ([v6 count])
    {
      v7 = objc_opt_new();
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __41__HVQueue__deleteWithFilter_memory_disk___block_invoke_2;
      v74[3] = &unk_278969220;
      v8 = v7;
      v75 = v8;
      v9 = v3;
      v76 = v9;
      [v6 enumerateIndexesUsingBlock:v74];
      v10 = v76;
      v11 = v8;

      v12 = hv_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(a1 + 32) + 32);
        v14 = [v6 count];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __41__HVQueue__deleteWithFilter_memory_disk___block_invoke_3;
        v73[3] = &unk_2789690C0;
        v73[4] = *(a1 + 32);
        v15 = [v11 _pas_mappedArrayWithTransform:v73];
        *buf = 138413059;
        v78 = v13;
        v79 = 2048;
        *v80 = v14;
        *&v80[8] = 2112;
        *&v80[10] = v15;
        *&v80[18] = 2117;
        v81 = v11;
        _os_log_impl(&dword_2321EC000, v12, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: Deleting %tu items from memory %@: %{sensitive}@", buf, 0x2Au);
      }

      v16 = [v9 memoryStorage];
      [v16 removeObjectsAtIndexes:v6];

      [(HVQueue *)*(a1 + 32) _updateMemoryQueueTransactionExtendingTimer:?];
    }
  }

  if (*(a1 + 48) == 1 && ([v3 diskStorageIsKnownToBeEmpty] & 1) == 0)
  {
    v17 = 2 * [v3 diskStorageEventCount];
    if (v17 <= 0x80)
    {
      v17 = 128;
    }

    if (v17 >= 0x342A2)
    {
      v19 = 213666;
    }

    else
    {
      v19 = v17;
    }

    LODWORD(v18) = 1008981770;
    v20 = [MEMORY[0x277D42548] bloomFilterInMemoryWithNumberOfValuesN:v19 errorRateP:v18];
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v21 = objc_opt_new();
    v22 = *(*(a1 + 32) + 32);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __41__HVQueue__deleteWithFilter_memory_disk___block_invoke_233;
    v62[3] = &unk_278969248;
    v23 = v21;
    v63 = v23;
    v24 = v22;
    v64 = v24;
    v25 = MEMORY[0x238381E60](v62);
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2020000000;
    v61 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v59 = 0;
    v26 = [MEMORY[0x277CBEAA8] now];
    [v26 timeIntervalSinceReferenceDate];
    v28 = v27;

    v29 = objc_opt_class();
    v30 = [v3 diskStorage];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __41__HVQueue__deleteWithFilter_memory_disk___block_invoke_236;
    v45[3] = &unk_278969270;
    v52 = v60;
    v31 = v24;
    v46 = v31;
    v53 = &v69;
    v57 = v28;
    v56 = v29;
    v54 = v58;
    v50 = *(a1 + 40);
    v32 = v23;
    v33 = *(a1 + 32);
    v47 = v32;
    v48 = v33;
    v34 = v25;
    v51 = v34;
    v55 = &v65;
    v35 = v20;
    v49 = v35;
    [v30 pruneWithPredicateBlock:v45];

    (*(v34 + 2))(v34, 1);
    if (*(v66 + 6))
    {
      v36 = 1;
    }

    else
    {
      v36 = v4 == 0;
    }

    v37 = !v36;
    v38 = hv_default_log_handle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *(*(a1 + 32) + 32);
      v40 = *(v66 + 6);
      v41 = &stru_28474C1D0;
      if (v37)
      {
        v41 = @" (!!! bloom filter false positive !!!!)";
      }

      v42 = *(v70 + 6);
      *buf = 138413058;
      v78 = v39;
      v79 = 1024;
      *v80 = v40;
      *&v80[4] = 2112;
      *&v80[6] = v41;
      *&v80[14] = 1024;
      *&v80[16] = v42;
      _os_log_impl(&dword_2321EC000, v38, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: deleteContentWithRequest: biome enumeration deleted %u events on-disk%@, %u events remain on-disk", buf, 0x22u);
    }

    v43 = *(v70 + 6);
    if (!v43 || v19 >> 2 > v43)
    {
      if (!v43)
      {
        [v3 setDiskStorageIsKnownToBeEmpty:1];
      }

      v35 = 0;
      v43 = *(v70 + 6);
    }

    [v3 setDiskStorageEventCount:v43];
    [v3 setDiskContentBloomFilter:v35];
    if (v37)
    {
      [v3 setBloomFilterFalsePositives:{objc_msgSend(v3, "bloomFilterFalsePositives") + 1}];
    }

    _Block_object_dispose(v58, 8);
    _Block_object_dispose(v60, 8);

    _Block_object_dispose(&v65, 8);
    _Block_object_dispose(&v69, 8);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __41__HVQueue__deleteWithFilter_memory_disk___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) memoryStorage];
  v4 = [v5 objectAtIndexedSubscript:a2];
  [v3 addObject:v4];
}

- (uint64_t)_updateMemoryQueueTransactionExtendingTimer:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 8);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __55__HVQueue__updateMemoryQueueTransactionExtendingTimer___block_invoke;
    v3[3] = &unk_278969020;
    v4 = a2;
    v3[4] = result;
    return [v2 runWithLockAcquired:v3];
  }

  return result;
}

void __41__HVQueue__deleteWithFilter_memory_disk___block_invoke_233(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) count];
  v5 = 63;
  if (a2)
  {
    v5 = 0;
  }

  if (v4 > v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: deleteContentWithRequest: deleted identifiers %@", &v11, 0x16u);
    }

    [*(a1 + 32) removeAllObjects];
    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __41__HVQueue__deleteWithFilter_memory_disk___block_invoke_236(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  objc_autoreleasePoolPop(v4);
  if (!v5)
  {
    v16 = objc_autoreleasePoolPush();
LABEL_20:
    (*(*(a1 + 72) + 16))(*(a1 + 72), 0);
    ++*(*(*(a1 + 104) + 8) + 24);
    objc_autoreleasePoolPop(v16);
    v20 = 1;
    goto LABEL_21;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 personaId];

    if (!v6)
    {
      v21 = *(*(a1 + 80) + 8);
      if ((*(v21 + 24) & 1) == 0)
      {
        *(v21 + 24) = 1;
        v11 = hv_default_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          v27 = 138543362;
          v28 = v22;
          v13 = "HVQueue<%{public}@>: deleteContentWithRequest: deleting events likely stored in V1 Biome persistence!";
          goto LABEL_16;
        }

LABEL_17:
      }

LABEL_18:
      v16 = objc_autoreleasePoolPush();
      goto LABEL_19;
    }
  }

  if (*(*(*(a1 + 88) + 8) + 24) >= 0xFBu)
  {
    v7 = *(a1 + 112);
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 120);
      [v5 absoluteTimestamp];
      if (v8 - v9 > 432000.0)
      {
        v10 = *(*(a1 + 96) + 8);
        if ((*(v10 + 24) & 1) == 0)
        {
          *(v10 + 24) = 1;
          v11 = hv_default_log_handle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 32);
            v27 = 138543362;
            v28 = v12;
            v13 = "HVQueue<%{public}@>: deleteContentWithRequest: deleting old Messages event to mitigate 139207993!";
LABEL_16:
            _os_log_impl(&dword_2321EC000, v11, OS_LOG_TYPE_DEFAULT, v13, &v27, 0xCu);
            goto LABEL_17;
          }

          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = (*(*(a1 + 64) + 16))();
  objc_autoreleasePoolPop(v14);
  v16 = objc_autoreleasePoolPush();
  if (v15)
  {
LABEL_19:
    v23 = *(a1 + 40);
    v24 = [(HVQueue *)*(a1 + 48) _identifierForContent:v5];
    [v23 addObject:v24];

    goto LABEL_20;
  }

  v17 = [(HVQueue *)*(a1 + 48) _bundleIdForEvent:v5];
  v18 = [v5 domainId];
  v19 = [v5 uniqueId];
  [HVSpotlightDeletionRequest addDeletableContentWithBundleIdentifier:v17 domainIdentifier:v18 uniqueIdentifier:v19 toBloomFilter:*(a1 + 56)];

  ++*(*(*(a1 + 88) + 8) + 24);
  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

- (unsigned)_identifierForContent:(unsigned __int8 *)content
{
  v3 = a2;
  v4 = v3;
  if (content)
  {
    v5 = content[24];
    uniqueId = [v3 uniqueId];
    if (v5 == 1)
    {
      bundleId = [v4 bundleId];
      content = [(HVQueue *)content _identifierForContentWithUniqueIdentifier:uniqueId bundleId:bundleId];
    }

    else
    {
      content = [(HVQueue *)content _identifierForContentWithUniqueIdentifier:uniqueId bundleId:0];
    }
  }

  return content;
}

- (__CFString)_bundleIdForEvent:(__CFString *)event
{
  v3 = a2;
  v4 = v3;
  if (event)
  {
    if (LOBYTE(event->length) == 1)
    {
      event = [v3 bundleId];
    }

    else
    {
      event = &stru_28474C1D0;
    }
  }

  return event;
}

- (id)_identifierForContentWithUniqueIdentifier:(void *)identifier bundleId:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (self)
  {
    if (*(self + 24) == 1)
    {
      v8 = objc_autoreleasePoolPush();
      if (!v7)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__identifierForContentWithUniqueIdentifier_bundleId_ object:self file:@"HVQueue.m" lineNumber:619 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
      }

      objc_opt_self();
      if (_bundleIdAllowedCharacterSet__pasOnceToken30 != -1)
      {
        dispatch_once(&_bundleIdAllowedCharacterSet__pasOnceToken30, &__block_literal_global_211);
      }

      v9 = _bundleIdAllowedCharacterSet__pasExprOnceResult;
      v10 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v9];

      if (!v5)
      {
        v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", 0];
        v11 = hv_default_log_handle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          v15 = *(self + 32);
          *buf = 138412546;
          v19 = v15;
          v20 = 2112;
          v21 = v10;
          _os_log_fault_impl(&dword_2321EC000, v11, OS_LOG_TYPE_FAULT, "HVQueue<%@>: _identifierForContentWithUniqueIdentifier called with nil uniqueId for bundleId %@", buf, 0x16u);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          abort();
        }
      }

      v17[0] = v10;
      v17[1] = v5;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      self = [v12 _pas_componentsJoinedByString:@":"];

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v5 = v5;
      v10 = v7;
      self = v5;
    }
  }

  else
  {
    v10 = identifierCopy;
  }

  v13 = *MEMORY[0x277D85DE8];

  return self;
}

void __39__HVQueue__bundleIdAllowedCharacterSet__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"%:"];
  v2 = [v1 invertedSet];
  v3 = _bundleIdAllowedCharacterSet__pasExprOnceResult;
  _bundleIdAllowedCharacterSet__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

void __55__HVQueue__updateMemoryQueueTransactionExtendingTimer___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 diskStorage];

  if (v3)
  {
    v4 = [v18 memoryStorage];
    if ([v4 count])
    {
    }

    else
    {
      v15 = [v18 memoryStorageTransaction];

      if (v15)
      {
        [v18 setDiskStorageSource:0];
        [v18 setMemoryStorageTransaction:0];
        v16 = [v18 memoryStorageSigtermSource];
        dispatch_suspend(v16);

        v17 = [v18 memoryStorageIdleSource];
        dispatch_suspend(v17);

        goto LABEL_11;
      }
    }

    v5 = [v18 memoryStorage];
    v6 = [v5 count];

    if (v6)
    {
      if (*(a1 + 40) == 1)
      {
        v7 = [v18 memoryStorageIdleSource];
        v8 = dispatch_time(0, 60000000000);
        dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x37E11D600uLL);
      }

      v9 = [v18 memoryStorageTransaction];

      if (!v9)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = [@"HVQueue-Memory-" stringByAppendingString:*(*(a1 + 32) + 32)];
        [v11 UTF8String];
        v12 = os_transaction_create();
        [v18 setMemoryStorageTransaction:v12];

        v13 = [v18 memoryStorageSigtermSource];
        dispatch_resume(v13);

        v14 = [v18 memoryStorageIdleSource];
        dispatch_resume(v14);

        objc_autoreleasePoolPop(v10);
      }
    }
  }

LABEL_11:
}

- (BOOL)deleteContentWithRequest:(id)request error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = hv_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_2321EC000, v6, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: deleteContentWithRequest: clearing queue", &buf, 0xCu);
  }

  if (!self->_contentExpectedFromMultipleApps)
  {
    v8 = [requestCopy copyWithBundleIdentifier:&stru_28474C1D0];

    requestCopy = v8;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  lock = self->_lock;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __42__HVQueue_deleteContentWithRequest_error___block_invoke;
  v18 = &unk_278968FF8;
  v20 = &v21;
  v10 = requestCopy;
  v19 = v10;
  [(_PASLock *)lock runWithLockAcquired:&v15];
  v11 = v10;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__248;
  v31 = __Block_byref_object_dispose__249;
  v32 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__HVQueue__filterBlockForDeletionRequest___block_invoke;
  v27[3] = &unk_2789692E8;
  v27[4] = self;
  v27[5] = &buf;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __42__HVQueue__filterBlockForDeletionRequest___block_invoke_2;
  v26[3] = &unk_278969310;
  v26[4] = self;
  v26[5] = &buf;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __42__HVQueue__filterBlockForDeletionRequest___block_invoke_3;
  v25[3] = &unk_278969360;
  v25[4] = self;
  v25[5] = &buf;
  [v11 accessCriteriaUsingBundleIdentifierBlock:v27 domainSelectionBlock:v26 uniqueIdentifiersBlock:{v25, v15, v16, v17, v18}];
  v12 = MEMORY[0x238381E60](*(*(&buf + 1) + 40));
  _Block_object_dispose(&buf, 8);

  [(HVQueue *)self _deleteWithFilter:v12 memory:1 disk:*(v22 + 24)];
  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __42__HVQueue_deleteContentWithRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 diskStorageIsKnownToBeEmpty] & 1) == 0)
  {
    v3 = [v5 diskContentBloomFilter];
    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) matchesBloomFilter:v3];
      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        [v5 setBloomFilterHits:{objc_msgSend(v5, "bloomFilterHits") + 1}];
      }

      else
      {
        [v5 setBloomFilterMisses:{objc_msgSend(v5, "bloomFilterMisses") + 1}];
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __42__HVQueue__filterBlockForDeletionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [(HVQueue *)*(a1 + 32) _filterBlockForBundleIdentifier:a2 contentIdentifierSet:0 domainSelection:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

uint64_t __42__HVQueue__filterBlockForDeletionRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [(HVQueue *)*(a1 + 32) _filterBlockForBundleIdentifier:a2 contentIdentifierSet:0 domainSelection:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void __42__HVQueue__filterBlockForDeletionRequest___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HVQueue__filterBlockForDeletionRequest___block_invoke_4;
  v11[3] = &unk_278969338;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v6 = v5;
  v7 = [a3 _pas_mappedSetWithTransform:v11];
  v8 = [(HVQueue *)*(a1 + 32) _filterBlockForBundleIdentifier:v6 contentIdentifierSet:v7 domainSelection:0];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (_BYTE)_filterBlockForBundleIdentifier:(void *)identifier contentIdentifierSet:(void *)set domainSelection:
{
  v7 = a2;
  identifierCopy = identifier;
  setCopy = set;
  v10 = setCopy;
  if (self)
  {
    if (identifierCopy && setCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection_ object:self file:@"HVQueue.m" lineNumber:916 description:@"Deletion call specifies both unique identifiers and domains."];
    }

    else
    {
      if (!(identifierCopy | setCopy))
      {
        if (self[24] != 1)
        {
          self = &__block_literal_global_267;
          goto LABEL_20;
        }

        if (!v7)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:sel__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection_ object:self file:@"HVQueue.m" lineNumber:921 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke;
        v26[3] = &unk_278969388;
        v26[4] = self;
        v11 = &v27;
        v27 = v7;
        v12 = v26;
        goto LABEL_16;
      }

      if (!setCopy)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke_271;
        v18[3] = &unk_278969388;
        v18[4] = self;
        v11 = &v19;
        v19 = identifierCopy;
        v12 = v18;
LABEL_16:
        self = MEMORY[0x238381E60](v12);
LABEL_19:

        goto LABEL_20;
      }
    }

    if (self[24] == 1)
    {
      if (!v7)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:sel__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection_ object:self file:@"HVQueue.m" lineNumber:939 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke_2;
      v23[3] = &unk_2789693D0;
      v23[4] = self;
      v11 = &v24;
      v24 = v7;
      v25 = v10;
      self = MEMORY[0x238381E60](v23);
      v13 = v25;
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke_270;
      v20[3] = &unk_2789693D0;
      v20[4] = self;
      v11 = &v21;
      v21 = v7;
      v22 = v10;
      self = MEMORY[0x238381E60](v20);
      v13 = v22;
    }

    goto LABEL_19;
  }

LABEL_20:

  return self;
}

uint64_t __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 bundleId];
    v5 = [v4 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v6 = hv_default_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v9;
      _os_log_fault_impl(&dword_2321EC000, v6, OS_LOG_TYPE_FAULT, "HVQueue<%@>: deletion for bundle %@ encountered event which does not respond to bundleId", &v11, 0x16u);
    }

    v5 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v4 = hv_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v7 = *(*(a1 + 32) + 32);
      v20 = 138412290;
      v21 = v7;
      v8 = "HVQueue<%@>: deleting null event";
      v9 = v4;
      v10 = 12;
LABEL_11:
      _os_log_fault_impl(&dword_2321EC000, v9, OS_LOG_TYPE_FAULT, v8, &v20, v10);
    }

LABEL_16:
    v6 = 1;
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = hv_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 32);
      v13 = *(a1 + 48);
      v20 = 138412802;
      v21 = v12;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v13;
      v8 = "HVQueue<%@>: deletion for bundle %@ domain %@ encountered event which does not respond to bundleId";
      v9 = v4;
      v10 = 32;
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v4 = [v3 bundleId];
  if (![v4 isEqualToString:*(a1 + 40)])
  {
    v6 = 0;
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = hv_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v17 = *(a1 + 40);
      v18 = *(*(a1 + 32) + 32);
      v19 = *(a1 + 48);
      v20 = 138412802;
      v21 = v18;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v19;
      _os_log_fault_impl(&dword_2321EC000, v14, OS_LOG_TYPE_FAULT, "HVQueue<%@>: deletion for bundle %@ domain %@ encountered event which does not respond to domainId", &v20, 0x20u);
    }

    goto LABEL_16;
  }

  v5 = [v3 domainId];
  if (v5)
  {
    v6 = [*(a1 + 48) containsDomain:v5];
  }

  else
  {
    v6 = 0;
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke_270(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v6 = hv_default_log_handle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      v5 = 1;
      goto LABEL_11;
    }

    v7 = *(*(a1 + 32) + 32);
    v16 = 138412290;
    v17 = v7;
    v8 = "HVQueue<%@>: deleting null event";
    v9 = v6;
    v10 = 12;
LABEL_13:
    _os_log_fault_impl(&dword_2321EC000, v9, OS_LOG_TYPE_FAULT, v8, &v16, v10);
    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = hv_default_log_handle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 32);
    v15 = *(a1 + 48);
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v15;
    v8 = "HVQueue<%@>: deletion for bundle %@ domain %@ encountered event which does not respond to domainId";
    v9 = v6;
    v10 = 32;
    goto LABEL_13;
  }

  v4 = [v3 domainId];
  if (v4)
  {
    v5 = [*(a1 + 48) containsDomain:v4];
  }

  else
  {
    v5 = 0;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __80__HVQueue__filterBlockForBundleIdentifier_contentIdentifierSet_domainSelection___block_invoke_271(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    v5 = hv_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = *(*(a1 + 32) + 32);
      v12 = 138412290;
      v13 = v7;
      _os_log_fault_impl(&dword_2321EC000, v5, OS_LOG_TYPE_FAULT, "HVQueue<%@>: deleting null event", &v12, 0xCu);
    }

    goto LABEL_9;
  }

  v4 = [(HVQueue *)*(a1 + 32) _identifierForContent:v3];
  if (!v4)
  {
    v8 = hv_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = *(*(a1 + 32) + 32);
      v12 = 138412547;
      v13 = v11;
      v14 = 2117;
      v15 = v3;
      _os_log_fault_impl(&dword_2321EC000, v8, OS_LOG_TYPE_FAULT, "HVQueue<%@>: unable to generate content identifier for event, will delete to be safe: %{sensitive}@", &v12, 0x16u);
    }

    v5 = 0;
LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [*(a1 + 40) containsObject:v4];
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)dequeuedContentNotConsumed:(id)consumed error:(id *)error
{
  consumedCopy = consumed;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HVQueue_dequeuedContentNotConsumed_error___block_invoke;
  v9[3] = &unk_2789691D8;
  v9[4] = self;
  v10 = consumedCopy;
  v7 = consumedCopy;
  [(_PASLock *)lock runWithLockAcquired:v9];

  return 1;
}

void __44__HVQueue_dequeuedContentNotConsumed_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [(HVQueue *)v3 _identifierForContent:v4];
  v7 = hv_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: dequeuedContentNotConsumed: %@", &v11, 0x16u);
  }

  v9 = [v5 dequeuedContentIdentifiers];

  [v9 removeObject:v6];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)dequeuedContentConsumedWithError:(id *)error
{
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HVQueue_dequeuedContentConsumedWithError___block_invoke;
  v6[3] = &unk_2789691B0;
  v6[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v6];
  dispatch_semaphore_signal(self->_contentConsumedSemaphore);
  return 1;
}

void __44__HVQueue_dequeuedContentConsumedWithError___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = [v3 dequeuedContentIdentifiers];
    v7 = [v6 count];
    v8 = [v3 dequeuedContentIdentifiers];
    *buf = 138412802;
    *&buf[4] = v5;
    v68 = 2048;
    v69 = v7;
    v70 = 2112;
    v71 = v8;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: dequeuedContentConsumedWithError count:%tu, content:%@", buf, 0x20u);
  }

  v9 = [v3 dequeuedContentIdentifiers];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v3 diskContentBloomFilter];

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = [v3 dequeuedContentIdentifiers];
      if (v12)
      {
        if (v12[24])
        {
          v52 = v12;
          v50 = a1;
          v51 = v3;
          context = objc_autoreleasePoolPush();
          v53 = objc_opt_new();
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v49 = v13;
          obj = v13;
          v14 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v60;
            v17 = @":";
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v60 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v59 + 1) + 8 * i);
                v20 = objc_autoreleasePoolPush();
                v21 = [v19 rangeOfString:v17 options:2];
                if (v21 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v23 = hv_default_log_handle();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
                  {
                    v33 = *(v52 + 4);
                    *v64 = 138412547;
                    *&v64[4] = v33;
                    *&v64[12] = 2113;
                    *&v64[14] = v19;
                    _os_log_fault_impl(&dword_2321EC000, v23, OS_LOG_TYPE_FAULT, "HVQueue<%@>: _spotlightDeletionRequestsForContentIdentifiers found a contentIdentifier missing a colon even though _contentExpectedFromMultipleApps=YES: %{private}@", v64, 0x16u);
                  }

                  if (_PASEvaluateLogFaultAndProbCrashCriteria())
                  {
                    abort();
                  }
                }

                else
                {
                  v24 = v21;
                  v25 = v22;
                  v26 = v17;
                  v27 = [v19 substringToIndex:v21];
                  v28 = [v27 stringByRemovingPercentEncoding];

                  if (!v28)
                  {
                    v34 = [MEMORY[0x277CCA890] currentHandler];
                    [v34 handleFailureInMethod:sel__spotlightDeletionRequestsForContentIdentifiers_ object:v52 file:@"HVQueue.m" lineNumber:848 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
                  }

                  v29 = [v19 substringFromIndex:v24 + v25];
                  v30 = [v53 objectForKeyedSubscript:v28];
                  v31 = v30;
                  if (v30)
                  {
                    v32 = v30;
                  }

                  else
                  {
                    v32 = objc_opt_new();
                    [v53 setObject:v32 forKeyedSubscript:v28];
                  }

                  v17 = v26;

                  [v32 addObject:v29];
                }

                objc_autoreleasePoolPop(v20);
              }

              v15 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
            }

            while (v15);
          }

          v35 = [v53 allKeys];
          *v64 = MEMORY[0x277D85DD0];
          *&v64[8] = 3221225472;
          *&v64[16] = __59__HVQueue__spotlightDeletionRequestsForContentIdentifiers___block_invoke;
          v65 = &unk_2789692C0;
          v66 = v53;
          v36 = v53;
          v12 = [v35 _pas_mappedArrayWithTransform:v64];

          objc_autoreleasePoolPop(context);
          a1 = v50;
          v3 = v51;
          v13 = v49;
        }

        else
        {
          v38 = [[HVSpotlightDeletionRequest alloc] initWithBundleIdentifier:&stru_28474C1D0 uniqueIdentifiers:v13];
          *buf = v38;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
        }
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v39 = v12;
      v37 = [v39 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v37)
      {
        v40 = *v56;
        while (2)
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(v39);
            }

            v42 = *(*(&v55 + 1) + 8 * j);
            v43 = [v3 diskContentBloomFilter];
            LOBYTE(v42) = [v42 matchesBloomFilter:v43];

            if (v42)
            {
              LODWORD(v37) = 1;
              goto LABEL_38;
            }
          }

          v37 = [v39 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

LABEL_38:
    }

    else
    {
      LODWORD(v37) = 1;
    }

    v44 = *(a1 + 32);
    v45 = [v3 dequeuedContentIdentifiers];
    if (v44)
    {
      v44 = [(HVQueue *)v44 _filterBlockForBundleIdentifier:v45 contentIdentifierSet:0 domainSelection:?];
    }

    [(HVQueue *)*(a1 + 32) _deleteWithFilter:v44 memory:1 disk:v37];
    v46 = [v3 dequeuedContentIdentifiers];
    [v46 removeAllObjects];
  }

  v47 = *MEMORY[0x277D85DE8];
}

HVSpotlightDeletionRequest *__59__HVQueue__spotlightDeletionRequestsForContentIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HVSpotlightDeletionRequest alloc];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [(HVSpotlightDeletionRequest *)v4 initWithBundleIdentifier:v3 uniqueIdentifiers:v5];

  return v6;
}

- (BOOL)dequeueContent:(id *)content dataSourceContentState:(id)state minimumLevelOfService:(unsigned __int8)service inMemoryItemsOnly:(BOOL)only error:(id *)error
{
  stateCopy = state;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__971;
  v30 = __Block_byref_object_dispose__972;
  v31 = 0;
  lock = self->_lock;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke;
  v18[3] = &unk_278969188;
  v18[4] = self;
  v15 = stateCopy;
  serviceCopy = service;
  v19 = v15;
  v20 = &v32;
  onlyCopy = only;
  contentCopy = content;
  v23 = a2;
  v21 = &v26;
  [(_PASLock *)lock runWithLockAcquired:v18];
  v16 = *(v33 + 24);
  if (error && (v33[3] & 1) == 0)
  {
    *error = v27[5];
    v16 = *(v33 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v16 & 1;
}

void __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 memoryStorage];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = hv_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 32);
    *buf = 138412290;
    v61 = v7;
    _os_log_impl(&dword_2321EC000, v6, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: dequeueContent: reading from memory", buf, 0xCu);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = [v3 memoryStorage];
  v9 = [v8 reverseObjectEnumerator];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v57;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [(HVQueue *)*(a1 + 32) _identifierForContent:v14];
        v17 = [v3 dequeuedContentIdentifiers];
        v18 = [v17 containsObject:v16];

        if ((v18 & 1) == 0)
        {
          context = v15;
          v19 = v11;
          v20 = v12;
          v21 = [*(a1 + 40) deferredContentStates];
          v22 = HVDataSourceContentStateKey([*(a1 + 40) dataSource], v14);
          v23 = [v21 objectForKeyedSubscript:v22];

          if (!v23 || (v24 = *(a1 + 80), v24 < [v23 levelOfService]))
          {
            objc_storeStrong(*(a1 + 64), v14);
            v25 = [v3 dequeuedContentIdentifiers];
            [v25 addObject:v16];

            objc_autoreleasePoolPop(context);
            goto LABEL_17;
          }

          v12 = v20;
          v11 = v19;
          v15 = context;
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (**(a1 + 64))
  {
    v26 = objc_autoreleasePoolPush();
    v27 = hv_default_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      v29 = *(v28 + 32);
      v30 = [(HVQueue *)v28 _identifierForContent:?];
      v31 = **(a1 + 64);
      *buf = 138412803;
      v61 = v29;
      v62 = 2112;
      v63 = v30;
      v64 = 2117;
      v65 = v31;
      _os_log_impl(&dword_2321EC000, v27, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: dequeueContent: read %@ from memory: %{sensitive}@", buf, 0x20u);
    }

    [v3 setDequeuedCount:{objc_msgSend(v3, "dequeuedCount") + 1}];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_autoreleasePoolPop(v26);
  }

  else
  {
LABEL_22:
    if ((*(a1 + 81) & 1) == 0 && ([v3 diskStorageIsKnownToBeEmpty] & 1) == 0)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = [v3 bookmark];
      v34 = [v33 los];
      v35 = *(a1 + 80);

      if (v34 != v35)
      {
        v36 = [v3 bookmark];
        [v36 reset];

        v37 = *(a1 + 80);
        v38 = [v3 bookmark];
        [v38 setLos:v37];
      }

      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_196;
      v50[3] = &unk_278969160;
      v54 = *(a1 + 64);
      v50[4] = *(a1 + 32);
      v39 = v3;
      v51 = v39;
      v52 = *(a1 + 40);
      v55 = *(a1 + 80);
      v53 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
      v40 = MEMORY[0x238381E60](v50);
      v40[2](v40, 1);
      if (!**(a1 + 64))
      {
        v40[2](v40, 0);
      }

      objc_autoreleasePoolPop(v32);
      v41 = **(a1 + 64);
      if (v41)
      {
        v42 = [(HVQueue *)*(a1 + 32) _identifierForContent:v41];
        v43 = hv_default_log_handle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(*(a1 + 32) + 32);
          v45 = **(a1 + 64);
          *buf = 138412803;
          v61 = v44;
          v62 = 2112;
          v63 = v42;
          v64 = 2117;
          v65 = v45;
          _os_log_impl(&dword_2321EC000, v43, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: dequeueContent: read %@ from disk: %{sensitive}@", buf, 0x20u);
        }

        v46 = [v39 dequeuedContentIdentifiers];
        [v46 addObject:v42];

        [v39 setDequeuedCount:{objc_msgSend(v39, "dequeuedCount") + 1}];
        [v39 setDiskStorageEventCount:{objc_msgSend(v39, "diskStorageEventCount") - (objc_msgSend(v39, "diskStorageEventCount") != 0)}];
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_196(uint64_t a1, int a2)
{
  if (**(a1 + 72))
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = *(a1 + 32);
    if (a2)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v25 = *(a1 + 80);
    v26 = [(HVQueue *)*(a1 + 32) _identifierForContent:?];
    [v22 handleFailureInMethod:v25 object:v23 file:@"HVQueue.m" lineNumber:451 description:{@"enumerateBiome(%@) called even though *content is nonnil (%@)", v24, v26}];
  }

  v4 = [*(a1 + 40) bookmark];
  v5 = v4;
  if (a2)
  {
    v6 = [v4 futureCutoff];

    if (!v6)
    {
      return;
    }

    v7 = [*(a1 + 40) bookmark];
    v8 = [v7 futureBookmark];

    v5 = [*(a1 + 40) bookmark];
    v9 = [v5 futureCutoff];
  }

  else
  {
    v8 = [v4 pastBookmark];
    v9 = 0;
  }

  v10 = [*(a1 + 40) diskStorage];
  v11 = [v10 publisherWithStartTime:0 endTime:v9 maxEvents:0 reversed:1];

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_2;
  v35[3] = &unk_2789690E8;
  v39 = &v41;
  v12 = *(a1 + 40);
  v13 = *(a1 + 32);
  v36 = v12;
  v37 = v13;
  v38 = *(a1 + 48);
  v40 = *(a1 + 88);
  v14 = [v11 filterWithIsIncluded:v35];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_3;
  v31[3] = &unk_278969110;
  v34 = a2;
  v27 = *(a1 + 32);
  v15 = *(&v27 + 1);
  v16.i64[0] = *(a1 + 56);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_208;
  v28[3] = &unk_278969138;
  v28[4] = *(a1 + 32);
  v30 = a2;
  v17 = *(a1 + 64);
  v32 = v27;
  v33 = vzip1q_s64(v16, v17);
  v29 = v17;
  v18 = [v14 drivableSinkWithBookmark:v8 completion:v31 shouldContinue:v28];

  if (a2)
  {
    if (**(a1 + 72) || v42[3] == 0.0)
    {
      goto LABEL_14;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v20 = [*(a1 + 40) bookmark];
    [v20 setFutureCutoff:v19];
    goto LABEL_13;
  }

  v19 = [*(a1 + 40) bookmark];
  v20 = [v19 futureCutoff];
  if (v20)
  {
LABEL_13:

    goto LABEL_14;
  }

  v21 = v42[3];

  if (v21 != 0.0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v42[3]];
    v20 = [*(a1 + 40) bookmark];
    [v20 setFutureCutoff:v19];
    goto LABEL_13;
  }

LABEL_14:

  _Block_object_dispose(&v41, 8);
}

BOOL __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(*(*(a1 + 56) + 8) + 24);
  [v3 timestamp];
  if (v5 >= v6)
  {
    v6 = v5;
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
  v7 = [v3 eventBody];
  if (v7 && ([*(a1 + 32) dequeuedContentIdentifiers], v8 = objc_claimAutoreleasedReturnValue(), -[HVQueue _identifierForContent:](*(a1 + 40), v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, (v10 & 1) == 0))
  {
    v12 = [*(a1 + 48) deferredContentStates];
    v13 = HVDataSourceContentStateKey([*(a1 + 48) dataSource], v7);
    v14 = [v12 objectForKeyedSubscript:v13];

    v11 = 1;
    if (v14)
    {
      v15 = *(a1 + 64);
      if (v15 >= [v14 levelOfService])
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v11;
}

void __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 state])
  {
    v7 = hv_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 64))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = *(*(a1 + 32) + 32);
      v10 = [v5 error];
      v18 = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: dequeueContent: drivableSinkWithBookmark frontfill: %@ error: %@", &v18, 0x20u);
    }

    v11 = *(a1 + 64);
    v12 = [*(a1 + 40) bookmark];
    v13 = v12;
    if (v11 == 1)
    {
      [v12 setFutureBookmark:v6];
    }

    else
    {
      [v12 setPastBookmark:v6];
    }

    v14 = [v5 error];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __95__HVQueue_dequeueContent_dataSourceContentState_minimumLevelOfService_inMemoryItemsOnly_error___block_invoke_208(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = @"NO";
    if (*(a1 + 56))
    {
      v6 = @"YES";
    }

    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: dequeueContent: reading from disk (frontfill: %@)", &v12, 0x16u);
  }

  v7 = [v3 eventBody];

  v8 = *(a1 + 48);
  v9 = *v8;
  *v8 = v7;

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)enqueueContent:(id)content error:(id *)error
{
  contentCopy = content;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__HVQueue_enqueueContent_error___block_invoke;
  v9[3] = &unk_278969098;
  v9[4] = self;
  v7 = contentCopy;
  v10 = v7;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v9];
  LOBYTE(lock) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return lock;
}

void __32__HVQueue_enqueueContent_error___block_invoke(uint64_t a1, void *a2)
{
  v54[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [(HVQueue *)*(a1 + 32) _identifierForContent:?];
  objc_autoreleasePoolPop(v4);
  v6 = objc_autoreleasePoolPush();
  v7 = [v3 dequeuedContentIdentifiers];
  [v7 removeObject:v5];

  v8 = [v3 memoryStorage];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __32__HVQueue_enqueueContent_error___block_invoke_2;
  v43[3] = &unk_278969070;
  v9 = v5;
  v10 = *(a1 + 32);
  v44 = v9;
  v45 = v10;
  v11 = v3;
  v46 = v11;
  [v8 enumerateObjectsUsingBlock:v43];

  objc_autoreleasePoolPop(v6);
  if (![v11 isMemoryStorageFull] || objc_msgSend(v11, "memoryStorageLimit") && (objc_msgSend(v11, "diskStorage"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if ([v11 isMemoryStorageFull])
    {
      v13 = [v11 memoryStorage];
      v14 = [v13 firstObject];

      v15 = hv_default_log_handle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(a1 + 32) + 32);
        if (v14)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = [(HVQueue *)*(a1 + 32) _identifierForContent:v14];
          objc_autoreleasePoolPop(v17);
        }

        else
        {
          v18 = 0;
        }

        *buf = 138412802;
        v50 = v16;
        v51 = 2112;
        v52 = v9;
        v53 = 2112;
        v54[0] = v18;
        _os_log_impl(&dword_2321EC000, v15, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: enqueueContent: writing %@ to memory (and flushing oldest in-memory item %@ to disk to make room)", buf, 0x20u);
        if (v14)
        {
        }
      }

      if (v14)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 32);
        v48 = v14;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        [(HVQueue *)v25 _writeEventsToDisk:v26 guardedData:v11];

        v27 = [v11 memoryStorage];
        [v27 removeObjectAtIndex:0];

        objc_autoreleasePoolPop(v24);
      }

      else
      {
        v32 = hv_default_log_handle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          v38 = *(*(a1 + 32) + 32);
          v39 = [v11 memoryStorage];
          v40 = [v39 count];
          v41 = [v11 memoryStorageLimit];
          v42 = [v11 memoryStorage];
          *buf = 138413059;
          v50 = v38;
          v51 = 2048;
          v52 = v40;
          v53 = 1024;
          LODWORD(v54[0]) = v41;
          WORD2(v54[0]) = 2113;
          *(v54 + 6) = v42;
          _os_log_fault_impl(&dword_2321EC000, v32, OS_LOG_TYPE_FAULT, "HVQueue<%@>: enqueueContent: isMemoryStorageFull==YES but memoryStorage.firstObject was nil (memoryStorage.count=%tu, memoryStorageLimit=%d, memoryStorage=%{private}@)", buf, 0x26u);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          abort();
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = hv_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(a1 + 32) + 32);
        *buf = 138412546;
        v50 = v19;
        v51 = 2112;
        v52 = v9;
        _os_log_impl(&dword_2321EC000, v14, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: enqueueContent: writing %@ to memory", buf, 0x16u);
      }
    }

    v28 = hv_default_log_handle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 40);
      v30 = *(*(a1 + 32) + 32);
      *buf = 138412803;
      v50 = v30;
      v51 = 2112;
      v52 = v9;
      v53 = 2117;
      v54[0] = v29;
      _os_log_impl(&dword_2321EC000, v28, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: enqueueContent: %@ %{sensitive}@", buf, 0x20u);
    }

    v20 = [v11 memoryStorage];
    [v20 addObject:*(a1 + 40)];
    v23 = 1;
  }

  else if ([v11 memoryStorageLimit] || (objc_msgSend(v11, "diskStorage"), v33 = objc_claimAutoreleasedReturnValue(), v33, !v33))
  {
    v20 = hv_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = *(*(a1 + 32) + 32);
      *buf = 138412803;
      v50 = v22;
      v51 = 2112;
      v52 = v9;
      v53 = 2117;
      v54[0] = v21;
      _os_log_impl(&dword_2321EC000, v20, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: enqueueContent: memory storage full, no disk fallback -- dropping item %@! %{sensitive}@", buf, 0x20u);
    }

    v23 = 0;
  }

  else
  {
    v34 = hv_default_log_handle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 40);
      v36 = *(*(a1 + 32) + 32);
      *buf = 138412803;
      v50 = v36;
      v51 = 2112;
      v52 = v9;
      v53 = 2117;
      v54[0] = v35;
      _os_log_impl(&dword_2321EC000, v34, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: enqueueContent: memory storage capacity is zero, immediately falling back to disk for newly enqueued item %@! %{sensitive}@", buf, 0x20u);
    }

    v37 = *(a1 + 32);
    v47 = *(a1 + 40);
    v23 = 1;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    [(HVQueue *)v37 _writeEventsToDisk:v20 guardedData:v11];
  }

  *(*(*(a1 + 48) + 8) + 24) = v23;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [v11 setEnqueuedCount:{objc_msgSend(v11, "enqueuedCount") + 1}];
  }

  [(HVQueue *)*(a1 + 32) _updateMemoryQueueTransactionExtendingTimer:?];

  v31 = *MEMORY[0x277D85DE8];
}

void __32__HVQueue_enqueueContent_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = objc_autoreleasePoolPush();
  v10 = [(HVQueue *)*(a1 + 40) _identifierForContent:v7];
  objc_autoreleasePoolPop(v9);
  LODWORD(v8) = [v8 isEqual:v10];

  if (v8)
  {
    v11 = hv_default_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(*(a1 + 40) + 32);
      v16 = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v12;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_2321EC000, v11, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: enqueueContent: %@ is already in memory queue at position %tu, existing item will be removed for updated item sharing identical identifier", &v16, 0x20u);
    }

    v14 = [*(a1 + 48) memoryStorage];
    [v14 removeObjectAtIndex:a3];

    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_writeEventsToDisk:(void *)disk guardedData:
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  diskCopy = disk;
  selfCopy = self;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    if ([v5 count])
    {
      v8 = hv_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        isa = self[1].isa;
        v10 = [v5 count];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __42__HVQueue__writeEventsToDisk_guardedData___block_invoke;
        v35[3] = &unk_2789690C0;
        v35[4] = self;
        v11 = [v5 _pas_mappedArrayWithTransform:v35];
        *buf = 138412802;
        v38 = isa;
        v39 = 2048;
        v40 = v10;
        v41 = 2112;
        v42 = v11;
        _os_log_impl(&dword_2321EC000, v8, OS_LOG_TYPE_DEFAULT, "HVQueue<%@>: _writeEventsToDisk will write %tu items to disk: %@", buf, 0x20u);
      }

      if (diskCopy)
      {
        [diskCopy[12] setFutureBookmark:0];
      }

      [diskCopy setDiskStorageIsKnownToBeEmpty:0];
      [diskCopy setDiskStorageEventCount:{objc_msgSend(diskCopy, "diskStorageEventCount") + objc_msgSend(v5, "count")}];
      diskContentBloomFilter = [diskCopy diskContentBloomFilter];
      diskStorageSource = [diskCopy diskStorageSource];
      v27 = v7;
      if (diskStorageSource)
      {
        source = diskStorageSource;
      }

      else
      {
        diskStorage = [diskCopy diskStorage];
        source = [diskStorage source];

        [diskCopy setDiskStorageSource:source];
        if (!source)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:sel__writeEventsToDisk_guardedData_ object:self file:@"HVQueue.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"diskStorageSource"}];

          source = 0;
        }
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v28 = v5;
      obj = v5;
      v16 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v32;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v31 + 1) + 8 * i);
            v21 = objc_autoreleasePoolPush();
            [source sendEvent:v20];
            if (diskContentBloomFilter)
            {
              v22 = [(HVQueue *)selfCopy _bundleIdForEvent:v20];
              domainId = [v20 domainId];
              uniqueId = [v20 uniqueId];
              [HVSpotlightDeletionRequest addDeletableContentWithBundleIdentifier:v22 domainIdentifier:domainId uniqueIdentifier:uniqueId toBloomFilter:diskContentBloomFilter];
            }

            objc_autoreleasePoolPop(v21);
          }

          v17 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v17);
      }

      v5 = v28;
      v7 = v27;
    }

    objc_autoreleasePoolPop(v7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__971;
  v10 = __Block_byref_object_dispose__972;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__HVQueue_description__block_invoke;
  v5[3] = &unk_278968FF8;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __22__HVQueue_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(*(a1 + 32) + 32);
  v15 = [v4 memoryStorage];
  v7 = [v15 count];
  v8 = [v4 memoryStorageLimit];
  v9 = [v4 isMemoryStorageFull];
  v10 = [v4 diskStorage];
  v11 = [v4 dequeuedContentIdentifiers];

  v12 = [v5 initWithFormat:@"<HVQueue i:%@ m.count:%tu m.limit:%hi m.full:%d d:%@ dc.count:%tu>", v6, v7, v8, v9, v10, objc_msgSend(v11, "count")];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (HVQueue)initWithIdentifier:(id)identifier biomeStream:(id)stream memoryLimit:(signed __int16)limit contentProtection:(id)protection contentExpectedFromMultipleApps:(BOOL)apps
{
  identifierCopy = identifier;
  streamCopy = stream;
  protectionCopy = protection;
  v29.receiver = self;
  v29.super_class = HVQueue;
  v16 = [(HVQueue *)&v29 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, identifier);
    if (streamCopy)
    {
      objc_initWeak(&location, v17);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __104__HVQueue_initWithIdentifier_biomeStream_memoryLimit_contentProtection_contentExpectedFromMultipleApps___block_invoke;
      v26[3] = &unk_2789695A8;
      objc_copyWeak(&v27, &location);
      v18 = MEMORY[0x238381E60](v26);
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
      v19 = MEMORY[0x238381E60](v18);

      v20 = [[HVQueueGuardedData alloc] initWithBiomeStream:streamCopy memoryLimit:limit memoryStorageFlushCallback:v19];
    }

    else
    {
      v20 = [[HVQueueGuardedData alloc] initWithBiomeStream:limit memoryLimit:0 memoryStorageFlushCallback:?];
      v19 = 0;
    }

    v21 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v20];
    lock = v17->_lock;
    v17->_lock = v21;

    v23 = dispatch_semaphore_create(0);
    contentConsumedSemaphore = v17->_contentConsumedSemaphore;
    v17->_contentConsumedSemaphore = v23;

    objc_storeStrong(&v17->_contentProtection, protection);
    v17->_contentExpectedFromMultipleApps = apps;
  }

  return v17;
}

uint64_t __104__HVQueue_initWithIdentifier_biomeStream_memoryLimit_contentProtection_contentExpectedFromMultipleApps___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __34__HVQueue__flushMemoryQueueToDisk__block_invoke;
    v5[3] = &unk_278969048;
    v5[4] = v2;
    v5[5] = sel__flushMemoryQueueToDisk;
    [v3 runWithLockAcquired:v5];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)uniqueIdentifiersInMemoryStorage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__971;
  v10 = __Block_byref_object_dispose__972;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__HVQueue_TestHelpers__uniqueIdentifiersInMemoryStorage__block_invoke;
  v5[3] = &unk_278969420;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__HVQueue_TestHelpers__uniqueIdentifiersInMemoryStorage__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 memoryStorage];
  v3 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_373];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)uniqueIdentifiersInDiskStorage
{
  v3 = objc_opt_new();
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HVQueue_TestHelpers__uniqueIdentifiersInDiskStorage__block_invoke;
  v7[3] = &unk_2789691B0;
  v5 = v3;
  v8 = v5;
  [(_PASLock *)lock runWithLockAcquired:v7];

  return v5;
}

void __54__HVQueue_TestHelpers__uniqueIdentifiersInDiskStorage__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 diskStorage];
  v4 = [v3 publisherFromStartTime:0.0];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HVQueue_TestHelpers__uniqueIdentifiersInDiskStorage__block_invoke_3;
  v6[3] = &unk_278969738;
  v7 = *(a1 + 32);
  v5 = [v4 sinkWithCompletion:&__block_literal_global_369 receiveInput:v6];
}

void __54__HVQueue_TestHelpers__uniqueIdentifiersInDiskStorage__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 eventBody];
  v3 = [v4 uniqueId];
  [v2 addObject:v3];
}

@end