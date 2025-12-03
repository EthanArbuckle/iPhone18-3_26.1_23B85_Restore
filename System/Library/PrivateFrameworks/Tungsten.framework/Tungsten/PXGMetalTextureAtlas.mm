@interface PXGMetalTextureAtlas
+ (unsigned)maxCapacityForThumbnailSize:(CGSize)size pixelFormat:(unint64_t)format;
- (BOOL)containsSpriteIndex:(unsigned int)index;
- (CGSize)pixelSize;
- (CGSize)thumbnailSize;
- (NSIndexSet)renderedSpriteIndexes;
- (NSIndexSet)thumbnailIndexesUsedBySprites;
- (NSString)description;
- (PXGMetalTextureAtlas)init;
- (PXGMetalTextureAtlas)initWithThumbnailSize:(CGSize)size pixelFormat:(unint64_t)format capacity:(unsigned int)capacity mipmapped:(BOOL)mipmapped colorProgram:(id)program context:(id)context layoutQueue:(id)queue;
- (PXGMetalTextureAtlasDelegate)delegate;
- (id)getAndClearDirtySpriteIndexesIntersectingSet:(id)set;
- (unsigned)_syncQueue_checkoutNextThumbnailIndex;
- (unsigned)spriteCount;
- (void)_checkinPendingThumbnailIndexesIfNeeded;
- (void)_invalidateRenderedSpriteIndexes;
- (void)_syncQueue_checkinThumbnailIndex:(unsigned int)index;
- (void)_syncQueue_releaseThumbnailAtIndex:(int64_t)index;
- (void)_syncQueue_releaseThumbnailsAtIndexes:(id)indexes;
- (void)_syncQueue_resizeStorageIfNeeded;
- (void)_syncQueue_retainThumbnailsAtIndexes:(id)indexes;
- (void)addSpriteWithTextureRequestID:(int)d deliveryOrder:(unsigned int)order;
- (void)addSpriteWithTextureRequestID:(int)d thumbnailData:(id)data size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect;
- (void)applyChangeDetails:(id)details;
- (void)cleanupAfterRender:(int64_t)render;
- (void)dealloc;
- (void)enumerateSpriteIndexes:(id)indexes;
- (void)getSpriteIndexes:(unsigned int *)indexes maxSpriteCount:(unsigned int)count;
- (void)getTextureInfos:(id *)infos forSpriteIndexes:(const unsigned int *)indexes geometries:(id *)geometries spriteStyles:(id *)styles spriteInfos:(id *)spriteInfos screenScale:(double)scale count:(unsigned int)count;
- (void)prepareForRender:(int64_t)render;
- (void)processPendingTextureRequestIDsWithHandler:(id)handler;
- (void)processPendingThumbnailRequestIDsWithHandler:(id)handler;
- (void)removeSpriteIndex:(unsigned int)index;
- (void)removeSpriteIndex:(unsigned int)index atThumbnailIndex:(unsigned int)thumbnailIndex;
- (void)setSkipRenderSpriteIndexes:(id)indexes;
@end

@implementation PXGMetalTextureAtlas

- (void)_syncQueue_resizeStorageIfNeeded
{
  syncQueue_pendingThumbnailRequestInfoCount = self->_syncQueue_pendingThumbnailRequestInfoCount;
  syncQueue_pendingThumbnailRequestInfoCapacity = self->_syncQueue_pendingThumbnailRequestInfoCapacity;
  if (syncQueue_pendingThumbnailRequestInfoCount > syncQueue_pendingThumbnailRequestInfoCapacity)
  {
    if (!syncQueue_pendingThumbnailRequestInfoCapacity)
    {
      syncQueue_pendingThumbnailRequestInfoCapacity = 10;
      self->_syncQueue_pendingThumbnailRequestInfoCapacity = 10;
      syncQueue_pendingThumbnailRequestInfoCount = self->_syncQueue_pendingThumbnailRequestInfoCount;
    }

    if (syncQueue_pendingThumbnailRequestInfoCount <= syncQueue_pendingThumbnailRequestInfoCapacity)
    {
      v4 = syncQueue_pendingThumbnailRequestInfoCapacity;
    }

    else
    {
      do
      {
        v4 = 2 * syncQueue_pendingThumbnailRequestInfoCapacity;
        self->_syncQueue_pendingThumbnailRequestInfoCapacity = 2 * syncQueue_pendingThumbnailRequestInfoCapacity;
        v5 = self->_syncQueue_pendingThumbnailRequestInfoCount > 2 * syncQueue_pendingThumbnailRequestInfoCapacity;
        syncQueue_pendingThumbnailRequestInfoCapacity *= 2;
      }

      while (v5);
    }

    self->_syncQueue_pendingThumbnailRequestInfo = malloc_type_realloc(self->_syncQueue_pendingThumbnailRequestInfo, 20 * v4, 0x42760281uLL);
  }
}

