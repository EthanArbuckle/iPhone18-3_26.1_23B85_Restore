@interface PXBaseMessagesStackView
- (BOOL)scrollToIndex:(unint64_t)index animated:(BOOL)animated;
- (BOOL)scrollToObjectReference:(id)reference animated:(BOOL)animated;
- (Class)viewClassForItemAtIndex:(int64_t)index inStackLayout:(id)layout;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXBaseMessagesStackView)initWithCoder:(id)coder;
- (PXBaseMessagesStackView)initWithFrame:(CGRect)frame;
- (PXSectionedObjectReference)currentObjectReference;
- (UIPanGestureRecognizer)panGestureRecognizer;
- (double)horizontalContentMarginForSize:(CGSize)size;
- (double)solidColorOverlayAlphaForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)shadowForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)solidColorOverlayForLayout:(id)layout;
- (id)viewUserDataForItemAtIndex:(int64_t)index inStackLayout:(id)layout;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)numberOfAccessoryItems;
- (unint64_t)currentIndex;
- (void)_updateDataSource;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)primaryItemDidChangeForStackItemsLayout:(id)layout;
- (void)registerAllTextureProvidersWithMediaProvider:(id)provider;
- (void)reloadAccessoryItems;
- (void)scrollViewControllerDidLayoutSubviews:(id)subviews;
- (void)scrollViewControllerWillBeginScrolling:(id)scrolling;
- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)setCurrentDataSource:(id)source;
- (void)setDataSourceManager:(id)manager;
- (void)setDebugColorModeEnabled:(BOOL)enabled;
- (void)setHorizontalAlignment:(int64_t)alignment;
- (void)setNumberOfAccessoryItems:(int64_t)items;
- (void)setSelectionOverlayEnabled:(BOOL)enabled;
- (void)setSettled:(BOOL)settled;
- (void)setVerticalContentInsets:(double)insets;
@end

@implementation PXBaseMessagesStackView

- (void)scrollViewControllerDidLayoutSubviews:(id)subviews
{
  indexToRestore = self->_indexToRestore;
  if (indexToRestore != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PXBaseMessagesStackView *)self scrollToIndex:indexToRestore animated:0];
    self->_indexToRestore = 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)scrollViewControllerWillBeginScrolling:(id)scrolling
{
  [(PXBaseMessagesStackView *)self setSettled:0];
  [(PXMessagesStackItemsLayout *)self->_layout setIsSettling:0];
  [(PXEventCoalescer *)self->_settledEventCoalescer cancel];

  [(PXBaseMessagesStackView *)self willBeginScrolling];
}

- (void)scrollViewControllerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  x = velocity.x;
  v33 = *MEMORY[0x1E69E9840];
  v9 = [PXMessagesUISettings sharedInstance:scrolling];
  pagingBehavior = [v9 pagingBehavior];
  [(PXBaseMessagesStackView *)self bounds];
  v12 = v11;
  [v9 pagingVelocityThreshold];
  switch(pagingBehavior)
  {
    case 1:
      v18 = offset->x;
      layout = self->_layout;
      goto LABEL_9;
    case 2:
      v17 = v13 * (v12 / 355.0);
      [(PXMessagesStackItemsLayout *)self->_layout visibleRect];
      if (x < -v17)
      {
        [(PXMessagesStackItemsLayout *)self->_layout pageOffsetLessThanOffset:?];
LABEL_10:
        offset->x = v19;
        break;
      }

      layout = self->_layout;
      if (x > v17)
      {
        [(PXMessagesStackItemsLayout *)layout pageOffsetGreaterThanOffset:?];
        goto LABEL_10;
      }

LABEL_9:
      [(PXMessagesStackItemsLayout *)layout closestPageOffsetForHorizontalOffset:v18];
      goto LABEL_10;
    case 3:
      [(PXMessagesStackItemsLayout *)self->_layout visibleRect];
      v15 = v14;
      if (x <= 0.0)
      {
        v21 = self->_layout;
        if (x < 0.0)
        {
          [(PXMessagesStackItemsLayout *)v21 pageOffsetLessThanOffset:?];
        }

        else
        {
          [(PXMessagesStackItemsLayout *)v21 closestPageOffsetForHorizontalOffset:?];
        }
      }

      else
      {
        [(PXMessagesStackItemsLayout *)self->_layout pageOffsetGreaterThanOffset:v14];
      }

      v22 = v16;
      v23 = PLUIGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = offset->x;
        v25 = 134218752;
        v26 = v15;
        v27 = 2048;
        v28 = v24;
        v29 = 2048;
        v30 = v22;
        v31 = 2048;
        v32 = x;
        _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEBUG, "Settling nearest clamped. Current (%lf). Proposed (%lf). Final (%lf). Velocity (%lf).", &v25, 0x2Au);
      }

      offset->x = v22;
      break;
  }

  [(PXMessagesStackItemsLayout *)self->_layout setIsSettling:1];
}

