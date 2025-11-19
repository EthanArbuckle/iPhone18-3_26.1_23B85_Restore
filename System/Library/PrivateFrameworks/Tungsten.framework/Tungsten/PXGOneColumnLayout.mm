@interface PXGOneColumnLayout
- (CGPoint)anchorItemCenter;
- (CGPoint)anchorViewportCenter;
- (CGRect)frameForItem:(int64_t)a3;
- (CGSize)interItemSpacing;
- (PXGOneColumnLayout)init;
- (UIEdgeInsets)padding;
- (_NSRange)_itemsToLoadForAnchorItem:(int64_t)a3 visibleRect:(CGRect)a4;
- (_NSRange)itemRangeForSpriteIndexRange:(_PXGSpriteIndexRange)a3;
- (_NSRange)itemRangeInRect:(CGRect)a3;
- (_NSRange)itemsToLoad;
- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)a3;
- (id)description;
- (id)diagnosticDescription;
- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4;
- (int64_t)itemClosestTo:(CGPoint)a3;
- (int64_t)itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4;
- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_updateSpriteStyles;
- (void)_updateSprites;
- (void)_updateVisibleRect;
- (void)alphaDidChange;
- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyState:(id)a6;
- (void)displayScaleDidChange;
- (void)entityManagerDidChange;
- (void)invalidateLoadedItems;
- (void)loadedItemsDidChange;
- (void)referenceSizeDidChange;
- (void)setAnchorItem:(int64_t)a3;
- (void)setAnchorItemCenter:(CGPoint)a3;
- (void)setAnchorObjectReference:(id)a3;
- (void)setAnchorViewportCenter:(CGPoint)a3;
- (void)setAspectRatioLimit:(double)a3;
- (void)setEnableBestCropRect:(BOOL)a3;
- (void)setEnableEffects:(BOOL)a3;
- (void)setEnablePerItemCornerRadius:(BOOL)a3;
- (void)setFillSafeAreaBottomInset:(BOOL)a3;
- (void)setFillSafeAreaTopInset:(BOOL)a3;
- (void)setInterItemSpacing:(CGSize)a3;
- (void)setMediaKind:(unsigned __int8)a3;
- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5;
- (void)setOverrideAspectRatio:(double)a3;
- (void)setOverrideAspectRatioAmount:(double)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setPresentationType:(unsigned __int8)a3;
- (void)setVisibleRect:(CGRect)a3;
- (void)update;
- (void)visibleRectDidChange;
@end

@implementation PXGOneColumnLayout

- (PXGOneColumnLayout)init
{
  v11.receiver = self;
  v11.super_class = PXGOneColumnLayout;
  v2 = [(PXGItemsLayout *)&v11 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v2->_interItemSpacing = _Q0;
    v2->_overrideAspectRatio = 1.0;
    v2->_overrideAspectRatioAmount = 1.0;
    v2->_aspectRatioLimit = 4.0;
    v2->_anchorItem = 0x7FFFFFFFFFFFFFFFLL;
    v9 = *MEMORY[0x277D3CFB0];
    v2->_anchorItemCenter = *MEMORY[0x277D3CFB0];
    v2->_anchorViewportCenter = v9;
    [(PXGItemsLayout *)v2 setLazy:1];
  }

  return v3;
}

- (void)invalidateLoadedItems
{
  if (self->_didAlreadyUpdateLoadedItems)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:674 description:{@"Already updated loaded items during this update pass in %@", self}];
  }

  v5.receiver = self;
  v5.super_class = PXGOneColumnLayout;
  [(PXGItemsLayout *)&v5 invalidateLoadedItems];
}

- (void)alphaDidChange
{
  v8.receiver = self;
  v8.super_class = PXGOneColumnLayout;
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout alphaDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGOneColumnLayout.m" lineNumber:656 description:{@"invalidating %lu after it already has been updated", 8}];

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

- (CGPoint)anchorItemCenter
{
  x = self->_anchorItemCenter.x;
  y = self->_anchorItemCenter.y;
  result.y = y;
  result.x = x;
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

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(PXGLayout *)self referenceSize];
  v5 = v4;
  [(PXGLayout *)self referenceSize];
  v7 = v6;
  v8 = MEMORY[0x21CEE3180]([(PXGOneColumnLayout *)self padding]);
  v9 = [(PXGItemsLayout *)self numberOfItems];
  [(PXGOneColumnLayout *)self interItemSpacing];
  v11 = v10;
  [(PXGLayout *)self displayScale];
  v13 = v12;
  v17.receiver = self;
  v17.super_class = PXGOneColumnLayout;
  v14 = [(PXGLayout *)&v17 diagnosticDescription];
  v15 = [v3 stringWithFormat:@"size: {%.3f, %.3f} padding: %@; items: %li; interItemSpacing: %.3f; screenScale: %.3f sprites: {%@}", v5, v7, v8, v9, v11, v13, v14];;

  return v15;
}

- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4
{
  v4 = [(PXGOneColumnLayout *)self itemRangeInRect:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{v4, v5}];

  return v6;
}

- (int64_t)itemClosestToItem:(int64_t)a3 inDirection:(unint64_t)a4
{
  v6 = [(PXGItemsLayout *)self numberOfItems];

  return PXGItemsGeometryItemClosestToItemVerticalGridDefaultImplementation(a3, a4, 1, v6);
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
    [v14 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:693 description:{@"Invalid to modify sprites directly when lazy, use setNumberOfItems:withChangeDetails: instead."}];
  }

  v15.receiver = self;
  v15.super_class = PXGOneColumnLayout;
  [(PXGLayout *)&v15 applySpriteChangeDetails:v11 countAfterChanges:v8 initialState:v12 modifyState:v13];
}

- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = PXGOneColumnLayout;
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
        p_updateFlags->needsUpdate = needsUpdate | 0xA;
        goto LABEL_9;
      }

LABEL_7:
      if ((self->_updateFlags.updated & 0xA) != 0)
      {
        v13 = [MEMORY[0x277CCA890] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setNumberOfItems:withChangeDetails:changeMediaVersionHandler:]"];
        [v13 handleFailureInFunction:v14 file:@"PXGOneColumnLayout.m" lineNumber:687 description:{@"invalidating %lu after it already has been updated", 10}];

        abort();
      }

      goto LABEL_8;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_7;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 10;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_9:
}

- (void)loadedItemsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGOneColumnLayout;
  [(PXGItemsLayout *)&v8 loadedItemsDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0xA;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0xA) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout loadedItemsDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGOneColumnLayout.m" lineNumber:680 description:{@"invalidating %lu after it already has been updated", 10}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 10;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXGOneColumnLayout;
  [(PXGLayout *)&v3 visibleRectDidChange];
  if (!self->_isUpdating)
  {
    [(PXGOneColumnLayout *)self invalidateLoadedItems];
  }
}

- (void)entityManagerDidChange
{
  v11.receiver = self;
  v11.super_class = PXGOneColumnLayout;
  [(PXGLayout *)&v11 entityManagerDidChange];
  v3 = [(PXGLayout *)self entityManager];
  if (v3)
  {
    v4 = v3;
    v5 = [(PXGOneColumnLayout *)self enableEffects];

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
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout entityManagerDidChange]"];
          [v9 handleFailureInFunction:v10 file:@"PXGOneColumnLayout.m" lineNumber:650 description:{@"invalidating %lu after it already has been updated", 8}];

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

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXGOneColumnLayout;
  [(PXGLayout *)&v8 displayScaleDidChange];
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout displayScaleDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGOneColumnLayout.m" lineNumber:644 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGOneColumnLayout;
  [(PXGLayout *)&v8 referenceSizeDidChange];
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout referenceSizeDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXGOneColumnLayout.m" lineNumber:639 description:{@"invalidating %lu after it already has been updated", 2}];

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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setEnablePerItemCornerRadius:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:632 description:{@"invalidating %lu after it already has been updated", 8}];

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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setEnableEffects:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:624 description:{@"invalidating %lu after it already has been updated", 8}];

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
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setFillSafeAreaBottomInset:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:616 description:{@"invalidating %lu after it already has been updated", 2}];

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
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setFillSafeAreaTopInset:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:608 description:{@"invalidating %lu after it already has been updated", 2}];

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
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setPresentationType:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:600 description:{@"invalidating %lu after it already has been updated", 2}];

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
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v7 = [MEMORY[0x277CCA890] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setMediaKind:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:592 description:{@"invalidating %lu after it already has been updated", 2}];

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
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setAnchorViewportCenter:(CGPoint)a3
{
  if (self->_anchorViewportCenter.x != a3.x || self->_anchorViewportCenter.y != a3.y)
  {
    self->_anchorViewportCenter = a3;
    [(PXGOneColumnLayout *)self invalidateLoadedItems];
  }
}

