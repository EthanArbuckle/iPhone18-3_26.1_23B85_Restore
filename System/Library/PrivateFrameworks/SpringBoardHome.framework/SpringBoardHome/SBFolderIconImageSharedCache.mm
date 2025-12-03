@interface SBFolderIconImageSharedCache
+ (OS_dispatch_queue)miniImageQueue;
- (BOOL)hasCachedItemsThatIncludeIcon:(id)icon imageAppearance:(id)appearance;
- (BOOL)hasUpToDateCachedMiniImageForImage:(id)image forIcon:(id)icon appearance:(id)appearance;
- (NSString)activityDescription;
- (SBFolderIconImageSharedCache)initWithListLayout:(id)layout iconImageCache:(id)cache;
- (id)cachedMiniImageAppearancesForIcon:(id)icon;
- (id)cachingPlaceholderMiniGridImageWithImageAppearance:(id)appearance;
- (id)genericMiniGridImageWithImageAppearance:(id)appearance;
- (id)gridCellImageForIcon:(id)icon imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes;
- (id)gridCellImageOfSize:(CGSize)size forIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info compatibleWithTraitCollection:(id)collection imageAttributes:(unint64_t *)attributes;
- (id)gridCellViewForIcon:(id)icon imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes;
- (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance;
- (id)miniGridViewForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance options:(unint64_t)options;
- (id)performSynchronousMiniImageGenerationForImage:(id)image forIcon:(id)icon appearance:(id)appearance;
- (void)addObserver:(id)observer forFolderIcon:(id)icon;
- (void)beginAsynchronousMiniImageGenerationForImage:(id)image forIcon:(id)icon appearance:(id)appearance reason:(id)reason;
- (void)checkIfCachingActivityHasCompleted;
- (void)didEndCachingActivityForReason:(id)reason;
- (void)finishAsynchronousMiniImageGenerationWithImage:(id)image forIcon:(id)icon imageIdentity:(id)identity reason:(id)reason;
- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons;
- (void)folder:(id)folder didAddList:(id)list;
- (void)folder:(id)folder didMoveIcon:(id)icon;
- (void)folder:(id)folder didMoveList:(id)list fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes;
- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)folderIcon:(id)icon containedIconImageDidUpdate:(id)update;
- (void)folderIconImageCache:(id)cache didAddObserverForFolderIcon:(id)icon;
- (void)iconImageCache:(id)cache didUpdateImageForIcon:(id)icon imageAppearance:(id)appearance;
- (void)iconImageDidUpdate:(id)update;
- (void)informObserversOfUpdateForFolderIcon:(id)icon imageAppearance:(id)appearance;
- (void)performAsynchronousMiniImageGenerationForImage:(id)image forIcon:(id)icon imageIdentity:(id)identity miniImageSize:(CGSize)size reason:(id)reason;
- (void)performWhenCachingActivityCompletesUsingBlock:(id)block;
- (void)purgeAllCachedFolderImages;
- (void)rebuildAllCachedFolderImages;
- (void)rebuildImagesForFolderIcon:(id)icon;
- (void)rebuildImagesForFolderIcon:(id)icon appearance:(id)appearance;
- (void)removeObserver:(id)observer forFolderIcon:(id)icon;
- (void)updateCachedImagesForFolderIcon:(id)icon afterChangeToContainedForIcon:(id)forIcon imageAppearance:(id)appearance updateType:(int64_t)type;
- (void)updateCachedMiniImage:(id)image forIcon:(id)icon imageAppearance:(id)appearance;
- (void)willBeginCachingActivityForReason:(id)reason;
@end

@implementation SBFolderIconImageSharedCache