- (id)viewUserDataForItemAtIndex:(int64_t)index inStackLayout:(id)layout
{
  v6 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  PXAssertGetLog();
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout
{
  v6 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  PXAssertGetLog();
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if (self->_decoratingLayout == layoutCopy)
  {
    v15 = [(PXBaseMessagesStackView *)self viewUserDataForSpriteAtIndex:v4 inDecoratingLayout:?];
LABEL_6:
    v16 = v15;
    goto LABEL_9;
  }

  layout = [(PXBaseMessagesStackView *)self layout];

  layout2 = [(PXBaseMessagesStackView *)self layout];
  v9 = layout2;
  if (layout != layoutCopy)
  {
    v10 = [layout2 convertSpriteIndex:v4 fromDescendantLayout:layoutCopy];

    layout3 = [(PXBaseMessagesStackView *)self layout];
    v12 = [layout3 accessoryItemForSpriteIndex:v10];

    layout4 = [(PXBaseMessagesStackView *)self layout];
    numberOfAccessoryItems = [layout4 numberOfAccessoryItems];

    if (v12 >= numberOfAccessoryItems)
    {
      PXAssertGetLog();
    }

    v15 = [(PXBaseMessagesStackView *)self viewUserDataForAccessoryItemAtIndex:v12];
    goto LABEL_6;
  }

  v17 = [layout2 itemForSpriteIndex:v4];

  layout5 = [(PXBaseMessagesStackView *)self layout];
  v16 = [(PXBaseMessagesStackView *)self viewUserDataForItemAtIndex:v17 inStackLayout:layout5];

LABEL_9:

  return v16;
}

- (Class)viewClassForItemAtIndex:(int64_t)index inStackLayout:(id)layout
{
  v6 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  PXAssertGetLog();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout
{
  v6 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  PXAssertGetLog();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if (self->_decoratingLayout == layoutCopy)
  {
    v15 = [(PXBaseMessagesStackView *)self viewClassForSpriteAtIndex:v4 inDecoratingLayout:?];
LABEL_6:
    v16 = v15;
    goto LABEL_9;
  }

  layout = [(PXBaseMessagesStackView *)self layout];

  layout2 = [(PXBaseMessagesStackView *)self layout];
  v9 = layout2;
  if (layout != layoutCopy)
  {
    v10 = [layout2 convertSpriteIndex:v4 fromDescendantLayout:layoutCopy];

    layout3 = [(PXBaseMessagesStackView *)self layout];
    v12 = [layout3 accessoryItemForSpriteIndex:v10];

    layout4 = [(PXBaseMessagesStackView *)self layout];
    numberOfAccessoryItems = [layout4 numberOfAccessoryItems];

    if (v12 >= numberOfAccessoryItems)
    {
      PXAssertGetLog();
    }

    v15 = [(PXBaseMessagesStackView *)self viewClassForAccessoryItemAtIndex:v12];
    goto LABEL_6;
  }

  v17 = [layout2 itemForSpriteIndex:v4];

  layout5 = [(PXBaseMessagesStackView *)self layout];
  v16 = [(PXBaseMessagesStackView *)self viewClassForItemAtIndex:v17 inStackLayout:layout5];

LABEL_9:

  return v16;
}

- (id)shadowForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  v11 = -1;
  if ([layoutCopy isSpriteIndex:v4 decoratingSpriteWithIndex:&v11] && (v7 = objc_msgSend(layoutCopy, "convertSpriteIndex:toDescendantLayout:", v11, self->_layout), v7 != -1) && (v8 = -[PXGItemsLayout itemForSpriteIndex:](self->_layout, "itemForSpriteIndex:", v7), v8 == -[PXMessagesStackItemsLayout primaryItemIndex](self->_layout, "primaryItemIndex")) && !-[PXBaseMessagesStackView shadowsDisabled](self, "shadowsDisabled"))
  {
    v9 = self->_centerItemShadow;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)solidColorOverlayAlphaForSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  v6 = [(PXBaseMessagesStackView *)self selectionOverlayEnabled:*&index];
  layout = self->_layout;
  if (v6)
  {

    [(PXMessagesStackItemsLayout *)layout selectionOverlayAlphaForSpriteIndex:v4];
  }

  else
  {

    [(PXMessagesStackItemsLayout *)layout overlayAlphaForSpriteIndex:v4];
  }

  return result;
}

- (id)solidColorOverlayForLayout:(id)layout
{
  if ([(PXBaseMessagesStackView *)self selectionOverlayEnabled])
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.807843137 green:0.807843137 blue:0.823529412 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v3 = ;

  return v3;
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layout = self->_layout;
  if (layout == layout)
  {
    v6 = *&index;
    layoutCopy = layout;
    v8 = [(PXGItemsLayout *)layoutCopy itemForSpriteIndex:v6];
    if (colorAtIndex_inLayout__onceToken != -1)
    {
      dispatch_once(&colorAtIndex_inLayout__onceToken, &__block_literal_global_59421);
    }

    v9 = [colorAtIndex_inLayout__colors count];
    blueColor = [colorAtIndex_inLayout__colors objectAtIndexedSubscript:v8 % v9];
  }

  else
  {
    blueColor = [MEMORY[0x1E69DC888] blueColor];
  }

  return blueColor;
}

void __49__PXBaseMessagesStackView_colorAtIndex_inLayout___block_invoke()
{
  v9[7] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC888] redColor];
  v1 = [MEMORY[0x1E69DC888] orangeColor];
  v9[1] = v1;
  v2 = [MEMORY[0x1E69DC888] yellowColor];
  v9[2] = v2;
  v3 = [MEMORY[0x1E69DC888] greenColor];
  v9[3] = v3;
  v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  v9[4] = v4;
  v5 = [MEMORY[0x1E69DC888] systemIndigoColor];
  v9[5] = v5;
  v6 = [MEMORY[0x1E69DC888] systemPurpleColor];
  v9[6] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v8 = colorAtIndex_inLayout__colors;
  colorAtIndex_inLayout__colors = v7;
}