- (void)_invalidateRenderedSpriteIndexes
{
  renderedSpriteIndexes = self->_renderedSpriteIndexes;
  self->_renderedSpriteIndexes = 0;
}

- (unsigned)spriteCount
{
  renderedSpriteIndexes = [(PXGMetalTextureAtlas *)self renderedSpriteIndexes];
  v3 = [renderedSpriteIndexes count];

  return v3;
}

- (NSIndexSet)renderedSpriteIndexes
{
  renderedSpriteIndexes = self->_renderedSpriteIndexes;
  if (!renderedSpriteIndexes)
  {
    v4 = [(NSMutableIndexSet *)self->_spriteIndexesUsedBySprites mutableCopy];
    skipRenderSpriteIndexes = [(PXGMetalTextureAtlas *)self skipRenderSpriteIndexes];
    [(NSIndexSet *)v4 removeIndexes:skipRenderSpriteIndexes];

    v6 = self->_renderedSpriteIndexes;
    self->_renderedSpriteIndexes = v4;

    renderedSpriteIndexes = self->_renderedSpriteIndexes;
  }

  return renderedSpriteIndexes;
}

- (unsigned)_syncQueue_checkoutNextThumbnailIndex
{
  dispatch_assert_queue_V2(self->_syncQueue);
  atomic_fetch_add(&self->_count, 1u);
  firstIndex = [(NSMutableIndexSet *)self->_syncQueue_availableThumbnailIndexes firstIndex];
  [(NSMutableIndexSet *)self->_syncQueue_availableThumbnailIndexes removeIndex:firstIndex];
  [(PXGMetalTextureAtlas *)self _syncQueue_retainThumbnailAtIndex:firstIndex];
  return firstIndex;
}

- (NSIndexSet)thumbnailIndexesUsedBySprites
{
  v2 = [(NSMutableIndexSet *)self->_thumbnailIndexesUsedBySprites copy];

  return v2;
}

- (PXGMetalTextureAtlasDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)thumbnailSize
{
  width = self->_thumbnailSize.width;
  height = self->_thumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_syncQueue_checkinThumbnailIndex:(unsigned int)index
{
  dispatch_assert_queue_V2(self->_syncQueue);

  [(PXGMetalTextureAtlas *)self _syncQueue_releaseThumbnailAtIndex:index];
}

- (void)cleanupAfterRender:(int64_t)render
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PXGMetalTextureAtlas_cleanupAfterRender___block_invoke;
  block[3] = &unk_2782AA258;
  block[4] = self;
  block[5] = render;
  block[6] = a2;
  dispatch_async(syncQueue, block);
}

void __43__PXGMetalTextureAtlas_cleanupAfterRender___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v6 = [v2 objectForKeyedSubscript:v3];

  v4 = *(*(a1 + 32) + 208);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v4 setObject:0 forKeyedSubscript:v5];

  [*(a1 + 32) _syncQueue_releaseThumbnailsAtIndexes:v6];
}

- (void)prepareForRender:(int64_t)render
{
  thumbnailIndexesUsedBySprites = [(PXGMetalTextureAtlas *)self thumbnailIndexesUsedBySprites];
  syncQueue = self->_syncQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__PXGMetalTextureAtlas_prepareForRender___block_invoke;
  v9[3] = &unk_2782AA230;
  renderCopy = render;
  v12 = a2;
  v9[4] = self;
  v10 = thumbnailIndexesUsedBySprites;
  v8 = thumbnailIndexesUsedBySprites;
  dispatch_async(syncQueue, v9);
}

uint64_t __41__PXGMetalTextureAtlas_prepareForRender___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 208);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = a1[4];
  v6 = a1[5];

  return [v5 _syncQueue_retainThumbnailsAtIndexes:v6];
}

