@interface TSCH3DResourceCache
- (BOOL)hasEnoughFreeMemoryOfBytes:(unint64_t)a3;
- (TSCH3DResourceCache)init;
- (id)debug_countedClasses;
- (id)debug_countedMemory;
- (id)debug_details;
- (id)debug_stats;
- (id)debug_usageCounts;
- (id)flushAllResourcesForContext:(id)a3;
- (id)flushResources:(id)a3 context:(id)a4;
- (id)handleForKey:(id)a3;
- (id)keyForKey:(id)a3;
- (id)keyForLoader:(id)a3 resource:(id)a4 virtualScreen:(int64_t)a5;
- (id)p_flushResourceKeys:(id)a3 context:(id)a4;
- (id)p_keysForResource:(id)a3;
- (id)p_keysForResources:(id)a3;
- (id)p_unretainedResourcesFromResources:(id)a3;
- (unint64_t)memoryUsedForResource:(id)a3;
- (void)dealloc;
- (void)flushMemoryForResources:(id)a3;
- (void)garbageCollectAllResourcesForContext:(id)a3;
- (void)garbageCollectResources:(id)a3 context:(id)a4;
- (void)p_flushHandleForKey:(id)a3 context:(id)a4;
- (void)p_removeHandleForKey:(id)a3;
- (void)setBytesUploaded:(unint64_t)a3 forKey:(id)a4;
- (void)setHandle:(id)a3 forKey:(id)a4;
- (void)unprotectResource:(id)a3;
- (void)updateUsageCountForResourceSet:(id)a3 fromPreviousResourceSet:(id)a4;
@end

@implementation TSCH3DResourceCache

- (TSCH3DResourceCache)init
{
  v30.receiver = self;
  v30.super_class = TSCH3DResourceCache;
  v2 = [(TSCH3DResourceCache *)&v30 init];
  if (v2)
  {
    if (byte_280A46430 == 1)
    {
      v3 = objc_opt_class();
      NSLog(&cfstr_PInit.isa, v3, v2);
    }

    v4 = objc_alloc_init(MEMORY[0x277D81278]);
    handles = v2->_handles;
    v2->_handles = v4;

    v6 = [TSCH3DDictionaryOfSet alloc];
    v7 = objc_opt_class();
    v12 = objc_msgSend_initWithMutableDictionaryClass_(v6, v8, v9, v10, v11, v7);
    resourceKeyedEntries = v2->_resourceKeyedEntries;
    v2->_resourceKeyedEntries = v12;

    v14 = objc_alloc_init(MEMORY[0x277CCA940]);
    protectedResources = v2->_protectedResources;
    v2->_protectedResources = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    memoryUsage = v2->_memoryUsage;
    v2->_memoryUsage = v16;

    v22 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v18, v19, v20, v21);
    v2->_memoryLimitInBytes = objc_msgSend_resourceCacheMemoryLimitInBytes(v22, v23, v24, v25, v26);

    v27 = objc_alloc_init(MEMORY[0x277CCA940]);
    usageCounts = v2->_usageCounts;
    v2->_usageCounts = v27;
  }

  return v2;
}

- (void)dealloc
{
  if (byte_280A46430 == 1)
  {
    v6 = objc_opt_class();
    NSLog(&cfstr_PDealloc.isa, v6, self);
  }

  if (objc_msgSend_count(self->_handles, a2, v2, v3, v4))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "[TSCH3DResourceCache dealloc]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 200, 0, "cache is not cleaned before destructed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26.receiver = self;
  v26.super_class = TSCH3DResourceCache;
  [(TSCH3DResourceCache *)&v26 dealloc];
}

- (BOOL)hasEnoughFreeMemoryOfBytes:(unint64_t)a3
{
  memoryUsedInBytes = self->_memoryUsedInBytes;
  v9 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, a2, v3, v4, v5);
  shouldHandleResourceCacheOutOfMemory = objc_msgSend_shouldHandleResourceCacheOutOfMemory(v9, v10, v11, v12, v13);

  return !shouldHandleResourceCacheOutOfMemory || memoryUsedInBytes + a3 <= self->_memoryLimitInBytes;
}

- (id)keyForLoader:(id)a3 resource:(id)a4 virtualScreen:(int64_t)a5
{
  v9 = objc_msgSend_keyWithLoader_resource_virtualScreen_(TSCH3DResourceCacheKey, a2, v5, v6, v7, a3, a4, a5);
  v14 = objc_msgSend_keyForKey_(self, v10, v11, v12, v13, v9);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16;

  return v16;
}

