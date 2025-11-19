@interface PXGGridLayout
+ (BOOL)_axExposeAllVisibleElements;
- ($B30C796585FC215A6CA6704F8BA3D5B6)edgeCornerRadius;
- ($B30C796585FC215A6CA6704F8BA3D5B6)itemCornerRadius;
- (BOOL)shouldUpdateDecorationMediaTargetSizes;
- (CGPoint)_contentPointInLayout:(CGPoint)a3;
- (CGPoint)_layoutPointInContent:(CGPoint)a3;
- (CGPoint)anchorViewportCenter;
- (CGPoint)contentOrigin;
- (CGRect)_contentRectInLayout:(CGRect)a3;
- (CGRect)_frameForItem:(int64_t)a3 usingInterItemSpacing:(CGSize)a4 itemSize:(CGSize)a5 insets:(UIEdgeInsets)a6 contentMode:(int64_t)a7;
- (CGRect)_layoutRectInContent:(CGRect)a3;
- (CGRect)_pageAlignedRectForVisibleRect:(CGRect)a3;
- (CGRect)frameForItem:(int64_t)a3;
- (CGRect)frameForItem:(int64_t)a3 usingInterItemSpacing:(CGSize)a4;
- (CGRect)loadedItemsRect;
- (CGSize)interItemSpacing;
- (CGSize)sizeForItem:(int64_t)a3;
- (NSString)description;
- (NSString)diagnosticDescription;
- (PXGGridLayout)init;
- (UIEdgeInsets)padding;
- (_NSRange)_itemsToLoadForVisibleRect:(CGRect)a3;
- (_NSRange)itemRangeForSpriteIndexRange:(_PXGSpriteIndexRange)a3;
- (_NSRange)itemRangeInRect:(CGRect)a3;
- (_NSRange)itemsToLoad;
- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)a3;
- (id)axBorderSpriteIndexes;
- (id)dropTargetObjectReferenceForLocation:(CGPoint)a3;
- (id)insetDelegate;
- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4;
- (id)marginDelegate;
- (id)navigationObjectReferenceForLocation:(CGPoint)a3;
- (int64_t)_rowForItem:(int64_t)a3;
- (int64_t)columnForItem:(int64_t)a3;
- (int64_t)itemClosestTo:(CGPoint)a3;
- (int64_t)itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4;
- (int64_t)numberOfVisualColumns;
- (int64_t)numberOfVisualItems;
- (int64_t)numberOfVisualRows;
- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_getItemSize:(CGSize *)a3 finalInteritemSpacing:(CGSize *)a4 finalInsets:(UIEdgeInsets *)a5 forDesiredInterItemSpacing:(CGSize)a6 padding:(UIEdgeInsets)a7;
- (void)_updateColumnsMetrics;
- (void)_updateContentSize;
- (void)_updateSpriteStyles;
- (void)_updateSprites;
- (void)accessoryItemsDidChange;
- (void)alphaDidChange;
- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyState:(id)a6;
- (void)axDidReceiveFocusMovementHint:(id)a3 forSpriteAtIndex:(unsigned int)a4;
- (void)axDidUpdateFocusFromSpriteAtIndex:(unsigned int)a3 toSpriteAtIndex:(unsigned int)a4;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)dropTargetObjectReferenceDidChange;
- (void)effectsDidChange;
- (void)entityManagerDidChange;
- (void)loadedItemsDidChange;
- (void)numberOfAccessoryItemsDidChange;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setAccessoryAlpha:(double)a3;
- (void)setAccessoryMediaKind:(unsigned __int8)a3;
- (void)setAccessoryPresentationType:(unsigned __int8)a3;
- (void)setAnchorObjectReference:(id)a3;
- (void)setAnchorViewportCenter:(CGPoint)a3;
- (void)setAspectRatioLimit:(double)a3;
- (void)setAxis:(int64_t)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContentOrigin:(CGPoint)a3;
- (void)setEdgeCornerRadius:(id)a3;
- (void)setEnableBestCropRect:(BOOL)a3;
- (void)setEnableEffects:(BOOL)a3;
- (void)setEnablePerItemCornerRadius:(BOOL)a3;
- (void)setEnablePerItemInsets:(BOOL)a3;
- (void)setEnablePerItemMargin:(BOOL)a3;
- (void)setFillSafeAreaBottomInset:(BOOL)a3;
- (void)setFillSafeAreaTopInset:(BOOL)a3;
- (void)setHideIncompleteLastRowOrColumn:(BOOL)a3;
- (void)setInterItemSpacing:(CGSize)a3;
- (void)setItemAspectRatio:(double)a3;
- (void)setItemCaptionSpacing:(double)a3;
- (void)setItemCornerRadius:(id)a3;
- (void)setItemZPosition:(float)a3;
- (void)setLoadItemsOutsideAnchorViewport:(BOOL)a3;
- (void)setMediaKind:(unsigned __int8)a3;
- (void)setNeedsUpdateOfScrollableAxis;
- (void)setNumberOfColumns:(int64_t)a3;
- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5;
- (void)setNumberOfRows:(int64_t)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setPresentationType:(unsigned __int8)a3;
- (void)setSpriteInfoFlags:(unsigned __int8)a3;
- (void)setStyle:(int64_t)a3;
- (void)setVisualItemShift:(int64_t)a3;
- (void)update;
- (void)userInterfaceDirectionDidChange;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXGGridLayout

- (PXGGridLayout)init
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  result = [(PXGItemsLayout *)&v8 init];
  if (result)
  {
    result->_style = 0;
    result->_axis = 1;
    result->_numberOfColumns = 4;
    result->_numberOfRows = 4;
    __asm { FMOV            V0.2D, #1.0 }

    result->_interItemSpacing = _Q0;
    result->_itemAspectRatio = 1.0;
    *&result->_itemCornerRadius.var0.var0.topLeft = 0;
    *&result->_itemCornerRadius.var0.byIndex[2] = 0;
    *&result->_edgeCornerRadius.var0.var0.topLeft = 0;
    *&result->_edgeCornerRadius.var0.byIndex[2] = 0;
    result->_aspectRatioLimit = 4.0;
    result->_enableCornerRadiusMaskingWhenAlignedWithEdge = 0;
  }

  return result;
}

- (void)dropTargetObjectReferenceDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v8 dropTargetObjectReferenceDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout dropTargetObjectReferenceDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1018 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)entityManagerDidChange
{
  v11.receiver = self;
  v11.super_class = PXGGridLayout;
  [(PXGLayout *)&v11 entityManagerDidChange];
  v3 = [(PXGLayout *)self entityManager];
  if (v3)
  {
    v4 = v3;
    v5 = [(PXGGridLayout *)self enableEffects];

    if (v5)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 8;
          return;
        }

LABEL_7:
        if ((self->_updateFlags.updated & 8) != 0)
        {
          v9 = [MEMORY[0x277CCA890] currentHandler];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout entityManagerDidChange]"];
          [v9 handleFailureInFunction:v10 file:@"PXGGridLayout.m" lineNumber:1036 description:{@"invalidating %lu after it already has been updated", 8}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 8;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }
    }
  }
}

- ($B30C796585FC215A6CA6704F8BA3D5B6)itemCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (void)alphaDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGLayout *)&v8 alphaDidChange];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout alphaDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1047 description:{@"invalidating %lu after it already has been updated", 8}];

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

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout referenceSizeDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1025 description:{@"invalidating %lu after it already has been updated", 1}];

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
  v3.receiver = self;
  v3.super_class = PXGGridLayout;
  [(PXGLayout *)&v3 visibleRectDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGLayout *)&v8 displayScaleDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 5;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 5) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout displayScaleDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1030 description:{@"invalidating %lu after it already has been updated", 5}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 5;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGLayout *)&v8 safeAreaInsetsDidChange];
  if ([(PXGGridLayout *)self fillSafeAreaTopInset]|| [(PXGGridLayout *)self fillSafeAreaBottomInset])
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_8:
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_7:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout safeAreaInsetsDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1058 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_8;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_7;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGGridLayout.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)update
{
  isUpdating = self->_isUpdating;
  self->_isUpdating = 1;
  v4 = [(PXGLayout *)self rootLayout];
  v5 = [v4 activeAnchor];

  if (v5)
  {
    [(PXGItemsLayout *)self invalidateLoadedItems];
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    self->_updateFlags.willPerformUpdate = 0;
  }

  else
  {
    [(PXGItemsLayout *)self updateLoadedItemsIfNeeded];
    [(PXGItemsLayout *)self updateAccessoryItemsIfNeeded];
    needsUpdate = p_updateFlags->needsUpdate;
    self->_updateFlags.willPerformUpdate = 0;
    if (!needsUpdate)
    {
      goto LABEL_23;
    }
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout update]"];
    [v11 handleFailureInFunction:v12 file:@"PXGGridLayout.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

    needsUpdate = p_updateFlags->needsUpdate;
  }

  self->_updateFlags.isPerformingUpdate = 1;
  self->_updateFlags.updated = 1;
  if (needsUpdate)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    [(PXGGridLayout *)self _updateColumnsMetrics];
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXGGridLayout.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }
  }

  v8 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 2uLL;
  if ((v8 & 2) != 0)
  {
    p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFFDLL;
    [(PXGGridLayout *)self _updateContentSize];
  }

  [(PXGItemsLayout *)self updateLoadedItemsIfNeeded];
  [(PXGItemsLayout *)self updateAccessoryItemsIfNeeded];
  if (!self->_updateFlags.isPerformingUpdate)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout update]"];
    [v15 handleFailureInFunction:v16 file:@"PXGGridLayout.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v9 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 4uLL;
  if ((v9 & 4) != 0)
  {
    p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFFBLL;
    [(PXGGridLayout *)self _updateSprites];
  }

  if (!self->_updateFlags.isPerformingUpdate)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout update]"];
    [v17 handleFailureInFunction:v18 file:@"PXGGridLayout.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v10 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 8uLL;
  if ((v10 & 8) != 0)
  {
    p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFF7;
    [(PXGGridLayout *)self _updateSpriteStyles];
    v10 = p_updateFlags->needsUpdate;
  }

  self->_updateFlags.isPerformingUpdate = 0;
  if (v10)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout update]"];
    [v19 handleFailureInFunction:v20 file:@"PXGGridLayout.m" lineNumber:153 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_23:
  v21.receiver = self;
  v21.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v21 update];
  self->_isUpdating = isUpdating;
}