- (CGSize)pixelSize
{
  width = [(MTLTexture *)self->_texture width];
  height = [(MTLTexture *)self->_texture height];
  v5 = width;
  result.height = height;
  result.width = v5;
  return result;
}

- (void)removeSpriteIndex:(unsigned int)index
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:661 description:{@"%@ is not available on %@, use the thumbnail variant", v6, self}];

  abort();
}

- (void)processPendingTextureRequestIDsWithHandler:(id)handler
{
  handlerCopy = handler;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:657 description:{@"%@ is not available on %@, use the thumbnail variant", v7, self}];

  abort();
}

- (void)addSpriteWithTextureRequestID:(int)d deliveryOrder:(unsigned int)order
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:653 description:{@"%@ is not available on %@, use the thumbnail variant", v7, self}];

  abort();
}

- (BOOL)containsSpriteIndex:(unsigned int)index
{
  renderedSpriteIndexes = [(PXGMetalTextureAtlas *)self renderedSpriteIndexes];
  LOBYTE(index) = [renderedSpriteIndexes containsIndex:index];

  return index;
}

- (void)getTextureInfos:(id *)infos forSpriteIndexes:(const unsigned int *)indexes geometries:(id *)geometries spriteStyles:(id *)styles spriteInfos:(id *)spriteInfos screenScale:(double)scale count:(unsigned int)count
{
  if ([(PXGMetalTextureAtlas *)self spriteCount:infos]< count)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"count <= self.spriteCount"}];
  }

  guarded_textureInfoByThumbnailIndex = self->_guarded_textureInfoByThumbnailIndex;
  spriteIndexByThumbnailIndex = self->_spriteIndexByThumbnailIndex;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  thumbnailIndexesUsedBySprites = self->_thumbnailIndexesUsedBySprites;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__PXGMetalTextureAtlas_getTextureInfos_forSpriteIndexes_geometries_spriteStyles_spriteInfos_screenScale_count___block_invoke;
  v18[3] = &unk_2782AA208;
  v18[4] = v20;
  v18[5] = indexes;
  v18[6] = spriteIndexByThumbnailIndex;
  v18[7] = infos;
  v18[8] = guarded_textureInfoByThumbnailIndex;
  countCopy = count;
  [(NSMutableIndexSet *)thumbnailIndexesUsedBySprites enumerateRangesUsingBlock:v18];
  _Block_object_dispose(v20, 8);
}

uint64_t __111__PXGMetalTextureAtlas_getTextureInfos_forSpriteIndexes_geometries_spriteStyles_spriteInfos_screenScale_count___block_invoke(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2 < a2 + a3)
  {
    v4 = *(result + 32);
    v5 = a2 << 6;
    for (i = 4 * a2; ; i += 4)
    {
      v7 = *(*(v4 + 8) + 24);
      if (*(*(result + 48) + i) == *(*(result + 40) + 4 * v7))
      {
        v8 = (*(result + 56) + (v7 << 6));
        v9 = (*(result + 64) + v5);
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[3];
        v8[2] = v9[2];
        v8[3] = v12;
        *v8 = v10;
        v8[1] = v11;
        ++*(*(*(result + 32) + 8) + 24);
        v4 = *(result + 32);
        if (*(*(v4 + 8) + 24) == *(result + 72))
        {
          break;
        }
      }

      v5 += 64;
      if (!--a3)
      {
        return result;
      }
    }

    *a4 = 1;
  }

  return result;
}

- (void)enumerateSpriteIndexes:(id)indexes
{
  indexesCopy = indexes;
  renderedSpriteIndexes = [(PXGMetalTextureAtlas *)self renderedSpriteIndexes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PXGMetalTextureAtlas_enumerateSpriteIndexes___block_invoke;
  v7[3] = &unk_2782AA5E0;
  v8 = indexesCopy;
  v6 = indexesCopy;
  [renderedSpriteIndexes enumerateIndexesUsingBlock:v7];
}

- (void)getSpriteIndexes:(unsigned int *)indexes maxSpriteCount:(unsigned int)count
{
  if ([(PXGMetalTextureAtlas *)self spriteCount]< count)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:593 description:{@"Invalid parameter not satisfying: %@", @"maxSpriteCount <= self.spriteCount"}];
  }

  spriteIndexByThumbnailIndex = self->_spriteIndexByThumbnailIndex;
  renderedSpriteIndexes = [(PXGMetalTextureAtlas *)self renderedSpriteIndexes];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  thumbnailIndexesUsedBySprites = self->_thumbnailIndexesUsedBySprites;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__PXGMetalTextureAtlas_getSpriteIndexes_maxSpriteCount___block_invoke;
  v13[3] = &unk_2782AA1E0;
  v16 = spriteIndexByThumbnailIndex;
  v11 = renderedSpriteIndexes;
  indexesCopy = indexes;
  v14 = v11;
  v15 = v19;
  countCopy = count;
  [(NSMutableIndexSet *)thumbnailIndexesUsedBySprites enumerateRangesUsingBlock:v13];

  _Block_object_dispose(v19, 8);
}