- (SBFolderIconImageSharedCache)initWithListLayout:(id)layout iconImageCache:(id)cache
{
  v39 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  cacheCopy = cache;
  v37.receiver = self;
  v37.super_class = SBFolderIconImageSharedCache;
  v9 = [(SBFolderIconImageSharedCache *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listLayout, layout);
    objc_storeStrong(&v10->_iconImageCache, cache);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    folderIconObservers = v10->_folderIconObservers;
    v10->_folderIconObservers = weakToStrongObjectsMapTable;

    v13 = objc_alloc_init(SBHIconImageAppearanceStore);
    cachedFolderImages = v10->_cachedFolderImages;
    v10->_cachedFolderImages = v13;

    v15 = objc_alloc_init(SBHIconImageAppearanceStore);
    cachedMiniGridImages = v10->_cachedMiniGridImages;
    v10->_cachedMiniGridImages = v15;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    cachedFolderIcons = v10->_cachedFolderIcons;
    v10->_cachedFolderIcons = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    folderIconImageCaches = v10->_folderIconImageCaches;
    v10->_folderIconImageCaches = weakObjectsHashTable2;

    [cacheCopy addObserver:v10];
    v21 = [layoutCopy numberOfColumnsForOrientation:1];
    v22 = [layoutCopy numberOfRowsForOrientation:1];
    [SBIconGridImage sizeForLayout:layoutCopy];
    v24 = v23;
    v26 = v25;
    [cacheCopy iconImageInfo];
    v27 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:v24 withContextType:v26];
    snprintf(__str, 0x64uLL, "gridImages_%lux%lu", v21, v22);
    v28 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:__str slotLength:v27];
    pool = v10->_pool;
    v10->_pool = v28;

    v30 = SBHIconListLayoutFolderIconGridCellSize(layoutCopy);
    v32 = v31;
    v33 = [MEMORY[0x1E69DCAB8] sbf_bytesNeededForSize:0 scale:? withContextType:?];
    snprintf(__str, 0x64uLL, "miniGridImages_%lux%lu", v30, v32);
    v34 = [objc_alloc(MEMORY[0x1E698B698]) initWithLabel:__str slotLength:v33];
    miniGridImagePool = v10->_miniGridImagePool;
    v10->_miniGridImagePool = v34;
  }

  return v10;
}

- (void)folderIconImageCache:(id)cache didAddObserverForFolderIcon:(id)icon
{
  iconCopy = icon;
  [iconCopy addObserver:self];
  folder = [iconCopy folder];

  [folder addFolderObserver:self];
}

- (void)addObserver:(id)observer forFolderIcon:(id)icon
{
  observerCopy = observer;
  iconCopy = icon;
  weakObjectsHashTable = [(NSMapTable *)self->_folderIconObservers objectForKey:iconCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(NSMapTable *)self->_folderIconObservers setObject:weakObjectsHashTable forKey:iconCopy];
    [iconCopy addObserver:self];
    folder = [iconCopy folder];
    [folder addFolderObserver:self];
  }

  [weakObjectsHashTable addObject:observerCopy];
}

- (void)removeObserver:(id)observer forFolderIcon:(id)icon
{
  folderIconObservers = self->_folderIconObservers;
  observerCopy = observer;
  v7 = [(NSMapTable *)folderIconObservers objectForKey:icon];
  [v7 removeObject:observerCopy];
}

- (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance
{
  v30 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  folder = [iconCopy folder];
  listCount = [folder listCount];
  v12 = [(SBHIconImageAppearanceStore *)self->_cachedFolderImages imageForIcon:iconCopy appearance:appearanceCopy];
  v13 = v12;
  if (v12 && [v12 count] != listCount)
  {
    [v13 setCount:0];
    [v13 setCount:listCount];
  }

  v14 = [v13 pointerAtIndex:index];
  if (v14)
  {
    v15 = v14;
    if (!index)
    {
      SBFPreheatImageData();
    }
  }

  else
  {
    listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
    pool = [(SBFolderIconImageSharedCache *)self pool];
    v21 = listLayout;
    v15 = [SBFolderIconImageCache imageForPageAtIndex:index inFolderIcon:iconCopy imageAppearance:appearanceCopy listLayout:listLayout gridCellImageProvider:self pool:pool];
    v18 = SBLogFolderIconImageCache();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      selfCopy = self;
      v24 = 2112;
      v25 = v15;
      v26 = 2048;
      indexCopy = index;
      v28 = 2112;
      v29 = iconCopy;
      _os_log_debug_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEBUG, "%p caching image %@ at page %lu for icon: %@", buf, 0x2Au);
    }

    if (!v13)
    {
      v13 = [MEMORY[0x1E696AE08] pointerArrayWithOptions:0];
      [v13 setCount:listCount];
      [(SBHIconImageAppearanceStore *)self->_cachedFolderImages setImage:v13 forIcon:iconCopy appearance:appearanceCopy];
      [(NSHashTable *)self->_cachedFolderIcons addObject:iconCopy];
    }

    [v13 replacePointerAtIndex:index withPointer:v15];
  }

  [iconCopy addObserver:self];
  folder2 = [iconCopy folder];
  [folder2 addFolderObserver:self];

  return v15;
}

