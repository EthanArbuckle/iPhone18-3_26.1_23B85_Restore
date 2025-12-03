@interface PXImportImageCache
+ (PXImportImageCache)sharedInstance;
- (PXImportImageCache)init;
- (id)cacheTableForIdentifier:(id)identifier;
- (id)imageForIdentifier:(id)identifier;
- (id)imageForModel:(id)model ofSize:(unint64_t)size allowLowerResolutions:(BOOL)resolutions foundSize:(unint64_t *)foundSize;
- (void)accessImageTableForIdentifier:(id)identifier withChangeBlock:(id)block;
- (void)imageForIdentifier:(id)identifier completion:(id)completion;
- (void)imageForModel:(id)model ofSize:(unint64_t)size allowLowerResolutions:(BOOL)resolutions completion:(id)completion;
- (void)removeCacheForIdentifiers:(id)identifiers;
- (void)setImage:(id)image forIdentifier:(id)identifier completion:(id)completion;
- (void)tearDown;
@end

@implementation PXImportImageCache

- (void)accessImageTableForIdentifier:(id)identifier withChangeBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  cacheTableQueue = self->_cacheTableQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PXImportImageCache_accessImageTableForIdentifier_withChangeBlock___block_invoke;
  block[3] = &unk_1E774A0E0;
  v12 = identifierCopy;
  v13 = blockCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = blockCopy;
  dispatch_async(cacheTableQueue, block);
}

void __68__PXImportImageCache_accessImageTableForIdentifier_withChangeBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) cacheTableForIdentifier:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

- (id)cacheTableForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  caches = self->_caches;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifierCopy, "sizeType")}];
  v7 = [(NSMutableDictionary *)caches objectForKey:v6];

  if (!v7)
  {
    if (!self->_imageFormat)
    {
      _PFAssertContinueHandler();
    }

    v8 = NSTemporaryDirectory();
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifierCopy, "sizeType")}];
    v11 = [v9 stringWithFormat:@"%@/import-%@.ithmb", v8, v10];

    if ([identifierCopy sizeType])
    {
      v12 = objc_opt_new();
    }

    else
    {
      v12 = [(PLTemporaryImageTable *)[PUTemporaryImageTable alloc] initWithWithPath:v11 imageFormat:self->_imageFormat];
    }

    v7 = v12;
    v13 = self->_caches;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifierCopy, "sizeType")}];
    [(NSMutableDictionary *)v13 setObject:v7 forKey:v14];

    if (!v7)
    {
      _PFAssertContinueHandler();
    }
  }

  return v7;
}

- (void)removeCacheForIdentifiers:(id)identifiers
{
  v16 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(PXImportImageCache *)self cacheTableForIdentifier:v9];
        [v10 removeItemAtIndex:{objc_msgSend(v9, "cacheIndex")}];
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)imageForModel:(id)model ofSize:(unint64_t)size allowLowerResolutions:(BOOL)resolutions completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    imageRepresentations = [model imageRepresentations];
    v12 = imageRepresentations;
    if (resolutions)
    {
      allKeys = [imageRepresentations allKeys];
      v14 = [allKeys sortedArrayUsingComparator:&__block_literal_global_56_242654];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
LABEL_5:
        v19 = 0;
        while (1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          if ([v20 integerValue] <= size)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v17)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v22 = v20;

        if (v22)
        {
          v21 = [v12 objectForKeyedSubscript:v22];
          goto LABEL_15;
        }

        v21 = 0;
      }

      else
      {
LABEL_11:
        v21 = 0;
        v22 = v15;
LABEL_15:
      }
    }

    else
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
      v21 = [v12 objectForKeyedSubscript:v15];
    }

    if (v21)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __76__PXImportImageCache_imageForModel_ofSize_allowLowerResolutions_completion___block_invoke_2;
      v23[3] = &unk_1E774A0B8;
      v24 = completionCopy;
      [(PXImportImageCache *)self imageForIdentifier:v21 completion:v23];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 4);
    }
  }
}