- (void)_updateColumnsMetrics
{
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  [(PXGGridLayout *)self interItemSpacing];
  v4 = v3;
  v6 = v5;
  [(PXGGridLayout *)self padding];
  [(PXGGridLayout *)self _getItemSize:&v31 finalInteritemSpacing:&v30 finalInsets:&v28 forDesiredInterItemSpacing:v4 padding:v6, v7, v8, v9, v10];
  height = v31.height;
  if ((*&v31.height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v13 = v31.width, v14 = fabs(v31.width) != INFINITY, v31.width < 0.0) || v31.height < 0.0 || !v14)
  {
    v12 = PXAssertGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromCGSize(v31);
      *buf = 138413058;
      v33 = self;
      v34 = 2112;
      v35 = v25;
      v36 = 2048;
      width = v30.width;
      v38 = 2048;
      v39 = v30.height;
      _os_log_error_impl(&dword_21AD38000, v12, OS_LOG_TYPE_ERROR, "%@ calculated invalid itemSize:%@ interItemSpacing:%.3fx%.3f", buf, 0x2Au);
    }

    height = v31.height;
    v13 = v31.width;
  }

  v15 = v13 == self->_itemSize.width && height == self->_itemSize.height;
  if (!v15 || (v30.width == self->_finalInterItemSpacing.width ? (v16 = v30.height == self->_finalInterItemSpacing.height) : (v16 = 0), !v16 || (PXEdgeInsetsEqualToEdgeInsets() & 1) == 0))
  {
    v17 = v30;
    self->_itemSize = v31;
    self->_finalInterItemSpacing = v17;
    v18 = v29;
    *&self->_finalInsets.top = v28;
    *&self->_finalInsets.bottom = v18;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_24:
        p_updateFlags->needsUpdate = needsUpdate | 0xE;
LABEL_25:
        [(PXGItemsLayout *)self invalidateLoadedItems];
        goto LABEL_26;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 14;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_25;
    }

    if ((self->_updateFlags.updated & 0xE) != 0)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout _updateColumnsMetrics]"];
      [v26 handleFailureInFunction:v27 file:@"PXGGridLayout.m" lineNumber:177 description:{@"invalidating %lu after it already has been updated", 14}];

      abort();
    }

    goto LABEL_24;
  }

LABEL_26:
  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {
    v21 = [(PXGGridLayout *)self numberOfRows];
  }

  else
  {
    v21 = [(PXGGridLayout *)self numberOfColumns];
  }

  v22 = v21;
  v23 = [(PXGLayout *)self axGroup];
  [v23 setNonScrollingAxisItemCount:v22];
  if (v22 < 15)
  {
    if (+[PXGGridLayout _axExposeAllVisibleElements])
    {
      [v23 setLeafFeatures:{objc_msgSend(v23, "leafFeatures") | 2}];
      [v23 invalidateLeafs];
    }
  }

  else
  {
    [v23 setLeafFeatures:{objc_msgSend(v23, "leafFeatures") & 0xFFFFFFFFFFFFFFFBLL}];
  }
}

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (BOOL)_axExposeAllVisibleElements
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"axExposeAllVisibleElements"];

  return v3;
}

- (void)_updateContentSize
{
  v3 = [(PXGGridLayout *)self numberOfVisualColumns];
  v4 = [(PXGGridLayout *)self numberOfVisualRows];
  width = self->_itemSize.width;
  v6 = self->_finalInterItemSpacing.width;
  left = self->_finalInsets.left;
  right = self->_finalInsets.right;
  v9 = self->_finalInsets.top + fmax(-(self->_finalInterItemSpacing.height - v4 * (self->_itemSize.height + self->_finalInterItemSpacing.height + self->_itemCaptionSpacing)), 0.0) + self->_finalInsets.bottom;
  v10 = MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  if ([(PXGGridLayout *)self fillSafeAreaTopInset])
  {
    [(PXGLayout *)self safeAreaInsets];
    v11 = v11 - v12;
    v9 = v9 - v12;
  }

  v13 = *v10;
  if ([(PXGGridLayout *)self fillSafeAreaBottomInset])
  {
    [(PXGLayout *)self safeAreaInsets];
    v9 = v9 - v14;
  }

  [(PXGGridLayout *)self setContentOrigin:v13, v11];
  [(PXGLayout *)self setContentSize:fmax(-(v6 - v3 * (width + v6)), 0.0) + left + right, v9];

  [(PXGLayout *)self setLastBaseline:v9];
}

- (int64_t)numberOfVisualColumns
{
  if ([(PXGGridLayout *)self scrollableAxis]== 1)
  {

    return [(PXGGridLayout *)self numberOfColumns];
  }

  else
  {
    v4 = [(PXGGridLayout *)self numberOfRows];
    v5 = [(PXGGridLayout *)self numberOfVisualItems];
    v6 = (v4 + v5 - 1) / v4;
    if (v6 >= 2)
    {
      v7 = v5;
      if ([(PXGGridLayout *)self hideIncompleteLastRowOrColumn])
      {
        v6 -= v7 % v4 != 0;
      }
    }

    return v6;
  }
}

- (int64_t)numberOfVisualRows
{
  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {

    return [(PXGGridLayout *)self numberOfRows];
  }

  else
  {
    v4 = [(PXGGridLayout *)self numberOfColumns];
    v5 = [(PXGGridLayout *)self numberOfVisualItems];
    v6 = (v4 + v5 - 1) / v4;
    if (v6 >= 2)
    {
      v7 = v5;
      if ([(PXGGridLayout *)self hideIncompleteLastRowOrColumn])
      {
        v6 -= v7 % v4 != 0;
      }
    }

    return v6;
  }
}

- (int64_t)numberOfVisualItems
{
  v3 = [(PXGItemsLayout *)self numberOfItems];
  v4 = [(PXGGridLayout *)self visualItemShift]+ v3;
  v5 = [(PXGItemsLayout *)self numberOfAccessoryItems];
  return (v4 + v5) & ~((v4 + v5) >> 63);
}

- (_NSRange)itemsToLoad
{
  v4 = [(PXGItemsLayout *)self numberOfItems];
  if (v4)
  {
    v5 = v4;
    v6 = [(PXGItemsLayout *)self anchorItemTypeForAnchoredContentEdges];
    v7 = v6;
    v8 = v5 - 1;
    if (v6 != 1)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [(PXGGridLayout *)self anchorObjectReference];
    v11 = v10;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL && v10)
    {
      v9 = [(PXGItemsLayout *)self itemForObjectReference:v10];
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [(PXGItemsLayout *)self anchorItemIndexForRootAnchor];
    }

    [(PXGLayout *)self visibleRect];
    v12 = [(PXGGridLayout *)self _itemsToLoadForVisibleRect:?];
    v14 = v13;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PXGLayout *)self visibleRect];
      [(PXGGridLayout *)self _itemsToLoadForVisibleRect:0.0, 0.0];
      v16 = v15;
      if (v9 < v12 || v9 - v12 >= v14 || v14 < v15 && ![(PXGGridLayout *)self loadItemsOutsideAnchorViewport])
      {
        if (v9 >= v5)
        {
          v20 = [MEMORY[0x277CCA890] currentHandler];
          [v20 handleFailureInMethod:a2 object:self file:@"PXGGridLayout.m" lineNumber:913 description:{@"Anchor item %ld must be < numberOfItems %ld", v9, v5}];
        }

        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        if (v5 - ((v9 - v17 / 2) & ~((v9 - v17 / 2) >> 63)) >= v16)
        {
          v12 = (v9 - v17 / 2) & ~((v9 - v17 / 2) >> 63);
        }

        else
        {
          v12 = v5 - v16;
        }

        if (v17 >= (v5 - v12))
        {
          v14 = v5 - v12;
        }

        else
        {
          v14 = v17;
        }
      }
    }
  }

  else
  {
    v14 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = v12;
  v19 = v14;
  result.length = v19;
  result.location = v18;
  return result;
}

