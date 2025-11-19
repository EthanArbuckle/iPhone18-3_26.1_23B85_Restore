@interface PPEventCache
- (PPEventCache)initWithEventStorage:(id)a3;
- (id)objectForRange:(_NSRange)a3;
- (id)refreshCacheWithChanges:(id)a3;
- (void)_scheduleCacheBackingFileUpdate;
- (void)evictAllEventsNotInRange:(_NSRange)a3;
- (void)removeAllObjects;
- (void)setEventHighlight:(id)a3;
- (void)setExtraSecondsToBackfill:(unint64_t)a3;
@end

@implementation PPEventCache

uint64_t __73__PPEventCache_cachedEventHighlightForEvent_rankingOptions_trialWrapper___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 32) objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)setEventHighlight:(id)a3
{
  v4 = a3;
  v5 = [v4 eventIdentifier];
  if (v5)
  {
    v6 = [PPEventFeatureScore alloc];
    v7 = [v4 features];
    [v4 score];
    v9 = -[PPEventFeatureScore initWithFeatureValues:weightedScore:prominentFeature:](v6, "initWithFeatureValues:weightedScore:prominentFeature:", v7, [v4 prominentFeature], v8);

    data = self->_data;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__PPEventCache_setEventHighlight___block_invoke;
    v13[3] = &unk_2789738F8;
    v14 = v5;
    v15 = v9;
    v11 = v9;
    [(_PASLock *)data runWithLockAcquired:v13];
  }

  else
  {
    v11 = pp_events_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 0;
      _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_DEFAULT, "PPEventCache: trying to set cache for event with nil eventIdentifier", v12, 2u);
    }
  }
}

- (void)evictAllEventsNotInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v39 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  data = self->_data;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __41__PPEventCache_evictAllEventsNotInRange___block_invoke;
  v19 = &unk_278973A68;
  v21 = location;
  v22 = length;
  v20 = v6;
  v8 = v6;
  [(_PASLock *)data runWithLockAcquired:&v16];
  v9 = v8;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v10 = self->_data;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __42__PPEventCache_evictAllEventsNotInRanges___block_invoke;
  v23[3] = &unk_278973AB8;
  v11 = v9;
  v24 = v11;
  v25 = &v31;
  v26 = &v27;
  [(_PASLock *)v10 runWithLockAcquired:v23, v16, v17, v18, v19];
  v12 = pp_events_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = v32[3];
    v15 = v28[3];
    *buf = 134218240;
    v36 = v14;
    v37 = 2048;
    v38 = v15;
    _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "PPEventCache: evictions happened: %tu to %tu events", buf, 0x16u);
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __41__PPEventCache_evictAllEventsNotInRange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__PPEventCache_evictAllEventsNotInRange___block_invoke_2;
  v4[3] = &unk_278973A40;
  v5 = *(a1 + 32);
  [v3 enumerateRangesInRange:*(a1 + 40) options:*(a1 + 48) usingBlock:{0, v4}];
}

void __42__PPEventCache_evictAllEventsNotInRanges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3[2] isEqualToIndexSet:*(a1 + 32)] & 1) == 0)
  {
    objc_storeStrong(v3 + 2, *(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = [v3[1] count];
    v4 = objc_opt_new();
    v5 = v3[1];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __42__PPEventCache_evictAllEventsNotInRanges___block_invoke_2;
    v10 = &unk_278973A90;
    v11 = v3;
    v12 = v4;
    v6 = v4;
    [v5 enumerateObjectsUsingBlock:&v7];
    [v3[1] removeObjectsAtIndexes:{v6, v7, v8, v9, v10}];
    *(*(*(a1 + 48) + 8) + 24) = [v3[1] count];
  }
}

void __42__PPEventCache_evictAllEventsNotInRanges___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 16);
  v13 = v5;
  v7 = [v5 startDate];
  [v7 timeIntervalSinceReferenceDate];
  if (([v6 containsIndex:v8] & 1) == 0)
  {
    v9 = *(*(a1 + 32) + 16);
    v10 = [v13 endDate];
    [v10 timeIntervalSinceReferenceDate];
    LOBYTE(v9) = [v9 containsIndex:v11];

    v12 = v13;
    if (v9)
    {
      goto LABEL_6;
    }

    [*(a1 + 40) addIndex:a3];
    v7 = [v13 eventIdentifier];
    if (v7)
    {
      [*(*(a1 + 32) + 32) removeObjectForKey:v7];
    }
  }

  v12 = v13;