- (void)setAnchorObjectReference:(id)a3
{
  v13 = a3;
  v5 = self->_anchorObjectReference;
  v6 = v5;
  if (v5 == v13)
  {

    goto LABEL_11;
  }

  v7 = [v5 isEqual:?];

  if (v7)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&self->_anchorObjectReference, a3);
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 10;
      if (!willPerformUpdate)
      {
        [(PXGLayout *)self setNeedsUpdate];
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_8:
    if ((self->_updateFlags.updated & 0xA) != 0)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setAnchorObjectReference:]"];
      [v11 handleFailureInFunction:v12 file:@"PXGOneColumnLayout.m" lineNumber:575 description:{@"invalidating %lu after it already has been updated", 10}];

      abort();
    }
  }

  p_updateFlags->needsUpdate = needsUpdate | 0xA;
LABEL_10:
  [(PXGOneColumnLayout *)self invalidateLoadedItems];
LABEL_11:
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
      p_updateFlags->needsUpdate = needsUpdate | 0xA;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 0xA) != 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setAspectRatioLimit:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:565 description:{@"invalidating %lu after it already has been updated", 10}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 10;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)setOverrideAspectRatioAmount:(double)a3
{
  if (self->_overrideAspectRatioAmount == a3)
  {
    return;
  }

  self->_overrideAspectRatioAmount = a3;
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
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setOverrideAspectRatioAmount:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:556 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setOverrideAspectRatio:(double)a3
{
  if (self->_overrideAspectRatio == a3)
  {
    return;
  }

  self->_overrideAspectRatio = a3;
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
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setOverrideAspectRatio:]"];
      [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:548 description:{@"invalidating %lu after it already has been updated", 2}];

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

- (void)setInterItemSpacing:(CGSize)a3
{
  if (a3.width != self->_interItemSpacing.width || a3.height != self->_interItemSpacing.height)
  {
    self->_interItemSpacing = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_10:
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_9:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setInterItemSpacing:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGOneColumnLayout.m" lineNumber:540 description:{@"invalidating %lu after it already has been updated", 2}];

        abort();
      }

      goto LABEL_10;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_9;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
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
        p_updateFlags->needsUpdate = needsUpdate | 2;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 2) != 0)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setPadding:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGOneColumnLayout.m" lineNumber:532 description:{@"invalidating %lu after it already has been updated", 2}];

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
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setEnableBestCropRect:]"];
        [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:524 description:{@"invalidating %lu after it already has been updated", 8}];

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

- (void)setVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXGLayout *)self visibleRect];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectEqualToRect(v13, v14);
  v12.receiver = self;
  v12.super_class = PXGOneColumnLayout;
  [(PXGLayout *)&v12 setVisibleRect:x, y, width, height];
}

- (void)setAnchorItemCenter:(CGPoint)a3
{
  if (self->_anchorItemCenter.x != a3.x || self->_anchorItemCenter.y != a3.y)
  {
    self->_anchorItemCenter = a3;
    if ((PXPointIsNull() & 1) == 0)
    {
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_11:
          p_updateFlags->needsUpdate = needsUpdate | 4;
          return;
        }

LABEL_10:
        if ((self->_updateFlags.updated & 4) != 0)
        {
          v8 = [MEMORY[0x277CCA890] currentHandler];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setAnchorItemCenter:]"];
          [v8 handleFailureInFunction:v9 file:@"PXGOneColumnLayout.m" lineNumber:507 description:{@"invalidating %lu after it already has been updated", 4}];

          abort();
        }

        goto LABEL_11;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_10;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 4;
      if (!willPerformUpdate)
      {

        [(PXGLayout *)self setNeedsUpdate];
      }
    }
  }
}

- (void)setAnchorItem:(int64_t)a3
{
  if (self->_anchorItem != a3)
  {
    self->_anchorItem = a3;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
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
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout setAnchorItem:]"];
          [v7 handleFailureInFunction:v8 file:@"PXGOneColumnLayout.m" lineNumber:497 description:{@"invalidating %lu after it already has been updated", 4}];

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
  }
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
  v9 = [(PXGLayout *)self localNumberOfSprites];
  [(PXGItemsLayout *)self loadedItems];
  if (v10 != v9)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:462 description:@"Every loaded item should have a sprite at this point"];
  }

  if ([(PXGItemsLayout *)self numberOfItems]< 1)
  {
    v16 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = [(PXGLayout *)self spriteDataStore];
    v12 = [v11 spriteIndexesInRect:{x, y, width, height}];

    v13 = [(PXGItemsLayout *)self itemsForSpriteIndexes:v12];
    v14 = [v13 px_coveringRange];
    v16 = v15;
    if (v14 + v15 > [(PXGItemsLayout *)self numberOfItems])
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:470 description:@"Should not return items out of bounds."];
    }
  }

  v17 = v14;
  v18 = v16;
  result.length = v18;
  result.location = v17;
  return result;
}

