@interface OKResourcesDiskCacheManager
+ (id)_sharedResourcesDirectoryURL;
+ (id)sharedManager;
+ (id)temporaryManagerWithIdentifier:(id)identifier;
- (BOOL)_readCachedMediaItem:(id)item error:(id *)error byMetadataAccessor:(id)accessor;
- (BOOL)_readCachedMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error byThumbnailAccessor:(id)accessor;
- (BOOL)_writeCachedMediaItem:(id)item error:(id *)error byMetadataAccessor:(id)accessor;
- (BOOL)_writeCachedMediaItem:(id)item error:(id *)error byResourcesAccessor:(id)accessor;
- (BOOL)_writeCachedMediaItem:(id)item error:(id *)error byThumbnailsAccessor:(id)accessor;
- (BOOL)_writeCachedMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error byThumbnailAccessor:(id)accessor;
- (BOOL)hasMetadataForMediaItem:(id)item metadata:(id *)metadata error:(id *)error;
- (BOOL)hasThumbnailForMediaItem:(id)item resolution:(unint64_t)resolution thumbnail:(id *)thumbnail error:(id *)error;
- (BOOL)removeAllCaches:(id *)caches;
- (BOOL)removeMediaItem:(id)item error:(id *)error;
- (BOOL)removeMetadataForMediaItem:(id)item error:(id *)error;
- (BOOL)removeThumbnailForMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error;
- (BOOL)removeThumbnailsForMediaItem:(id)item error:(id *)error;
- (BOOL)setMetadata:(id)metadata forMediaItem:(id)item error:(id *)error;
- (BOOL)setThumbnail:(id)thumbnail forMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error;
- (OKResourcesDiskCacheManager)init;
- (OKResourcesDiskCacheManager)initWithBaseURL:(id)l;
- (id)_cacheResourceMetadataURLForMediaItem:(id)item;
- (id)_cacheResourceThumbnailURLForMediaItem:(id)item resolution:(unint64_t)resolution;
- (id)_cacheResourceThumbnailsURLForMediaItem:(id)item;
- (id)_cachedResourceDirectoryURLForMediaItem:(id)item;
- (id)cachedMediaItemURLs:(id *)ls;
- (id)metadataForMediaItem:(id)item error:(id *)error;
- (id)thumbnailForMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error;
- (void)_performAsynchronousResourceAccessUsingBlock:(id)block;
- (void)dealloc;
@end

@implementation OKResourcesDiskCacheManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__OKResourcesDiskCacheManager_sharedManager__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  return sharedManager_sharedManager;
}

OKResourcesDiskCacheManager *__44__OKResourcesDiskCacheManager_sharedManager__block_invoke()
{
  result = -[OKResourcesDiskCacheManager initWithBaseURL:]([OKResourcesDiskCacheManager alloc], "initWithBaseURL:", [objc_opt_class() _sharedResourcesDirectoryURL]);
  sharedManager_sharedManager = result;
  return result;
}

