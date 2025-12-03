@interface PXGDecoratingLayout
- (BOOL)canHandleVisibleRectRejection;
- (BOOL)isSpriteIndex:(unsigned int)index decoratingSpriteWithIndex:(unsigned int *)withIndex;
- (BOOL)spritesAreInSyncWithDecoratedLayout;
- (CGRect)sublayout:(id)sublayout visibleRectForRequestedVisibleRect:(CGRect)rect;
- (PXGAssetBackgroundDecorationSource)assetBackgroundDecorationSource;
- (PXGAssetBadgeDecorationSource)assetBadgeDecorationSource;
- (PXGAssetBadgeDecorationSource)assetProgressDecorationSource;
- (PXGCaptionDecorationSource)captionDecorationSource;
- (PXGDebugDecorationSource)debugDecorationSource;
- (PXGDecoratingLayout)init;
- (PXGDecoratingLayout)initWithDecoratedLayout:(id)layout;
- (PXGDragDecorationSource)dragDecorationSource;
- (PXGHighlightDecorationSource)highlightDecorationSource;
- (PXGItemsGeometry)itemsGeometry;
- (PXGLayoutContentSource)decorationSource;
- (PXGSelectionDecorationSource)selectionDecorationSource;
- (PXGSolidColorOverlayDecorationSource)solidColorOverlayDecorationSource;
- (PXGTapbackDecorationSource)tapbackDecorationSource;
- (PXGViewDecorationSource)viewDecorationSource;
- (double)lastBaseline;
- (id)axContentInfoAtSpriteIndex:(unsigned int)index;
- (id)axSpriteIndexes;
- (id)currentDataSourceChange;
- (id)description;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)itemsLayout;
- (id)layoutForItemChanges;
- (id)preferredFocusLayouts;
- (int64_t)decoratingTypeForSpriteIndex:(unsigned int)index;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (unsigned)decorationIndexForSpriteIndex:(unsigned int)index;
- (unsigned)spriteIndexForDecorationIndex:(unsigned int)index decoratingSpriteIndex:(unsigned int)spriteIndex;
- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (unsigned)viewHostingSpriteIndexForSublayout:(id)sublayout spriteIndex:(unsigned int)index;
- (void)_applyDecoratedLayoutChangeDetails:(id)details;
- (void)_invalidateDecorationForSpriteRange:(_PXGSpriteIndexRange)range inLayout:(id)layout invalidateSprites:(BOOL)sprites;
- (void)_updateDecoratedLayout;
- (void)_updateDecorationSources;
- (void)_updateDecorationSprites;
- (void)_updateReloadSprites;
- (void)addActiveDecorations:(id)decorations;
- (void)alphaDidChange;
- (void)dealloc;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index;
- (void)referenceSizeDidChange;
- (void)removeSublayoutsInRange:(_NSRange)range;
- (void)safeAreaInsetsDidChange;
- (void)setActiveDecorations:(id)decorations;
- (void)setContentSource:(id)source;
- (void)setDecoratedLayout:(id)layout;
- (void)setDecorationSource:(id)source;
- (void)setEnabled:(BOOL)enabled;
- (void)setLastBaseline:(double)baseline;
- (void)sublayout:(id)sublayout didApplySpriteChangeDetails:(id)details fromDescendentSublayout:(id)descendentSublayout;
- (void)sublayoutDidChangeContentSize:(id)size;
- (void)sublayoutDidChangeLastBaseline:(id)baseline;
- (void)sublayoutNeedsUpdate:(id)update;
- (void)update;
- (void)userInterfaceDirectionDidChange;
- (void)viewEnvironmentWillChange:(id)change;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXGDecoratingLayout

- (PXGDecoratingLayout)init
{
  v12.receiver = self;
  v12.super_class = PXGDecoratingLayout;
  v2 = [(PXGLayout *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
    invalidatedDecoratedSpriteIndexes = v2->_invalidatedDecoratedSpriteIndexes;
    v2->_invalidatedDecoratedSpriteIndexes = v3;

    v2->_activeDecorationsCount = 5;
    v5 = malloc_type_calloc(5uLL, 4uLL, 0x100004052888210uLL);
    v2->_activeDecorationSpriteIndexes = v5;
    if (v2->_activeDecorationsCount)
    {
      v6 = 0;
      do
      {
        v5[v6++] = 0;
      }

      while (v6 < v2->_activeDecorationsCount);
    }

    v7 = 0;
    v8 = xmmword_21AE2D360;
    v9 = vdupq_n_s64(5uLL);
    v10 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v9, v8)).u8[0])
      {
        v5[v7] = v7;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v8)).i32[1])
      {
        v5[v7 + 1] = v7 + 1;
      }

      v7 += 2;
      v8 = vaddq_s64(v8, v10);
    }

    while (v7 != 6);
    v2->_enabled = 1;
    v2->_focusRingType = 1;
  }

  return v2;
}

- (BOOL)spritesAreInSyncWithDecoratedLayout
{
  enabled = [(PXGDecoratingLayout *)self enabled];
  if (enabled)
  {
    LOBYTE(enabled) = (self->_updateFlags.needsUpdate & 4) == 0;
  }

  return enabled;
}

- (id)itemsLayout
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  itemsLayout = [decoratedLayout itemsLayout];

  return itemsLayout;
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v8 referenceSizeDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout referenceSizeDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGDecoratingLayout.m" lineNumber:708 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)visibleRectDidChange
{
  v8.receiver = self;
  v8.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v8 visibleRectDidChange];
  if (!self->_isUpdatingDecoratedLayout)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout visibleRectDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGDecoratingLayout.m" lineNumber:715 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v8 displayScaleDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout displayScaleDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGDecoratingLayout.m" lineNumber:721 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v8 safeAreaInsetsDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout safeAreaInsetsDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGDecoratingLayout.m" lineNumber:726 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGDecoratingLayout.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout update]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXGDecoratingLayout.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGDecoratingLayout *)self _updateDecoratedLayout];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout update]"];
        [currentHandler2 handleFailureInFunction:v11 file:@"PXGDecoratingLayout.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXGDecoratingLayout *)self _updateDecorationSources];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout update]"];
      [currentHandler3 handleFailureInFunction:v13 file:@"PXGDecoratingLayout.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXGDecoratingLayout *)self _updateReloadSprites];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout update]"];
      [currentHandler4 handleFailureInFunction:v15 file:@"PXGDecoratingLayout.m" lineNumber:281 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXGDecoratingLayout *)self _updateDecorationSprites];
      v7 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v7)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout update]"];
      [currentHandler5 handleFailureInFunction:v17 file:@"PXGDecoratingLayout.m" lineNumber:284 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v18.receiver = self;
  v18.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v18 update];
}