- (void)primaryItemDidChangeForStackItemsLayout:(id)layout
{
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  currentIndex = [(PXBaseMessagesStackView *)self currentIndex];
  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL || (v5 = currentIndex, [currentDataSource numberOfItemsInSection:0] <= currentIndex))
  {
    identifier = *off_1E7722228;
    v7 = *(off_1E7722228 + 1);
    v5 = *(off_1E7722228 + 2);
    v8 = *(off_1E7722228 + 3);
  }

  else
  {
    identifier = [currentDataSource identifier];
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  dataSourceIdentifier = self->_lastKnownPrimaryIndex.dataSourceIdentifier;
  if (dataSourceIdentifier == *off_1E7721F68)
  {
    v10 = 0;
  }

  else
  {
    v10 = dataSourceIdentifier != identifier || self->_lastKnownPrimaryIndex.section != v7 || self->_lastKnownPrimaryIndex.item != v5 || self->_lastKnownPrimaryIndex.subitem != v8;
  }

  self->_lastKnownPrimaryIndex.dataSourceIdentifier = identifier;
  self->_lastKnownPrimaryIndex.section = v7;
  self->_lastKnownPrimaryIndex.item = v5;
  self->_lastKnownPrimaryIndex.subitem = v8;
  [(PXBaseMessagesStackView *)self primaryItemDidChange:self->_isProgramaticallyScrolling didChangeIndex:v10];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (DataSourceManagerObservationContext_59424 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXBaseMessagesStackView.m" lineNumber:444 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXBaseMessagesStackView *)self _updateDataSource];
    observableCopy = v11;
  }
}

