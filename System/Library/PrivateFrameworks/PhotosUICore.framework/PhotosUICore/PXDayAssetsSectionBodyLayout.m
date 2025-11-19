@interface PXDayAssetsSectionBodyLayout
+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)a3 spec:(id)a4 style:(int64_t)a5 numberOfAssets:(int64_t)a6;
- (CGRect)sectionRect;
- (CGSize)_minSizeOfDominantSprites;
- (CGSize)minPlayableSpriteSize;
- (CGSize)minimumItemSize;
- (CGSize)preferredReferenceSize;
- (PXDayAssetsSectionBodyLayout)init;
- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)a3;
- (double)buildingRowContentHeight;
- (double)buildingRowSpacing;
- (id)_inputItemAtIndex:(unsigned int)a3;
- (id)exploreGenerator;
- (id)itemsBetweenItem:(int64_t)a3 andItem:(int64_t)a4;
- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4;
- (id)newGenerator;
- (int64_t)_initialItemInDirection:(unint64_t)a3;
- (int64_t)_itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4;
- (int64_t)itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4;
- (void)contentSizeDidChange;
- (void)enumerateHeroSpritesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)enumerateRowsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setNumberOfPrecedingAssets:(int64_t)a3;
- (void)setSpec:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation PXDayAssetsSectionBodyLayout

- (CGSize)preferredReferenceSize
{
  width = self->_preferredReferenceSize.width;
  height = self->_preferredReferenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_alloc_init(MEMORY[0x1E696AC90]);
  v10 = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 presentedItemsInRect:{x, y, width, height}];

    v9 = v12;
  }

  return v9;
}

- (id)itemsBetweenItem:(int64_t)a3 andItem:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x1E696AC90]);
  v8 = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 presentedItemsBetweenItem:a3 andItem:a4];

    v7 = v10;
  }

  return v7;
}

- (int64_t)_itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v8 = v7;
  if (!v7 || ([v7 presentedRectForItemAtIndex:a3], v10 = v9, v12 = v11, v14 = v13, v16 = v15, v36 = 0u, v37 = 0u, objc_msgSend(v8, "presentedItemLocationForItemAtIndex:", a3), v42.origin.x = v10, v42.origin.y = v12, v42.size.width = v14, v42.size.height = v16, CGRectEqualToRect(v42, *MEMORY[0x1E695F050])))
  {
LABEL_22:
    v18 = v39;
    goto LABEL_23;
  }

  if (a4 - 5 > 1)
  {
    v19 = [v8 presentedNumberOfColumnsAtRow:v36];
    v20 = 0.0;
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v21 = -1.0;
        if (!*(&v36 + 1))
        {
          v21 = 0.0;
        }
      }

      else
      {
        v21 = 0.0;
        if (a4 == 4)
        {
          v21 = 1.0;
          if (*(&v37 + 1) + *(&v36 + 1) >= v19)
          {
            v21 = 0.0;
          }
        }
      }
    }

    else if (a4 == 1)
    {
      v21 = 0.0;
      v20 = -1.0;
      if (v36 <= 0)
      {
        v20 = 0.0;
      }
    }

    else
    {
      v21 = 0.0;
      if (a4 == 2)
      {
        v22 = [v8 presentedNumberOfRows];
        v21 = 0.0;
        v20 = 1.0;
        if (v36 >= v22)
        {
          v20 = 0.0;
        }
      }
    }

    v23 = [(PXDayAssetsSectionBodyLayout *)self itemsInRect:self inLayout:v10 + v14 * v21, v12 + v16 * v20, v14, v16];
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v35[3] = 0x7FEFFFFFFFFFFFFFLL;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__PXDayAssetsSectionBodyLayout__itemClosestToItem_inDirection___block_invoke;
    v26[3] = &unk_1E77439F0;
    v30 = a3;
    v31 = v10;
    v32 = v12;
    v33 = v14;
    v34 = v16;
    v27 = v8;
    v28 = v35;
    v29 = &v38;
    [v23 enumerateIndexesUsingBlock:v26];

    _Block_object_dispose(v35, 8);
    goto LABEL_22;
  }

  v17 = [v8 itemIndexForItem:a3 inDirection:a4];
  v18 = v39;
  v39[3] = v17;