- (void)_updateDecoratedLayout
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  if (decoratedLayout)
  {
    v15 = decoratedLayout;
    if (self->_isUpdatingDecoratedLayout)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:299 description:{@"Invalid parameter not satisfying: %@", @"!_isUpdatingDecoratedLayout"}];
    }

    self->_isUpdatingDecoratedLayout = 1;
    viewEnvironment = [(PXGLayout *)self viewEnvironment];
    [v15 setViewEnvironment:viewEnvironment];

    [(PXGLayout *)self referenceSize];
    [v15 setReferenceSize:?];
    [(PXGLayout *)self referenceDepth];
    [v15 setReferenceDepth:?];
    [(PXGLayout *)self visibleRect];
    [v15 setVisibleRect:?];
    [(PXGLayout *)self displayScale];
    [v15 setDisplayScale:?];
    [(PXGLayout *)self safeAreaInsets];
    [v15 setSafeAreaInsets:?];
    [v15 setUserInterfaceDirection:{-[PXGLayout userInterfaceDirection](self, "userInterfaceDirection")}];
    v6 = [v15 createAnchorFromSuperlayoutWithSublayoutIndex:0 sublayoutPositionEdges:15 ignoringScrollingAnimationAnchors:0];
    autoInvalidate = [v6 autoInvalidate];

    [v15 updateIfNeeded];
    [v15 contentSize];
    v9 = v8;
    v11 = v10;
    sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
    geometries = [sublayoutDataStore geometries];

    geometries[6] = 0.0;
    geometries[7] = 0.0;
    geometries[8] = 0.0;
    geometries[4] = v9;
    geometries[5] = v11;
    [(PXGLayout *)self setContentSize:v9, v11];
    [v15 visibleRect];
    [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:?];
    decoratedLayout = v15;
    self->_isUpdatingDecoratedLayout = 0;
  }
}

- (PXGSelectionDecorationSource)selectionDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDecorationSource);

  return WeakRetained;
}

- (void)_updateDecorationSources
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  contentSource = [(PXGLayout *)self contentSource];
  decorationSource = [(PXGDecoratingLayout *)self decorationSource];
  v5 = decorationSource;
  if (decorationSource)
  {
    contentSource2 = decorationSource;
  }

  else
  {
    contentSource2 = [decoratedLayout contentSource];
  }

  v7 = contentSource2;

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if (([v8 wantsAssetBadgeDecorationsInLayout:decoratedLayout] & 1) == 0)
  {

LABEL_10:
    v9 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = v8;
    v8 = v9;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  objc_storeWeak(&self->_assetBadgeDecorationSource, v8);
  objc_storeWeak(&self->_assetProgressDecorationSource, v9);
  if (objc_opt_respondsToSelector())
  {
    objc_storeWeak(&self->_assetBackgroundDecorationSource, v7);
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = v7;
    self->_wantsCaptionDecorations = [v10 wantsCaptionDecorationsInLayout:decoratedLayout];
  }

  else
  {
    v10 = 0;
  }

  objc_storeWeak(&self->_captionDecorationSource, v10);
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 wantsDecorationSpritesHostedInDecoratedSpriteForLayout:self];
  }

  else
  {
    v11 = 0;
  }

  self->_wantsDecorationSpritesHostedInDecoratedSprite = v11;
  v28 = v9;
  v29 = v8;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v12 = v7;
    v13 = [v12 selectionDecorationStyleInLayout:decoratedLayout];
    v14 = [v12 selectionDecorationAdditionsInLayout:decoratedLayout];
    if (v13 | v14)
    {
      v15 = v14;
      goto LABEL_25;
    }
  }

  v12 = 0;
  v13 = 0;
  v15 = 0;
LABEL_25:
  objc_storeWeak(&self->_selectionDecorationSource, v12);
  self->_selectionDecorationStyle = v13;
  self->_selectionDecorationOptions = v15;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v16 = contentSource;
  }

  else
  {
    v16 = 0;
  }

  v26 = v16;
  objc_storeStrong(&self->_shadowSource, v16);
  if (objc_opt_respondsToSelector())
  {
    v17 = contentSource;
  }

  else
  {
    v17 = 0;
  }

  v25 = v17;
  objc_storeStrong(&self->_shadowDecorationSource, v17);
  if (objc_opt_respondsToSelector())
  {
    v18 = v7;
  }

  else
  {
    v18 = 0;
  }

  objc_storeWeak(&self->_highlightDecorationSource, v18);
  if (objc_opt_respondsToSelector())
  {
    v19 = v7;
  }

  else
  {
    v19 = 0;
  }

  objc_storeWeak(&self->_solidColorOverlayDecorationSource, v19);
  if (objc_opt_respondsToSelector())
  {
    v20 = [v7 focusRingTypeInLayout:{decoratedLayout, v25, v26}];
  }

  else
  {
    v20 = 1;
  }

  v27 = v10;
  self->_focusRingType = v20;
  if (objc_opt_respondsToSelector())
  {
    v21 = v7;
  }

  else
  {
    v21 = 0;
  }

  objc_storeWeak(&self->_dragDecorationSource, v21);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v22 = v7;
    if ([v22 wantsDebugDecorationInLayout:decoratedLayout])
    {
      goto LABEL_49;
    }
  }

  v22 = 0;
LABEL_49:
  objc_storeWeak(&self->_debugDecorationSource, v22);
  if (objc_opt_respondsToSelector())
  {
    v23 = v7;
  }

  else
  {
    v23 = 0;
  }

  objc_storeWeak(&self->_viewDecorationSource, v23);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 wantsTapbackDecorationInLayout:decoratedLayout])
  {
    v24 = v7;
  }

  else
  {
    v24 = 0;
  }

  objc_storeWeak(&self->_tapbackDecorationSource, v24);
}

- (PXGLayoutContentSource)decorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_decorationSource);

  return WeakRetained;
}

- (void)_updateDecorationSprites
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  if (decoratedLayout && [(NSMutableIndexSet *)self->_invalidatedDecoratedSpriteIndexes count]&& [(PXGDecoratingLayout *)self enabled])
  {
    numberOfDecoratingSpritesPerDecoratedSprite = [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite];
    if (numberOfDecoratingSpritesPerDecoratedSprite)
    {
      v5 = numberOfDecoratingSpritesPerDecoratedSprite;
      [(PXGLayout *)self alpha];
      v7 = v6;
      activeDecorationSpriteIndexes = self->_activeDecorationSpriteIndexes;
      v21 = [(PXGDecoratingLayout *)self scrollableAxis]== 2 && [(PXGLayout *)self userInterfaceDirection]== 1;
      itemsLayout = [(PXGDecoratingLayout *)self itemsLayout];
      insetDelegate = [itemsLayout insetDelegate];
      WeakRetained = objc_loadWeakRetained(&self->_assetBackgroundDecorationSource);
      v10 = objc_loadWeakRetained(&self->_selectionDecorationSource);
      v11 = objc_loadWeakRetained(&self->_tapbackDecorationSource);
      shouldDecorateUndefinedMediaKind = [decoratedLayout shouldDecorateUndefinedMediaKind];
      shouldUpdateDecorationMediaTargetSizes = [decoratedLayout shouldUpdateDecorationMediaTargetSizes];
      invalidatedDecoratedSpriteIndexes = self->_invalidatedDecoratedSpriteIndexes;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47__PXGDecoratingLayout__updateDecorationSprites__block_invoke;
      v23[3] = &unk_2782A9F68;
      v24 = decoratedLayout;
      v25 = itemsLayout;
      v26 = WeakRetained;
      selfCopy = self;
      v33 = v5;
      v34 = v21;
      v35 = shouldDecorateUndefinedMediaKind;
      v28 = insetDelegate;
      v29 = v10;
      v30 = v11;
      v31 = activeDecorationSpriteIndexes;
      v32 = v7;
      v36 = shouldUpdateDecorationMediaTargetSizes;
      v14 = v11;
      v15 = v10;
      v16 = insetDelegate;
      v17 = WeakRetained;
      v18 = itemsLayout;
      [(NSMutableIndexSet *)invalidatedDecoratedSpriteIndexes enumerateRangesUsingBlock:v23];
      [(NSMutableIndexSet *)self->_invalidatedDecoratedSpriteIndexes removeAllIndexes];
    }

    else
    {
      [(NSMutableIndexSet *)self->_invalidatedDecoratedSpriteIndexes removeAllIndexes];
    }
  }
}