LABEL_6:
}

- (void)removeAllObjects
{
  v3 = pp_events_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "PPEventCache: removing all objects from event cache", v4, 2u);
  }

  [(PPCalendarInternPool *)self->_calendarInternPool clearPool];
  [(_PASLock *)self->_data runWithLockAcquired:&__block_literal_global_86];
}

uint64_t __32__PPEventCache_removeAllObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2;
  [v2 removeAllObjects];
  [v3[2] removeAllIndexes];
  v4 = v3[4];

  return [v4 removeAllObjects];
}

- (id)refreshCacheWithChanges:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v64 = self;
  [(PPCalendarInternPool *)self->_calendarInternPool clearPool];
  v5 = objc_opt_new();
  v60 = objc_opt_new();
  v6 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_64];
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_69];
  v9 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_71];
  v58 = [v7 initWithObjects:v8 forKeys:v9];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v10)
  {
    v11 = *v83;
    do
    {
      v12 = 0;
      do
      {
        if (*v83 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v82 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (v13)
        {
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v15 = [v13 ownerID];
            __40__PPEventCache_refreshCacheWithChanges___block_invoke(v15, v5);

            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v13;
            if ([v16 changeType] == 2 || (storage = v64->_storage, objc_msgSend(v16, "calendarID"), v18 = objc_claimAutoreleasedReturnValue(), LODWORD(storage) = -[PPEventStorage shouldIgnoreEventsOnCalendarWithObjectID:](storage, "shouldIgnoreEventsOnCalendarWithObjectID:", v18), v18, !storage))
            {
              v27 = [v16 changeType];
              if (v27 != 2)
              {
                if (v27 != 1)
                {
                  if (v27)
                  {
                    goto LABEL_36;
                  }

                  v28 = [v16 originalItemID];
                  v29 = v28 == 0;

                  if (!v29)
                  {
                    v30 = [v16 originalItemID];
                    __40__PPEventCache_refreshCacheWithChanges___block_invoke(v30, v5);
                  }
                }

                v20 = [v16 changedObjectID];
                __40__PPEventCache_refreshCacheWithChanges___block_invoke(v20, v5);
                goto LABEL_35;
              }

              v31 = [v16 changedObjectID];
              __40__PPEventCache_refreshCacheWithChanges___block_invoke(v31, v60);

              v32 = [v16 originalItemID];
              LOBYTE(v31) = v32 == 0;

              if ((v31 & 1) == 0)
              {
                v20 = [v16 originalItemID];
                __40__PPEventCache_refreshCacheWithChanges___block_invoke(v20, v5);
                goto LABEL_35;
              }
            }

            else
            {
              v19 = pp_events_log_handle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v16;
                _os_log_debug_impl(&dword_23224A000, v19, OS_LOG_TYPE_DEBUG, "PPEventChange: filtered out subscribed calendar event change %@", buf, 0xCu);
              }

              v20 = [v16 changedObjectID];
              __40__PPEventCache_refreshCacheWithChanges___block_invoke(v20, v60);
LABEL_35:
            }

LABEL_36:

            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v21 = v13;
            if ([v21 changeType] == 2)
            {
              goto LABEL_31;
            }

            v22 = v64->_storage;
            v23 = [v21 ownerID];
            v24 = [v58 objectForKeyedSubscript:v23];
            LODWORD(v22) = [(PPEventStorage *)v22 shouldIgnoreEventsOnCalendarWithObjectID:v24];

            if (!v22)
            {
LABEL_31:
              v26 = [v21 ownerID];
              __40__PPEventCache_refreshCacheWithChanges___block_invoke(v26, v5);
            }

            else
            {
              v25 = pp_events_log_handle();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v21;
                _os_log_debug_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEBUG, "PPEventChange: filtered out subscribed calendar event participant change %@", buf, 0xCu);
              }

              v26 = [v21 changedObjectID];
              __40__PPEventCache_refreshCacheWithChanges___block_invoke(v26, v60);
            }
          }
        }

        else
        {
          objc_opt_class();
          objc_opt_class();
          objc_opt_class();
          objc_opt_class();
        }

