@interface TSDTileStorage
- (TSDTileStorage)init;
- (id)contentsInRect:(CGRect)rect contentsScale:(double)scale forTileAtLocation:(id)location inBucket:(id)bucket;
- (id)p_cacheKeyForImageInRect:(CGRect)rect contentsScale:(double)scale tileLocation:(id)location;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)dealloc;
- (void)removeAllContents;
- (void)removeImagesInBucket:(id)bucket;
- (void)storeContents:(id)contents inRect:(CGRect)rect contentsScale:(double)scale forTileAtLocation:(id)location inBucket:(id)bucket;
@end

@implementation TSDTileStorage

- (TSDTileStorage)init
{
  v5.receiver = self;
  v5.super_class = TSDTileStorage;
  v2 = [(TSDTileStorage *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v2->mCache = v3;
    [(NSCache *)v3 setDelegate:v2];
    v2->mReverseCacheKeys = objc_alloc_init(MEMORY[0x277D6C348]);
    v2->mReverseCacheKeysLock = dispatch_semaphore_create(1);
    v2->mCacheKeysByBucket = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->mCacheKeysQueue = dispatch_queue_create("com.apple.iwork.TSDTileStorage.cache-keys", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->mCacheKeysQueue);
  dispatch_release(self->mReverseCacheKeysLock);

  v3.receiver = self;
  v3.super_class = TSDTileStorage;
  [(TSDTileStorage *)&v3 dealloc];
}

- (void)storeContents:(id)contents inRect:(CGRect)rect contentsScale:(double)scale forTileAtLocation:(id)location inBucket:(id)bucket
{
  scale = [(TSDTileStorage *)self p_cacheKeyForImageInRect:location.var0 contentsScale:location.var1 tileLocation:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, scale];
  if (!scale)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileStorage storeContents:inRect:contentsScale:forTileAtLocation:inBucket:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileStorage.m"), 61, @"invalid nil value for '%s'", "imageKey"}];
  }

  v13 = [bucket stringByAppendingPathComponent:scale];
  mCacheKeysQueue = self->mCacheKeysQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__TSDTileStorage_storeContents_inRect_contentsScale_forTileAtLocation_inBucket___block_invoke;
  block[3] = &unk_279D492F0;
  block[4] = self;
  block[5] = contents;
  block[6] = v13;
  block[7] = bucket;
  block[8] = scale;
  dispatch_async(mCacheKeysQueue, block);
}

uint64_t __80__TSDTileStorage_storeContents_inRect_contentsScale_forTileAtLocation_inBucket___block_invoke(void *a1)
{
  dispatch_semaphore_wait(*(a1[4] + 24), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  dispatch_semaphore_signal(*(a1[4] + 24));
  if (v2)
  {
    [*(a1[4] + 8) removeObjectForKey:v2];
  }

  [*(a1[4] + 8) setObject:a1[5] forKey:a1[6]];
  dispatch_semaphore_wait(*(a1[4] + 24), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1[4] + 16) setObject:a1[6] forKey:a1[5]];
  dispatch_semaphore_signal(*(a1[4] + 24));
  v3 = [*(a1[4] + 40) objectForKey:a1[7]];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    [*(a1[4] + 40) setObject:v3 forKey:a1[7]];
  }

  v4 = a1[8];

  return [v3 addObject:v4];
}

- (id)contentsInRect:(CGRect)rect contentsScale:(double)scale forTileAtLocation:(id)location inBucket:(id)bucket
{
  scale = [(TSDTileStorage *)self p_cacheKeyForImageInRect:location.var0 contentsScale:location.var1 tileLocation:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, scale];
  if (!scale)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileStorage contentsInRect:contentsScale:forTileAtLocation:inBucket:]"];
    [currentHandler handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileStorage.m"), 97, @"invalid nil value for '%s'", "imageFileName"}];
  }

  v11 = [bucket stringByAppendingPathComponent:scale];
  mCache = self->mCache;

  return [(NSCache *)mCache objectForKey:v11];
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  dispatch_semaphore_wait(self->mReverseCacheKeysLock, 0xFFFFFFFFFFFFFFFFLL);
  [(TSUPointerKeyDictionary *)self->mReverseCacheKeys removeObjectForKey:object];
  mReverseCacheKeysLock = self->mReverseCacheKeysLock;

  dispatch_semaphore_signal(mReverseCacheKeysLock);
}

- (void)removeImagesInBucket:(id)bucket
{
  mCacheKeysQueue = self->mCacheKeysQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TSDTileStorage_removeImagesInBucket___block_invoke;
  v4[3] = &unk_279D47708;
  v4[4] = self;
  v4[5] = bucket;
  dispatch_sync(mCacheKeysQueue, v4);
}

uint64_t __39__TSDTileStorage_removeImagesInBucket___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(a1 + 32) + 8) removeObjectForKey:{objc_msgSend(*(a1 + 40), "stringByAppendingPathComponent:", *(*(&v9 + 1) + 8 * v7++))}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  return [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
}

- (void)removeAllContents
{
  mCacheKeysQueue = self->mCacheKeysQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TSDTileStorage_removeAllContents__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  dispatch_sync(mCacheKeysQueue, block);
}

uint64_t __35__TSDTileStorage_removeAllContents__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = *(*(a1 + 32) + 40);

  return [v2 removeAllObjects];
}

- (id)p_cacheKeyForImageInRect:(CGRect)rect contentsScale:(double)scale tileLocation:(id)location
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu_%lu", location.var0, location.var1];
  height = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld_%ld_%ld_%ld", x, y, width, height];
  scale = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", scale];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v10, height, scale];
}

@end