- (int64_t)itemClosestTo:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7 = [(PXGLayout *)self localNumberOfSprites];
  [(PXGItemsLayout *)self loadedItems];
  if (v8 != v7)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:421 description:@"Every loaded item should have a sprite at this point"];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(PXGItemsLayout *)self numberOfItems];
  v10 = [(PXGLayout *)self localNumberOfSprites];
  if (v9 >= 1)
  {
    v11 = v10;
    if (v10)
    {
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2020000000;
      v33[3] = 0x7FEFFFFFFFFFFFFFLL;
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __36__PXGOneColumnLayout_itemClosestTo___block_invoke;
      v32[3] = &unk_2782AA390;
      *&v32[7] = x;
      *&v32[8] = y;
      v32[5] = v33;
      v32[6] = &v34;
      v32[4] = self;
      v12 = MEMORY[0x21CEE40A0](v32);
      PXRectWithCenterAndSize();
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(PXGLayout *)self spriteDataStore];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __36__PXGOneColumnLayout_itemClosestTo___block_invoke_2;
      v30[3] = &unk_2782AA3B8;
      v22 = v12;
      v31 = v22;
      [v21 enumerateSpritesInRect:v30 usingBlock:{v14, v16, v18, v20}];

      if (v35[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        memset(v29, 0, sizeof(v29));
        [(PXGLayout *)self geometryForSpriteAtIndex:0];
        (*(v22 + 2))(v22, 0, v29);
        v23 = v11 - 1;
        [(PXGLayout *)self geometryForSpriteAtIndex:v23, 0, 0, 0, 0];
        (*(v22 + 2))(v22, v23, &v28);
        if (v35[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = [MEMORY[0x277CCA890] currentHandler];
          [v27 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:456 description:@"Should always be able to find a closest item."];
        }
      }

      _Block_object_dispose(v33, 8);
    }
  }

  v24 = v35[3];
  _Block_object_dispose(&v34, 8);
  return v24;
}

uint64_t __36__PXGOneColumnLayout_itemClosestTo___block_invoke(uint64_t a1, uint64_t a2)
{
  result = PXRectShortestDistanceToPoint();
  v6 = v5;
  if (v5 < *(*(*(a1 + 40) + 8) + 24))
  {
    result = PXSizeIsEmpty();
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = v6;
      result = [*(a1 + 32) itemForSpriteIndex:a2];
      *(*(*(a1 + 48) + 8) + 24) = result;
    }
  }

  return result;
}

- (CGRect)frameForItem:(int64_t)a3
{
  v6 = [(PXGLayout *)self localNumberOfSprites];
  [(PXGItemsLayout *)self loadedItems];
  if (v7 != v6)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:408 description:@"Every loaded item should have a sprite at this point"];
  }

  v8 = [(PXGItemsLayout *)self spriteIndexForItem:a3];
  if (v8 == -1)
  {
    v10 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v12 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:416 description:@"Invalid to ask for the frame of an item without a sprite representing it"];
  }

  else
  {
    [(PXGLayout *)self geometryForSpriteAtIndex:v8];
    v9 = vmul_f32(0, 0x3F0000003F000000);
    v10 = 0.0 - v9.f32[0];
    v11 = 0.0 - v9.f32[1];
    v12 = 0.0;
    v13 = 0.0;
  }

  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (_NSRange)_itemsToLoadForAnchorItem:(int64_t)a3 visibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v45 = *MEMORY[0x277D85DE8];
  v11 = [(PXGItemsLayout *)self numberOfItems];
  if (v11 <= 0)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"numberOfItems > 0"}];
  }

  v12 = height;
  if (height == 0.0)
  {
    [(PXGLayout *)self referenceSize];
    v12 = v13;
  }

  v14 = width;
  if (width == 0.0)
  {
    [(PXGLayout *)self referenceSize];
    v14 = v15;
  }

  if (v12 != 0.0 && v14 != 0.0)
  {
    [(PXGOneColumnLayout *)self aspectRatioLimit];
    v17 = vcvtpd_s64_f64(v12 / (v14 / v16));
    v18 = +[PXGTextureManagerPreheatingStrategy defaultPreheatingStrategy];
    [v18 maxPreheatingDistance];
    v20 = v19;

    [(PXGOneColumnLayout *)self anchorViewportCenter];
    IsNull = PXPointIsNull();
    v22 = ceil(v20 / v12);
    v23 = v22 + v22;
    if (IsNull)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    v25 = a3 / v17;
    if (a3 / v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange PXRangeWithMidLocationAndPadding(NSInteger, NSInteger)"}];
      [v35 handleFailureInFunction:v36 file:@"NSRange+PhotosUIFoundation.h" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"midLocation != NSNotFound"}];

      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_14:
      v26 = (v25 - v24) & ~((v25 - v24) >> 63);
      v27.location = 0;
      v27.length = v11;

      v47.location = v26 * v17;
      v47.length = v17 + v17 * (v24 + v25 - v26);
      v30 = NSIntersectionRange(v47, v27);
      length = v30.length;
      location = v30.location;
      goto LABEL_22;
    }

    v37 = [MEMORY[0x277CCA890] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSRange PXRangeWithMidLocationAndPadding(NSInteger, NSInteger)"}];
    [v37 handleFailureInFunction:v38 file:@"NSRange+PhotosUIFoundation.h" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"padding >= 0"}];

    goto LABEL_14;
  }

  v31 = PXGTungstenGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v32 = NSStringFromCGRect(v50);
    [(PXGLayout *)self referenceSize];
    v33 = NSStringFromCGSize(v49);
    *buf = 138412802;
    v40 = v32;
    v41 = 2112;
    v42 = v33;
    v43 = 2112;
    v44 = self;
    _os_log_impl(&dword_21AD38000, v31, OS_LOG_TYPE_DEFAULT, "Invalid visibleRect:%@ referenceSize:%@ in %@", buf, 0x20u);
  }

  location = a3;
  length = 1;
