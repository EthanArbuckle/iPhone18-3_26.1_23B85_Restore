@interface TSPDocumentResourceCache
+ (id)defaultCacheURL;
+ (id)sharedCache;
- (BOOL)beginDocumentResourceAccessForDigestString:(id)string;
- (BOOL)cacheDocumentResourceDigestString:(id)string extension:(id)extension sourceURL:(id)l fileSize:(int64_t)size wasDownloaded:(BOOL)downloaded;
- (TSPDocumentResourceCache)init;
- (TSPDocumentResourceCache)initWithCacheURL:(id)l;
- (id)URLForDocumentResourceDigestString:(id)string;
- (id)entryForDigestString:(id)string;
- (void)endDocumentResourceAccessForDigestString:(id)string;
- (void)enumerateEntriesFromCacheURLWithHandler:(id)handler;
- (void)reloadEntries;
- (void)shrinkCacheWithMaxCacheSizeInBytes:(int64_t)bytes;
@end

@implementation TSPDocumentResourceCache

+ (id)defaultCacheURL
{
  if (defaultCacheURL_onceToken != -1)
  {
    +[TSPDocumentResourceCache defaultCacheURL];
  }

  v3 = defaultCacheURL_defaultCacheURL;

  return v3;
}

void __43__TSPDocumentResourceCache_defaultCacheURL__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  v1 = [v0 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v5];
  v2 = v5;

  if (v1)
  {
    v3 = [v1 URLByAppendingPathComponent:@"Document Resources" isDirectory:1];
    v4 = defaultCacheURL_defaultCacheURL;
    defaultCacheURL_defaultCacheURL = v3;
  }

  else
  {
    TSULogErrorInFunction();
  }
}

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TSPDocumentResourceCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, block);
  }

  v2 = sharedCache_sharedCache;

  return v2;
}

void __39__TSPDocumentResourceCache_sharedCache__block_invoke(uint64_t a1)
{
  v2 = [TSPDocumentResourceCache alloc];
  v5 = [*(a1 + 32) defaultCacheURL];
  v3 = [(TSPDocumentResourceCache *)v2 initWithCacheURL:v5];
  v4 = sharedCache_sharedCache;
  sharedCache_sharedCache = v3;
}

- (TSPDocumentResourceCache)init
{
  defaultCacheURL = [objc_opt_class() defaultCacheURL];
  v4 = [(TSPDocumentResourceCache *)self initWithCacheURL:defaultCacheURL];

  return v4;
}

- (TSPDocumentResourceCache)initWithCacheURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = TSPDocumentResourceCache;
  v5 = [(TSPDocumentResourceCache *)&v13 init];
  if (v5)
  {
    v6 = [lCopy copy];
    cacheURL = v5->_cacheURL;
    v5->_cacheURL = v6;

    v5->_maxCacheSizeInBytes = 5242880;
    v8 = dispatch_queue_create("TSPDocumentResourceCache.Access", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entries = v5->_entries;
    v5->_entries = v10;

    [(TSPDocumentResourceCache *)v5 reloadEntries];
  }

  return v5;
}

- (id)entryForDigestString:(id)string
{
  stringCopy = string;
  v5 = [(NSMutableDictionary *)self->_entries objectForKeyedSubscript:stringCopy];
  if (!v5)
  {
    v5 = [[TSPDocumentResourceCacheEntry alloc] initWithDigestString:stringCopy];
    [(NSMutableDictionary *)self->_entries setObject:v5 forKeyedSubscript:stringCopy];
  }

  return v5;
}