- (int64_t)scrollableAxis
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  scrollableAxis = [decoratedLayout scrollableAxis];

  return scrollableAxis;
}

void __47__PXGDecoratingLayout__updateDecorationSprites__block_invoke(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a2 | (a3 << 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__PXGDecoratingLayout__updateDecorationSprites__block_invoke_2;
  v11[3] = &unk_2782A9F40;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v19 = *(a1 + 104);
  v10 = *(a1 + 56);
  v8 = *(&v10 + 1);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v10;
  v17 = *(a1 + 88);
  v20 = *(a1 + 108);
  v14 = *(a1 + 72);
  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  v18 = *(a1 + 96);
  v21 = *(a1 + 110);
  [v5 enumerateSpritesInRange:v4 usingBlock:v11];
}

void __47__PXGDecoratingLayout__updateDecorationSprites__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = a7;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = a2;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = [*(a1 + 32) itemForSpriteIndex:a2];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = a4;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = a5;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = a6;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = [*(a1 + 40) wantsBackgroundForZeroInset];
  v13 = (*(a1 + 104) * a2) | ((*(a1 + 104) * HIDWORD(a2)) << 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__PXGDecoratingLayout__updateDecorationSprites__block_invoke_3;
  v20[3] = &unk_2782A9F18;
  v19 = *(a1 + 40);
  v14 = v19.i64[0];
  v34 = *(a1 + 104);
  v26 = v43;
  v27 = v41;
  v15 = *(a1 + 56);
  v16 = *(a1 + 32);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  v21 = vextq_s8(v19, v19, 8uLL);
  v22 = v17;
  v28 = v42;
  v29 = v37;
  v18 = *(a1 + 88);
  v31 = v39;
  v32 = v18;
  v35 = *(a1 + 108);
  v30 = v40;
  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v33 = *(a1 + 96);
  v36 = *(a1 + 110);
  [v19.i64[1] modifySpritesInRange:v13 state:v20];

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
}

void __47__PXGDecoratingLayout__updateDecorationSprites__block_invoke_3(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = a2;
  v9 = HIDWORD(a2);
  [*(a1 + 32) displayScale];
  v95 = v9;
  if (!v9)
  {
    return;
  }

  v11 = 0;
  v12 = v10;
  v99 = v12;
  v100 = *(MEMORY[0x277CBF3A8] + 8);
  v101 = *MEMORY[0x277CBF3A8];
  v102 = *(MEMORY[0x277CBF348] + 8);
  v103 = *MEMORY[0x277CBF348];
  do
  {
    v13 = [*(a1 + 40) assetBackgroundStyleForSpriteIndex:*(*(*(a1 + 88) + 8) + 24) inLayout:*(a1 + 32)];
    if (!*(a1 + 152))
    {
      goto LABEL_78;
    }

    v14 = v13;
    v15 = 0;
    v96 = v11;
    v16 = v94 + v11;
    do
    {
      v17 = vcvtq_f64_f32(*(*(*(*(a1 + 96) + 8) + 24) + 24));
      v18 = *(a1 + 48);
      if (v18 && (([v18 itemsLayout:*(a1 + 56) insetForItem:*(*(*(a1 + 104) + 8) + 24)], v20 = v19, v22 = v21, PXSizeAdd(), v17.f64[0] = v23, v17.f64[1] = v24, v20 == v101) ? (v25 = v22 == v100) : (v25 = 0), v25))
      {
        v26 = *(*(*(a1 + 112) + 8) + 24);
      }

      else
      {
        v26 = 1;
      }

      v27 = *(*(a1 + 136) + 4 * v15);
      v108 = v17;
      v28 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*PXGDecorationSpriteSizeTransforms[v27].f32), v17, vcvt_hight_f64_f32(PXGDecorationSpriteSizeTransforms[v27])));
      v104 = v28.f32[0];
      *(a3 + 24) = v28;
      v29 = (&PXGDecorationSpriteRelativePositions + 24 * v27);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = (&PXGDecorationSpriteRelativeOffset + 16 * v27);
      v34 = v33[1];
      if (*(a1 + 156))
      {
        v35 = -v30;
      }

      else
      {
        v35 = v30;
      }

      if (*(a1 + 156))
      {
        v36 = -*v33;
      }

      else
      {
        v36 = *v33;
      }

      v37 = *(*(*(a1 + 120) + 8) + 24);
      v38 = *v37;
      v39 = *(v37 + 60);
      v40 = PXGDecorationSpriteRelativeCornerRadius[v27];
      if (v14)
      {
        v106 = PXGDecorationSpriteRelativeCornerRadius[v27];
        [*(a1 + 40) assetBackgroundCornerRadiusForSpriteIndex:*(*(*(a1 + 88) + 8) + 24) inLayout:*(a1 + 32)];
        v44.i32[1] = v41;
        v40 = v106;
        v44.i64[1] = __PAIR64__(v43, v42);
      }

      else
      {
        v44 = *(v37 + 36);
      }

      if ((*(a1 + 157) & 1) == 0)
      {
        *(a5 + 1) = 8 * (*(*(*(*(a1 + 128) + 8) + 24) + 1) != 0);
      }

      v45 = v38;
      v107 = vmulq_f32(v40, v44);
      v105 = v39;
      if (v27 == 2)
      {
        [*(a1 + 64) overlayInsetsForSpriteIndex:*(*(*(a1 + 88) + 8) + 24) inLayout:*(a1 + 72)];
        v48 = v47.f32[0] - v46.f32[0];
        v46.f32[1] = v49;
        v47.f32[1] = v50;
        v51 = vsub_f32(*(a3 + 24), vadd_f32(v46, v47));
        *(a3 + 24) = v51;
        v52 = v103 - (v48 * 0.5);
        v53 = v102 - ((v50 - v49) * 0.5);
        if (*(*(a1 + 32) + 968) == 2)
        {
          *(a3 + 24) = vadd_f32(v51, 0x4100000041000000);
          v107 = 0u;
        }

        goto LABEL_43;
      }

      if (v27 != 7)
      {
        if (v27 == 6)
        {
          PXRectWithCenterAndSize();
          v55 = v54;
          v57 = v56;
          v97 = v59;
          v98 = v58;
          v60 = [*(*(a1 + 32) + 920) shadowForSpriteAtIndex:(v16 + v15) inLayout:?];
          if (v60)
          {
            *&v61 = PXGConfigureShadowSprite(a3, a4, a5, v60, *(a1 + 32), v55, v57, v98, v97);
            v62 = *(*(a1 + 32) + 928);
            if (v62)
            {
              [v62 alphaForShadowAtSpriteIndex:*(*(*(a1 + 88) + 8) + 24) inLayout:{*(a1 + 72), v61}];
            }

            else
            {
              v63 = 1.0;
            }

            v45 = v63 * v45;
          }

          else
          {
            *(a4 + 96) = xmmword_21AE2E2C0;
            *(a4 + 112) = unk_21AE2E2D0;
            *(a4 + 128) = xmmword_21AE2E2E0;
            *(a4 + 144) = unk_21AE2E2F0;
            *(a4 + 32) = xmmword_21AE2E280;
            *(a4 + 48) = unk_21AE2E290;
            *(a4 + 64) = xmmword_21AE2E2A0;
            *(a4 + 80) = unk_21AE2E2B0;
            *a4 = PXGSpriteStyleDefault;
            *(a4 + 16) = unk_21AE2E270;
            *a5 = 0u;
            *(a5 + 16) = 0u;
            *(a5 + 32) = 0;
          }
        }

        else if (v27 == 3)
        {
          *a5 = 1;
        }

        goto LABEL_42;
      }

      *a5 = 1;
      if (![*(a1 + 80) hasTapbacksForSpriteIndex:*(*(*(a1 + 88) + 8) + 24) inLayout:*(a1 + 72)])
      {
        v45 = 0.0;
LABEL_42:
        v53 = v102;
        v52 = v103;
        goto LABEL_43;
      }

      [*(a1 + 80) tapbackConfigurationForProposedConfiguration:*(*(*(a1 + 88) + 8) + 24) spriteIndex:*(a1 + 72) inLayout:{v45, v39, 0.0, 0.0}];
      v45 = v65;
      v52 = v66;
      v53 = v67;
      if (v65 > 0.0)
      {
        *(a5 + 1) = 8;
      }

      v68 = v64;
      v105 = v68;
LABEL_43:
      v69 = v36 * v104 + (v108.f64[0] - v104) * v35;
      v70 = v34 * *(a3 + 28) + (v108.f64[1] - *(a3 + 28)) * v31;
      if (v27 == 6)
      {
        v71 = v69 + **(*(*(a1 + 96) + 8) + 24);
        v72 = v70 + *(a3 + 8);
      }

      else
      {
        memset(&v113, 0, sizeof(v113));
        CGAffineTransformMakeTranslation(&v112, v69, v70);
        v73 = *(a1 + 120);
        CGAffineTransformMakeScale(&t1, *(*(*(v73 + 8) + 24) + 60), *(*(*(v73 + 8) + 24) + 60));
        CGAffineTransformMakeRotation(&t2, *(*(*(v73 + 8) + 24) + 56));
        CGAffineTransformConcat(&v111, &t1, &t2);
        CGAffineTransformConcat(&v113, &v112, &v111);
        ty = v113.ty;
        *a3 = **(*(*(a1 + 96) + 8) + 24) + v113.tx;
        *(a3 + 8) = *(*(*(*(a1 + 96) + 8) + 24) + 8) + ty;
        v71 = *a3;
        v72 = *(a3 + 8);
      }

      v75 = v52 + v71;
      v76 = v53 + v72;
      *a3 = v75;
      *(a3 + 8) = v53 + v72;
      v77 = v32 + *(*(*(*(a1 + 96) + 8) + 24) + 16);
      *(a3 + 16) = v77;
      *(a4 + 80) = *(*(*(*(a1 + 120) + 8) + 24) + 80);
      if (v27 == 2)
      {
        v78 = *(a1 + 32);
        v79 = *(v78 + 968);
        if ((v79 - 1) <= 1)
        {
          if (*(v78 + 976))
          {
            v80 = v77 + -0.1;
            goto LABEL_62;
          }

          if (v79 == 1)
          {
            v80 = -0.95;
LABEL_62:
            *(a3 + 16) = v80;
            v78 = *(a1 + 32);
          }
        }

        WeakRetained = objc_loadWeakRetained((v78 + 1032));
        if (WeakRetained)
        {
          v85 = objc_loadWeakRetained((*(a1 + 32) + 1032));
          [v85 solidColorOverlayAlphaForSpriteIndex:(v16 + v15) / *(a1 + 152) inLayout:*(a1 + 72)];
          v81 = v86;
        }

        else
        {
          v81 = 1.0;
        }

        goto LABEL_67;
      }

      v81 = 1.0;
      if (v27 == 5)
      {
        if (v26)
        {
          if (v14)
          {
            *(a5 + 1) = 2;
            *(a5 + 32) = *(*(*(*(a1 + 128) + 8) + 24) + 32);
            if (PXFloatApproximatelyEqualToFloat())
            {
              v82 = [*(a1 + 72) hiddenSpriteIndexes];
              v83 = [v82 containsIndex:*(*(*(a1 + 88) + 8) + 24)];

              if (v83)
              {
                v45 = 1.0;
              }
            }
          }

          else
          {
            *(a5 + 1) = 0;
          }
        }
      }

      else if (v27 == 3 && *(*(a1 + 32) + 912) == 1)
      {
        *(a3 + 28) = *(a3 + 28) + 18.0;
        *(a3 + 8) = v76 + 9.0;
      }

LABEL_67:
      *(a4 + 56) = *(*(*(*(a1 + 120) + 8) + 24) + 56);
      v87 = v81 * (v45 * *(a1 + 144));
      *a4 = v87;
      *(a4 + 20) = *(*(*(*(a1 + 120) + 8) + 24) + 20);
      *(a4 + 36) = v107;
      *(a4 + 60) = v105;
      v88 = *(*(*(a1 + 120) + 8) + 24);
      v89 = v88[6];
      v90 = v88[7];
      v91 = v88[9];
      *(a4 + 128) = v88[8];
      *(a4 + 144) = v91;
      *(a4 + 96) = v89;
      *(a4 + 112) = v90;
      if (v27 != 6)
      {
        if ((*(a1 + 158) & 1) != 0 || (v92 = *(a5 + 8), *&v92 == 0.0) || *(&v92 + 1) == 0.0)
        {
          *(a5 + 8) = vmul_n_f32(*(a3 + 24), v99);
        }
      }

      v93 = *(*(*(*(a1 + 128) + 8) + 24) + 24);
      *(a5 + 24) = v93;
      if (v93)
      {
        if (!v93)
        {
          *(a5 + 24) = v27 + 1;
        }
      }

      a3 += 32;
      a4 += 160;
      a5 += 40;
      ++v15;
    }

    while (v15 < *(a1 + 152));
    v11 = v96 + v15;