- (id)miniGridViewForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance options:(unint64_t)options
{
  appearanceCopy = appearance;
  folder = [icon folder];
  listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
  v13 = [folder miniGridViewForListIndex:index listLayout:listLayout imageAppearance:appearanceCopy options:options cellProvider:0];

  return v13;
}

- (id)gridCellImageForIcon:(id)icon imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes
{
  v45 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  v10 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:iconCopy appearance:appearanceCopy];
  iconImageCache = [(SBFolderIconImageSharedCache *)self iconImageCache];
  if (v10)
  {
    v12 = 0;
    v13 = v10;
    if (!attributes)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
  [listLayout iconImageInfo];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache gridCellImageForIcon:imageAppearance:imageAttributes:];
  }

  if (iconImageCache)
  {
    v25 = [iconImageCache realImageForIcon:iconCopy imageAppearance:appearanceCopy options:4];
    if (v25)
    {
      v26 = v25;
LABEL_13:
      [(SBFolderIconImageSharedCache *)self beginAsynchronousMiniImageGenerationForImage:v26 forIcon:iconCopy appearance:appearanceCopy reason:@"gridCellForImage"];
      v29 = SBLogFolderIconImageCache();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = iconCopy;
        _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_INFO, "beginning async mini image generation for icon %@", buf, 0xCu);
      }

      v30 = -[SBHIconImageAppearanceStore imageForIcon:appearanceType:](self->_cachedMiniGridImages, "imageForIcon:appearanceType:", iconCopy, [appearanceCopy appearanceType]);
      if (v30)
      {
        v13 = v30;
LABEL_17:
        v12 = 0;
        goto LABEL_27;
      }

      v13 = [(SBFolderIconImageSharedCache *)self cachingPlaceholderMiniGridImageWithImageAppearance:appearanceCopy];
LABEL_25:
      v12 = 1;
      goto LABEL_27;
    }

    [(SBFolderIconImageSharedCache *)self willBeginCachingActivityForReason:@"fetch image from image cache"];
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __85__SBFolderIconImageSharedCache_gridCellImageForIcon_imageAppearance_imageAttributes___block_invoke;
    v38 = &unk_1E808C2F0;
    v39 = iconImageCache;
    v40 = iconCopy;
    v41 = appearanceCopy;
    selfCopy = self;
    v31 = [v39 cacheImageForIcon:v40 imageAppearance:v41 priority:2 reason:@"gridCellImageForIcon" options:0 completionHandler:&v35];
  }

  else
  {
    v27 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:appearanceCopy];
    imageLoadContext = [iconCopy imageLoadContext];
    v26 = [iconCopy makeIconImageWithInfo:v27 traitCollection:imageLoadContext context:1 options:{v17, v19, v21, v23}];

    if (v26)
    {
      goto LABEL_13;
    }
  }

  if ([iconCopy hasIconImage])
  {
    v32 = [iconImageCache isCachingImageForIcon:iconCopy];
    v33 = SBLogFolderIconImageCache();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
    if (!v32)
    {
      if (v34)
      {
        *buf = 138412290;
        v44 = iconCopy;
        _os_log_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_INFO, "Could not get grid cell image for icon %@", buf, 0xCu);
      }

      v13 = [(SBFolderIconImageSharedCache *)self genericMiniGridImageWithImageAppearance:appearanceCopy];
      v26 = 0;
      goto LABEL_17;
    }

    if (v34)
    {
      *buf = 138412290;
      v44 = iconCopy;
      _os_log_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_INFO, "icon image cache is still caching image for icon %@", buf, 0xCu);
    }

    v13 = [(SBFolderIconImageSharedCache *)self cachingPlaceholderMiniGridImageWithImageAppearance:appearanceCopy];
    v26 = 0;
    goto LABEL_25;
  }

  v26 = 0;
  v12 = 0;
  v13 = 0;