- (id)URLForDocumentResourceDigestString:(id)string
{
  stringCopy = string;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TSPDocumentResourceCache_URLForDocumentResourceDigestString___block_invoke;
  block[3] = &unk_279D47508;
  block[4] = self;
  v10 = stringCopy;
  v11 = &v12;
  v6 = stringCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__TSPDocumentResourceCache_URLForDocumentResourceDigestString___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) entryForDigestString:*(a1 + 40)];
  v2 = [v7 URL];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (([*(*(*(a1 + 48) + 8) + 40) checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

- (BOOL)cacheDocumentResourceDigestString:(id)string extension:(id)extension sourceURL:(id)l fileSize:(int64_t)size wasDownloaded:(BOOL)downloaded
{
  stringCopy = string;
  extensionCopy = extension;
  lCopy = l;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__TSPDocumentResourceCache_cacheDocumentResourceDigestString_extension_sourceURL_fileSize_wasDownloaded___block_invoke;
  block[3] = &unk_279D47530;
  block[4] = self;
  v21 = stringCopy;
  downloadedCopy = downloaded;
  v22 = extensionCopy;
  v23 = lCopy;
  v24 = &v27;
  sizeCopy = size;
  v16 = lCopy;
  v17 = extensionCopy;
  v18 = stringCopy;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return accessQueue;
}

void __105__TSPDocumentResourceCache_cacheDocumentResourceDigestString_extension_sourceURL_fileSize_wasDownloaded___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) entryForDigestString:*(a1 + 40)];
  v3 = [v2 URL];
  if ([v3 checkResourceIsReachableAndReturnError:0])
  {
    if (v3)
    {
      if ([v2 wasDownloaded] && *(a1 + 80) == 1)
      {
        v4 = [MEMORY[0x277D6C290] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDocumentResourceCache cacheDocumentResourceDigestString:extension:sourceURL:fileSize:wasDownloaded:]_block_invoke"];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDocumentResourceCache.m"];
        [v4 handleFailureInFunction:v5 file:v6 lineNumber:179 description:{@"Cache entry for digest %@ was downloaded more than once.", *(a1 + 40)}];
      }

      goto LABEL_24;
    }
  }

  else
  {
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtURL:*(*(a1 + 32) + 8) withIntermediateDirectories:1 attributes:0 error:0];
  v7 = *(*(a1 + 32) + 8);
  v8 = [*(a1 + 40) stringByAppendingPathExtension:*(a1 + 48)];
  v9 = [v7 URLByAppendingPathComponent:v8];

  if (*(a1 + 80) == 1)
  {
    v10 = [v3 moveItemAtURL:*(a1 + 56) toURL:v9 error:0];
  }

  else
  {
    v10 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v10;
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v11 = 0;
  }

  else
  {
    v12 = *(a1 + 56);
    v36 = 0;
    v13 = [v3 copyItemAtURL:v12 toURL:v9 error:&v36];
    v11 = v36;
    *(*(*(a1 + 64) + 8) + 24) = v13;
    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      v22 = [*(a1 + 56) path];
      goto LABEL_26;
    }
  }

  [v2 setURL:v9];
  v37 = *MEMORY[0x277CBE878];
  v38[0] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v15 = [v9 path];
  v35 = v11;
  v16 = [v3 setAttributes:v14 ofItemAtPath:v15 error:&v35];
  v17 = v35;

  if ((v16 & 1) == 0)
  {
    v29 = *(a1 + 40);
    v30 = v17;
    TSULogErrorInFunction();
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    v11 = v17;
    goto LABEL_19;
  }

  v34 = 0;
  v19 = *MEMORY[0x277CBE838];
  v33 = 0;
  v20 = [v9 getResourceValue:&v34 forKey:v19 error:&v33];
  v21 = v34;
  v11 = v33;
  v22 = v21;

  *(*(*(a1 + 64) + 8) + 24) = v20;
  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
LABEL_26:
    TSULogErrorInFunction();

    goto LABEL_27;
  }

  v18 = [v22 longLongValue];

LABEL_19:
  [v2 setFileSize:{v18, v29, v30}];
  v32 = 0;
  v23 = *MEMORY[0x277CBE7A8];
  v31 = 0;
  v24 = [v9 getResourceValue:&v32 forKey:v23 error:&v31];
  v25 = v32;
  v26 = v31;
  v27 = v25;

  *(*(*(a1 + 64) + 8) + 24) = v24;
  v28 = *(*(*(a1 + 64) + 8) + 24);
  if (v28)
  {
    [v2 setContentAccessDate:v27];

    [v2 setWasDownloaded:*(a1 + 80)];
  }

  else
  {
    TSULogErrorInFunction();
  }

  if (v28)
  {
    v3 = 0;
LABEL_24:
    *(*(*(a1 + 64) + 8) + 24) = 1;
LABEL_27:
  }
}