LABEL_78:
    ++*(*(*(a1 + 88) + 8) + 24);
    ++*(*(*(a1 + 104) + 8) + 24);
    *(*(*(a1 + 96) + 8) + 24) += 32;
    *(*(*(a1 + 120) + 8) + 24) += 160;
    *(*(*(a1 + 128) + 8) + 24) += 40;
  }

  while (v11 < v95);
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGDecoratingLayout.m" lineNumber:290 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (double)lastBaseline
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  [decoratedLayout lastBaseline];
  v4 = v3;

  return v4;
}

- (PXGAssetBadgeDecorationSource)assetBadgeDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_assetBadgeDecorationSource);

  return WeakRetained;
}

- (PXGAssetBadgeDecorationSource)assetProgressDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_assetProgressDecorationSource);

  return WeakRetained;
}

- (PXGHighlightDecorationSource)highlightDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightDecorationSource);

  return WeakRetained;
}

- (PXGSolidColorOverlayDecorationSource)solidColorOverlayDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_solidColorOverlayDecorationSource);

  return WeakRetained;
}

- (PXGDragDecorationSource)dragDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dragDecorationSource);

  return WeakRetained;
}

- (PXGDebugDecorationSource)debugDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_debugDecorationSource);

  return WeakRetained;
}

- (PXGViewDecorationSource)viewDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDecorationSource);

  return WeakRetained;
}