LABEL_23:
  v24 = v18[3];

  _Block_object_dispose(&v38, 8);
  return v24;
}

uint64_t __63__PXDayAssetsSectionBodyLayout__itemClosestToItem_inDirection___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 56) != a2)
  {
    [*(result + 32) presentedRectForItemAtIndex:{a2, v7, v6, v3, v2, v4, v5}];
    PXRectGetCenter();
  }

  return result;
}

- (int64_t)_initialItemInDirection:(unint64_t)a3
{
  v5 = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 && a3 <= 6)
  {
    if (((1 << a3) & 0x34) != 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (((1 << a3) & 0x4A) != 0)
    {
      v7 = [(PXGItemsLayout *)self numberOfItems]- 1;
LABEL_7:
      v6 = [v5 itemIndexForPresentedItemIndex:v7];
    }
  }

  return v6;
}

- (int64_t)itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(PXDayAssetsSectionBodyLayout *)self _initialItemInDirection:a4];
  }

  else
  {
    return [(PXDayAssetsSectionBodyLayout *)self _itemClosestToItem:a3 inDirection:a4];
  }
}

- (void)enumerateRowsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [(PXDayAssetsSectionBodyLayout *)self displayScale];
  v10 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PXDayAssetsSectionBodyLayout_enumerateRowsWithOptions_usingBlock___block_invoke;
  aBlock[3] = &__block_descriptor_40_e30_v24__0d8__NSMutableIndexSet_16l;
  *&aBlock[4] = v9;
  v11 = _Block_copy(aBlock);
  v12 = [(PXGGeneratedLayout *)self generator];
  v13 = [v12 itemCount];
  v14 = malloc_type_calloc(v13, 0x98uLL, 0x100004050011849uLL);
  v28 = v12;
  [v12 getGeometries:v14 inRange:0 withKind:{v13, 0}];
  if (v13 >= 1)
  {
    v15 = v14 + 4;
    do
    {
      v16 = *(v15 - 2);
      v17 = *v15;
      v15 += 19;
      v11[2](v11, v7, v16 - v17 * 0.5);
      v11[2](v11, v8, v16 + v17 * 0.5);
      --v13;
    }

    while (v13);
  }

  free(v14);
  v18 = (v4 >> 1) & 1;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__PXDayAssetsSectionBodyLayout_enumerateRowsWithOptions_usingBlock___block_invoke_2;
  v32[3] = &__block_descriptor_33_e20_q16__0__NSIndexSet_8l;
  v33 = (v4 & 2) != 0;
  v19 = _Block_copy(v32);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__PXDayAssetsSectionBodyLayout_enumerateRowsWithOptions_usingBlock___block_invoke_3;
  v30[3] = &__block_descriptor_33_e23_q24__0q8__NSIndexSet_16l;
  v31 = v18;
  v20 = _Block_copy(v30);
  v21 = v19[2](v19, v7);
  v22 = v19[2](v19, v8);
  [(PXDayAssetsSectionBodyLayout *)self contentSize];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL && v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = v23;
    v25 = *MEMORY[0x1E695EFF8];
    do
    {
      v29 = 0;
      v6[2](v6, &v29, v25, v10 * v21, v24, -(v10 * v21 - v22 * v10));
      if (v29 == 1)
      {
        break;
      }

      v21 = v20[2](v20, v21, v7);
      v26 = v20[2](v20, v22, v8);
      v22 = v26;
    }

    while (v21 != 0x7FFFFFFFFFFFFFFFLL && v26 != 0x7FFFFFFFFFFFFFFFLL);
  }
}

uint64_t __68__PXDayAssetsSectionBodyLayout_enumerateRowsWithOptions_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 lastIndex];
  }

  else
  {
    return [a2 firstIndex];
  }
}

uint64_t __68__PXDayAssetsSectionBodyLayout_enumerateRowsWithOptions_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) == 1)
  {
    return [a3 indexLessThanIndex:a2];
  }

  else
  {
    return [a3 indexGreaterThanIndex:a2];
  }
}

