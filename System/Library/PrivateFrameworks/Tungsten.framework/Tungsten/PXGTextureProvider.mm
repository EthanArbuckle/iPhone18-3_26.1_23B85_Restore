@interface PXGTextureProvider
- ($28B10562A11C0018BB97DE3323169FD5)interactionState;
- (BOOL)isRequestActive:(int)a3;
- (PXGTextureProvider)init;
- (PXGTextureProviderDelegate)delegate;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (id)requestRenderSnapshot:(id *)a3 offscreenEffect:(id)a4;
- (int64_t)registerImageDataSpec:(id *)a3;
- (int64_t)requestQueue_indexForImageDataSpec:(id *)a3;
- (void)cancelTextureRequests:(id)a3;
- (void)clearTextureAtlasManagerCache;
- (void)dealloc;
- (void)performDeferredCancellations;
- (void)provideCGImage:(CGImage *)a3 forRequestID:(int)a4;
- (void)provideCGImage:(CGImage *)a3 options:(id)a4 adjustment:(id)a5 forRequestID:(int)a6;
- (void)provideCGImage:(CGImage *)a3 options:(id)a4 adjustment:(id)a5 isDegraded:(BOOL)a6 forRequestID:(int)a7;
- (void)provideCGImage:(CGImage *)a3 options:(id)a4 forRequestID:(int)a5;
- (void)provideCGImage:(CGImage *)a3 options:(id)a4 isDegraded:(BOOL)a5 forRequestID:(int)a6;
- (void)provideFailureWithError:(id)a3 forRequestID:(int)a4;
- (void)provideImageData:(id)a3 withSpecAtIndex:(int64_t)a4 size:(CGSize)a5 bytesPerRow:(unint64_t)a6 contentsRect:(CGRect)a7 forRequestID:(int)a8;
- (void)provideNothingForRequestID:(int)a3;
- (void)providePayload:(id)a3 forRequestID:(int)a4;
- (void)providePixelBuffer:(__CVBuffer *)a3 options:(id)a4 adjustment:(id)a5 forRequestID:(int)a6;
- (void)providePixelBuffer:(__CVBuffer *)a3 options:(id)a4 forRequestID:(int)a5;
- (void)setInteractionState:(id *)a3;
- (void)setLowMemoryMode:(BOOL)a3;
- (void)setNeedsRegisterToDisplayLinkUpdates;
- (void)setNeedsUnregisterFromDisplayLinkUpdates;
- (void)setViewEnvironment:(id)a3;
@end

@implementation PXGTextureProvider

- (PXGTextureProvider)init
{
  v9.receiver = self;
  v9.super_class = PXGTextureProvider;
  v2 = [(PXGTextureProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lookupLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAB58] indexSet];
    lookupLock_activeRequests = v3->_lookupLock_activeRequests;
    v3->_lookupLock_activeRequests = v4;

    v6 = [MEMORY[0x277CCAB58] indexSet];
    requestIDsPendingCancellation = v3->_requestIDsPendingCancellation;
    v3->_requestIDsPendingCancellation = v6;

    v3->_canDeliverThumbnailData = 1;
    v3->_preferredColorSpaceName = 12;
  }

  return v3;
}

- ($28B10562A11C0018BB97DE3323169FD5)interactionState
{
  v3 = *&self[2].var8.size.height;
  *&retstr->var0 = *&self[2].var8.origin.y;
  *&retstr->var4 = v3;
  v4 = *&self[3].var5;
  retstr->var8.origin = *&self[3].var1;
  retstr->var8.size = v4;
  return self;
}

- (void)performDeferredCancellations
{
  if ([(NSMutableIndexSet *)self->_requestIDsPendingCancellation count])
  {
    v3 = [(NSMutableIndexSet *)self->_requestIDsPendingCancellation copy];
    [(NSMutableIndexSet *)self->_requestIDsPendingCancellation removeAllIndexes];
    [(PXGTextureProvider *)self cancelTextureRequests:v3];
  }
}