- (PXGTapbackDecorationSource)tapbackDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_tapbackDecorationSource);

  return WeakRetained;
}

- (PXGCaptionDecorationSource)captionDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_captionDecorationSource);

  return WeakRetained;
}

- (PXGAssetBackgroundDecorationSource)assetBackgroundDecorationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_assetBackgroundDecorationSource);

  return WeakRetained;
}

- (id)preferredFocusLayouts
{
  v8[1] = *MEMORY[0x277D85DE8];
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];

  if (decoratedLayout)
  {
    decoratedLayout2 = [(PXGDecoratingLayout *)self decoratedLayout];
    v8[0] = decoratedLayout2;
    preferredFocusLayouts = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXGDecoratingLayout;
    preferredFocusLayouts = [(PXGLayout *)&v7 preferredFocusLayouts];
  }

  return preferredFocusLayouts;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  v39 = *MEMORY[0x277D85DE8];
  spriteDataStore = [(PXGLayout *)self spriteDataStore];
  if ([spriteDataStore count] > v3 && -[PXGDecoratingLayout decorationIndexForSpriteIndex:](self, "decorationIndexForSpriteIndex:", v3) == 3)
  {
    v6 = +[PXGReusableAXInfo sharedPool];
    v7 = [v6 checkOutReusableObjectWithReuseIdentifier:1];
    v8 = ([spriteDataStore geometries] + 32 * v3);
    v17 = *v8;
    v18 = v8[1];
    v9 = ([spriteDataStore styles] + 160 * v3);
    v10 = v9[7];
    v35 = v9[6];
    v36 = v10;
    v11 = v9[9];
    v37 = v9[8];
    v38 = v11;
    v12 = v9[3];
    v31 = v9[2];
    v32 = v12;
    v13 = v9[5];
    v33 = v9[4];
    v34 = v13;
    v14 = v9[1];
    v29 = *v9;
    v30 = v14;
    [v7 setSpriteIndex:v3];
    v19 = v17;
    v20 = v18;
    [v7 setSpriteGeometry:&v19];
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v19 = v29;
    v20 = v30;
    [v7 setSpriteStyle:&v19];
    axGroup = [(PXGLayout *)self axGroup];
    [v7 setAxContainingGroup:axGroup];

    [v7 setContent:0 ofContentKind:5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unsigned)viewHostingSpriteIndexForSublayout:(id)sublayout spriteIndex:(unsigned int)index
{
  v4 = *&index;
  sublayoutCopy = sublayout;
  if (sublayoutCopy == self && self->_wantsDecorationSpritesHostedInDecoratedSprite && [(PXGLayout *)self localNumberOfSprites]> v4)
  {
    v7 = [(PXGDecoratingLayout *)self decoratedIndexForDecoratingIndex:v4];
    decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
    v9 = [(PXGLayout *)self convertSpriteIndex:v7 fromDescendantLayout:decoratedLayout];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PXGDecoratingLayout;
    v9 = [(PXGLayout *)&v11 viewHostingSpriteIndexForSublayout:sublayoutCopy spriteIndex:v4];
  }

  return v9;
}

- (int64_t)decoratingTypeForSpriteIndex:(unsigned int)index
{
  v3 = [(PXGDecoratingLayout *)self decorationIndexForSpriteIndex:*&index];

  return _DecorationTypeForIndex(v3);
}

- (unsigned)decorationIndexForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(PXGLayout *)self localNumberOfSprites]<= index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:989 description:{@"Sprite index %u is not valid for decorating layout with %u sprites", v3, -[PXGLayout localNumberOfSprites](self, "localNumberOfSprites")}];
  }

  v6 = self->_activeDecorationSpriteIndexes[v3 % self->_activeDecorationsCount];
  if (v6 >= 9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:993 description:{@"Invalid parameter not satisfying: %@", @"decorationIndex < PXGDecoratingLayoutMaxNumberOfDecoratingSpritesPerDecoratedSprite"}];
  }

  return v6;
}

- (void)addActiveDecorations:(id)decorations
{
  decorationsCopy = decorations;
  v4 = [decorationsCopy count];
  v5 = decorationsCopy;
  if (v4)
  {
    v6 = [decorationsCopy mutableCopy];
    if (self->_activeDecorationsCount)
    {
      v7 = 0;
      do
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:_DecorationTypeForIndex(self->_activeDecorationSpriteIndexes[v7])];
        [v6 addObject:v8];

        ++v7;
      }

      while (v7 < self->_activeDecorationsCount);
    }

    [(PXGDecoratingLayout *)self setActiveDecorations:v6];

    v5 = decorationsCopy;
  }
}

- (void)setActiveDecorations:(id)decorations
{
  v22 = *MEMORY[0x277D85DE8];
  decorationsCopy = decorations;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  pendingActiveDecorationSpriteIndexes = self->_pendingActiveDecorationSpriteIndexes;
  self->_pendingActiveDecorationSpriteIndexes = indexSet;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = decorationsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        -[NSMutableIndexSet addIndex:](self->_pendingActiveDecorationSpriteIndexes, "addIndex:", _DecorationIndexForType([*(*(&v17 + 1) + 8 * i) integerValue]));
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_13:
      p_updateFlags->needsUpdate = needsUpdate | 0xC;
      goto LABEL_14;
    }

LABEL_12:
    if ((self->_updateFlags.updated & 0xC) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout setActiveDecorations:]"];
      [currentHandler handleFailureInFunction:v16 file:@"PXGDecoratingLayout.m" lineNumber:974 description:{@"invalidating %lu after it already has been updated", 12}];

      abort();
    }

    goto LABEL_13;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_12;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 12;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_14:
}

- (BOOL)canHandleVisibleRectRejection
{
  itemsLayout = [(PXGDecoratingLayout *)self itemsLayout];
  canHandleVisibleRectRejection = [itemsLayout canHandleVisibleRectRejection];

  return canHandleVisibleRectRejection;
}