uint64_t __56__PXGMetalTextureAtlas_getSpriteIndexes_maxSpriteCount___block_invoke(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2 < a2 + a3)
  {
    v17 = v9;
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    v23 = v10;
    v24 = v11;
    v13 = a3;
    v14 = result;
    for (i = 4 * a2; ; i += 4)
    {
      v16 = *(*(v14 + 48) + i);
      result = [*(v14 + 32) containsIndex:{v16, v17, v18, v19, v20, v21, v22, v23, v24}];
      if (result)
      {
        *(*(v14 + 56) + 4 * (*(*(*(v14 + 40) + 8) + 24))++) = v16;
        if (*(*(*(v14 + 40) + 8) + 24) == *(v14 + 64))
        {
          break;
        }
      }

      if (!--v13)
      {
        return result;
      }
    }

    *a4 = 1;
  }

  return result;
}

- (void)_syncQueue_releaseThumbnailsAtIndexes:(id)indexes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__PXGMetalTextureAtlas__syncQueue_releaseThumbnailsAtIndexes___block_invoke;
  v3[3] = &unk_2782AA948;
  v3[4] = self;
  [indexes enumerateRangesUsingBlock:v3];
}

uint64_t __62__PXGMetalTextureAtlas__syncQueue_releaseThumbnailsAtIndexes___block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
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
      result = [*(v11 + 32) _syncQueue_releaseThumbnailAtIndex:{v10++, v12, v13, v14, v15, v16, v17}];
      --v9;
    }

    while (v9);
  }

  return result;
}

- (void)_syncQueue_releaseThumbnailAtIndex:(int64_t)index
{
  if (!--self->_retainCountByThumbnailIndex[index])
  {
    [(NSMutableIndexSet *)self->_syncQueue_availableThumbnailIndexes addIndex:?];
    if (atomic_fetch_add(&self->_count, 0xFFFFu) == 1)
    {
      objc_initWeak(&location, self);
      layoutQueue = self->_layoutQueue;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __59__PXGMetalTextureAtlas__syncQueue_releaseThumbnailAtIndex___block_invoke;
      v5[3] = &unk_2782AB888;
      objc_copyWeak(&v6, &location);
      dispatch_async(layoutQueue, v5);
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void __59__PXGMetalTextureAtlas__syncQueue_releaseThumbnailAtIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isUnused];

  if (v3)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v4 = [v6 delegate];
    v5 = objc_loadWeakRetained((a1 + 32));
    [v4 textureAtlasDidBecomeUnused:v5];
  }
}

- (void)_syncQueue_retainThumbnailsAtIndexes:(id)indexes
{
  retainCountByThumbnailIndex = self->_retainCountByThumbnailIndex;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__PXGMetalTextureAtlas__syncQueue_retainThumbnailsAtIndexes___block_invoke;
  v4[3] = &__block_descriptor_40_e24_v32__0__NSRange_QQ_8_B24l;
  v4[4] = retainCountByThumbnailIndex;
  [indexes enumerateRangesUsingBlock:v4];
}

uint64_t __61__PXGMetalTextureAtlas__syncQueue_retainThumbnailsAtIndexes___block_invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    do
    {
      ++*(*(result + 32) + a2++);
      --a3;
    }

    while (a3);
  }

  return result;
}

