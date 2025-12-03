@interface SBFolderIconImageCache
+ (BOOL)drawTreatmentForIcon:(id)icon inRect:(CGRect)rect;
+ (BOOL)needsTreatmentForIcon:(id)icon;
+ (id)defaultListLayout;
+ (id)gridCellImageOfSize:(CGSize)size forIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info compatibleWithTraitCollection:(id)collection imageAttributes:(unint64_t *)attributes;
+ (id)gridCellImageOfSize:(CGSize)size forIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes;
+ (id)gridCellImageOfSize:(CGSize)size forIconImage:(id)image;
+ (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon compatibleWithTraitCollection:(id)collection listLayout:(id)layout gridCellImageProvider:(id)provider pool:(id)pool;
+ (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance listLayout:(id)layout gridCellImageProvider:(id)provider pool:(id)pool;
- (BOOL)shouldSkipGridCellImageForIcon:(id)icon;
- (SBFolderIconImageCache)init;
- (SBFolderIconImageCache)initWithListLayout:(id)layout;
- (SBFolderIconImageCache)initWithListLayout:(id)layout iconImageCache:(id)cache sharedCache:(id)sharedCache;
- (id)activityDescription;
- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options;
- (id)gridCellImageForIcon:(id)icon imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes;
- (id)gridCellImageOfSize:(CGSize)size forIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info compatibleWithTraitCollection:(id)collection imageAttributes:(unint64_t *)attributes;
- (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon compatibleWithTraitCollection:(id)collection;
- (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance;
- (id)miniGridViewForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance options:(unint64_t)options;
- (unint64_t)numberOfCacheHits;
- (unint64_t)numberOfCacheMisses;
- (unint64_t)numberOfCachedImages;
- (void)addObserver:(id)observer forFolderIcon:(id)icon;
- (void)informObserversOfUpdateForAllFolderIcons;
- (void)informObserversOfUpdateForFolderIcon:(id)icon imageAppearance:(id)appearance;
- (void)layoutHidingAssertionDidChange:(id)change;
- (void)layoutHidingAssertionDidInvalidate:(id)invalidate;
- (void)performWhenCachingActivityCompletesUsingBlock:(id)block;
- (void)purgeAllCachedFolderImages;
- (void)rebuildAllCachedFolderImages;
- (void)rebuildImagesForFolderIcon:(id)icon;
- (void)removeObserver:(id)observer forFolderIcon:(id)icon;
@end

@implementation SBFolderIconImageCache

- (SBFolderIconImageCache)initWithListLayout:(id)layout iconImageCache:(id)cache sharedCache:(id)sharedCache
{
  layoutCopy = layout;
  cacheCopy = cache;
  sharedCacheCopy = sharedCache;
  v19.receiver = self;
  v19.super_class = SBFolderIconImageCache;
  v12 = [(SBFolderIconImageCache *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listLayout, layout);
    objc_storeStrong(&v13->_iconImageCache, cache);
    if (sharedCacheCopy)
    {
      v14 = sharedCacheCopy;
    }

    else
    {
      v14 = [[SBFolderIconImageSharedCache alloc] initWithListLayout:layoutCopy iconImageCache:cacheCopy];
    }

    sharedCache = v13->_sharedCache;
    v13->_sharedCache = v14;

    [(SBFolderIconImageSharedCache *)v13->_sharedCache registerFolderIconImageCache:v13];
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    folderIconObservers = v13->_folderIconObservers;
    v13->_folderIconObservers = weakToStrongObjectsMapTable;
  }

  return v13;
}

- (SBFolderIconImageCache)initWithListLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [SBHIconImageCache alloc];
  [layoutCopy iconImageInfo];
  v6 = [(SBHIconImageCache *)v5 initWithName:@"SBFolderIconImageCache" iconImageInfo:?];
  v7 = [(SBFolderIconImageCache *)self initWithListLayout:layoutCopy iconImageCache:v6];

  return v7;
}

+ (id)defaultListLayout
{
  v2 = objc_alloc_init(SBIconListGridLayoutConfiguration);
  [(SBIconListGridLayoutConfiguration *)v2 setNumberOfPortraitRows:3];
  [(SBIconListGridLayoutConfiguration *)v2 setNumberOfPortraitColumns:3];
  folderIconVisualConfiguration = [(SBIconListGridLayoutConfiguration *)v2 folderIconVisualConfiguration];
  [folderIconVisualConfiguration setGridCellSize:{13.0, 13.0}];

  folderIconVisualConfiguration2 = [(SBIconListGridLayoutConfiguration *)v2 folderIconVisualConfiguration];
  [folderIconVisualConfiguration2 setGridCellSpacing:{3.0, 3.0}];

  [(SBIconListGridLayoutConfiguration *)v2 setIconImageInfo:80.0, 80.0, 1.0, 20.0];
  v5 = [[SBIconListGridLayout alloc] initWithLayoutConfiguration:v2];

  return v5;
}

- (SBFolderIconImageCache)init
{
  defaultListLayout = [objc_opt_class() defaultListLayout];
  v4 = [SBHIconImageCache alloc];
  [defaultListLayout iconImageInfo];
  v5 = [(SBHIconImageCache *)v4 initWithName:@"default" iconImageInfo:?];
  v6 = [(SBFolderIconImageCache *)self initWithListLayout:defaultListLayout iconImageCache:v5];

  return v6;
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
  }

  if (([weakObjectsHashTable containsObject:observerCopy] & 1) == 0)
  {
    [weakObjectsHashTable addObject:observerCopy];
    sharedCache = [(SBFolderIconImageCache *)self sharedCache];
    [sharedCache folderIconImageCache:self didAddObserverForFolderIcon:iconCopy];
  }
}

- (void)removeObserver:(id)observer forFolderIcon:(id)icon
{
  observerCopy = observer;
  iconCopy = icon;
  v7 = [(NSMapTable *)self->_folderIconObservers objectForKey:iconCopy];
  if ([v7 containsObject:observerCopy])
  {
    [v7 removeObject:observerCopy];
    if (![v7 count])
    {
      [(NSMapTable *)self->_folderIconObservers removeObjectForKey:iconCopy];
    }
  }
}

- (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon compatibleWithTraitCollection:(id)collection
{
  v8 = MEMORY[0x1E69DD1B8];
  iconCopy = icon;
  v10 = [v8 sbh_iconImageAppearanceFromTraitCollection:collection];
  v11 = [(SBFolderIconImageCache *)self imageForPageAtIndex:index inFolderIcon:iconCopy imageAppearance:v10];

  return v11;
}

- (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance
{
  v26 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  folder = [iconCopy folder];
  v11 = [folder listAtIndex:index];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_layoutHidingAssertions;
  v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v21 + 1) + 8 * i) referencesIconInListModel:{v11, v21}])
        {

          listLayout = [(SBFolderIconImageCache *)self listLayout];
          v18 = [objc_opt_class() imageForPageAtIndex:index inFolderIcon:iconCopy imageAppearance:appearanceCopy listLayout:listLayout gridCellImageProvider:self pool:0];
          goto LABEL_11;
        }
      }

      v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  listLayout = [(SBFolderIconImageCache *)self sharedCache];
  v18 = [listLayout imageForPageAtIndex:index inFolderIcon:iconCopy imageAppearance:appearanceCopy];
