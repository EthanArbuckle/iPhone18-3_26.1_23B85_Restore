@interface QLMemoryCache
- (BOOL)addThumbnailData:(id)a3;
- (BOOL)sendThumbnailDataForThumbnailRequest:(id)a3 withCacheThread:(id)a4;
- (QLMemoryCache)initWithCacheThread:(id)a3;
- (_QLCacheThread)cacheThread;
- (id)thumbnailDataToSaveWithBatch:(unint64_t)a3;
- (unint64_t)thumbnailToSaveCount;
- (void)_getReadLock;
- (void)_getWriteLock;
- (void)_invalidateThumbnailData:(id)a3;
- (void)_releaseReadLock;
- (void)_releaseWriteLock;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3;
- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3;
- (void)reset;
- (void)thumbnailDataBatchSaved:(id)a3;
- (void)thumbnailToSaveCount;
@end

@implementation QLMemoryCache

- (void)_getWriteLock
{
  v3 = _log_8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLMemoryCache _getWriteLock];
  }

  [(NSLock *)self->_memoryLock lock];
}

- (void)_releaseWriteLock
{
  v3 = _log_8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLMemoryCache _releaseWriteLock];
  }

  [(NSLock *)self->_memoryLock unlock];
}

- (void)_getReadLock
{
  v3 = _log_8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLMemoryCache _getReadLock];
  }

  [(NSLock *)self->_memoryLock lock];
}

- (void)_releaseReadLock
{
  v3 = _log_8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [QLMemoryCache _releaseReadLock];
  }

  [(NSLock *)self->_memoryLock unlock];
}

- (unint64_t)thumbnailToSaveCount
{
  [(QLMemoryCache *)self _getReadLock];
  v3 = [(NSMutableArray *)self->_thumbnailDataToSave count];
  v4 = _log_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(QLMemoryCache *)self thumbnailToSaveCount];
  }

  [(QLMemoryCache *)self _releaseReadLock];
  return v3;
}

- (QLMemoryCache)initWithCacheThread:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = QLMemoryCache;
  v5 = [(QLMemoryCache *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    thumbnailData = v5->_thumbnailData;
    v5->_thumbnailData = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    thumbnailDataToSave = v5->_thumbnailDataToSave;
    v5->_thumbnailDataToSave = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    memoryLock = v5->_memoryLock;
    v5->_memoryLock = v10;

    v5->_cacheEnabled = 1;
    objc_storeWeak(&v5->_cacheThread, v4);
  }

  return v5;
}