- (CGPoint)anchorViewportCenter
{
  x = self->_anchorViewportCenter.x;
  y = self->_anchorViewportCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contentOrigin
{
  x = self->_contentOrigin.x;
  y = self->_contentOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)loadedItemsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v8 loadedItemsDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0xC;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0xC) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout loadedItemsDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1064 description:{@"invalidating %lu after it already has been updated", 12}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 12;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSprites
{
  v3 = [(PXGGridLayout *)self visualItemShift];
  v65 = [(PXGLayout *)self localNumberOfSprites];
  v4 = [(PXGItemsLayout *)self delegate];
  v87 = v4;
  if ([(PXGItemsLayout *)self delegateRespondsTo:4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v85 = v5;
  v81 = [(PXGGridLayout *)self contentMode];
  v84 = [(PXGGridLayout *)self marginDelegate];
  v83 = [(PXGGridLayout *)self insetDelegate];
  v82 = [(PXGItemsLayout *)self loadedItems];
  v6 = [(PXGItemsLayout *)self dropTargetObjectReference];
  v7 = [(PXGItemsLayout *)self itemForObjectReference:v6];

  v8 = [(PXGItemsLayout *)self dropTargetStyle];
  [(PXGGridLayout *)self aspectRatioLimit];
  v80 = v9;
  [(PXGGridLayout *)self itemAspectRatio];
  v11 = v10;
  v79 = [(PXGGridLayout *)self supportsAutomaticContentRotation];
  v12 = [(PXGGridLayout *)self numberOfColumns];
  v13 = [(PXGGridLayout *)self numberOfRows];
  v14 = [(PXGGridLayout *)self scrollableAxis];
  [(PXGLayout *)self displayScale];
  v16 = v15;
  [(PXGGridLayout *)self contentOrigin];
  v72 = v18;
  v73 = v17;
  top = self->_finalInsets.top;
  left = self->_finalInsets.left;
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  [(PXGLayout *)self referenceSize];
  if (v14 == 1)
  {
    v23 = v21 / [(PXGGridLayout *)self numberOfColumns];
    v24 = v23 / v11;
  }

  else
  {
    v24 = v22 / [(PXGGridLayout *)self numberOfRows];
    v23 = v11 * v24;
  }

  v25 = [(PXGGridLayout *)self mediaTargetSizeIgnoresSpacing];
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = height;
  }

  if (v25)
  {
    v27 = v23;
  }

  else
  {
    v27 = width;
  }

  v67 = v27;
  v68 = v26;
  v75 = v16;
  PXSizeScale();
  PXSizeRound();
  v77 = v29;
  v78 = v28;
  PXSizeScale();
  v31 = v30;
  v76 = v32;
  v33 = self->_finalInterItemSpacing.width;
  v34 = self->_finalInterItemSpacing.height;
  itemCaptionSpacing = self->_itemCaptionSpacing;
  v36 = [(PXGGridLayout *)self numberOfVisualRows];
  [(PXGGridLayout *)self itemZPosition];
  v74 = v37;
  v38 = v7 != 0x7FFFFFFFFFFFFFFFLL && v8 == 2;
  v39 = v38;
  v86 = v3;
  if (v38 && v14 == 1)
  {
    v40 = (v7 + v3) / v12;
LABEL_23:
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __31__PXGGridLayout__updateSprites__block_invoke_2;
    v142[3] = &__block_descriptor_36_e8_q16__0q8l;
    v143 = v12;
    v41 = MEMORY[0x21CEE40A0](v142);
    v42 = v140;
    v140[0] = MEMORY[0x277D85DD0];
    v140[1] = 3221225472;
    v43 = __31__PXGGridLayout__updateSprites__block_invoke_4;
    v13 = v12;
    v66 = v40;
    v64 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_30;
  }

  if (v14 != 2)
  {
    v39 = 0;
  }

  if (v39 == 1)
  {
    v40 = (v7 + v3) / v13;
  }

  else
  {
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14 != 2)
    {
      goto LABEL_23;
    }
  }

  v64 = v40;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = __31__PXGGridLayout__updateSprites__block_invoke;
  v144[3] = &__block_descriptor_36_e8_q16__0q8l;
  v145 = v13;
  v41 = MEMORY[0x21CEE40A0](v144);
  v42 = v141;
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v66 = 0x7FFFFFFFFFFFFFFFLL;
  v43 = __31__PXGGridLayout__updateSprites__block_invoke_3;
LABEL_30:
  v42[2] = v43;
  v42[3] = &__block_descriptor_36_e8_q16__0q8l;
  *(v42 + 8) = v13;
  if (v36 <= 1)
  {
    v44 = 1;
  }

  else
  {
    v44 = v36;
  }

  v45 = v44 - 1;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v63 = v45;
  v46 = height + v34 + itemCaptionSpacing;
  v47 = width + v33;
  v48 = v73 + left;
  v71 = v73 + left;
  if (v8 == 1)
  {
    v50 = v7;
  }

  else
  {
    v50 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v52 = v81 == 1 && v85 != 0;
  v53 = MEMORY[0x21CEE40A0]();
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __31__PXGGridLayout__updateSprites__block_invoke_5;
  v107[3] = &unk_2782ABD18;
  v113 = v82;
  v114 = v86;
  v115 = v50;
  v116 = width;
  v117 = height;
  v107[4] = self;
  v108 = v84;
  v138 = v52;
  v109 = v83;
  v110 = v85;
  v118 = v80;
  v119 = v67;
  v120 = v68;
  v121 = v75;
  v122 = v78;
  v123 = v77;
  v139 = v79;
  v124 = v11;
  v54 = v41;
  v111 = v54;
  v55 = v53;
  v112 = v55;
  v125 = v63;
  v126 = v66;
  v127 = v7;
  v135 = v31 * 0.5;
  v128 = v64;
  v129 = v48;
  v130 = v72 + top;
  v131 = v47;
  v132 = v46;
  v133 = v31;
  v134 = v76;
  v136 = v74;
  v137 = v65;
  v56 = v85;
  v57 = v83;
  v58 = v84;
  [(PXGLayout *)self modifySpritesInRange:v65 << 32 state:v107];
  v59 = [(PXGItemsLayout *)self numberOfAccessoryItems];
  v60 = [(PXGItemsLayout *)self numberOfItems];
  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __31__PXGGridLayout__updateSprites__block_invoke_6;
  v88[3] = &unk_2782ABD40;
  v104 = v60;
  v91 = v86;
  v92 = v50;
  v88[4] = self;
  v89 = v54;
  v90 = v55;
  v93 = width;
  v94 = height;
  v95 = v78;
  v96 = v77;
  v97 = v66;
  v98 = v71;
  v99 = v72 + top;
  v100 = v47;
  v101 = v46;
  v102 = v31;
  v103 = v76;
  v49 = v31 * 0.5;
  v105 = v49;
  v106 = v74;
  v61 = v55;
  v62 = v54;
  [(PXGItemsLayout *)self modifyAccessoryItemSpritesInRange:v59 << 32 state:v88];
  [(PXGItemsLayout *)self invalidateStylableType:1];
}

- (id)marginDelegate
{
  if ([(PXGGridLayout *)self enablePerItemMargin])
  {
    v5.receiver = self;
    v5.super_class = PXGGridLayout;
    v3 = [(PXGItemsLayout *)&v5 marginDelegate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)insetDelegate
{
  if ([(PXGGridLayout *)self enablePerItemInsets])
  {
    v5.receiver = self;
    v5.super_class = PXGGridLayout;
    v3 = [(PXGItemsLayout *)&v5 insetDelegate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __31__PXGGridLayout__updateSprites__block_invoke_5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v49 = [*(a1 + 32) presentationType];
  v48 = [*(a1 + 32) mediaKind];
  v47 = [*(a1 + 32) spriteInfoFlags];
  if (v8)
  {
    v9 = a5;
    do
    {
      v10 = *(a1 + 80) + v6;
      if (v10 < *(a1 + 96))
      {
        v11 = v10 + *(a1 + 88);
      }

      else
      {
        v11 = v10 + *(a1 + 88) + 1;
      }

      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v15 = *(a1 + 104);
      v14 = *(a1 + 112);
      v16 = *(a1 + 48);
      v17 = v12;
      v18 = v13;
      [v17 itemsLayout:v18 marginForItem:v10];
      [v16 itemsLayout:v18 insetForItem:v10];

      PXSizeAdd();
      v21 = v15 - v20;
      if (v21 < 0.0)
      {
        v21 = 0.0;
      }

      v53 = v21;
      v22 = v14 - v19;
      if (v14 - v19 < 0.0)
      {
        v22 = 0.0;
      }

      v51 = v22;

      if (*(a1 + 268) == 1)
      {
        [*(a1 + 56) itemsLayout:*(a1 + 32) aspectRatioForItem:v10];
        v24 = v23;
        v25 = PXClamp();
        v26 = MEMORY[0x21CEE3950](v25);
        v51 = v27;
        v53 = v26;
        MEMORY[0x21CEE3950](v24, *(a1 + 128), *(a1 + 136));
        PXSizeScale();
        v29.i64[1] = v28;
      }

      else
      {
        v50 = *(a1 + 152);
        if (*(a1 + 269) != 1)
        {
          goto LABEL_22;
        }

        [*(a1 + 56) itemsLayout:*(a1 + 32) aspectRatioForItem:v10];
        v31 = *(a1 + 168);
        if (v31 > 0.99 && v31 < 1.01)
        {
          goto LABEL_22;
        }

        if (v30 > 0.99 && v30 < 1.01 || (v30 >= 1.0 || v31 <= 1.0) && (v30 <= 1.0 || v31 >= 1.0))
        {
          goto LABEL_22;
        }

        v29 = vextq_s8(v50, v50, 8uLL);
      }

      v50 = v29;
LABEL_22:
      v32 = (*(*(a1 + 64) + 16))();
      v33 = (*(*(a1 + 72) + 16))();
      v34 = v11 < 0;
      v35 = *(a1 + 176);
      if (v33 > v35)
      {
        v34 = 1;
      }

      if (v33 < v35)
      {
        v35 = v33;
      }

      v36 = !v34;
      v37 = v35 & ~(v35 >> 63);
      v38 = -50;
      if (v36)
      {
        v38 = v32;
      }

      if (v36)
      {
        v37 = v33;
      }

      v39 = 0.0;
      v40 = 0.0;
      if (v37 == *(a1 + 184))
      {
        v41 = *(a1 + 256);
        if (v10 < *(a1 + 192))
        {
          v41 = -v41;
        }

        v40 = v41;
      }

      v42.f64[0] = v53;
      if (v38 == *(a1 + 200))
      {
        v43 = *(a1 + 256);
        if (v10 < *(a1 + 192))
        {
          v43 = -v43;
        }

        v39 = v43;
      }

      v42.f64[1] = v51;
      v44 = *(a1 + 216) + v37 * *(a1 + 232) + *(a1 + 248) + v39;
      v45 = *(a1 + 260);
      *a3 = *(a1 + 208) + v38 * *(a1 + 224) + *(a1 + 240) + v40;
      *(a3 + 8) = v44;
      *(a3 + 16) = v45;
      *(a3 + 24) = vcvt_f32_f64(v42);
      v9->i8[0] = v49;
      v9->i8[1] = v48;
      v9[4].i8[2] = v47;
      v9[1] = vcvt_f32_f64(v50);
      ++v6;
      a3 += 32;
      v9 += 5;
      LODWORD(v8) = v8 - 1;
    }

    while (v8);
  }

  if ([*(a1 + 32) delegateRespondsTo:32])
  {
    v52 = [*(a1 + 32) delegate];
    [v52 itemsLayout:*(a1 + 32) updateTagsInSpriteInfos:a5 forItemsInRange:{*(a1 + 80), *(a1 + 264)}];
  }
}

- (void)_updateSpriteStyles
{
  v63 = [(PXGGridLayout *)self visualItemShift];
  v62 = [(PXGLayout *)self localNumberOfSprites];
  v61 = [(PXGItemsLayout *)self numberOfItems];
  v3 = [(PXGGridLayout *)self numberOfColumns];
  v4 = [(PXGGridLayout *)self numberOfRows];
  v5 = [(PXGGridLayout *)self scrollableAxis];
  [(PXGGridLayout *)self itemCornerRadius];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PXGGridLayout *)self edgeCornerRadius];
  v58 = v15;
  v59 = v14;
  v57 = v16;
  v18 = v17;
  [(PXGGridLayout *)self itemAspectRatio];
  v20 = v19;
  [(PXGLayout *)self alpha];
  v22 = v21;
  v55 = [(PXGItemsLayout *)self loadedItems];
  if ([(PXGGridLayout *)self enableBestCropRect])
  {
    v54 = [(PXGItemsLayout *)self delegateRespondsTo:8];
  }

  else
  {
    v54 = 0;
  }

  v23 = [(PXGItemsLayout *)self delegate];
  if ([(PXGItemsLayout *)self delegateRespondsTo:4])
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if ([(PXGItemsLayout *)self delegateRespondsTo:1024])
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  if (v27)
  {
    v53 = [(PXGGridLayout *)self enablePerItemCornerRadius];
  }

  else
  {
    v53 = 0;
  }

  v29 = [(PXGGridLayout *)self contentMode]== 1 && v25 != 0;
  v51 = v29;
  v52 = [(PXGGridLayout *)self supportsAutomaticContentRotation];
  [(PXGGridLayout *)self padding];
  v31 = v30 > 0.0;
  [(PXGGridLayout *)self padding];
  v33 = v32 > 0.0 && v31;
  v49 = !v33;
  v50 = v32 > 0.0;
  v47 = [(PXGLayout *)self userInterfaceDirection]== 1;
  v48 = (v3 - 1);
  v60 = v5;
  v56 = v25;
  v46 = v3;
  if (v5 == 2)
  {
    v34 = v99;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v35 = __36__PXGGridLayout__updateSpriteStyles__block_invoke;
  }

  else
  {
    v34 = v98;
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v35 = __36__PXGGridLayout__updateSpriteStyles__block_invoke_2;
    v4 = v3;
  }

  v34[2] = v35;
  v34[3] = &unk_2782ABD68;
  v34[4] = self;
  *(v34 + 10) = v4;
  v36 = MEMORY[0x21CEE40A0]();
  if ([(PXGItemsLayout *)self delegateRespondsTo:128])
  {
    v37 = v23;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  v39 = [(PXGGridLayout *)self enableCornerRadiusMaskingWhenAlignedWithEdge];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __36__PXGGridLayout__updateSpriteStyles__block_invoke_3;
  v65[3] = &unk_2782ABD90;
  v72 = v55;
  v89 = v54;
  v40 = v23;
  v66 = v40;
  v67 = self;
  v73 = v20;
  v79 = v7;
  v80 = v9;
  v81 = v11;
  v82 = v13;
  v90 = v53;
  v41 = v27;
  v91 = v49;
  v92 = v39;
  v93 = v51;
  v94 = v31;
  v95 = v47;
  v96 = v50;
  v74 = v48;
  v75 = v22;
  v68 = v41;
  v69 = v38;
  v97 = v52;
  v70 = v56;
  v71 = v36;
  v83 = v59;
  v84 = v58;
  v85 = v57;
  v86 = v18;
  v76 = v61;
  v77 = v60;
  v78 = v63;
  v87 = v46;
  v88 = v62;
  v42 = v56;
  v43 = v38;
  v44 = v36;
  [(PXGLayout *)self modifySpritesInRange:v62 << 32 state:v65];
  if ([(PXGGridLayout *)self enableEffects])
  {
    [(PXGItemsLayout *)self updateItemEffectIDsIfNeeded];
  }

  v45 = [(PXGItemsLayout *)self numberOfAccessoryItems];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __36__PXGGridLayout__updateSpriteStyles__block_invoke_4;
  v64[3] = &unk_2782ABDB8;
  v64[4] = self;
  v64[5] = v22;
  [(PXGItemsLayout *)self modifyAccessoryItemSpritesInRange:v45 << 32 state:v64];
}

- ($B30C796585FC215A6CA6704F8BA3D5B6)edgeCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

uint64_t __36__PXGGridLayout__updateSpriteStyles__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[157] + a2;
  if (v4 < 0)
  {
    v4 += [v3 numberOfRows];
  }

  return v4 / *(a1 + 40);
}

- (id)axBorderSpriteIndexes
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v4 = [(PXGItemsLayout *)self numberOfItems];
  if ([(PXGGridLayout *)self axis]== 1)
  {
    v5 = [(PXGGridLayout *)self numberOfColumns];
  }

  else
  {
    v5 = [(PXGGridLayout *)self numberOfRows];
  }

  v6 = v5;
  if (v4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  [v3 addIndexesInRange:{0, v7}];
  if (v4 > v6)
  {
    [v3 addIndexesInRange:{(v4 / v6 - 1) * v6, v4 - (v4 / v6 - 1) * v6}];
  }

  v12.receiver = self;
  v12.super_class = PXGGridLayout;
  v8 = [(PXGLayout *)&v12 axBorderSpriteIndexes];
  v9 = [(PXGItemsLayout *)self itemsForSpriteIndexes:v8];
  [v3 addIndexes:v9];

  v10 = [(PXGItemsLayout *)self spriteIndexesForItems:v3];

  return v10;
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGGridLayout.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (BOOL)shouldUpdateDecorationMediaTargetSizes
{
  v2 = [(PXGGridLayout *)self anchorObjectReference];
  v3 = v2 == 0;

  return v3;
}

- (CGRect)loadedItemsRect
{
  v3 = [(PXGItemsLayout *)self loadedItems];
  if (v4)
  {
    v5 = v4 + v3 - 1;
    [(PXGGridLayout *)self frameForItem:v3];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(PXGGridLayout *)self frameForItem:v5];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v26.origin.x = v7;
    v26.origin.y = v9;
    v26.size.width = v11;
    v26.size.height = v13;
    CGRectGetMinY(v26);
    [(PXGLayout *)self referenceSize];
    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetMaxY(v27);
    PXRectWithEdges();
  }

  else
  {
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)axDidUpdateFocusFromSpriteAtIndex:(unsigned int)a3 toSpriteAtIndex:(unsigned int)a4
{
  if (a4 == -1)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = [(PXGItemsLayout *)self itemForSpriteIndex:*&a4];
  }

  [(PXGItemsLayout *)self setItem:v5 forStylableType:1 animated:1];
}

- (void)axDidReceiveFocusMovementHint:(id)a3 forSpriteAtIndex:(unsigned int)a4
{
  v6 = a3;
  v7 = v6;
  v8 = 0uLL;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (v6)
  {
    [v6 interactionTransform];
    v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v34), v35);
    v10 = vcvt_hight_f32_f64(vcvt_f32_f64(v32), v33);
    v11 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v31);
    v8 = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v29);
  }

  else
  {
    v11 = 0uLL;
    v10 = 0uLL;
    v9 = 0uLL;
  }

  if (a4 != -1)
  {
    v18 = v11;
    v19 = v10;
    v20 = v8;
    v21 = v9;
    if ([(PXGLayout *)self localNumberOfSprites]<= a4)
    {
      v12 = PXAssertGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_21AD38000, v12, OS_LOG_TYPE_FAULT, "Focus item sprite index is out of bounds", buf, 2u);
      }
    }

    if ([(PXGLayout *)self localNumberOfSprites]> a4)
    {
      v13 = vzip1q_s32(v19, v21);
      *&v14 = vzip1q_s32(v20, v18).u64[0];
      *&v15 = vtrn2q_s32(v20, v18).u64[0];
      *&v16 = vzip2q_s32(v20, v18).u64[0];
      *&v17 = vuzp2q_s32(vuzp2q_s32(v20, v18), v20).u64[0];
      *(&v14 + 1) = vextq_s8(*&v19, v13, 8uLL).i64[1];
      *(&v15 + 1) = v13.i64[1];
      *(&v16 + 1) = __PAIR64__(v21.u32[2], v19.u32[2]);
      *(&v17 + 1) = vzip2q_s32(v19, v21).i64[1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__PXGGridLayout_axDidReceiveFocusMovementHint_forSpriteAtIndex___block_invoke;
      v22[3] = &__block_descriptor_96_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
      v23 = v14;
      v24 = v15;
      v25 = v16;
      v26 = v17;
      [(PXGLayout *)self modifySpritesInRange:a4 | 0x100000000 state:v22];
    }
  }
}

