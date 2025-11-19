@interface PXMessagesStackItemsLayout
+ (id)_sharedTemplateLayoutHelper;
- ($9C403407A5B624E1CD2E2AFE16A3B680)tapbackConfigurationForProposedConfiguration:(SEL)a3 spriteIndex:(id *)a4;
- (BOOL)getHorizontalOffsetForObjectReference:(id)a3 outOffset:(double *)a4;
- (CGRect)desiredLayoutRect;
- (PXMessagesStackItemsLayout)init;
- (PXMessagesStackItemsLayoutPrimaryItemDelegate)primaryItemDelegate;
- (_NSRange)itemsToLoad;
- (double)closestPageOffsetForHorizontalOffset:(double)a3;
- (double)horizontalContentMargin;
- (double)horizontalContentMarginForSize:(CGSize)a3 normalizedVerticalContentInsets:(double)a4;
- (double)overlayAlphaForSpriteIndex:(unsigned int)a3;
- (double)pageOffsetGreaterThanOffset:(double)a3;
- (double)pageOffsetLessThanOffset:(double)a3;
- (double)selectionOverlayAlphaForSpriteIndex:(unsigned int)a3;
- (id)itemsBetweenItem:(int64_t)a3 andItem:(int64_t)a4;
- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4;
- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_clearLayoutProperties;
- (void)_getItemsForXOffset:(double)a3 leadingItems:(_NSRange *)a4 primaryItemIndex:(unint64_t *)a5 trailingItems:(_NSRange *)a6 trailingHiddenItems:(_NSRange *)a7 pageFocus:(double *)a8;
- (void)_invalidateContentSize;
- (void)_invalidateLayoutHelper;
- (void)_invalidateSprites;
- (void)_invalidateVisibleRect;
- (void)_signalDelegatePostUpdate;
- (void)_syncPropertiesToLayoutHelper:(id)a3;
- (void)_updateContentSize;
- (void)_updateLayoutProperties;
- (void)_updateSprites;
- (void)_updateVisibleRect;
- (void)accessoryItemsDidChange;
- (void)contentSizeDidChange;
- (void)dealloc;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)loadedItemsDidChange;
- (void)numberOfAccessoryItemsDidChange;
- (void)referenceSizeDidChange;
- (void)setAccessoryMediaKind:(unsigned __int8)a3;
- (void)setAccessoryPresentationType:(unsigned __int8)a3;
- (void)setDesiredLayoutRect:(CGRect)a3;
- (void)setIsSettling:(BOOL)a3;
- (void)setLeftEdgeInternalHorizontalAlignment:(double)a3;
- (void)setMediaKind:(unsigned __int8)a3;
- (void)setNormalizedContentInsets:(double)a3;
- (void)setNormalizedPageWidth:(double)a3;
- (void)setNormalizedStackHorizontalOffsets:(id)a3;
- (void)setNormalizedStackSizeTransform:(double)a3;
- (void)setNormalizedStackVerticalOffset:(double)a3;
- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5;
- (void)setPresentationType:(unsigned __int8)a3;
- (void)setRightEdgeInternalHorizontalAlignment:(double)a3;
- (void)setRotationAngle:(double)a3;
- (void)setStackedItemsCount:(unint64_t)a3;
- (void)update;
- (void)userInterfaceDirectionDidChange;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXMessagesStackItemsLayout

- (CGRect)desiredLayoutRect
{
  x = self->_desiredLayoutRect.origin.x;
  y = self->_desiredLayoutRect.origin.y;
  width = self->_desiredLayoutRect.size.width;
  height = self->_desiredLayoutRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXMessagesStackItemsLayoutPrimaryItemDelegate)primaryItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryItemDelegate);

  return WeakRetained;
}

- (id)itemsInRect:(CGRect)a3 inLayout:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v4;
}

- (id)itemsBetweenItem:(int64_t)a3 andItem:(int64_t)a4
{
  v4 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v4;
}

- (void)setAccessoryMediaKind:(unsigned __int8)a3
{
  if (self->_accessoryMediaKind != a3)
  {
    self->_accessoryMediaKind = a3;
    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)setAccessoryPresentationType:(unsigned __int8)a3
{
  if (self->_accessoryPresentationType != a3)
  {
    self->_accessoryPresentationType = a3;
    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)setMediaKind:(unsigned __int8)a3
{
  if (self->_mediaKind != a3)
  {
    self->_mediaKind = a3;
    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)setPresentationType:(unsigned __int8)a3
{
  if (self->_presentationType != a3)
  {
    self->_presentationType = a3;
    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)setRotationAngle:(double)a3
{
  if (self->_rotationAngle != a3)
  {
    if (a3 < 0.0 || a3 > 1.57079633)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:1056 description:{@"Invalid parameter not satisfying: %@", @"rotationAngle >= 0.0 && rotationAngle <= (M_PI / 2.0)"}];
    }

    self->_rotationAngle = a3;

    [(PXMessagesStackItemsLayout *)self _invalidateLayoutHelper];
  }
}

- (void)setNormalizedContentInsets:(double)a3
{
  if (self->_normalizedContentInsets != a3)
  {
    if (a3 < 0.0 || a3 >= 1.0)
    {
      PXAssertGetLog();
    }

    PXClamp();
  }
}

- (void)setNormalizedStackVerticalOffset:(double)a3
{
  if (self->_normalizedStackVerticalOffset != a3)
  {
    if (a3 < 0.0 || a3 > 1.0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:1029 description:{@"Invalid parameter not satisfying: %@", @"normalizedStackVerticalOffset >= 0.0 && normalizedStackVerticalOffset <= 1.0"}];
    }

    self->_normalizedStackVerticalOffset = a3;

    [(PXMessagesStackItemsLayout *)self _invalidateLayoutHelper];
  }
}

- (void)setNormalizedStackHorizontalOffsets:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_normalizedStackHorizontalOffsets != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      normalizedStackHorizontalOffsets = self->_normalizedStackHorizontalOffsets;
      self->_normalizedStackHorizontalOffsets = v7;

      [(PXMessagesStackItemsLayout *)self _invalidateLayoutHelper];
      v5 = v9;
    }
  }
}

