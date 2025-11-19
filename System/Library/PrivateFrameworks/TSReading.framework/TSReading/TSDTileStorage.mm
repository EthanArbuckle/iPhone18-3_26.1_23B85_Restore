@interface TSDTileStorage
- (TSDTileStorage)init;
- (id)contentsInRect:(CGRect)a3 contentsScale:(double)a4 forTileAtLocation:(id)a5 inBucket:(id)a6;
- (id)p_cacheKeyForImageInRect:(CGRect)a3 contentsScale:(double)a4 tileLocation:(id)a5;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)dealloc;
- (void)removeAllContents;
- (void)removeImagesInBucket:(id)a3;
- (void)storeContents:(id)a3 inRect:(CGRect)a4 contentsScale:(double)a5 forTileAtLocation:(id)a6 inBucket:(id)a7;
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

- (void)storeContents:(id)a3 inRect:(CGRect)a4 contentsScale:(double)a5 forTileAtLocation:(id)a6 inBucket:(id)a7
{
  v10 = [(TSDTileStorage *)self p_cacheKeyForImageInRect:a6.var0 contentsScale:a6.var1 tileLocation:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, a5];
  if (!v10)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileStorage storeContents:inRect:contentsScale:forTileAtLocation:inBucket:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileStorage.m"), 61, @"invalid nil value for '%s'", "imageKey"}];
  }

  v13 = [a7 stringByAppendingPathComponent:v10];
  mCacheKeysQueue = self->mCacheKeysQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__TSDTileStorage_storeContents_inRect_contentsScale_forTileAtLocation_inBucket___block_invoke;
  block[3] = &unk_279D492F0;
  block[4] = self;
  block[5] = a3;
  block[6] = v13;
  block[7] = a7;
  block[8] = v10;
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

- (id)contentsInRect:(CGRect)a3 contentsScale:(double)a4 forTileAtLocation:(id)a5 inBucket:(id)a6
{
  v8 = [(TSDTileStorage *)self p_cacheKeyForImageInRect:a5.var0 contentsScale:a5.var1 tileLocation:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4];
  if (!v8)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileStorage contentsInRect:contentsScale:forTileAtLocation:inBucket:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileStorage.m"), 97, @"invalid nil value for '%s'", "imageFileName"}];
  }

  v11 = [a6 stringByAppendingPathComponent:v8];
  mCache = self->mCache;

  return [(NSCache *)mCache objectForKey:v11];
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  dispatch_semaphore_wait(self->mReverseCacheKeysLock, 0xFFFFFFFFFFFFFFFFLL);
  [(TSUPointerKeyDictionary *)self->mReverseCacheKeys removeObjectForKey:a4];
  mReverseCacheKeysLock = self->mReverseCacheKeysLock;

  dispatch_semaphore_signal(mReverseCacheKeysLock);
}

- (void)removeImagesInBucket:(id)a3
{
  mCacheKeysQueue = self->mCacheKeysQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TSDTileStorage_removeImagesInBucket___block_invoke;
  v4[3] = &unk_279D47708;
  v4[4] = self;
  v4[5] = a3;
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

- (id)p_cacheKeyForImageInRect:(CGRect)a3 contentsScale:(double)a4 tileLocation:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu_%lu", a5.var0, a5.var1];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld_%ld_%ld_%ld", x, y, width, height];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a4];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", v10, v11, v12];
}

@end