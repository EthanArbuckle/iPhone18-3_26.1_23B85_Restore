@interface PXGImageRequestQueue
- (PXGImageRequestPerformer)imageRequestPerformer;
- (void)_discardIndexes:(id)a3;
- (void)_removeAllRequests;
- (void)cancelTextureRequests:(id)a3;
- (void)dealloc;
- (void)enqueueRequestsWithSpriteIndexRange:(_PXGSpriteIndexRange)a3 textureRequestIDs:(_NSRange)a4 displayAssetFetchResult:(id)a5 observer:(id)a6 presentationStyles:(unint64_t)a7 targetSize:(CGSize)a8 screenScale:(double)a9 screenMaxHeadroom:(double)a10 adjustment:(id)a11 intent:(unint64_t)a12 useLowMemoryDecode:(BOOL)a13 applyCleanApertureCrop:(BOOL)a14 mediaProvider:(id)a15;
- (void)performRequestsWithAllowedIDs:(id)a3;
- (void)setCount:(int64_t)a3;
@end

@implementation PXGImageRequestQueue

- (PXGImageRequestPerformer)imageRequestPerformer
{
  WeakRetained = objc_loadWeakRetained(&self->_imageRequestPerformer);

  return WeakRetained;
}

- (void)_discardIndexes:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__PXGImageRequestQueue__discardIndexes___block_invoke;
  v3[3] = &unk_2782AA948;
  v3[4] = self;
  [a3 enumerateRangesWithOptions:2 usingBlock:v3];
}

uint64_t __40__PXGImageRequestQueue__discardIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _PXGArrayRemoveRange(*(*(a1 + 32) + 8), 16, [*(a1 + 32) count], a2, a3);
  v5 = *(a1 + 32);
  v6 = [v5 count] - a3;

  return [v5 setCount:v6];
}

- (void)_removeAllRequests
{
  count = self->_count;
  if (count >= 1)
  {
    v4 = 8;
    do
    {
      requests = self->_requests;
      v6 = *(&requests->var0 + v4);
      if (v6)
      {

        *(&requests->var0 + v4) = 0;
      }

      v4 += 16;
      --count;
    }

    while (count);
  }

  [(PXGImageRequestQueue *)self setCount:0];
}

- (void)cancelTextureRequests:(id)a3
{
  v4 = a3;
  v5 = v4;
  count = self->_count;
  if (count)
  {
    v13 = v4;
    v7 = [v4 count];
    v5 = v13;
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
      if (count >= 1)
      {
        v9 = 0;
        for (i = 0; i != count; ++i)
        {
          v11 = &self->_requests[v9];
          if ([v13 containsIndex:v11->var1])
          {
            var2 = v11->var2;
            if (var2)
            {

              v11->var2 = 0;
            }

            [v8 addIndex:i];
          }

          ++v9;
        }
      }

      [(PXGImageRequestQueue *)self _discardIndexes:v8];

      v5 = v13;
    }
  }
}

- (void)performRequestsWithAllowedIDs:(id)a3
{
  v4 = a3;
  v5 = v4;
  count = self->_count;
  if (count)
  {
    v23 = v4;
    if (!v4 || (v7 = [v4 count], v5 = v23, v7))
    {
      v8 = [(PXGImageRequestQueue *)self imageRequestPerformer];
      v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v10 = v23;
      v11 = v9;
      if (count >= 1)
      {
        v12 = 0;
        for (i = 0; i != count; ++i)
        {
          requests = self->_requests;
          if (!v10 || (v15 = [v10 containsIndex:requests[v12].var1], v10 = v23, v15))
          {
            v16 = &requests[v12];
            var0 = requests[v12].var0;
            var1 = v16->var1;
            var2 = v16->var2;
            if (var2)
            {
              v20 = CFRetain(var2);
              v21 = CFAutorelease(v20);
            }

            else
            {
              v21 = 0;
            }

            [v8 performRequestForSpriteIndex:var0 textureRequestID:var1 sharedState:v21];
            v22 = v16->var2;
            if (v22)
            {

              v16->var2 = 0;
            }

            [v11 addIndex:i];
            v10 = v23;
          }

          ++v12;
        }
      }

      [(PXGImageRequestQueue *)self _discardIndexes:v11];

      v5 = v23;
    }
  }
}

- (void)enqueueRequestsWithSpriteIndexRange:(_PXGSpriteIndexRange)a3 textureRequestIDs:(_NSRange)a4 displayAssetFetchResult:(id)a5 observer:(id)a6 presentationStyles:(unint64_t)a7 targetSize:(CGSize)a8 screenScale:(double)a9 screenMaxHeadroom:(double)a10 adjustment:(id)a11 intent:(unint64_t)a12 useLowMemoryDecode:(BOOL)a13 applyCleanApertureCrop:(BOOL)a14 mediaProvider:(id)a15
{
  location = a4.location;
  height = a8.height;
  width = a8.width;
  v21 = a3;
  length = a3.length;
  v33 = a5;
  v24 = a6;
  v25 = a11;
  v26 = a15;
  LOBYTE(v31) = a14;
  v27 = [[PXGImageRequestSharedState alloc] initWithDisplayAssetFetchResult:v33 observer:v24 presentationStyles:a7 targetSize:v25 screenScale:a12 screenMaxHeadroom:a13 adjustment:width intent:height useLowMemoryDecode:a9 applyCleanApertureCrop:a10 mediaProvider:v31, v26];
  v28 = [(PXGImageRequestQueue *)self count];
  [(PXGImageRequestQueue *)self setCount:[(PXGImageRequestQueue *)self count]+ HIDWORD(*&v21)];
  if (length)
  {
    p_var2 = &self->_requests[v28].var2;
    do
    {
      *(p_var2 - 2) = v21.location;
      *(p_var2 - 1) = location;
      *p_var2 = 0;
      v30 = v27;
      if (*p_var2 != v30)
      {

        *p_var2 = v30;
      }

      p_var2 += 2;
      ++location;
      ++v21.location;
      --length;
    }

    while (length);
  }
}

- (void)setCount:(int64_t)a3
{
  if (self->_count != a3)
  {
    self->_count = a3;
    capacity = self->_capacity;
    if (capacity < a3)
    {
      if (!capacity)
      {
        capacity = 32;
        self->_capacity = 32;
      }

      if (capacity < a3)
      {
        do
        {
          capacity *= 2;
        }

        while (capacity < a3);
        self->_capacity = capacity;
      }

      self->_requests = malloc_type_realloc(self->_requests, 16 * capacity, 0x42760281uLL);
    }
  }
}

- (void)dealloc
{
  [(PXGImageRequestQueue *)self _removeAllRequests];
  free(self->_requests);
  v3.receiver = self;
  v3.super_class = PXGImageRequestQueue;
  [(PXGImageRequestQueue *)&v3 dealloc];
}

@end