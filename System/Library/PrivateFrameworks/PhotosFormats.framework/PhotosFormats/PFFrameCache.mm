@interface PFFrameCache
+ (id)sharedFrameGenerationQueue;
- (CGImage)_createPredrawnImage:(CGImage *)a3;
- (CGImage)_frameAtIndex:(unint64_t)a3 allowLazy:(BOOL)a4;
- (PFFrameCache)initWithImageSource:(CGImageSource *)a3 cachingStrategy:(int64_t)a4 useGlobalDecodeQueue:(BOOL)a5;
- (int64_t)cacheStrategy;
- (void)_frameGenerationQueue_cacheFrameAtIndex:(unint64_t)a3;
- (void)_frameGenerationQueue_updateFrameCache;
- (void)_updateDesiredCacheSize;
- (void)_updateFrameCache;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)setCacheStrategy:(int64_t)a3;
@end

@implementation PFFrameCache

- (CGImage)_createPredrawnImage:(CGImage *)a3
{
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  BytesPerRow = CGImageGetBytesPerRow(a3);
  ColorSpace = CGImageGetColorSpace(a3);
  AlphaInfo = CGImageGetAlphaInfo(a3);
  v10 = AlphaInfo;
  if (AlphaInfo <= kCGImageAlphaOnly && ((0x99u >> AlphaInfo) & 1) != 0)
  {
    v10 = dword_1B36A20CC[AlphaInfo];
  }

  v11 = CGBitmapContextCreate(0, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, v10);
  if (v11)
  {
    v12 = v11;
    v16.size.width = Width;
    v16.size.height = Height;
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    CGContextDrawImage(v11, v16, a3);
    Image = CGBitmapContextCreateImage(v12);
    CGContextRelease(v12);
    return Image;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFFrameCache: Failed to create pre-drawing context", v15, 2u);
    }

    return 0;
  }
}

- (void)_frameGenerationQueue_updateFrameCache
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5249;
  v23 = __Block_byref_object_dispose__5250;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v17 = 0;
  v18 = 0;
  v16 = &unk_1B36BE437;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = &unk_1B36BE437;
  cacheIsolationQueue = self->_cacheIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PFFrameCache__frameGenerationQueue_updateFrameCache__block_invoke;
  block[3] = &unk_1E7B65448;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  block[7] = &v7;
  dispatch_sync(cacheIsolationQueue, block);
  if ([v20[5] count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__PFFrameCache__frameGenerationQueue_updateFrameCache__block_invoke_3;
    v5[3] = &unk_1E7B65470;
    v5[4] = self;
    v4 = MEMORY[0x1B8C64C40](v5);
    [v20[5] enumerateRangesInRange:v14[4] options:v14[5] usingBlock:{0, v4}];
    [v20[5] enumerateRangesInRange:v8[4] options:v8[5] usingBlock:{0, v4}];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

void __54__PFFrameCache__frameGenerationQueue_updateFrameCache__block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 81) & 1) == 0)
  {
    *(v1 + 81) = 1;
    v3 = a1[4];
    v4 = v3[2];
    if (v4 >= v3[6])
    {
      v5 = v3[6];
    }

    else
    {
      v5 = v3[2];
    }

    v6 = v3[8];
    v7 = v4 - v6;
    if (v5 >= v4 - v6)
    {
      v8 = v4 - v6;
    }

    else
    {
      v8 = v5;
    }

    v9 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:?];
    v10 = v9;
    if (v7 < v5)
    {
      [v9 addIndexesInRange:{0, v5 - v8}];
    }

    if (([*(a1[4] + 72) isEqualToIndexSet:v10] & 1) == 0)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:*(a1[4] + 72)];
      [v11 removeIndexes:v10];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__PFFrameCache__frameGenerationQueue_updateFrameCache__block_invoke_2;
      v18[3] = &unk_1E7B65420;
      v18[4] = a1[4];
      [v11 enumerateIndexesUsingBlock:v18];
      [*(a1[4] + 72) removeIndexes:v11];
      [v10 removeIndexes:*(a1[4] + 72)];
      objc_storeStrong((*(a1[5] + 8) + 40), v10);
      v12 = a1[4];
      v13 = *(v12 + 64);
      v14 = *(v12 + 16) - v13;
      v15 = *(a1[6] + 8);
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      v16 = *(a1[4] + 64);
      v17 = *(a1[7] + 8);
      *(v17 + 32) = 0;
      *(v17 + 40) = v16;
    }
  }
}