LABEL_10:
        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v33 = [obj countByEnumeratingWithState:&v82 objects:v87 count:16];
      v10 = v33;
    }

    while (v33);
  }

  v34 = objc_autoreleasePoolPush();
  v35 = [v60 setByAddingObjectsFromSet:v5];
  objc_autoreleasePoolPop(v34);
  v36 = v35;
  if (v64)
  {
    data = v64->_data;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __36__PPEventCache__deleteCachedEvents___block_invoke;
    v89 = &unk_278973A18;
    v38 = v36;
    *&v90 = v36;
    [(_PASLock *)data runWithLockAcquired:buf];

    v36 = v38;
  }

  v57 = v36;

  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__6604;
  v80 = __Block_byref_object_dispose__6605;
  v81 = 0;
  v39 = v64->_data;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __40__PPEventCache_refreshCacheWithChanges___block_invoke_77;
  v75[3] = &unk_2789739F0;
  v75[4] = &v76;
  [(_PASLock *)v39 runWithLockAcquired:v75];
  v63 = objc_opt_new();
  v40 = [v5 count];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v61 = v5;
  v41 = [v61 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v41)
  {
    v42 = *v72;
    do
    {
      v43 = 0;
      v59 = v40 - v41;
      do
      {
        if (*v72 != v42)
        {
          objc_enumerationMutation(v61);
        }

        v44 = *(*(&v71 + 1) + 8 * v43);
        v45 = objc_autoreleasePoolPush();
        v46 = v64->_storage;
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __40__PPEventCache_refreshCacheWithChanges___block_invoke_2_80;
        v68[3] = &unk_2789763B0;
        v68[4] = v64;
        v68[5] = v44;
        v70 = &v76;
        v69 = v63;
        [(PPEventStorage *)v46 runBlockWithPurgerDisabled:v68];
        if (!(v40 % 0xA))
        {
          [(PPEventStorage *)v64->_storage attemptToPurgeImmediately];
        }

        objc_autoreleasePoolPop(v45);
        ++v43;
        --v40;
      }

      while (v41 != v43);
      v41 = [v61 countByEnumeratingWithState:&v71 objects:v86 count:16];
      v40 = v59;
    }

    while (v41);
  }

  v47 = objc_opt_new();
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __40__PPEventCache_refreshCacheWithChanges___block_invoke_4_83;
  v65[3] = &unk_278979190;
  v48 = v47;
  v66 = v48;
  v67 = v64;
  v49 = [v63 _pas_mappedArrayWithTransform:v65];

  v50 = pp_events_log_handle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = v77[5];
    *buf = 138413059;
    *&buf[4] = v51;
    *&buf[12] = 2112;
    *&buf[14] = v57;
    *&buf[22] = 2117;
    v89 = v49;
    LOWORD(v90) = 2112;
    *(&v90 + 2) = obj;
    _os_log_impl(&dword_23224A000, v50, OS_LOG_TYPE_DEFAULT, "PPEventCache: dateInterval for cache: %@, affected object IDs: %@, resulting PPEvents: %{sensitive}@, changes %@", buf, 0x2Au);
  }

  v52 = v49;
  if ([v52 count])
  {
    v53 = v64->_data;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __37__PPEventCache__refreshCachedEvents___block_invoke;
    v89 = &unk_2789738F8;
    *&v90 = v52;
    *(&v90 + 1) = v64;
    [(_PASLock *)v53 runWithLockAcquired:buf];
  }

  v54 = [MEMORY[0x277D42648] tupleWithFirst:v52 second:v57];

  _Block_object_dispose(&v76, 8);
  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

void __40__PPEventCache_refreshCacheWithChanges___block_invoke(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if ([v4 entityType] == 2)
  {
    [v3 addObject:v4];
  }
}