LABEL_11:
  v19 = v18;

  return v19;
}

+ (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon compatibleWithTraitCollection:(id)collection listLayout:(id)layout gridCellImageProvider:(id)provider pool:(id)pool
{
  v14 = MEMORY[0x1E69DD1B8];
  poolCopy = pool;
  providerCopy = provider;
  layoutCopy = layout;
  iconCopy = icon;
  v19 = [v14 sbh_iconImageAppearanceFromTraitCollection:collection];
  v20 = [self imageForPageAtIndex:index inFolderIcon:iconCopy imageAppearance:v19 listLayout:layoutCopy gridCellImageProvider:providerCopy pool:poolCopy];

  return v20;
}

+ (id)imageForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance listLayout:(id)layout gridCellImageProvider:(id)provider pool:(id)pool
{
  iconCopy = icon;
  appearanceCopy = appearance;
  layoutCopy = layout;
  providerCopy = provider;
  poolCopy = pool;
  folder = [iconCopy folder];
  v19 = [folder listAtIndex:index];
  v20 = SBHIconListLayoutFolderIconGridCellSize(layoutCopy);
  v22 = v21;
  [layoutCopy iconImageInfo];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  numberOfIcons = [v19 numberOfIcons];
  v32 = objc_opt_respondsToSelector() & 1;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  v53[3] = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __113__SBFolderIconImageCache_imageForPageAtIndex_inFolderIcon_imageAppearance_listLayout_gridCellImageProvider_pool___block_invoke;
  v39[3] = &unk_1E808C2A0;
  v43 = v53;
  v44 = numberOfIcons;
  v33 = v19;
  v40 = v33;
  v52 = v32;
  v34 = providerCopy;
  v41 = v34;
  v45 = v20;
  v46 = v22;
  v47 = v24;
  v48 = v26;
  v49 = v28;
  v50 = v30;
  v35 = appearanceCopy;
  v42 = v35;
  selfCopy = self;
  v36 = [SBIconGridImage gridImageForLayout:layoutCopy imageAppearance:v35 pool:poolCopy cellImageDrawBlock:v39];

  _Block_object_dispose(v53, 8);

  return v36;
}

BOOL __113__SBFolderIconImageCache_imageForPageAtIndex_inFolderIcon_imageAppearance_listLayout_gridCellImageProvider_pool___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t *a8)
{
  if ((*(*(*(a1 + 56) + 8) + 24) + a2) >= *(a1 + 64))
  {
    return 0;
  }

  v15 = 0;
  while (1)
  {
    v16 = v15;
    v15 = [*(a1 + 32) iconAtIndex:?];

    if (*(a1 + 128) != 1 || ![*(a1 + 40) shouldSkipGridCellImageForIcon:v15])
    {
      break;
    }

    if ((++*(*(*(a1 + 56) + 8) + 24) + a2) >= *(a1 + 64))
    {
      v17 = 0;
      goto LABEL_14;
    }
  }

  v24 = 0;
  v18 = *(a1 + 40);
  if (!v18)
  {
    v18 = *(a1 + 120);
  }

  v19 = [v18 gridCellImageOfSize:v15 forIcon:*(a1 + 48) iconImageInfo:&v24 imageAppearance:*(a1 + 72) imageAttributes:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v20 = v19;
  v17 = v19 != 0;
  if (v19)
  {
    [v19 drawInRect:{a3, a4, a5, a6}];
    v21 = v24;
    v22 = [*(a1 + 120) drawTreatmentForIcon:v15 inRect:{a3, a4, a5, a6}];
    if (a8)
    {
      *a8 = v22 & 0xFFFFFFFD | (2 * (v21 & 1));
    }
  }

LABEL_14:
  return v17;
}

- (id)miniGridViewForPageAtIndex:(unint64_t)index inFolderIcon:(id)icon imageAppearance:(id)appearance options:(unint64_t)options
{
  v40 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  folder = [iconCopy folder];
  v12 = [folder listAtIndex:index];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = self->_layoutHidingAssertions;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v34 + 1) + 8 * i) referencesIconInListModel:v12])
        {
          v28 = appearanceCopy;

          listLayout = [(SBFolderIconImageCache *)self listLayout];
          v20 = [v12 copy];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v21 = self->_layoutHidingAssertions;
          v22 = [(NSHashTable *)v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v31;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v31 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                icons = [*(*(&v30 + 1) + 8 * j) icons];
                [v20 removeIcons:icons options:0];
              }

              v23 = [(NSHashTable *)v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v23);
          }

          appearanceCopy = v28;
          v19 = [v20 miniGridViewWithListLayout:listLayout imageAppearance:v28 options:options];

          goto LABEL_18;
        }
      }

      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  listLayout = [(SBFolderIconImageCache *)self sharedCache];
  v19 = [listLayout miniGridViewForPageAtIndex:index inFolderIcon:iconCopy imageAppearance:appearanceCopy options:options];