LABEL_27:

  if (attributes)
  {
LABEL_3:
    *attributes = v12;
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

- (BOOL)hasUpToDateCachedMiniImageForImage:(id)image forIcon:(id)icon appearance:(id)appearance
{
  appearanceCopy = appearance;
  iconCopy = icon;
  sbh_iconImageIdentity = [image sbh_iconImageIdentity];
  imageGeneration = [sbh_iconImageIdentity imageGeneration];
  v12 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:iconCopy appearance:appearanceCopy];

  v15 = 0;
  if (v12)
  {
    sbh_iconImageIdentity2 = [v12 sbh_iconImageIdentity];
    imageGeneration2 = [sbh_iconImageIdentity2 imageGeneration];

    if (imageGeneration2 >= imageGeneration)
    {
      v15 = 1;
    }
  }

  return v15;
}

- (void)beginAsynchronousMiniImageGenerationForImage:(id)image forIcon:(id)icon appearance:(id)appearance reason:(id)reason
{
  imageCopy = image;
  iconCopy = icon;
  reasonCopy = reason;
  appearanceCopy = appearance;
  iconImageCache = [(SBFolderIconImageSharedCache *)self iconImageCache];
  listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
  v16 = SBHIconListLayoutFolderIconGridCellIconImageInfo(listLayout);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = -[SBHIconImageIdentity initWithIcon:iconImageInfo:imageGeneration:imageAppearance:]([SBHIconImageIdentity alloc], "initWithIcon:iconImageInfo:imageGeneration:imageAppearance:", iconCopy, [iconImageCache imageGenerationForCachedImage:imageCopy], appearanceCopy, v16, v17, v19, v21);
  v24 = [(SBFolderIconImageSharedCache *)self hasUpToDateCachedMiniImageForImage:imageCopy forIcon:iconCopy appearance:appearanceCopy];

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

  miniImageQueue = [objc_opt_class() miniImageQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__SBFolderIconImageSharedCache_beginAsynchronousMiniImageGenerationForImage_forIcon_appearance_reason___block_invoke;
  block[3] = &unk_1E808C318;
  block[4] = self;
  v32 = imageCopy;
  v33 = iconCopy;
  v34 = v23;
  v36 = v16;
  v37 = v18;
  v38 = v20;
  v39 = v22;
  v35 = reasonCopy;
  dispatch_async(miniImageQueue, block);

LABEL_13:
}

- (void)performAsynchronousMiniImageGenerationForImage:(id)image forIcon:(id)icon imageIdentity:(id)identity miniImageSize:(CGSize)size reason:(id)reason
{
  height = size.height;
  width = size.width;
  iconCopy = icon;
  identityCopy = identity;
  reasonCopy = reason;
  imageCopy = image;
  v16 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache performAsynchronousMiniImageGenerationForImage:forIcon:imageIdentity:miniImageSize:reason:];
  }

  height = [SBFolderIconImageCache gridCellImageOfSize:imageCopy forIconImage:width, height];

  [height sbh_setIconImageIdentity:identityCopy];
  v18 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache performAsynchronousMiniImageGenerationForImage:forIcon:imageIdentity:miniImageSize:reason:];
  }

  v23 = iconCopy;
  v24 = identityCopy;
  v25 = reasonCopy;
  v19 = reasonCopy;
  v20 = identityCopy;
  v21 = iconCopy;
  v22 = height;
  BSDispatchMain();
}

