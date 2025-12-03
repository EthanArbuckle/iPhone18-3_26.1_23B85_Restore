@interface PXGTextureProvider
- ($28B10562A11C0018BB97DE3323169FD5)interactionState;
- (BOOL)isRequestActive:(int)active;
- (PXGTextureProvider)init;
- (PXGTextureProviderDelegate)delegate;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (id)requestRenderSnapshot:(id *)snapshot offscreenEffect:(id)effect;
- (int64_t)registerImageDataSpec:(id *)spec;
- (int64_t)requestQueue_indexForImageDataSpec:(id *)spec;
- (void)cancelTextureRequests:(id)requests;
- (void)clearTextureAtlasManagerCache;
- (void)dealloc;
- (void)performDeferredCancellations;
- (void)provideCGImage:(CGImage *)image forRequestID:(int)d;
- (void)provideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment forRequestID:(int)d;
- (void)provideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d;
- (void)provideCGImage:(CGImage *)image options:(id)options forRequestID:(int)d;
- (void)provideCGImage:(CGImage *)image options:(id)options isDegraded:(BOOL)degraded forRequestID:(int)d;
- (void)provideFailureWithError:(id)error forRequestID:(int)d;
- (void)provideImageData:(id)data withSpecAtIndex:(int64_t)index size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect forRequestID:(int)d;
- (void)provideNothingForRequestID:(int)d;
- (void)providePayload:(id)payload forRequestID:(int)d;
- (void)providePixelBuffer:(__CVBuffer *)buffer options:(id)options adjustment:(id)adjustment forRequestID:(int)d;
- (void)providePixelBuffer:(__CVBuffer *)buffer options:(id)options forRequestID:(int)d;
- (void)setInteractionState:(id *)state;
- (void)setLowMemoryMode:(BOOL)mode;
- (void)setNeedsRegisterToDisplayLinkUpdates;
- (void)setNeedsUnregisterFromDisplayLinkUpdates;
- (void)setViewEnvironment:(id)environment;
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
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    lookupLock_activeRequests = v3->_lookupLock_activeRequests;
    v3->_lookupLock_activeRequests = indexSet;

    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    requestIDsPendingCancellation = v3->_requestIDsPendingCancellation;
    v3->_requestIDsPendingCancellation = indexSet2;

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

- (int64_t)requestQueue_indexForImageDataSpec:(id *)spec
{
  dispatch_assert_queue_V2(self->_requestQueue);
  var1 = spec->var1;
  var2 = spec->var2;
  var3 = spec->var3;
  if (self->_lastImageDataSpec.pixelFormat == spec->var0 && self->_lastImageDataSpec.colorSpaceName == var1 && self->_lastImageDataSpec.width == var2 && self->_lastImageDataSpec.height == var3)
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
    v14 = *(i - 2) == spec->var0 && *(i - 1) == var1;
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

  v17 = *&spec->var0;
  *&self->_lastImageDataSpec.width = *&spec->var2;
  *&self->_lastImageDataSpec.pixelFormat = v17;
  self->_lastImageDataSpecIndex = result;
  return result;
}