- (BOOL)beginDocumentResourceAccessForDigestString:(id)string
{
  stringCopy = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__TSPDocumentResourceCache_beginDocumentResourceAccessForDigestString___block_invoke;
  block[3] = &unk_279D47508;
  block[4] = self;
  v9 = stringCopy;
  v10 = &v11;
  v6 = stringCopy;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQueue;
}

void __71__TSPDocumentResourceCache_beginDocumentResourceAccessForDigestString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryForDigestString:*(a1 + 40)];
  v3 = [v2 URL];
  *(*(*(a1 + 48) + 8) + 24) = [v3 checkResourceIsReachableAndReturnError:0];
  [v2 setAccessCount:{objc_msgSend(v2, "accessCount") + 1}];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v2 setContentAccessDate:v4];

  v5 = 0;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = [v2 contentAccessDate];
    v7 = *MEMORY[0x277CBE7A8];
    v10 = 0;
    v8 = [v3 setResourceValue:v6 forKey:v7 error:&v10];
    v5 = v10;

    if ((v8 & 1) == 0)
    {
      v9 = [v2 digestString];
      TSULogErrorInFunction();
    }
  }
}

- (void)endDocumentResourceAccessForDigestString:(id)string
{
  stringCopy = string;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__TSPDocumentResourceCache_endDocumentResourceAccessForDigestString___block_invoke;
  v7[3] = &unk_279D47558;
  v7[4] = self;
  v8 = stringCopy;
  v6 = stringCopy;
  dispatch_async(accessQueue, v7);
}

void __69__TSPDocumentResourceCache_endDocumentResourceAccessForDigestString___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v7 = v2;
  if (v2)
  {
    v3 = [v2 accessCount];
    [v7 setAccessCount:v3 - 1];
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDocumentResourceCache endDocumentResourceAccessForDigestString:]_block_invoke"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDocumentResourceCache.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:226 description:{@"Unbalanced calls to -beginUsingDocumentResource: and -endUsingDocumentResource: for document resource digest %@.", *(a1 + 40)}];
  }

  else
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPDocumentResourceCache endDocumentResourceAccessForDigestString:]_block_invoke"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPDocumentResourceCache.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:231 description:{@"Cannot end using document resource with digest %@ because it is not cached.", *(a1 + 40)}];
  }

LABEL_6:
}

- (void)shrinkCacheWithMaxCacheSizeInBytes:(int64_t)bytes
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__TSPDocumentResourceCache_shrinkCacheWithMaxCacheSizeInBytes___block_invoke;
  v4[3] = &unk_279D475C8;
  v4[4] = self;
  v4[5] = bytes;
  dispatch_async(accessQueue, v4);
}

void __63__TSPDocumentResourceCache_shrinkCacheWithMaxCacheSizeInBytes___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 24), "count")}];
  v3 = *(*(a1 + 32) + 24);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__TSPDocumentResourceCache_shrinkCacheWithMaxCacheSizeInBytes___block_invoke_2;
  v24[3] = &unk_279D47580;
  v26 = &v27;
  v18 = v2;
  v25 = v18;
  [v3 enumerateKeysAndObjectsUsingBlock:v24];
  if (v28[3] > *(a1 + 40))
  {
    v4 = [v18 sortedArrayUsingComparator:&__block_literal_global_42];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 URL];
          v19 = 0;
          v12 = [v5 removeItemAtURL:v11 error:&v19];
          v13 = v19;

          if (v12)
          {
            [v10 setURL:0];
            v14 = [v10 fileSize];
            v15 = v28[3] - v14;
            v28[3] = v15;
            if (v15 <= *(a1 + 40))
            {

              goto LABEL_13;
            }
          }

          else
          {
            v16 = [v10 digestString];
            v17 = v13;
            TSULogErrorInFunction();
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v31 count:16];
      }

      while (v7);
    }