- (void)applyChangeDetails:(id)details
{
  layoutQueue = self->_layoutQueue;
  detailsCopy = details;
  dispatch_assert_queue_V2(layoutQueue);
  [detailsCopy applyToSpriteIndexes:self->_spriteIndexByThumbnailIndex atIndexes:self->_thumbnailIndexesUsedBySprites];
  v6 = [detailsCopy indexSetAfterApplyingChangeDetails:self->_spriteIndexesUsedBySprites];
  v7 = [v6 mutableCopy];
  spriteIndexesUsedBySprites = self->_spriteIndexesUsedBySprites;
  self->_spriteIndexesUsedBySprites = v7;

  v9 = [detailsCopy indexSetAfterApplyingChangeDetails:self->_dirtySpriteIndexes];

  v10 = [v9 mutableCopy];
  dirtySpriteIndexes = self->_dirtySpriteIndexes;
  self->_dirtySpriteIndexes = v10;

  indexSet = [MEMORY[0x277CCAA78] indexSet];
  [(PXGMetalTextureAtlas *)self setSkipRenderSpriteIndexes:indexSet];

  [(PXGMetalTextureAtlas *)self _invalidateRenderedSpriteIndexes];
}

- (void)processPendingThumbnailRequestIDsWithHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_layoutQueue);
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__PXGMetalTextureAtlas_processPendingThumbnailRequestIDsWithHandler___block_invoke;
  block[3] = &unk_2782AA198;
  block[4] = self;
  v9 = handlerCopy;
  v10 = a2;
  v7 = handlerCopy;
  dispatch_sync(syncQueue, block);
}

uint64_t __69__PXGMetalTextureAtlas_processPendingThumbnailRequestIDsWithHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 224);
  if (v2 >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 32) + 216) + v4;
      v6 = *(v5 + 4);
      v7 = (*(*(v3 + 40) + 16))(*(v5 + 12));
      v8 = *(v3 + 32);
      if (v7 == -1)
      {
        [v8 _syncQueue_checkinThumbnailIndex:v6];
      }

      else
      {
        [v8[15] addIndex:v7];
        [*(*(v3 + 32) + 128) addIndex:v7];
        [*(*(v3 + 32) + 112) addIndex:v6];
        *(*(*(v3 + 32) + 136) + 4 * v6) = v7;
      }

      v4 += 20;
      --v2;
    }

    while (v2);
    result = [*(v3 + 32) _invalidateRenderedSpriteIndexes];
    v1 = *(v3 + 32);
  }

  *(v1 + 224) = 0;
  return result;
}

- (void)_checkinPendingThumbnailIndexesIfNeeded
{
  if ([(NSMutableIndexSet *)self->_thumbnailIndexesPendingCheckin count])
  {
    if (!atomic_fetch_or(&self->_isPerformingThumbnailCheckin, 1u))
    {
      v3 = self->_thumbnailIndexesBeingCheckedIn;
      objc_storeStrong(&self->_thumbnailIndexesBeingCheckedIn, self->_thumbnailIndexesPendingCheckin);
      thumbnailIndexesPendingCheckin = self->_thumbnailIndexesPendingCheckin;
      self->_thumbnailIndexesPendingCheckin = v3;
      v5 = v3;

      syncQueue = self->_syncQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PXGMetalTextureAtlas__checkinPendingThumbnailIndexesIfNeeded__block_invoke;
      block[3] = &unk_2782ABE50;
      block[4] = self;
      dispatch_async(syncQueue, block);
    }
  }
}

void __63__PXGMetalTextureAtlas__checkinPendingThumbnailIndexesIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PXGMetalTextureAtlas__checkinPendingThumbnailIndexesIfNeeded__block_invoke_2;
  v8[3] = &unk_2782ABC08;
  v8[4] = v2;
  [v3 enumerateIndexesUsingBlock:v8];
  [*(*(a1 + 32) + 168) removeAllIndexes];
  v4 = dispatch_time(0, 5000000);
  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PXGMetalTextureAtlas__checkinPendingThumbnailIndexesIfNeeded__block_invoke_3;
  v7[3] = &unk_2782ABE50;
  v7[4] = v5;
  dispatch_after(v4, v6, v7);
}

