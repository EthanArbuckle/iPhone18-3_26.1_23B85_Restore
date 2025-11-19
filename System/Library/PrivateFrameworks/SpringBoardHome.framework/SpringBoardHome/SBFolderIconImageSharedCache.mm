@interface SBFolderIconImageSharedCache
+ (OS_dispatch_queue)miniImageQueue;
- (BOOL)hasCachedItemsThatIncludeIcon:(id)a3 imageAppearance:(id)a4;
- (BOOL)hasUpToDateCachedMiniImageForImage:(id)a3 forIcon:(id)a4 appearance:(id)a5;
- (NSString)activityDescription;
- (SBFolderIconImageSharedCache)initWithListLayout:(id)a3 iconImageCache:(id)a4;
- (id)cachedMiniImageAppearancesForIcon:(id)a3;
- (id)cachingPlaceholderMiniGridImageWithImageAppearance:(id)a3;
- (id)genericMiniGridImageWithImageAppearance:(id)a3;
- (id)gridCellImageForIcon:(id)a3 imageAppearance:(id)a4 imageAttributes:(unint64_t *)a5;
- (id)gridCellImageOfSize:(CGSize)a3 forIcon:(id)a4 iconImageInfo:(SBIconImageInfo *)a5 compatibleWithTraitCollection:(id)a6 imageAttributes:(unint64_t *)a7;
- (id)gridCellViewForIcon:(id)a3 imageAppearance:(id)a4 imageAttributes:(unint64_t *)a5;
- (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5;
- (id)miniGridViewForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5 options:(unint64_t)a6;
- (id)performSynchronousMiniImageGenerationForImage:(id)a3 forIcon:(id)a4 appearance:(id)a5;
- (void)addObserver:(id)a3 forFolderIcon:(id)a4;
- (void)beginAsynchronousMiniImageGenerationForImage:(id)a3 forIcon:(id)a4 appearance:(id)a5 reason:(id)a6;
- (void)checkIfCachingActivityHasCompleted;
- (void)didEndCachingActivityForReason:(id)a3;
- (void)finishAsynchronousMiniImageGenerationWithImage:(id)a3 forIcon:(id)a4 imageIdentity:(id)a5 reason:(id)a6;
- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5;
- (void)folder:(id)a3 didAddList:(id)a4;
- (void)folder:(id)a3 didMoveIcon:(id)a4;
- (void)folder:(id)a3 didMoveList:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5;
- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)folderIcon:(id)a3 containedIconImageDidUpdate:(id)a4;
- (void)folderIconImageCache:(id)a3 didAddObserverForFolderIcon:(id)a4;
- (void)iconImageCache:(id)a3 didUpdateImageForIcon:(id)a4 imageAppearance:(id)a5;
- (void)iconImageDidUpdate:(id)a3;
- (void)informObserversOfUpdateForFolderIcon:(id)a3 imageAppearance:(id)a4;
- (void)performAsynchronousMiniImageGenerationForImage:(id)a3 forIcon:(id)a4 imageIdentity:(id)a5 miniImageSize:(CGSize)a6 reason:(id)a7;
- (void)performWhenCachingActivityCompletesUsingBlock:(id)a3;
- (void)purgeAllCachedFolderImages;
- (void)rebuildAllCachedFolderImages;
- (void)rebuildImagesForFolderIcon:(id)a3;
- (void)rebuildImagesForFolderIcon:(id)a3 appearance:(id)a4;
- (void)removeObserver:(id)a3 forFolderIcon:(id)a4;
- (void)updateCachedImagesForFolderIcon:(id)a3 afterChangeToContainedForIcon:(id)a4 imageAppearance:(id)a5 updateType:(int64_t)a6;
- (void)updateCachedMiniImage:(id)a3 forIcon:(id)a4 imageAppearance:(id)a5;
- (void)willBeginCachingActivityForReason:(id)a3;
@end

@implementation SBFolderIconImageSharedCache

- (SBFolderIconImageSharedCache)initWithListLayout:(id)a3 iconImageCache:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v37.receiver = self;
  v37.super_class = SBFolderIconImageSharedCache;
  v9 = [(SBFolderIconImageSharedCache *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listLayout, a3);
    objc_storeStrong(&v10->_iconImageCache, a4);
    v11 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    folderIconObservers = v10->_folderIconObservers;
    v10->_folderIconObservers = v11;

    v13 = objc_alloc_init(SBHIconImageAppearanceStore);
    cachedFolderImages = v10->_cachedFolderImages;
    v10->_cachedFolderImages = v13;

    v15 = objc_alloc_init(SBHIconImageAppearanceStore);
    cachedMiniGridImages = v10->_cachedMiniGridImages;
    v10->_cachedMiniGridImages = v15;

    v17 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    cachedFolderIcons = v10->_cachedFolderIcons;
    v10->_cachedFolderIcons = v17;

    v19 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    folderIconImageCaches = v10->_folderIconImageCaches;
    v10->_folderIconImageCaches = v19;

    [v8 addObserver:v10];
    v21 = [v7 numberOfColumnsForOrientation:1];
    v22 = [v7 numberOfRowsForOrientation:1];
    [SBIconGridImage sizeForLayout:v7];
    v24 = v23;
    v26 = v25;
    [v8 iconImageInfo];
    v27 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:v24 withContextType:v26];
    snprintf(__str, 0x64uLL, "gridImages_%lux%lu", v21, v22);
    v28 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:__str slotLength:v27];
    pool = v10->_pool;
    v10->_pool = v28;

    v30 = SBHIconListLayoutFolderIconGridCellSize(v7);
    v32 = v31;
    v33 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:? withContextType:?];
    snprintf(__str, 0x64uLL, "miniGridImages_%lux%lu", v30, v32);
    v34 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:__str slotLength:v33];
    miniGridImagePool = v10->_miniGridImagePool;
    v10->_miniGridImagePool = v34;
  }

  return v10;
}