__n128 __64__PXGGridLayout_axDidReceiveFocusMovementHint_forSpriteAtIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  *(a4 + 128) = *(a1 + 64);
  *(a4 + 144) = v6;
  *(a4 + 96) = result;
  *(a4 + 112) = v5;
  return result;
}

- (NSString)diagnosticDescription
{
  v11.receiver = self;
  v11.super_class = PXGGridLayout;
  v3 = [(PXGLayout *)&v11 diagnosticDescription];
  v4 = [(PXGGridLayout *)self style];
  v5 = MEMORY[0x21CEE3180]([(PXGGridLayout *)self padding]);
  [(PXGGridLayout *)self interItemSpacing];
  v7 = v6;
  [(PXGGridLayout *)self interItemSpacing];
  v9 = [v3 px_stringByAppendingDescriptionDetailsWithFormat:@", style=%li, padding=%@, interItemSpacing=%.2fx%.2f, visualItemShift=%li", v4, v5, v7, v8, -[PXGGridLayout visualItemShift](self, "visualItemShift")];

  return v9;
}

- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PXGItemsLayout *)self numberOfItems];
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  if (CGRectIsNull(v81) || (v82.origin.x = x, v82.origin.y = y, v82.size.width = width, v82.size.height = height, CGRectIsEmpty(v82)) || !v10)
  {
    v36 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  else
  {
    v66 = v9;
    [(PXGLayout *)self convertRect:v9 fromLayout:x, y, width, height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(PXGGridLayout *)self _layoutRectInContent:?];
    v19 = v83.origin.x;
    v20 = v83.origin.y;
    v21 = v83.size.width;
    v22 = v83.size.height;
    MinY = CGRectGetMinY(v83);
    v84.origin.x = v19;
    v84.origin.y = v20;
    v84.size.width = v21;
    v84.size.height = v22;
    MinX = CGRectGetMinX(v84);
    v85.origin.x = v19;
    v85.origin.y = v20;
    v85.size.width = v21;
    v85.size.height = v22;
    MaxY = CGRectGetMaxY(v85);
    v86.origin.x = v19;
    v86.origin.y = v20;
    v86.size.width = v21;
    v86.size.height = v22;
    MaxX = CGRectGetMaxX(v86);
    top = self->_finalInsets.top;
    left = self->_finalInsets.left;
    itemCaptionSpacing = self->_itemCaptionSpacing;
    v28 = self->_finalInterItemSpacing.width;
    v27 = self->_finalInterItemSpacing.height;
    v29 = self->_itemSize.width;
    v30 = MinY - top + v27 + itemCaptionSpacing;
    v31 = itemCaptionSpacing + v27 + self->_itemSize.height;
    v32 = vcvtmd_s64_f64(v30 / v31);
    v33 = vcvtmd_s64_f64((MaxY - top) / v31);
    v34 = fmax(floor((MinX - left + v28) / (v28 + v29)), 0.0);
    v35 = vcvtmd_s64_f64((MaxX - left) / (v28 + v29));
    v74 = [(PXGGridLayout *)self visualItemShift];
    v36 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v37 = [(PXGLayout *)self spriteDataStore];
    [v37 geometries];
    v65 = v37;
    v77 = [v37 count];
    v79 = v33;
    v72 = v34;
    v73 = v35;
    v38 = self;
    if ([(PXGGridLayout *)self scrollableAxis]== 1)
    {
      v39 = [(PXGGridLayout *)self numberOfColumns];
      if (v32 <= v33)
      {
        v68 = v10 - 1;
        v70 = v39;
        v40 = v35 + v39 * v32 - v74;
        v41 = v32;
        do
        {
          if (v40 >= v68)
          {
            v42 = v68;
          }

          else
          {
            v42 = v40;
          }

          v43 = v41 * v39 - v74;
          if (v43 + v35 >= v68)
          {
            v44 = v68;
          }

          else
          {
            v44 = v43 + v35;
          }

          if ((v44 & 0x8000000000000000) == 0)
          {
            v45 = (v43 + v72) & ~((v43 + v72) >> 63);
            if (v45 <= v44)
            {
              v46 = 0;
              do
              {
                if (v46 && v42 != v45 && v41 != v32 && v41 != v79)
                {
                  goto LABEL_25;
                }

                v47 = [(PXGItemsLayout *)v38 spriteIndexForItem:v45];
                if (v47 == -1)
                {
                  goto LABEL_25;
                }

                v48 = v47;
                if (v47 >= v77)
                {
                  v63 = [MEMORY[0x277CCA890] currentHandler];
                  [v63 handleFailureInMethod:a2 object:v38 file:@"PXGGridLayout.m" lineNumber:1422 description:{@"spriteIndex %i out of bounds 0..<%i", v48, v77}];
                }

                PXRectWithCenterAndSize();
                v89.origin.x = v12;
                v89.origin.y = v14;
                v89.size.width = v16;
                v89.size.height = v18;
                if (CGRectIntersectsRect(v87, v89))
                {
LABEL_25:
                  [v36 addIndex:v45];
                }

                --v46;
                v49 = v45++ < v44;
              }

              while (v49);
            }
          }

          v39 = v70;
          v40 += v70;
          v53 = v41++ == v79;
          v35 = v73;
        }

        while (!v53);
      }
    }

    else
    {
      v50 = [(PXGGridLayout *)self numberOfRows];
      if (v34 <= v35)
      {
        v67 = v32;
        v69 = v10 - 1;
        v51 = v33 + v50 * v34 - v74;
        v71 = v50;
        do
        {
          if (v51 >= v69)
          {
            v52 = v69;
          }

          else
          {
            v52 = v51;
          }

          v53 = v34 == v72 || v34 == v35;
          v54 = v53;
          v55 = v34 * v50 - v74;
          if (v55 + v33 >= v69)
          {
            v56 = v69;
          }

          else
          {
            v56 = v55 + v33;
          }

          if ((v56 & 0x8000000000000000) == 0)
          {
            v57 = (v55 + v67) & ~((v55 + v67) >> 63);
            if (v57 <= v56)
            {
              v58 = 0;
              do
              {
                if ((v54 & 1) == 0 && v58 && v52 != v57)
                {
                  goto LABEL_55;
                }

                v59 = [(PXGItemsLayout *)v38 spriteIndexForItem:v57];
                if (v59 == -1)
                {
                  goto LABEL_55;
                }

                v60 = v59;
                if (v59 >= v77)
                {
                  v62 = [MEMORY[0x277CCA890] currentHandler];
                  [v62 handleFailureInMethod:a2 object:v38 file:@"PXGGridLayout.m" lineNumber:1449 description:{@"spriteIndex %i out of bounds 0..<%i", v60, v77}];
                }

                PXRectWithCenterAndSize();
                v90.origin.x = v12;
                v90.origin.y = v14;
                v90.size.width = v16;
                v90.size.height = v18;
                if (CGRectIntersectsRect(v88, v90))
                {
LABEL_55:
                  [v36 addIndex:v57];
                }

                --v58;
                v49 = v57++ < v56;
              }

              while (v49);
            }
          }

          v50 = v71;
          v51 += v71;
          v35 = v73;
          v53 = v34++ == v73;
          v33 = v79;
        }

        while (!v53);
      }
    }

    v9 = v66;
  }

  return v36;
}