- (id)keyForKey:(id)a3
{
  v6 = objc_msgSend_objectForKey_(self->_handles, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_first(v6, v7, v8, v9, v10);

  return v11;
}

- (id)handleForKey:(id)a3
{
  v6 = objc_msgSend_objectForKey_(self->_handles, a2, v3, v4, v5, a3);
  v11 = objc_msgSend_second(v6, v7, v8, v9, v10);

  return v11;
}

- (void)setBytesUploaded:(unint64_t)a3 forKey:(id)a4
{
  v56 = a4;
  v11 = objc_msgSend_keyForKey_(self, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKey_(self->_memoryUsage, v12, v13, v14, v15, v11);
  v21 = objc_msgSend_unsignedIntValue(v16, v17, v18, v19, v20);
  if (v21 != a3)
  {
    memoryUsage = self->_memoryUsage;
    self->_memoryUsedInBytes -= v21;
    v27 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v22, v23, v24, v25, a3);
    objc_msgSend_setObject_forKey_(memoryUsage, v28, v29, v30, v31, v27, v11);

    v32 = self->_memoryUsedInBytes + a3;
    self->_memoryUsedInBytes = v32;
    if (v32 > self->_peakMemoryUsedInBytes)
    {
      self->_peakMemoryUsedInBytes = v32;
      self->_needToLogPeakMemory = 1;
    }
  }

  if (byte_280A46430 == 1)
  {
    v33 = objc_opt_class();
    v34 = NSStringFromSelector(a2);
    objc_msgSend_debug_totalMemoryUsageMB(self, v35, v36, v37, v38);
    v40 = *&v39;
    v44 = objc_msgSend_resource(v11, v41, v39, v42, v43);
    v45 = objc_opt_class();
    v50 = objc_msgSend_count(self->_handles, v46, v47, v48, v49);
    v55 = objc_msgSend_resource(v11, v51, v52, v53, v54);
    NSLog(&cfstr_PMemoryFMbReso.isa, v33, self, v34, v40, v45, a3, v50, v55);
  }
}

- (void)setHandle:(id)a3 forKey:(id)a4
{
  v71 = a3;
  v7 = a4;
  v12 = objc_msgSend_objectForKey_(self->_handles, v8, v9, v10, v11, v7);

  if (v12)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DResourceCache setHandle:forKey:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 260, 0, "expected nil value for '%{public}s'", "[_handles objectForKey:key]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  handles = self->_handles;
  v33 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v13, v14, v15, v16, v7, v71);
  objc_msgSend_setObject_forKey_(handles, v34, v35, v36, v37, v33, v7);

  resourceKeyedEntries = self->_resourceKeyedEntries;
  v43 = objc_msgSend_resource(v7, v39, v40, v41, v42);
  objc_msgSend_addObject_forKey_(resourceKeyedEntries, v44, v45, v46, v47, v7, v43);

  if (byte_280A46430 == 1)
  {
    v48 = objc_opt_class();
    v49 = NSStringFromSelector(a2);
    objc_msgSend_debug_totalMemoryUsageMB(self, v50, v51, v52, v53);
    v55 = *&v54;
    v59 = objc_msgSend_resource(v7, v56, v54, v57, v58);
    v60 = objc_opt_class();
    v65 = objc_msgSend_count(self->_handles, v61, v62, v63, v64);
    v70 = objc_msgSend_resource(v7, v66, v67, v68, v69);
    NSLog(&cfstr_PMemoryFMbReso_0.isa, v48, self, v49, v55, v60, v65, v70);
  }
}

- (void)updateUsageCountForResourceSet:(id)a3 fromPreviousResourceSet:(id)a4
{
  v15 = a3;
  v6 = a4;
  objc_msgSend_unionSet_(self->_usageCounts, v7, v8, v9, v10, v15);
  objc_msgSend_minusSet_(self->_usageCounts, v11, v12, v13, v14, v6);
}