- (void)finishAsynchronousMiniImageGenerationWithImage:(id)image forIcon:(id)icon imageIdentity:(id)identity reason:(id)reason
{
  imageCopy = image;
  iconCopy = icon;
  identityCopy = identity;
  v12 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache finishAsynchronousMiniImageGenerationWithImage:forIcon:imageIdentity:reason:];
  }

  imageAppearance = [identityCopy imageAppearance];
  imageGeneration = [identityCopy imageGeneration];
  if (imageCopy)
  {
    v15 = imageGeneration;
    v16 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:iconCopy appearance:imageAppearance];
    sbh_iconImageIdentity = [v16 sbh_iconImageIdentity];
    imageGeneration2 = [sbh_iconImageIdentity imageGeneration];

    if (imageGeneration2 < v15)
    {
      [(SBFolderIconImageSharedCache *)self updateCachedMiniImage:imageCopy forIcon:iconCopy imageAppearance:imageAppearance];
    }
  }

  [(NSMutableSet *)self->_cachingMiniGridImageIdentities removeObject:identityCopy];
  [(SBFolderIconImageSharedCache *)self didEndCachingActivityForReason:@"mini image generation"];
}

- (void)updateCachedMiniImage:(id)image forIcon:(id)icon imageAppearance:(id)appearance
{
  v22 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages setImage:image forIcon:iconCopy appearance:appearanceCopy];
  [iconCopy addObserver:self];
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
        folder = [v15 folder];
        if ([folder containsIcon:iconCopy])
        {
          [(SBFolderIconImageSharedCache *)self updateCachedImagesForFolderIcon:v15 afterChangeToContainedForIcon:iconCopy imageAppearance:appearanceCopy updateType:1];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (id)performSynchronousMiniImageGenerationForImage:(id)image forIcon:(id)icon appearance:(id)appearance
{
  imageCopy = image;
  iconCopy = icon;
  appearanceCopy = appearance;
  iconImageCache = [(SBFolderIconImageSharedCache *)self iconImageCache];
  listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
  v13 = SBHIconListLayoutFolderIconGridCellIconImageInfo(listLayout);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [iconImageCache imageGenerationForCachedImage:imageCopy];
  if ([(SBFolderIconImageSharedCache *)self hasUpToDateCachedMiniImageForImage:imageCopy forIcon:iconCopy appearance:appearanceCopy])
  {
    v21 = [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages imageForIcon:iconCopy appearance:appearanceCopy];
  }

  else
  {
    v22 = [[SBHIconImageIdentity alloc] initWithIcon:iconCopy iconImageInfo:v20 imageGeneration:appearanceCopy imageAppearance:v13, v15, v17, v19];
    v21 = [SBFolderIconImageCache gridCellImageOfSize:imageCopy forIconImage:v13, v15];
    [v21 sbh_setIconImageIdentity:v22];
    [(SBHIconImageAppearanceStore *)self->_cachedMiniGridImages setImage:v21 forIcon:iconCopy appearance:appearanceCopy];
  }

  [iconCopy addObserver:self];

  return v21;
}

- (id)cachedMiniImageAppearancesForIcon:(id)icon
{
  v4 = MEMORY[0x1E695DF70];
  iconCopy = icon;
  v6 = objc_alloc_init(v4);
  cachedMiniGridImages = self->_cachedMiniGridImages;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__SBFolderIconImageSharedCache_cachedMiniImageAppearancesForIcon___block_invoke;
  v10[3] = &unk_1E808C368;
  v8 = v6;
  v11 = v8;
  [(SBHIconImageAppearanceStore *)cachedMiniGridImages enumerateImagesForIcon:iconCopy usingBlock:v10];

  return v8;
}

- (id)gridCellViewForIcon:(id)icon imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes
{
  v7 = MEMORY[0x1E69DD1B8];
  iconCopy = icon;
  v9 = [v7 sbh_traitCollectionWithIconImageAppearance:appearance];
  listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
  [listLayout iconImageInfo];
  v11 = [iconCopy iconLayerViewWithInfo:v9 traitCollection:1 options:1 priority:?];

  return v11;
}

- (void)rebuildImagesForFolderIcon:(id)icon
{
  iconCopy = icon;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageCache rebuildImagesForFolderIcon:];
  }

  [(SBHIconImageAppearanceStore *)self->_cachedFolderImages removeAllImagesForIcon:iconCopy];
  [(NSHashTable *)self->_cachedFolderIcons removeAllObjects];
  [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:iconCopy imageAppearance:0];
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