- (int64_t)itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4
{
  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {
    v7 = [(PXGGridLayout *)self numberOfRows];
    v8 = [(PXGItemsLayout *)self numberOfItems];

    return PXGItemsGeometryItemClosestToItemHorizontalGridDefaultImplementation(a3, a4, v7, v8);
  }

  else
  {
    v10 = [(PXGGridLayout *)self numberOfColumns];
    v11 = [(PXGItemsLayout *)self numberOfItems];

    return PXGItemsGeometryItemClosestToItemVerticalGridDefaultImplementation(a3, a4, v10, v11);
  }
}

- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyState:(id)a6
{
  v8 = *&a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!self->_isUpdating && [(PXGItemsLayout *)self isLazy])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXGGridLayout.m" lineNumber:1363 description:{@"Invalid to modify sprites directly when lazy, use setNumberOfItems:withChangeDetails: instead."}];
  }

  v15.receiver = self;
  v15.super_class = PXGGridLayout;
  [(PXGLayout *)&v15 applySpriteChangeDetails:v11 countAfterChanges:v8 initialState:v12 modifyState:v13];
}

- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v15 setNumberOfItems:a3 withChangeDetails:v8 changeMediaVersionHandler:v9];
  if (!v8 || [v8 hasAnyChanges])
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_8:
        p_updateFlags->needsUpdate = needsUpdate | 0xE;
        goto LABEL_9;
      }

LABEL_7:
      if ((self->_updateFlags.updated & 0xE) != 0)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setNumberOfItems:withChangeDetails:changeMediaVersionHandler:]"];
        [v13 handleFailureInFunction:v14 file:@"PXGGridLayout.m" lineNumber:1357 description:{@"invalidating %lu after it already has been updated", 14}];

        abort();
      }

      goto LABEL_8;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_7;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 14;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_9:
}

- (void)setAccessoryPresentationType:(unsigned __int8)a3
{
  if (self->_accessoryPresentationType != a3)
  {
    self->_accessoryPresentationType = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setAccessoryPresentationType:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1350 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setAccessoryAlpha:(double)a3
{
  if (self->_accessoryAlpha == a3)
  {
    return;
  }

  self->_accessoryAlpha = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setAccessoryAlpha:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1342 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)setAccessoryMediaKind:(unsigned __int8)a3
{
  if (self->_accessoryMediaKind != a3)
  {
    self->_accessoryMediaKind = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setAccessoryMediaKind:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1334 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setPresentationType:(unsigned __int8)a3
{
  if (self->_presentationType != a3)
  {
    self->_presentationType = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setPresentationType:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1326 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setSpriteInfoFlags:(unsigned __int8)a3
{
  if (self->_spriteInfoFlags != a3)
  {
    self->_spriteInfoFlags = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setSpriteInfoFlags:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1318 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setMediaKind:(unsigned __int8)a3
{
  if (self->_mediaKind != a3)
  {
    self->_mediaKind = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setMediaKind:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1310 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setItemZPosition:(float)a3
{
  if (self->_itemZPosition == a3)
  {
    return;
  }

  self->_itemZPosition = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setItemZPosition:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1302 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)setEdgeCornerRadius:(id)a3
{
  v8.i64[0] = __PAIR64__(LODWORD(v5), LODWORD(v4));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v6));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v8, self->_edgeCornerRadius))) & 1) == 0)
  {
    self->_edgeCornerRadius.var0.var0.topLeft = v4;
    self->_edgeCornerRadius.var0.var0.topRight = v5;
    self->_edgeCornerRadius.var0.var0.bottomLeft = v6;
    self->_edgeCornerRadius.var0.var0.bottomRight = v7;
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
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setEdgeCornerRadius:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGGridLayout.m" lineNumber:1294 description:{@"invalidating %lu after it already has been updated", 12}];

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

      [(PXGLayout *)self setNeedsUpdate:*&a3.var0.var0.var0];
    }
  }
}

- (void)setItemCornerRadius:(id)a3
{
  v8.i64[0] = __PAIR64__(LODWORD(v5), LODWORD(v4));
  v8.i64[1] = __PAIR64__(LODWORD(v7), LODWORD(v6));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v8, self->_itemCornerRadius))) & 1) == 0)
  {
    self->_itemCornerRadius.var0.var0.topLeft = v4;
    self->_itemCornerRadius.var0.var0.topRight = v5;
    self->_itemCornerRadius.var0.var0.bottomLeft = v6;
    self->_itemCornerRadius.var0.var0.bottomRight = v7;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 8;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 8) != 0)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setItemCornerRadius:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGGridLayout.m" lineNumber:1286 description:{@"invalidating %lu after it already has been updated", 8}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 8;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate:*&a3.var0.var0.var0];
    }
  }
}

- (void)setLoadItemsOutsideAnchorViewport:(BOOL)a3
{
  if (self->_loadItemsOutsideAnchorViewport != a3)
  {
    self->_loadItemsOutsideAnchorViewport = a3;
    [(PXGItemsLayout *)self invalidateLoadedItems];
  }
}

- (void)setAnchorViewportCenter:(CGPoint)a3
{
  if (self->_anchorViewportCenter.x != a3.x || self->_anchorViewportCenter.y != a3.y)
  {
    self->_anchorViewportCenter = a3;
    [(PXGItemsLayout *)self invalidateLoadedItems];
  }
}

- (void)setAnchorObjectReference:(id)a3
{
  v8 = a3;
  v5 = self->_anchorObjectReference;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_anchorObjectReference, a3);
      [(PXGItemsLayout *)self invalidateLoadedItems];
    }
  }
}

- (void)setHideIncompleteLastRowOrColumn:(BOOL)a3
{
  if (self->_hideIncompleteLastRowOrColumn == a3)
  {
    return;
  }

  self->_hideIncompleteLastRowOrColumn = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 14;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_6:
    if ((self->_updateFlags.updated & 0xE) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setHideIncompleteLastRowOrColumn:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1253 description:{@"invalidating %lu after it already has been updated", 14}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 0xE;
LABEL_8:

  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)setVisualItemShift:(int64_t)a3
{
  if (self->_visualItemShift == a3)
  {
    return;
  }

  self->_visualItemShift = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 14;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_6:
    if ((self->_updateFlags.updated & 0xE) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setVisualItemShift:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1244 description:{@"invalidating %lu after it already has been updated", 14}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 0xE;
LABEL_8:

  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)setAspectRatioLimit:(double)a3
{
  if (self->_aspectRatioLimit == a3)
  {
    return;
  }

  self->_aspectRatioLimit = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 0xF;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 0xF) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setAspectRatioLimit:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1236 description:{@"invalidating %lu after it already has been updated", 15}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 15;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)setItemAspectRatio:(double)a3
{
  if (self->_itemAspectRatio == a3)
  {
    return;
  }

  self->_itemAspectRatio = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_7:
    if (self->_updateFlags.updated)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setItemAspectRatio:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1227 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)setItemCaptionSpacing:(double)a3
{
  if (self->_itemCaptionSpacing == a3)
  {
    return;
  }

  self->_itemCaptionSpacing = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 6;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_6:
    if ((self->_updateFlags.updated & 6) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setItemCaptionSpacing:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1218 description:{@"invalidating %lu after it already has been updated", 6}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 6;
LABEL_8:

  [(PXGLayout *)self invalidateDecoration];
}

- (void)setInterItemSpacing:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v21 = *MEMORY[0x277D85DE8];
  p_interItemSpacing = &self->_interItemSpacing;
  if ((PXSizeApproximatelyEqualToSize() & 1) == 0)
  {
    v7 = fabs(height);
    v8 = fabs(width) == INFINITY || v7 == INFINITY;
    if (v8 || width < 0.0 || height < 0.0)
    {
      v9 = PXAssertGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v16 = self;
        v17 = 2048;
        v18 = width;
        v19 = 2048;
        v20 = height;
        _os_log_error_impl(&dword_21AD38000, v9, OS_LOG_TYPE_ERROR, "%@ got invalid interitemSpacing:%.3fx%.3f", buf, 0x20u);
      }
    }

    p_interItemSpacing->width = width;
    p_interItemSpacing->height = height;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_17:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_16:
      if (self->_updateFlags.updated)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setInterItemSpacing:]"];
        [v13 handleFailureInFunction:v14 file:@"PXGGridLayout.m" lineNumber:1210 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_17;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_16;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setFillSafeAreaBottomInset:(BOOL)a3
{
  if (self->_fillSafeAreaBottomInset != a3)
  {
    self->_fillSafeAreaBottomInset = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0xF;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0xF) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setFillSafeAreaBottomInset:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1201 description:{@"invalidating %lu after it already has been updated", 15}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 15;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setFillSafeAreaTopInset:(BOOL)a3
{
  if (self->_fillSafeAreaTopInset != a3)
  {
    self->_fillSafeAreaTopInset = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0xF;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0xF) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setFillSafeAreaTopInset:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1192 description:{@"invalidating %lu after it already has been updated", 15}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 15;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_padding = &self->_padding;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_padding->top = top;
    p_padding->left = left;
    p_padding->bottom = bottom;
    p_padding->right = right;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 9;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 9) != 0)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setPadding:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGGridLayout.m" lineNumber:1183 description:{@"invalidating %lu after it already has been updated", 9}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 9;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setNumberOfRows:(int64_t)a3
{
  if (self->_numberOfRows != a3)
  {
    self->_numberOfRows = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0xF;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0xF) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setNumberOfRows:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1175 description:{@"invalidating %lu after it already has been updated", 15}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 15;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setNumberOfColumns:(int64_t)a3
{
  if (self->_numberOfColumns != a3)
  {
    self->_numberOfColumns = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0xF;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0xF) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setNumberOfColumns:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1166 description:{@"invalidating %lu after it already has been updated", 15}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 15;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setAxis:(int64_t)a3
{
  if (self->_axis != a3)
  {
    self->_axis = a3;
    [(PXGGridLayout *)self setNeedsUpdateOfScrollableAxis];
  }
}

- (void)setEnablePerItemMargin:(BOOL)a3
{
  if (self->_enablePerItemMargin != a3)
  {
    self->_enablePerItemMargin = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setEnablePerItemMargin:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1149 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setEnablePerItemInsets:(BOOL)a3
{
  if (self->_enablePerItemInsets != a3)
  {
    self->_enablePerItemInsets = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 4;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 4) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setEnablePerItemInsets:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1141 description:{@"invalidating %lu after it already has been updated", 4}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 4;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setEnablePerItemCornerRadius:(BOOL)a3
{
  if (self->_enablePerItemCornerRadius != a3)
  {
    self->_enablePerItemCornerRadius = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 8;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 8) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setEnablePerItemCornerRadius:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1133 description:{@"invalidating %lu after it already has been updated", 8}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 8;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setEnableEffects:(BOOL)a3
{
  if (self->_enableEffects != a3)
  {
    self->_enableEffects = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 8;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 8) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setEnableEffects:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1125 description:{@"invalidating %lu after it already has been updated", 8}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 8;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setEnableBestCropRect:(BOOL)a3
{
  if (self->_enableBestCropRect != a3)
  {
    self->_enableBestCropRect = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 8;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 8) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setEnableBestCropRect:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1117 description:{@"invalidating %lu after it already has been updated", 8}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 8;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setContentMode:(int64_t)a3
{
  if (self->_contentMode != a3)
  {
    self->_contentMode = a3;
    [(PXGLayout *)self invalidateDecoration];
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0xF;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0xF) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setContentMode:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1109 description:{@"invalidating %lu after it already has been updated", 15}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 15;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setContentOrigin:(CGPoint)a3
{
  if (self->_contentOrigin.x != a3.x || self->_contentOrigin.y != a3.y)
  {
    self->_contentOrigin = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_10:
        p_updateFlags->needsUpdate = needsUpdate | 0xC;
        return;
      }

LABEL_9:
      if ((self->_updateFlags.updated & 0xC) != 0)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setContentOrigin:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGGridLayout.m" lineNumber:1100 description:{@"invalidating %lu after it already has been updated", 12}];

        abort();
      }

      goto LABEL_10;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_9;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 12;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
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
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setStyle:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGGridLayout.m" lineNumber:1092 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)setNeedsUpdateOfScrollableAxis
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGLayout *)&v8 setNeedsUpdateOfScrollableAxis];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0xF;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0xF) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout setNeedsUpdateOfScrollableAxis]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1084 description:{@"invalidating %lu after it already has been updated", 15}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 15;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)effectsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v8 effectsDidChange];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout effectsDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1079 description:{@"invalidating %lu after it already has been updated", 8}];

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

- (void)accessoryItemsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v8 accessoryItemsDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0xC;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0xC) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout accessoryItemsDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1074 description:{@"invalidating %lu after it already has been updated", 12}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 12;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)numberOfAccessoryItemsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGItemsLayout *)&v8 numberOfAccessoryItemsDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout numberOfAccessoryItemsDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1069 description:{@"invalidating %lu after it already has been updated", 2}];

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
}