LABEL_22:
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)itemsToLoad
{
  rect[6] = *MEMORY[0x277D85DE8];
  v3 = [(PXGItemsLayout *)self numberOfItems];
  if (!v3)
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    [(PXGOneColumnLayout *)self setAnchorItem:0x7FFFFFFFFFFFFFFFLL];
    v31 = 0;
    goto LABEL_30;
  }

  v4 = v3;
  v5 = [(PXGOneColumnLayout *)self anchorObjectReference];
  if (!v5 || (v6 = [(PXGItemsLayout *)self itemForObjectReference:v5], v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [(PXGItemsLayout *)self anchorItemForAnchoredContentEdges];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(PXGItemsLayout *)self anchorItemIndexForRootAnchor];
    }
  }

  v7 = v6;
  v8 = [(PXGItemsLayout *)self loadedItems];
  v10 = v9;
  [(PXGLayout *)self visibleRect];
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (CGRectIsEmpty(v42) || !v10)
  {
    goto LABEL_15;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(PXGOneColumnLayout *)self itemRangeInRect:x, y, width, height];
    if (!v16 || v15 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v15 + (v16 >> 1), v7 == 0x7FFFFFFFFFFFFFFFLL))
    {
      PXRectGetCenter();
      v17 = [(PXGOneColumnLayout *)self itemClosestTo:?];
      [(PXGOneColumnLayout *)self frameForItem:v17];
      rect[0] = v18;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      MidY = CGRectGetMidY(v43);
      *&v44.origin.x = rect[0];
      v44.origin.y = v20;
      v44.size.width = v22;
      v44.size.height = v24;
      v26 = v17 + llround((MidY - CGRectGetMidY(v44)) / width);
      if (v4 - 1 < v26)
      {
        v26 = v4 - 1;
      }

      v7 = v26 & ~(v26 >> 63);
LABEL_15:
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = PXGTungstenGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          v28 = NSStringFromCGRect(v45);
          LODWORD(rect[1]) = 138412546;
          *(&rect[1] + 4) = self;
          WORD2(rect[2]) = 2112;
          *(&rect[2] + 6) = v28;
          _os_log_impl(&dword_21AD38000, v27, OS_LOG_TYPE_DEFAULT, "No anchor specified for %@, defaulting to last item, visibleRect:%@.", &rect[1], 0x16u);
        }

        v7 = v4 - 1;
      }
    }
  }

  v30 = [(PXGOneColumnLayout *)self _itemsToLoadForAnchorItem:v7 visibleRect:x, y, width, height];
  v31 = v29;
  if (v8 != v30 || v10 != v29)
  {
    v32 = *MEMORY[0x277D3CFB0];
    v33 = *(MEMORY[0x277D3CFB0] + 8);
    v34 = [(PXGItemsLayout *)self spriteIndexForItem:v7];
    if (v34 != -1)
    {
      memset(&rect[1], 0, 32);
      [(PXGLayout *)self geometryForSpriteAtIndex:v34];
      v35 = *&rect[1];
      v36 = *&rect[2];
      if (*&rect[2] != 0.0 || *&rect[1] != 0.0)
      {
        v32 = *&rect[1];
        v33 = *&rect[2];
      }
    }

    [(PXGOneColumnLayout *)self setAnchorItem:v7, v35, v36];
    [(PXGOneColumnLayout *)self setAnchorItemCenter:v32, v33];
  }