- (double)buildingRowSpacing
{
  if (([(PXDayAssetsSectionBodyLayout *)self style]- 3) <= 2)
  {
    v4 = [(PXGGeneratedLayout *)self generator];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v5 = [v4 metrics];
        [v5 interitemSpacing];
        v7 = v6;

        return v7;
      }

      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      v13 = [v4 px_descriptionForAssertionMessage];
      [v9 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v11, v13}];
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v9 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v11}];
    }

    goto LABEL_4;
  }

  return 0.0;
}

- (double)buildingRowContentHeight
{
  v4 = 0.0;
  if (([(PXDayAssetsSectionBodyLayout *)self style]- 3) <= 2)
  {
    v5 = [(PXGGeneratedLayout *)self generator];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [v5 buildingBlockSize];
        v4 = v6;

        return v4;
      }

      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v10 = NSStringFromClass(v11);
      v12 = [v5 px_descriptionForAssertionMessage];
      [v8 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:445 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v10, v12}];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v8 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:445 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v10}];
    }

    goto LABEL_4;
  }

  return v4;
}

- (CGSize)minPlayableSpriteSize
{
  v3 = [(PXDayAssetsSectionBodyLayout *)self spec];
  v4 = [v3 allowsVideoPlaybackAtAnySize];

  if (v4)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [(PXDayAssetsSectionBodyLayout *)self _minSizeOfDominantSprites];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)enumerateHeroSpritesInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  [(PXDayAssetsSectionBodyLayout *)self minimumItemSize];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PXDayAssetsSectionBodyLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke;
  v13[3] = &unk_1E7743968;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  v12 = v9;
  [(PXDayAssetsSectionBodyLayout *)self enumerateSpritesInRect:v13 usingBlock:x, y, width, height];
}

void __70__PXDayAssetsSectionBodyLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 1) == 2)
  {
    PXRectWithCenterAndSize();
  }
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3
{
  v4 = a3;
  [(PXDayAssetsSectionBodyLayout *)self visibleRect];
  [(PXDayAssetsSectionBodyLayout *)self safeAreaInsets];
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  [v5 topInsetForVisibilityAnchoring];

  PXEdgeInsetsInsetRect();
}

void __81__PXDayAssetsSectionBodyLayout_enumerateVisibleAnchoringSpriteIndexesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a7;
  if (*(a6 + 1) == 2)
  {
    PXRectWithCenterAndSize();
  }
}

- (CGSize)_minSizeOfDominantSprites
{
  v4 = [(PXDayAssetsSectionBodyLayout *)self style];
  if ((v4 - 3) < 3)
  {
    v5 = [(PXGGeneratedLayout *)self generator];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [v5 headerItemSize];
        v7 = v6;
        v9 = v8;
        [v5 minHeroItemsSize];
        if (v7 >= v10)
        {
          v7 = v10;
        }

        if (v9 >= v11)
        {
          v9 = v11;
        }

        goto LABEL_11;
      }

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v18 = NSStringFromClass(v19);
      v20 = [v5 px_descriptionForAssertionMessage];
      [v16 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:331 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v18, v20}];
    }

    else
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [v16 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:331 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v18}];
    }

    goto LABEL_4;
  }

  if ((v4 - 1) > 1)
  {
    v7 = 1.79769313e308;
    v9 = 1.79769313e308;
    goto LABEL_12;
  }

  v5 = [(PXGGeneratedLayout *)self generator];
  [v5 size];
  v7 = v12;
  v9 = v13;
LABEL_11:

LABEL_12:
  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)minimumItemSize
{
  v4 = [(PXDayAssetsSectionBodyLayout *)self style];
  if ((v4 - 3) >= 3)
  {
    if ((v4 - 1) > 1)
    {
      v7 = *off_1E7722230;
      v9 = *(off_1E7722230 + 1);
      goto LABEL_10;
    }

    v10 = [(PXGGeneratedLayout *)self generator];
    v5 = [v10 metrics];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_8:
        [v5 referenceSize];
        v12 = v11;
        [v5 interitemSpacing];
        v14 = (v12 + v13) / [v5 numberOfColumns];
        [v5 interitemSpacing];
        v7 = v14 - v15;
        [v5 itemAspectRatio];
        v9 = v7 / v16;
        goto LABEL_9;
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = [v5 px_descriptionForAssertionMessage];
      [v24 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:299 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator.metrics", v26, v28}];
    }

    else
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v24 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:299 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator.metrics", v26}];
    }

    goto LABEL_8;
  }

  v5 = [(PXGGeneratedLayout *)self generator];
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:307 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v21}];
LABEL_14:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    v23 = [v5 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:307 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v21, v23}];

    goto LABEL_14;
  }