void __63__PXGMetalTextureAtlas__checkinPendingThumbnailIndexesIfNeeded__block_invoke_3(uint64_t a1)
{
  atomic_exchange((*(a1 + 32) + 176), 0);
  v1 = *(a1 + 32);
  v2 = *(v1 + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PXGMetalTextureAtlas__checkinPendingThumbnailIndexesIfNeeded__block_invoke_4;
  block[3] = &unk_2782ABE50;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)removeSpriteIndex:(unsigned int)index atThumbnailIndex:(unsigned int)thumbnailIndex
{
  dispatch_assert_queue_V2(self->_layoutQueue);
  [(NSMutableIndexSet *)self->_spriteIndexesUsedBySprites removeIndex:index];
  [(NSMutableIndexSet *)self->_dirtySpriteIndexes removeIndex:index];
  [(NSMutableIndexSet *)self->_thumbnailIndexesUsedBySprites removeIndex:thumbnailIndex];
  [(PXGMetalTextureAtlas *)self _invalidateRenderedSpriteIndexes];
  [(NSMutableIndexSet *)self->_thumbnailIndexesPendingCheckin addIndex:thumbnailIndex];

  [(PXGMetalTextureAtlas *)self _checkinPendingThumbnailIndexesIfNeeded];
}

- (void)addSpriteWithTextureRequestID:(int)d thumbnailData:(id)data size:(CGSize)size bytesPerRow:(unint64_t)row contentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v37 = size.height;
  v9 = size.width;
  dataCopy = data;
  [(PXGMetalTextureAtlas *)self thumbnailCropIn];
  v13 = v12;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__PXGMetalTextureAtlas_addSpriteWithTextureRequestID_thumbnailData_size_bytesPerRow_contentsRect___block_invoke;
  block[3] = &unk_2782AB4E0;
  block[4] = self;
  block[5] = &v50;
  dispatch_sync(syncQueue, block);
  v16 = self->_thumbnailSize.width;
  v15 = self->_thumbnailSize.height;
  v17 = *(v51 + 6);
  cols = self->_cols;
  width = [(MTLTexture *)self->_texture width];
  height = [(MTLTexture *)self->_texture height];
  [(PXGMetalTextureAtlas *)self alpha];
  v21.f64[0] = width;
  v21.f64[1] = height;
  v22 = vcvt_f32_f64(vsubq_f64(v21, vdupq_lane_s64(COERCE__INT64((v13 + v13)), 0)));
  v23 = v16;
  *v21.f64 = v15;
  v24.f32[0] = v23 * (v17 % cols);
  v24.f32[1] = *v21.f64 * (v17 / cols);
  v25.f32[0] = x + v13;
  *v21.f64 = y + v13;
  v25.i32[1] = LODWORD(v21.f64[0]);
  *v21.f64 = width;
  *(v21.f64 + 1) = height;
  v26 = &self->_guarded_textureInfoByThumbnailIndex[8 * *(v51 + 6)];
  *v26 = vadd_f32(v25, v24);
  v26[1] = v22;
  v26[2] = *&v21.f64[0];
  v26[3] = 0;
  *&v26[4].var0 = xmmword_21AE2D320;
  v26[6].var0 = v27;
  v26[6].var1 = 0.0;
  v26[7] = 0;
  v28 = self->_cols;
  v29 = *(v51 + 6);
  thumbnailSize = self->_thumbnailSize;
  metalRenderContext = self->_metalRenderContext;
  bytes = [dataCopy bytes];
  texture = self->_texture;
  v33 = [dataCopy length];
  v34.f64[0] = (v29 % v28);
  v34.f64[1] = (v29 / v28);
  v44 = vcvtq_u64_f64(vmulq_f64(thumbnailSize, v34));
  v45 = 0;
  v46 = v9;
  v47 = v37;
  v48 = 1;
  [(PXGMetalRenderContext *)metalRenderContext fastCopyBytes:bytes toTexture:texture inRegion:&v44 length:v33 bytesPerRow:row bytesPerImage:0];
  v35 = self->_syncQueue;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __98__PXGMetalTextureAtlas_addSpriteWithTextureRequestID_thumbnailData_size_bytesPerRow_contentsRect___block_invoke_2;
  v42[3] = &unk_2782AA170;
  dCopy = d;
  v42[4] = self;
  v42[5] = &v50;
  v42[6] = v22;
  dispatch_sync(v35, v42);
  _Block_object_dispose(&v50, 8);
}

uint64_t __98__PXGMetalTextureAtlas_addSpriteWithTextureRequestID_thumbnailData_size_bytesPerRow_contentsRect___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _syncQueue_checkoutNextThumbnailIndex];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