LABEL_13:
  }

  _Block_object_dispose(&v27, 8);
}

void __63__TSPDocumentResourceCache_shrinkCacheWithMaxCacheSizeInBytes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 URL];
  v5 = [v4 checkResourceIsReachableAndReturnError:0];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) += [v6 fileSize];
    if (![v6 accessCount])
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

uint64_t __63__TSPDocumentResourceCache_shrinkCacheWithMaxCacheSizeInBytes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 contentAccessDate];
  v6 = [v4 contentAccessDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)enumerateEntriesFromCacheURLWithHandler:(id)handler
{
  v54[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  cacheURL = self->_cacheURL;
  v6 = *MEMORY[0x277CBE868];
  v39 = *MEMORY[0x277CBE8E8];
  v54[0] = *MEMORY[0x277CBE8E8];
  v54[1] = v6;
  v7 = *MEMORY[0x277CBE7A8];
  v34 = *MEMORY[0x277CBE838];
  v54[2] = *MEMORY[0x277CBE838];
  v54[3] = v7;
  v32 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
  v9 = [defaultManager enumeratorAtURL:cacheURL includingPropertiesForKeys:v8 options:0 errorHandler:0];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v50;
    v37 = v10;
    v38 = v6;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v50 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v47 = 0;
        v48 = 0;
        v17 = [v15 getResourceValue:&v48 forKey:v6 error:&v47];
        v18 = v48;
        v19 = v47;
        if ((v17 & 1) == 0)
        {
          TSULogErrorInFunction();
          goto LABEL_20;
        }

        if ([v18 BOOLValue])
        {
          goto LABEL_20;
        }

        v45 = 0;
        v46 = 0;
        v20 = [v15 getResourceValue:&v46 forKey:v39 error:&v45];
        v21 = v46;
        v22 = v45;

        if (v20)
        {
          v36 = v21;
          v43 = 0;
          v44 = 0;
          v23 = [v15 getResourceValue:&v44 forKey:v34 error:&v43];
          v24 = v44;
          v25 = v43;

          if (v23)
          {
            v33 = v24;
            v41 = 0;
            v42 = 0;
            v26 = [v15 getResourceValue:&v42 forKey:v32 error:&v41];
            v35 = v42;
            v19 = v41;

            if (v26)
            {
              v27 = v36;
              stringByDeletingPathExtension = [v36 stringByDeletingPathExtension];
              v40 = 0;
              v29 = v33;
              handlerCopy[2](handlerCopy, stringByDeletingPathExtension, v15, [v33 longLongValue], v35, &v40);
              v30 = v40;

              v6 = v38;
              if (v30)
              {

                objc_autoreleasePoolPop(v16);
                v10 = v37;
                goto LABEL_22;
              }
            }

            else
            {
              TSULogErrorInFunction();
              v6 = v38;
              v29 = v24;
              v27 = v36;
            }

            goto LABEL_19;
          }

          TSULogErrorInFunction();

          v19 = v25;
        }

        else
        {
          TSULogErrorInFunction();

          v19 = v22;
        }

        v6 = v38;
LABEL_19:
        v10 = v37;
LABEL_20:

        objc_autoreleasePoolPop(v16);
      }

      v12 = [v10 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v12);
  }

LABEL_22:
}

- (void)reloadEntries
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TSPDocumentResourceCache_reloadEntries__block_invoke;
  block[3] = &unk_279D47618;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __41__TSPDocumentResourceCache_reloadEntries__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__TSPDocumentResourceCache_reloadEntries__block_invoke_2;
  v3[3] = &unk_279D475F0;
  v3[4] = v1;
  return [v1 enumerateEntriesFromCacheURLWithHandler:v3];
}

void __41__TSPDocumentResourceCache_reloadEntries__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a3;
  v11 = [v8 entryForDigestString:a2];
  [v11 setURL:v10];

  [v11 setFileSize:a4];
  [v11 setContentAccessDate:v9];
}

@end