- (PXGTextureProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)clearTextureAtlasManagerCache
{
  imageDataSpecsCapacity = self->_imageDataSpecsCapacity;
  if (imageDataSpecsCapacity >= 1)
  {
    for (i = 0; i != imageDataSpecsCapacity; ++i)
    {
      self->_textureAtlasManagers[i] = 0;
    }
  }
}

- (int64_t)requestQueue_indexForImageDataSpec:(id *)a3
{
  dispatch_assert_queue_V2(self->_requestQueue);
  var1 = a3->var1;
  var2 = a3->var2;
  var3 = a3->var3;
  if (self->_lastImageDataSpec.pixelFormat == a3->var0 && self->_lastImageDataSpec.colorSpaceName == var1 && self->_lastImageDataSpec.width == var2 && self->_lastImageDataSpec.height == var3)
  {
    return self->_lastImageDataSpecIndex;
  }

  imageDataSpecsCount = self->_imageDataSpecsCount;
  if (imageDataSpecsCount < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = 0;
  for (i = &self->_imageDataSpecs->var2; ; i += 10)
  {
    v14 = *(i - 2) == a3->var0 && *(i - 1) == var1;
    v15 = v14 && *i == var2;
    if (v15 && i[1] == var3)
    {
      break;
    }

    if (imageDataSpecsCount == ++result)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v17 = *&a3->var0;
  *&self->_lastImageDataSpec.width = *&a3->var2;
  *&self->_lastImageDataSpec.pixelFormat = v17;
  self->_lastImageDataSpecIndex = result;
  return result;
}

- (int64_t)registerImageDataSpec:(id *)a3
{
  v5 = [(PXGTextureProvider *)self layoutQueue];
  dispatch_assert_queue_V2(v5);

  imageDataSpecsCount = self->_imageDataSpecsCount;
  if (imageDataSpecsCount < 1)
  {
LABEL_14:
    self->_imageDataSpecsCount = imageDataSpecsCount + 1;
    imageDataSpecsCapacity = self->_imageDataSpecsCapacity;
    if (imageDataSpecsCount >= imageDataSpecsCapacity)
    {
      if (!imageDataSpecsCapacity)
      {
        imageDataSpecsCapacity = 10;
        self->_imageDataSpecsCapacity = 10;
      }

      if (imageDataSpecsCapacity <= imageDataSpecsCount)
      {
        do
        {
          imageDataSpecsCapacity *= 2;
        }

        while (imageDataSpecsCapacity <= imageDataSpecsCount);
        self->_imageDataSpecsCapacity = imageDataSpecsCapacity;
      }

      self->_imageDataSpecs = malloc_type_realloc(self->_imageDataSpecs, 20 * imageDataSpecsCapacity, 0x42760281uLL);
      self->_textureAtlasManagers = malloc_type_realloc(self->_textureAtlasManagers, 8 * self->_imageDataSpecsCapacity, 0x42760281uLL);
    }

    v13 = self->_imageDataSpecs + 20 * imageDataSpecsCount;
    v14 = *&a3->var0;
    *(v13 + 4) = *&a3->var2;
    *v13 = v14;
    self->_textureAtlasManagers[imageDataSpecsCount] = 0;
  }

  else
  {
    v7 = 0;
    p_var2 = &self->_imageDataSpecs->var2;
    while (1)
    {
      v9 = *(p_var2 - 2) == a3->var0 && *(p_var2 - 1) == a3->var1;
      v10 = v9 && *p_var2 == a3->var2;
      if (v10 && p_var2[1] == a3->var3)
      {
        return v7;
      }

      p_var2 += 10;
      if (imageDataSpecsCount == ++v7)
      {
        goto LABEL_14;
      }
    }
  }

  return imageDataSpecsCount;
}

- (id)requestRenderSnapshot:(id *)a3 offscreenEffect:(id)a4
{
  v6 = a4;
  v7 = [(PXGTextureProvider *)self delegate];
  v8 = *&a3->var1.origin.y;
  v11[0] = *&a3->var0;
  v11[1] = v8;
  height = a3->var1.size.height;
  v9 = [v7 textureProvider:self requestRenderSnapshot:v11 offscreenEffect:v6];

  return v9;
}

- (void)providePayload:(id)a3 forRequestID:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(PXGTextureProvider *)self delegate];
  [v8 textureProvider:self didProvidePayload:v6 forRequestID:v4];
}