- (void)setNormalizedStackSizeTransform:(double)a3
{
  if (self->_normalizedStackSizeTransform != a3)
  {
    if (a3 <= 0.0 || a3 > 1.0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:1012 description:{@"Invalid parameter not satisfying: %@", @"normalizedStackSizeTransform > 0.0 && normalizedStackSizeTransform <= 1.0"}];
    }

    self->_normalizedStackSizeTransform = a3;

    [(PXMessagesStackItemsLayout *)self _invalidateLayoutHelper];
  }
}

- (void)setStackedItemsCount:(unint64_t)a3
{
  if (self->_stackedItemsCount != a3)
  {
    self->_stackedItemsCount = a3;
    [(PXGItemsLayout *)self invalidateLoadedItems];
    [(PXMessagesStackItemsLayout *)self _invalidateLayoutHelper];

    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)setNormalizedPageWidth:(double)a3
{
  if (self->_normalizedPageWidth != a3)
  {
    self->_normalizedPageWidth = a3;
    [(PXGItemsLayout *)self invalidateLoadedItems];
    [(PXMessagesStackItemsLayout *)self _invalidateContentSize];

    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)userInterfaceDirectionDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXMessagesStackItemsLayout *)&v3 userInterfaceDirectionDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
  [(PXMessagesStackItemsLayout *)self _invalidateSprites];
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXMessagesStackItemsLayout *)&v3 contentSizeDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
  [(PXMessagesStackItemsLayout *)self _invalidateVisibleRect];
  [(PXMessagesStackItemsLayout *)self _invalidateSprites];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXMessagesStackItemsLayout *)&v3 displayScaleDidChange];
  [(PXMessagesStackItemsLayout *)self _invalidateSprites];
}

- (void)loadedItemsDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v3 loadedItemsDidChange];
  [(PXMessagesStackItemsLayout *)self _invalidateSprites];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXMessagesStackItemsLayout *)&v3 visibleRectDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
  [(PXMessagesStackItemsLayout *)self _invalidateSprites];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXMessagesStackItemsLayout *)&v3 referenceSizeDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
  [(PXMessagesStackItemsLayout *)self _invalidateContentSize];
  [(PXMessagesStackItemsLayout *)self _invalidateSprites];
}

- (void)accessoryItemsDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v3 accessoryItemsDidChange];
  [(PXMessagesStackItemsLayout *)self _invalidateSprites];
}

- (void)numberOfAccessoryItemsDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v3 numberOfAccessoryItemsDidChange];
  [(PXMessagesStackItemsLayout *)self _clearLayoutProperties];
  [(PXGItemsLayout *)self invalidateLoadedItems];
  [(PXMessagesStackItemsLayout *)self _invalidateContentSize];
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

- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PXGItemsLayout *)self numberOfItems];
  v11.receiver = self;
  v11.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v11 setNumberOfItems:a3 withChangeDetails:v8 changeMediaVersionHandler:v9];

  if (v10 != a3)
  {
    [(PXMessagesStackItemsLayout *)self _clearLayoutProperties];
  }

  if (!v8 || [v8 hasAnyChanges])
  {
    [(PXMessagesStackItemsLayout *)self _invalidateContentSize];
    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (_NSRange)itemsToLoad
{
  [(PXMessagesStackItemsLayout *)self _updateLayoutProperties];
  v3.length = [(PXGItemsLayout *)self numberOfItems];
  v4.location = 0x7FFFFFFFFFFFFFFFLL;
  if (v3.length)
  {
    v5 = 1;
    if (self->_leadingItemsRange.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      primaryItemIndex = self->_primaryItemIndex;
    }

    else
    {
      v5 = self->_leadingItemsRange.length + 1;
      primaryItemIndex = self->_leadingItemsRange.location;
    }

    if (self->_trailingItemsRange.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = 0;
    }

    else
    {
      length = self->_trailingItemsRange.length;
    }

    v4.length = length + v5;
    if (primaryItemIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4.location = primaryItemIndex;
      v3.location = 0;
      return NSIntersectionRange(v4, v3);
    }
  }

  else
  {
    v4.length = 0;
  }

  return v4;
}

- (void)_getItemsForXOffset:(double)a3 leadingItems:(_NSRange *)a4 primaryItemIndex:(unint64_t *)a5 trailingItems:(_NSRange *)a6 trailingHiddenItems:(_NSRange *)a7 pageFocus:(double *)a8
{
  if ([(PXMessagesStackItemsLayout *)self numberOfPages])
  {
    [(PXMessagesStackItemsLayout *)self userInterfaceDirection];
    [(PXMessagesStackItemsLayout *)self referenceSize];
    [(PXMessagesStackItemsLayout *)self normalizedPageWidth];
    [(PXMessagesStackItemsLayout *)self contentSize];
    PXClamp();
  }

  *a4 = xmmword_1A5380D90;
  *a5 = 0x7FFFFFFFFFFFFFFFLL;
  *a6 = xmmword_1A5380D90;
  *a8 = 0.0;
}

- (void)_signalDelegatePostUpdate
{
  if (self->_signalDelegateForPrimaryItemChange)
  {
    self->_signalDelegateForPrimaryItemChange = 0;
    v4 = [(PXMessagesStackItemsLayout *)self primaryItemDelegate];
    [v4 primaryItemDidChangeForStackItemsLayout:self];
  }
}

- (void)_updateSprites
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = [(PXGItemsLayout *)self loadedItems];
  v6 = v5;
  v7 = [(PXGItemsLayout *)self numberOfAccessoryItems];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0 || v7 != 0)
  {
    v76 = v4;
    [(PXMessagesStackItemsLayout *)self visibleRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v80 = [(PXMessagesStackItemsLayout *)self stackedItemsCount];
    v84 = 2 * v80;
    v18 = 2 * v80 + 23;
    v73 = v18 - v6;
    v71 = a2;
    if (v18 < v6)
    {
      v67 = [MEMORY[0x1E696AAA8] currentHandler];
      [v67 handleFailureInMethod:v71 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:581 description:@"We should never have more loaded item sprites than geometries"];
    }

    v19 = [(PXMessagesStackItemsLayout *)self userInterfaceDirection];
    v77 = v19 == 1;
    if (v18 > self->_decorationInfoBySpriteIndexSize)
    {
      self->_decorationInfoBySpriteIndexSize = v18;
      v20 = malloc_type_realloc(self->_decorationInfoBySpriteIndex, 8 * v18, 0x100004000313F17uLL);
      self->_decorationInfoBySpriteIndex = v20;
      if (!v20)
      {
        v69 = [MEMORY[0x1E696AAA8] currentHandler];
        [v69 handleFailureInMethod:v71 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:587 description:@"Unable to reallocate memory for overlay alphas"];
      }
    }

    length = self->_leadingItemsRange.length;
    primaryItemIndex = self->_primaryItemIndex;
    pageFocus = self->_pageFocus;
    v23 = [(PXMessagesStackItemsLayout *)self numberOfPages];
    v24 = v23 - 1;
    if (primaryItemIndex == 1)
    {
      v25 = pageFocus >= 0.0;
    }

    else if (primaryItemIndex)
    {
      if (v24 == primaryItemIndex)
      {
        v25 = 3;
        if (pageFocus >= 0.0)
        {
          v25 = 4;
        }
      }

      else if (primaryItemIndex == v23 - 2)
      {
        v25 = 4 * (pageFocus < 0.0);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 2;
      if (pageFocus < 0.0)
      {
        v25 = 1;
      }
    }

    v83 = v25;
    v75 = [(PXMessagesStackItemsLayout *)self presentationType];
    v74 = [(PXMessagesStackItemsLayout *)self mediaKind];
    [(PXMessagesStackItemsLayout *)self displayScale];
    v78 = v26;
    v81 = pageFocus;
    if (v11 >= 0.0)
    {
      v27 = v11;
      v94.origin.x = v11;
      v28 = v13;
      v94.origin.y = v13;
      v94.size.width = v15;
      v94.size.height = v17;
      MaxX = CGRectGetMaxX(v94);
      [(PXMessagesStackItemsLayout *)self contentSize];
      if (MaxX <= v30)
      {
        v31 = v17;
        v32 = v15;
        archSide = self->_archSide;
LABEL_31:
        v33 = v84 + 3;
        [(PXMessagesStackItemsLayout *)self desiredLayoutRect];
        x = v95.origin.x;
        y = v95.origin.y;
        width = v95.size.width;
        height = v95.size.height;
        IsNull = CGRectIsNull(v95);
        v39 = v28 + y;
        if (IsNull)
        {
          v40 = v31;
        }

        else
        {
          v40 = height;
        }

        if (IsNull)
        {
          v41 = v32;
        }

        else
        {
          v41 = width;
        }

        if (IsNull)
        {
          v42 = v28;
        }

        else
        {
          v42 = v39;
        }

        if (!IsNull)
        {
          v27 = v27 + x;
        }

        if (v19 == 1)
        {
          v43 = v24 - primaryItemIndex;
        }

        else
        {
          v43 = primaryItemIndex;
        }

        if (v19 != 1)
        {
          primaryItemIndex = v24 - primaryItemIndex;
        }

        v44 = v81;
        if (v43 <= 3)
        {
          PXClamp();
        }

        [(PXMessagesStackItemsLayout *)self leftEdgeInternalHorizontalAlignment];
        v46 = v27 - v45 * 0.0;
        if (primaryItemIndex <= 3)
        {
          PXClamp();
        }

        v47 = [(PXMessagesStackItemsLayout *)self rightEdgeInternalHorizontalAlignment];
        v72 = &v70;
        v49 = v46 + v48 * 0.0;
        self->_desiredVisibleRect.origin.x = v49;
        self->_desiredVisibleRect.origin.y = v42;
        self->_desiredVisibleRect.size.width = v41;
        self->_desiredVisibleRect.size.height = v40;
        MEMORY[0x1EEE9AC00](v47);
        v51 = &v70 - 2 * v50;
        v52 = v84 + 2;
        if (v19 == 1)
        {
          v53 = 20;
        }

        else
        {
          v53 = v84 + 2;
        }

        if (v19 == 1)
        {
          v54 = 20;
        }

        else
        {
          v54 = 0;
        }

        if (v19 == 1)
        {
          v55 = 0;
        }

        else
        {
          v55 = v33;
        }

        v92.location = v54;
        v92.length = v33;
        v93.location = v55;
        v93.length = 20;
        if (NSIntersectionRange(v92, v93).length)
        {
          v70 = [MEMORY[0x1E696AAA8] currentHandler];
          [v70 handleFailureInMethod:v71 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"NSIntersectionRange(mainItemsGeometryRange, trailingHiddenItemGeometryRange).length == 0"}];
        }

        v56 = v54 + v33;
        if (v54 + v33 <= v55 + 20)
        {
          v56 = v55 + 20;
        }

        if (v56 > v18)
        {
          v70 = [MEMORY[0x1E696AAA8] currentHandler];
          [v70 handleFailureInMethod:v71 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:664 description:{@"Invalid parameter not satisfying: %@", @"MAX(NSMaxRange(mainItemsGeometryRange), NSMaxRange(trailingHiddenItemGeometryRange)) <= geometriesCount"}];
        }

        if (v53 >= v18)
        {
          v68 = [MEMORY[0x1E696AAA8] currentHandler];
          [v68 handleFailureInMethod:v71 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:665 description:{@"Invalid parameter not satisfying: %@", @"mainItemToCopy < geometriesCount"}];
        }

        [(PXMessagesStackItemsLayoutHelper *)self->_layoutHelper getGeometries:&v51[10 * v54] count:v33 forVisibleRect:archSide focus:v83 archSide:v49 keyframeOverride:v42, v41, v40, v44];
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v86 = 0u;
        layoutHelper = self->_layoutHelper;
        if (layoutHelper)
        {
          if (v19 == 1)
          {
            v58 = 0;
          }

          else
          {
            v58 = v52;
          }

          [(PXMessagesStackItemsLayoutHelper *)layoutHelper baseGeometryForIndex:v58 visibleRect:v49, v42, v41, v40];
        }

        if (v55 <= 0xFFFFFFFFFFFFFFEBLL)
        {
          v59 = 0;
          v60 = &v51[10 * v55];
          v61 = 0x1E696A000uLL;
          do
          {
            if (v55 >= v18)
            {
              v83 = [*(v61 + 2728) currentHandler];
              [v83 handleFailureInMethod:v71 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:673 description:{@"Invalid parameter not satisfying: %@", @"i < geometriesCount"}];

              v61 = 0x1E696A000;
            }

            v62 = &v60[v59];
            v63 = v89;
            *(v62 + 2) = v88;
            *(v62 + 3) = v63;
            *(v62 + 4) = v90;
            v64 = v87;
            *v62 = v86;
            *(v62 + 1) = v64;
            ++v55;
            v59 += 10;
          }

          while (v59 != 200);
        }

        v65 = v84 - (v80 - length) + 21;
        if (v19 != 1)
        {
          v65 = v80 - length + 1;
        }

        v85[0] = 0;
        v85[1] = v85;
        v85[2] = 0x2020000000;
        v85[3] = &v51[10 * v65];
        v66 = self->_layoutHelper;
        [(PXMessagesStackItemsLayout *)self referenceSize];
        [(PXMessagesStackItemsLayoutHelper *)v66 maxItemSizeForReferenceSize:?];
        PXSizeScale();
      }
    }

    else
    {
      v27 = v11;
      v28 = v13;
    }

    v31 = v17;
    v32 = v15;
    archSide = 0;
    goto LABEL_31;
  }
}