+ (id)temporaryManagerWithIdentifier:(id)identifier
{
  v4 = [OKResourcesDiskCacheManager alloc];
  v5 = -[OKResourcesDiskCacheManager initWithBaseURL:](v4, "initWithBaseURL:", [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", identifier)}]);

  return v5;
}

- (OKResourcesDiskCacheManager)init
{
  v7.receiver = self;
  v7.super_class = OKResourcesDiskCacheManager;
  v2 = [(OKResourcesDiskCacheManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_baseURL = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v3->_globalQueue = dispatch_queue_create("OKSharedResourcesManager Resources Global Access Queue", v4);
    v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v3->_accessQueue = dispatch_queue_create("OKSharedResourcesManager Resources Access Queue", v5);
  }

  return v3;
}

- (OKResourcesDiskCacheManager)initWithBaseURL:(id)l
{
  v4 = [(OKResourcesDiskCacheManager *)self init];
  if (v4)
  {
    v4->_baseURL = [l copy];
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v8 = 0;
    v7 = 0;
    if ([v5 fileExistsAtPath:objc_msgSend(l isDirectory:{"relativePath"), &v7}])
    {
      if ((v7 & 1) == 0 && *MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Caches/OKResourcesDiskCacheManager.m" line:109 andFormat:@"Failed to create resources disk cache base url %@: %@", l, @"Destination path already exists as file instead of directory"];
      }
    }

    else if (([v5 createDirectoryAtURL:l withIntermediateDirectories:1 attributes:0 error:&v8] & 1) == 0 && *MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Caches/OKResourcesDiskCacheManager.m" line:102 andFormat:@"Failed to create resources disk cache base url %@: %@", l, objc_msgSend(v8, "localizedDescription")];
    }
  }

  return v4;
}

- (void)dealloc
{
  baseURL = self->_baseURL;
  if (baseURL)
  {

    self->_baseURL = 0;
  }

  globalQueue = self->_globalQueue;
  if (globalQueue)
  {
    dispatch_release(globalQueue);
    self->_globalQueue = 0;
  }

  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_release(accessQueue);
    self->_accessQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = OKResourcesDiskCacheManager;
  [(OKResourcesDiskCacheManager *)&v6 dealloc];
}

- (void)_performAsynchronousResourceAccessUsingBlock:(id)block
{
  if (block)
  {
    globalQueue = self->_globalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__OKResourcesDiskCacheManager__performAsynchronousResourceAccessUsingBlock___block_invoke;
    block[3] = &unk_279C8E670;
    block[4] = self;
    block[5] = block;
    dispatch_async(globalQueue, block);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Must pass a non-nil block to %@", NSStringFromSelector(a2)}];
  }
}

+ (id)_sharedResourcesDirectoryURL
{
  if (_sharedResourcesDirectoryURL_onceToken != -1)
  {
    +[OKResourcesDiskCacheManager _sharedResourcesDirectoryURL];
  }

  return _sharedResourcesDirectoryURL_sharedResourcesDirectoryURL;
}

id __59__OKResourcesDiskCacheManager__sharedResourcesDirectoryURL__block_invoke()
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1), "lastObject")), "URLByAppendingPathComponent:", @"com.apple.Opus", "URLByAppendingPathComponent:isDirectory:", @"Resources", 1}];
  _sharedResourcesDirectoryURL_sharedResourcesDirectoryURL = result;
  return result;
}

- (id)_cachedResourceDirectoryURLForMediaItem:(id)item
{
  baseURL = self->_baseURL;
  uniquePath = [item uniquePath];

  return [(NSURL *)baseURL URLByAppendingPathComponent:uniquePath isDirectory:1];
}

- (id)_cacheResourceMetadataURLForMediaItem:(id)item
{
  v3 = [(OKResourcesDiskCacheManager *)self _cachedResourceDirectoryURLForMediaItem:item];

  return [v3 URLByAppendingPathComponent:@"metadata.plist" isDirectory:0];
}

- (id)_cacheResourceThumbnailsURLForMediaItem:(id)item
{
  v3 = [(OKResourcesDiskCacheManager *)self _cachedResourceDirectoryURLForMediaItem:item];

  return [v3 URLByAppendingPathComponent:@"Thumbnails" isDirectory:0];
}

- (id)_cacheResourceThumbnailURLForMediaItem:(id)item resolution:(unint64_t)resolution
{
  v5 = [-[OKResourcesDiskCacheManager _cachedResourceDirectoryURLForMediaItem:](self _cachedResourceDirectoryURLForMediaItem:{item), "URLByAppendingPathComponent:", @"Thumbnails"}];
  resolution = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", resolution];

  return [v5 URLByAppendingPathComponent:resolution isDirectory:0];
}

- (BOOL)_writeCachedMediaItem:(id)item error:(id *)error byResourcesAccessor:(id)accessor
{
  objc_sync_enter(item);
  (*(accessor + 2))(accessor, [(OKResourcesDiskCacheManager *)self _cachedResourceDirectoryURLForMediaItem:item]);
  objc_sync_exit(item);
  return 1;
}

- (BOOL)removeAllCaches:(id *)caches
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__OKResourcesDiskCacheManager_removeAllCaches___block_invoke;
  block[3] = &unk_279C90BF0;
  block[5] = &v8;
  block[6] = caches;
  block[4] = self;
  dispatch_barrier_sync(accessQueue, block);
  v5 = *(v9 + 24);
  if (caches && (v9[3] & 1) == 0 && !*caches)
  {
    *caches = [OKError errorForCode:-1];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __47__OKResourcesDiskCacheManager_removeAllCaches___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __47__OKResourcesDiskCacheManager_removeAllCaches___block_invoke_2;
  v6 = &unk_279C912B8;
  return [*(a1 + 32) _writeResources:MEMORY[0x277D85DD0] byResourcesAccessor:{3221225472, __47__OKResourcesDiskCacheManager_removeAllCaches___block_invoke_2, &unk_279C912B8, *(a1 + 40), v1}];
}