- (void)setNeedsUnregisterFromDisplayLinkUpdates
{
  v3 = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PXGTextureProvider *)self delegate];
  [v4 textureProviderNeedsToUnregisterFromDisplayLinkUpdates:self];
}

- (void)setNeedsRegisterToDisplayLinkUpdates
{
  v3 = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PXGTextureProvider *)self delegate];
  [v4 textureProviderNeedsToRegisterToDisplayLinkUpdates:self];
}

- (void)provideFailureWithError:(id)a3 forRequestID:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(PXGTextureProvider *)self delegate];
  [v8 textureProvider:self didProvideFailureWithError:v6 forRequestID:v4];
}

- (void)providePixelBuffer:(__CVBuffer *)a3 options:(id)a4 forRequestID:(int)a5
{
  v5 = *(*&a4.var0 + 16);
  v6[0] = **&a4.var0;
  v6[1] = v5;
  [(PXGTextureProvider *)self providePixelBuffer:a3 options:v6 adjustment:0 forRequestID:*&a4.var2];
}

- (void)providePixelBuffer:(__CVBuffer *)a3 options:(id)a4 adjustment:(id)a5 forRequestID:(int)a6
{
  v7 = *&a4.var0;
  v11 = *&a4.var2;
  v12 = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(v12);

  if (!a3)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXGTextureProvider.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"pixelBufferRef != nil"}];
  }

  v13 = [(PXGTextureProvider *)self delegate];
  v14 = v7[1];
  v16[0] = *v7;
  v16[1] = v14;
  [v13 textureProvider:self didProvidePixelBuffer:a3 options:v16 adjustment:v11 forRequestID:a5];
}

- (void)provideImageData:(id)a3 withSpecAtIndex:(int64_t)a4 size:(CGSize)a5 bytesPerRow:(unint64_t)a6 contentsRect:(CGRect)a7 forRequestID:(int)a8
{
  v8 = *&a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v14 = a5.height;
  v15 = a5.width;
  v21 = a3;
  if (!v21)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXGTextureProvider.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"imageData != nil"}];
  }

  v19 = [(PXGTextureProvider *)self delegate];
  [v19 textureProvider:self didProvideImageData:v21 withSpecAtIndex:a4 size:a6 bytesPerRow:v8 contentsRect:v15 forRequestID:{v14, x, y, width, height}];
}

- (void)provideCGImage:(CGImage *)a3 forRequestID:(int)a4
{
  v4[0] = PXGTextureProcessingOptionsDefault;
  v4[1] = unk_21AE2E320;
  [(PXGTextureProvider *)self provideCGImage:a3 options:v4 forRequestID:*&a4];
}

- (void)provideCGImage:(CGImage *)a3 options:(id)a4 forRequestID:(int)a5
{
  v5 = *(*&a4.var0 + 16);
  v6[0] = **&a4.var0;
  v6[1] = v5;
  [(PXGTextureProvider *)self provideCGImage:a3 options:v6 isDegraded:0 forRequestID:*&a4.var2];
}

- (void)provideCGImage:(CGImage *)a3 options:(id)a4 isDegraded:(BOOL)a5 forRequestID:(int)a6
{
  v6 = *(*&a4.var0 + 16);
  v7[0] = **&a4.var0;
  v7[1] = v6;
  [(PXGTextureProvider *)self provideCGImage:a3 options:v7 adjustment:0 isDegraded:0 forRequestID:a5];
}

- (void)provideCGImage:(CGImage *)a3 options:(id)a4 adjustment:(id)a5 forRequestID:(int)a6
{
  v6 = *(*&a4.var0 + 16);
  v7[0] = **&a4.var0;
  v7[1] = v6;
  [(PXGTextureProvider *)self provideCGImage:a3 options:v7 adjustment:*&a4.var2 isDegraded:0 forRequestID:a5];
}