- (void)reset
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _log_8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2615D3000, v3, OS_LOG_TYPE_INFO, "Resetting memory cache", buf, 2u);
  }

  [(QLMemoryCache *)self _getWriteLock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_thumbnailDataToSave;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setState:{2, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_thumbnailDataToSave removeAllObjects];
  [(NSMutableDictionary *)self->_thumbnailData removeAllObjects];
  [(QLMemoryCache *)self _releaseWriteLock];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateThumbnailData:(id)a3
{
  v4 = a3;
  v13 = 0;
  if ([v4 setState:2 changedState:&v13] && v13 == 1)
  {
    self->_memoryUsed -= [v4 totalBufferSize];
    v5 = [v4 bitmapDataToValidate];

    if (v5)
    {
      v6 = [(QLMemoryCache *)self cacheThread];
      v7 = [v6 diskCache];
      v8 = [v4 bitmapDataToValidate];
      [v7 discardReservedBuffer:v8];
    }

    v9 = [v4 metadataToValidate];

    if (v9)
    {
      v10 = [(QLMemoryCache *)self cacheThread];
      v11 = [v10 diskCache];
      v12 = [v4 metadataToValidate];
      [v11 discardReservedBuffer:v12];
    }
  }
}

- (BOOL)addThumbnailData:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  cacheEnabled = self->_cacheEnabled;
  if (!cacheEnabled)
  {
    goto LABEL_25;
  }

  v6 = _log_8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 fileIdentifier];
    [v4 size];
    v9 = v8;
    v10 = [v4 bitmapFormat];
    v11 = [v10 width];
    v12 = [v4 bitmapFormat];
    v38 = 138413058;
    v39 = v7;
    v40 = 2048;
    v41 = v9;
    v42 = 2048;
    v43 = v11;
    v44 = 2048;
    v45 = [v12 height];
    _os_log_impl(&dword_2615D3000, v6, OS_LOG_TYPE_INFO, "Adding thumbnail %@ %f (%zd, %zd) to pending saves", &v38, 0x2Au);
  }

  v13 = [v4 fileIdentifier];
  [(QLMemoryCache *)self _getWriteLock];
  v14 = [(NSMutableDictionary *)self->_thumbnailData objectForKeyedSubscript:v13];
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)self->_thumbnailData setObject:v14 forKeyedSubscript:v13];
  }

  v15 = [v14 count];
  if (v15 >= 1)
  {
    v16 = v15;
    v17 = [v4 version];
    v18 = [v14 objectAtIndexedSubscript:0];
    v19 = [v18 version];
    v20 = [v17 isEqual:v19];

    if (v20)
    {
      if (v16 != 1)
      {
        v21 = 0;
        while (1)
        {
          v22 = [v14 objectAtIndexedSubscript:v21];
          v23 = [v22 iconMode];
          if (v23 == [v4 iconMode])
          {
            v24 = [v22 badgeType];
            if (v24 == [v4 badgeType])
            {
              v25 = [v22 iconVariant];
              if (v25 == [v4 iconVariant])
              {
                v26 = [v22 interpolationQuality];
                if (v26 == [v4 interpolationQuality])
                {
                  v27 = [v22 externalGeneratorDataHash];
                  if (v27 == [v4 externalGeneratorDataHash])
                  {
                    [v22 size];
                    v29 = v28;
                    [v4 size];
                    if (v29 == v30)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          if (v16 == ++v21)
          {
            goto LABEL_21;
          }
        }

        v37 = _log_8();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [(QLMemoryCache *)v22 addThumbnailData:v37];
        }

        [(QLMemoryCache *)self _invalidateThumbnailData:v22];
        [(NSMutableArray *)self->_thumbnailDataToSave removeObject:v22];
        [v14 replaceObjectAtIndex:v21 withObject:v4];

        goto LABEL_22;
      }
    }

    else
    {
      for (i = 0; i != v16; ++i)
      {
        v32 = [v14 objectAtIndexedSubscript:i];
        [(QLMemoryCache *)self _invalidateThumbnailData:v32];
      }

      [(NSMutableArray *)self->_thumbnailDataToSave removeObjectsInArray:v14];
      [v14 removeAllObjects];
    }
  }

LABEL_21:
  [v14 addObject:v4];
LABEL_22:
  self->_memoryUsed += [v4 totalBufferSize];
  if (!self->_pendingSavesTransaction)
  {
    v33 = os_transaction_create();
    pendingSavesTransaction = self->_pendingSavesTransaction;
    self->_pendingSavesTransaction = v33;
  }

  [(NSMutableArray *)self->_thumbnailDataToSave addObject:v4];
  [(QLMemoryCache *)self _releaseWriteLock];

LABEL_25:
  v35 = *MEMORY[0x277D85DE8];
  return cacheEnabled;
}

- (BOOL)sendThumbnailDataForThumbnailRequest:(id)a3 withCacheThread:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_cacheEnabled)
  {
    v37 = 0;
    goto LABEL_42;
  }

  v8 = [v6 request];
  v9 = [v8 fileIdentifier];
  v10 = [v9 fileIdentifier];

  if (!v10)
  {
    v20 = _log_8();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [QLMemoryCache sendThumbnailDataForThumbnailRequest:withCacheThread:];
    }

    v37 = 0;
    goto LABEL_41;
  }

  [v8 maximumPixelSize];
  v12 = v11;
  v13 = [v8 iconMode];
  v14 = [v6 badgeType];
  v50 = [v6 needsLowQualityThumbnailGeneration];
  [(QLMemoryCache *)self _getReadLock];
  v15 = [(NSMutableDictionary *)self->_thumbnailData objectForKeyedSubscript:v10];
  v16 = v15;
  if (!v15)
  {
LABEL_39:
    [(QLMemoryCache *)self _releaseReadLock];
    v37 = 0;
    v20 = 0;
    goto LABEL_40;
  }

  v48 = v15;
  v49 = self;
  v47 = v10;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v18)
  {

    v10 = v47;
    v16 = v48;
    goto LABEL_39;
  }

  v19 = v18;
  v45 = v7;
  v46 = v6;
  v20 = 0;
  v21 = *v52;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v52 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v51 + 1) + 8 * i);
      if (v13 == [v23 iconMode] && objc_msgSend(v23, "badgeType") == v14)
      {
        v24 = [v23 iconVariant];
        if (v24 == [v8 iconVariant])
        {
          v25 = [v23 interpolationQuality];
          if (v25 == [v8 interpolationQuality])
          {
            v26 = [v23 externalGeneratorDataHash];
            if (v26 == [v8 externalThumbnailGeneratorDataHash])
            {
              [v23 size];
              if (v27 == v12)
              {
                v38 = v23;

                v20 = v38;
                goto LABEL_34;
              }

              if (v50)
              {
                [v8 minimumDimension];
                if (QLSThumbnailSizeIsSufficientForLowQuality())
                {
                  if (!v20)
                  {
                    v20 = v23;
                    continue;
                  }

                  [v23 size];
                  if (v28 <= v12)
                  {
                    [v23 size];
                    v34 = v33;
                    [v20 size];
                    if (v34 <= v35)
                    {
                      continue;
                    }

LABEL_24:
                    v36 = v23;

                    v20 = v36;
                    continue;
                  }

                  [v20 size];
                  if (v29 < v12)
                  {
                    goto LABEL_24;
                  }

                  [v23 size];
                  v31 = v30;
                  [v20 size];
                  if (v31 < v32)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }
        }
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v7 = v45;
  v6 = v46;
  v10 = v47;
  v16 = v48;
  self = v49;
  if (!v20)
  {
    goto LABEL_39;
  }

  v39 = [v8 fileIdentifier];
  v40 = [v39 version];

  v41 = [v20 version];
  v42 = [v41 isEqual:v40];

  if ((v42 & 1) == 0)
  {

    v20 = 0;
  }

  [(QLMemoryCache *)v49 _releaseReadLock];
  v16 = v48;
  if (v20)
  {
    [v45 _sendThumbnailData:v20 forThumbnailRequest:v46];
    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

LABEL_40:

LABEL_41:
LABEL_42:

  v43 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)thumbnailDataBatchSaved:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(QLMemoryCache *)self _getWriteLock];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    *&v7 = 138412546;
    v25 = v7;
    obj = v5;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = _log_8();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v11 fileIdentifier];
          [v11 size];
          *buf = v25;
          v32 = v21;
          v33 = 2048;
          v34 = v22;
          _os_log_debug_impl(&dword_2615D3000, v12, OS_LOG_TYPE_DEBUG, "thumbnail saved %@ %f", buf, 0x16u);
        }

        [(NSMutableArray *)self->_thumbnailDataToSave removeObject:v11];
        thumbnailData = self->_thumbnailData;
        v14 = [v11 fileIdentifier];
        v15 = [(NSMutableDictionary *)thumbnailData objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = [v15 count];
          if (v16 >= 1)
          {
            v17 = 0;
            while (1)
            {
              v18 = [v15 objectAtIndexedSubscript:{v17, v25}];

              if (v11 == v18)
              {
                break;
              }

              if (v16 == ++v17)
              {
                goto LABEL_17;
              }
            }

            [v15 removeObjectAtIndex:v17];
            self->_memoryUsed -= [v11 totalBufferSize];
            --v16;
          }

          if (!v16)
          {
            v19 = self->_thumbnailData;
            v20 = [v11 fileIdentifier];
            [(NSMutableDictionary *)v19 setObject:0 forKeyedSubscript:v20];
          }
        }

LABEL_17:

        ++v10;
      }

      while (v10 != v8);
      v5 = obj;
      v8 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v8);
  }

  if (![(NSMutableArray *)self->_thumbnailDataToSave count])
  {
    pendingSavesTransaction = self->_pendingSavesTransaction;
    self->_pendingSavesTransaction = 0;
  }

  [(QLMemoryCache *)self _releaseWriteLock];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)thumbnailDataToSaveWithBatch:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  [(QLMemoryCache *)self _getWriteLock];
  if (a3 && [(NSMutableArray *)self->_thumbnailDataToSave count]>= a3 || (a3 = [(NSMutableArray *)self->_thumbnailDataToSave count]) != 0)
  {
    v5 = [(NSMutableArray *)self->_thumbnailDataToSave subarrayWithRange:0, a3];
  }

  else
  {
    v5 = 0;
  }

  v6 = _log_8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v5 count];
    thumbnailDataToSave = self->_thumbnailDataToSave;
    v11 = 138413058;
    v12 = self;
    v13 = 2048;
    v14 = v9;
    v15 = 2048;
    v16 = a3;
    v17 = 2112;
    v18 = thumbnailDataToSave;
    _os_log_debug_impl(&dword_2615D3000, v6, OS_LOG_TYPE_DEBUG, "%@: getting thumbnail data save batch: %lu thumbnails, asked for %lu - total: %@", &v11, 0x2Au);
  }

  [(QLMemoryCache *)self _releaseWriteLock];
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers:(id)a3
{
  v4 = a3;
  [(QLMemoryCache *)self _getWriteLock];
  v5 = [MEMORY[0x277CBEB18] array];
  thumbnailData = self->_thumbnailData;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers___block_invoke;
  v16[3] = &unk_279ADDF28;
  v7 = v4;
  v17 = v7;
  v18 = v5;
  v19 = self;
  v8 = v5;
  [(NSMutableDictionary *)thumbnailData enumerateKeysAndObjectsUsingBlock:v16];
  [(NSMutableDictionary *)self->_thumbnailData removeObjectsForKeys:v8];
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  thumbnailDataToSave = self->_thumbnailDataToSave;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __104__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers___block_invoke_2;
  v13[3] = &unk_279ADDF50;
  v14 = v7;
  v15 = v9;
  v11 = v9;
  v12 = v7;
  [(NSMutableArray *)thumbnailDataToSave enumerateObjectsUsingBlock:v13];
  [(NSMutableArray *)self->_thumbnailDataToSave removeObjectsAtIndexes:v11];
  [(QLMemoryCache *)self _releaseWriteLock];
}