- (void)p_removeHandleForKey:(id)a3
{
  v41 = a3;
  objc_msgSend_removeObjectForKey_(self->_handles, v5, v6, v7, v8);
  resourceKeyedEntries = self->_resourceKeyedEntries;
  v14 = objc_msgSend_resource(v41, v10, v11, v12, v13);
  objc_msgSend_removeObject_forKey_(resourceKeyedEntries, v15, v16, v17, v18, v41, v14);

  if (byte_280A46430 == 1)
  {
    v23 = objc_opt_class();
    v24 = NSStringFromSelector(a2);
    v29 = objc_msgSend_count(self->_handles, v25, v26, v27, v28);
    NSLog(&cfstr_PTotalLu.isa, v23, self, v24, v29);
  }

  v30 = objc_msgSend_objectForKey_(self->_memoryUsage, v19, v20, v21, v22, v41);
  v35 = objc_msgSend_unsignedIntValue(v30, v31, v32, v33, v34);
  memoryUsage = self->_memoryUsage;
  self->_memoryUsedInBytes -= v35;
  objc_msgSend_removeObjectForKey_(memoryUsage, v37, v38, v39, v40, v41);
}

- (id)p_keysForResource:(id)a3
{
  v6 = objc_msgSend_objectsForKey_(self->_resourceKeyedEntries, a2, v3, v4, v5, a3);

  return v6;
}

- (id)p_keysForResources:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v4;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, v13, v14, &v34, v38, 16);
  if (v16)
  {
    v20 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v10);
        }

        v22 = objc_msgSend_p_keysForResource_(self, v15, v17, v18, v19, *(*(&v34 + 1) + 8 * i), v34);
        v27 = v22;
        if (v22)
        {
          v28 = objc_msgSend_allObjects(v22, v23, v24, v25, v26);
          objc_msgSend_addObjectsFromArray_(v9, v29, v30, v31, v32, v28);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, v17, v18, v19, &v34, v38, 16);
    }

    while (v16);
  }

  return v9;
}

- (void)p_flushHandleForKey:(id)a3 context:(id)a4
{
  v70 = a3;
  v6 = a4;
  v12 = objc_msgSend_handleForKey_(self, v7, v8, v9, v10, v70);
  if (!v70)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DResourceCache p_flushHandleForKey:context:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 307, 0, "invalid nil value for '%{public}s'", "key");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if (!v12)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DResourceCache p_flushHandleForKey:context:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 308, 0, "invalid nil value for '%{public}s'", "handle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  if ((objc_msgSend_canFlushResourceHandles(v6, v11, v13, v14, v15) & 1) == 0)
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCH3DResourceCache p_flushHandleForKey:context:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v57, v58, v59, v60, v51, v56, 310, 0, "context must be able to flush handles when we get here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
  }

  v65 = objc_msgSend_loader(v70, v46, v47, v48, v49);
  objc_msgSend_destroyHandle_insideContext_(v65, v66, v67, v68, v69, v12, v6);
}

- (id)p_flushResourceKeys:(id)a3 context:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v79 = v6;
  if (objc_msgSend_count(v6, v8, v9, v10, v11))
  {
    if (byte_280A46430 == 1)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromSelector(a2);
      v22 = objc_msgSend_debug_string(self, v18, v19, v20, v21);
      NSLog(&cfstr_PPreFlush.isa, v16, self, v17, v22);
    }

    v23 = objc_msgSend_set(MEMORY[0x277CBEB58], v12, v13, v14, v15);
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v24 = v6;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, v26, v27, v28, &v80, v84, 16);
    if (v30)
    {
      v34 = *v81;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v81 != v34)
          {
            objc_enumerationMutation(v24);
          }

          v36 = *(*(&v80 + 1) + 8 * i);
          v37 = objc_msgSend_resource(v36, v29, v31, v32, v33);
          isProtectedResource = objc_msgSend_isProtectedResource_(self, v38, v39, v40, v41, v37);

          if (isProtectedResource)
          {
            v47 = objc_msgSend_resource(v36, v43, v44, v45, v46);
            objc_msgSend_addObject_(v23, v48, v49, v50, v51, v47);
          }

          else
          {
            objc_msgSend_p_flushHandleForKey_context_(self, v43, v44, v45, v46, v36, v7);
            objc_msgSend_p_removeHandleForKey_(self, v52, v53, v54, v55, v36);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v29, v31, v32, v33, &v80, v84, 16);
      }

      while (v30);
    }

    if (byte_280A46430 == 1)
    {
      v56 = NSStringFromSelector(a2);
      v61 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v57, v58, v59, v60);
      isMainThread = objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v62, v63, v64, v65);
      v71 = objc_msgSend_count(v24, v67, v68, v69, v70);
      v76 = objc_msgSend_debug_string(self, v72, v73, v74, v75);
      NSLog(&cfstr_ThreadPMainLdR.isa, self, v56, v61, isMainThread, v71, v76);
    }
  }

  else
  {
    v23 = objc_msgSend_set(MEMORY[0x277CBEB98], v12, v13, v14, v15);
  }

  return v23;
}