- (void)folderIconImageCache:(id)a3 didAddObserverForFolderIcon:(id)a4
{
  v5 = a4;
  [v5 addObserver:self];
  v6 = [v5 folder];

  [v6 addFolderObserver:self];
}

- (void)addObserver:(id)a3 forFolderIcon:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_folderIconObservers objectForKey:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMapTable *)self->_folderIconObservers setObject:v7 forKey:v6];
    [v6 addObserver:self];
    v8 = [v6 folder];
    [v8 addFolderObserver:self];
  }

  [v7 addObject:v9];
}

- (void)removeObserver:(id)a3 forFolderIcon:(id)a4
{
  folderIconObservers = self->_folderIconObservers;
  v6 = a3;
  v7 = [(NSMapTable *)folderIconObservers objectForKey:a4];
  [v7 removeObject:v6];
}

- (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v8 folder];
  v11 = [v10 listCount];
  v12 = [(SBHIconImageAppearanceStore *)self->_cachedFolderImages imageForIcon:v8 appearance:v9];
  v13 = v12;
  if (v12 && [v12 count] != v11)
  {
    [v13 setCount:0];
    [v13 setCount:v11];
  }

  v14 = [v13 pointerAtIndex:a3];
  if (v14)
  {
    v15 = v14;
    if (!a3)
    {
      SBFPreheatImageData();
    }
  }

  else
  {
    v16 = [(SBFolderIconImageSharedCache *)self listLayout];
    v17 = [(SBFolderIconImageSharedCache *)self pool];
    v21 = v16;
    v15 = [SBFolderIconImageCache imageForPageAtIndex:a3 inFolderIcon:v8 imageAppearance:v9 listLayout:v16 gridCellImageProvider:self pool:v17];
    v18 = SBLogFolderIconImageCache();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v23 = self;
      v24 = 2112;
      v25 = v15;
      v26 = 2048;
      v27 = a3;
      v28 = 2112;
      v29 = v8;
      _os_log_debug_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEBUG, "%p caching image %@ at page %lu for icon: %@", buf, 0x2Au);
    }

    if (!v13)
    {
      v13 = [MEMORY[0x1E696AE08] pointerArrayWithOptions:0];
      [v13 setCount:v11];
      [(SBHIconImageAppearanceStore *)self->_cachedFolderImages setImage:v13 forIcon:v8 appearance:v9];
      [(NSHashTable *)self->_cachedFolderIcons addObject:v8];
    }

    [v13 replacePointerAtIndex:a3 withPointer:v15];
  }

  [v8 addObserver:self];
  v19 = [v8 folder];
  [v19 addFolderObserver:self];

  return v15;
}

- (id)miniGridViewForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5 options:(unint64_t)a6
{
  v10 = a5;
  v11 = [a4 folder];
  v12 = [(SBFolderIconImageSharedCache *)self listLayout];
  v13 = [v11 miniGridViewForListIndex:a3 listLayout:v12 imageAppearance:v10 options:a6 cellProvider:0];

  return v13;
}

- (id)gridCellImageForIcon:(id)a3 imageAppearance:(id)a4 imageAttributes:(unint64_t *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:v8 appearance:v9];
  v11 = [(SBFolderIconImageSharedCache *)self iconImageCache];
  if (v10)
  {
    v12 = 0;
    v13 = v10;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = [(SBFolderIconImageSharedCache *)self listLayout];
  [v15 iconImageInfo];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache gridCellImageForIcon:imageAppearance:imageAttributes:];
  }

  if (v11)
  {
    v25 = [v11 realImageForIcon:v8 imageAppearance:v9 options:4];
    if (v25)
    {
      v26 = v25;
LABEL_13:
      [(SBFolderIconImageSharedCache *)self beginAsynchronousMiniImageGenerationForImage:v26 forIcon:v8 appearance:v9 reason:@"gridCellForImage"];
      v29 = SBLogFolderIconImageCache();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = v8;
        _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_INFO, "beginning async mini image generation for icon %@", buf, 0xCu);
      }

      v30 = -[SBHIconImageAppearanceStore imageForIcon:appearanceType:](self->_cachedMiniGridImages, "imageForIcon:appearanceType:", v8, [v9 appearanceType]);
      if (v30)
      {
        v13 = v30;
LABEL_17:
        v12 = 0;
        goto LABEL_27;
      }

      v13 = [(SBFolderIconImageSharedCache *)self cachingPlaceholderMiniGridImageWithImageAppearance:v9];