void __47__OKResourcesDiskCacheManager_removeAllCaches___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 32) + 8) + 24) = [v4 removeItemAtURL:a2 error:*(a1 + 40)];
}

- (id)cachedMediaItemURLs:(id *)ls
{
  array = [MEMORY[0x277CBEB18] array];
  dispatch_barrier_sync(self->_accessQueue, &__block_literal_global_40_0);
  return array;
}

- (BOOL)removeMediaItem:(id)item error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__OKResourcesDiskCacheManager_removeMediaItem_error___block_invoke;
  v8[3] = &unk_279C912E0;
  v8[4] = self;
  v8[5] = item;
  v8[6] = &v9;
  v8[7] = error;
  dispatch_barrier_sync(accessQueue, v8);
  v6 = *(v10 + 24);
  if (error && (v10[3] & 1) == 0 && !*error)
  {
    *error = [OKError errorForCode:-1];
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __53__OKResourcesDiskCacheManager_removeMediaItem_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __53__OKResourcesDiskCacheManager_removeMediaItem_error___block_invoke_2;
  v7 = &unk_279C912B8;
  return [v2 _writeCachedMediaItem:v1 error:MEMORY[0x277D85DD0] byResourcesAccessor:{3221225472, __53__OKResourcesDiskCacheManager_removeMediaItem_error___block_invoke_2, &unk_279C912B8, a1[6], a1[7]}];
}

void __53__OKResourcesDiskCacheManager_removeMediaItem_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 32) + 8) + 24) = [v4 removeItemAtURL:a2 error:*(a1 + 40)];
}

- (BOOL)_readCachedMediaItem:(id)item error:(id *)error byMetadataAccessor:(id)accessor
{
  objc_sync_enter(item);
  (*(accessor + 2))(accessor, [(OKResourcesDiskCacheManager *)self _cacheResourceMetadataURLForMediaItem:item]);
  objc_sync_exit(item);
  return 1;
}

- (BOOL)_writeCachedMediaItem:(id)item error:(id *)error byMetadataAccessor:(id)accessor
{
  objc_sync_enter(item);
  (*(accessor + 2))(accessor, [(OKResourcesDiskCacheManager *)self _cacheResourceMetadataURLForMediaItem:item]);
  objc_sync_exit(item);
  return 1;
}

- (BOOL)hasMetadataForMediaItem:(id)item metadata:(id *)metadata error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__OKResourcesDiskCacheManager_hasMetadataForMediaItem_metadata_error___block_invoke;
  block[3] = &unk_279C91330;
  block[4] = self;
  block[5] = item;
  block[6] = &v22;
  block[7] = &v18;
  block[9] = error;
  block[10] = metadata;
  block[8] = &v12;
  dispatch_sync(accessQueue, block);
  if (*(v23 + 24) && *(v19 + 24))
  {
    v8 = 1;
    if (metadata && v13[5])
    {
      v9 = [OKMediaItemMetadata alloc];
      *metadata = [(OKMediaItemMetadata *)v9 initWithDictionary:v13[5]];
    }
  }

  else if (error && !*error)
  {
    v8 = 0;
    *error = [OKError errorForCode:-1];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v8;
}

uint64_t __70__OKResourcesDiskCacheManager_hasMetadataForMediaItem_metadata_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__OKResourcesDiskCacheManager_hasMetadataForMediaItem_metadata_error___block_invoke_2;
  v6[3] = &unk_279C91308;
  v4 = *(a1 + 72);
  v8 = *(a1 + 80);
  v7 = *(a1 + 56);
  result = [v2 _readCachedMediaItem:v3 error:v4 byMetadataAccessor:v6];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __70__OKResourcesDiskCacheManager_hasMetadataForMediaItem_metadata_error___block_invoke_2(void *a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = 0;
  *(*(a1[4] + 8) + 24) = [v4 fileExistsAtPath:objc_msgSend(a2 isDirectory:{"relativePath"), &v7}];

  v5 = 0;
  v6 = *(a1[4] + 8);
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + 24);
  }

  *(v6 + 24) = v5 & 1;
  if (a1[6])
  {
    *(*(a1[5] + 8) + 40) = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a2];
  }
}