void *__44__PXMessagesStackItemsLayout__updateSprites__block_invoke(void *result, unint64_t a2)
{
  v2 = result;
  if (HIDWORD(a2))
  {
    __asm { FMOV            V10.2S, #1.0 }

    v8 = result[8];
    v9 = result[4];
    if (v9)
    {
      [v9 itemsLayout:v2[5] aspectRatioForItem:{v8 + a2, *(off_1E7722048 + 1), *off_1E7722048, *(off_1E7722048 + 6), *(off_1E7722048 + 7), *(off_1E7722048 + 8), *(off_1E7722048 + 9), *(off_1E7722048 + 2), *(off_1E7722048 + 3), *(off_1E7722048 + 4), *(off_1E7722048 + 5), *off_1E7721FE0}];
    }

    PXClamp();
  }

  *(*(result[6] + 8) + 24) = result[7];
  return result;
}

uint64_t __44__PXMessagesStackItemsLayout__updateSprites__block_invoke_2(uint64_t result, unint64_t a2, float32x2_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v7 = result;
    v8 = *(*(*(result + 40) + 8) + 24);
    v9 = a3 + 3;
    v10 = a5 + 8;
    v38 = *(off_1E7722040 + 1);
    v39 = *off_1E7722040;
    v11 = *(off_1E7722040 + 4);
    __asm
    {
      FMOV            V8.2S, #1.0
      FMOV            V0.4S, #20.0
    }

    v37 = _Q0;
    do
    {
      *(v10 - 8) = v39;
      *(v10 + 8) = v38;
      *(v10 + 24) = v11;
      *(v10 - 8) = *(v7 + 58);
      *(v10 - 7) = *(v7 + 59);
      *(v10 + 24) = *(v7 + 56);
      v18 = *(*(v7 + 48) + 8);
      v19 = *(v18 + 24);
      if (v19)
      {
        *(v18 + 24) = v19 - 1;
        v20.f64[0] = MEMORY[0x1A590D300](*(*(v7 + 32) + 1352), *(v8 + 16), *(v8 + 24));
        v20.f64[1] = v21;
        *&v21 = *(v8 + 32);
        *v9[-3].f32 = *v8;
        *&v9[-1] = *&v21;
        *v9 = vcvt_f32_f64(v20);
        *v10 = _D8;
        v22 = *(off_1E7722048 + 3);
        *(a4 + 32) = *(off_1E7722048 + 2);
        *(a4 + 48) = v22;
        v23 = *(off_1E7722048 + 7);
        *(a4 + 96) = *(off_1E7722048 + 6);
        *(a4 + 112) = v23;
        v24 = *(off_1E7722048 + 9);
        *(a4 + 128) = *(off_1E7722048 + 8);
        *(a4 + 144) = v24;
        v25 = *(off_1E7722048 + 5);
        *(a4 + 64) = *(off_1E7722048 + 4);
        *(a4 + 80) = v25;
        v26 = *(off_1E7722048 + 1);
        *a4 = *off_1E7722048;
        *(a4 + 16) = v26;
        *(a4 + 36) = v37;
        result = PFMessagesStackLayoutGeometryGetScale();
        *&v27 = v27;
        v28 = *(v8 + 48);
        v29 = *(v8 + 40);
        *(a4 + 56) = v29;
        *(a4 + 60) = LODWORD(v27);
        v30 = v28;
      }

      else
      {
        v31 = *(off_1E7722048 + 7);
        *(a4 + 96) = *(off_1E7722048 + 6);
        *(a4 + 112) = v31;
        v32 = *(off_1E7722048 + 9);
        *(a4 + 128) = *(off_1E7722048 + 8);
        *(a4 + 144) = v32;
        v33 = *(off_1E7722048 + 3);
        *(a4 + 32) = *(off_1E7722048 + 2);
        *(a4 + 48) = v33;
        v34 = *(off_1E7722048 + 5);
        *(a4 + 64) = *(off_1E7722048 + 4);
        *(a4 + 80) = v34;
        v35 = *(off_1E7722048 + 1);
        *a4 = *off_1E7722048;
        *(a4 + 16) = v35;
        v30 = 0.0;
      }

      *a4 = v30;
      a4 += 160;
      if (*(v7 + 60))
      {
        v36 = -80;
      }

      else
      {
        v36 = 80;
      }

      v8 += v36;
      v9 += 4;
      v10 += 40;
      LODWORD(v5) = v5 - 1;
    }

    while (v5);
  }

  return result;
}

