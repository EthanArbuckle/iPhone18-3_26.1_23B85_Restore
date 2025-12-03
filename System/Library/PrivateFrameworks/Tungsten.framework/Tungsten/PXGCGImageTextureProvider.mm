@interface PXGCGImageTextureProvider
- (PXGCGImageTextureProvider)init;
- (void)_clearStrongCaches;
- (void)_updateCacheLimit;
- (void)cacheAdditionalInfo:(id)info withKey:(id)key;
- (void)invalidateCache;
- (void)lowMemoryModeDidChange;
- (void)releaseCachedResources;
- (void)requestCGImageAndAdditionalInfoWithCacheKey:(id)key imageProvider:(id)provider resultHandler:(id)handler;
- (void)requestCGImageWithCacheKey:(id)key imageProvider:(id)provider resultHandler:(id)handler;
@end

@implementation PXGCGImageTextureProvider

- (PXGCGImageTextureProvider)init
{
  v8.receiver = self;
  v8.super_class = PXGCGImageTextureProvider;
  v2 = [(PXGTextureProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;

    [(NSCache *)v2->_imageCache setTotalCostLimit:15728640];
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    aliveImagesCache = v2->_aliveImagesCache;
    v2->_aliveImagesCache = strongToWeakObjectsMapTable;

    [(PXGCGImageTextureProvider *)v2 _updateCacheLimit];
  }

  return v2;
}

- (void)_updateCacheLimit
{
  if ([(PXGTextureProvider *)self lowMemoryMode])
  {
    v3 = 5242880;
  }

  else
  {
    v3 = 15728640;
  }

  imageCache = self->_imageCache;

  [(NSCache *)imageCache setTotalCostLimit:v3];
}

- (void)invalidateCache
{
  [(PXGCGImageTextureProvider *)self _clearStrongCaches];
  workQueue = [(PXGCGImageTextureProvider *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PXGCGImageTextureProvider_invalidateCache__block_invoke;
  block[3] = &unk_2782ABE50;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_clearStrongCaches
{
  [(NSCache *)self->_imageCache removeAllObjects];
  additionalInfoCache = self->_additionalInfoCache;

  [(NSCache *)additionalInfoCache removeAllObjects];
}

- (void)releaseCachedResources
{
  v3.receiver = self;
  v3.super_class = PXGCGImageTextureProvider;
  [(PXGTextureProvider *)&v3 releaseCachedResources];
  [(PXGCGImageTextureProvider *)self _clearStrongCaches];
}

- (void)lowMemoryModeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGCGImageTextureProvider;
  [(PXGTextureProvider *)&v3 lowMemoryModeDidChange];
  [(PXGCGImageTextureProvider *)self _updateCacheLimit];
}

- (void)cacheAdditionalInfo:(id)info withKey:(id)key
{
  infoCopy = info;
  keyCopy = key;
  workQueue = [(PXGCGImageTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  additionalInfoCache = self->_additionalInfoCache;
  if (!additionalInfoCache)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v10 = self->_additionalInfoCache;
    self->_additionalInfoCache = v9;

    additionalInfoCache = self->_additionalInfoCache;
  }

  [(NSCache *)additionalInfoCache setObject:infoCopy forKey:keyCopy];
}

- (void)requestCGImageAndAdditionalInfoWithCacheKey:(id)key imageProvider:(id)provider resultHandler:(id)handler
{
  keyCopy = key;
  providerCopy = provider;
  handlerCopy = handler;
  workQueue = [(PXGCGImageTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [(NSCache *)self->_imageCache objectForKey:keyCopy];
  v13 = [(NSCache *)self->_additionalInfoCache objectForKey:keyCopy];
  if (v12)
  {
    handlerCopy[2](handlerCopy, v12, v13);
  }

  else
  {
    kdebug_trace();
    v14 = providerCopy[2](providerCopy);
    if (!v14)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGCGImageTextureProvider.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"imageRef != nil"}];
    }

    CGImageGetWidth(v14);
    CGImageGetHeight(v14);
    kdebug_trace();
    Width = CGImageGetWidth(v14);
    [(NSCache *)self->_imageCache setObject:v14 forKey:keyCopy cost:4 * Width * CGImageGetHeight(v14)];
    v16 = [(NSCache *)self->_additionalInfoCache objectForKey:keyCopy];

    handlerCopy[2](handlerCopy, v14, v16);
    CGImageRelease(v14);
    v13 = v16;
  }
}

- (void)requestCGImageWithCacheKey:(id)key imageProvider:(id)provider resultHandler:(id)handler
{
  keyCopy = key;
  providerCopy = provider;
  handlerCopy = handler;
  workQueue = [(PXGCGImageTextureProvider *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [(NSCache *)self->_imageCache objectForKey:keyCopy];
  if (v12 || (v12 = [(NSMapTable *)self->_aliveImagesCache objectForKey:keyCopy]) != 0)
  {
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    kdebug_trace();
    v13 = providerCopy[2](providerCopy);
    if (!v13)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGCGImageTextureProvider.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"imageRef != nil"}];
    }

    Width = CGImageGetWidth(v13);
    Height = CGImageGetHeight(v13);
    kdebug_trace();
    [(NSCache *)self->_imageCache setObject:v13 forKey:keyCopy cost:4 * Width * Height];
    [(NSMapTable *)self->_aliveImagesCache setObject:v13 forKey:keyCopy];
    handlerCopy[2](handlerCopy, v13);
    CGImageRelease(v13);
  }
}

@end