- (PXGItemsGeometry)itemsGeometry
{
  itemsLayout = [(PXGDecoratingLayout *)self itemsLayout];
  itemsGeometry = [itemsLayout itemsGeometry];

  return itemsGeometry;
}

- (BOOL)isSpriteIndex:(unsigned int)index decoratingSpriteWithIndex:(unsigned int *)withIndex
{
  localNumberOfSprites = [(PXGLayout *)self localNumberOfSprites];
  indexCopy = index;
  if (localNumberOfSprites > index)
  {
    v10 = index / [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite];
    decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
    if (!decoratedLayout)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:940 description:{@"Invalid parameter not satisfying: %@", @"decoratedLayout != nil"}];
    }

    indexCopy = [(PXGLayout *)self convertSpriteIndex:v10 fromDescendantLayout:decoratedLayout];
  }

  if (withIndex)
  {
    *withIndex = indexCopy;
  }

  return localNumberOfSprites > index;
}

- (unsigned)spriteIndexForDecorationIndex:(unsigned int)index decoratingSpriteIndex:(unsigned int)spriteIndex
{
  v6 = [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite]* spriteIndex;
  if (v6 >= [(PXGLayout *)self localNumberOfSprites])
  {
    return -1;
  }

  else
  {
    return v6 + index;
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  v6 = decoratedLayout;
  v7 = 0;
  if (v3 != -1 && decoratedLayout)
  {
    v8 = [(PXGLayout *)self convertSpriteIndex:v3 toDescendantLayout:decoratedLayout];
    if (v8 != -1)
    {
      v9 = v8;
      v10 = v6;
LABEL_5:
      v7 = [v10 hitTestResultForSpriteIndex:v9];
      goto LABEL_12;
    }

    if ([(PXGLayout *)self localNumberOfSprites]> v3)
    {
      v11 = v3 % [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite];
      v12 = v3 / [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite];
      allowsViewDecorationHitTesting = [(PXGDecoratingLayout *)self allowsViewDecorationHitTesting];
      v14 = self->_activeDecorationSpriteIndexes[v11];
      if (allowsViewDecorationHitTesting && v14 == 3)
      {
        v15 = [(PXGLayout *)self spriteReferenceForSpriteIndex:v3];
        v16 = [PXGHitTestResult alloc];
        v17 = [v6 objectReferenceForSpriteIndex:v12];
        v7 = [(PXGHitTestResult *)v16 initWithSpriteReference:v15 layout:self identifier:@"PXGHitTestUserDataIdentifierDecorationView" userData:v17];

        goto LABEL_12;
      }

      if (v14 != 6)
      {
        v10 = v6;
        v9 = v12;
        goto LABEL_5;
      }
    }

    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (void)setLastBaseline:(double)baseline
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:887 description:{@"baseline shouldn't be set on %@, did you mean to set it on %@ instead?", self, decoratedLayout}];

  abort();
}

- (id)currentDataSourceChange
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  currentDataSourceChange = [decoratedLayout currentDataSourceChange];

  return currentDataSourceChange;
}

- (id)layoutForItemChanges
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  layoutForItemChanges = [decoratedLayout layoutForItemChanges];

  return layoutForItemChanges;
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  *objectReference = referenceCopy;
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  if (decoratedLayout)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXGDecoratingLayout;
    v10 = [(PXGLayout *)&v12 sublayoutIndexForObjectReference:referenceCopy options:options updatedObjectReference:objectReference];
  }

  return v10;
}

- (unsigned)spriteIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = referenceCopy;
    decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
    decoratedSpriteReference = [v9 decoratedSpriteReference];
    v12 = [decoratedLayout spriteIndexForSpriteReference:decoratedSpriteReference options:options];

    v13 = -1;
    if (decoratedLayout && v12 != -1)
    {
      numberOfDecoratingSpritesPerDecoratedSprite = [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite];
      v13 = _DecorationIndexForType([v9 decorationType]) + numberOfDecoratingSpritesPerDecoratedSprite * v12;
      if (v13 >= [(PXGLayout *)self localNumberOfSprites])
      {
        v13 = -1;
      }

      else
      {
        v15 = v9;
        *objectReference = v9;
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXGDecoratingLayout;
    v13 = [(PXGLayout *)&v17 spriteIndexForObjectReference:referenceCopy options:options updatedObjectReference:objectReference];
  }

  return v13;
}

- (void)_invalidateDecorationForSpriteRange:(_PXGSpriteIndexRange)range inLayout:(id)layout invalidateSprites:(BOOL)sprites
{
  layoutCopy = layout;
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  if (decoratedLayout != layoutCopy)
  {

    goto LABEL_19;
  }

  spritesAreInSyncWithDecoratedLayout = [(PXGDecoratingLayout *)self spritesAreInSyncWithDecoratedLayout];

  if (spritesAreInSyncWithDecoratedLayout)
  {
    if (!sprites)
    {
      goto LABEL_12;
    }

    invalidatedDecoratedSpriteIndexes = self->_invalidatedDecoratedSpriteIndexes;
    decoratedLayout2 = [(PXGDecoratingLayout *)self decoratedLayout];
    -[NSMutableIndexSet addIndexesInRange:](invalidatedDecoratedSpriteIndexes, "addIndexesInRange:", 0, [decoratedLayout2 localNumberOfSprites]);

    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_11:
        p_updateFlags->needsUpdate = needsUpdate | 8;
LABEL_12:
        v14 = &self->_updateFlags;
        v15 = self->_updateFlags.needsUpdate;
        if (v15)
        {
          if (!self->_updateFlags.isPerformingUpdate)
          {
            goto LABEL_17;
          }
        }

        else if (!self->_updateFlags.isPerformingUpdate)
        {
          willPerformUpdate = self->_updateFlags.willPerformUpdate;
          v14->needsUpdate = 2;
          if (!willPerformUpdate)
          {
            [(PXGLayout *)self setNeedsUpdate];
          }

          goto LABEL_18;
        }

        if ((self->_updateFlags.updated & 2) == 0)
        {
LABEL_17:
          v14->needsUpdate = v15 | 2;
LABEL_18:
          numberOfDecoratingSpritesPerDecoratedSprite = [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite];
          [(PXGLayout *)self modifySpritesInRange:(numberOfDecoratingSpritesPerDecoratedSprite * range.location) | ((numberOfDecoratingSpritesPerDecoratedSprite * range.length) << 32) state:&__block_literal_global_11853];
          goto LABEL_19;
        }

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout _invalidateDecorationForSpriteRange:inLayout:invalidateSprites:]"];
        [currentHandler handleFailureInFunction:v20 file:@"PXGDecoratingLayout.m" lineNumber:840 description:{@"invalidating %lu after it already has been updated", 2}];
LABEL_28:

        abort();
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      v18 = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 8;
      if (!v18)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_12;
    }

    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout _invalidateDecorationForSpriteRange:inLayout:invalidateSprites:]"];
      [currentHandler handleFailureInFunction:v20 file:@"PXGDecoratingLayout.m" lineNumber:837 description:{@"invalidating %lu after it already has been updated", 8}];
      goto LABEL_28;
    }

    goto LABEL_11;
  }

