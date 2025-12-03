@interface PXGAssetImageCache
- (BOOL)getCachedImage:(CGImage *)image withOrientation:(unsigned int *)orientation outIsDegraded:(BOOL *)degraded forAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode forRequestID:(int)d;
- (CGImage)cacheCGImage:(CGImage *)image orientation:(unsigned int)orientation isDegraded:(BOOL)degraded forRequestID:(int)d;
- (PXGAssetImageCache)init;
- (id)debugDescription;
- (id)description;
- (void)_cacheImage:(CGImage *)image orientation:(unsigned int)orientation isDegraded:(BOOL)degraded forRequestID:(int)d outCGImage:(CGImage *)gImage;
- (void)clearAllCachedImages;
- (void)clearCachedImagesForRequestIDs:(id)ds;
@end

@implementation PXGAssetImageCache

- (PXGAssetImageCache)init
{
  v15.receiver = self;
  v15.super_class = PXGAssetImageCache;
  v2 = [(PXGAssetImageCache *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.photos.PXGAssetImageCache", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
    activeRequestIDs = v2->_activeRequestIDs;
    v2->_activeRequestIDs = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeAssets = v2->_activeAssets;
    v2->_activeAssets = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    entries = v2->_entries;
    v2->_entries = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    reusableEntries = v2->_reusableEntries;
    v2->_reusableEntries = v12;
  }

  return v2;
}

- (void)clearAllCachedImages
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PXGAssetImageCache_clearAllCachedImages__block_invoke;
  block[3] = &unk_2782ABE50;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__PXGAssetImageCache_clearAllCachedImages__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 16) count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(*(a1 + 32) + 32) copy];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [v7 requestIDs];
          [v8 removeIndexes:*(*(a1 + 32) + 16)];
          if (![v8 count])
          {
            v9 = [v7 asset];
            if (v9)
            {
              [*(*(a1 + 32) + 24) removeObject:v9];
            }

            [v7 prepareForReuse];
            [*(*(a1 + 32) + 40) addObject:v7];
            [*(*(a1 + 32) + 32) removeObject:v7];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }

  return [*(*(a1 + 32) + 16) removeAllIndexes];
}

- (void)clearCachedImagesForRequestIDs:(id)ds
{
  dsCopy = ds;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__PXGAssetImageCache_clearCachedImagesForRequestIDs___block_invoke;
  v7[3] = &unk_2782AC0A8;
  v8 = dsCopy;
  selfCopy = self;
  v6 = dsCopy;
  dispatch_async(queue, v7);
}