LABEL_25:
      v12 = 1;
      goto LABEL_27;
    }

    [(SBFolderIconImageSharedCache *)self willBeginCachingActivityForReason:@"fetch image from image cache"];
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __85__SBFolderIconImageSharedCache_gridCellImageForIcon_imageAppearance_imageAttributes___block_invoke;
    v38 = &unk_1E808C2F0;
    v39 = v11;
    v40 = v8;
    v41 = v9;
    v42 = self;
    v31 = [v39 cacheImageForIcon:v40 imageAppearance:v41 priority:2 reason:@"gridCellImageForIcon" options:0 completionHandler:&v35];
  }

  else
  {
    v27 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:v9];
    v28 = [v8 imageLoadContext];
    v26 = [v8 makeIconImageWithInfo:v27 traitCollection:v28 context:1 options:{v17, v19, v21, v23}];

    if (v26)
    {
      goto LABEL_13;
    }
  }

  if ([v8 hasIconImage])
  {
    v32 = [v11 isCachingImageForIcon:v8];
    v33 = SBLogFolderIconImageCache();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
    if (!v32)
    {
      if (v34)
      {
        *buf = 138412290;
        v44 = v8;
        _os_log_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_INFO, "Could not get grid cell image for icon %@", buf, 0xCu);
      }

      v13 = [(SBFolderIconImageSharedCache *)self genericMiniGridImageWithImageAppearance:v9];
      v26 = 0;
      goto LABEL_17;
    }

    if (v34)
    {
      *buf = 138412290;
      v44 = v8;
      _os_log_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_INFO, "icon image cache is still caching image for icon %@", buf, 0xCu);
    }

    v13 = [(SBFolderIconImageSharedCache *)self cachingPlaceholderMiniGridImageWithImageAppearance:v9];
    v26 = 0;
    goto LABEL_25;
  }

  v26 = 0;
  v12 = 0;
  v13 = 0;
LABEL_27:

  if (a5)
  {
LABEL_3:
    *a5 = v12;
  }

LABEL_4:

  return v13;
}

void __85__SBFolderIconImageSharedCache_gridCellImageForIcon_imageAppearance_imageAttributes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageForIcon:*(a1 + 40) imageAppearance:*(a1 + 48) options:4];
  if (v2)
  {
    [*(a1 + 56) beginAsynchronousMiniImageGenerationForImage:v2 forIcon:*(a1 + 40) appearance:*(a1 + 48) reason:@"fault from gridCellImageForIcon"];
  }

  [*(a1 + 56) didEndCachingActivityForReason:@"fetch image from image cache"];
}

+ (OS_dispatch_queue)miniImageQueue
{
  if (miniImageQueue_onceToken != -1)
  {
    +[SBFolderIconImageSharedCache miniImageQueue];
  }

  v3 = miniImageQueue_miniImageQueue;

  return v3;
}

void __46__SBFolderIconImageSharedCache_miniImageQueue__block_invoke()
{
  v3 = [MEMORY[0x1E698E698] serial];
  v0 = [v3 serviceClass:21];
  v1 = BSDispatchQueueCreate();
  v2 = miniImageQueue_miniImageQueue;
  miniImageQueue_miniImageQueue = v1;
}

- (BOOL)hasUpToDateCachedMiniImageForImage:(id)a3 forIcon:(id)a4 appearance:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 sbh_iconImageIdentity];
  v11 = [v10 imageGeneration];
  v12 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:v9 appearance:v8];

  v15 = 0;
  if (v12)
  {
    v13 = [v12 sbh_iconImageIdentity];
    v14 = [v13 imageGeneration];

    if (v14 >= v11)
    {
      v15 = 1;
    }
  }

  return v15;
}

- (void)beginAsynchronousMiniImageGenerationForImage:(id)a3 forIcon:(id)a4 appearance:(id)a5 reason:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(SBFolderIconImageSharedCache *)self iconImageCache];
  v15 = [(SBFolderIconImageSharedCache *)self listLayout];
  v16 = SBHIconListLayoutFolderIconGridCellIconImageInfo(v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = -[SBHIconImageIdentity initWithIcon:iconImageInfo:imageGeneration:imageAppearance:]([SBHIconImageIdentity alloc], "initWithIcon:iconImageInfo:imageGeneration:imageAppearance:", v11, [v14 imageGenerationForCachedImage:v10], v13, v16, v17, v19, v21);
  v24 = [(SBFolderIconImageSharedCache *)self hasUpToDateCachedMiniImageForImage:v10 forIcon:v11 appearance:v13];

  if (v24)
  {
    v25 = SBLogFolderIconImageCache();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [SBFolderIconImageSharedCache beginAsynchronousMiniImageGenerationForImage:forIcon:appearance:reason:];
    }

LABEL_7:

    goto LABEL_13;
  }

  if ([(NSMutableSet *)self->_cachingMiniGridImageIdentities containsObject:v23])
  {
    v25 = SBLogFolderIconImageCache();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [SBFolderIconImageSharedCache beginAsynchronousMiniImageGenerationForImage:forIcon:appearance:reason:];
    }

    goto LABEL_7;
  }

  [(SBFolderIconImageSharedCache *)self willBeginCachingActivityForReason:@"mini image generation"];
  cachingMiniGridImageIdentities = self->_cachingMiniGridImageIdentities;
  if (!cachingMiniGridImageIdentities)
  {
    v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v28 = self->_cachingMiniGridImageIdentities;
    self->_cachingMiniGridImageIdentities = v27;

    cachingMiniGridImageIdentities = self->_cachingMiniGridImageIdentities;
  }

  [(NSMutableSet *)cachingMiniGridImageIdentities addObject:v23];
  v29 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache beginAsynchronousMiniImageGenerationForImage:forIcon:appearance:reason:];
  }

  v30 = [objc_opt_class() miniImageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__SBFolderIconImageSharedCache_beginAsynchronousMiniImageGenerationForImage_forIcon_appearance_reason___block_invoke;
  block[3] = &unk_1E808C318;
  block[4] = self;
  v32 = v10;
  v33 = v11;
  v34 = v23;
  v36 = v16;
  v37 = v18;
  v38 = v20;
  v39 = v22;
  v35 = v12;
  dispatch_async(v30, block);

LABEL_13:
}

