@interface PXDayAssetsSectionBodyLayout
+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)size spec:(id)spec style:(int64_t)style numberOfAssets:(int64_t)assets;
- (CGRect)sectionRect;
- (CGSize)_minSizeOfDominantSprites;
- (CGSize)minPlayableSpriteSize;
- (CGSize)minimumItemSize;
- (CGSize)preferredReferenceSize;
- (PXDayAssetsSectionBodyLayout)init;
- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)rect;
- (double)buildingRowContentHeight;
- (double)buildingRowSpacing;
- (id)_inputItemAtIndex:(unsigned int)index;
- (id)exploreGenerator;
- (id)itemsBetweenItem:(int64_t)item andItem:(int64_t)andItem;
- (id)itemsInRect:(CGRect)rect inLayout:(id)layout;
- (id)newGenerator;
- (int64_t)_initialItemInDirection:(unint64_t)direction;
- (int64_t)_itemClosestToItem:(int64_t)item inDirection:(unint64_t)direction;
- (int64_t)itemClosestToItem:(int64_t)item inDirection:(unint64_t)direction;
- (void)contentSizeDidChange;
- (void)enumerateHeroSpritesInRect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateRowsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setNumberOfPrecedingAssets:(int64_t)assets;
- (void)setSpec:(id)spec;
- (void)setStyle:(int64_t)style;
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

- (id)itemsInRect:(CGRect)rect inLayout:(id)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = objc_alloc_init(MEMORY[0x1E696AC90]);
  exploreGenerator = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v11 = exploreGenerator;
  if (exploreGenerator)
  {
    v12 = [exploreGenerator presentedItemsInRect:{x, y, width, height}];

    v9 = v12;
  }

  return v9;
}

- (id)itemsBetweenItem:(int64_t)item andItem:(int64_t)andItem
{
  v7 = objc_alloc_init(MEMORY[0x1E696AC90]);
  exploreGenerator = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v9 = exploreGenerator;
  if (exploreGenerator)
  {
    v10 = [exploreGenerator presentedItemsBetweenItem:item andItem:andItem];

    v7 = v10;
  }

  return v7;
}

- (int64_t)_itemClosestToItem:(int64_t)item inDirection:(unint64_t)direction
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0x7FFFFFFFFFFFFFFFLL;
  exploreGenerator = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v8 = exploreGenerator;
  if (!exploreGenerator || ([exploreGenerator presentedRectForItemAtIndex:item], v10 = v9, v12 = v11, v14 = v13, v16 = v15, v36 = 0u, v37 = 0u, objc_msgSend(v8, "presentedItemLocationForItemAtIndex:", item), v42.origin.x = v10, v42.origin.y = v12, v42.size.width = v14, v42.size.height = v16, CGRectEqualToRect(v42, *MEMORY[0x1E695F050])))
  {
LABEL_22:
    v18 = v39;
    goto LABEL_23;
  }

  if (direction - 5 > 1)
  {
    v19 = [v8 presentedNumberOfColumnsAtRow:v36];
    v20 = 0.0;
    if (direction > 2)
    {
      if (direction == 3)
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
        if (direction == 4)
        {
          v21 = 1.0;
          if (*(&v37 + 1) + *(&v36 + 1) >= v19)
          {
            v21 = 0.0;
          }
        }
      }
    }

    else if (direction == 1)
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
      if (direction == 2)
      {
        presentedNumberOfRows = [v8 presentedNumberOfRows];
        v21 = 0.0;
        v20 = 1.0;
        if (v36 >= presentedNumberOfRows)
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
    itemCopy = item;
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

  v17 = [v8 itemIndexForItem:item inDirection:direction];
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

- (int64_t)_initialItemInDirection:(unint64_t)direction
{
  exploreGenerator = [(PXDayAssetsSectionBodyLayout *)self exploreGenerator];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (exploreGenerator && direction <= 6)
  {
    if (((1 << direction) & 0x34) != 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (((1 << direction) & 0x4A) != 0)
    {
      v7 = [(PXGItemsLayout *)self numberOfItems]- 1;
LABEL_7:
      v6 = [exploreGenerator itemIndexForPresentedItemIndex:v7];
    }
  }

  return v6;
}

- (int64_t)itemClosestToItem:(int64_t)item inDirection:(unint64_t)direction
{
  if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(PXDayAssetsSectionBodyLayout *)self _initialItemInDirection:direction];
  }

  else
  {
    return [(PXDayAssetsSectionBodyLayout *)self _itemClosestToItem:item inDirection:direction];
  }
}