void __40__PPEventCache_refreshCacheWithChanges___block_invoke_77(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8[2] count])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v8[2], "firstIndex")}];
    v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v8[2], "lastIndex")}];
    v5 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v3 endDate:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __40__PPEventCache_refreshCacheWithChanges___block_invoke_2_80(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v8[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PPEventCache_refreshCacheWithChanges___block_invoke_3_82;
  v6[3] = &unk_278979168;
  v7 = *(a1 + 48);
  [v2 enumerateEventsFromEKObjectIDs:v3 expandingRecurrencesInRange:v4 usingBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __37__PPEventCache__refreshCachedEvents___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pp_events_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v3[1] count];
    v13 = 134217984;
    v14 = v10;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPEventCache: cached event count before refresh: %tu", &v13, 0xCu);
  }

  v5 = pp_events_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v13 = 138739971;
    v14 = v11;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "PPEventCache: refreshing events: %{sensitive}@", &v13, 0xCu);
  }

  v6 = mergeDeduping(v3[1], *(a1 + 32));
  v7 = v3[1];
  v3[1] = v6;

  v8 = pp_events_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3[1] count];
    v13 = 134217984;
    v14 = v12;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPEventCache: cached event count after refresh: %tu", &v13, 0xCu);
  }

  [(PPEventCache *)*(a1 + 40) _scheduleCacheBackingFileUpdate];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleCacheBackingFileUpdate
{
  if (a1)
  {
    v2 = atomic_exchange((a1 + 32), 1u);
    v3 = pp_events_log_handle();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPEventCache: cache backing plist file update already scheduled", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPEventCache: scheduling cache backing plist file update", buf, 2u);
      }

      v5 = os_transaction_create();
      objc_initWeak(buf, a1);
      v6 = [MEMORY[0x277D425A0] dispatchTimeWithSecondsFromNow:0.5];
      v7 = *(a1 + 40);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __47__PPEventCache__scheduleCacheBackingFileUpdate__block_invoke;
      v9[3] = &unk_2789791D8;
      objc_copyWeak(&v11, buf);
      v10 = v5;
      v8 = v5;
      dispatch_after(v6, v7, v9);

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }
}

void __47__PPEventCache__scheduleCacheBackingFileUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__PPEventCache__scheduleCacheBackingFileUpdate__block_invoke_2;
    v5[3] = &unk_2789738F8;
    v6 = WeakRetained;
    v7 = *(a1 + 32);
    [v4 runWithLockAcquired:v5];
  }
}

id __47__PPEventCache__scheduleCacheBackingFileUpdate__block_invoke_2(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(v2 + 16) runWithLockAcquired:&__block_literal_global_6635];
  }

  v3 = *(a1 + 40);
  return objc_opt_self();
}

void __50__PPEventCache__updateCacheBackingFileImmediately__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2[1] _pas_mappedArrayWithTransform:&__block_literal_global_50];
  if ([v2[5] isEqual:v3])
  {
    v4 = pp_events_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "PPEventCache: cache backing plist file already up to date";
LABEL_6:
      _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else
  {
    v6 = [MEMORY[0x277D425D8] lazyPlistArrayWithPlistArray:v3];
    v7 = v2[5];
    v2[5] = v6;

    v4 = pp_events_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "PPEventCache: wrote new cache backing plist file";
      goto LABEL_6;
    }
  }

  v8 = v2[5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__PPEventCache__updateCacheBackingFileImmediately__block_invoke_52;
  v13[3] = &unk_278973960;
  v14 = v2;
  v9 = v2;
  v10 = [v8 _pas_mappedArrayWithIndexedTransform:v13];
  v11 = [v10 mutableCopy];
  v12 = v2[1];
  v2[1] = v11;
}

id __50__PPEventCache__updateCacheBackingFileImmediately__block_invoke_52(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc(MEMORY[0x277D3A390]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  v8 = [*(v6 + 8) objectAtIndexedSubscript:a3];
  v9 = [v8 calendar];
  v10 = [v5 initWithIndex:a3 inBackingPlists:v7 calendar:v9];

  return v10;
}

void __40__PPEventCache_refreshCacheWithChanges___block_invoke_3_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D3A390] deferredAllocationEventFromEKEvent:a2];
  [v2 addObject:v3];
}

void __36__PPEventCache__deleteCachedEvents___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8[1] count];
  if (v3)
  {
    v4 = v3 - 1;
    do
    {
      v5 = [v8[1] objectAtIndexedSubscript:v4];
      v6 = *(a1 + 32);
      v7 = [v5 objectID];
      LODWORD(v6) = [v6 containsObject:v7];

      if (v6)
      {
        [v8[1] removeObjectAtIndex:v4];
      }

      --v4;
    }

    while (v4 != -1);
  }
}