- (void)performAsynchronousMiniImageGenerationForImage:(id)a3 forIcon:(id)a4 imageIdentity:(id)a5 miniImageSize:(CGSize)a6 reason:(id)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a3;
  v16 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache performAsynchronousMiniImageGenerationForImage:forIcon:imageIdentity:miniImageSize:reason:];
  }

  v17 = [SBFolderIconImageCache gridCellImageOfSize:v15 forIconImage:width, height];

  [v17 sbh_setIconImageIdentity:v13];
  v18 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache performAsynchronousMiniImageGenerationForImage:forIcon:imageIdentity:miniImageSize:reason:];
  }

  v23 = v12;
  v24 = v13;
  v25 = v14;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  v22 = v17;
  BSDispatchMain();
}

- (void)finishAsynchronousMiniImageGenerationWithImage:(id)a3 forIcon:(id)a4 imageIdentity:(id)a5 reason:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache finishAsynchronousMiniImageGenerationWithImage:forIcon:imageIdentity:reason:];
  }

  v13 = [v11 imageAppearance];
  v14 = [v11 imageGeneration];
  if (v9)
  {
    v15 = v14;
    v16 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:v10 appearance:v13];
    v17 = [v16 sbh_iconImageIdentity];
    v18 = [v17 imageGeneration];

    if (v18 < v15)
    {
      [(SBFolderIconImageSharedCache *)self updateCachedMiniImage:v9 forIcon:v10 imageAppearance:v13];
    }
  }

  [(NSMutableSet *)self->_cachingMiniGridImageIdentities removeObject:v11];
  [(SBFolderIconImageSharedCache *)self didEndCachingActivityForReason:@"mini image generation"];
}

- (void)updateCachedMiniImage:(id)a3 forIcon:(id)a4 imageAppearance:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages setImage:a3 forIcon:v8 appearance:v9];
  [v8 addObserver:self];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(NSHashTable *)self->_cachedFolderIcons copy];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [v15 folder];
        if ([v16 containsIcon:v8])
        {
          [(SBFolderIconImageSharedCache *)self updateCachedImagesForFolderIcon:v15 afterChangeToContainedForIcon:v8 imageAppearance:v9 updateType:1];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)performSynchronousMiniImageGenerationForImage:(id)a3 forIcon:(id)a4 appearance:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBFolderIconImageSharedCache *)self iconImageCache];
  v12 = [(SBFolderIconImageSharedCache *)self listLayout];
  v13 = SBHIconListLayoutFolderIconGridCellIconImageInfo(v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v11 imageGenerationForCachedImage:v8];
  if ([(SBFolderIconImageSharedCache *)self hasUpToDateCachedMiniImageForImage:v8 forIcon:v9 appearance:v10])
  {
    v21 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:v9 appearance:v10];
  }

  else
  {
    v22 = [[SBHIconImageIdentity alloc] initWithIcon:v9 iconImageInfo:v20 imageGeneration:v10 imageAppearance:v13, v15, v17, v19];
    v21 = [SBFolderIconImageCache gridCellImageOfSize:v8 forIconImage:v13, v15];
    [v21 sbh_setIconImageIdentity:v22];
    [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages setImage:v21 forIcon:v9 appearance:v10];
  }

  [v9 addObserver:self];

  return v21;
}

- (id)cachedMiniImageAppearancesForIcon:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  cachedMiniGridImages = self->_cachedMiniGridImages;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__SBFolderIconImageSharedCache_cachedMiniImageAppearancesForIcon___block_invoke;
  v10[3] = &unk_1E808C368;
  v8 = v6;
  v11 = v8;
  [(SBHIconImageAppearanceStore *)cachedMiniGridImages enumerateImagesForIcon:v5 usingBlock:v10];

  return v8;
}

- (id)gridCellViewForIcon:(id)a3 imageAppearance:(id)a4 imageAttributes:(unint64_t *)a5
{
  v7 = MEMORY[0x1E69DD1B8];
  v8 = a3;
  v9 = [v7 sbh_traitCollectionWithIconImageAppearance:a4];
  v10 = [(SBFolderIconImageSharedCache *)self listLayout];
  [v10 iconImageInfo];
  v11 = [v8 iconLayerViewWithInfo:v9 traitCollection:1 options:1 priority:?];

  return v11;
}

- (void)rebuildImagesForFolderIcon:(id)a3
{
  v4 = a3;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageCache rebuildImagesForFolderIcon:];
  }

  [(SBHIconImageAppearanceStore *)self->_cachedFolderImages removeAllImagesForIcon:v4];
  [(NSHashTable *)self->_cachedFolderIcons removeAllObjects];
  [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:v4 imageAppearance:0];
}

- (void)rebuildAllCachedFolderImages
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageCache rebuildAllCachedFolderImages];
  }

  v4 = [(NSHashTable *)self->_cachedFolderIcons copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SBFolderIconImageSharedCache *)self rebuildImagesForFolderIcon:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)purgeAllCachedFolderImages
{
  v3 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageCache purgeAllCachedFolderImages];
  }

  [(SBHIconImageAppearanceStore *)self->_cachedFolderImages removeAllImages];
  [(NSHashTable *)self->_cachedFolderIcons removeAllObjects];
}