- (void)_invalidateSprites
{
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout _invalidateSprites]"];
      [v6 handleFailureInFunction:v7 file:@"PXMessagesStackItemsLayout.m" lineNumber:565 description:{@"invalidating %lu after it already has been updated", 8}];

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

    [(PXMessagesStackItemsLayout *)self setNeedsUpdate];
  }
}

- (void)_syncPropertiesToLayoutHelper:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__PXMessagesStackItemsLayout__syncPropertiesToLayoutHelper___block_invoke;
  v3[3] = &unk_1E772ED38;
  v3[4] = self;
  [a3 performChanges:v3];
}

void __60__PXMessagesStackItemsLayout__syncPropertiesToLayoutHelper___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setStackedItemsCount:{objc_msgSend(v3, "stackedItemsCount")}];
  [*(a1 + 32) normalizedStackSizeTransform];
  [v5 setNormalizedStackSizeTransform:?];
  v4 = [*(a1 + 32) normalizedStackHorizontalOffsets];
  [v5 setNormalizedStackHorizontalOffsets:v4];

  [*(a1 + 32) normalizedStackVerticalOffset];
  [v5 setNormalizedStackVerticalOffset:?];
  [*(a1 + 32) normalizedContentInsets];
  [v5 setNormalizedContentInsets:?];
  [*(a1 + 32) rotationAngle];
  [v5 setRotationAngle:?];
}

- (void)_invalidateLayoutHelper
{
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout _invalidateLayoutHelper]"];
      [v6 handleFailureInFunction:v7 file:@"PXMessagesStackItemsLayout.m" lineNumber:542 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXMessagesStackItemsLayout *)self setNeedsUpdate];
  }
}

- (void)_updateVisibleRect
{
  if (self->_scrollToBeginning)
  {
    [(PXMessagesStackItemsLayout *)self contentSize];
    PXSizeIsEmpty();
  }
}

