@interface PXGMetalTextureAtlasManager
- (CGSize)thumbnailSize;
- (NSString)description;
- (PXGMetalTextureAtlasManager)init;
- (PXGMetalTextureAtlasManager)initWithThumbnailSize:(CGSize)size pixelFormat:(unint64_t)format capacityPerAtlas:(unsigned int)atlas mipmapped:(BOOL)mipmapped requestQueue:(id)queue layoutQueue:(id)layoutQueue colorProgram:(id)program context:(id)self0;
- (PXGTextureAtlasManagerDelegate)delegate;
- (PXGTextureConverter)textureConverter;
- (void)_getAtlas:(id *)atlas localThumbnailIndex:(unsigned int *)index forGlobalThumbnailIndex:(unsigned int)thumbnailIndex;
- (void)_requestQueue_getNextAvailableAtlas:(id *)atlas thumbnailOffset:(unsigned int *)offset;
- (void)_updateAtlasSpriteIndexSkips;
- (void)addSpriteWithTextureRequestID:(int)d thumbnailData:(id)data size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect;
- (void)applyChangeDetails:(id)details;
- (void)processPendingThumbnailRequestIDsWithHandler:(id)handler;
- (void)pruneUnusedTextures;
- (void)removeSpriteIndex:(unsigned int)index atThumbnailIndex:(unsigned int)thumbnailIndex;
- (void)setSkipRenderSpriteIndexes:(id)indexes;
- (void)textureAtlasDidBecomeUnused:(id)unused;
@end

@implementation PXGMetalTextureAtlasManager

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXGTextureConverter)textureConverter
{
  WeakRetained = objc_loadWeakRetained(&self->_textureConverter);

  return WeakRetained;
}

- (void)_updateAtlasSpriteIndexSkips
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  atlasTextures = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v4 = [atlasTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(atlasTextures);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        skipRenderSpriteIndexes = [(PXGMetalTextureAtlasManager *)self skipRenderSpriteIndexes];
        [v8 setSkipRenderSpriteIndexes:skipRenderSpriteIndexes];

        ++v7;
      }

      while (v5 != v7);
      v5 = [atlasTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)pruneUnusedTextures
{
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PXGMetalTextureAtlasManager_pruneUnusedTextures__block_invoke;
  block[3] = &unk_2782ABE50;
  block[4] = self;
  dispatch_async(requestQueue, block);
}

void __50__PXGMetalTextureAtlasManager_pruneUnusedTextures__block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) atlasTextures];
  v2 = [v8 lastObject];
  v3 = [v2 isUnused];

  if (v3)
  {
    v4 = [v8 mutableCopy];
    v5 = [v8 count];
    if (v5 - 1 >= 0)
    {
      v6 = v5;
      while ([v8 count])
      {
        v7 = [v8 objectAtIndexedSubscript:--v6];
        if (![v7 isUnused])
        {

          break;
        }

        [v4 removeObjectAtIndex:v6];

        if (v6 <= 0)
        {
          break;
        }
      }
    }

    [*(a1 + 32) setAtlasTextures:v4];
  }
}

- (PXGTextureAtlasManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textureAtlasDidBecomeUnused:(id)unused
{
  delegate = [(PXGMetalTextureAtlasManager *)self delegate];
  if (!delegate || (v5 = delegate, -[PXGMetalTextureAtlasManager delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 textureAtlasManagerShouldPruneUnusedTextures:self], v6, v5, v7))
  {

    [(PXGMetalTextureAtlasManager *)self pruneUnusedTextures];
  }
}

- (void)_getAtlas:(id *)atlas localThumbnailIndex:(unsigned int *)index forGlobalThumbnailIndex:(unsigned int)thumbnailIndex
{
  atlasTextures = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v11 = [atlasTextures count] * self->_capacityPerAtlas;

  if (v11 <= thumbnailIndex)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"globalThumbnailIndex < self.atlasTextures.count * _capacityPerAtlas"}];
  }

  capacityPerAtlas = self->_capacityPerAtlas;
  v13 = thumbnailIndex / capacityPerAtlas;
  v14 = thumbnailIndex % capacityPerAtlas;
  atlasTextures2 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v18 = [atlasTextures2 objectAtIndexedSubscript:v13];

  v16 = v18;
  *atlas = v18;
  *index = v14;
}

