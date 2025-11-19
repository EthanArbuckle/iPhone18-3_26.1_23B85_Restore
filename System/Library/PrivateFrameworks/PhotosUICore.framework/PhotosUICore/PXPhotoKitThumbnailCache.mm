@interface PXPhotoKitThumbnailCache
- (NSString)description;
- (PXPhotoKitThumbnailCache)init;
- (PXPhotoKitThumbnailCache)initWithSizeLimit:(unint64_t)a3 photoLibrary:(id)a4;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (id)tableThumbnailDataForAsset:(id)a3 dataSpecification:(PHAssetResourceTableDataSpecification *)a4;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)cacheThumbnailData:(id)a3 specification:(const PHAssetResourceTableDataSpecification *)a4 forAsset:(id)a5;
- (void)dealloc;
@end

@implementation PXPhotoKitThumbnailCache

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasIncrementalChanges])
  {
    os_unfair_lock_lock(&self->_lock);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_lock_cachedThumbnailIndexByObjectID;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v4 contentOrThumbnailChangedForPHAssetOID:v11])
          {
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v12 = [(NSMutableDictionary *)self->_lock_cachedThumbnailIndexByObjectID objectForKeyedSubscript:v11];
            [v8 addObject:v12];
          }
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v8)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [(NSCache *)self->_cache removeObjectForKey:*(*(&v19 + 1) + 8 * j), v19];
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v15);
      }
    }
  }

  else
  {
    [(NSCache *)self->_cache removeAllObjects];
  }

  return 0;
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  lock_cachedThumbnailIndexByObjectID = self->_lock_cachedThumbnailIndexByObjectID;
  v7 = [v5 objectID];

  [(NSMutableDictionary *)lock_cachedThumbnailIndexByObjectID removeObjectForKey:v7];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cacheThumbnailData:(id)a3 specification:(const PHAssetResourceTableDataSpecification *)a4 forAsset:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 photoLibrary];
  photoLibrary = self->_photoLibrary;

  if (v10 == photoLibrary)
  {
    v12 = [v9 objectID];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "thumbnailIndex")}];
    v14 = a4->dataHeight * a4->bytesPerRow;
    v15 = v14;
    if ([v8 length] >= v14)
    {
      v16 = [off_1E7721920 sharedInstance];
      v17 = [v16 colorCachedThumbnails];

      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:objc_msgSend(v8 length:{"bytes"), v15}];
        bytesPerRow = a4->bytesPerRow;
        dataWidth = a4->dataWidth;
        v21 = [v18 mutableBytes];
        if (v15 >= 2)
        {
          v22 = 0;
          v23 = bytesPerRow / dataWidth;
          if ((v23 + 1) > v15)
          {
            v24 = v23 + 1;
          }

          else
          {
            v24 = v15;
          }

          v25 = v24 - 1;
          if (v24 - 1 == v23)
          {
            v26 = bytesPerRow / dataWidth;
          }

          else
          {
            v26 = v23 + 1;
          }

          if (v25 == v23)
          {
            v27 = (v25 - v26) / v23;
          }

          else
          {
            v27 = (v25 - v26) / v23 + 1;
          }

          v28 = vdupq_n_s64(v27);
          v29 = (v21 + 1);
          do
          {
            v30 = vdupq_n_s64(v22);
            v31 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A5301350)));
            if (vuzp1_s8(vuzp1_s16(v31, *v28.i8), *v28.i8).u8[0])
            {
              *v29 = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v31, *&v28), *&v28).i8[1])
            {
              v29[v23] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A535BC40)))), *&v28).i8[2])
            {
              v29[2 * v23] = -1;
              v29[3 * v23] = -1;
            }

            v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A535BC50)));
            if (vuzp1_s8(*&v28, vuzp1_s16(v32, *&v28)).i32[1])
            {
              v29[4 * v23] = -1;
            }

            if (vuzp1_s8(*&v28, vuzp1_s16(v32, *&v28)).i8[5])
            {
              v29[5 * v23] = -1;
            }

            if (vuzp1_s8(*&v28, vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A535BC60))))).i8[6])
            {
              v29[6 * v23] = -1;
              v29[7 * v23] = -1;
            }

            v33 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A535BC70)));
            if (vuzp1_s8(vuzp1_s16(v33, *v28.i8), *v28.i8).u8[0])
            {
              v29[8 * v23] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v33, *&v28), *&v28).i8[1])
            {
              v29[9 * v23] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A535BC80)))), *&v28).i8[2])
            {
              v29[10 * v23] = -1;
              v29[11 * v23] = -1;
            }

            v34 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A535BC90)));
            if (vuzp1_s8(*&v28, vuzp1_s16(v34, *&v28)).i32[1])
            {
              v29[12 * v23] = -1;
            }

            if (vuzp1_s8(*&v28, vuzp1_s16(v34, *&v28)).i8[5])
            {
              v29[13 * v23] = -1;
            }

            if (vuzp1_s8(*&v28, vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v30, xmmword_1A535BCA0))))).i8[6])
            {
              v29[14 * v23] = -1;
              v29[15 * v23] = -1;
            }

            v22 += 16;
            v29 += 16 * v23;
          }

          while ((v27 & 0xFFFFFFFFFFFFFFF0) + 16 != v22);
        }
      }

      else
      {
        v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:objc_msgSend(v8 length:{"bytes"), v15}];
      }

      v35 = [[PXThumbnailCacheEntry alloc] initWithObjectID:v12 dataSpec:a4 data:v18];
      [(NSCache *)self->_cache setObject:v35 forKey:v13 cost:v15];
      v36 = [(NSCache *)self->_cache objectForKey:v13];
      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_lock_cachedThumbnailIndexByObjectID setObject:v13 forKeyedSubscript:v12];
      os_unfair_lock_unlock(&self->_lock);
    }

    else if ([v8 length] >= v14)
    {
      PXAssertGetLog();
    }
  }
}