double __98__PXGMetalTextureAtlas_addSpriteWithTextureRequestID_thumbnailData_size_bytesPerRow_contentsRect___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 224);
  *(v2 + 224) = v3 + 1;
  [*(a1 + 32) _syncQueue_resizeStorageIfNeeded];
  v4 = *(*(a1 + 32) + 216) + 20 * v3;
  v5 = *(a1 + 56);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  add = atomic_fetch_add(PXGMakeNextTextureDeliveryOrderID_lastRequestID, 1u);
  result = *(a1 + 48);
  *v4 = v5;
  *(v4 + 4) = v6;
  *(v4 + 8) = add;
  *(v4 + 12) = result;
  return result;
}

- (void)setSkipRenderSpriteIndexes:(id)indexes
{
  if (self->_skipRenderSpriteIndexes != indexes)
  {
    v4 = [indexes copy];
    skipRenderSpriteIndexes = self->_skipRenderSpriteIndexes;
    self->_skipRenderSpriteIndexes = v4;

    [(PXGMetalTextureAtlas *)self _invalidateRenderedSpriteIndexes];
  }
}

- (id)getAndClearDirtySpriteIndexesIntersectingSet:(id)set
{
  layoutQueue = self->_layoutQueue;
  setCopy = set;
  dispatch_assert_queue_V2(layoutQueue);
  v6 = [(NSMutableIndexSet *)self->_dirtySpriteIndexes px_intersectionWithIndexSet:setCopy];

  [(NSMutableIndexSet *)self->_dirtySpriteIndexes removeIndexes:v6];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = PXGMetalTextureAtlas;
  v4 = [(PXGBaseTexture *)&v15 description];
  [(PXGMetalTextureAtlas *)self thumbnailSize];
  v5 = NSStringFromCGSize(v17);
  pixelFormat = [(PXGMetalTextureAtlas *)self pixelFormat];
  capacity = [(PXGMetalTextureAtlas *)self capacity];
  v8 = [(PXGMetalTextureAtlas *)self count];
  v9 = [(NSMutableIndexSet *)self->_thumbnailIndexesUsedBySprites count];
  v10 = [(PXGMetalTextureAtlas *)self count];
  v11 = v10 - [(PXGMetalTextureAtlas *)self spriteCount];
  texture = [(PXGMetalTextureAtlas *)self texture];
  v13 = [v3 stringWithFormat:@"<%@ thumbnailSize:%@ pixelFormat:%lu capacity:%d count:%d usedBySprites:%lu justRetained:%lu memory:%.2fMB>", v4, v5, pixelFormat, capacity, v8, v9, v11, vcvtd_n_f64_u64(objc_msgSend(texture, "allocatedSize"), 0xAuLL) * 0.0009765625];

  return v13;
}

- (void)dealloc
{
  free(self->_spriteIndexByThumbnailIndex);
  free(self->_retainCountByThumbnailIndex);
  free(self->_guarded_textureInfoByThumbnailIndex);
  free(self->_syncQueue_pendingThumbnailRequestInfo);
  v3.receiver = self;
  v3.super_class = PXGMetalTextureAtlas;
  [(PXGImageTexture *)&v3 dealloc];
}

- (PXGMetalTextureAtlas)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:356 description:{@"%s is not available as initializer", "-[PXGMetalTextureAtlas init]"}];

  abort();
}

