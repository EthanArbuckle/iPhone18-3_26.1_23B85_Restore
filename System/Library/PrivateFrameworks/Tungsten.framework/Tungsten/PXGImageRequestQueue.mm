@interface PXGImageRequestQueue
- (PXGImageRequestPerformer)imageRequestPerformer;
- (void)_discardIndexes:(id)indexes;
- (void)_removeAllRequests;
- (void)cancelTextureRequests:(id)requests;
- (void)dealloc;
- (void)enqueueRequestsWithSpriteIndexRange:(_PXGSpriteIndexRange)range textureRequestIDs:(_NSRange)ds displayAssetFetchResult:(id)result observer:(id)observer presentationStyles:(unint64_t)styles targetSize:(CGSize)size screenScale:(double)scale screenMaxHeadroom:(double)self0 adjustment:(id)self1 intent:(unint64_t)self2 useLowMemoryDecode:(BOOL)self3 applyCleanApertureCrop:(BOOL)self4 mediaProvider:(id)self5;
- (void)performRequestsWithAllowedIDs:(id)ds;
- (void)setCount:(int64_t)count;
@end

@implementation PXGImageRequestQueue

- (PXGImageRequestPerformer)imageRequestPerformer
{
  WeakRetained = objc_loadWeakRetained(&self->_imageRequestPerformer);

  return WeakRetained;
}

- (void)_discardIndexes:(id)indexes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__PXGImageRequestQueue__discardIndexes___block_invoke;
  v3[3] = &unk_2782AA948;
  v3[4] = self;
  [indexes enumerateRangesWithOptions:2 usingBlock:v3];
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

- (void)cancelTextureRequests:(id)requests
{
  requestsCopy = requests;
  v5 = requestsCopy;
  count = self->_count;
  if (count)
  {
    v13 = requestsCopy;
    v7 = [requestsCopy count];
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

- (void)performRequestsWithAllowedIDs:(id)ds
{
  dsCopy = ds;
  v5 = dsCopy;
  count = self->_count;
  if (count)
  {
    v23 = dsCopy;
    if (!dsCopy || (v7 = [dsCopy count], v5 = v23, v7))
    {
      imageRequestPerformer = [(PXGImageRequestQueue *)self imageRequestPerformer];
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

            [imageRequestPerformer performRequestForSpriteIndex:var0 textureRequestID:var1 sharedState:v21];
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

- (void)enqueueRequestsWithSpriteIndexRange:(_PXGSpriteIndexRange)range textureRequestIDs:(_NSRange)ds displayAssetFetchResult:(id)result observer:(id)observer presentationStyles:(unint64_t)styles targetSize:(CGSize)size screenScale:(double)scale screenMaxHeadroom:(double)self0 adjustment:(id)self1 intent:(unint64_t)self2 useLowMemoryDecode:(BOOL)self3 applyCleanApertureCrop:(BOOL)self4 mediaProvider:(id)self5
{
  location = ds.location;
  height = size.height;
  width = size.width;
  rangeCopy = range;
  length = range.length;
  resultCopy = result;
  observerCopy = observer;
  adjustmentCopy = adjustment;
  providerCopy = provider;
  LOBYTE(v31) = crop;
  providerCopy = [[PXGImageRequestSharedState alloc] initWithDisplayAssetFetchResult:resultCopy observer:observerCopy presentationStyles:styles targetSize:adjustmentCopy screenScale:intent screenMaxHeadroom:decode adjustment:width intent:height useLowMemoryDecode:scale applyCleanApertureCrop:headroom mediaProvider:v31, providerCopy];
  v28 = [(PXGImageRequestQueue *)self count];
  [(PXGImageRequestQueue *)self setCount:[(PXGImageRequestQueue *)self count]+ HIDWORD(*&rangeCopy)];
  if (length)
  {
    p_var2 = &self->_requests[v28].var2;
    do
    {
      *(p_var2 - 2) = rangeCopy.location;
      *(p_var2 - 1) = location;
      *p_var2 = 0;
      v30 = providerCopy;
      if (*p_var2 != v30)
      {

        *p_var2 = v30;
      }

      p_var2 += 2;
      ++location;
      ++rangeCopy.location;
      --length;
    }

    while (length);
  }
}

- (void)setCount:(int64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    capacity = self->_capacity;
    if (capacity < count)
    {
      if (!capacity)
      {
        capacity = 32;
        self->_capacity = 32;
      }

      if (capacity < count)
      {
        do
        {
          capacity *= 2;
        }

        while (capacity < count);
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