- (void)_invalidateVisibleRect
{
  p_preItemLoadingFlags = &self->_preItemLoadingFlags;
  needsUpdate = self->_preItemLoadingFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_preItemLoadingFlags.isPerformingUpdate)
    {
LABEL_6:
      p_preItemLoadingFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_preItemLoadingFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout _invalidateVisibleRect]"];
      [v6 handleFailureInFunction:v7 file:@"PXMessagesStackItemsLayout.m" lineNumber:524 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_preItemLoadingFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_preItemLoadingFlags.willPerformUpdate;
  p_preItemLoadingFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXMessagesStackItemsLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentSize
{
  [(PXMessagesStackItemsLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  v7 = [(PXMessagesStackItemsLayout *)self numberOfPages];
  if (v7)
  {
    v8 = v7 - 1;
    [(PXMessagesStackItemsLayout *)self normalizedPageWidth];
    v10 = v8 * (v4 * v9) + 0.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = v4 + v10;

  [(PXMessagesStackItemsLayout *)self setContentSize:v11, v6];
}

- (void)_invalidateContentSize
{
  p_preItemLoadingFlags = &self->_preItemLoadingFlags;
  needsUpdate = self->_preItemLoadingFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_preItemLoadingFlags.isPerformingUpdate)
    {
LABEL_6:
      p_preItemLoadingFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_preItemLoadingFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout _invalidateContentSize]"];
      [v6 handleFailureInFunction:v7 file:@"PXMessagesStackItemsLayout.m" lineNumber:506 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_preItemLoadingFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_preItemLoadingFlags.willPerformUpdate;
  p_preItemLoadingFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXMessagesStackItemsLayout *)self setNeedsUpdate];
  }
}

- (void)_updateLayoutProperties
{
  if ([(PXMessagesStackItemsLayout *)self numberOfPages])
  {
    primaryItemIndex = self->_primaryItemIndex;
    pageFocus = self->_pageFocus;
    location = self->_trailingHiddenItemsRange.location;
    length = self->_trailingHiddenItemsRange.length;
    [(PXMessagesStackItemsLayout *)self visibleRect];
    [(PXMessagesStackItemsLayout *)self _getItemsForXOffset:&self->_leadingItemsRange leadingItems:&self->_primaryItemIndex primaryItemIndex:&self->_trailingItemsRange trailingItems:&self->_trailingHiddenItemsRange trailingHiddenItems:&self->_pageFocus pageFocus:?];
    if (self->_trailingHiddenItemsRange.location != location || self->_trailingHiddenItemsRange.length != length)
    {
      self->_firstTrailingHiddenItemWithTapback = 0x7FFFFFFFFFFFFFFFLL;
      self->_secondTrailingHiddenItemWithTapback = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (self->_primaryItemIndex == primaryItemIndex)
    {
      v8 = self->_pageFocus;
      if (v8 == 0.0)
      {
        self->_archSide = 0;
      }

      else
      {
        v9 = 0.001;
        if (self->_higherPageDirectionTolerance)
        {
          v9 = 0.05;
        }

        if (v8 <= 0.0 || pageFocus > v9)
        {
          v11 = -v9;
          if (v8 >= 0.0 || pageFocus < v11)
          {
            goto LABEL_27;
          }

          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        self->_archSide = v13;
      }
    }

    else
    {
      self->_signalDelegateForPrimaryItemChange = 1;
    }

LABEL_27:
    self->_higherPageDirectionTolerance = 0;
    return;
  }

  [(PXMessagesStackItemsLayout *)self _clearLayoutProperties];
}

- (void)_clearLayoutProperties
{
  self->_leadingItemsRange = xmmword_1A5380D90;
  self->_primaryItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_trailingItemsRange = xmmword_1A5380D90;
  self->_trailingHiddenItemsRange = xmmword_1A5380D90;
  self->_firstTrailingHiddenItemWithTapback = 0x7FFFFFFFFFFFFFFFLL;
  self->_secondTrailingHiddenItemWithTapback = 0x7FFFFFFFFFFFFFFFLL;
  self->_pageFocus = 0.0;
  self->_archSide = 0;
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXMessagesStackItemsLayout.m" lineNumber:447 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_preItemLoadingFlags = &self->_preItemLoadingFlags;
  self->_preItemLoadingFlags.willPerformUpdate = 0;
  needsUpdate = self->_preItemLoadingFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_preItemLoadingFlags.isPerformingUpdate)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout update]"];
      [v9 handleFailureInFunction:v10 file:@"PXMessagesStackItemsLayout.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"!_preItemLoadingFlags.isPerformingUpdate"}];

      needsUpdate = p_preItemLoadingFlags->needsUpdate;
    }

    p_preItemLoadingFlags->isPerformingUpdate = 1;
    p_preItemLoadingFlags->updated = 1;
    if (needsUpdate)
    {
      p_preItemLoadingFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXMessagesStackItemsLayout *)self _updateContentSize];
      if (!p_preItemLoadingFlags->isPerformingUpdate)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout update]"];
        [v11 handleFailureInFunction:v12 file:@"PXMessagesStackItemsLayout.m" lineNumber:423 description:{@"Invalid parameter not satisfying: %@", @"_preItemLoadingFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_preItemLoadingFlags->needsUpdate;
    p_preItemLoadingFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_preItemLoadingFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXMessagesStackItemsLayout *)self _updateVisibleRect];
      v5 = p_preItemLoadingFlags->needsUpdate;
    }

    p_preItemLoadingFlags->isPerformingUpdate = 0;
    if (v5)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXMessagesStackItemsLayout.m" lineNumber:426 description:{@"still needing to update %lu after update pass", p_preItemLoadingFlags->needsUpdate}];
    }
  }

  [(PXGItemsLayout *)self updateLoadedItemsIfNeeded];
  [(PXGItemsLayout *)self updateAccessoryItemsIfNeeded];
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  v7 = self->_updateFlags.needsUpdate;
  if (v7)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout update]"];
      [v15 handleFailureInFunction:v16 file:@"PXMessagesStackItemsLayout.m" lineNumber:431 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      v7 = p_updateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 1;
    self->_updateFlags.updated = 4;
    if ((v7 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXMessagesStackItemsLayout *)self _updateLayoutHelper];
      if (!self->_updateFlags.isPerformingUpdate)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout update]"];
        [v17 handleFailureInFunction:v18 file:@"PXMessagesStackItemsLayout.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v8 = p_updateFlags->needsUpdate;
    self->_updateFlags.updated |= 8uLL;
    if ((v8 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFF7;
      [(PXMessagesStackItemsLayout *)self _updateSprites];
      v8 = p_updateFlags->needsUpdate;
    }

    self->_updateFlags.isPerformingUpdate = 0;
    if (v8)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXMessagesStackItemsLayout.m" lineNumber:438 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v21.receiver = self;
  v21.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v21 update];
  [(PXMessagesStackItemsLayout *)self _signalDelegatePostUpdate];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXMessagesStackItemsLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXMessagesStackItemsLayout.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)setIsSettling:(BOOL)a3
{
  if (self->_isSettling != a3)
  {
    self->_isSettling = a3;
    if (!a3)
    {
      self->_higherPageDirectionTolerance = 1;
    }
  }
}