LABEL_4:
  [v5 minimumItemSize];
  v7 = v6;
  v9 = v8;
LABEL_9:

LABEL_10:
  v17 = v7;
  v18 = v9;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGRect)sectionRect
{
  [(PXDayAssetsSectionBodyLayout *)self contentSize];
  [(PXGGeneratedLayout *)self padding];

  PXEdgeInsetsInsetRect();
}

- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PXDayAssetsSectionBodyLayout *)self style];
  if (v9 > 8)
  {
    return 0;
  }

  if (((1 << v9) & 0x1F9) != 0)
  {
    return *off_1E7722038;
  }

  if (![(PXDayAssetsSectionBodyLayout *)self needsUpdate])
  {
    v13 = [(PXGGeneratedLayout *)self generator];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_11:
        v14 = [v13 geometriesRangeCoveringRect:{x, y, width, height}];
        v16 = v15;

        return (v14 | (v16 << 32));
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      v21 = [v13 px_descriptionForAssertionMessage];
      [v17 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:265 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v19, v21}];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v17 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:265 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v19}];
    }

    goto LABEL_11;
  }

  v12 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Requesting spriteIndexRangeCoveringRect on layout that is not up to date.", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = PXDayAssetsSectionBodyLayout;
  return [(PXDayAssetsSectionBodyLayout *)&v22 spriteIndexRangeCoveringRect:x, y, width, height];
}

- (void)contentSizeDidChange
{
  v7.receiver = self;
  v7.super_class = PXDayAssetsSectionBodyLayout;
  [(PXGGeneratedLayout *)&v7 contentSizeDidChange];
  v3 = [(PXDayAssetsSectionBodyLayout *)self style];
  if (v3 > 2)
  {
    if ((v3 - 3) >= 6)
    {
      return;
    }

    goto LABEL_3;
  }

  switch(v3)
  {
    case 0:
      [(PXDayAssetsSectionBodyLayout *)self setLastBaseline:0.0];
      return;
    case 1:
LABEL_3:
      v4 = [(PXGGeneratedLayout *)self generator];
      [v4 size];
      v6 = v5;
LABEL_4:
      [(PXDayAssetsSectionBodyLayout *)self setLastBaseline:v6];

      return;
    case 2:
      v4 = [(PXGGeneratedLayout *)self generator];
      [v4 lastFullRowBottomEdge];
      goto LABEL_4;
  }
}

- (id)_inputItemAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PXGItemsLayout *)self delegate];
  v6 = [v5 generatedLayout:self inputItemAtIndex:v3];

  return v6;
}