- (void)rebuildImagesForFolderIcon:(id)icon appearance:(id)appearance
{
  iconCopy = icon;
  appearanceCopy = appearance;
  v8 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache rebuildImagesForFolderIcon:appearance:];
  }

  [(SBHIconImageAppearanceStore *)self->_cachedFolderImages removeAllImagesForIcon:iconCopy appearance:appearanceCopy];
  [(NSHashTable *)self->_cachedFolderIcons removeObject:iconCopy];
  [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:iconCopy imageAppearance:appearanceCopy];
}

- (void)informObserversOfUpdateForFolderIcon:(id)icon imageAppearance:(id)appearance
{
  v28 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  v8 = [(NSMapTable *)self->_folderIconObservers objectForKey:iconCopy];
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

        [*(*(&v22 + 1) + 8 * v12++) folderIconImageSharedCache:self didUpdateImagesForFolderIcon:iconCopy imageAppearance:appearanceCopy];
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

        [*(*(&v18 + 1) + 8 * v17++) folderIconImageSharedCache:self didUpdateImagesForFolderIcon:iconCopy imageAppearance:{appearanceCopy, v18}];
      }

      while (v15 != v17);
      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (id)genericMiniGridImageWithImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  genericMiniGridImages = self->_genericMiniGridImages;
  v6 = +[SBHIconImageAppearanceStore defaultIcon];
  v7 = [(SBHIconImageAppearanceStore *)genericMiniGridImages imageForIcon:v6 appearance:appearanceCopy];

  if (!v7)
  {
    iconImageCache = [(SBFolderIconImageSharedCache *)self iconImageCache];
    listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
    v10 = [iconImageCache genericImageWithImageAppearance:appearanceCopy options:20];
    v11 = SBHIconListLayoutFolderIconGridCellSize(listLayout);
    v13 = v12;
    v14 = v10;
    v15 = v14;
    if (!v14)
    {
      [iconImageCache iconImageInfo];
      v15 = [SBHIconImageCache fallbackGenericImageWithInfo:appearanceCopy imageAppearance:0 options:?];
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
      [(SBHIconImageAppearanceStore *)v16 setImage:v7 forIcon:v19 appearance:appearanceCopy];
    }
  }

  return v7;
}

- (id)cachingPlaceholderMiniGridImageWithImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (+[SBHIconImageCache hasUniqueCachingPlaceholderImage])
  {
    cachingPlaceholderMiniGridImages = self->_cachingPlaceholderMiniGridImages;
    v6 = +[SBHIconImageAppearanceStore defaultIcon];
    v7 = [(SBHIconImageAppearanceStore *)cachingPlaceholderMiniGridImages imageForIcon:v6 appearance:appearanceCopy];

    if (!v7)
    {
      iconImageCache = [(SBFolderIconImageSharedCache *)self iconImageCache];
      listLayout = [(SBFolderIconImageSharedCache *)self listLayout];
      v10 = [iconImageCache cachingPlaceholderImageWithImageAppearance:appearanceCopy options:0];
      v7 = [SBFolderIconImageCache gridCellImageOfSize:v10 forIconImage:SBHIconListLayoutFolderIconGridCellSize(listLayout)];
      v11 = self->_cachingPlaceholderMiniGridImages;
      if (!v11)
      {
        v12 = objc_alloc_init(SBHIconImageAppearanceStore);
        v13 = self->_cachingPlaceholderMiniGridImages;
        self->_cachingPlaceholderMiniGridImages = v12;

        v11 = self->_cachingPlaceholderMiniGridImages;
      }

      v14 = +[SBHIconImageAppearanceStore defaultIcon];
      [(SBHIconImageAppearanceStore *)v11 setImage:v7 forIcon:v14 appearance:appearanceCopy];
    }
  }

  else
  {
    v7 = [(SBFolderIconImageSharedCache *)self genericMiniGridImageWithImageAppearance:appearanceCopy];
  }

  return v7;
}