- (void)setDesiredLayoutRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_desiredLayoutRect = &self->_desiredLayoutRect;
  if (!CGRectEqualToRect(self->_desiredLayoutRect, a3))
  {
    p_desiredLayoutRect->origin.x = x;
    p_desiredLayoutRect->origin.y = y;
    p_desiredLayoutRect->size.width = width;
    p_desiredLayoutRect->size.height = height;

    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)setRightEdgeInternalHorizontalAlignment:(double)a3
{
  if (self->_rightEdgeInternalHorizontalAlignment != a3)
  {
    self->_rightEdgeInternalHorizontalAlignment = a3;
    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (void)setLeftEdgeInternalHorizontalAlignment:(double)a3
{
  if (self->_leftEdgeInternalHorizontalAlignment != a3)
  {
    self->_leftEdgeInternalHorizontalAlignment = a3;
    [(PXMessagesStackItemsLayout *)self _invalidateSprites];
  }
}

- (double)horizontalContentMarginForSize:(CGSize)a3 normalizedVerticalContentInsets:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [objc_opt_class() _sharedTemplateLayoutHelper];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PXMessagesStackItemsLayout_horizontalContentMarginForSize_normalizedVerticalContentInsets___block_invoke;
  v11[3] = &unk_1E772ED10;
  v11[4] = self;
  v11[5] = v8;
  *&v11[6] = a4;
  v9 = v8;
  [v9 performChanges:v11];
  [v9 horizontalContentMarginForReferenceSize:width itemAspect:{height, self->_minItemAspectRatio}];
  [(PXMessagesStackItemsLayout *)self displayScale];
  PXFloatRoundToPixel();
}

void __93__PXMessagesStackItemsLayout_horizontalContentMarginForSize_normalizedVerticalContentInsets___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 _syncPropertiesToLayoutHelper:v4];
  [v5 setNormalizedContentInsets:*(a1 + 48)];
}

- (double)horizontalContentMargin
{
  layoutHelper = self->_layoutHelper;
  [(PXMessagesStackItemsLayout *)self desiredLayoutRect];
  [(PXMessagesStackItemsLayoutHelper *)layoutHelper horizontalContentMarginForReferenceSize:v4 itemAspect:v5, self->_minItemAspectRatio];
  [(PXMessagesStackItemsLayout *)self displayScale];

  PXFloatRoundToPixel();
}

- ($9C403407A5B624E1CD2E2AFE16A3B680)tapbackConfigurationForProposedConfiguration:(SEL)a3 spriteIndex:(id *)a4
{
  v6 = [(PXGItemsLayout *)self itemForSpriteIndex:?];
  [(PXMessagesStackItemsLayout *)self userInterfaceDirection];
  [(PXMessagesStackItemsLayout *)self stackedItemsCount];
  if (v6 == [(PXMessagesStackItemsLayout *)self primaryItemIndex]- 1)
  {
    PXFloatProgressBetween();
  }

  PXFloatByLinearlyInterpolatingFloats();
}

- (double)selectionOverlayAlphaForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  if (self->_decorationInfoBySpriteIndexSize <= a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"spriteIndex < _decorationInfoBySpriteIndexSize"}];
  }

  if ([(PXGItemsLayout *)self itemForSpriteIndex:v3]== self->_primaryItemIndex)
  {
    return 0.4;
  }

  else
  {
    return self->_decorationInfoBySpriteIndex[v3].var0;
  }
}