- (PXGMetalTextureAtlas)initWithThumbnailSize:(CGSize)size pixelFormat:(unint64_t)format capacity:(unsigned int)capacity mipmapped:(BOOL)mipmapped colorProgram:(id)program context:(id)context layoutQueue:(id)queue
{
  mipmappedCopy = mipmapped;
  height = size.height;
  width = size.width;
  programCopy = program;
  contextCopy = context;
  queueCopy = queue;
  v60.receiver = self;
  v60.super_class = PXGMetalTextureAtlas;
  v21 = [(PXGImageTexture *)&v60 init];
  if (v21)
  {
    v58 = programCopy;
    if (!capacity)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"capacity > 0"}];
    }

    device = [contextCopy device];

    if (!device)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"context.device != nil"}];
    }

    if (width > 4096.0)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"thumbnailSize.width <= kMaxTextureWidth"}];
    }

    if (height > 4096.0)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"thumbnailSize.height <= kMaxTextureHeight"}];
    }

    PXSizeRoundToPixel();
    if (v24 != width || v23 != height)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      v61.width = width;
      v61.height = height;
      v57 = NSStringFromCGSize(v61);
      [currentHandler5 handleFailureInMethod:a2 object:v21 file:@"PXGMetalTextureAtlasManager.m" lineNumber:299 description:{@"thumbnailSize cannot have fractional pixels:%@", v57}];
    }

    objc_storeStrong(&v21->_layoutQueue, queue);
    objc_storeStrong(&v21->_metalRenderContext, context);
    objc_storeStrong(&v21->_colorProgram, program);
    v21->_capacity = capacity;
    v21->_mipmapped = mipmappedCopy;
    v21->_pixelFormat = format;
    v21->_thumbnailSize.width = width;
    v21->_thumbnailSize.height = height;
    v21->_thumbnailCropIn = 0.5;
    v25 = dispatch_queue_create("com.apple.photos.atlas-texture.sync", 0);
    syncQueue = v21->_syncQueue;
    v21->_syncQueue = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncQueue_thumbnailsInUseByRenderPass = v21->_syncQueue_thumbnailsInUseByRenderPass;
    v21->_syncQueue_thumbnailsInUseByRenderPass = v27;

    capacityCopy = 4096.0 / width;
    if (4096.0 / width > capacity)
    {
      capacityCopy = capacity;
    }

    v30 = capacityCopy;
    v31 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:format width:(width * capacityCopy) height:(height * ceil(capacity / capacityCopy)) mipmapped:0];
    if (mipmappedCopy)
    {
      device2 = [contextCopy device];
      v33 = [device2 newTextureWithDescriptor:v31];
      texture = v21->_texture;
      v21->_texture = v33;
    }

    else
    {
      v35 = [contextCopy newTextureWithDescriptor:v31];
      device2 = v21->_texture;
      v21->_texture = v35;
    }

    v21->_cols = v30;
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    thumbnailIndexesUsedBySprites = v21->_thumbnailIndexesUsedBySprites;
    v21->_thumbnailIndexesUsedBySprites = indexSet;

    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    spriteIndexesUsedBySprites = v21->_spriteIndexesUsedBySprites;
    v21->_spriteIndexesUsedBySprites = indexSet2;

    indexSet3 = [MEMORY[0x277CCAB58] indexSet];
    dirtySpriteIndexes = v21->_dirtySpriteIndexes;
    v21->_dirtySpriteIndexes = indexSet3;

    indexSet4 = [MEMORY[0x277CCAA78] indexSet];
    skipRenderSpriteIndexes = v21->_skipRenderSpriteIndexes;
    v21->_skipRenderSpriteIndexes = indexSet4;

    indexSet5 = [MEMORY[0x277CCAB58] indexSet];
    thumbnailIndexesPendingCheckin = v21->_thumbnailIndexesPendingCheckin;
    v21->_thumbnailIndexesPendingCheckin = indexSet5;

    indexSet6 = [MEMORY[0x277CCAB58] indexSet];
    thumbnailIndexesBeingCheckedIn = v21->_thumbnailIndexesBeingCheckedIn;
    v21->_thumbnailIndexesBeingCheckedIn = indexSet6;

    indexSet7 = [MEMORY[0x277CCAB58] indexSet];
    syncQueue_availableThumbnailIndexes = v21->_syncQueue_availableThumbnailIndexes;
    v21->_syncQueue_availableThumbnailIndexes = indexSet7;

    [(NSMutableIndexSet *)v21->_syncQueue_availableThumbnailIndexes addIndexesInRange:0, capacity];
    v21->_spriteIndexByThumbnailIndex = malloc_type_realloc(v21->_spriteIndexByThumbnailIndex, 4 * capacity, 0x42760281uLL);
    v21->_guarded_textureInfoByThumbnailIndex = malloc_type_realloc(v21->_guarded_textureInfoByThumbnailIndex, capacity << 6, 0x42760281uLL);
    v50 = malloc_type_realloc(v21->_retainCountByThumbnailIndex, capacity, 0x42760281uLL);
    v21->_retainCountByThumbnailIndex = v50;
    bzero(v50, capacity);

    programCopy = v58;
  }

  return v21;
}

+ (unsigned)maxCapacityForThumbnailSize:(CGSize)size pixelFormat:(unint64_t)format
{
  height = size.height;
  width = size.width;
  PXSizeRoundToPixel();
  if (v9 != width || v8 != height)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14.width = width;
    v14.height = height;
    v13 = NSStringFromCGSize(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGMetalTextureAtlasManager.m" lineNumber:285 description:{@"thumbnailSize cannot have fractional pixels:%@", v13}];
  }

  return (4096.0 / width) * (4096.0 / height);
}

@end