- (id)exploreGenerator
{
  v2 = [(PXGGeneratedLayout *)self generator];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)newGenerator
{
  v4 = [(PXDayAssetsSectionBodyLayout *)self style];
  v5 = [(PXDayAssetsSectionBodyLayout *)self spec];
  [v5 interitemSpacing];
  v7 = v6;
  [v5 bodyCornerRadius];
  [(PXGGeneratedLayout *)self setEdgeCornerRadius:?];
  [(PXDayAssetsSectionBodyLayout *)self referenceSize];
  v9 = v8;
  v11 = v10;
  [(PXDayAssetsSectionBodyLayout *)self preferredReferenceSize];
  v14 = v12 == *MEMORY[0x1E695F060];
  v15 = v13 == *(MEMORY[0x1E695F060] + 8);
  if (v14 && v15)
  {
    v13 = v11;
  }

  v51 = v13;
  if (v14 && v15)
  {
    v16 = v9;
  }

  else
  {
    v16 = v12;
  }

  [(PXGGeneratedLayout *)self padding];
  v52 = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(PXDayAssetsSectionBodyLayout *)self safeAreaInsets];
  v25 = v24;
  v49 = v27;
  v50 = v26;
  v48 = v28;
  v29 = [v5 userInterfaceIdiom];
  if ([v5 userInterfaceIdiom] == 2 || v29 == 4)
  {
    PXEdgeInsetsAdd();
  }

  if (v4 > 8)
  {
    goto LABEL_23;
  }

  if (((1 << v4) & 0x38) != 0)
  {
    v35 = [[PXExploreLayoutMetrics alloc] initWithSpec:v5];
    v30 = v35;
    if (v4 == 4)
    {
      v36 = 1;
    }

    else
    {
      if (v4 != 5)
      {
LABEL_27:
        v37 = v16;
        v38 = v21;
        if ([v5 useHorizontalContentGuideInsets])
        {
          [v5 contentGuideInsetsForScrollAxis:1];
          v40 = v39;
          v42 = v37 - (v39 + v41);
        }

        else
        {
          [v5 horizontalMargin];
          v42 = v37 - (v23 + v19) + v43 * -2.0;
          [v5 horizontalMargin];
        }

        v44 = v19 + v40;
        [(PXLayoutMetrics *)v30 setReferenceSize:v42, v51];
        [(PXCuratedLibraryGridLayoutMetrics *)v30 setInteritemSpacing:v7];
        [(PXCuratedLibraryGridLayoutMetrics *)v30 setPadding:v52, v44, v38, v23];
        objc_initWeak(&location, self);
        v34 = [[PXExploreLayoutGenerator alloc] initWithMetrics:v30];
        [(PXExploreLayoutGenerator *)v34 setItemCount:[(PXGItemsLayout *)self numberOfItems]];
        [(PXExploreLayoutGenerator *)v34 setKeyItemIndex:[(PXGGeneratedLayout *)self keyItemIndex]];
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __44__PXDayAssetsSectionBodyLayout_newGenerator__block_invoke;
        v56[3] = &unk_1E7744BC8;
        objc_copyWeak(&v57, &location);
        [(PXExploreLayoutGenerator *)v34 setItemLayoutInfoBlock:v56];
        objc_destroyWeak(&v57);
        objc_destroyWeak(&location);
        goto LABEL_31;
      }

      [(PXExploreLayoutMetrics *)v35 setLargeHeroDensity:0];
      [(PXCuratedLibraryGridLayoutMetrics *)v30 setAllowHeaders:0];
      v36 = 3;
    }

    [(PXCuratedLibraryGridLayoutMetrics *)v30 setLayoutSubtype:v36];
    goto LABEL_27;
  }

  if (((1 << v4) & 0x1C0) != 0)
  {
    v47 = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__PXDayAssetsSectionBodyLayout_newGenerator__block_invoke_2;
    aBlock[3] = &unk_1E7743918;
    aBlock[4] = self;
    aBlock[5] = a2;
    v30 = _Block_copy(aBlock);
    v31 = objc_alloc_init(PXSmallCollectionLayoutMetrics);
    [(PXSmallCollectionLayoutMetrics *)v31 setStyle:(*&v30->super._referenceSize.height)(v30, v4)];
    [(PXLayoutMetrics *)v31 setReferenceSize:v16, v51];
    if (v4 - 7 >= 2)
    {
      v32 = v7;
    }

    else
    {
      v32 = 6.0;
    }

    if (v4 == 6)
    {
      v33 = +[PXLemonadeSettings sharedInstance];
      [v33 detailsViewHeaderAspectRatio];
      [(PXSmallCollectionLayoutMetrics *)v31 setHeaderAspectRatio:?];
    }

    [(PXSmallCollectionLayoutMetrics *)v31 setInteritemSpacing:v32];
    [(PXSmallCollectionLayoutMetrics *)v31 setSafeAreaInsets:v25, v50, v49, v48];
    [(PXSmallCollectionLayoutMetrics *)v31 setEdgesForExtendedLayout:*off_1E7721FB0 | 1];
    [(PXSmallCollectionLayoutMetrics *)v31 setPadding:v52, v19, v47, v23];
    objc_initWeak(&location, self);
    v34 = [[PXSmallCollectionLayoutGenerator alloc] initWithNumberOfItems:[(PXGItemsLayout *)self numberOfItems] metrics:v31];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __44__PXDayAssetsSectionBodyLayout_newGenerator__block_invoke_3;
    v53[3] = &unk_1E7744BC8;
    objc_copyWeak(&v54, &location);
    [(PXExploreLayoutGenerator *)v34 setItemLayoutInfoBlock:v53];
    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);

    goto LABEL_31;
  }

  if (((1 << v4) & 6) != 0)
  {
    v30 = objc_alloc_init(PXCuratedLibraryGridLayoutMetrics);
    -[PXCuratedLibraryGridLayoutMetrics setNumberOfColumns:](v30, "setNumberOfColumns:", [v5 numberOfColumns]);
    [(PXCuratedLibraryGridLayoutMetrics *)v30 setInteritemSpacing:v7];
    [(PXCuratedLibraryGridLayoutMetrics *)v30 setPadding:v52, v19, v21, v23];
    [(PXDayAssetsSectionBodyLayout *)self displayScale];
    [(PXCuratedLibraryGridLayoutMetrics *)v30 setScreenScale:?];
    [(PXLayoutMetrics *)v30 setReferenceSize:v16, v51];
    [(PXCuratedLibraryGridLayoutMetrics *)v30 setNumberOfPrecedingAssets:[(PXDayAssetsSectionBodyLayout *)self numberOfPrecedingAssets]];
    v34 = [[PXCuratedLibraryGridLayoutGenerator alloc] initWithMetrics:v30];
    [(PXExploreLayoutGenerator *)v34 setItemCount:[(PXGItemsLayout *)self numberOfItems]];
    [(PXExploreLayoutGenerator *)v34 setKeyItemIndex:0x7FFFFFFFFFFFFFFFLL];
LABEL_31:

    goto LABEL_32;
  }