- (void)updateCachedImagesForFolderIcon:(id)icon afterChangeToContainedForIcon:(id)forIcon imageAppearance:(id)appearance updateType:(int64_t)type
{
  iconCopy = icon;
  forIconCopy = forIcon;
  appearanceCopy = appearance;
  v13 = appearanceCopy;
  if (iconCopy)
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
    v15 = appearanceCopy;
    v22 = v15;
    v16 = iconCopy;
    v23 = v16;
    v27 = &v33;
    typeCopy = type;
    selfCopy = self;
    v26 = &v29;
    v24 = forIconCopy;
    [(SBHIconImageAppearanceStore *)cachedFolderImages enumerateImagesForIcon:v16 usingBlock:&v18];
    if (type == 3 || (v30[3] & 1) != 0)
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

- (BOOL)hasCachedItemsThatIncludeIcon:(id)icon imageAppearance:(id)appearance
{
  v18 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
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

        folder = [*(*(&v13 + 1) + 8 * i) folder];
        v11 = [folder containsIcon:iconCopy];

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

- (void)willBeginCachingActivityForReason:(id)reason
{
  reasonCopy = reason;
  backgroundActivityReasons = self->_backgroundActivityReasons;
  v8 = reasonCopy;
  if (!backgroundActivityReasons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v7 = self->_backgroundActivityReasons;
    self->_backgroundActivityReasons = v6;

    reasonCopy = v8;
    backgroundActivityReasons = self->_backgroundActivityReasons;
  }

  [(NSCountedSet *)backgroundActivityReasons addObject:reasonCopy];
}

- (void)didEndCachingActivityForReason:(id)reason
{
  [(NSCountedSet *)self->_backgroundActivityReasons removeObject:reason];

  [(SBFolderIconImageSharedCache *)self checkIfCachingActivityHasCompleted];
}

- (void)performWhenCachingActivityCompletesUsingBlock:(id)block
{
  blockCopy = block;
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

    v7 = [blockCopy copy];
    v8 = _Block_copy(v7);
    [(NSMutableArray *)performAfterCachingActivityBlocks addObject:v8];
  }

  else
  {
    blockCopy[2]();
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
  allObjects = [(NSCountedSet *)self->_backgroundActivityReasons allObjects];
  v6 = [allObjects componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"Mini images generating: %lu, background tasks: %@", v4, v6];

  return v7;
}

- (id)gridCellImageOfSize:(CGSize)size forIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info compatibleWithTraitCollection:(id)collection imageAttributes:(unint64_t *)attributes
{
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  height = size.height;
  width = size.width;
  v20 = MEMORY[0x1E69DD1B8];
  iconCopy = icon;
  v22 = [v20 sbh_iconImageAppearanceFromTraitCollection:info];
  v23 = [(SBFolderIconImageSharedCache *)self gridCellImageOfSize:iconCopy forIcon:v22 iconImageInfo:collection imageAppearance:width imageAttributes:height, v16, v15, v14, v13];

  return v23;
}

- (void)folderIcon:(id)icon containedIconImageDidUpdate:(id)update
{
  iconCopy = icon;
  updateCopy = update;
  iconImageCache = [(SBFolderIconImageSharedCache *)self iconImageCache];

  if (!iconImageCache)
  {
    [(SBFolderIconImageSharedCache *)self updateCachedImagesForFolderIcon:iconCopy afterChangeToContainedForIcon:updateCopy imageAppearance:0 updateType:0];
  }
}

- (void)iconImageCache:(id)cache didUpdateImageForIcon:(id)icon imageAppearance:(id)appearance
{
  cacheCopy = cache;
  iconCopy = icon;
  appearanceCopy = appearance;
  v11 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache iconImageCache:iconCopy didUpdateImageForIcon:v11 imageAppearance:?];
  }

  if ([cacheCopy currentRequestChangedImageVisually] && -[SBFolderIconImageSharedCache hasCachedItemsThatIncludeIcon:imageAppearance:](self, "hasCachedItemsThatIncludeIcon:imageAppearance:", iconCopy, appearanceCopy))
  {
    v12 = [cacheCopy imageForIcon:iconCopy imageAppearance:appearanceCopy options:0];
    [(SBFolderIconImageSharedCache *)self beginAsynchronousMiniImageGenerationForImage:v12 forIcon:iconCopy appearance:appearanceCopy reason:@"image cache update"];
  }
}

