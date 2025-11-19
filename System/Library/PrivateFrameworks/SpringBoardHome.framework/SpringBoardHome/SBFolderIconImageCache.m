@interface SBFolderIconImageCache
+ (BOOL)drawTreatmentForIcon:(id)a3 inRect:(CGRect)a4;
+ (BOOL)needsTreatmentForIcon:(id)a3;
+ (id)defaultListLayout;
+ (id)gridCellImageOfSize:(CGSize)a3 forIcon:(id)a4 iconImageInfo:(SBIconImageInfo *)a5 compatibleWithTraitCollection:(id)a6 imageAttributes:(unint64_t *)a7;
+ (id)gridCellImageOfSize:(CGSize)a3 forIcon:(id)a4 iconImageInfo:(SBIconImageInfo *)a5 imageAppearance:(id)a6 imageAttributes:(unint64_t *)a7;
+ (id)gridCellImageOfSize:(CGSize)a3 forIconImage:(id)a4;
+ (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 compatibleWithTraitCollection:(id)a5 listLayout:(id)a6 gridCellImageProvider:(id)a7 pool:(id)a8;
+ (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5 listLayout:(id)a6 gridCellImageProvider:(id)a7 pool:(id)a8;
- (BOOL)shouldSkipGridCellImageForIcon:(id)a3;
- (SBFolderIconImageCache)init;
- (SBFolderIconImageCache)initWithListLayout:(id)a3;
- (SBFolderIconImageCache)initWithListLayout:(id)a3 iconImageCache:(id)a4 sharedCache:(id)a5;
- (id)activityDescription;
- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5;
- (id)gridCellImageForIcon:(id)a3 imageAppearance:(id)a4 imageAttributes:(unint64_t *)a5;
- (id)gridCellImageOfSize:(CGSize)a3 forIcon:(id)a4 iconImageInfo:(SBIconImageInfo *)a5 compatibleWithTraitCollection:(id)a6 imageAttributes:(unint64_t *)a7;
- (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 compatibleWithTraitCollection:(id)a5;
- (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5;
- (id)miniGridViewForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5 options:(unint64_t)a6;
- (unint64_t)numberOfCacheHits;
- (unint64_t)numberOfCacheMisses;
- (unint64_t)numberOfCachedImages;
- (void)addObserver:(id)a3 forFolderIcon:(id)a4;
- (void)informObserversOfUpdateForAllFolderIcons;
- (void)informObserversOfUpdateForFolderIcon:(id)a3 imageAppearance:(id)a4;
- (void)layoutHidingAssertionDidChange:(id)a3;
- (void)layoutHidingAssertionDidInvalidate:(id)a3;
- (void)performWhenCachingActivityCompletesUsingBlock:(id)a3;
- (void)purgeAllCachedFolderImages;
- (void)rebuildAllCachedFolderImages;
- (void)rebuildImagesForFolderIcon:(id)a3;
- (void)removeObserver:(id)a3 forFolderIcon:(id)a4;
@end

@implementation SBFolderIconImageCache

- (SBFolderIconImageCache)initWithListLayout:(id)a3 iconImageCache:(id)a4 sharedCache:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = SBFolderIconImageCache;
  v12 = [(SBFolderIconImageCache *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listLayout, a3);
    objc_storeStrong(&v13->_iconImageCache, a4);
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = [[SBFolderIconImageSharedCache alloc] initWithListLayout:v9 iconImageCache:v10];
    }

    sharedCache = v13->_sharedCache;
    v13->_sharedCache = v14;

    [(SBFolderIconImageSharedCache *)v13->_sharedCache registerFolderIconImageCache:v13];
    v16 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    folderIconObservers = v13->_folderIconObservers;
    v13->_folderIconObservers = v16;
  }

  return v13;
}

- (SBFolderIconImageCache)initWithListLayout:(id)a3
{
  v4 = a3;
  v5 = [SBHIconImageCache alloc];
  [v4 iconImageInfo];
  v6 = [(SBHIconImageCache *)v5 initWithName:@"SBFolderIconImageCache" iconImageInfo:?];
  v7 = [(SBFolderIconImageCache *)self initWithListLayout:v4 iconImageCache:v6];

  return v7;
}

+ (id)defaultListLayout
{
  v2 = objc_alloc_init(SBIconListGridLayoutConfiguration);
  [(SBIconListGridLayoutConfiguration *)v2 setNumberOfPortraitRows:3];
  [(SBIconListGridLayoutConfiguration *)v2 setNumberOfPortraitColumns:3];
  v3 = [(SBIconListGridLayoutConfiguration *)v2 folderIconVisualConfiguration];
  [v3 setGridCellSize:{13.0, 13.0}];

  v4 = [(SBIconListGridLayoutConfiguration *)v2 folderIconVisualConfiguration];
  [v4 setGridCellSpacing:{3.0, 3.0}];

  [(SBIconListGridLayoutConfiguration *)v2 setIconImageInfo:80.0, 80.0, 1.0, 20.0];
  v5 = [[SBIconListGridLayout alloc] initWithLayoutConfiguration:v2];

  return v5;
}

- (SBFolderIconImageCache)init
{
  v3 = [objc_opt_class() defaultListLayout];
  v4 = [SBHIconImageCache alloc];
  [v3 iconImageInfo];
  v5 = [(SBHIconImageCache *)v4 initWithName:@"default" iconImageInfo:?];
  v6 = [(SBFolderIconImageCache *)self initWithListLayout:v3 iconImageCache:v5];

  return v6;
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
  }

  if (([v7 containsObject:v9] & 1) == 0)
  {
    [v7 addObject:v9];
    v8 = [(SBFolderIconImageCache *)self sharedCache];
    [v8 folderIconImageCache:self didAddObserverForFolderIcon:v6];
  }
}

- (void)removeObserver:(id)a3 forFolderIcon:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_folderIconObservers objectForKey:v6];
  if ([v7 containsObject:v8])
  {
    [v7 removeObject:v8];
    if (![v7 count])
    {
      [(NSMapTable *)self->_folderIconObservers removeObjectForKey:v6];
    }
  }
}