LABEL_23:
  if (!v4)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    [v46 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:123 description:@"None style is not supported"];

    abort();
  }

  v34 = 0;
LABEL_32:

  return v34;
}

id __44__PXDayAssetsSectionBodyLayout_newGenerator__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _inputItemAtIndex:a2];

  return v4;
}

uint64_t __44__PXDayAssetsSectionBodyLayout_newGenerator__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 6) >= 3)
  {
    v9 = v3;
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:185 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return a2 - 6;
}

id __44__PXDayAssetsSectionBodyLayout_newGenerator__block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _inputItemAtIndex:a2];

  return v4;
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXDayAssetsSectionBodyLayout;
  [(PXDayAssetsSectionBodyLayout *)&v3 safeAreaInsetsDidChange];
  [(PXGGeneratedLayout *)self metricsDidChange];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXDayAssetsSectionBodyLayout;
  [(PXGGeneratedLayout *)&v3 referenceSizeDidChange];
  [(PXGGeneratedLayout *)self metricsDidChange];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(PXGGeneratedLayout *)self metricsDidChange];
  }
}

- (void)setNumberOfPrecedingAssets:(int64_t)a3
{
  if (self->_numberOfPrecedingAssets != a3)
  {
    self->_numberOfPrecedingAssets = a3;
    [(PXGGeneratedLayout *)self metricsDidChange];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXGGeneratedLayout *)self metricsDidChange];
    v5 = v6;
  }
}

- (PXDayAssetsSectionBodyLayout)init
{
  v9.receiver = self;
  v9.super_class = PXDayAssetsSectionBodyLayout;
  v2 = [(PXCuratedLibraryAssetsSectionGeneratedLayout *)&v9 init];
  if (v2)
  {
    v3 = +[PXKeyboardSettings sharedInstance];
    v4 = [v3 daysFocusAnimationStyle];
    [v3 daysFocusPadding];
    [(PXGItemsLayout *)v2 setAnimationParameters:v4 forStylableType:v5, 1];
    v6 = +[PXCursorInteractionSettings sharedInstance];
    if ([v6 enableDaysEffect])
    {
      [v6 daysPadding];
      [(PXGItemsLayout *)v2 setAnimationParameters:1 forStylableType:v7, 0];
    }
  }

  return v2;
}

+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)a3 spec:(id)a4 style:(int64_t)a5 numberOfAssets:(int64_t)a6
{
  width = a3.width;
  if (a6)
  {
    v9 = [off_1E7721798 photosGridLayoutColumnsForWidth:{a4, a3.width, a3.height}];
    v10 = width + width / v9 * (a6 / v9);
    if (a5 == 2)
    {
      v10 = width / v9 * (a6 / v9);
    }
  }

  else
  {
    v10 = 0.0;
  }

  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

@end