- (int64_t)registerImageDataSpec:(id *)spec
{
  layoutQueue = [(PXGTextureProvider *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

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
    v14 = *&spec->var0;
    *(v13 + 4) = *&spec->var2;
    *v13 = v14;
    self->_textureAtlasManagers[imageDataSpecsCount] = 0;
  }

  else
  {
    v7 = 0;
    p_var2 = &self->_imageDataSpecs->var2;
    while (1)
    {
      v9 = *(p_var2 - 2) == spec->var0 && *(p_var2 - 1) == spec->var1;
      v10 = v9 && *p_var2 == spec->var2;
      if (v10 && p_var2[1] == spec->var3)
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

- (id)requestRenderSnapshot:(id *)snapshot offscreenEffect:(id)effect
{
  effectCopy = effect;
  delegate = [(PXGTextureProvider *)self delegate];
  v8 = *&snapshot->var1.origin.y;
  v11[0] = *&snapshot->var0;
  v11[1] = v8;
  height = snapshot->var1.size.height;
  v9 = [delegate textureProvider:self requestRenderSnapshot:v11 offscreenEffect:effectCopy];

  return v9;
}

- (void)providePayload:(id)payload forRequestID:(int)d
{
  v4 = *&d;
  payloadCopy = payload;
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(requestQueue);

  delegate = [(PXGTextureProvider *)self delegate];
  [delegate textureProvider:self didProvidePayload:payloadCopy forRequestID:v4];
}

- (void)setNeedsUnregisterFromDisplayLinkUpdates
{
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(requestQueue);

  delegate = [(PXGTextureProvider *)self delegate];
  [delegate textureProviderNeedsToUnregisterFromDisplayLinkUpdates:self];
}

- (void)setNeedsRegisterToDisplayLinkUpdates
{
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(requestQueue);

  delegate = [(PXGTextureProvider *)self delegate];
  [delegate textureProviderNeedsToRegisterToDisplayLinkUpdates:self];
}

- (void)provideFailureWithError:(id)error forRequestID:(int)d
{
  v4 = *&d;
  errorCopy = error;
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(requestQueue);

  delegate = [(PXGTextureProvider *)self delegate];
  [delegate textureProvider:self didProvideFailureWithError:errorCopy forRequestID:v4];
}

- (void)providePixelBuffer:(__CVBuffer *)buffer options:(id)options forRequestID:(int)d
{
  v5 = *(*&options.var0 + 16);
  v6[0] = **&options.var0;
  v6[1] = v5;
  [(PXGTextureProvider *)self providePixelBuffer:buffer options:v6 adjustment:0 forRequestID:*&options.var2];
}

- (void)providePixelBuffer:(__CVBuffer *)buffer options:(id)options adjustment:(id)adjustment forRequestID:(int)d
{
  v7 = *&options.var0;
  v11 = *&options.var2;
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(requestQueue);

  if (!buffer)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTextureProvider.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"pixelBufferRef != nil"}];
  }

  delegate = [(PXGTextureProvider *)self delegate];
  v14 = v7[1];
  v16[0] = *v7;
  v16[1] = v14;
  [delegate textureProvider:self didProvidePixelBuffer:buffer options:v16 adjustment:v11 forRequestID:adjustment];
}

- (void)provideImageData:(id)data withSpecAtIndex:(int64_t)index size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect forRequestID:(int)d
{
  v8 = *&d;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = size.height;
  v15 = size.width;
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTextureProvider.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"imageData != nil"}];
  }

  delegate = [(PXGTextureProvider *)self delegate];
  [delegate textureProvider:self didProvideImageData:dataCopy withSpecAtIndex:index size:row bytesPerRow:v8 contentsRect:v15 forRequestID:{v14, x, y, width, height}];
}

- (void)provideCGImage:(CGImage *)image forRequestID:(int)d
{
  v4[0] = PXGTextureProcessingOptionsDefault;
  v4[1] = unk_21AE2E320;
  [(PXGTextureProvider *)self provideCGImage:image options:v4 forRequestID:*&d];
}

- (void)provideCGImage:(CGImage *)image options:(id)options forRequestID:(int)d
{
  v5 = *(*&options.var0 + 16);
  v6[0] = **&options.var0;
  v6[1] = v5;
  [(PXGTextureProvider *)self provideCGImage:image options:v6 isDegraded:0 forRequestID:*&options.var2];
}

- (void)provideCGImage:(CGImage *)image options:(id)options isDegraded:(BOOL)degraded forRequestID:(int)d
{
  v6 = *(*&options.var0 + 16);
  v7[0] = **&options.var0;
  v7[1] = v6;
  [(PXGTextureProvider *)self provideCGImage:image options:v7 adjustment:0 isDegraded:0 forRequestID:degraded];
}

- (void)provideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment forRequestID:(int)d
{
  v6 = *(*&options.var0 + 16);
  v7[0] = **&options.var0;
  v7[1] = v6;
  [(PXGTextureProvider *)self provideCGImage:image options:v7 adjustment:*&options.var2 isDegraded:0 forRequestID:adjustment];
}