- (void)rebuildImagesForFolderIcon:(id)a3 appearance:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache rebuildImagesForFolderIcon:appearance:];
  }

  [(SBHIconImageAppearanceStore *)self->_cachedFolderImages removeAllImagesForIcon:v6 appearance:v7];
  [(NSHashTable *)self->_cachedFolderIcons removeObject:v6];
  [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:v6 imageAppearance:v7];
}

- (void)informObserversOfUpdateForFolderIcon:(id)a3 imageAppearance:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_folderIconObservers objectForKey:v6];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v22 + 1) + 8 * v12++) folderIconImageSharedCache:self didUpdateImagesForFolderIcon:v6 imageAppearance:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_folderIconImageCaches;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * v17++) folderIconImageSharedCache:self didUpdateImagesForFolderIcon:v6 imageAppearance:{v7, v18}];
      }

      while (v15 != v17);
      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (id)genericMiniGridImageWithImageAppearance:(id)a3
{
  v4 = a3;
  genericMiniGridImages = self->_genericMiniGridImages;
  v6 = +[SBHIconImageAppearanceStore defaultIcon];
  v7 = [(SBHIconImageAppearanceStore *)genericMiniGridImages imageForIcon:v6 appearance:v4];

  if (!v7)
  {
    v8 = [(SBFolderIconImageSharedCache *)self iconImageCache];
    v9 = [(SBFolderIconImageSharedCache *)self listLayout];
    v10 = [v8 genericImageWithImageAppearance:v4 options:20];
    v11 = SBHIconListLayoutFolderIconGridCellSize(v9);
    v13 = v12;
    v14 = v10;
    v15 = v14;
    if (!v14)
    {
      [v8 iconImageInfo];
      v15 = [SBHIconImageCache fallbackGenericImageWithInfo:v4 imageAppearance:0 options:?];
    }

    v7 = [SBFolderIconImageCache gridCellImageOfSize:v15 forIconImage:v11, v13];
    if (v14)
    {
      v16 = self->_genericMiniGridImages;
      if (!v16)
      {
        v17 = objc_alloc_init(SBHIconImageAppearanceStore);
        v18 = self->_genericMiniGridImages;
        self->_genericMiniGridImages = v17;

        v16 = self->_genericMiniGridImages;
      }

      v19 = +[SBHIconImageAppearanceStore defaultIcon];
      [(SBHIconImageAppearanceStore *)v16 setImage:v7 forIcon:v19 appearance:v4];
    }
  }

  return v7;
}

- (id)cachingPlaceholderMiniGridImageWithImageAppearance:(id)a3
{
  v4 = a3;
  if (+[SBHIconImageCache hasUniqueCachingPlaceholderImage])
  {
    cachingPlaceholderMiniGridImages = self->_cachingPlaceholderMiniGridImages;
    v6 = +[SBHIconImageAppearanceStore defaultIcon];
    v7 = [(SBHIconImageAppearanceStore *)cachingPlaceholderMiniGridImages imageForIcon:v6 appearance:v4];

    if (!v7)
    {
      v8 = [(SBFolderIconImageSharedCache *)self iconImageCache];
      v9 = [(SBFolderIconImageSharedCache *)self listLayout];
      v10 = [v8 cachingPlaceholderImageWithImageAppearance:v4 options:0];
      v7 = [SBFolderIconImageCache gridCellImageOfSize:v10 forIconImage:SBHIconListLayoutFolderIconGridCellSize(v9)];
      v11 = self->_cachingPlaceholderMiniGridImages;
      if (!v11)
      {
        v12 = objc_alloc_init(SBHIconImageAppearanceStore);
        v13 = self->_cachingPlaceholderMiniGridImages;
        self->_cachingPlaceholderMiniGridImages = v12;

        v11 = self->_cachingPlaceholderMiniGridImages;
      }

      v14 = +[SBHIconImageAppearanceStore defaultIcon];
      [(SBHIconImageAppearanceStore *)v11 setImage:v7 forIcon:v14 appearance:v4];
    }
  }

  else
  {
    v7 = [(SBFolderIconImageSharedCache *)self genericMiniGridImageWithImageAppearance:v4];
  }

  return v7;
}

- (void)updateCachedImagesForFolderIcon:(id)a3 afterChangeToContainedForIcon:(id)a4 imageAppearance:(id)a5 updateType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    cachedFolderImages = self->_cachedFolderImages;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __121__SBFolderIconImageSharedCache_updateCachedImagesForFolderIcon_afterChangeToContainedForIcon_imageAppearance_updateType___block_invoke;
    v21 = &unk_1E808C3B8;
    v15 = v12;
    v22 = v15;
    v16 = v10;
    v23 = v16;
    v27 = &v33;
    v28 = a6;
    v25 = self;
    v26 = &v29;
    v24 = v11;
    [(SBHIconImageAppearanceStore *)cachedFolderImages enumerateImagesForIcon:v16 usingBlock:&v18];
    if (a6 == 3 || (v30[3] & 1) != 0)
    {
      if ((v34[3] & 1) == 0)
      {
LABEL_9:

        _Block_object_dispose(&v29, 8);
        _Block_object_dispose(&v33, 8);
        goto LABEL_10;
      }
    }

    else
    {
      v17 = SBLogFolderIconImageCache();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [SBFolderIconImageSharedCache updateCachedImagesForFolderIcon:afterChangeToContainedForIcon:imageAppearance:updateType:];
      }

      *(v34 + 24) = 1;
    }

    [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:v16 imageAppearance:v15, v18, v19, v20, v21, v22, v23];
    goto LABEL_9;
  }

LABEL_10:
}