LABEL_18:

  return v19;
}

+ (id)gridCellImageOfSize:(CGSize)size forIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info compatibleWithTraitCollection:(id)collection imageAttributes:(unint64_t *)attributes
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
  v23 = [self gridCellImageOfSize:iconCopy forIcon:v22 iconImageInfo:collection imageAppearance:width imageAttributes:{height, v16, v15, v14, v13}];

  return v23;
}

+ (id)gridCellImageOfSize:(CGSize)size forIcon:(id)icon iconImageInfo:(SBIconImageInfo *)info imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes
{
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  height = size.height;
  width = size.width;
  iconCopy = icon;
  v20 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:info];
  v21 = [iconCopy iconImageWithInfo:v20 traitCollection:1 options:{v15, v14, v13, v12}];
  if (!v21)
  {
    if ([iconCopy hasIconImage])
    {
      v21 = 0;
    }

    else
    {
      v21 = [SBHIconImageCache genericImageWithInfo:v15, v14, v13, v12];
    }
  }

  v22 = [self gridCellImageOfSize:v21 forIconImage:{width, height}];

  return v22;
}

+ (id)gridCellImageOfSize:(CGSize)size forIconImage:(id)image
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SBFolderIconImageCache_gridCellImageOfSize_forIconImage___block_invoke;
  v11[3] = &unk_1E808C2C8;
  v12 = imageCopy;
  v13 = width;
  v14 = height;
  v8 = imageCopy;
  v9 = [v7 imageWithActions:v11];

  return v9;
}