BOOL __40__PPEventCache_refreshCacheWithChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 calendarID];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)objectForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v25 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  data = self->_data;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __31__PPEventCache_objectForRange___block_invoke;
  v18 = &unk_278973988;
  v21 = location;
  v22 = length;
  v19 = self;
  v8 = v6;
  v20 = v8;
  [(_PASLock *)data runWithLockAcquired:&v15];
  v9 = pp_events_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    *buf = 134217984;
    v24 = v10;
    _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPEventCache: cache returning %tu events", buf, 0xCu);
  }

  v11 = v20;
  v12 = v8;

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void __31__PPEventCache_objectForRange___block_invoke(uint64_t a1, void *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{*(a1 + 48), *(a1 + 56)}];
  [v4 removeIndexes:v3[2]];
  v5 = [v4 firstIndex];
  v58 = v4;
  v6 = [v4 lastIndex];
  v7 = v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL;
  v59 = v3;
  if (!v7)
  {
    v8 = v6;
    v9 = pp_events_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v3[3];
      *buf = 134218496;
      v79 = v5;
      v80 = 2048;
      v81 = v8;
      v82 = 2048;
      v83 = v10;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPEventCache: backfilling from %tu to %tu + %tu", buf, 0x20u);
    }

    v11 = v3[3] + v8 - v5;
    v12 = objc_autoreleasePoolPush();
    v13 = objc_opt_new();
    v14 = *(*(a1 + 32) + 8);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __31__PPEventCache_objectForRange___block_invoke_55;
    v75[3] = &unk_278979168;
    v76 = v13;
    v15 = v13;
    v56 = v11;
    v57 = v5;
    [v14 enumerateEventsInRange:v5 usingBlock:{v11 + 1, v75}];
    v16 = objc_opt_new();
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __31__PPEventCache_objectForRange___block_invoke_2;
    v72[3] = &unk_278979190;
    v17 = *(a1 + 32);
    v73 = v16;
    v74 = v17;
    v18 = v16;
    v19 = [v15 _pas_mappedArrayWithTransform:v72];

    objc_autoreleasePoolPop(v12);
    if ([v19 count])
    {
      [*(*(a1 + 32) + 8) attemptToPurgeImmediately];
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v68 objects:v92 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v69;
      v61 = v20;
      v62 = a1;
      v60 = *v69;
      do
      {
        v24 = 0;
        v63 = v22;
        do
        {
          if (*v69 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v68 + 1) + 8 * v24);
          v26 = pp_default_log_handle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v25 objectID];
            v28 = [v25 title];
            v29 = [v25 calendar];
            v30 = [v29 title];
            v31 = [v25 startDate];
            v32 = [v25 endDate];
            v33 = [v25 availability];
            v34 = [v25 attendees];
            *buf = 138544899;
            v79 = v27;
            v80 = 2117;
            v81 = v28;
            v82 = 2117;
            v83 = v30;
            v84 = 2113;
            v85 = v31;
            v86 = 2113;
            v87 = v32;
            v88 = 2048;
            v89 = v33;
            v90 = 2117;
            v91 = v34;
            _os_log_impl(&dword_23224A000, v26, OS_LOG_TYPE_DEFAULT, "PPEventCache: backfilled event: o:%{public}@ t:'%{sensitive}@' c:'%{sensitive}@' s:%{private}@ e:%{private}@ b:%ld a:%{sensitive}@", buf, 0x48u);

            v23 = v60;
            v22 = v63;

            v20 = v61;
            a1 = v62;
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v68 objects:v92 count:16];
      }

      while (v22);
    }

    v35 = pp_events_log_handle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v20 count];
      *buf = 134217984;
      v79 = v36;
      _os_log_impl(&dword_23224A000, v35, OS_LOG_TYPE_DEFAULT, "PPEventCache: backfilling %tu events", buf, 0xCu);
    }

    v3 = v59;
    [v59[2] addIndexesInRange:{v57, v56 + 1}];
    if ([v20 count])
    {
      v37 = mergeDeduping(v59[1], v20);
      v38 = v59[1];
      v59[1] = v37;

      [(PPEventCache *)*(a1 + 32) _scheduleCacheBackingFileUpdate];
    }

    v39 = pp_events_log_handle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v59[1] count];
      *buf = 134217984;
      v79 = v40;
      _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, "PPEventCache: cached event count after backfill: %tu", buf, 0xCu);
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v41 = v3[1];
  v42 = [v41 countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v65;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v65 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v64 + 1) + 8 * i);
        v47 = [v46 startDate];
        [v47 timeIntervalSinceReferenceDate];
        v49 = v48;

        v50 = [v46 endDate];
        v51 = [v46 startDate];
        [v50 timeIntervalSinceDate:v51];
        v53 = v52;

        if (v49 < 0.0 || v53 < 0.0)
        {
          v54 = pp_events_log_handle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_23224A000, v54, OS_LOG_TYPE_ERROR, "PPEventCache: Candidate event range is invalid", buf, 2u);
          }
        }

        else
        {
          v94.location = v49;
          v94.length = v53;
          if (NSIntersectionRange(*(a1 + 48), v94).length)
          {
            [*(a1 + 40) addObject:v46];
          }
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v43);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void __31__PPEventCache_objectForRange___block_invoke_55(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277D3A390] deferredAllocationEventFromEKEvent:v7];
  objc_autoreleasePoolPop(v4);
  v6 = _Block_copy(v5);

  [v3 addObject:v6];
}