void __121__SBFolderIconImageSharedCache_updateCachedImagesForFolderIcon_afterChangeToContainedForIcon_imageAppearance_updateType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v7 || [v7 isEqual:v6])
  {
    v8 = [*(a1 + 40) folder];
    v9 = [v8 listCount];
    v10 = [v5 count];
    v11 = [*(a1 + 40) listIndexForContainedIcon:*(a1 + 48)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
    if (v11 >= v10)
    {
LABEL_24:

      goto LABEL_25;
    }

    if (v10 != v9)
    {
      v21 = SBLogFolderIconImageCache();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v34 = v10;
        v35 = 2048;
        v36 = v9;
        v37 = 2112;
        v38 = v8;
        _os_log_debug_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_DEBUG, "purging image for folder after contained icon image updated because list counts differed (%lu vs. %lu): %@", buf, 0x20u);
      }

      [*(*(a1 + 56) + 16) removeAllImagesForIcon:*(a1 + 40)];
      [*(*(a1 + 56) + 40) removeObject:*(a1 + 40)];
      *(*(*(a1 + 72) + 8) + 24) = 1;
      goto LABEL_24;
    }

    v12 = v11;
    v13 = [v8 listAtIndex:v11];
    v14 = [v13 indexForIcon:*(a1 + 48)];

    v15 = [*(a1 + 40) gridCellIndexForIconIndex:v14];
    v16 = [v5 pointerAtIndex:v12];
    v17 = v16;
    if (v16)
    {
      v18 = *(a1 + 80);
      if (v18 == 2)
      {
LABEL_14:
        v22 = SBLogFolderIconImageCache();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __121__SBFolderIconImageSharedCache_updateCachedImagesForFolderIcon_afterChangeToContainedForIcon_imageAppearance_updateType___block_invoke_cold_2();
        }

        [v5 replacePointerAtIndex:v12 withPointer:0];
        *(*(*(a1 + 72) + 8) + 24) = 1;
        goto LABEL_23;
      }

      if (v18 != 3)
      {
LABEL_18:
        v23 = *(a1 + 32);
        if (!v23)
        {
          v23 = [v17 imageAppearance];
        }

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __121__SBFolderIconImageSharedCache_updateCachedImagesForFolderIcon_afterChangeToContainedForIcon_imageAppearance_updateType___block_invoke_176;
        v29[3] = &unk_1E808C390;
        v32 = v15;
        v28 = *(a1 + 48);
        v24 = v28.i64[0];
        v30 = vextq_s8(v28, v28, 8uLL);
        v25 = v23;
        v31 = v25;
        v26 = [v17 gridImageByPatchingCellAtIndex:v15 cellImageProviderBlock:v29];
        v27 = SBLogFolderIconImageCache();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __121__SBFolderIconImageSharedCache_updateCachedImagesForFolderIcon_afterChangeToContainedForIcon_imageAppearance_updateType___block_invoke_cold_1();
        }

        [v5 replacePointerAtIndex:v12 withPointer:v26];
        *(*(*(a1 + 72) + 8) + 24) = 1;

        goto LABEL_23;
      }

      v19 = [v16 isIconImageTreatedAtIndex:v15];
      v20 = v19 ^ [SBFolderIconImageCache needsTreatmentForIcon:*(a1 + 48)]^ 1;
    }

    else
    {
      v20 = 1;
    }

    if (*(a1 + 80) == 2)
    {
      goto LABEL_14;
    }

    if (v20)
    {
LABEL_23:

      goto LABEL_24;
    }

    goto LABEL_18;
  }

LABEL_25:
}

BOOL __121__SBFolderIconImageSharedCache_updateCachedImagesForFolderIcon_afterChangeToContainedForIcon_imageAppearance_updateType___block_invoke_176(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8)
{
  if (*(a1 + 56) != a2)
  {
    return 0;
  }

  v14 = [*(a1 + 32) gridCellImageForIcon:*(a1 + 40) imageAppearance:*(a1 + 48)];
  v15 = v14;
  v16 = v14 != 0;
  if (v14)
  {
    [v14 drawInRect:{a3, a4, a5, a6}];
    v17 = [SBFolderIconImageCache drawTreatmentForIcon:*(a1 + 40) inRect:a3, a4, a5, a6];
    if (a8)
    {
      *a8 = v17;
    }
  }

  return v16;
}

- (BOOL)hasCachedItemsThatIncludeIcon:(id)a3 imageAppearance:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSHashTable *)self->_cachedFolderIcons copy];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) folder];
        v11 = [v10 containsIcon:v5];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)willBeginCachingActivityForReason:(id)a3
{
  v4 = a3;
  backgroundActivityReasons = self->_backgroundActivityReasons;
  v8 = v4;
  if (!backgroundActivityReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v7 = self->_backgroundActivityReasons;
    self->_backgroundActivityReasons = v6;

    v4 = v8;
    backgroundActivityReasons = self->_backgroundActivityReasons;
  }

  [(NSCountedSet *)backgroundActivityReasons addObject:v4];
}

- (void)didEndCachingActivityForReason:(id)a3
{
  [(NSCountedSet *)self->_backgroundActivityReasons removeObject:a3];

  [(SBFolderIconImageSharedCache *)self checkIfCachingActivityHasCompleted];
}