void __104__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = [v7 itemID];
    v10 = [v9 providerDomainID];
    LOBYTE(v8) = [v8 containsObject:v10];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) addObject:v7];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          [v16 setState:{2, v18}];
          [*(a1 + 48) setMemoryUsed:{objc_msgSend(*(a1 + 48), "memoryUsed") - objc_msgSend(v16, "totalBufferSize")}];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __104__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithRemainingFileProviderIdentifiers___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 fileIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v12;
  if (isKindOfClass)
  {
    v8 = [v12 fileIdentifier];
    v9 = *(a1 + 32);
    v10 = [v8 itemID];
    v11 = [v10 providerDomainID];
    LOBYTE(v9) = [v9 containsObject:v11];

    if ((v9 & 1) == 0)
    {
      [*(a1 + 40) addIndex:a3];
      [v12 setState:2];
    }

    v7 = v12;
  }
}

- (void)removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:(id)a3
{
  v4 = a3;
  [(QLMemoryCache *)self _getWriteLock];
  v5 = [MEMORY[0x277CBEB18] array];
  thumbnailData = self->_thumbnailData;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers___block_invoke;
  v16[3] = &unk_279ADDF28;
  v7 = v4;
  v17 = v7;
  v18 = v5;
  v19 = self;
  v8 = v5;
  [(NSMutableDictionary *)thumbnailData enumerateKeysAndObjectsUsingBlock:v16];
  [(NSMutableDictionary *)self->_thumbnailData removeObjectsForKeys:v8];
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  thumbnailDataToSave = self->_thumbnailDataToSave;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers___block_invoke_2;
  v13[3] = &unk_279ADDF50;
  v14 = v7;
  v15 = v9;
  v11 = v9;
  v12 = v7;
  [(NSMutableArray *)thumbnailDataToSave enumerateObjectsUsingBlock:v13];
  [(NSMutableArray *)self->_thumbnailDataToSave removeObjectsAtIndexes:v11];
  [(QLMemoryCache *)self _releaseWriteLock];
}