LABEL_30:
  v38 = v30;
  v39 = v31;
  result.length = v39;
  result.location = v38;
  return result;
}

- (_PXGSpriteIndexRange)spriteIndexRangeCoveringRect:(CGRect)a3
{
  v4 = [(PXGOneColumnLayout *)self itemRangeInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)_updateSpriteStyles
{
  v3 = [(PXGLayout *)self localNumberOfSprites];
  [(PXGLayout *)self alpha];
  v5 = v4;
  [(PXGOneColumnLayout *)self aspectRatioLimit];
  v7 = v6;
  [(PXGOneColumnLayout *)self aspectRatioLimit];
  v9 = v8;
  v10 = [(PXGItemsLayout *)self loadedItems];
  if ([(PXGOneColumnLayout *)self enableBestCropRect])
  {
    v11 = [(PXGItemsLayout *)self delegateRespondsTo:8];
  }

  else
  {
    v11 = 0;
  }

  v12 = 1.0 / v7;
  v13 = [(PXGItemsLayout *)self delegate];
  if ([(PXGOneColumnLayout *)self enablePerItemCornerRadius])
  {
    if ([(PXGItemsLayout *)self delegateRespondsTo:1024])
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __41__PXGOneColumnLayout__updateSpriteStyles__block_invoke;
  v22 = &unk_2782AA368;
  v16 = v3 << 32;
  v30 = v11;
  v27 = v12;
  v28 = v9;
  v23 = v13;
  v24 = self;
  v29 = v5;
  v25 = v15;
  v26 = v10;
  v17 = v15;
  v18 = v13;
  [(PXGLayout *)self modifySpritesInRange:v16 state:&v19];
  if ([(PXGOneColumnLayout *)self enableEffects:v19])
  {
    [(PXGItemsLayout *)self updateItemEffectIDsIfNeeded];
  }
}

uint64_t __41__PXGOneColumnLayout__updateSpriteStyles__block_invoke(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v6 = a2;
    v7 = result;
    v28 = xmmword_21AE2E2C0;
    v27 = unk_21AE2E2D0;
    v25 = unk_21AE2E2F0;
    v26 = xmmword_21AE2E2E0;
    v23 = unk_21AE2E290;
    v24 = xmmword_21AE2E280;
    v21 = unk_21AE2E2B0;
    v22 = xmmword_21AE2E2A0;
    v19 = unk_21AE2E270;
    v20 = PXGSpriteStyleDefault;
    do
    {
      v8 = *(v7 + 56) + v6;
      v9 = xmmword_21AE2D390;
      if (*(v7 + 88) == 1)
      {
        PXClamp();
        [*(v7 + 32) itemsLayout:*(v7 + 40) bestCropRectForItem:v8 withAspectRatio:?];
        v11.f64[1] = v10;
        v13.f64[1] = v12;
        v9 = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v11);
      }

      *(a4 + 96) = v28;
      *(a4 + 112) = v27;
      *(a4 + 128) = v26;
      *(a4 + 144) = v25;
      *(a4 + 32) = v24;
      *(a4 + 48) = v23;
      *(a4 + 64) = v22;
      *(a4 + 80) = v21;
      *a4 = v20;
      *(a4 + 16) = v19;
      *(a4 + 4) = v9;
      v14 = *(v7 + 80);
      *a4 = v14;
      result = [*(v7 + 48) itemsLayout:*(v7 + 40) cornerRadiusForItem:{v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28}];
      *(a4 + 36) = v15;
      *(a4 + 40) = v16;
      *(a4 + 44) = v17;
      *(a4 + 48) = v18;
      ++v6;
      a4 += 160;
      LODWORD(v4) = v4 - 1;
    }

    while (v4);
  }

  return result;
}