LABEL_19:
}

void __86__PXGDecoratingLayout__invalidateDecorationForSpriteRange_inLayout_invalidateSprites___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v6 = (a5 + 32);
    do
    {
      if (*(v6 - 31) != 2)
      {
        ++*v6;
      }

      v6 += 20;
      --v5;
    }

    while (v5);
  }
}

- (void)sublayout:(id)sublayout didApplySpriteChangeDetails:(id)details fromDescendentSublayout:(id)descendentSublayout
{
  detailsCopy = details;
  v13.receiver = self;
  v13.super_class = PXGDecoratingLayout;
  descendentSublayoutCopy = descendentSublayout;
  [(PXGLayout *)&v13 sublayout:sublayout didApplySpriteChangeDetails:detailsCopy fromDescendentSublayout:descendentSublayoutCopy];
  v10 = [(PXGDecoratingLayout *)self decoratedLayout:v13.receiver];

  if (v10 == descendentSublayoutCopy)
  {
    spritesAreInSyncWithDecoratedLayout = [(PXGDecoratingLayout *)self spritesAreInSyncWithDecoratedLayout];

    if (spritesAreInSyncWithDecoratedLayout)
    {
      if (self->_isChangingDecoratedLayout)
      {
        v12 = 0;
      }

      else
      {
        v12 = detailsCopy;
      }

      [(PXGDecoratingLayout *)self _applyDecoratedLayoutChangeDetails:v12];
    }
  }

  else
  {
  }
}

- (void)_applyDecoratedLayoutChangeDetails:(id)details
{
  v43 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  enabled = [(PXGDecoratingLayout *)self enabled];
  v7 = (detailsCopy != 0) & enabled;
  shouldInvalidateDecorationForModifiedSprites = [decoratedLayout shouldInvalidateDecorationForModifiedSprites];
  if (enabled)
  {
    enabled = [(PXGDecoratingLayout *)self numberOfDecoratingSpritesPerDecoratedSprite];
  }

  v9 = [decoratedLayout localNumberOfSprites] * enabled;
  if (v7)
  {
    [detailsCopy applyToIndexSet:self->_invalidatedDecoratedSpriteIndexes];
    v10 = [detailsCopy changeDetailsShiftedBy:0 scaledBy:enabled];
  }

  else
  {
    localNumberOfSprites = [(PXGLayout *)self localNumberOfSprites];
    v12 = shouldInvalidateDecorationForModifiedSprites;
    v13 = objc_alloc(MEMORY[0x277D3CCC8]);
    v14 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, localNumberOfSprites}];
    v15 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v9}];
    v16 = v13;
    shouldInvalidateDecorationForModifiedSprites = v12;
    v10 = [v16 initWithIncrementalChangeDetailsRemovedIndexes:v14 insertedIndexes:v15 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

    [(NSMutableIndexSet *)self->_invalidatedDecoratedSpriteIndexes removeAllIndexes];
  }

  v32 = xmmword_21AE2E2C0;
  v33 = unk_21AE2E2D0;
  v34 = xmmword_21AE2E2E0;
  v35 = unk_21AE2E2F0;
  v28 = xmmword_21AE2E280;
  v29 = unk_21AE2E290;
  v30 = xmmword_21AE2E2A0;
  v31 = unk_21AE2E2B0;
  v26 = PXGSpriteStyleDefault;
  v27 = unk_21AE2E270;
  memset(v38, 0, sizeof(v38));
  v41 = 0;
  v40 = 0u;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__PXGDecoratingLayout__applyDecoratedLayoutChangeDetails___block_invoke;
  v25[3] = &unk_2782A9F90;
  v37 = 2048;
  selfCopy = self;
  v39 = 1065353216;
  v42 = enabled;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__PXGDecoratingLayout__applyDecoratedLayoutChangeDetails___block_invoke_2;
  v22[3] = &unk_2782A9FB8;
  v24 = shouldInvalidateDecorationForModifiedSprites;
  v22[4] = self;
  v23 = enabled;
  [(PXGLayout *)self applySpriteChangeDetails:v10 countAfterChanges:v9 initialState:v25 modifyState:v22];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_11:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      goto LABEL_12;
    }

LABEL_10:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout _applyDecoratedLayoutChangeDetails:]"];
      [currentHandler handleFailureInFunction:v21 file:@"PXGDecoratingLayout.m" lineNumber:816 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_11;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_10;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_12:
}

uint64_t __58__PXGDecoratingLayout__applyDecoratedLayoutChangeDetails___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(a3 + 24) + v4);
      v6 = *(a1 + 48);
      *v5 = *(a1 + 32);
      v5[1] = v6;
      v7 = *(a1 + 64);
      v8 = *(a1 + 80);
      v9 = *(a1 + 112);
      v5[4] = *(a1 + 96);
      v5[5] = v9;
      v5[2] = v7;
      v5[3] = v8;
      v10 = *(a1 + 128);
      v11 = *(a1 + 144);
      v12 = *(a1 + 176);
      v5[8] = *(a1 + 160);
      v5[9] = v12;
      v5[6] = v10;
      v5[7] = v11;
      v13 = *(a3 + 32) + v3;
      v14 = *(a1 + 200);
      v15 = *(a1 + 216);
      *(v13 + 32) = *(a1 + 232);
      *v13 = v14;
      *(v13 + 16) = v15;
      v4 += 160;
      v3 += 40;
    }

    while (160 * HIDWORD(a2) != v4);
  }

  return [*(*(a1 + 192) + 880) addIndexesInRange:?];
}

uint64_t __58__PXGDecoratingLayout__applyDecoratedLayoutChangeDetails___block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 44) == 1 && HIDWORD(a2) != 0)
  {
    v6 = (a5 + 32);
    v7 = HIDWORD(a2);
    do
    {
      if (*(v6 - 31) != 2)
      {
        ++*v6;
      }

      v6 += 20;
      --v7;
    }

    while (v7);
  }

  return [*(*(a1 + 32) + 880) addIndexesInRange:?];
}

- (CGRect)sublayout:(id)sublayout visibleRectForRequestedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sublayoutCopy = sublayout;
  superlayout = [(PXGLayout *)self superlayout];
  if (superlayout)
  {
    superlayout2 = [(PXGLayout *)self superlayout];
    [superlayout2 sublayout:sublayoutCopy visibleRectForRequestedVisibleRect:{x, y, width, height}];
    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)sublayoutDidChangeLastBaseline:(id)baseline
{
  v5.receiver = self;
  v5.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v5 sublayoutDidChangeLastBaseline:baseline];
  superlayout = [(PXGLayout *)self superlayout];
  [superlayout sublayoutDidChangeLastBaseline:self];
}