- (void)enumerateRowsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
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
  generator = [(PXGGeneratedLayout *)self generator];
  itemCount = [generator itemCount];
  v14 = malloc_type_calloc(itemCount, 0x98uLL, 0x100004050011849uLL);
  v28 = generator;
  [generator getGeometries:v14 inRange:0 withKind:{itemCount, 0}];
  if (itemCount >= 1)
  {
    v15 = v14 + 4;
    do
    {
      v16 = *(v15 - 2);
      v17 = *v15;
      v15 += 19;
      v11[2](v11, v7, v16 - v17 * 0.5);
      v11[2](v11, v8, v16 + v17 * 0.5);
      --itemCount;
    }

    while (itemCount);
  }

  free(v14);
  v18 = (optionsCopy >> 1) & 1;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __68__PXDayAssetsSectionBodyLayout_enumerateRowsWithOptions_usingBlock___block_invoke_2;
  v32[3] = &__block_descriptor_33_e20_q16__0__NSIndexSet_8l;
  v33 = (optionsCopy & 2) != 0;
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
      blockCopy[2](blockCopy, &v29, v25, v10 * v21, v24, -(v10 * v21 - v22 * v10));
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
    generator = [(PXGGeneratedLayout *)self generator];
    if (generator)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        metrics = [generator metrics];
        [metrics interitemSpacing];
        v7 = v6;

        return v7;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = objc_opt_class();
      v11 = NSStringFromClass(v12);
      px_descriptionForAssertionMessage = [generator px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v11, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:464 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v11}];
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
    generator = [(PXGGeneratedLayout *)self generator];
    if (generator)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [generator buildingBlockSize];
        v4 = v6;

        return v4;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v10 = NSStringFromClass(v11);
      px_descriptionForAssertionMessage = [generator px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:445 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v10, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:445 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v10}];
    }

    goto LABEL_4;
  }

  return v4;
}

- (CGSize)minPlayableSpriteSize
{
  spec = [(PXDayAssetsSectionBodyLayout *)self spec];
  allowsVideoPlaybackAtAnySize = [spec allowsVideoPlaybackAtAnySize];

  if (allowsVideoPlaybackAtAnySize)
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

- (void)enumerateHeroSpritesInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  [(PXDayAssetsSectionBodyLayout *)self minimumItemSize];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PXDayAssetsSectionBodyLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke;
  v13[3] = &unk_1E7743968;
  v15 = v10;
  v16 = v11;
  v14 = blockCopy;
  v12 = blockCopy;
  [(PXDayAssetsSectionBodyLayout *)self enumerateSpritesInRect:v13 usingBlock:x, y, width, height];
}

void __70__PXDayAssetsSectionBodyLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 1) == 2)
  {
    PXRectWithCenterAndSize();
  }
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block
{
  blockCopy = block;
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
  style = [(PXDayAssetsSectionBodyLayout *)self style];
  if ((style - 3) < 3)
  {
    generator = [(PXGGeneratedLayout *)self generator];
    if (generator)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        [generator headerItemSize];
        v7 = v6;
        v9 = v8;
        [generator minHeroItemsSize];
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

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = objc_opt_class();
      v18 = NSStringFromClass(v19);
      px_descriptionForAssertionMessage = [generator px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:331 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v18, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:331 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v18}];
    }

    goto LABEL_4;
  }

  if ((style - 1) > 1)
  {
    v7 = 1.79769313e308;
    v9 = 1.79769313e308;
    goto LABEL_12;
  }

  generator = [(PXGGeneratedLayout *)self generator];
  [generator size];
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
  style = [(PXDayAssetsSectionBodyLayout *)self style];
  if ((style - 3) >= 3)
  {
    if ((style - 1) > 1)
    {
      v7 = *off_1E7722230;
      v9 = *(off_1E7722230 + 1);
      goto LABEL_10;
    }

    generator = [(PXGGeneratedLayout *)self generator];
    metrics = [generator metrics];

    if (metrics)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_8:
        [metrics referenceSize];
        v12 = v11;
        [metrics interitemSpacing];
        v14 = (v12 + v13) / [metrics numberOfColumns];
        [metrics interitemSpacing];
        v7 = v14 - v15;
        [metrics itemAspectRatio];
        v9 = v7 / v16;
        goto LABEL_9;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      px_descriptionForAssertionMessage = [metrics px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:299 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator.metrics", v26, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:299 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator.metrics", v26}];
    }

    goto LABEL_8;
  }

  metrics = [(PXGGeneratedLayout *)self generator];
  if (!metrics)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:307 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v21}];
LABEL_14:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    px_descriptionForAssertionMessage2 = [metrics px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:307 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v21, px_descriptionForAssertionMessage2}];

    goto LABEL_14;
  }

LABEL_4:
  [metrics minimumItemSize];
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

- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  style = [(PXDayAssetsSectionBodyLayout *)self style];
  if (style > 8)
  {
    return 0;
  }

  if (((1 << style) & 0x1F9) != 0)
  {
    return *off_1E7722038;
  }

  if (![(PXDayAssetsSectionBodyLayout *)self needsUpdate])
  {
    generator = [(PXGGeneratedLayout *)self generator];
    if (generator)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_11:
        v14 = [generator geometriesRangeCoveringRect:{x, y, width, height}];
        v16 = v15;

        return (v14 | (v16 << 32));
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      px_descriptionForAssertionMessage = [generator px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:265 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.generator", v19, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:265 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.generator", v19}];
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
  style = [(PXDayAssetsSectionBodyLayout *)self style];
  if (style > 2)
  {
    if ((style - 3) >= 6)
    {
      return;
    }

    goto LABEL_3;
  }

  switch(style)
  {
    case 0:
      [(PXDayAssetsSectionBodyLayout *)self setLastBaseline:0.0];
      return;
    case 1:
LABEL_3:
      generator = [(PXGGeneratedLayout *)self generator];
      [generator size];
      v6 = v5;
LABEL_4:
      [(PXDayAssetsSectionBodyLayout *)self setLastBaseline:v6];

      return;
    case 2:
      generator = [(PXGGeneratedLayout *)self generator];
      [generator lastFullRowBottomEdge];
      goto LABEL_4;
  }
}

- (id)_inputItemAtIndex:(unsigned int)index
{
  v3 = *&index;
  delegate = [(PXGItemsLayout *)self delegate];
  v6 = [delegate generatedLayout:self inputItemAtIndex:v3];

  return v6;
}

- (id)exploreGenerator
{
  generator = [(PXGGeneratedLayout *)self generator];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = generator;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)newGenerator
{
  style = [(PXDayAssetsSectionBodyLayout *)self style];
  spec = [(PXDayAssetsSectionBodyLayout *)self spec];
  [spec interitemSpacing];
  v7 = v6;
  [spec bodyCornerRadius];
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
  userInterfaceIdiom = [spec userInterfaceIdiom];
  if ([spec userInterfaceIdiom] == 2 || userInterfaceIdiom == 4)
  {
    PXEdgeInsetsAdd();
  }

  if (style > 8)
  {
    goto LABEL_23;
  }

  if (((1 << style) & 0x38) != 0)
  {
    v35 = [[PXExploreLayoutMetrics alloc] initWithSpec:spec];
    v30 = v35;
    if (style == 4)
    {
      v36 = 1;
    }

    else
    {
      if (style != 5)
      {
LABEL_27:
        v37 = v16;
        v38 = v21;
        if ([spec useHorizontalContentGuideInsets])
        {
          [spec contentGuideInsetsForScrollAxis:1];
          v40 = v39;
          v42 = v37 - (v39 + v41);
        }

        else
        {
          [spec horizontalMargin];
          v42 = v37 - (v23 + v19) + v43 * -2.0;
          [spec horizontalMargin];
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

  if (((1 << style) & 0x1C0) != 0)
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
    [(PXSmallCollectionLayoutMetrics *)v31 setStyle:(*&v30->super._referenceSize.height)(v30, style)];
    [(PXLayoutMetrics *)v31 setReferenceSize:v16, v51];
    if (style - 7 >= 2)
    {
      v32 = v7;
    }

    else
    {
      v32 = 6.0;
    }

    if (style == 6)
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

  if (((1 << style) & 6) != 0)
  {
    v30 = objc_alloc_init(PXCuratedLibraryGridLayoutMetrics);
    -[PXCuratedLibraryGridLayoutMetrics setNumberOfColumns:](v30, "setNumberOfColumns:", [spec numberOfColumns]);
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
  if (!style)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDayAssetsSectionBodyLayout.m" lineNumber:123 description:@"None style is not supported"];

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

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(PXGGeneratedLayout *)self metricsDidChange];
  }
}

- (void)setNumberOfPrecedingAssets:(int64_t)assets
{
  if (self->_numberOfPrecedingAssets != assets)
  {
    self->_numberOfPrecedingAssets = assets;
    [(PXGGeneratedLayout *)self metricsDidChange];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXGGeneratedLayout *)self metricsDidChange];
    specCopy = v6;
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
    daysFocusAnimationStyle = [v3 daysFocusAnimationStyle];
    [v3 daysFocusPadding];
    [(PXGItemsLayout *)v2 setAnimationParameters:daysFocusAnimationStyle forStylableType:v5, 1];
    v6 = +[PXCursorInteractionSettings sharedInstance];
    if ([v6 enableDaysEffect])
    {
      [v6 daysPadding];
      [(PXGItemsLayout *)v2 setAnimationParameters:1 forStylableType:v7, 0];
    }
  }

  return v2;
}

+ (CGSize)estimatedSizeWithReferenceSize:(CGSize)size spec:(id)spec style:(int64_t)style numberOfAssets:(int64_t)assets
{
  width = size.width;
  if (assets)
  {
    v9 = [off_1E7721798 photosGridLayoutColumnsForWidth:{spec, size.width, size.height}];
    v10 = width + width / v9 * (assets / v9);
    if (style == 2)
    {
      v10 = width / v9 * (assets / v9);
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