- (void)_updateVisibleRect
{
  v4 = [(PXGOneColumnLayout *)self anchorItem];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(PXGOneColumnLayout *)self anchorItemCenter];
    v7 = v6;
    [(PXGOneColumnLayout *)self setAnchorItem:0x7FFFFFFFFFFFFFFFLL];
    [(PXGOneColumnLayout *)self setAnchorItemCenter:*MEMORY[0x277D3CFB0], *(MEMORY[0x277D3CFB0] + 8)];
    [(PXGLayout *)self visibleRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(PXGItemsLayout *)self spriteIndexForItem:v5];
    if (v16 == -1)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:226 description:@"Must have a sprite representing the item at this point."];
    }

    [(PXGLayout *)self geometryForSpriteAtIndex:v16, 0];
    if (v24 == 0.0)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PXGOneColumnLayout.m" lineNumber:230 description:@"Sprite must have valid geometry at this point."];
    }

    if (PXPointIsNull())
    {
      PXRectGetCenter();
      v7 = v17;
    }

    v25.origin.x = v9;
    v25.origin.y = v11;
    v25.size.width = v13;
    v25.size.height = v15;
    v26 = CGRectOffset(v25, 0.0, 0.0 - v7);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    if ((PXRectApproximatelyEqualToRect() & 1) == 0)
    {
      [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:x, y, width, height];
    }
  }
}

- (void)_updateSprites
{
  v3 = [(PXGLayout *)self localNumberOfSprites];
  v4 = [(PXGItemsLayout *)self delegate];
  if ([(PXGItemsLayout *)self delegateRespondsTo:4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v55 = v4;
  if ([(PXGItemsLayout *)self delegateRespondsTo:256])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v59 = v7;
  v60 = [(PXGItemsLayout *)self insetDelegate];
  [(PXGLayout *)self displayScale];
  v9 = v8;
  [(PXGOneColumnLayout *)self padding];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PXGOneColumnLayout *)self aspectRatioLimit];
  v16 = 1.0;
  v18 = 1.0 / v17;
  [(PXGOneColumnLayout *)self aspectRatioLimit];
  v61 = v19;
  [(PXGOneColumnLayout *)self interItemSpacing];
  v58 = v20;
  [(PXGLayout *)self referenceSize];
  v22 = v21;
  v23 = [(PXGItemsLayout *)self loadedItems];
  v25 = v24;
  v26 = [(PXGItemsLayout *)self numberOfItems];
  v57 = [(PXGOneColumnLayout *)self presentationType];
  v27 = [(PXGOneColumnLayout *)self mediaKind];
  [(PXGOneColumnLayout *)self overrideAspectRatio];
  v56 = v28;
  [(PXGOneColumnLayout *)self overrideAspectRatioAmount];
  v30 = v29;
  v31 = [(PXGOneColumnLayout *)self anchorObjectReference];
  if (v31)
  {
    v32 = v31;
    v33 = [(PXGOneColumnLayout *)self anchorObjectReference];
    v34 = [(PXGItemsLayout *)self itemForObjectReference:v33];

    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 itemsLayout:self aspectRatioForItem:v34];
      PXClamp();
      v16 = v35;
    }
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = v11;
  if ([(PXGOneColumnLayout *)self fillSafeAreaTopInset])
  {
    [(PXGLayout *)self safeAreaInsets];
    v81[3] = v81[3] - v36;
  }

  if ([(PXGOneColumnLayout *)self fillSafeAreaBottomInset])
  {
    [(PXGLayout *)self safeAreaInsets];
  }

  v37 = v22 - v13 - v15;
  v38 = v13 + v37 * 0.5;
  v39 = 1000;
  if (v23 < 1000)
  {
    v39 = v23;
  }

  if (v23 == 0x7FFFFFFFFFFFFFFFLL || v25 == 0)
  {
    v41 = 0x8000000000000000;
  }

  else
  {
    v41 = -(v23 + v25);
  }

  v42 = (v41 + v26) & ~((v41 + v26) >> 63);
  v43 = v39;
  if (v26 < 1)
  {
    v43 = 0.0;
  }

  v81[3] = v81[3] + v43 * v37;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __36__PXGOneColumnLayout__updateSprites__block_invoke;
  v62[3] = &unk_2782AA340;
  if (v26 >= 1)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0.0;
  }

  v68 = v23;
  v69 = v18;
  v45 = v6;
  v63 = v45;
  v64 = self;
  v70 = v61;
  v71 = v16;
  v72 = v56;
  v73 = v30;
  v46 = v59;
  v65 = v46;
  v47 = v60;
  v74 = v37;
  v75 = v9;
  v77 = v38;
  v66 = v47;
  v67 = &v80;
  v78 = v57;
  v79 = v27;
  v76 = v58;
  [(PXGLayout *)self modifySpritesInRange:v3 << 32 state:v62];
  v48 = v81;
  v49 = v81[3];
  if (v3)
  {
    v49 = v49 - v58;
    v81[3] = v49;
  }

  v48[3] = v49 + v44 * v37;
  PXFloatRoundToPixel();
  [(PXGLayout *)self setLastBaseline:?];
  PXSizeRoundToPixel();
  [(PXGLayout *)self setContentSize:?];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_34:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      goto LABEL_35;
    }