- (void)provideCGImage:(CGImage *)a3 options:(id)a4 adjustment:(id)a5 isDegraded:(BOOL)a6 forRequestID:(int)a7
{
  v7 = a6;
  v9 = *&a4.var0;
  v13 = *&a4.var2;
  if (!a3)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXGTextureProvider.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"imageRef != nil"}];
  }

  v14 = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [(PXGTextureProvider *)self delegate];
  v16 = v9[1];
  v18[0] = *v9;
  v18[1] = v16;
  [v15 textureProvider:self didProvideCGImage:a3 options:v18 adjustment:v13 isDegraded:a5 forRequestID:v7];
}

- (void)provideNothingForRequestID:(int)a3
{
  v3 = *&a3;
  v5 = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PXGTextureProvider *)self delegate];
  [v6 textureProvider:self didProvideNothingForRequestID:v3];
}

- (BOOL)isRequestActive:(int)a3
{
  os_unfair_lock_lock(&self->_lookupLock);
  LOBYTE(a3) = [(NSMutableIndexSet *)self->_lookupLock_activeRequests containsIndex:a3];
  os_unfair_lock_unlock(&self->_lookupLock);
  return a3;
}

- (void)cancelTextureRequests:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lookupLock);
  [(NSMutableIndexSet *)self->_lookupLock_activeRequests removeIndexes:v4];

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  length = a3.length;
  add = atomic_fetch_add(PXMakeNextTextureRequestIDRange_lastRequestID, a3.length);
  os_unfair_lock_lock(&self->_lookupLock);
  [(NSMutableIndexSet *)self->_lookupLock_activeRequests addIndexesInRange:add, length];
  os_unfair_lock_unlock(&self->_lookupLock);
  v10 = add;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)setLowMemoryMode:(BOOL)a3
{
  if (self->_lowMemoryMode != a3)
  {
    self->_lowMemoryMode = a3;
    [(PXGTextureProvider *)self lowMemoryModeDidChange];
  }
}

- (void)setInteractionState:(id *)a3
{
  p_interactionState = &self->_interactionState;
  if (self->_interactionState.scrollRegime != a3->var0 || self->_interactionState.isAnimatingScrollTowardsEdge != a3->var1 || self->_interactionState.isScrubbing != a3->var2 || self->_interactionState.isAnimatingContent != a3->var3 || self->_interactionState.contentChangeTrend != a3->var4 || self->_interactionState.isViewBoundsChanging != a3->var5 || self->_interactionState.isInitialLoad != a3->var6 || self->_interactionState.isVisible != a3->var7 || !CGRectEqualToRect(self->_interactionState.targetRect, a3->var8))
  {
    v6 = *&p_interactionState->contentChangeTrend;
    v11[0] = *&p_interactionState->scrollRegime;
    v11[1] = v6;
    size = p_interactionState->targetRect.size;
    v11[2] = p_interactionState->targetRect.origin;
    v11[3] = size;
    v8 = a3->var8.size;
    v10 = *&a3->var0;
    v9 = *&a3->var4;
    p_interactionState->targetRect.origin = a3->var8.origin;
    p_interactionState->targetRect.size = v8;
    *&p_interactionState->scrollRegime = v10;
    *&p_interactionState->contentChangeTrend = v9;
    [(PXGTextureProvider *)self interactionStateDidChange:v11];
  }
}

- (void)setViewEnvironment:(id)a3
{
  v11 = a3;
  v4 = self->_viewEnvironment;
  v5 = v4;
  if (v4 != v11)
  {
    v6 = [(PXGViewEnvironment *)v4 isEqual:v11];

    v7 = v11;
    if (v6)
    {
      goto LABEL_5;
    }

    viewEnvironment = self->_viewEnvironment;
    v9 = v11;
    v10 = self->_viewEnvironment;
    self->_viewEnvironment = v9;
    v5 = viewEnvironment;

    [(PXGTextureProvider *)self viewEnvironmentDidChange:v5];
  }

  v7 = v11;
LABEL_5:
}

- (void)dealloc
{
  free(self->_imageDataSpecs);
  free(self->_textureAtlasManagers);
  v3.receiver = self;
  v3.super_class = PXGTextureProvider;
  [(PXGTextureProvider *)&v3 dealloc];
}

@end