- (void)_requestQueue_getNextAvailableAtlas:(id *)atlas thumbnailOffset:(unsigned int *)offset
{
  dispatch_assert_queue_V2(self->_requestQueue);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12109;
  v23 = __Block_byref_object_dispose__12110;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  atlasTextures = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__PXGMetalTextureAtlasManager__requestQueue_getNextAvailableAtlas_thumbnailOffset___block_invoke;
  v14[3] = &unk_2782AA148;
  v14[5] = &v19;
  v14[6] = &v15;
  v14[4] = self;
  [atlasTextures enumerateObjectsUsingBlock:v14];
  textureConverter = [(PXGMetalTextureAtlasManager *)self textureConverter];
  v9 = v20[5];
  if (!v9 && textureConverter)
  {
    v10 = [textureConverter createAtlasForTextureAtlasManager:self];
    v11 = v20[5];
    v20[5] = v10;

    [v20[5] setDelegate:self];
    v12 = [atlasTextures count];
    *(v16 + 6) = self->_capacityPerAtlas * v12;
    v13 = [atlasTextures arrayByAddingObject:v20[5]];
    [(PXGMetalTextureAtlasManager *)self setAtlasTextures:v13];

    v9 = v20[5];
  }

  *atlas = v9;
  *offset = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void __83__PXGMetalTextureAtlasManager__requestQueue_getNextAvailableAtlas_thumbnailOffset___block_invoke(void *a1, void *a2, int a3, _BYTE *a4)
{
  v9 = a2;
  v8 = [v9 count];
  if (v8 < [v9 capacity])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = *(a1[4] + 36) * a3;
    *a4 = 1;
  }
}

- (void)applyChangeDetails:(id)details
{
  v16 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  atlasTextures = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v6 = [atlasTextures countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(atlasTextures);
        }

        [*(*(&v11 + 1) + 8 * v9++) applyChangeDetails:detailsCopy];
      }

      while (v7 != v9);
      v7 = [atlasTextures countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  indexSet = [MEMORY[0x277CCAA78] indexSet];
  [(PXGMetalTextureAtlasManager *)self setSkipRenderSpriteIndexes:indexSet];
}

- (void)setSkipRenderSpriteIndexes:(id)indexes
{
  if (self->_skipRenderSpriteIndexes != indexes)
  {
    v5 = [indexes copy];
    skipRenderSpriteIndexes = self->_skipRenderSpriteIndexes;
    self->_skipRenderSpriteIndexes = v5;

    [(PXGMetalTextureAtlasManager *)self _updateAtlasSpriteIndexSkips];
  }
}

- (void)processPendingThumbnailRequestIDsWithHandler:(id)handler
{
  handlerCopy = handler;
  layoutQueue = [(PXGMetalTextureAtlasManager *)self layoutQueue];
  dispatch_assert_queue_V2(layoutQueue);

  atlasTextures = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__PXGMetalTextureAtlasManager_processPendingThumbnailRequestIDsWithHandler___block_invoke;
  v8[3] = &unk_2782AA120;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [atlasTextures enumerateObjectsUsingBlock:v8];
}

void __76__PXGMetalTextureAtlasManager_processPendingThumbnailRequestIDsWithHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v4 = *(*(a1 + 32) + 36) * a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__PXGMetalTextureAtlasManager_processPendingThumbnailRequestIDsWithHandler___block_invoke_2;
  v5[3] = &unk_2782AA0F8;
  v7 = v4;
  v6 = *(a1 + 40);
  [a2 processPendingThumbnailRequestIDsWithHandler:v5];
}

- (void)removeSpriteIndex:(unsigned int)index atThumbnailIndex:(unsigned int)thumbnailIndex
{
  v4 = *&index;
  v7 = 0;
  v6 = 0;
  [(PXGMetalTextureAtlasManager *)self _getAtlas:&v6 localThumbnailIndex:&v7 forGlobalThumbnailIndex:*&thumbnailIndex];
  v5 = v6;
  [v5 removeSpriteIndex:v4 atThumbnailIndex:v7];
}