- (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 compatibleWithTraitCollection:(id)a5
{
  v8 = MEMORY[0x1E69DD1B8];
  v9 = a4;
  v10 = [v8 sbh_iconImageAppearanceFromTraitCollection:a5];
  v11 = [(SBFolderIconImageCache *)self imageForPageAtIndex:a3 inFolderIcon:v9 imageAppearance:v10];

  return v11;
}

- (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v8 folder];
  v11 = [v10 listAtIndex:a3];
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

          v17 = [(SBFolderIconImageCache *)self listLayout];
          v18 = [objc_opt_class() imageForPageAtIndex:a3 inFolderIcon:v8 imageAppearance:v9 listLayout:v17 gridCellImageProvider:self pool:0];
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

  v17 = [(SBFolderIconImageCache *)self sharedCache];
  v18 = [v17 imageForPageAtIndex:a3 inFolderIcon:v8 imageAppearance:v9];
LABEL_11:
  v19 = v18;

  return v19;
}

+ (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 compatibleWithTraitCollection:(id)a5 listLayout:(id)a6 gridCellImageProvider:(id)a7 pool:(id)a8
{
  v14 = MEMORY[0x1E69DD1B8];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = [v14 sbh_iconImageAppearanceFromTraitCollection:a5];
  v20 = [a1 imageForPageAtIndex:a3 inFolderIcon:v18 imageAppearance:v19 listLayout:v17 gridCellImageProvider:v16 pool:v15];

  return v20;
}

+ (id)imageForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5 listLayout:(id)a6 gridCellImageProvider:(id)a7 pool:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v13 folder];
  v19 = [v18 listAtIndex:a3];
  v20 = SBHIconListLayoutFolderIconGridCellSize(v15);
  v22 = v21;
  [v15 iconImageInfo];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v19 numberOfIcons];
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
  v44 = v31;
  v33 = v19;
  v40 = v33;
  v52 = v32;
  v34 = v16;
  v41 = v34;
  v45 = v20;
  v46 = v22;
  v47 = v24;
  v48 = v26;
  v49 = v28;
  v50 = v30;
  v35 = v14;
  v42 = v35;
  v51 = a1;
  v36 = [SBIconGridImage gridImageForLayout:v15 imageAppearance:v35 pool:v17 cellImageDrawBlock:v39];

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

- (id)miniGridViewForPageAtIndex:(unint64_t)a3 inFolderIcon:(id)a4 imageAppearance:(id)a5 options:(unint64_t)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [v9 folder];
  v12 = [v11 listAtIndex:a3];
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
          v28 = v10;

          v18 = [(SBFolderIconImageCache *)self listLayout];
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

                v26 = [*(*(&v30 + 1) + 8 * j) icons];
                [v20 removeIcons:v26 options:0];
              }

              v23 = [(NSHashTable *)v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v23);
          }

          v10 = v28;
          v19 = [v20 miniGridViewWithListLayout:v18 imageAppearance:v28 options:a6];

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

  v18 = [(SBFolderIconImageCache *)self sharedCache];
  v19 = [v18 miniGridViewForPageAtIndex:a3 inFolderIcon:v9 imageAppearance:v10 options:a6];
LABEL_18:

  return v19;
}

+ (id)gridCellImageOfSize:(CGSize)a3 forIcon:(id)a4 iconImageInfo:(SBIconImageInfo *)a5 compatibleWithTraitCollection:(id)a6 imageAttributes:(unint64_t *)a7
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
  v23 = [a1 gridCellImageOfSize:v21 forIcon:v22 iconImageInfo:a6 imageAppearance:width imageAttributes:{height, v16, v15, v14, v13}];

  return v23;
}