- (void)_updateDataSource
{
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  dataSourceManager = [(PXBaseMessagesStackView *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  if (currentDataSource != dataSource)
  {
    dataSourceManager2 = [(PXBaseMessagesStackView *)self dataSourceManager];
    v7 = [dataSourceManager2 allChangeDetailsFromDataSource:currentDataSource toDataSource:dataSource];

    v8 = *&self->_lastKnownPrimaryIndex.item;
    v23 = *&self->_lastKnownPrimaryIndex.dataSourceIdentifier;
    v24 = v8;
    [off_1E77218B0 indexPathAfterApplyingChanges:v7 toIndexPath:&v23 hasIncrementalChanges:0 objectChanged:0];
    v9 = v26;
    *&self->_lastKnownPrimaryIndex.dataSourceIdentifier = v25;
    *&self->_lastKnownPrimaryIndex.item = v9;
    v10 = [currentDataSource numberOfItemsInSection:0];
    indexToRestore = self->_indexToRestore;
    if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL)
    {
      indexToRestore = [(PXBaseMessagesStackView *)self currentIndex];
    }

    if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL || indexToRestore < v10)
    {
      if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([dataSource numberOfItemsInSection:0] <= 0)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        identifier = [currentDataSource identifier];
        v25 = 0u;
        v26 = 0u;
        v23 = identifier;
        *&v24 = indexToRestore;
        *(&v24 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        [off_1E77218B0 indexPathAfterApplyingChanges:v7 toIndexPath:&v23 hasIncrementalChanges:0 objectChanged:0];
        if (v25 == *off_1E7721F68)
        {
          v19 = [dataSource numberOfItemsInSection:0];
          v13 = v19 - 1;
          if (v19 <= 0)
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (indexToRestore < v19)
          {
            v13 = indexToRestore;
          }
        }

        else
        {
          v13 = v26;
        }
      }
    }

    else
    {
      v13 = indexToRestore - v10 + [dataSource numberOfItemsInSection:0];
    }

    self->_indexToRestore = v13;
    if (([currentDataSource containsAnyItems] & 1) != 0 && objc_msgSend(dataSource, "containsAnyItems") && -[PXMessagesStackItemsLayout appearState](self->_layout, "appearState") == 1)
    {
      createDefaultAnimationForCurrentContext = [(PXMessagesStackItemsLayout *)self->_layout createDefaultAnimationForCurrentContext];
      sharedInstance = [off_1E7721810 sharedInstance];
      [sharedInstance defaultAnimationDuration];
      [createDefaultAnimationForCurrentContext setDuration:?];
    }

    layout = self->_layout;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__PXBaseMessagesStackView__updateDataSource__block_invoke;
    v20[3] = &unk_1E7733948;
    v20[4] = self;
    v21 = currentDataSource;
    v17 = dataSource;
    v22 = v17;
    [(PXMessagesStackItemsLayout *)layout applySectionedChangeDetailsForSingleSection:v7 dataSourceBeforeChanges:v21 dataSourceAfterChanges:v17 changeMediaVersionHandler:v20];
    [(PXBaseMessagesStackView *)self setCurrentDataSource:v17];
  }
}

uint64_t __44__PXBaseMessagesStackView__updateDataSource__block_invoke(void *a1, _OWORD *a2, _OWORD *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  return [v3 contentChangedForItemBeforeDataSource:v4 beforeIndexPath:v10 afterDataSource:v5 afterIndexPath:v9];
}

- (void)setSettled:(BOOL)settled
{
  if (self->_settled != settled)
  {
    self->_settled = settled;
    [(PXBaseMessagesStackView *)self settledDidChange];
  }
}

- (void)setCurrentDataSource:(id)source
{
  sourceCopy = source;
  if (self->_currentDataSource != sourceCopy)
  {
    v6 = sourceCopy;
    objc_storeStrong(&self->_currentDataSource, source);
    [(PXBaseMessagesStackView *)self currentDataSourceDidChange];
    [(PXBaseMessagesStackView *)self setNeedsLayout];
    sourceCopy = v6;
  }
}