LABEL_33:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v53 = [MEMORY[0x277CCA890] currentHandler];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout _updateSprites]"];
      [v53 handleFailureInFunction:v54 file:@"PXGOneColumnLayout.m" lineNumber:209 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_34;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_33;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_35:

  _Block_object_dispose(&v80, 8);
}

uint64_t __36__PXGOneColumnLayout__updateSprites__block_invoke(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v8 = a2;
    v9 = result;
    do
    {
      v10 = *(v9 + 72) + v8;
      [*(v9 + 32) itemsLayout:*(v9 + 40) aspectRatioForItem:{v10, v22}];
      PXClamp();
      if (PXFloatEqualToFloatWithTolerance())
      {
        PXFloatByLinearlyInterpolatingFloats();
      }

      [*(v9 + 48) itemsLayout:*(v9 + 40) marginForItem:v10];
      [*(v9 + 56) itemsLayout:*(v9 + 40) insetForItem:v10];
      PXSizeAdd();
      v23 = v12;
      v24 = v11;
      PXFloatRoundToPixel();
      v22 = v13;
      v14.f64[0] = *(v9 + 120);
      *&v14.f64[1] = v13;
      v15.f64[0] = v24;
      v15.f64[1] = v23;
      v16 = vcvt_f32_f64(vmaxnmq_f64(vsubq_f64(v14, v15), 0));
      PXFloatRoundToPixel();
      v17.f64[0] = *(v9 + 120);
      v17.f64[1] = v18;
      v19 = vcvt_f32_f64(v17);
      *v17.f64 = *(v9 + 128);
      v20 = *(*(*(v9 + 64) + 8) + 24) + *&v22 * 0.5;
      *a3 = *(v9 + 144);
      *(a3 + 8) = v20;
      *(a3 + 16) = 0;
      *(a3 + 24) = v16;
      a5->i8[0] = *(v9 + 148);
      a5->i8[1] = *(v9 + 149);
      a5[1] = vmul_n_f32(v19, *v17.f64);
      result = PXFloatRoundToPixel();
      *(*(*(v9 + 64) + 8) + 24) = v21;
      ++v8;
      a3 += 32;
      a5 += 5;
      LODWORD(v5) = v5 - 1;
    }

    while (v5);
  }

  return result;
}

- (void)update
{
  isUpdating = self->_isUpdating;
  self->_isUpdating = 1;
  v4 = [(PXGLayout *)self rootLayout];
  v5 = [v4 activeAnchor];

  if (v5)
  {
    [(PXGOneColumnLayout *)self invalidateLoadedItems];
  }

  [(PXGItemsLayout *)self updateLoadedItemsIfNeeded];
  self->_didAlreadyUpdateLoadedItems = 1;
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout update]"];
      [v10 handleFailureInFunction:v11 file:@"PXGOneColumnLayout.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 2;
    if ((needsUpdate & 2) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFDLL;
      [(PXGOneColumnLayout *)self _updateSprites];
      if (!self->_updateFlags.isPerformingUpdate)
      {
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout update]"];
        [v12 handleFailureInFunction:v13 file:@"PXGOneColumnLayout.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v8 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 4uLL;
    if ((v8 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXGOneColumnLayout *)self _updateVisibleRect];
    }

    if (!self->_updateFlags.isPerformingUpdate)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout update]"];
      [v14 handleFailureInFunction:v15 file:@"PXGOneColumnLayout.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 8uLL;
    if ((v9 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFF7;
      [(PXGOneColumnLayout *)self _updateSpriteStyles];
      v9 = p_updateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    if (v9)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGOneColumnLayout update]"];
      [v16 handleFailureInFunction:v17 file:@"PXGOneColumnLayout.m" lineNumber:104 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  self->_didAlreadyUpdateLoadedItems = 0;
  v18.receiver = self;
  v18.super_class = PXGOneColumnLayout;
  [(PXGItemsLayout *)&v18 update];
  self->_isUpdating = isUpdating;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v11.location = [(PXGItemsLayout *)self loadedItems];
  v6 = NSStringFromRange(v11);
  [(PXGLayout *)self alpha];
  v8 = [v3 stringWithFormat:@"<%@: %p: loadedItems = %@ alpha = %.2f>", v5, self, v6, v7];;

  return v8;
}

@end