+ (id)gridCellImageOfSize:(CGSize)a3 forIcon:(id)a4 iconImageInfo:(SBIconImageInfo *)a5 imageAppearance:(id)a6 imageAttributes:(unint64_t *)a7
{
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  height = a3.height;
  width = a3.width;
  v19 = a4;
  v20 = [MEMORY[0x1E69DD1B8] sbh_traitCollectionWithIconImageAppearance:a5];
  v21 = [v19 iconImageWithInfo:v20 traitCollection:1 options:{v15, v14, v13, v12}];
  if (!v21)
  {
    if ([v19 hasIconImage])
    {
      v21 = 0;
    }

    else
    {
      v21 = [SBHIconImageCache genericImageWithInfo:v15, v14, v13, v12];
    }
  }

  v22 = [a1 gridCellImageOfSize:v21 forIconImage:{width, height}];

  return v22;
}

+ (id)gridCellImageOfSize:(CGSize)a3 forIconImage:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SBFolderIconImageCache_gridCellImageOfSize_forIconImage___block_invoke;
  v11[3] = &unk_1E808C2C8;
  v12 = v6;
  v13 = width;
  v14 = height;
  v8 = v6;
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

- (id)gridCellImageForIcon:(id)a3 imageAppearance:(id)a4 imageAttributes:(unint64_t *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SBFolderIconImageCache *)self sharedCache];
  v11 = [v10 gridCellImageForIcon:v9 imageAppearance:v8 imageAttributes:a5];

  return v11;
}

+ (BOOL)needsTreatmentForIcon:(id)a3
{
  v3 = a3;
  v4 = ([v3 isTimedOut] & 1) != 0 || objc_msgSend(v3, "progressState") != 0;

  return v4;
}

+ (BOOL)drawTreatmentForIcon:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [a1 needsTreatmentForIcon:a3];
  if (v8)
  {
    v9 = [MEMORY[0x1E69DC888] blackColor];
    v10 = [v9 colorWithAlphaComponent:0.5];
    [v10 setFill];

    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    UIRectFillUsingBlendMode(v12, kCGBlendModeSourceAtop);
  }

  return v8;
}

- (void)rebuildImagesForFolderIcon:(id)a3
{
  v4 = a3;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBFolderIconImageCache rebuildImagesForFolderIcon:];
  }

  v6 = [(SBFolderIconImageCache *)self sharedCache];
  [v6 rebuildImagesForFolderIcon:v4];
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

- (void)informObserversOfUpdateForFolderIcon:(id)a3 imageAppearance:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMapTable *)self->_folderIconObservers objectForKey:v6];
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

        [*(*(&v13 + 1) + 8 * v12++) folderIconImageCache:self didUpdateImagesForFolderIcon:v6 imageAppearance:v7];
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
  v2 = [(SBFolderIconImageCache *)self sharedCache];
  v3 = [v2 numberOfCachedImages];

  return v3;
}

- (unint64_t)numberOfCacheHits
{
  v2 = [(SBFolderIconImageCache *)self sharedCache];
  v3 = [v2 numberOfCacheHits];

  return v3;
}

- (unint64_t)numberOfCacheMisses
{
  v2 = [(SBFolderIconImageCache *)self sharedCache];
  v3 = [v2 numberOfCacheMisses];

  return v3;
}

- (void)performWhenCachingActivityCompletesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderIconImageCache *)self sharedCache];
  [v5 performWhenCachingActivityCompletesUsingBlock:v4];
}

- (id)activityDescription
{
  v2 = [(SBFolderIconImageCache *)self sharedCache];
  v3 = [v2 activityDescription];

  return v3;
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
  v23 = [(SBFolderIconImageCache *)self gridCellImageOfSize:v21 forIcon:v22 iconImageInfo:a6 imageAppearance:width imageAttributes:height, v16, v15, v14, v13];

  return v23;
}

- (BOOL)shouldSkipGridCellImageForIcon:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        if ([*(*(&v10 + 1) + 8 * i) referencesIcon:{v4, v10}])
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

- (id)beginHidingIconsFromLayout:(id)a3 reason:(id)a4 options:(unint64_t)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [[SBHIconLayoutHidingAssertion alloc] initWithDelegate:self icons:v8 reason:v9 options:a5];
  layoutHidingAssertions = self->_layoutHidingAssertions;
  if (!layoutHidingAssertions)
  {
    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v13 = self->_layoutHidingAssertions;
    self->_layoutHidingAssertions = v12;

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

- (void)layoutHidingAssertionDidChange:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 icons];
    v7 = 134218498;
    v8 = self;
    v9 = 2048;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: icon hiding assertion %p did change icons %@", &v7, 0x20u);
  }

  if ([(NSHashTable *)self->_layoutHidingAssertions containsObject:v4])
  {
    [(SBFolderIconImageCache *)self informObserversOfUpdateForAllFolderIcons];
  }
}

- (void)layoutHidingAssertionDidInvalidate:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogFolderIconImageCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "%p: remove icon hiding assertion %p", &v7, 0x16u);
  }

  if ([(NSHashTable *)self->_layoutHidingAssertions containsObject:v4])
  {
    [(NSHashTable *)self->_layoutHidingAssertions removeObject:v4];
    if (![(NSHashTable *)self->_layoutHidingAssertions count])
    {
      layoutHidingAssertions = self->_layoutHidingAssertions;
      self->_layoutHidingAssertions = 0;
    }

    [(SBFolderIconImageCache *)self informObserversOfUpdateForAllFolderIcons];
  }
}

@end