- (id)flushAllResourcesForContext:(id)a3
{
  v5 = a3;
  v11 = objc_msgSend_p_allResourceKeys(self, v6, v7, v8, v9);
  if (byte_280A46430 == 1)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    v21 = objc_msgSend_count(v11, v17, v18, v19, v20);
    NSLog(&cfstr_PLu.isa, v15, self, v16, v21);
  }

  v22 = objc_msgSend_p_flushResourceKeys_context_(self, v10, v12, v13, v14, v11, v5);

  return v22;
}

- (id)flushResources:(id)a3 context:(id)a4
{
  v7 = a3;
  v9 = a4;
  if (byte_280A46430 == 1)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromSelector(a2);
    v19 = objc_msgSend_count(v7, v15, v16, v17, v18);
    NSLog(&cfstr_PLu.isa, v13, self, v14, v19);
  }

  v20 = objc_msgSend_p_keysForResources_(self, v8, v10, v11, v12, v7);
  v25 = objc_msgSend_p_flushResourceKeys_context_(self, v21, v22, v23, v24, v20, v9);

  return v25;
}

- (void)flushMemoryForResources:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, v5, v6, v7, &v16, v20, 16);
  if (v9)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if (objc_msgSend_caching(v15, v8, v10, v11, v12, v16) == 2)
        {
          objc_msgSend_flushMemory(v15, v8, v10, v11, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, v10, v11, v12, &v16, v20, 16);
    }

    while (v9);
  }
}

- (id)p_unretainedResourcesFromResources:(id)a3
{
  v7 = objc_msgSend_mutableCopy(a3, a2, v3, v4, v5);
  objc_msgSend_minusSet_(v7, v8, v9, v10, v11, self->_usageCounts);

  return v7;
}

- (void)garbageCollectResources:(id)a3 context:(id)a4
{
  v34 = a3;
  v8 = a4;
  if (byte_280A46430 == 1)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    v18 = objc_msgSend_count(v34, v14, v15, v16, v17);
    NSLog(&cfstr_PLu.isa, v12, self, v13, v18);
  }

  v19 = objc_msgSend_p_unretainedResourcesFromResources_(self, v7, v9, v10, v11, v34);
  v24 = objc_msgSend_p_keysForResources_(self, v20, v21, v22, v23, v19);
  v29 = objc_msgSend_p_flushResourceKeys_context_(self, v25, v26, v27, v28, v24, v8);

  objc_msgSend_p_logForAnalyticsIfNecessary(self, v30, v31, v32, v33);
}

- (void)garbageCollectAllResourcesForContext:(id)a3
{
  v27 = a3;
  v5 = MEMORY[0x277CBEB98];
  v10 = objc_msgSend_allKeys(self->_resourceKeyedEntries, v6, v7, v8, v9);
  v15 = objc_msgSend_setWithArray_(v5, v11, v12, v13, v14, v10);

  if (byte_280A46430 == 1)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromSelector(a2);
    v26 = objc_msgSend_count(v15, v22, v23, v24, v25);
    NSLog(&cfstr_PLu.isa, v20, self, v21, v26);
  }

  objc_msgSend_garbageCollectResources_context_(self, v16, v17, v18, v19, v15, v27);
}

- (void)unprotectResource:(id)a3
{
  v27 = a3;
  if ((objc_msgSend_containsObject_(self->_protectedResources, v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "[TSCH3DResourceCache unprotectResource:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DResourceCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v13, v18, 404, 0, "resource not protected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  objc_msgSend_removeObject_(self->_protectedResources, v8, v9, v10, v11, v27);
}

- (unint64_t)memoryUsedForResource:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_p_keysForResource_(self, a2, v3, v4, v5, a3);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v7 = v33 = 0u;
  v12 = 0;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, v10, v11, &v32, v36, 16);
  if (v14)
  {
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v7);
        }

        v20 = objc_msgSend_keyForKey_(self, v13, v15, v16, v17, *(*(&v32 + 1) + 8 * v19), v32);
        v25 = objc_msgSend_objectForKey_(self->_memoryUsage, v21, v22, v23, v24, v20);
        v30 = objc_msgSend_unsignedIntegerValue(v25, v26, v27, v28, v29);

        v12 += v30;
        ++v19;
      }

      while (v14 != v19);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v13, v15, v16, v17, &v32, v36, 16);
    }

    while (v14);
  }

  return v12;
}