uint64_t __54__PFFrameCache__frameGenerationQueue_updateFrameCache__block_invoke_3(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v15 = v3;
    v16 = v7;
    v17 = v8;
    v9 = a3;
    v10 = a2;
    v11 = result;
    do
    {
      result = [*(v11 + 32) _frameGenerationQueue_cacheFrameAtIndex:{v10++, v12, v13, v14, v15, v16, v17}];
      --v9;
    }

    while (v9);
  }

  return result;
}

void __54__PFFrameCache__frameGenerationQueue_updateFrameCache__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 removeObjectForKey:v3];
}

- (void)_frameGenerationQueue_cacheFrameAtIndex:(unint64_t)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *MEMORY[0x1E696E0A8];
  v15[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(self->_gifSource, a3, v5);
  if (ImageAtIndex)
  {
    v7 = ImageAtIndex;
    v8 = [(PFFrameCache *)self _createPredrawnImage:ImageAtIndex];
    if (v8)
    {
      v9 = v8;
      CGImageRelease(v7);
      v7 = v9;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = a3;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFFrameCache: Predrawing failed for image at index %lu", buf, 0xCu);
    }

    cacheIsolationQueue = self->_cacheIsolationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__PFFrameCache__frameGenerationQueue_cacheFrameAtIndex___block_invoke;
    block[3] = &unk_1E7B66720;
    block[4] = self;
    block[5] = a3;
    block[6] = v7;
    dispatch_sync(cacheIsolationQueue, block);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v13 = a3;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFFrameCache: Unable to create image for index %lu", buf, 0xCu);
  }
}

void __56__PFFrameCache__frameGenerationQueue_cacheFrameAtIndex___block_invoke(void *a1)
{
  v2 = *(a1[4] + 56);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[5]];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = a1[6];

    CGImageRelease(v5);
  }

  else
  {
    v6 = *(a1[4] + 56);
    v7 = a1[6];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[5]];
    [v6 setObject:v7 forKey:v8];

    v9 = a1[5];
    v10 = *(a1[4] + 72);

    [v10 addIndex:v9];
  }
}

- (void)dealloc
{
  gifSource = self->_gifSource;
  if (gifSource)
  {
    CFRelease(gifSource);
  }

  v4.receiver = self;
  v4.super_class = PFFrameCache;
  [(PFFrameCache *)&v4 dealloc];
}

- (void)_updateFrameCache
{
  objc_initWeak(&location, self);
  frameGenerationQueue = self->_frameGenerationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PFFrameCache__updateFrameCache__block_invoke;
  v4[3] = &unk_1E7B654C8;
  objc_copyWeak(&v5, &location);
  dispatch_async(frameGenerationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __33__PFFrameCache__updateFrameCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _frameGenerationQueue_updateFrameCache];
}

- (void)_updateDesiredCacheSize
{
  cacheIsolationQueue = self->_cacheIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PFFrameCache__updateDesiredCacheSize__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_sync(cacheIsolationQueue, block);
}

uint64_t __39__PFFrameCache__updateDesiredCacheSize__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 80) & 1) == 0)
  {
    *(v1 + 80) = 1;
    v2 = *(result + 32);
    v3 = v2[11];
    v4 = 5;
    if (v3 != 2)
    {
      v4 = 1;
    }

    if (v3 == 1)
    {
      v4 = 2;
    }

    if (v2[3] >> 22 <= 4uLL && v3 != 0)
    {
      v4 = v2[2];
    }

    if (v2[6] != v4)
    {
      v2[6] = v4;
      return [*(result + 32) _invalidateCacheSize];
    }
  }

  return result;
}

- (void)_updateIfNeeded
{
  [(PFFrameCache *)self _updateDesiredCacheSize];

  [(PFFrameCache *)self _updateFrameCache];
}

- (void)setCacheStrategy:(int64_t)a3
{
  cacheIsolationQueue = self->_cacheIsolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PFFrameCache_setCacheStrategy___block_invoke;
  v5[3] = &unk_1E7B653F8;
  v5[4] = self;
  v5[5] = a3;
  dispatch_sync(cacheIsolationQueue, v5);
  [(PFFrameCache *)self _updateIfNeeded];
}

uint64_t __33__PFFrameCache_setCacheStrategy___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 88) != v2)
  {
    *(v1 + 88) = v2;
    return [*(result + 32) _invalidateCacheSize];
  }

  return result;
}