void __83__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = [v7 itemID];
    v10 = [v9 providerDomainID];
    LODWORD(v8) = [v8 containsObject:v10];

    if (v8)
    {
      [*(a1 + 40) addObject:v7];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          [v16 setState:{2, v18}];
          [*(a1 + 48) setMemoryUsed:{objc_msgSend(*(a1 + 48), "memoryUsed") - objc_msgSend(v16, "totalBufferSize")}];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __83__QLMemoryCache_removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [v12 fileIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v12;
  if (isKindOfClass)
  {
    v8 = [v12 fileIdentifier];
    v9 = *(a1 + 32);
    v10 = [v8 itemID];
    v11 = [v10 providerDomainID];
    LODWORD(v9) = [v9 containsObject:v11];

    if (v9)
    {
      [*(a1 + 40) addIndex:a3];
      [v12 setState:2];
    }

    v7 = v12;
  }
}

- (_QLCacheThread)cacheThread
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheThread);

  return WeakRetained;
}

- (void)addThumbnailData:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 fileIdentifier];
  [a1 size];
  v7 = 138412802;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  v11 = 2080;
  v12 = " (replacing same)";
  _os_log_debug_impl(&dword_2615D3000, a2, OS_LOG_TYPE_DEBUG, "Removing thumbnail %@ %f from pending saves to limit number of saves%s", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)thumbnailToSaveCount
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_2615D3000, log, OS_LOG_TYPE_DEBUG, "%@: thumbnail left to be saved %ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end