- (void)performWhenCachingActivityCompletesUsingBlock:(id)a3
{
  v9 = a3;
  if ([(NSCountedSet *)self->_backgroundActivityReasons count])
  {
    performAfterCachingActivityBlocks = self->_performAfterCachingActivityBlocks;
    if (!performAfterCachingActivityBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v6 = self->_performAfterCachingActivityBlocks;
      self->_performAfterCachingActivityBlocks = v5;

      performAfterCachingActivityBlocks = self->_performAfterCachingActivityBlocks;
    }

    v7 = [v9 copy];
    v8 = _Block_copy(v7);
    [(NSMutableArray *)performAfterCachingActivityBlocks addObject:v8];
  }

  else
  {
    v9[2]();
  }
}

- (void)checkIfCachingActivityHasCompleted
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(NSCountedSet *)self->_backgroundActivityReasons count])
  {
    v3 = self->_performAfterCachingActivityBlocks;
    performAfterCachingActivityBlocks = self->_performAfterCachingActivityBlocks;
    self->_performAfterCachingActivityBlocks = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (NSString)activityDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSMutableSet *)self->_cachingMiniGridImageIdentities count];
  v5 = [(NSCountedSet *)self->_backgroundActivityReasons allObjects];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"Mini images generating: %lu, background tasks: %@", v4, v6];

  return v7;
}

- (id)gridCellImageOfSize:(CGSize)a3 forIcon:(id)a4 iconImageInfo:(SBIconImageInfo *)a5 compatibleWithTraitCollection:(id)a6 imageAttributes:(unint64_t *)a7
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  height = a3.height;
  width = a3.width;
  v20 = MEMORY[0x1E69DD1B8];
  v21 = a4;
  v22 = [v20 sbh_iconImageAppearanceFromTraitCollection:a5];
  v23 = [(SBFolderIconImageSharedCache *)self gridCellImageOfSize:v21 forIcon:v22 iconImageInfo:a6 imageAppearance:width imageAttributes:height, v16, v15, v14, v13];

  return v23;
}

- (void)folderIcon:(id)a3 containedIconImageDidUpdate:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(SBFolderIconImageSharedCache *)self iconImageCache];

  if (!v7)
  {
    [(SBFolderIconImageSharedCache *)self updateCachedImagesForFolderIcon:v8 afterChangeToContainedForIcon:v6 imageAppearance:0 updateType:0];
  }
}

- (void)iconImageCache:(id)a3 didUpdateImageForIcon:(id)a4 imageAppearance:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache iconImageCache:v9 didUpdateImageForIcon:v11 imageAppearance:?];
  }

  if ([v8 currentRequestChangedImageVisually] && -[SBFolderIconImageSharedCache hasCachedItemsThatIncludeIcon:imageAppearance:](self, "hasCachedItemsThatIncludeIcon:imageAppearance:", v9, v10))
  {
    v12 = [v8 imageForIcon:v9 imageAppearance:v10 options:0];
    [(SBFolderIconImageSharedCache *)self beginAsynchronousMiniImageGenerationForImage:v12 forIcon:v9 appearance:v10 reason:@"image cache update"];
  }
}

- (void)iconImageDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderIconImageSharedCache *)self iconImageCache];
  v6 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache iconImageDidUpdate:];
  }

  v7 = [(SBFolderIconImageSharedCache *)self cachedMiniImageAppearancesForIcon:v4];
  if ([v7 count])
  {
    [(SBFolderIconImageSharedCache *)self willBeginCachingActivityForReason:@"folder image cache icon observer"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SBFolderIconImageSharedCache_iconImageDidUpdate___block_invoke;
    v8[3] = &unk_1E8089E68;
    v9 = v5;
    v10 = v4;
    v11 = v7;
    v12 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __51__SBFolderIconImageSharedCache_iconImageDidUpdate___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v12[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__SBFolderIconImageSharedCache_iconImageDidUpdate___block_invoke_2;
  v9[3] = &unk_1E808C2F0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v6;
  v8 = [v2 cacheImagesForIcons:v3 imageAppearances:v4 priority:1 reason:@"folder image cache icon observer" options:0 completionHandler:v9];
}

uint64_t __51__SBFolderIconImageSharedCache_iconImageDidUpdate___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 40) imageForIcon:*(a1 + 48) imageAppearance:v7 options:{4, v10}];
        if (v8)
        {
          [*(a1 + 56) beginAsynchronousMiniImageGenerationForImage:v8 forIcon:*(a1 + 48) appearance:v7 reason:@"folder image cache icon observer"];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(a1 + 56) didEndCachingActivityForReason:@"folder image cache icon observer"];
}

- (void)folder:(id)a3 didAddList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didAddList:];
  }

  v9 = [v6 icon];
  cachedFolderImages = self->_cachedFolderImages;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__SBFolderIconImageSharedCache_folder_didAddList___block_invoke;
  v14[3] = &unk_1E808C3E0;
  v15 = v6;
  v16 = v7;
  v17 = self;
  v18 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v6;
  [(SBHIconImageAppearanceStore *)cachedFolderImages enumerateImagesForIcon:v11 usingBlock:v14];
}

void __50__SBFolderIconImageSharedCache_folder_didAddList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) indexOfList:*(a1 + 40)];
  if (v8 && v6 != 0x7FFFFFFFFFFFFFFFLL && (v7 = [v8 count] + 1, v7 == objc_msgSend(*(a1 + 32), "listCount")))
  {
    [v8 insertPointer:0 atIndex:v6];
    [*(a1 + 48) informObserversOfUpdateForFolderIcon:*(a1 + 56) imageAppearance:0];
  }

  else
  {
    [*(a1 + 48) rebuildImagesForFolderIcon:*(a1 + 56) appearance:v5];
  }
}