void __53__PXGAssetImageCache_clearCachedImagesForRequestIDs___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) px_intersectionWithIndexSet:*(*(a1 + 40) + 16)];
  if ([v2 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [*(*(a1 + 40) + 32) copy];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          v9 = [v8 requestIDs];
          [v9 removeIndexes:v2];
          if (![v9 count])
          {
            v10 = [v8 asset];
            if (v10)
            {
              [*(*(a1 + 40) + 24) removeObject:v10];
            }

            [v8 prepareForReuse];
            [*(*(a1 + 40) + 40) addObject:v8];
            [*(*(a1 + 40) + 32) removeObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  [*(*(a1 + 40) + 16) removeIndexes:*(a1 + 32)];
}

- (void)_cacheImage:(CGImage *)image orientation:(unsigned int)orientation isDegraded:(BOOL)degraded forRequestID:(int)d outCGImage:(CGImage *)gImage
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  imageCopy = image;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PXGAssetImageCache__cacheImage_orientation_isDegraded_forRequestID_outCGImage___block_invoke;
  block[3] = &unk_2782A86D8;
  block[5] = &v13;
  block[6] = image;
  dCopy = d;
  orientationCopy = orientation;
  degradedCopy = degraded;
  block[4] = self;
  dispatch_sync(queue, block);
  if (gImage)
  {
    *gImage = v14[3];
  }

  _Block_object_dispose(&v13, 8);
}

void __81__PXGAssetImageCache__cacheImage_orientation_isDegraded_forRequestID_outCGImage___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 16) containsIndex:*(a1 + 56)])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = *(*(a1 + 32) + 32);
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          v8 = [v7 requestIDs];
          v9 = [v8 containsIndex:*(a1 + 56)];

          if (v9)
          {
            PXCGImageGetSizeWithOrientation();
            v11 = v10;
            v13 = v12;
            v14 = [v7 imageSize];
            if (MEMORY[0x21CEE38D0](v14, v11, v13, v15, v16))
            {
              [v7 setCgImage:*(a1 + 48)];
              [v7 setImageOrientation:*(a1 + 60)];
              [v7 setIsDegraded:*(a1 + 64)];
            }

            else
            {
              *(*(*(a1 + 40) + 8) + 24) = [v7 cgImage];
            }

            goto LABEL_14;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (CGImage)cacheCGImage:(CGImage *)image orientation:(unsigned int)orientation isDegraded:(BOOL)degraded forRequestID:(int)d
{
  v7 = 0;
  [(PXGAssetImageCache *)self _cacheImage:image orientation:*&orientation isDegraded:degraded forRequestID:*&d outCGImage:&v7];
  return v7;
}

- (BOOL)getCachedImage:(CGImage *)image withOrientation:(unsigned int *)orientation outIsDegraded:(BOOL *)degraded forAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode forRequestID:(int)d
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __112__PXGAssetImageCache_getCachedImage_withOrientation_outIsDegraded_forAsset_targetSize_contentMode_forRequestID___block_invoke;
  v21[3] = &unk_2782A86B0;
  v21[4] = self;
  v18 = assetCopy;
  v26 = width;
  v27 = height;
  dCopy = d;
  v22 = v18;
  v23 = &v37;
  v24 = &v33;
  v25 = &v29;
  dispatch_sync(queue, v21);
  *orientation = *(v34 + 6);
  *degraded = *(v30 + 24);
  if (image)
  {
    v19 = v38[3];
    *image = v19;
    LOBYTE(image) = v19 != 0;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return image;
}

void __112__PXGAssetImageCache_getCachedImage_withOrientation_outIsDegraded_forAsset_targetSize_contentMode_forRequestID___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 40)])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v2 = *(*(a1 + 32) + 32);
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [v7 asset];
        v9 = [v8 isContentEqualTo:*(a1 + 40)];

        if (v9 == 2)
        {
          [v7 targetSize];
          PXSizeGetArea();
          v11 = v10;
          PXSizeGetArea();
          if (v11 / v12 <= 10.0)
          {
            break;
          }
        }

        if (v4 == ++v6)
        {
          v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      v13 = v7;

      if (v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
LABEL_12:
    }
  }

  v14 = [*(*(a1 + 32) + 40) px_popLast];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(_PXGAssetImageCacheEntry);
  }

  v13 = v16;

  [(_PXGAssetImageCacheEntry *)v13 setAsset:*(a1 + 40)];
  [*(*(a1 + 32) + 32) addObject:v13];
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
LABEL_18:
  v17 = [(_PXGAssetImageCacheEntry *)v13 requestIDs];
  [v17 addIndex:*(a1 + 88)];

  [*(*(a1 + 32) + 16) addIndex:*(a1 + 88)];
  *(*(*(a1 + 48) + 8) + 24) = [(_PXGAssetImageCacheEntry *)v13 cgImage];
  *(*(*(a1 + 56) + 8) + 24) = [(_PXGAssetImageCacheEntry *)v13 imageOrientation];
  *(*(*(a1 + 64) + 8) + 24) = [(_PXGAssetImageCacheEntry *)v13 isDegraded];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ImageCount = %lu; Entries = %@>", v5, self, -[NSMutableArray count](self->_entries, "count"), self->_entries];;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ImageCount = %lu>", v5, self, -[NSMutableArray count](self->_entries, "count")];;

  return v6;
}

@end