- (id)metadataForMediaItem:(id)item error:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__OKResourcesDiskCacheManager_metadataForMediaItem_error___block_invoke;
  block[3] = &unk_279C91358;
  block[4] = self;
  block[5] = item;
  block[7] = &v11;
  block[8] = error;
  block[6] = &v17;
  dispatch_sync(accessQueue, block);
  if (*(v18 + 24) && v12[5])
  {
    v6 = [OKMediaItemMetadata alloc];
    v7 = [(OKMediaItemMetadata *)v6 initWithDictionary:v12[5]];
    if (v12[5] && v7)
    {
      v8 = v7;
      goto LABEL_12;
    }

    if (v7)
    {
    }
  }

  if (error && !*error)
  {
    v8 = 0;
    *error = [OKError errorForCode:-1];
  }

  else
  {
    v8 = 0;
  }

LABEL_12:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v8;
}

uint64_t __58__OKResourcesDiskCacheManager_metadataForMediaItem_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__OKResourcesDiskCacheManager_metadataForMediaItem_error___block_invoke_2;
  v6[3] = &unk_279C8E7E8;
  v4 = a1[8];
  v6[4] = a1[7];
  result = [v2 _readCachedMediaItem:v3 error:v4 byMetadataAccessor:v6];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __58__OKResourcesDiskCacheManager_metadataForMediaItem_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a2];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (BOOL)setMetadata:(id)metadata forMediaItem:(id)item error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__OKResourcesDiskCacheManager_setMetadata_forMediaItem_error___block_invoke;
  block[3] = &unk_279C913A8;
  block[4] = self;
  block[5] = item;
  block[7] = &v10;
  block[8] = error;
  block[6] = metadata;
  dispatch_sync(accessQueue, block);
  v7 = *(v11 + 24);
  if (error && (v11[3] & 1) == 0 && !*error)
  {
    *error = [OKError errorForCode:-1];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __62__OKResourcesDiskCacheManager_setMetadata_forMediaItem_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__OKResourcesDiskCacheManager_setMetadata_forMediaItem_error___block_invoke_2;
  v6[3] = &unk_279C91380;
  v7 = *(a1 + 48);
  result = [v2 _writeCachedMediaItem:v3 error:v4 byMetadataAccessor:v6];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t __62__OKResourcesDiskCacheManager_setMetadata_forMediaItem_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) writeToFileURL:a2];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)removeMetadataForMediaItem:(id)item error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__OKResourcesDiskCacheManager_removeMetadataForMediaItem_error___block_invoke;
  v8[3] = &unk_279C913D0;
  v8[4] = self;
  v8[5] = item;
  v8[6] = &v9;
  v8[7] = error;
  dispatch_sync(accessQueue, v8);
  v6 = *(v10 + 24);
  if (error && (v10[3] & 1) == 0 && !*error)
  {
    *error = [OKError errorForCode:-1];
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __64__OKResourcesDiskCacheManager_removeMetadataForMediaItem_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __64__OKResourcesDiskCacheManager_removeMetadataForMediaItem_error___block_invoke_2;
  v9 = &unk_279C912B8;
  v4 = a1[5];
  v10 = a1[6];
  result = [v2 _writeCachedMediaItem:v4 error:MEMORY[0x277D85DD0] byMetadataAccessor:{3221225472, __64__OKResourcesDiskCacheManager_removeMetadataForMediaItem_error___block_invoke_2, &unk_279C912B8, v10, v3}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __64__OKResourcesDiskCacheManager_removeMetadataForMediaItem_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 32) + 8) + 24) = [v4 removeItemAtURL:a2 error:*(a1 + 40)];
}

- (BOOL)_readCachedMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error byThumbnailAccessor:(id)accessor
{
  objc_sync_enter(item);
  (*(accessor + 2))(accessor, [(OKResourcesDiskCacheManager *)self _cacheResourceThumbnailURLForMediaItem:item resolution:resolution]);
  objc_sync_exit(item);
  return 1;
}

- (BOOL)_writeCachedMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error byThumbnailAccessor:(id)accessor
{
  objc_sync_enter(item);
  (*(accessor + 2))(accessor, [(OKResourcesDiskCacheManager *)self _cacheResourceThumbnailURLForMediaItem:item resolution:resolution]);
  objc_sync_exit(item);
  return 1;
}