- (void)sublayoutDidChangeContentSize:(id)size
{
  sizeCopy = size;
  v10.receiver = self;
  v10.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeContentSize:sizeCopy];
  if (!self->_isUpdatingDecoratedLayout)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout sublayoutDidChangeContentSize:]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXGDecoratingLayout.m" lineNumber:748 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)sublayoutNeedsUpdate:(id)update
{
  updateCopy = update;
  v10.receiver = self;
  v10.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v10 sublayoutNeedsUpdate:updateCopy];
  if (!self->_isUpdatingDecoratedLayout)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout sublayoutNeedsUpdate:]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXGDecoratingLayout.m" lineNumber:741 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)userInterfaceDirectionDidChange
{
  v8.receiver = self;
  v8.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v8 userInterfaceDirectionDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 9;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 9) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout userInterfaceDirectionDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGDecoratingLayout.m" lineNumber:731 description:{@"invalidating %lu after it already has been updated", 9}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 9;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)viewEnvironmentWillChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v13 viewEnvironmentWillChange:changeCopy];
  viewEnvironment = [(PXGLayout *)self viewEnvironment];
  v6 = [viewEnvironment hasEqualAppearanceTo:changeCopy];

  if ((v6 & 1) == 0)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_8:
        decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
        [decoratedLayout invalidateDecoration];

        goto LABEL_9;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_8;
    }

    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout viewEnvironmentWillChange:]"];
      [currentHandler handleFailureInFunction:v12 file:@"PXGDecoratingLayout.m" lineNumber:701 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_7;
  }

LABEL_9:
}

- (void)alphaDidChange
{
  v10.receiver = self;
  v10.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v10 alphaDidChange];
  invalidatedDecoratedSpriteIndexes = self->_invalidatedDecoratedSpriteIndexes;
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  -[NSMutableIndexSet addIndexesInRange:](invalidatedDecoratedSpriteIndexes, "addIndexesInRange:", 0, [decoratedLayout localNumberOfSprites]);

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout alphaDidChange]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXGDecoratingLayout.m" lineNumber:695 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)_updateReloadSprites
{
  pendingActiveDecorationSpriteIndexes = self->_pendingActiveDecorationSpriteIndexes;
  if (pendingActiveDecorationSpriteIndexes)
  {
    v5 = [(NSMutableIndexSet *)pendingActiveDecorationSpriteIndexes count];
    if (v5 && [(NSMutableIndexSet *)self->_pendingActiveDecorationSpriteIndexes lastIndex]>= 9)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:457 description:{@"Invalid parameter not satisfying: %@", @"pendingCount == 0 || _pendingActiveDecorationSpriteIndexes.lastIndex < PXGDecoratingLayoutMaxNumberOfDecoratingSpritesPerDecoratedSprite"}];
    }

    if (v5 != self->_activeDecorationsCount)
    {
      self->_activeDecorationsCount = v5;
      self->_activeDecorationSpriteIndexes = malloc_type_realloc(self->_activeDecorationSpriteIndexes, 4 * v5, 0x42760281uLL);
    }

    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v6 = self->_pendingActiveDecorationSpriteIndexes;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__PXGDecoratingLayout__updateReloadSprites__block_invoke;
    v9[3] = &unk_2782AB740;
    v9[4] = self;
    v9[5] = v10;
    [(NSMutableIndexSet *)v6 enumerateIndexesUsingBlock:v9];
    v7 = self->_pendingActiveDecorationSpriteIndexes;
    self->_pendingActiveDecorationSpriteIndexes = 0;

    _Block_object_dispose(v10, 8);
  }

  [(PXGDecoratingLayout *)self _applyDecoratedLayoutChangeDetails:0];
}

uint64_t __43__PXGDecoratingLayout__updateReloadSprites__block_invoke(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 888);
  v3 = *(*(result + 40) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  return result;
}

- (void)setDecoratedLayout:(id)layout
{
  layoutCopy = layout;
  decoratedLayout = self->_decoratedLayout;
  if (decoratedLayout != layoutCopy)
  {
    v9 = layoutCopy;
    v7 = decoratedLayout;
    objc_storeStrong(&self->_decoratedLayout, layout);
    self->_isChangingDecoratedLayout = 1;
    if (v7)
    {
      [(PXGLayout *)self removeSublayoutAtIndex:0];
    }

    if (v9)
    {
      [(PXGDecoratingLayout *)self insertSublayout:v9 atIndex:0];
    }

    self->_isChangingDecoratedLayout = 0;
    superlayout = [(PXGLayout *)self superlayout];
    [superlayout sublayoutDidChangeLastBaseline:self];

    [(PXGLayout *)self setNeedsUpdateOfScrollableAxis];
    layoutCopy = v9;
  }
}

- (void)setDecorationSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_decorationSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_decorationSource, obj);
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 2;
LABEL_8:
        v5 = obj;
        goto LABEL_9;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout setDecorationSource:]"];
        [currentHandler handleFailureInFunction:v10 file:@"PXGDecoratingLayout.m" lineNumber:242 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    v5 = obj;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)setContentSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v10 setContentSource:sourceCopy];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      goto LABEL_7;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout setContentSource:]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXGDecoratingLayout.m" lineNumber:234 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_7:
}

- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index
{
  sublayoutCopy = sublayout;
  isChangingDecoratedLayout = self->_isChangingDecoratedLayout;
  if (!index)
  {
    self->_isChangingDecoratedLayout = 1;
    objc_storeStrong(&self->_decoratedLayout, sublayout);
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 3;
        goto LABEL_8;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 3) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout insertSublayout:atIndex:]"];
        [currentHandler handleFailureInFunction:v13 file:@"PXGDecoratingLayout.m" lineNumber:226 description:{@"invalidating %lu after it already has been updated", 3}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 3;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
  v14.receiver = self;
  v14.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v14 insertSublayout:sublayoutCopy atIndex:index];
  self->_isChangingDecoratedLayout = isChangingDecoratedLayout;
}

- (void)removeSublayoutsInRange:(_NSRange)range
{
  isChangingDecoratedLayout = self->_isChangingDecoratedLayout;
  if (!range.location)
  {
    self->_isChangingDecoratedLayout = 1;
  }

  v5.receiver = self;
  v5.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v5 removeSublayoutsInRange:?];
  self->_isChangingDecoratedLayout = isChangingDecoratedLayout;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0xC;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0xC) != 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGDecoratingLayout setEnabled:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXGDecoratingLayout.m" lineNumber:209 description:{@"invalidating %lu after it already has been updated", 12}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 12;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (id)description
{
  decoratedLayout = [(PXGDecoratingLayout *)self decoratedLayout];
  v9.receiver = self;
  v9.super_class = PXGDecoratingLayout;
  v4 = [(PXGDecoratingLayout *)&v9 description];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 px_stringByAppendingDescriptionDetailsWithFormat:@", decoratedLayout=<%@: %p>", v6, decoratedLayout];

  return v7;
}

- (void)dealloc
{
  free(self->_activeDecorationSpriteIndexes);
  v3.receiver = self;
  v3.super_class = PXGDecoratingLayout;
  [(PXGLayout *)&v3 dealloc];
}

- (PXGDecoratingLayout)initWithDecoratedLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(PXGDecoratingLayout *)self init];
  [(PXGDecoratingLayout *)v5 setDecoratedLayout:layoutCopy];

  return v5;
}

@end