- (void)registerAllTextureProvidersWithMediaProvider:(id)provider
{
  providerCopy = provider;
  tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
  [tungstenView registerAllTextureProvidersWithMediaProvider:providerCopy];

  v5 = objc_alloc_init(off_1E77215C0);
  [v5 setOverlayViewSource:self];
  [tungstenView registerTextureProvider:v5 forMediaKind:8];
}

- (void)reloadAccessoryItems
{
  layout = [(PXBaseMessagesStackView *)self layout];
  [layout reloadAccessoryItems];
}

- (int64_t)numberOfAccessoryItems
{
  layout = [(PXBaseMessagesStackView *)self layout];
  numberOfAccessoryItems = [layout numberOfAccessoryItems];

  return numberOfAccessoryItems;
}

- (void)setNumberOfAccessoryItems:(int64_t)items
{
  layout = [(PXBaseMessagesStackView *)self layout];
  if ([layout numberOfAccessoryItems] != items)
  {
    numberOfItems = [layout numberOfItems];
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = numberOfItems + items - 1;
    if (numberOfItems + items >= 1)
    {
      indexToRestore = self->_indexToRestore;
      if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexToRestore = [layout primaryItemIndex];
      }

      if (v7 >= indexToRestore)
      {
        v6 = indexToRestore;
      }

      else
      {
        v6 = v7;
      }
    }

    self->_indexToRestore = v6;
    [layout setNumberOfAccessoryItems:items];
    [(PXBaseMessagesStackView *)self reloadAccessoryItems];
  }
}

- (void)setHorizontalAlignment:(int64_t)alignment
{
  if (self->_horizontalAlignment != alignment)
  {
    self->_horizontalAlignment = alignment;
    [(PXBaseMessagesStackView *)self setNeedsLayout];
  }
}

- (void)setSelectionOverlayEnabled:(BOOL)enabled
{
  if (self->_selectionOverlayEnabled != enabled)
  {
    self->_selectionOverlayEnabled = enabled;
    layout = [(PXBaseMessagesStackView *)self layout];
    [layout invalidateDecorationAndSprites];
  }
}