- (BOOL)_writeCachedMediaItem:(id)item error:(id *)error byThumbnailsAccessor:(id)accessor
{
  objc_sync_enter(item);
  (*(accessor + 2))(accessor, [(OKResourcesDiskCacheManager *)self _cacheResourceThumbnailsURLForMediaItem:item]);
  objc_sync_exit(item);
  return 1;
}

- (BOOL)hasThumbnailForMediaItem:(id)item resolution:(unint64_t)resolution thumbnail:(id *)thumbnail error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__OKResourcesDiskCacheManager_hasThumbnailForMediaItem_resolution_thumbnail_error___block_invoke;
  block[3] = &unk_279C913F8;
  block[4] = self;
  block[5] = item;
  block[8] = resolution;
  block[9] = error;
  block[6] = &v15;
  block[7] = &v11;
  block[10] = thumbnail;
  dispatch_sync(accessQueue, block);
  if (*(v16 + 24) && (v12[3] & 1) != 0)
  {
    v8 = 1;
  }

  else if (error && !*error)
  {
    v8 = 0;
    *error = [OKError errorForCode:-1];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __83__OKResourcesDiskCacheManager_hasThumbnailForMediaItem_resolution_thumbnail_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  v5 = a1[9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__OKResourcesDiskCacheManager_hasThumbnailForMediaItem_resolution_thumbnail_error___block_invoke_2;
  v8[3] = &unk_279C912B8;
  v6 = a1[10];
  v8[4] = a1[7];
  v8[5] = v6;
  result = [v2 _readCachedMediaItem:v3 resolution:v4 error:v5 byThumbnailAccessor:v8];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __83__OKResourcesDiskCacheManager_hasThumbnailForMediaItem_resolution_thumbnail_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = 0;
  *(*(*(a1 + 32) + 8) + 24) = [v4 fileExistsAtPath:objc_msgSend(a2 isDirectory:{"relativePath"), &v7}];

  v5 = 0;
  v6 = *(*(a1 + 32) + 8);
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + 24);
  }

  *(v6 + 24) = v5 & 1;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (*(a1 + 40))
    {
      **(a1 + 40) = OFCGImageCreateWithURL();
    }
  }
}

- (id)thumbnailForMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__OKResourcesDiskCacheManager_thumbnailForMediaItem_resolution_error___block_invoke;
  v10[3] = &unk_279C91420;
  v10[4] = self;
  v10[5] = item;
  v10[8] = resolution;
  v10[9] = error;
  v10[6] = &v15;
  v10[7] = &v11;
  dispatch_sync(accessQueue, v10);
  if (*(v16 + 24) && (v7 = v12[3]) != 0)
  {
    v8 = v7;
  }

  else if (error && !*error)
  {
    v8 = 0;
    *error = [OKError errorForCode:-1];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __70__OKResourcesDiskCacheManager_thumbnailForMediaItem_resolution_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  v5 = a1[9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__OKResourcesDiskCacheManager_thumbnailForMediaItem_resolution_error___block_invoke_2;
  v7[3] = &unk_279C8E7E8;
  v7[4] = a1[7];
  result = [v2 _readCachedMediaItem:v3 resolution:v4 error:v5 byThumbnailAccessor:v7];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t __70__OKResourcesDiskCacheManager_thumbnailForMediaItem_resolution_error___block_invoke_2(uint64_t a1)
{
  result = OFCGImageCreateWithURL();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)setThumbnail:(id)thumbnail forMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  AlphaInfo = CGImageGetAlphaInfo(thumbnail);
  CGImageRetain(thumbnail);
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "generateUUID"), "stringByAppendingPathExtension:", @"tmp"}];
  if (AlphaInfo)
  {
    OFCGImageSavePNGToURL();
  }

  else
  {
    OFCGImageSaveJPEGToURL();
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__OKResourcesDiskCacheManager_setThumbnail_forMediaItem_resolution_error___block_invoke;
  block[3] = &unk_279C91470;
  block[4] = self;
  block[5] = item;
  block[8] = &v17;
  block[9] = resolution;
  block[10] = error;
  block[6] = v12;
  block[7] = thumbnail;
  dispatch_sync(accessQueue, block);
  v14 = *(v18 + 24);
  if (error && (v18[3] & 1) == 0 && !*error)
  {
    *error = [OKError errorForCode:-1];
  }

  _Block_object_dispose(&v17, 8);
  return v14;
}

