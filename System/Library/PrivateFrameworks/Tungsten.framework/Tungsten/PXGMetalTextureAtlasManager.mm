@interface PXGMetalTextureAtlasManager
- (CGSize)thumbnailSize;
- (NSString)description;
- (PXGMetalTextureAtlasManager)init;
- (PXGMetalTextureAtlasManager)initWithThumbnailSize:(CGSize)a3 pixelFormat:(unint64_t)a4 capacityPerAtlas:(unsigned int)a5 mipmapped:(BOOL)a6 requestQueue:(id)a7 layoutQueue:(id)a8 colorProgram:(id)a9 context:(id)a10;
- (PXGTextureAtlasManagerDelegate)delegate;
- (PXGTextureConverter)textureConverter;
- (void)_getAtlas:(id *)a3 localThumbnailIndex:(unsigned int *)a4 forGlobalThumbnailIndex:(unsigned int)a5;
- (void)_requestQueue_getNextAvailableAtlas:(id *)a3 thumbnailOffset:(unsigned int *)a4;
- (void)_updateAtlasSpriteIndexSkips;
- (void)addSpriteWithTextureRequestID:(int)a3 thumbnailData:(id)a4 size:(CGSize)a5 bytesPerRow:(unint64_t)a6 contentsRect:(CGRect)a7;
- (void)applyChangeDetails:(id)a3;
- (void)processPendingThumbnailRequestIDsWithHandler:(id)a3;
- (void)pruneUnusedTextures;
- (void)removeSpriteIndex:(unsigned int)a3 atThumbnailIndex:(unsigned int)a4;
- (void)setSkipRenderSpriteIndexes:(id)a3;
- (void)textureAtlasDidBecomeUnused:(id)a3;
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
  v3 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(PXGMetalTextureAtlasManager *)self skipRenderSpriteIndexes];
        [v8 setSkipRenderSpriteIndexes:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)textureAtlasDidBecomeUnused:(id)a3
{
  v4 = [(PXGMetalTextureAtlasManager *)self delegate];
  if (!v4 || (v5 = v4, -[PXGMetalTextureAtlasManager delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 textureAtlasManagerShouldPruneUnusedTextures:self], v6, v5, v7))
  {

    [(PXGMetalTextureAtlasManager *)self pruneUnusedTextures];
  }
}

- (void)_getAtlas:(id *)a3 localThumbnailIndex:(unsigned int *)a4 forGlobalThumbnailIndex:(unsigned int)a5
{
  v10 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v11 = [v10 count] * self->_capacityPerAtlas;

  if (v11 <= a5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"globalThumbnailIndex < self.atlasTextures.count * _capacityPerAtlas"}];
  }

  capacityPerAtlas = self->_capacityPerAtlas;
  v13 = a5 / capacityPerAtlas;
  v14 = a5 % capacityPerAtlas;
  v15 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v18 = [v15 objectAtIndexedSubscript:v13];

  v16 = v18;
  *a3 = v18;
  *a4 = v14;
}

- (void)_requestQueue_getNextAvailableAtlas:(id *)a3 thumbnailOffset:(unsigned int *)a4
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
  v7 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__PXGMetalTextureAtlasManager__requestQueue_getNextAvailableAtlas_thumbnailOffset___block_invoke;
  v14[3] = &unk_2782AA148;
  v14[5] = &v19;
  v14[6] = &v15;
  v14[4] = self;
  [v7 enumerateObjectsUsingBlock:v14];
  v8 = [(PXGMetalTextureAtlasManager *)self textureConverter];
  v9 = v20[5];
  if (!v9 && v8)
  {
    v10 = [v8 createAtlasForTextureAtlasManager:self];
    v11 = v20[5];
    v20[5] = v10;

    [v20[5] setDelegate:self];
    v12 = [v7 count];
    *(v16 + 6) = self->_capacityPerAtlas * v12;
    v13 = [v7 arrayByAddingObject:v20[5]];
    [(PXGMetalTextureAtlasManager *)self setAtlasTextures:v13];

    v9 = v20[5];
  }

  *a3 = v9;
  *a4 = *(v16 + 6);

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

- (void)applyChangeDetails:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) applyChangeDetails:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [MEMORY[0x277CCAA78] indexSet];
  [(PXGMetalTextureAtlasManager *)self setSkipRenderSpriteIndexes:v10];
}

- (void)setSkipRenderSpriteIndexes:(id)a3
{
  if (self->_skipRenderSpriteIndexes != a3)
  {
    v5 = [a3 copy];
    skipRenderSpriteIndexes = self->_skipRenderSpriteIndexes;
    self->_skipRenderSpriteIndexes = v5;

    [(PXGMetalTextureAtlasManager *)self _updateAtlasSpriteIndexSkips];
  }
}

- (void)processPendingThumbnailRequestIDsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXGMetalTextureAtlasManager *)self layoutQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__PXGMetalTextureAtlasManager_processPendingThumbnailRequestIDsWithHandler___block_invoke;
  v8[3] = &unk_2782AA120;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
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

- (void)removeSpriteIndex:(unsigned int)a3 atThumbnailIndex:(unsigned int)a4
{
  v4 = *&a3;
  v7 = 0;
  v6 = 0;
  [(PXGMetalTextureAtlasManager *)self _getAtlas:&v6 localThumbnailIndex:&v7 forGlobalThumbnailIndex:*&a4];
  v5 = v6;
  [v5 removeSpriteIndex:v4 atThumbnailIndex:v7];
}

- (void)addSpriteWithTextureRequestID:(int)a3 thumbnailData:(id)a4 size:(CGSize)a5 bytesPerRow:(unint64_t)a6 contentsRect:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v12 = a5.height;
  v13 = a5.width;
  v14 = *&a3;
  requestQueue = self->_requestQueue;
  v17 = a4;
  dispatch_assert_queue_V2(requestQueue);
  v20 = 0;
  v19 = 0;
  [(PXGMetalTextureAtlasManager *)self _requestQueue_getNextAvailableAtlas:&v19 thumbnailOffset:&v20];
  v18 = v19;
  [v18 addSpriteWithTextureRequestID:v14 thumbnailData:v17 size:a6 bytesPerRow:v13 contentsRect:{v12, x, y, width, height}];
}

- (NSString)description
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v7 += [v10 count];
        v11 = [v10 texture];
        v6 += [v11 allocatedSize];
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  v16 = [(PXGMetalTextureAtlasManager *)self pixelFormat];
  v17 = [(PXGMetalTextureAtlasManager *)self atlasTextures];
  v18 = [v13 stringWithFormat:@"<%@ thumbnailSize:%@ pixelFormat:%lu count:%ld memory:%.2fMB textureAtlases:%@>", v14, v15, v16, v7, *&v12, v17];

  return v18;
}

- (PXGMetalTextureAtlasManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:82 description:{@"%s is not available as initializer", "-[PXGMetalTextureAtlasManager init]"}];

  abort();
}

- (PXGMetalTextureAtlasManager)initWithThumbnailSize:(CGSize)a3 pixelFormat:(unint64_t)a4 capacityPerAtlas:(unsigned int)a5 mipmapped:(BOOL)a6 requestQueue:(id)a7 layoutQueue:(id)a8 colorProgram:(id)a9 context:(id)a10
{
  height = a3.height;
  width = a3.width;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v41.receiver = self;
  v41.super_class = PXGMetalTextureAtlasManager;
  v21 = [(PXGMetalTextureAtlasManager *)&v41 init];
  if (v21)
  {
    v38 = v17;
    v22 = 4096.0 / width;
    if (4096.0 / width > a5)
    {
      v22 = a5;
    }

    v23 = vcvtpd_s64_f64(a5 / v22) * v22;
    if (!v23)
    {
      v33 = [MEMORY[0x277CCA890] currentHandler];
      [v33 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"capacityPerAtlas > 0"}];
    }

    v24 = [v20 device];

    if (!v24)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      [v34 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"context.device != nil"}];
    }

    PXSizeRoundToPixel();
    if (v26 != width || v25 != height)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      v42.width = width;
      v42.height = height;
      v36 = NSStringFromCGSize(v42);
      [v35 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:63 description:{@"thumbnailSize cannot have fractional pixels:%@", v36}];
    }

    objc_storeStrong(&v21->_metalRenderContext, a10);
    objc_storeStrong(&v21->_colorProgram, a9);
    objc_storeStrong(&v21->_layoutQueue, a8);
    objc_storeStrong(&v21->_requestQueue, a7);
    v27 = dispatch_queue_create("com.apple.photos.atlas-manager.sync", 0);
    syncQueue = v21->_syncQueue;
    v21->_syncQueue = v27;

    v21->_pixelFormat = a4;
    v21->_thumbnailSize.width = width;
    v21->_thumbnailSize.height = height;
    v21->_capacityPerAtlas = v23;
    v21->_mipmapped = a6;
    v29 = [MEMORY[0x277CCAA78] indexSet];
    skipRenderSpriteIndexes = v21->_skipRenderSpriteIndexes;
    v21->_skipRenderSpriteIndexes = v29;

    atlasTextures = v21->_atlasTextures;
    v21->_atlasTextures = MEMORY[0x277CBEBF8];

    v17 = v38;
  }

  return v21;
}

@end