- (void)iconImageDidUpdate:(id)update
{
  updateCopy = update;
  iconImageCache = [(SBFolderIconImageSharedCache *)self iconImageCache];
  v6 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache iconImageDidUpdate:];
  }

  v7 = [(SBFolderIconImageSharedCache *)self cachedMiniImageAppearancesForIcon:updateCopy];
  if ([v7 count])
  {
    [(SBFolderIconImageSharedCache *)self willBeginCachingActivityForReason:@"folder image cache icon observer"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SBFolderIconImageSharedCache_iconImageDidUpdate___block_invoke;
    v8[3] = &unk_1E8089E68;
    v9 = iconImageCache;
    v10 = updateCopy;
    v11 = v7;
    selfCopy = self;
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

- (void)folder:(id)folder didAddList:(id)list
{
  folderCopy = folder;
  listCopy = list;
  v8 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didAddList:];
  }

  icon = [folderCopy icon];
  cachedFolderImages = self->_cachedFolderImages;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__SBFolderIconImageSharedCache_folder_didAddList___block_invoke;
  v14[3] = &unk_1E808C3E0;
  v15 = folderCopy;
  v16 = listCopy;
  selfCopy = self;
  v18 = icon;
  v11 = icon;
  v12 = listCopy;
  v13 = folderCopy;
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

- (void)folder:(id)folder didRemoveLists:(id)lists atIndexes:(id)indexes
{
  folderCopy = folder;
  listsCopy = lists;
  indexesCopy = indexes;
  v11 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didRemoveLists:atIndexes:];
  }

  icon = [folderCopy icon];
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
  v14 = folderCopy;
  v18 = v14;
  v15 = indexesCopy;
  v19 = v15;
  selfCopy = self;
  v16 = icon;
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

- (void)folder:(id)folder didMoveList:(id)list fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  folderCopy = folder;
  listCopy = list;
  v12 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didMoveList:fromIndex:toIndex:];
  }

  icon = [folderCopy icon];
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
  v15 = folderCopy;
  indexCopy = index;
  toIndexCopy = toIndex;
  v21 = v15;
  selfCopy = self;
  v16 = icon;
  v23 = v16;
  [(SBHIconImageAppearanceStore *)cachedFolderImages enumerateImagesForIcon:v16 usingBlock:&v17];
  if ((v28[3] & 1) == 0)
  {
    [(SBFolderIconImageSharedCache *)self informObserversOfUpdateForFolderIcon:v16 imageAppearance:0, v17, v18, v19, v20, v21, selfCopy];
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

- (void)folder:(id)folder didAddIcons:(id)icons removedIcons:(id)removedIcons
{
  folderCopy = folder;
  v7 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageSharedCache folder:didAddIcons:removedIcons:];
  }

  icon = [folderCopy icon];
  [(SBFolderIconImageSharedCache *)self rebuildImagesForFolderIcon:icon];
}

- (void)folder:(id)folder didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  v21 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  iconCopy = icon;
  withIconCopy = withIcon;
  v11 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [iconCopy uniqueIdentifier];
    uniqueIdentifier2 = [withIconCopy uniqueIdentifier];
    v15 = 138412802;
    v16 = folderCopy;
    v17 = 2112;
    v18 = uniqueIdentifier;
    v19 = 2112;
    v20 = uniqueIdentifier2;
    _os_log_debug_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEBUG, "observed folder '%@' replaced '%@' with '%@'", &v15, 0x20u);
  }

  icon = [folderCopy icon];
  [(SBFolderIconImageSharedCache *)self updateCachedImagesForFolderIcon:icon afterChangeToContainedForIcon:withIconCopy imageAppearance:0 updateType:2];
}

- (void)folder:(id)folder didMoveIcon:(id)icon
{
  folderCopy = folder;
  iconCopy = icon;
  v8 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SBFolderIconImageSharedCache *)folderCopy folder:iconCopy didMoveIcon:v8];
  }

  icon = [folderCopy icon];
  [(SBFolderIconImageSharedCache *)self rebuildImagesForFolderIcon:icon];
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