- (void)userInterfaceDirectionDidChange
{
  v8.receiver = self;
  v8.super_class = PXGGridLayout;
  [(PXGLayout *)&v8 userInterfaceDirectionDidChange];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGridLayout userInterfaceDirectionDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGridLayout.m" lineNumber:1042 description:{@"invalidating %lu after it already has been updated", 8}];

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

- (id)navigationObjectReferenceForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9.receiver = self;
  v9.super_class = PXGGridLayout;
  v6 = [(PXGLayout *)&v9 navigationObjectReferenceForLocation:?];
  if (!v6)
  {
    v7 = [(PXGGridLayout *)self itemClosestTo:x, y];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(PXGItemsLayout *)self objectReferenceForItem:v7];
    }
  }

  return v6;
}

- (id)dropTargetObjectReferenceForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PXGGridLayout *)self _layoutPointInContent:?];
  v7 = v6;
  v9 = v8;
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  [(PXGLayout *)self contentSize];
  v13 = v12;
  v15 = v14;
  v33.origin.x = v10;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  if ((v7 > CGRectGetMaxX(v33) || (v34.origin.x = v10, v34.origin.y = v11, v34.size.width = v13, v34.size.height = v15, v9 > CGRectGetMaxY(v34))) && [(PXGItemsLayout *)self dropTargetStyle]!= 2 || (v16 = [(PXGGridLayout *)self itemClosestTo:x, y], v16 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v17 = 0;
    goto LABEL_24;
  }

  v18 = v16;
  [(PXGGridLayout *)self _frameForItem:v16 usingInterItemSpacing:0 itemSize:self->_finalInterItemSpacing.width insets:self->_finalInterItemSpacing.height contentMode:self->_itemSize.width, self->_itemSize.height, self->_finalInsets.top, self->_finalInsets.left, self->_finalInsets.bottom, self->_finalInsets.right];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if ([(PXGItemsLayout *)self dropTargetStyle]== 2)
  {
    v35.origin.x = v20;
    v35.origin.y = v22;
    v35.size.width = v24;
    v35.size.height = v26;
    if (x <= CGRectGetMidX(v35))
    {
      goto LABEL_23;
    }

LABEL_20:
    if (v18 + 1 < [(PXGItemsLayout *)self numberOfItems])
    {
      ++v18;
    }

    else
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_23;
  }

  v36.origin.x = v20;
  v36.origin.y = v22;
  v36.size.width = v24;
  v36.size.height = v26;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = v20;
  v37.origin.y = v22;
  v37.size.width = v24;
  v37.size.height = v26;
  MinX = CGRectGetMinX(v37);
  if (v18 < 1 || (x < MinX ? (v29 = y < MaxY) : (v29 = 0), !v29))
  {
    v38.origin.x = v20;
    v38.origin.y = v22;
    v38.size.width = v24;
    v38.size.height = v26;
    if (x <= CGRectGetMaxX(v38) && y < MaxY)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  --v18;
LABEL_23:
  v17 = [(PXGItemsLayout *)self objectReferenceForItem:v18];
LABEL_24:

  return v17;
}

- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v8 = a3;
  v9 = [(PXGItemsLayout *)self itemForObjectReference:v8 options:a4];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = -1;
  }

  else
  {
    v10 = [(PXGItemsLayout *)self spriteIndexForItem:v9];
  }

  v11 = v8;
  *a5 = v8;

  return v10;
}

- (CGSize)sizeForItem:(int64_t)a3
{
  p_itemSize = &self->_itemSize;
  v6 = [(PXGGridLayout *)self marginDelegate];
  v7 = [(PXGGridLayout *)self insetDelegate];
  width = p_itemSize->width;
  height = p_itemSize->height;
  v10 = self;
  [v6 itemsLayout:v10 marginForItem:a3];
  [v7 itemsLayout:v10 insetForItem:a3];

  PXSizeAdd();
  v13 = width - v12;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  if (height - v11 >= 0.0)
  {
    v15 = height - v11;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [(PXGItemsLayout *)v10 delegate];
  if ([(PXGItemsLayout *)v10 delegateRespondsTo:4])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if ([(PXGGridLayout *)v10 contentMode]== 1 && v18)
  {
    [v18 itemsLayout:v10 aspectRatioForItem:a3];
    [(PXGGridLayout *)v10 aspectRatioLimit];
    v19 = PXClamp();
    v14 = MEMORY[0x21CEE3950](v19);
    v15 = v20;
  }

  v21 = v14;
  v22 = v15;
  result.height = v22;
  result.width = v21;
  return result;
}

- (CGRect)_pageAlignedRectForVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6 = +[PXGTextureManagerPreheatingStrategy defaultPreheatingStrategy];
  [v6 maxPreheatingDistance];

  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {
    v7 = 0.0;
    PXEdgeInsetsMake();
    PXEdgeInsetsInsetRect();
    x = v31.origin.x;
    y = v31.origin.y;
    v10 = v31.size.width;
    v11 = v31.size.height;
    v12 = round(width * 0.5);
    v13 = CGRectGetMinX(v31) / v12;
    v14 = floor(v13);
    v15 = vcvtmd_s64_f64(v13);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = v10;
    v32.size.height = v11;
    MaxX = CGRectGetMaxX(v32);
    if (MaxX < 0.0)
    {
      MaxX = 0.0;
    }

    v17 = v12 * v14;
    v18 = v12 * (vcvtpd_s64_f64(MaxX / v12) - v15 + 1);
  }

  else
  {
    v17 = 0.0;
    PXEdgeInsetsMake();
    PXEdgeInsetsInsetRect();
    v19 = v33.origin.x;
    v20 = v33.origin.y;
    v18 = v33.size.width;
    v21 = v33.size.height;
    v22 = round(height * 0.5);
    v23 = CGRectGetMinY(v33) / v22;
    v24 = floor(v23);
    v25 = vcvtmd_s64_f64(v23);
    v34.origin.x = v19;
    v34.origin.y = v20;
    v34.size.width = v18;
    v34.size.height = v21;
    MaxY = CGRectGetMaxY(v34);
    if (MaxY < 0.0)
    {
      MaxY = 0.0;
    }

    v7 = v22 * v24;
    v11 = v22 * (vcvtpd_s64_f64(MaxY / v22) - v25 + 1);
  }

  v27 = v17;
  v28 = v7;
  v29 = v18;
  v30 = v11;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (_NSRange)_itemsToLoadForVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(PXGItemsLayout *)self isLazy])
  {
    v18 = [(PXGItemsLayout *)self numberOfItems];
    v17 = 0;
    goto LABEL_8;
  }

  [(PXGGridLayout *)self anchorViewportCenter];
  v9 = v8;
  v11 = v10;
  if ((PXPointIsNull() & 1) != 0 || ([(PXGGridLayout *)self anchorObjectReference], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || ([(PXGGridLayout *)self anchorObjectReference], v13 = objc_claimAutoreleasedReturnValue(), v14 = [(PXGItemsLayout *)self itemForObjectReference:v13], v13, v14 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(PXGGridLayout *)self _pageAlignedRectForVisibleRect:x, y, width, height];
    location = [(PXGGridLayout *)self itemRangeInRect:?];
LABEL_6:
    v17 = location;
    v18 = length;
    goto LABEL_8;
  }

  v21 = [(PXGGridLayout *)self scrollableAxis];
  [(PXGGridLayout *)self frameForItem:v14];
  PXRectGetCenter();
  PXPointSubtract();
  if (v21 == 2)
  {
    v24 = v22 - v9;
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    CGRectOffset(v43, v24, 0.0);
    [(PXGGridLayout *)self contentOrigin];
    [(PXGLayout *)self contentSize];
    [(PXGLayout *)self visibleRect];
  }

  else
  {
    v25 = v23 - v11;
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    CGRectOffset(v44, 0.0, v25);
    [(PXGGridLayout *)self contentOrigin];
    [(PXGLayout *)self contentSize];
  }

  PXRectShiftedInsideConstrainingRect();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v17 = [(PXGGridLayout *)self itemRangeInRect:?];
  v18 = v34;
  if ((v14 < v17 || v14 - v17 >= v34) && [(PXGGridLayout *)self loadItemsOutsideAnchorViewport])
  {
    if ([(PXGGridLayout *)self scrollableAxis]== 2)
    {
      v35 = [(PXGGridLayout *)self numberOfRows];
    }

    else
    {
      v35 = [(PXGGridLayout *)self numberOfColumns];
    }

    v36 = 0x7FFFFFFFFFFFFFFFLL;
    if (v18 && v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = v18 + v17 - 1;
      if (v37 >= v14)
      {
        v37 = v14;
      }

      if (v17 > v37)
      {
        v37 = v17;
      }

      v36 = v14 - v37;
      if (v36 < 0)
      {
        v36 = -v36;
      }
    }

    if (v36 > 2 * v35)
    {
      [(PXGGridLayout *)self _pageAlignedRectForVisibleRect:v27, v29, v31, v33];
      v17 = [(PXGGridLayout *)self itemRangeInRect:?];
      v18 = v38;
    }

    v40.location = v17;
    v40.length = v18;
    v42.location = v14;
    v42.length = 1;
    v39 = NSUnionRange(v40, v42);
    length = v39.length;
    location = v39.location;
    goto LABEL_6;
  }

LABEL_8:
  v19 = v17;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (_NSRange)itemRangeForSpriteIndexRange:(_PXGSpriteIndexRange)a3
{
  length = a3.length;
  v4 = [(PXGItemsLayout *)self loadedItems]+ a3.location;
  v5 = length;
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)itemRangeInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    goto LABEL_23;
  }

  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  if (CGRectIsEmpty(v59))
  {
    goto LABEL_23;
  }

  [(PXGGridLayout *)self _layoutRectInContent:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PXGItemsLayout *)self numberOfItems];
  v18 = [(PXGGridLayout *)self scrollableAxis];
  v60.origin.x = v10;
  v60.origin.y = v12;
  v60.size.width = v14;
  v60.size.height = v16;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v10;
  v61.origin.y = v12;
  v61.size.width = v14;
  v61.size.height = v16;
  MaxY = CGRectGetMaxY(v61);
  v62.origin.x = v10;
  v62.origin.y = v12;
  v62.size.width = v14;
  v62.size.height = v16;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = v10;
  v63.origin.y = v12;
  v63.size.width = v14;
  v63.size.height = v16;
  MaxX = CGRectGetMaxX(v63);
  if (v18 == 2)
  {
    v23 = v17 - 1;
    if (v17 >= 1)
    {
      v24 = 0;
      v25 = fabs(MaxX) != INFINITY;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      if (fabs(MinX) == INFINITY || !v25)
      {
        goto LABEL_25;
      }

      left = self->_finalInsets.left;
      v28 = self->_finalInterItemSpacing.width;
      v29 = v28 + self->_itemSize.width;
      v30 = vcvtmd_s64_f64((MinX - left + v28) / v29);
      v31 = vcvtpd_s64_f64((MaxX - left + v28) / v29);
      v32 = [(PXGGridLayout *)self visualItemShift];
      v33 = [(PXGGridLayout *)self numberOfRows];
      v34 = v33 * v30 - v32;
      if (v34 >= v23)
      {
        v34 = v23;
      }

      v35 = ~v32 + v33 * v31;
      if (v35 >= v23)
      {
        v35 = v23;
      }

      v36 = v35 & ~(v35 >> 63);
      if (v34 <= v36)
      {
        v26 = v34 & ~(v34 >> 63);
        v37 = v36 + 1;
        v24 = v36 + 1 - v26;
        if (v36 >= [(PXGItemsLayout *)self numberOfItems])
        {
          v38 = [MEMORY[0x277CCA890] currentHandler];
          [v38 handleFailureInMethod:a2 object:self file:@"PXGGridLayout.m" lineNumber:765 description:{@"Should not return items out of bounds (horiz), %lu < %ld.", v37, -[PXGItemsLayout numberOfItems](self, "numberOfItems")}];
LABEL_27:

          goto LABEL_25;
        }

        goto LABEL_25;
      }

LABEL_23:
      v24 = 0;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_25;
    }
  }

  v24 = 0;
  v39 = fabs(MinY) != INFINITY;
  v40 = fabs(MaxY) != INFINITY;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  if (v18 == 2)
  {
    goto LABEL_25;
  }

  v41 = v17 < 1;
  v42 = v17 - 1;
  if (v41 || !v39 || !v40)
  {
    goto LABEL_25;
  }

  top = self->_finalInsets.top;
  v44 = self->_finalInterItemSpacing.height;
  itemCaptionSpacing = self->_itemCaptionSpacing;
  v46 = MinY - top + v44 + itemCaptionSpacing;
  v47 = itemCaptionSpacing + v44 + self->_itemSize.height;
  v48 = vcvtmd_s64_f64(v46 / v47);
  v49 = vcvtpd_s64_f64((MaxY - top) / v47);
  v50 = [(PXGGridLayout *)self visualItemShift];
  v51 = [(PXGGridLayout *)self numberOfColumns];
  v52 = v51 * v48 - v50;
  if (v52 >= v42)
  {
    v52 = v42;
  }

  v53 = ~v50 + v51 * v49;
  if (v53 >= v42)
  {
    v53 = v42;
  }

  v54 = v53 & ~(v53 >> 63);
  if (v52 > v54)
  {
    goto LABEL_23;
  }

  v26 = v52 & ~(v52 >> 63);
  v55 = v54 + 1;
  v24 = v54 + 1 - v26;
  if (v54 >= [(PXGItemsLayout *)self numberOfItems])
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PXGGridLayout.m" lineNumber:782 description:{@"Should not return items out of bounds (vert), %lu < %ld.", v55, -[PXGItemsLayout numberOfItems](self, "numberOfItems")}];
    goto LABEL_27;
  }