- (int64_t)cacheStrategy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 2;
  cacheIsolationQueue = self->_cacheIsolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__PFFrameCache_cacheStrategy__block_invoke;
  v5[3] = &unk_1E7B66DC0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cacheIsolationQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (CGImage)_frameAtIndex:(unint64_t)a3 allowLazy:(BOOL)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  cacheIsolationQueue = self->_cacheIsolationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PFFrameCache__frameAtIndex_allowLazy___block_invoke;
  v8[3] = &unk_1E7B653D0;
  v8[5] = &v10;
  v8[6] = a3;
  v8[4] = self;
  v9 = a4;
  dispatch_sync(cacheIsolationQueue, v8);
  [(PFFrameCache *)self _updateFrameCache];
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __40__PFFrameCache__frameAtIndex_allowLazy___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = *(a1 + 48);
  if (v3 != v4)
  {
    *(v2 + 64) = v4;
    [*(a1 + 32) _invalidateCache];
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
  }

  v5 = *(v2 + 56);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  *(*(*(a1 + 40) + 8) + 24) = [v5 objectForKey:v6];

  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    if (*(a1 + 56) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 48);
        *buf = 134217984;
        v17 = v7;
        _os_log_debug_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "PFFrameCache: Requested unavailable frame at index %lu (ahead of ourselves!!)", buf, 0xCu);
      }
    }

    else
    {
      v14 = *MEMORY[0x1E696E0A8];
      v15 = MEMORY[0x1E695E110];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *(*(*(a1 + 40) + 8) + 24) = CGImageSourceCreateImageAtIndex(*(*(a1 + 32) + 8), *(a1 + 48), v8);
      v9 = *(*(*(a1 + 40) + 8) + 24);
      if (v9)
      {
        v10 = *(*(a1 + 32) + 56);
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
        [v10 setObject:v9 forKey:v11];

        [*(*(a1 + 32) + 72) addIndex:*(a1 + 48)];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 48);
          *buf = 134217984;
          v17 = v12;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFFrameCache: Returning undrawn frame at index %lu", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 48);
        *buf = 134217984;
        v17 = v13;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFFrameCache: Failed to create image for undrawn frame at index %lu", buf, 0xCu);
      }
    }
  }
}

- (PFFrameCache)initWithImageSource:(CGImageSource *)a3 cachingStrategy:(int64_t)a4 useGlobalDecodeQueue:(BOOL)a5
{
  v5 = a5;
  v19.receiver = self;
  v19.super_class = PFFrameCache;
  v8 = [(PFFrameCache *)&v19 init];
  if (v8)
  {
    v8->_gifSource = CFRetain(a3);
    v8->_frameCount = CGImageSourceGetCount(a3);
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    frameCache = v8->_frameCache;
    v8->_frameCache = v9;

    v8->_fullCachingCost = pf_estimateFullAnimatedImageMemoryCost(a3);
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("com.apple.PFFrameCache.cacheIsolationQueue", v11);
    cacheIsolationQueue = v8->_cacheIsolationQueue;
    v8->_cacheIsolationQueue = v12;

    if (v5)
    {
      v14 = [objc_opt_class() sharedFrameGenerationQueue];
    }

    else
    {
      v14 = dispatch_queue_create("com.apple.PFFrameCache.frameGenerationQueue", v11);
    }

    frameGenerationQueue = v8->_frameGenerationQueue;
    v8->_frameGenerationQueue = v14;

    v16 = [MEMORY[0x1E696AD50] indexSet];
    cachedIndexes = v8->_cachedIndexes;
    v8->_cachedIndexes = v16;

    v8->_cacheStrategy = a4;
    [(PFFrameCache *)v8 _updateIfNeeded];
  }

  return v8;
}

+ (id)sharedFrameGenerationQueue
{
  if (sharedFrameGenerationQueue_onceToken != -1)
  {
    dispatch_once(&sharedFrameGenerationQueue_onceToken, &__block_literal_global_5274);
  }

  v3 = sharedFrameGenerationQueue__sharedQueue;

  return v3;
}

void __42__PFFrameCache_sharedFrameGenerationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.PFFrameCache.frameGenerationQueue", v2);
  v1 = sharedFrameGenerationQueue__sharedQueue;
  sharedFrameGenerationQueue__sharedQueue = v0;
}

@end