uint64_t __59__SBFolderIconImageCache_gridCellImageOfSize_forIconImage___block_invoke(double *a1, void *a2)
{
  CGContextSetInterpolationQuality([a2 CGContext], kCGInterpolationHigh);
  v3 = *(a1 + 4);
  v4 = a1[5];
  v5 = a1[6];

  return [v3 drawInRect:{0.0, 0.0, v4, v5}];
}

- (id)gridCellImageForIcon:(id)icon imageAppearance:(id)appearance imageAttributes:(unint64_t *)attributes
{
  appearanceCopy = appearance;
  iconCopy = icon;
  sharedCache = [(SBFolderIconImageCache *)self sharedCache];
  v11 = [sharedCache gridCellImageForIcon:iconCopy imageAppearance:appearanceCopy imageAttributes:attributes];

  return v11;
}

+ (BOOL)needsTreatmentForIcon:(id)icon
{
  iconCopy = icon;
  v4 = ([iconCopy isTimedOut] & 1) != 0 || objc_msgSend(iconCopy, "progressState") != 0;

  return v4;
}

+ (BOOL)drawTreatmentForIcon:(id)icon inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [self needsTreatmentForIcon:icon];
  if (v8)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v10 = [blackColor colorWithAlphaComponent:0.5];
    [v10 setFill];

    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    UIRectFillUsingBlendMode(v12, kCGBlendModeSourceAtop);
  }

  return v8;
}

- (void)rebuildImagesForFolderIcon:(id)icon
{
  iconCopy = icon;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageCache rebuildImagesForFolderIcon:];
  }

  sharedCache = [(SBFolderIconImageCache *)self sharedCache];
  [sharedCache rebuildImagesForFolderIcon:iconCopy];
}

- (void)rebuildAllCachedFolderImages
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)purgeAllCachedFolderImages
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)informObserversOfUpdateForFolderIcon:(id)icon imageAppearance:(id)appearance
{
  v18 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  appearanceCopy = appearance;
  v8 = [(NSMapTable *)self->_folderIconObservers objectForKey:iconCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) folderIconImageCache:self didUpdateImagesForFolderIcon:iconCopy imageAppearance:appearanceCopy];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)informObserversOfUpdateForAllFolderIcons
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_folderIconObservers;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBFolderIconImageCache *)self informObserversOfUpdateForFolderIcon:*(*(&v8 + 1) + 8 * v7++) imageAppearance:0, v8];
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (unint64_t)numberOfCachedImages
{
  sharedCache = [(SBFolderIconImageCache *)self sharedCache];
  numberOfCachedImages = [sharedCache numberOfCachedImages];

  return numberOfCachedImages;
}