- (void)folder:(id)a3 didRemoveLists:(id)a4 atIndexes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didRemoveLists:atIndexes:];
  }

  v12 = [v8 icon];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  cachedFolderImages = self->_cachedFolderImages;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__SBFolderIconImageSharedCache_folder_didRemoveLists_atIndexes___block_invoke;
  v17[3] = &unk_1E808C430;
  v22 = &v23;
  v14 = v8;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  v20 = self;
  v16 = v12;
  v21 = v16;
  [(SBHIconImageAppearanceStore *)cachedFolderImages enumerateImagesForIcon:v16 usingBlock:v17];
  if ((v24[3] & 1) == 0)
  {
    [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:v16 imageAppearance:0];
  }

  _Block_object_dispose(&v23, 8);
}

void __64__SBFolderIconImageSharedCache_folder_didRemoveLists_atIndexes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v7 = [*(a1 + 32) listCount];
  v8 = [*(a1 + 40) count] + v7;
  if (v8 == [v5 count])
  {
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__SBFolderIconImageSharedCache_folder_didRemoveLists_atIndexes___block_invoke_2;
    v10[3] = &unk_1E808C408;
    v11 = v5;
    [v9 enumerateIndexesWithOptions:2 usingBlock:v10];
    [*(a1 + 48) informObserversOfUpdateForFolderIcon:*(a1 + 56) imageAppearance:0];
  }

  else
  {
    [*(a1 + 48) rebuildImagesForFolderIcon:*(a1 + 56) appearance:v6];
  }
}

- (void)folder:(id)a3 didMoveList:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didMoveList:fromIndex:toIndex:];
  }

  v13 = [v10 icon];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  cachedFolderImages = self->_cachedFolderImages;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __69__SBFolderIconImageSharedCache_folder_didMoveList_fromIndex_toIndex___block_invoke;
  v20 = &unk_1E808C458;
  v24 = &v27;
  v15 = v10;
  v25 = a5;
  v26 = a6;
  v21 = v15;
  v22 = self;
  v16 = v13;
  v23 = v16;
  [(SBHIconImageAppearanceStore *)cachedFolderImages enumerateImagesForIcon:v16 usingBlock:&v17];
  if ((v28[3] & 1) == 0)
  {
    [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:v16 imageAppearance:0, v17, v18, v19, v20, v21, v22];
  }

  _Block_object_dispose(&v27, 8);
}

void __69__SBFolderIconImageSharedCache_folder_didMoveList_fromIndex_toIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v6 = [*(a1 + 32) listCount];
  if (v6 == [v8 count])
  {
    v7 = [v8 pointerAtIndex:*(a1 + 64)];
    [v8 removePointerAtIndex:*(a1 + 64)];
    [v8 insertPointer:v7 atIndex:*(a1 + 72)];
    [*(a1 + 40) informObserversOfUpdateForFolderIcon:*(a1 + 48) imageAppearance:0];
  }

  else
  {
    [*(a1 + 40) rebuildImagesForFolderIcon:*(a1 + 48) appearance:v5];
  }
}

- (void)folder:(id)a3 didAddIcons:(id)a4 removedIcons:(id)a5
{
  v6 = a3;
  v7 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didAddIcons:removedIcons:];
  }

  v8 = [v6 icon];
  [(SBFolderIconImageSharedCache *)self rebuildImagesForFolderIcon:v8];
}

- (void)folder:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v9 uniqueIdentifier];
    v14 = [v10 uniqueIdentifier];
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_debug_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEBUG, "observed folder '%@' replaced '%@' with '%@'", &v15, 0x20u);
  }

  v12 = [v8 icon];
  [(SBFolderIconImageSharedCache *)self updateCachedImagesForFolderIcon:v12 afterChangeToContainedForIcon:v10 imageAppearance:0 updateType:2];
}

- (void)folder:(id)a3 didMoveIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SBFolderIconImageSharedCache *)v6 folder:v7 didMoveIcon:v8];
  }

  v9 = [v6 icon];
  [(SBFolderIconImageSharedCache *)self rebuildImagesForFolderIcon:v9];
}

- (void)gridCellImageForIcon:imageAppearance:imageAttributes:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_1(&dword_1BEB18000, v0, v1, "making new grid cell image for icon %@ (using cache: %@)");
}

- (void)beginAsynchronousMiniImageGenerationForImage:forIcon:appearance:reason:.cold.2()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_1(&dword_1BEB18000, v0, v1, "skipping asynchronous mini image generation for image identity because it is already caching: %@, reason: %{public}@");
}

- (void)beginAsynchronousMiniImageGenerationForImage:forIcon:appearance:reason:.cold.3()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_1(&dword_1BEB18000, v0, v1, "skipping asynchronous mini image generation for image identity because it is already cached: %@, reason: %{public}@");
}

- (void)rebuildImagesForFolderIcon:appearance:.cold.1()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_1(&dword_1BEB18000, v0, v1, "rebuilding image for icon: %@, appearance: %@");
}

- (void)updateCachedImagesForFolderIcon:afterChangeToContainedForIcon:imageAppearance:updateType:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)iconImageCache:(void *)a1 didUpdateImageForIcon:(NSObject *)a2 imageAppearance:.cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_13();
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "observed updated icon from icon cache: %@", v4, 0xCu);
}

- (void)folder:(NSObject *)a3 didMoveIcon:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 uniqueIdentifier];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_DEBUG, "observed folder '%@' moved '%@'", &v6, 0x16u);
}

@end