- (double)overlayAlphaForSpriteIndex:(unsigned int)a3
{
  if (self->_decorationInfoBySpriteIndexSize <= a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXMessagesStackItemsLayout.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"spriteIndex < _decorationInfoBySpriteIndexSize"}];
  }

  return self->_decorationInfoBySpriteIndex[a3].var0;
}

- (BOOL)getHorizontalOffsetForObjectReference:(id)a3 outOffset:(double *)a4
{
  v6 = [(PXGItemsLayout *)self itemForObjectReference:a3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PXMessagesStackItemsLayout *)self referenceSize];
    v8 = v7;
    [(PXMessagesStackItemsLayout *)self normalizedPageWidth];
    v10 = v8 * v9;
    [(PXMessagesStackItemsLayout *)self contentSize];
    v12 = v11;
    v13 = v10 * v6;
    v14 = [(PXMessagesStackItemsLayout *)self userInterfaceDirection];
    v15 = v12 - v13 - v8;
    if (v14 != 1)
    {
      v15 = v13;
    }

    *a4 = v15;
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (double)pageOffsetLessThanOffset:(double)a3
{
  [(PXMessagesStackItemsLayout *)self referenceSize];
  v5 = v4;
  [(PXMessagesStackItemsLayout *)self normalizedPageWidth];
  if (v5 * v6 > 0.0)
  {
    [(PXMessagesStackItemsLayout *)self numberOfPages];
    PXClamp();
  }

  PXAssertGetLog();
}

- (double)pageOffsetGreaterThanOffset:(double)a3
{
  [(PXMessagesStackItemsLayout *)self referenceSize];
  v5 = v4;
  [(PXMessagesStackItemsLayout *)self normalizedPageWidth];
  if (v5 * v6 > 0.0)
  {
    [(PXMessagesStackItemsLayout *)self numberOfPages];
    PXClamp();
  }

  PXAssertGetLog();
}

- (double)closestPageOffsetForHorizontalOffset:(double)a3
{
  [(PXMessagesStackItemsLayout *)self referenceSize];
  v6 = v5;
  [(PXMessagesStackItemsLayout *)self normalizedPageWidth];
  v8 = v6 * v7;
  if (v8 <= 0.0)
  {
    PXAssertGetLog();
  }

  v9 = fmax(a3, 0.0);
  v10 = floor(v9 / v8);
  v11 = v8 * v10;
  v12 = v8 + v8 * v10;
  v13 = v9 - v8 * v10;
  v14 = v12 - v9;
  v15 = [(PXMessagesStackItemsLayout *)self numberOfPages];
  if (v14 >= v13 || v10 + 1.0 >= v15)
  {
    return v11;
  }

  return v12;
}

- (void)dealloc
{
  free(self->_decorationInfoBySpriteIndex);
  self->_decorationInfoBySpriteIndex = 0;
  v3.receiver = self;
  v3.super_class = PXMessagesStackItemsLayout;
  [(PXGItemsLayout *)&v3 dealloc];
}

- (PXMessagesStackItemsLayout)init
{
  v8.receiver = self;
  v8.super_class = PXMessagesStackItemsLayout;
  v2 = [(PXGItemsLayout *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(PXGItemsLayout *)v2 setLazy:1];
    v4 = objc_alloc_init(PXMessagesStackItemsLayoutHelper);
    layoutHelper = v3->_layoutHelper;
    v3->_layoutHelper = v4;

    v3->_stackedItemsCount = 2;
    v3->_decorationInfoBySpriteIndexSize = 27;
    v3->_decorationInfoBySpriteIndex = malloc_type_calloc(0x1BuLL, 8uLL, 0x100004000313F17uLL);
    v3->_primaryItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    v3->_leadingItemsRange = xmmword_1A5380D90;
    v3->_trailingItemsRange = xmmword_1A5380D90;
    v3->_trailingHiddenItemsRange = xmmword_1A5380D90;
    v3->_firstTrailingHiddenItemWithTapback = 0x7FFFFFFFFFFFFFFFLL;
    v3->_secondTrailingHiddenItemWithTapback = 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(MEMORY[0x1E695F050] + 16);
    v3->_desiredLayoutRect.origin = *MEMORY[0x1E695F050];
    v3->_desiredLayoutRect.size = v6;
    v3->_pageFocus = 0.0;
    v3->_itemCornerRadius = 20.0;
    v3->_archSide = 0;
    v3->_minItemAspectRatio = 0.75;
    v3->_maxItemAspectRatio = 1.33333333;
  }

  return v3;
}

+ (id)_sharedTemplateLayoutHelper
{
  if (_sharedTemplateLayoutHelper_onceToken != -1)
  {
    dispatch_once(&_sharedTemplateLayoutHelper_onceToken, &__block_literal_global_16910);
  }

  v3 = _sharedTemplateLayoutHelper__layoutHelper;

  return v3;
}

void __57__PXMessagesStackItemsLayout__sharedTemplateLayoutHelper__block_invoke()
{
  v0 = objc_alloc_init(PXMessagesStackItemsLayoutHelper);
  v1 = _sharedTemplateLayoutHelper__layoutHelper;
  _sharedTemplateLayoutHelper__layoutHelper = v0;
}

@end