- (id)tableThumbnailDataForAsset:(id)a3 dataSpecification:(PHAssetResourceTableDataSpecification *)a4
{
  v6 = a3;
  v7 = [v6 photoLibrary];
  photoLibrary = self->_photoLibrary;

  if (v7 == photoLibrary)
  {
    cache = self->_cache;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "thumbnailIndex")}];
    v12 = [(NSCache *)cache objectForKey:v11];

    if (a4 && v12)
    {
      [v12 dataSpec];
      *&a4->width = v14;
      *&a4->dataHeight = v15;
    }

    v9 = [v12 data];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXPhotoKitThumbnailCache *)self label];
  v5 = [(NSMutableDictionary *)self->_lock_cachedThumbnailIndexByObjectID count];
  v6 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[PXPhotoKitThumbnailCache sizeLimit](self countStyle:{"sizeLimit"), 1}];
  v7 = [v3 stringWithFormat:@"<%@:%p label:%@ count:%lu sizeLimit:%@>", self, self, v4, v5, v6];

  return v7;
}

- (void)dealloc
{
  [(NSCache *)self->_cache setDelegate:0];
  v3.receiver = self;
  v3.super_class = PXPhotoKitThumbnailCache;
  [(PXPhotoKitThumbnailCache *)&v3 dealloc];
}

- (PXPhotoKitThumbnailCache)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotoKitThumbnailCache.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXPhotoKitThumbnailCache init]"}];

  abort();
}

- (PXPhotoKitThumbnailCache)initWithSizeLimit:(unint64_t)a3 photoLibrary:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PXPhotoKitThumbnailCache;
  v8 = [(PXPhotoKitThumbnailCache *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_sizeLimit = a3;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_cachedThumbnailIndexByObjectID = v9->_lock_cachedThumbnailIndexByObjectID;
    v9->_lock_cachedThumbnailIndexByObjectID = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v9->_cache;
    v9->_cache = v12;

    [(NSCache *)v9->_cache setTotalCostLimit:a3];
    [(NSCache *)v9->_cache setDelegate:v9];
    objc_storeStrong(&v9->_photoLibrary, a4);
    [v7 px_registerChangeObserver:v9];
  }

  return v9;
}

@end