- (unint64_t)numberOfCacheHits
{
  sharedCache = [(SBFolderIconImageCache *)self sharedCache];
  numberOfCacheHits = [sharedCache numberOfCacheHits];

  return numberOfCacheHits;
}

- (unint64_t)numberOfCacheMisses
{
  sharedCache = [(SBFolderIconImageCache *)self sharedCache];
  numberOfCacheMisses = [sharedCache numberOfCacheMisses];

  return numberOfCacheMisses;
}

- (void)performWhenCachingActivityCompletesUsingBlock:(id)block
{
  blockCopy = block;
  sharedCache = [(SBFolderIconImageCache *)self sharedCache];
  [sharedCache performWhenCachingActivityCompletesUsingBlock:blockCopy];
}

- (id)activityDescription
{
  sharedCache = [(SBFolderIconImageCache *)self sharedCache];
  activityDescription = [sharedCache activityDescription];

  return activityDescription;
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
  v23 = [(SBFolderIconImageCache *)self gridCellImageOfSize:iconCopy forIcon:v22 iconImageInfo:collection imageAppearance:width imageAttributes:height, v16, v15, v14, v13];

  return v23;
}

- (BOOL)shouldSkipGridCellImageForIcon:(id)icon
{
  v15 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_layoutHidingAssertions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) referencesIcon:{iconCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)beginHidingIconsFromLayout:(id)layout reason:(id)reason options:(unint64_t)options
{
  v25 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  reasonCopy = reason;
  v10 = [[SBHIconLayoutHidingAssertion alloc] initWithDelegate:self icons:layoutCopy reason:reasonCopy options:options];
  layoutHidingAssertions = self->_layoutHidingAssertions;
  if (!layoutHidingAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v13 = self->_layoutHidingAssertions;
    self->_layoutHidingAssertions = weakObjectsHashTable;

    layoutHidingAssertions = self->_layoutHidingAssertions;
  }

  [(NSHashTable *)layoutHidingAssertions addObject:v10];
  [(SBFolderIconImageCache *)self informObserversOfUpdateForAllFolderIcons];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = self->_folderIconObservers;
  v15 = [(NSMapTable *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(SBFolderIconImageCache *)self informObserversOfUpdateForFolderIcon:*(*(&v20 + 1) + 8 * i) imageAppearance:0, v20];
      }

      v16 = [(NSMapTable *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  return v10;
}

- (void)layoutHidingAssertionDidChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    icons = [changeCopy icons];
    v7 = 134218498;
    selfCopy = self;
    v9 = 2048;
    v10 = changeCopy;
    v11 = 2112;
    v12 = icons;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: icon hiding assertion %p did change icons %@", &v7, 0x20u);
  }

  if ([(NSHashTable *)self->_layoutHidingAssertions containsObject:changeCopy])
  {
    [(SBFolderIconImageCache *)self informObserversOfUpdateForAllFolderIcons];
  }
}

- (void)layoutHidingAssertionDidInvalidate:(id)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    selfCopy = self;
    v9 = 2048;
    v10 = invalidateCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: remove icon hiding assertion %p", &v7, 0x16u);
  }

  if ([(NSHashTable *)self->_layoutHidingAssertions containsObject:invalidateCopy])
  {
    [(NSHashTable *)self->_layoutHidingAssertions removeObject:invalidateCopy];
    if (![(NSHashTable *)self->_layoutHidingAssertions count])
    {
      layoutHidingAssertions = self->_layoutHidingAssertions;
      self->_layoutHidingAssertions = 0;
    }

    [(SBFolderIconImageCache *)self informObserversOfUpdateForAllFolderIcons];
  }
}

@end