- (void)setExtraSecondsToBackfill:(unint64_t)a3
{
  data = self->_data;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PPEventCache_setExtraSecondsToBackfill___block_invoke;
  v4[3] = &__block_descriptor_40_e33_v16__0__PPEventCacheGuardedData_8l;
  v4[4] = a3;
  [(_PASLock *)data runWithLockAcquired:v4];
}

- (PPEventCache)initWithEventStorage:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PPEventCache.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"eventStorage"}];
  }

  v33.receiver = self;
  v33.super_class = PPEventCache;
  v7 = [(PPEventCache *)&v33 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_storage, a3);
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    v11 = v9[1];
    v9[1] = v10;

    v12 = objc_opt_new();
    v13 = v9[2];
    v9[2] = v12;

    v9[3] = 3600;
    v14 = objc_opt_new();
    v15 = v9[4];
    v9[4] = v14;

    v16 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v9];
    data = v8->_data;
    v8->_data = v16;

    v18 = objc_opt_new();
    calendarInternPool = v8->_calendarInternPool;
    v8->_calendarInternPool = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_UTILITY, 0);
    v22 = dispatch_queue_create("com.apple.proactive.PPEventCache", v21);
    queue = v8->_queue;
    v8->_queue = v22;

    v24 = dispatch_source_create(MEMORY[0x277D85D18], 0, 7uLL, v8->_queue);
    memoryPressureSource = v8->_memoryPressureSource;
    v8->_memoryPressureSource = v24;

    objc_initWeak(&location, v8);
    v26 = v8->_memoryPressureSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__PPEventCache_initWithEventStorage___block_invoke;
    handler[3] = &unk_2789791D8;
    objc_copyWeak(&v31, &location);
    v30 = v8;
    dispatch_source_set_event_handler(v26, handler);
    dispatch_resume(v8->_memoryPressureSource);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __37__PPEventCache_initWithEventStorage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    WeakRetained[7] = dispatch_source_get_data(WeakRetained[6]);
    WeakRetained = v9;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3[7];
      switch(v4)
      {
        case 4:
          v5 = pp_events_log_handle();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *v10 = 0;
            v7 = "PPEventCache: memory pressure critical";
            v8 = v10;
            goto LABEL_13;
          }

          break;
        case 2:
          v5 = pp_events_log_handle();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            v11 = 0;
            v7 = "PPEventCache: memory pressure warning";
            v8 = &v11;
LABEL_13:
            _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, v7, v8, 2u);
          }

          break;
        case 1:
          v5 = pp_events_log_handle();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPEventCache: memory pressure normal", buf, 2u);
          }

          v6 = 3600;
          goto LABEL_15;
        default:
          goto LABEL_16;
      }

      v6 = 0;
LABEL_15:

      [v3 setExtraSecondsToBackfill:v6];
      WeakRetained = v9;
    }
  }

LABEL_16:
}

@end