uint64_t __74__OKResourcesDiskCacheManager_setThumbnail_forMediaItem_resolution_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __74__OKResourcesDiskCacheManager_setThumbnail_forMediaItem_resolution_error___block_invoke_2;
  v10 = &unk_279C91448;
  v12 = *(a1 + 64);
  v13 = v5;
  v11 = *(a1 + 48);
  result = [v2 _writeCachedMediaItem:v3 resolution:v4 error:MEMORY[0x277D85DD0] byThumbnailAccessor:{3221225472, __74__OKResourcesDiskCacheManager_setThumbnail_forMediaItem_resolution_error___block_invoke_2, &unk_279C91448, v11, v12, v5}];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void __74__OKResourcesDiskCacheManager_setThumbnail_forMediaItem_resolution_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v5 = [a2 URLByDeletingLastPathComponent];
  v7 = 0;
  if (([v4 fileExistsAtPath:{objc_msgSend(v5, "path")}] & 1) == 0 && !objc_msgSend(v4, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v5, 1, 0, &v7))
  {
    goto LABEL_7;
  }

  if ([v4 fileExistsAtPath:{objc_msgSend(a2, "relativePath")}] && (objc_msgSend(v4, "removeItemAtURL:error:", a2, &v7) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if (([v4 moveItemAtURL:*(a1 + 32) toURL:a2 error:&v7] & 1) == 0)
  {
LABEL_7:
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if (v7)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      *v6 = v7;
    }
  }

  CGImageRelease(*(a1 + 40));
}

- (BOOL)removeThumbnailForMediaItem:(id)item resolution:(unint64_t)resolution error:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__OKResourcesDiskCacheManager_removeThumbnailForMediaItem_resolution_error___block_invoke;
  block[3] = &unk_279C91498;
  block[4] = self;
  block[5] = item;
  block[6] = &v10;
  block[7] = resolution;
  block[8] = error;
  dispatch_sync(accessQueue, block);
  v7 = *(v11 + 24);
  if (error && (v11[3] & 1) == 0 && !*error)
  {
    *error = [OKError errorForCode:-1];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __76__OKResourcesDiskCacheManager_removeThumbnailForMediaItem_resolution_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = a1[8];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __76__OKResourcesDiskCacheManager_removeThumbnailForMediaItem_resolution_error___block_invoke_2;
  v10 = &unk_279C912B8;
  v5 = a1[5];
  v11 = a1[6];
  result = [v2 _writeCachedMediaItem:v5 resolution:v3 error:MEMORY[0x277D85DD0] byThumbnailAccessor:{3221225472, __76__OKResourcesDiskCacheManager_removeThumbnailForMediaItem_resolution_error___block_invoke_2, &unk_279C912B8, v11, v4}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __76__OKResourcesDiskCacheManager_removeThumbnailForMediaItem_resolution_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 32) + 8) + 24) = [v4 removeItemAtURL:a2 error:*(a1 + 40)];
}

- (BOOL)removeThumbnailsForMediaItem:(id)item error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__OKResourcesDiskCacheManager_removeThumbnailsForMediaItem_error___block_invoke;
  v8[3] = &unk_279C913D0;
  v8[4] = self;
  v8[5] = item;
  v8[6] = &v9;
  v8[7] = error;
  dispatch_sync(accessQueue, v8);
  v6 = *(v10 + 24);
  if (error && (v10[3] & 1) == 0 && !*error)
  {
    *error = [OKError errorForCode:-1];
  }

  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __66__OKResourcesDiskCacheManager_removeThumbnailsForMediaItem_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __66__OKResourcesDiskCacheManager_removeThumbnailsForMediaItem_error___block_invoke_2;
  v9 = &unk_279C912B8;
  v4 = a1[5];
  v10 = a1[6];
  result = [v2 _writeCachedMediaItem:v4 error:MEMORY[0x277D85DD0] byThumbnailsAccessor:{3221225472, __66__OKResourcesDiskCacheManager_removeThumbnailsForMediaItem_error___block_invoke_2, &unk_279C912B8, v10, v3}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __66__OKResourcesDiskCacheManager_removeThumbnailsForMediaItem_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  *(*(*(a1 + 32) + 8) + 24) = [v4 removeItemAtURL:a2 error:*(a1 + 40)];
}

@end