- (double)horizontalContentMarginForSize:(CGSize)size
{
  v4 = MEMORY[0x1A590D300](self, a2, 1.0, size.width, size.height);
  v6 = v5;
  [(PXBaseMessagesStackView *)self verticalContentInsets];
  v8 = v7 / v6;
  if (v6 <= 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  layout = self->_layout;

  [(PXMessagesStackItemsLayout *)layout horizontalContentMarginForSize:v4 normalizedVerticalContentInsets:v6, v9];
  return result;
}

- (void)setVerticalContentInsets:(double)insets
{
  if (self->_verticalContentInsets != insets)
  {
    self->_verticalContentInsets = insets;
    [(PXBaseMessagesStackView *)self setNeedsLayout];
  }
}

- (UIPanGestureRecognizer)panGestureRecognizer
{
  tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
  scrollViewController = [tungstenView scrollViewController];
  scrollView = [scrollViewController scrollView];

  panGestureRecognizer = [scrollView panGestureRecognizer];

  return panGestureRecognizer;
}

- (PXSectionedObjectReference)currentObjectReference
{
  currentIndex = [(PXBaseMessagesStackView *)self currentIndex];
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  v5 = currentDataSource;
  if (currentIndex == 0x7FFFFFFFFFFFFFFFLL || [currentDataSource numberOfItemsInSection:0] <= currentIndex)
  {
    v6 = 0;
  }

  else
  {
    v8[0] = [v5 identifier];
    v8[1] = 0;
    v8[2] = currentIndex;
    v8[3] = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [v5 objectReferenceAtIndexPath:v8];
  }

  return v6;
}

- (unint64_t)currentIndex
{
  layout = [(PXBaseMessagesStackView *)self layout];
  primaryItemIndex = [layout primaryItemIndex];

  return primaryItemIndex;
}

- (BOOL)scrollToObjectReference:(id)reference animated:(BOOL)animated
{
  animatedCopy = animated;
  referenceCopy = reference;
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  v8 = [currentDataSource objectReferenceForObjectReference:referenceCopy];

  if (v8)
  {
    v13 = 0.0;
    v9 = [(PXMessagesStackItemsLayout *)self->_layout getHorizontalOffsetForObjectReference:v8 outOffset:&v13];
    if (v9)
    {
      self->_isProgramaticallyScrolling = 1;
      scrollViewController = [(PXGView *)self->_tungstenView scrollViewController];
      scrollView = [scrollViewController scrollView];

      [scrollView px_scrollToContentOffset:animatedCopy animated:{v13, 0.0}];
      if (!animatedCopy)
      {
        [(PXGView *)self->_tungstenView ensureUpdatedLayout];
      }

      self->_indexToRestore = 0x7FFFFFFFFFFFFFFFLL;
      self->_isProgramaticallyScrolling = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)scrollToIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  if ([currentDataSource numberOfItemsInSection:0] <= index)
  {
    v9 = 0;
  }

  else
  {
    v11[0] = [currentDataSource identifier];
    v11[1] = 0;
    v11[2] = index;
    v11[3] = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [currentDataSource objectReferenceAtIndexPath:v11];
    v9 = [(PXBaseMessagesStackView *)self scrollToObjectReference:v8 animated:animatedCopy];
  }

  return v9;
}

- (void)setDebugColorModeEnabled:(BOOL)enabled
{
  if (self->_debugColorModeEnabled != enabled)
  {
    self->_debugColorModeEnabled = enabled;
    if (enabled)
    {
      layout = [(PXBaseMessagesStackView *)self layout];
      accessoryMediaKind = 5;
      [layout setMediaKind:5];
    }

    else
    {
      itemMediaKind = [objc_opt_class() itemMediaKind];
      layout2 = [(PXBaseMessagesStackView *)self layout];
      [layout2 setMediaKind:itemMediaKind];

      accessoryMediaKind = [objc_opt_class() accessoryMediaKind];
    }

    layout3 = [(PXBaseMessagesStackView *)self layout];
    [layout3 setAccessoryMediaKind:accessoryMediaKind];
  }
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PXBaseMessagesStackView;
  [(PXBaseMessagesStackView *)&v25 layoutSubviews];
  bounds = [(PXBaseMessagesStackView *)self bounds];
  v6 = MEMORY[0x1A590D300](bounds, 1.0, v4, v5);
  v8 = v7;
  [(NSShadow *)self->_centerItemShadow shadowOffset];
  v10 = v9;
  [(NSShadow *)self->_centerItemShadow shadowBlurRadius];
  v12 = v11;
  horizontalAlignment = [(PXBaseMessagesStackView *)self horizontalAlignment];
  if (!horizontalAlignment || horizontalAlignment == 2)
  {
    [(PXMessagesStackItemsLayout *)self->_layout displayScale];
    PXFloatRoundToPixel();
  }

  v14 = 0.0;
  v15 = 0.0;
  v16 = v8;
  v17 = v6;
  if (![(PXMessagesStackItemsLayout *)self->_layout presentationType])
  {
    v17 = v6 + v6;
    v16 = v8 + v10 + v12;
    v15 = v6 * 0.5;
    v14 = -(v6 * 0.5);
  }

  [(PXGView *)self->_tungstenView frame];
  v20 = v19 == v16 && v18 == v17;
  indexToRestore = self->_indexToRestore;
  if (!v20 && indexToRestore == 0x7FFFFFFFFFFFFFFFLL)
  {
    indexToRestore = [(PXMessagesStackItemsLayout *)self->_layout primaryItemIndex];
  }

  self->_indexToRestore = indexToRestore;
  [(PXGView *)self->_tungstenView setFrame:v14, 0.0, v17, v16];
  [(PXBaseMessagesStackView *)self verticalContentInsets];
  v24 = v23 / v8;
  if (v8 <= 0.0)
  {
    v24 = 0.0;
  }

  [(PXMessagesStackItemsLayout *)self->_layout setNormalizedContentInsets:v24];
  [(PXMessagesStackItemsLayout *)self->_layout setDesiredLayoutRect:v15, 0.0, v6, v8];
}

- (void)setDataSourceManager:(id)manager
{
  managerCopy = manager;
  dataSourceManager = self->_dataSourceManager;
  if (dataSourceManager != managerCopy)
  {
    v8 = managerCopy;
    [(PXSectionedDataSourceManager *)dataSourceManager unregisterChangeObserver:self context:DataSourceManagerObservationContext_59424];
    objc_storeStrong(&self->_dataSourceManager, manager);
    [(PXSectionedDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:DataSourceManagerObservationContext_59424];
    [(PXBaseMessagesStackView *)self _updateDataSource];
    v7 = *(off_1E7722228 + 1);
    *&self->_lastKnownPrimaryIndex.dataSourceIdentifier = *off_1E7722228;
    *&self->_lastKnownPrimaryIndex.item = v7;
    [(PXBaseMessagesStackView *)self dataSourceManagerDidChange];
    managerCopy = v8;
  }
}

- (PXBaseMessagesStackView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBaseMessagesStackView.m" lineNumber:116 description:{@"%s is not available as initializer", "-[PXBaseMessagesStackView initWithCoder:]"}];

  abort();
}

- (PXBaseMessagesStackView)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = PXBaseMessagesStackView;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(PXBaseMessagesStackView *)&v25 initWithFrame:*MEMORY[0x1E695F058], v4, v5, v6];
  if (v7)
  {
    v8 = +[PXMessagesUISettings sharedInstance];
    v7->_horizontalAlignment = 1;
    v7->_useAspectTiles = [v8 aspectTilesEnabled];
    renderWithCA = [v8 renderWithCA];
    v10 = &unk_1F1910198;
    if (!renderWithCA)
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [[off_1E7721708 alloc] initWithFrame:v11 allowedPresentationTypes:{v3, v4, v5, v6}];

    tungstenView = v7->_tungstenView;
    v7->_tungstenView = v12;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PXGView *)v7->_tungstenView setBackgroundColor:clearColor];

    scrollViewController = [(PXGView *)v7->_tungstenView scrollViewController];
    scrollView = [scrollViewController scrollView];

    [scrollView setAlwaysBounceVertical:0];
    [scrollView setShowsHorizontalScrollIndicator:0];
    [scrollView setShowsVerticalScrollIndicator:0];
    [scrollView setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [scrollView setClipsToBounds:0];
    scrollViewController2 = [(PXGView *)v7->_tungstenView scrollViewController];
    [scrollViewController2 registerObserver:v7];

    v18 = objc_alloc_init(PXMessagesStackItemsLayout);
    [(PXMessagesStackItemsLayout *)v18 setPresentationType:0];
    if ([(PXBaseMessagesStackView *)v7 debugColorModeEnabled])
    {
      itemMediaKind = 5;
    }

    else
    {
      itemMediaKind = [objc_opt_class() itemMediaKind];
    }

    [(PXMessagesStackItemsLayout *)v18 setMediaKind:itemMediaKind];
    [(PXMessagesStackItemsLayout *)v18 setContentSource:v7];
    [(PXMessagesStackItemsLayout *)v18 setAccessoryPresentationType:1];
    if ([(PXBaseMessagesStackView *)v7 debugColorModeEnabled])
    {
      accessoryMediaKind = 5;
    }

    else
    {
      accessoryMediaKind = [objc_opt_class() accessoryMediaKind];
    }

    [(PXMessagesStackItemsLayout *)v18 setAccessoryMediaKind:accessoryMediaKind];
    [(PXGItemsLayout *)v18 setAccessoryItemContentSource:v7];
    [(PXMessagesStackItemsLayout *)v18 setPrimaryItemDelegate:v7];
    -[PXMessagesStackItemsLayout setStackedItemsCount:](v18, "setStackedItemsCount:", [v8 stackedItemsCount]);
    renderWithCA2 = [v8 renderWithCA];
    [v8 normalizedPageWidth];
    if (!renderWithCA2)
    {
      v22 = v22 * 0.5;
    }

    [(PXMessagesStackItemsLayout *)v18 setNormalizedPageWidth:v22];
    [v8 normalizedStackSizeTransform];
    [(PXMessagesStackItemsLayout *)v18 setNormalizedStackSizeTransform:?];
    horizontalOffsets = [v8 horizontalOffsets];
    [(PXMessagesStackItemsLayout *)v18 setNormalizedStackHorizontalOffsets:horizontalOffsets];

    [v8 rotationAngle];
    PXDegreesToRadians();
  }

  return 0;
}

@end