- (id)debug_stats
{
  v6 = MEMORY[0x277CCACA8];
  objc_msgSend_debug_totalMemoryUsageMB(self, a2, v2, v3, v4);
  v8 = *&v7;
  v12 = objc_msgSend_count(self->_handles, v9, v7, v10, v11);
  v17 = objc_msgSend_count(self->_resourceKeyedEntries, v13, v14, v15, v16);
  v22 = objc_msgSend_count(self->_protectedResources, v18, v19, v20, v21);
  return objc_msgSend_stringWithFormat_(v6, v23, v24, v25, v26, @"Total %f MB, Handles: %lu, Resources: %lu, ProtectedResources: %lu", *&v8, v12, v17, v22);
}

- (id)debug_countedMemory
{
  v82 = *MEMORY[0x277D85DE8];
  v69 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = self->_resourceKeyedEntries;
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, v7, v8, v9, &v76, v81, 16);
  if (v68)
  {
    v67 = *v77;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v77 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v76 + 1) + 8 * i);
        v70 = objc_opt_class();
        v15 = objc_msgSend_p_keysForResource_(self, v11, v12, v13, v14, v10);
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v16 = v15;
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, &v72, v80, 16);
        if (v21)
        {
          v22 = 0;
          v23 = *v73;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v73 != v23)
              {
                objc_enumerationMutation(v16);
              }

              v25 = *(*(&v72 + 1) + 8 * j);
              objc_opt_class();
              v30 = objc_msgSend_objectForKey_(self->_memoryUsage, v26, v27, v28, v29, v25);
              v31 = TSUCheckedDynamicCast();
              v36 = objc_msgSend_unsignedIntValue(v31, v32, v33, v34, v35);

              v22 += v36;
            }

            v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v37, v38, v39, v40, &v72, v80, 16);
          }

          while (v21);
          v41 = v22 * 0.000000953674316;
        }

        else
        {
          v41 = 0.0;
        }

        v46 = objc_msgSend_objectForKey_(v69, v42, v43, v44, v45, v70);
        objc_msgSend_floatValue(v46, v47, v48, v49, v50);
        v52 = v41 + v51;
        *&v52 = v52;
        v56 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v53, v52, v54, v55);
        objc_msgSend_setObject_forKey_(v69, v57, v58, v59, v60, v56, v70);
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, v62, v63, v64, &v76, v81, 16);
    }

    while (v68);
  }

  return v69;
}

- (id)debug_countedClasses
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCA940]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_resourceKeyedEntries;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, v6, v7, v8, &v22, v26, 16);
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = objc_opt_class();
        objc_msgSend_addObject_(v3, v13, v14, v15, v16, v12, v22);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v17, v18, v19, v20, &v22, v26, 16);
    }

    while (v9);
  }

  return v3;
}

- (id)debug_usageCounts
{
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_msgSend_allKeys(self->_resourceKeyedEntries, a2, v2, v3, v4);
  v12 = objc_msgSend_setWithArray_(v6, v8, v9, v10, v11, v7);

  v17 = objc_msgSend_p_unretainedResourcesFromResources_(self, v13, v14, v15, v16, v12);
  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, v19, v20, v21, @"protected %@ unretained %@ retained %@", self->_protectedResources, v17, self->_usageCounts);

  return v22;
}

- (id)debug_details
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_debug_stats(self, a2, v2, v3, v4);
  v12 = objc_msgSend_debug_countedMemory(self, v8, v9, v10, v11);
  v17 = objc_msgSend_debug_countedClasses(self, v13, v14, v15, v16);
  v22 = objc_msgSend_debug_usageCounts(self, v18, v19, v20, v21);
  v27 = objc_msgSend_stringWithFormat_(v6, v23, v24, v25, v26, @"%@ resource memory %@, counts %@ usage %@", v7, v12, v17, v22);

  return v27;
}

@end