- (void)provideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d
{
  degradedCopy = degraded;
  v9 = *&options.var0;
  v13 = *&options.var2;
  if (!image)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGTextureProvider.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"imageRef != nil"}];
  }

  requestQueue = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(requestQueue);

  delegate = [(PXGTextureProvider *)self delegate];
  v16 = v9[1];
  v18[0] = *v9;
  v18[1] = v16;
  [delegate textureProvider:self didProvideCGImage:image options:v18 adjustment:v13 isDegraded:adjustment forRequestID:degradedCopy];
}

- (void)provideNothingForRequestID:(int)d
{
  v3 = *&d;
  requestQueue = [(PXGTextureProvider *)self requestQueue];
  dispatch_assert_queue_V2(requestQueue);

  delegate = [(PXGTextureProvider *)self delegate];
  [delegate textureProvider:self didProvideNothingForRequestID:v3];
}

- (BOOL)isRequestActive:(int)active
{
  os_unfair_lock_lock(&self->_lookupLock);
  LOBYTE(active) = [(NSMutableIndexSet *)self->_lookupLock_activeRequests containsIndex:active];
  os_unfair_lock_unlock(&self->_lookupLock);
  return active;
}

- (void)cancelTextureRequests:(id)requests
{
  requestsCopy = requests;
  os_unfair_lock_lock(&self->_lookupLock);
  [(NSMutableIndexSet *)self->_lookupLock_activeRequests removeIndexes:requestsCopy];

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  length = range.length;
  add = atomic_fetch_add(PXMakeNextTextureRequestIDRange_lastRequestID, range.length);
  os_unfair_lock_lock(&self->_lookupLock);
  [(NSMutableIndexSet *)self->_lookupLock_activeRequests addIndexesInRange:add, length];
  os_unfair_lock_unlock(&self->_lookupLock);
  v10 = add;
  v11 = length;
  result.length = v11;
  result.location = v10;
  return result;
}

- (void)setLowMemoryMode:(BOOL)mode
{
  if (self->_lowMemoryMode != mode)
  {
    self->_lowMemoryMode = mode;
    [(PXGTextureProvider *)self lowMemoryModeDidChange];
  }
}

- (void)setInteractionState:(id *)state
{
  p_interactionState = &self->_interactionState;
  if (self->_interactionState.scrollRegime != state->var0 || self->_interactionState.isAnimatingScrollTowardsEdge != state->var1 || self->_interactionState.isScrubbing != state->var2 || self->_interactionState.isAnimatingContent != state->var3 || self->_interactionState.contentChangeTrend != state->var4 || self->_interactionState.isViewBoundsChanging != state->var5 || self->_interactionState.isInitialLoad != state->var6 || self->_interactionState.isVisible != state->var7 || !CGRectEqualToRect(self->_interactionState.targetRect, state->var8))
  {
    v6 = *&p_interactionState->contentChangeTrend;
    v11[0] = *&p_interactionState->scrollRegime;
    v11[1] = v6;
    size = p_interactionState->targetRect.size;
    v11[2] = p_interactionState->targetRect.origin;
    v11[3] = size;
    v8 = state->var8.size;
    v10 = *&state->var0;
    v9 = *&state->var4;
    p_interactionState->targetRect.origin = state->var8.origin;
    p_interactionState->targetRect.size = v8;
    *&p_interactionState->scrollRegime = v10;
    *&p_interactionState->contentChangeTrend = v9;
    [(PXGTextureProvider *)self interactionStateDidChange:v11];
  }
}

- (void)setViewEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = self->_viewEnvironment;
  v5 = v4;
  if (v4 != environmentCopy)
  {
    v6 = [(PXGViewEnvironment *)v4 isEqual:environmentCopy];

    v7 = environmentCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    viewEnvironment = self->_viewEnvironment;
    v9 = environmentCopy;
    v10 = self->_viewEnvironment;
    self->_viewEnvironment = v9;
    v5 = viewEnvironment;

    [(PXGTextureProvider *)self viewEnvironmentDidChange:v5];
  }

  v7 = environmentCopy;
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