- (void)imageForIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PXImportImageCache_imageForIdentifier_completion___block_invoke;
  v10[3] = &unk_1E774A070;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = identifierCopy;
  v9 = completionCopy;
  [(PXImportImageCache *)self accessImageTableForIdentifier:v8 withChangeBlock:v10];
}

void __52__PXImportImageCache_imageForIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v4 imageForItemAtIndex:{objc_msgSend(v3, "cacheIndex")}];

    (*(*(a1 + 40) + 16))(*(a1 + 40), v5, [*(a1 + 32) sizeType]);
  }
}

- (id)imageForModel:(id)model ofSize:(unint64_t)size allowLowerResolutions:(BOOL)resolutions foundSize:(unint64_t *)foundSize
{
  v34 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  imageRepresentations = [modelCopy imageRepresentations];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v13 = [imageRepresentations objectForKeyedSubscript:v12];

  if (resolutions)
  {
    imageRepresentations2 = [modelCopy imageRepresentations];
    allValues = [imageRepresentations2 allValues];
    v16 = [allValues sortedArrayUsingSelector:sel_compare_];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v27 = v13;
      foundSizeCopy = foundSize;
      v20 = *v30;
      sizeType = 4;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          if ([v23 sizeType] <= size)
          {
            v24 = [(PXImportImageCache *)self imageForIdentifier:v23];
            if (v24)
            {
              v25 = v24;
              sizeType = [v23 sizeType];
              goto LABEL_15;
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v25 = 0;
LABEL_15:
      v13 = v27;
      foundSize = foundSizeCopy;
    }

    else
    {
      v25 = 0;
      sizeType = 4;
    }

    if (foundSize)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = [(PXImportImageCache *)self imageForIdentifier:v13];
    sizeType = [v13 sizeType];
    if (foundSize)
    {
LABEL_18:
      *foundSize = sizeType;
    }
  }

  return v25;
}

- (id)imageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(PXImportImageCache *)self cacheTableForIdentifier:identifierCopy];
  cacheIndex = [identifierCopy cacheIndex];

  v7 = [v5 imageForItemAtIndex:cacheIndex];

  return v7;
}

- (void)setImage:(id)image forIdentifier:(id)identifier completion:(id)completion
{
  imageCopy = image;
  identifierCopy = identifier;
  completionCopy = completion;
  if (imageCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PXImportImageCache_setImage_forIdentifier_completion___block_invoke;
    v11[3] = &unk_1E774A048;
    v12 = imageCopy;
    v13 = identifierCopy;
    v14 = completionCopy;
    [(PXImportImageCache *)self accessImageTableForIdentifier:v13 withChangeBlock:v11];
  }
}

uint64_t __56__PXImportImageCache_setImage_forIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nextCacheIndex];
  [v3 setImage:*(a1 + 32) forItemAtIndex:v4];

  [*(a1 + 40) setCacheIndex:v4];
  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)tearDown
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_caches;
  v3 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (PXImportImageCache)init
{
  selfCopy = self;
  if (sharedInstance)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"use singleton access %@", objc_opt_class()}];
    v3 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXImportImageCache;
    v4 = [(PXImportImageCache *)&v12 init];
    if (v4)
    {
      v5 = objc_opt_new();
      caches = v4->_caches;
      v4->_caches = v5;

      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

      v9 = dispatch_queue_create("com.apple.photos.import.ImageCache", v8);
      cacheTableQueue = v4->_cacheTableQueue;
      v4->_cacheTableQueue = v9;
    }

    selfCopy = v4;
    v3 = selfCopy;
  }

  return v3;
}

+ (PXImportImageCache)sharedInstance
{
  if (sharedInstance_onceToken_242671 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_242671, &__block_literal_global_242672);
  }

  v3 = sharedInstance;

  return v3;
}

void __36__PXImportImageCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXImportImageCache);
  v1 = sharedInstance;
  sharedInstance = v0;
}

@end