- (void)addSpriteWithTextureRequestID:(int)d thumbnailData:(id)data size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = size.height;
  v13 = size.width;
  v14 = *&d;
  requestQueue = self->_requestQueue;
  dataCopy = data;
  dispatch_assert_queue_V2(requestQueue);
  v20 = 0;
  v19 = 0;
  [(PXGMetalTextureAtlasManager *)self _requestQueue_getNextAvailableAtlas:&v19 thumbnailOffset:&v20];
  v18 = v19;
  [v18 addSpriteWithTextureRequestID:v14 thumbnailData:dataCopy size:row bytesPerRow:v13 contentsRect:{v12, x, y, width, height}];
}

- (NSString)description
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  atlasTextures = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v4 = [atlasTextures countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(atlasTextures);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v7 += [v10 count];
        texture = [v10 texture];
        v6 += [texture allocatedSize];
      }

      v5 = [atlasTextures countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
    v12 = vcvtd_n_f64_u64(v6, 0xAuLL) * 0.0009765625;
  }

  else
  {
    v7 = 0;
    v12 = 0.0;
  }

  v13 = MEMORY[0x277CCACA8];
  v20.receiver = self;
  v20.super_class = PXGMetalTextureAtlasManager;
  v14 = [(PXGMetalTextureAtlasManager *)&v20 description];
  [(PXGMetalTextureAtlasManager *)self thumbnailSize];
  v15 = NSStringFromCGSize(v28);
  pixelFormat = [(PXGMetalTextureAtlasManager *)self pixelFormat];
  atlasTextures2 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v18 = [v13 stringWithFormat:@"<%@ thumbnailSize:%@ pixelFormat:%lu count:%ld memory:%.2fMB textureAtlases:%@>", v14, v15, pixelFormat, v7, *&v12, atlasTextures2];

  return v18;
}

- (PXGMetalTextureAtlasManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:82 description:{@"%s is not available as initializer", "-[PXGMetalTextureAtlasManager init]"}];

  abort();
}

- (PXGMetalTextureAtlasManager)initWithThumbnailSize:(CGSize)size pixelFormat:(unint64_t)format capacityPerAtlas:(unsigned int)atlas mipmapped:(BOOL)mipmapped requestQueue:(id)queue layoutQueue:(id)layoutQueue colorProgram:(id)program context:(id)self0
{
  height = size.height;
  width = size.width;
  queueCopy = queue;
  layoutQueueCopy = layoutQueue;
  programCopy = program;
  contextCopy = context;
  v41.receiver = self;
  v41.super_class = PXGMetalTextureAtlasManager;
  v21 = [(PXGMetalTextureAtlasManager *)&v41 init];
  if (v21)
  {
    v38 = queueCopy;
    atlasCopy = 4096.0 / width;
    if (4096.0 / width > atlas)
    {
      atlasCopy = atlas;
    }

    v23 = vcvtpd_s64_f64(atlas / atlasCopy) * atlasCopy;
    if (!v23)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"capacityPerAtlas > 0"}];
    }

    device = [contextCopy device];

    if (!device)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"context.device != nil"}];
    }

    PXSizeRoundToPixel();
    if (v26 != width || v25 != height)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v42.width = width;
      v42.height = height;
      v36 = NSStringFromCGSize(v42);
      [currentHandler3 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:63 description:{@"thumbnailSize cannot have fractional pixels:%@", v36}];
    }

    objc_storeStrong(&v21->_metalRenderContext, context);
    objc_storeStrong(&v21->_colorProgram, program);
    objc_storeStrong(&v21->_layoutQueue, layoutQueue);
    objc_storeStrong(&v21->_requestQueue, queue);
    v27 = dispatch_queue_create("com.apple.photos.atlas-manager.sync", 0);
    syncQueue = v21->_syncQueue;
    v21->_syncQueue = v27;

    v21->_pixelFormat = format;
    v21->_thumbnailSize.width = width;
    v21->_thumbnailSize.height = height;
    v21->_capacityPerAtlas = v23;
    v21->_mipmapped = mipmapped;
    indexSet = [MEMORY[0x277CCAA78] indexSet];
    skipRenderSpriteIndexes = v21->_skipRenderSpriteIndexes;
    v21->_skipRenderSpriteIndexes = indexSet;

    atlasTextures = v21->_atlasTextures;
    v21->_atlasTextures = MEMORY[0x277CBEBF8];

    queueCopy = v38;
  }

  return v21;
}

@end