LABEL_25:
  v56 = v26;
  v57 = v24;
  result.length = v57;
  result.location = v56;
  return result;
}

- (int64_t)itemClosestTo:(CGPoint)a3
{
  [(PXGGridLayout *)self _layoutPointInContent:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(PXGItemsLayout *)self numberOfItems];
  v9 = v8 - 1;
  if (v8 < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = [(PXGGridLayout *)self numberOfVisualRows];
  v11 = [(PXGGridLayout *)self numberOfVisualColumns];
  v12 = vcvtmd_s64_f64((v7 - self->_finalInsets.top + self->_finalInterItemSpacing.height + self->_itemCaptionSpacing) / (self->_itemCaptionSpacing + self->_finalInterItemSpacing.height + self->_itemSize.height));
  v13 = vcvtmd_s64_f64((v5 - self->_finalInsets.left + self->_finalInterItemSpacing.width) / (self->_finalInterItemSpacing.width + self->_itemSize.width));
  if (v10 - 1 < v12)
  {
    v12 = v10 - 1;
  }

  v14 = v12 & ~(v12 >> 63);
  v15 = v11 - 1;
  if (v11 - 1 >= v13)
  {
    v15 = v13;
  }

  v16 = v15 & ~(v15 >> 63);
  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {
    v17 = v14 + [(PXGGridLayout *)self numberOfRows]* v16;
  }

  else
  {
    v17 = v16 + [(PXGGridLayout *)self numberOfColumns]* v14;
  }

  v19 = v17 - [(PXGGridLayout *)self visualItemShift];
  if (v19 >= v9)
  {
    v19 = v9;
  }

  return v19 & ~(v19 >> 63);
}

- (int64_t)columnForItem:(int64_t)a3
{
  v4 = self->_visualItemShift + a3;
  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {
    if (v4 < 0)
    {
      v4 += [(PXGGridLayout *)self numberOfRows];
    }

    return v4 / [(PXGGridLayout *)self numberOfRows];
  }

  else
  {
    if (v4 < 0)
    {
      v4 += [(PXGGridLayout *)self numberOfColumns];
    }

    return v4 % [(PXGGridLayout *)self numberOfColumns];
  }
}

- (int64_t)_rowForItem:(int64_t)a3
{
  v4 = self->_visualItemShift + a3;
  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {
    if (v4 < 0)
    {
      v4 += [(PXGGridLayout *)self numberOfRows];
    }

    return v4 % [(PXGGridLayout *)self numberOfRows];
  }

  else
  {
    if (v4 < 0)
    {
      v4 += [(PXGGridLayout *)self numberOfColumns];
    }

    return v4 / [(PXGGridLayout *)self numberOfColumns];
  }
}

- (void)_getItemSize:(CGSize *)a3 finalInteritemSpacing:(CGSize *)a4 finalInsets:(UIEdgeInsets *)a5 forDesiredInterItemSpacing:(CGSize)a6 padding:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  height = a6.height;
  width = a6.width;
  v16 = [(PXGGridLayout *)self numberOfColumns];
  v17 = [(PXGGridLayout *)self numberOfRows];
  [(PXGLayout *)self referenceSize];
  v47 = left;
  v49 = right;
  v43 = v18 - left - right;
  [(PXGLayout *)self referenceSize];
  v46 = top;
  v48 = bottom;
  v42 = v19 - top - bottom;
  [(PXGLayout *)self displayScale];
  v44 = v20;
  v21 = [(PXGGridLayout *)self style];
  v22 = [(PXGGridLayout *)self scrollableAxis];
  if (v21 == 2)
  {
    goto LABEL_4;
  }

  if (v21 == 1)
  {
    v50 = 0;
    v51 = 0.0;
    if (v22 == 2)
    {
      [MEMORY[0x277D3CD60] bestItemSizeForAvailableWidth:v17 screenScale:&v51 columns:&v50 bestSpacing:v42 bestInset:v44];
      v28 = v32;
      v29 = 0.0;
    }

    else
    {
      [MEMORY[0x277D3CD60] bestItemSizeForAvailableWidth:v16 screenScale:&v51 columns:&v50 bestSpacing:v43 bestInset:v44];
      v29 = v34;
      v28 = 0.0;
    }

    v27 = v51;
    PXEdgeInsetsAdd();
    v26 = v35;
    v25 = v36;
    v23 = v37;
    v24 = v38;
  }

  else
  {
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    if (!v21)
    {
LABEL_4:
      [(PXGGridLayout *)self itemAspectRatio];
      if (v22 == 2)
      {
        v27 = height;
        v28 = (v42 - (v17 - 1) * height) / v17;
        v29 = v28 * v30;
        if (v21 == 2)
        {
          PXFloatRoundToPixel();
          v29 = v31;
        }
      }

      else
      {
        v29 = (v43 - (v16 - 1) * width) / v16;
        v28 = v29 / v30;
        v27 = height;
        if (v21 == 2)
        {
          PXFloatRoundToPixel();
          v28 = v33;
        }
      }

      v23 = v48;
      v24 = v49;
      v26 = v46;
      v25 = v47;
      goto LABEL_18;
    }
  }

  [(PXGGridLayout *)self itemAspectRatio];
  v40 = v28 * v39;
  v41 = v29 / v39;
  if (v22 != 2)
  {
    v28 = v41;
  }

  width = v27;
  if (v22 == 2)
  {
    v29 = v40;
  }

LABEL_18:
  a3->width = v29;
  a3->height = v28;
  a4->width = width;
  a4->height = v27;
  a5->top = v26;
  a5->left = v25;
  a5->bottom = v23;
  a5->right = v24;
}

- (CGRect)_frameForItem:(int64_t)a3 usingInterItemSpacing:(CGSize)a4 itemSize:(CGSize)a5 insets:(UIEdgeInsets)a6 contentMode:(int64_t)a7
{
  left = a6.left;
  top = a6.top;
  height = a5.height;
  width = a5.width;
  v12 = a4.height;
  v13 = a4.width;
  v16 = [(PXGGridLayout *)self _rowForItem:a4.width, a4.height, a5.width, a5.height, a6.top, a6.left, a6.bottom, a6.right];
  v17 = [(PXGGridLayout *)self columnForItem:a3];
  v18 = v16 - (v16 >= [(PXGGridLayout *)self numberOfVisualRows]);
  v19 = left + (v17 - (v17 >= [(PXGGridLayout *)self numberOfVisualColumns])) * (v13 + width);
  v20 = top + v18 * (v12 + height + self->_itemCaptionSpacing);
  if ([(PXGItemsLayout *)self delegateRespondsTo:4])
  {
    v21 = [(PXGItemsLayout *)self delegate];
    v22 = v21;
    if (a7 == 1 && v21)
    {
      [v21 itemsLayout:self aspectRatioForItem:a3];
      [(PXGGridLayout *)self aspectRatioLimit];
      PXClamp();
      PXRectWithAspectRatioFittingRect();
      v19 = v23;
      v20 = v24;
      width = v25;
      height = v26;
    }
  }

  else
  {
    v22 = 0;
  }

  [(PXGGridLayout *)self _contentRectInLayout:v19, v20, width, height];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v28;
  v36 = v30;
  v37 = v32;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)frameForItem:(int64_t)a3 usingInterItemSpacing:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0u;
  v18 = 0u;
  [(PXGGridLayout *)self padding];
  [(PXGGridLayout *)self _getItemSize:&v21 finalInteritemSpacing:&v19 finalInsets:&v17 forDesiredInterItemSpacing:width padding:height, v8, v9, v10, v11];
  v12 = [(PXGGridLayout *)self contentMode];
  [(PXGGridLayout *)self _frameForItem:a3 usingInterItemSpacing:v12 itemSize:v19 insets:v20 contentMode:v21, v22, v17, v18];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForItem:(int64_t)a3
{
  p_finalInterItemSpacing = &self->_finalInterItemSpacing;
  p_itemSize = &self->_itemSize;
  p_finalInsets = &self->_finalInsets;
  v8 = [(PXGGridLayout *)self contentMode];
  width = p_finalInterItemSpacing->width;
  height = p_finalInterItemSpacing->height;
  v11 = p_itemSize->width;
  v12 = p_itemSize->height;
  top = p_finalInsets->top;
  left = p_finalInsets->left;
  bottom = p_finalInsets->bottom;
  right = p_finalInsets->right;

  [(PXGGridLayout *)self _frameForItem:a3 usingInterItemSpacing:v8 itemSize:width insets:height contentMode:v11, v12, top, left, bottom, right];
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)a3
{
  v4 = [(PXGGridLayout *)self itemRangeInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  v17.location = [(PXGItemsLayout *)self loadedItems];
  v17.length = v7;
  v16.location = v4;
  v16.length = v6;
  v8 = NSIntersectionRange(v16, v17);
  if (v8.length)
  {
    v9 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v8.location, v8.length}];
    v10 = [(PXGItemsLayout *)self spriteIndexesForItems:v9];

    v11 = [v10 px_coveringRange];
    v13 = v11 | (v12 << 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return v13;
}

- (CGRect)_contentRectInLayout:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(PXGGridLayout *)self _contentPointInLayout:a3.origin.x, a3.origin.y];
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_layoutRectInContent:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(PXGGridLayout *)self _layoutPointInContent:a3.origin.x, a3.origin.y];
  v7 = width;
  v8 = height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGPoint)_contentPointInLayout:(CGPoint)a3
{
  [(PXGGridLayout *)self contentOrigin];

  PXPointAdd();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_layoutPointInContent:(CGPoint)a3
{
  [(PXGGridLayout *)self contentOrigin];

  PXPointSubtract();
  result.y = v4;
  result.x = v3;
  return result;
}

uint64_t __36__PXGGridLayout__updateSpriteStyles__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v3[157] + a2;
  if (v4 < 0)
  {
    v4 += [v3 numberOfColumns];
  }

  return v4 % *(a1 + 40);
}

uint64_t __36__PXGGridLayout__updateSpriteStyles__block_invoke_3(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v40[4] = *MEMORY[0x277D85DE8];
  v6 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v7 = a2;
    v32 = vrev64q_s32(0);
    v8 = a4;
    do
    {
      v9 = *(v5 + 80) + v7;
      v10 = xmmword_21AE2D390;
      if (*(v5 + 176) == 1)
      {
        [*(v5 + 32) itemsLayout:*(v5 + 40) bestCropRectForItem:*(v5 + 80) + v7 withAspectRatio:*(v5 + 88)];
        v12.f64[1] = v11;
        v14.f64[1] = v13;
        v10 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v12);
      }

      if (*(v5 + 177) == 1)
      {
        v34 = v10;
        [*(v5 + 48) itemsLayout:*(v5 + 40) cornerRadiusForItem:v9];
        v10 = v34;
        v19.i64[0] = __PAIR64__(v16, v15);
        v19.i64[1] = __PAIR64__(v18, v17);
      }

      else
      {
        v19 = *(v5 + 136);
      }

      if (*(v5 + 178) == 1 && *(v5 + 179) == 1 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v19)))) & 1) != 0 && (*(v5 + 180) & 1) == 0)
      {
        v33 = v19;
        v35 = v10;
        v20 = (*(*(v5 + 72) + 16))();
        if ((*(v5 + 181) & 1) != 0 || v20)
        {
          v10 = v35;
          v19 = v33;
          if ((*(v5 + 183) & 1) == 0 && v20 == *(v5 + 96))
          {
            v19 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*(v5 + 182))), 0x1FuLL)), vtrn2q_s32(v32, v33), vtrn2q_s32(vrev64q_s32(v33), 0));
          }
        }

        else
        {
          v19 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*(v5 + 182))), 0x1FuLL)), vtrn2q_s32(vrev64q_s32(v33), 0), vtrn2q_s32(v32, v33));
          v10 = v35;
        }
      }

      *(v8 + 32) = xmmword_21AE2E280;
      *(v8 + 48) = unk_21AE2E290;
      *(v8 + 96) = xmmword_21AE2E2C0;
      *(v8 + 112) = unk_21AE2E2D0;
      *(v8 + 128) = xmmword_21AE2E2E0;
      *(v8 + 144) = unk_21AE2E2F0;
      *(v8 + 64) = xmmword_21AE2E2A0;
      *(v8 + 80) = unk_21AE2E2B0;
      *v8 = PXGSpriteStyleDefault;
      *(v8 + 16) = unk_21AE2E270;
      *(v8 + 4) = v10;
      *(v8 + 36) = v19;
      v21 = *(v5 + 104);
      *v8 = v21;
      result = [*(v5 + 56) itemsLayout:*(v5 + 40) rotationAngleForItem:{v9, *&v32}];
      *&v22 = v22;
      *(v8 + 56) = LODWORD(v22);
      if (*(v5 + 184) == 1 && (*(v5 + 180) & 1) == 0)
      {
        result = [*(v5 + 64) itemsLayout:*(v5 + 40) aspectRatioForItem:v9];
        v24 = *(v5 + 88);
        if ((v24 <= 0.99 || v24 >= 1.01) && (v23 <= 0.99 || v23 >= 1.01) && (v23 < 1.0 && v24 > 1.0 || v23 > 1.0 && v24 < 1.0))
        {
          *(v8 + 70) = 1;
        }
      }

      ++v7;
      v8 += 160;
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*(v5 + 152))))) & 1) != 0 && *(v5 + 112) >= 1)
  {
    v25 = [*(v5 + 40) numberOfVisualRows] - 1;
    v26 = [*(v5 + 40) numberOfVisualColumns] - 1;
    result = [*(v5 + 40) numberOfRows];
    v27 = 0;
    v40[0] = 0;
    v40[1] = result * v26;
    v40[2] = result - 1;
    v40[3] = result * v26 + result - 1;
    v28 = *(v5 + 168);
    v36 = 0;
    v37 = (v28 - 1);
    v38 = v25 * v28;
    v39 = v25 * v28 + v37;
    v29 = &v36;
    if (*(v5 + 120) == 2)
    {
      v29 = v40;
    }

    do
    {
      v30 = v29[v27];
      v31 = *(v5 + 128);
      if (v30 - v31 >= 0 && v30 - v31 < *(v5 + 172))
      {
        *(a4 + 36 + 160 * v30 - 160 * v31 + 4 * v27) = *(v5 + 152 + 4 * v27);
      }

      ++v27;
    }

    while (v27 != 4);
  }

  return result;
}

float __36__PXGGridLayout__updateSpriteStyles__block_invoke_4(uint64_t a1, unint64_t a2, uint64_t a3, float *a4)
{
  v6 = HIDWORD(a2);
  [*(a1 + 32) accessoryAlpha];
  if (v6)
  {
    do
    {
      *(a4 + 4) = xmmword_21AE2E2A0;
      *(a4 + 5) = unk_21AE2E2B0;
      *(a4 + 2) = xmmword_21AE2E280;
      *(a4 + 3) = unk_21AE2E290;
      *(a4 + 8) = xmmword_21AE2E2E0;
      *(a4 + 9) = unk_21AE2E2F0;
      *(a4 + 6) = xmmword_21AE2E2C0;
      *(a4 + 7) = unk_21AE2E2D0;
      *a4 = PXGSpriteStyleDefault;
      *(a4 + 1) = unk_21AE2E270;
      v8 = *(a1 + 40);
      if (v8 >= v7)
      {
        v8 = v7;
      }

      v9 = v8;
      *a4 = v9;
      a4 += 40;
      LODWORD(v6) = v6 - 1;
    }

    while (v6);
  }

  return *&v7;
}

double __31__PXGGridLayout__updateSprites__block_invoke_6(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  v7 = a2;
  v9 = HIDWORD(a2);
  v10 = [*(a1 + 32) accessoryPresentationType];
  v11 = [*(a1 + 32) accessoryMediaKind];
  if (v9)
  {
    v13 = v11;
    do
    {
      v14 = (*(*(a1 + 40) + 16))();
      v15 = (*(*(a1 + 48) + 16))();
      v16 = 0.0;
      if (v15 == *(a1 + 104))
      {
        v16 = *(a1 + 164);
      }

      v17 = vcvt_f32_f64(*(a1 + 72));
      v18 = vcvt_f32_f64(*(a1 + 88));
      result = v16 + *(a1 + 112) + v14 * *(a1 + 128) + *(a1 + 144);
      v19 = *(a1 + 120) + v15 * *(a1 + 136) + *(a1 + 152);
      v20 = *(a1 + 168);
      *a3 = result;
      *(a3 + 8) = v19;
      *(a3 + 16) = v20;
      *(a3 + 24) = v17;
      a5->i8[0] = v10;
      a5->i8[1] = v13;
      a5[1] = v18;
      ++v7;
      a3 += 32;
      a5 += 5;
      LODWORD(v9) = v9 - 1;
    }

    while (v9);
  }

  return result;
}

- (NSString)description
{
  if ([(PXGGridLayout *)self scrollableAxis]== 2)
  {
    v7.receiver = self;
    v7.super_class = PXGGridLayout;
    v3 = [(PXGItemsLayout *)&v7 description];
    [v3 px_stringByAppendingDescriptionDetailsWithFormat:@", axis=horizontal, numberOfRows=%li", -[PXGGridLayout numberOfRows](self, "numberOfRows")];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXGGridLayout;
    v3 = [(PXGItemsLayout *)&v6 description];
    [v3 px_stringByAppendingDescriptionDetailsWithFormat:@", axis=vertical, numberOfColumns=%li", -[PXGGridLayout numberOfColumns](self, "numberOfColumns")];
  }
  v4 = ;

  return v4;
}

@end