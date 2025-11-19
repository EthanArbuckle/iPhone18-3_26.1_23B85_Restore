@interface PXBaseMessagesStackView
- (BOOL)scrollToIndex:(unint64_t)a3 animated:(BOOL)a4;
- (BOOL)scrollToObjectReference:(id)a3 animated:(BOOL)a4;
- (Class)viewClassForItemAtIndex:(int64_t)a3 inStackLayout:(id)a4;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXBaseMessagesStackView)initWithCoder:(id)a3;
- (PXBaseMessagesStackView)initWithFrame:(CGRect)a3;
- (PXSectionedObjectReference)currentObjectReference;
- (UIPanGestureRecognizer)panGestureRecognizer;
- (double)horizontalContentMarginForSize:(CGSize)a3;
- (double)solidColorOverlayAlphaForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)shadowForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)solidColorOverlayForLayout:(id)a3;
- (id)viewUserDataForItemAtIndex:(int64_t)a3 inStackLayout:(id)a4;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)numberOfAccessoryItems;
- (unint64_t)currentIndex;
- (void)_updateDataSource;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)primaryItemDidChangeForStackItemsLayout:(id)a3;
- (void)registerAllTextureProvidersWithMediaProvider:(id)a3;
- (void)reloadAccessoryItems;
- (void)scrollViewControllerDidLayoutSubviews:(id)a3;
- (void)scrollViewControllerWillBeginScrolling:(id)a3;
- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6;
- (void)setCurrentDataSource:(id)a3;
- (void)setDataSourceManager:(id)a3;
- (void)setDebugColorModeEnabled:(BOOL)a3;
- (void)setHorizontalAlignment:(int64_t)a3;
- (void)setNumberOfAccessoryItems:(int64_t)a3;
- (void)setSelectionOverlayEnabled:(BOOL)a3;
- (void)setSettled:(BOOL)a3;
- (void)setVerticalContentInsets:(double)a3;
@end

@implementation PXBaseMessagesStackView

- (void)scrollViewControllerDidLayoutSubviews:(id)a3
{
  indexToRestore = self->_indexToRestore;
  if (indexToRestore != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PXBaseMessagesStackView *)self scrollToIndex:indexToRestore animated:0];
    self->_indexToRestore = 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)scrollViewControllerWillBeginScrolling:(id)a3
{
  [(PXBaseMessagesStackView *)self setSettled:0];
  [(PXMessagesStackItemsLayout *)self->_layout setIsSettling:0];
  [(PXEventCoalescer *)self->_settledEventCoalescer cancel];

  [(PXBaseMessagesStackView *)self willBeginScrolling];
}

- (void)scrollViewControllerWillEndScrolling:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5 currentContentOffset:(CGPoint)a6
{
  x = a4.x;
  v33 = *MEMORY[0x1E69E9840];
  v9 = [PXMessagesUISettings sharedInstance:a3];
  v10 = [v9 pagingBehavior];
  [(PXBaseMessagesStackView *)self bounds];
  v12 = v11;
  [v9 pagingVelocityThreshold];
  switch(v10)
  {
    case 1:
      v18 = a5->x;
      layout = self->_layout;
      goto LABEL_9;
    case 2:
      v17 = v13 * (v12 / 355.0);
      [(PXMessagesStackItemsLayout *)self->_layout visibleRect];
      if (x < -v17)
      {
        [(PXMessagesStackItemsLayout *)self->_layout pageOffsetLessThanOffset:?];
LABEL_10:
        a5->x = v19;
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
        v24 = a5->x;
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

      a5->x = v22;
      break;
  }

  [(PXMessagesStackItemsLayout *)self->_layout setIsSettling:1];
}

- (id)viewUserDataForItemAtIndex:(int64_t)a3 inStackLayout:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a4;
  PXAssertGetLog();
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a4;
  PXAssertGetLog();
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (self->_decoratingLayout == v6)
  {
    v15 = [(PXBaseMessagesStackView *)self viewUserDataForSpriteAtIndex:v4 inDecoratingLayout:?];
LABEL_6:
    v16 = v15;
    goto LABEL_9;
  }

  v7 = [(PXBaseMessagesStackView *)self layout];

  v8 = [(PXBaseMessagesStackView *)self layout];
  v9 = v8;
  if (v7 != v6)
  {
    v10 = [v8 convertSpriteIndex:v4 fromDescendantLayout:v6];

    v11 = [(PXBaseMessagesStackView *)self layout];
    v12 = [v11 accessoryItemForSpriteIndex:v10];

    v13 = [(PXBaseMessagesStackView *)self layout];
    v14 = [v13 numberOfAccessoryItems];

    if (v12 >= v14)
    {
      PXAssertGetLog();
    }

    v15 = [(PXBaseMessagesStackView *)self viewUserDataForAccessoryItemAtIndex:v12];
    goto LABEL_6;
  }

  v17 = [v8 itemForSpriteIndex:v4];

  v18 = [(PXBaseMessagesStackView *)self layout];
  v16 = [(PXBaseMessagesStackView *)self viewUserDataForItemAtIndex:v17 inStackLayout:v18];

LABEL_9:

  return v16;
}

- (Class)viewClassForItemAtIndex:(int64_t)a3 inStackLayout:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a4;
  PXAssertGetLog();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a4;
  PXAssertGetLog();
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if (self->_decoratingLayout == v6)
  {
    v15 = [(PXBaseMessagesStackView *)self viewClassForSpriteAtIndex:v4 inDecoratingLayout:?];
LABEL_6:
    v16 = v15;
    goto LABEL_9;
  }

  v7 = [(PXBaseMessagesStackView *)self layout];

  v8 = [(PXBaseMessagesStackView *)self layout];
  v9 = v8;
  if (v7 != v6)
  {
    v10 = [v8 convertSpriteIndex:v4 fromDescendantLayout:v6];

    v11 = [(PXBaseMessagesStackView *)self layout];
    v12 = [v11 accessoryItemForSpriteIndex:v10];

    v13 = [(PXBaseMessagesStackView *)self layout];
    v14 = [v13 numberOfAccessoryItems];

    if (v12 >= v14)
    {
      PXAssertGetLog();
    }

    v15 = [(PXBaseMessagesStackView *)self viewClassForAccessoryItemAtIndex:v12];
    goto LABEL_6;
  }

  v17 = [v8 itemForSpriteIndex:v4];

  v18 = [(PXBaseMessagesStackView *)self layout];
  v16 = [(PXBaseMessagesStackView *)self viewClassForItemAtIndex:v17 inStackLayout:v18];

LABEL_9:

  return v16;
}

- (id)shadowForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v11 = -1;
  if ([v6 isSpriteIndex:v4 decoratingSpriteWithIndex:&v11] && (v7 = objc_msgSend(v6, "convertSpriteIndex:toDescendantLayout:", v11, self->_layout), v7 != -1) && (v8 = -[PXGItemsLayout itemForSpriteIndex:](self->_layout, "itemForSpriteIndex:", v7), v8 == -[PXMessagesStackItemsLayout primaryItemIndex](self->_layout, "primaryItemIndex")) && !-[PXBaseMessagesStackView shadowsDisabled](self, "shadowsDisabled"))
  {
    v9 = self->_centerItemShadow;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)solidColorOverlayAlphaForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v6 = [(PXBaseMessagesStackView *)self selectionOverlayEnabled:*&a3];
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

- (id)solidColorOverlayForLayout:(id)a3
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

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  layout = self->_layout;
  if (layout == a4)
  {
    v6 = *&a3;
    v7 = layout;
    v8 = [(PXGItemsLayout *)v7 itemForSpriteIndex:v6];
    if (colorAtIndex_inLayout__onceToken != -1)
    {
      dispatch_once(&colorAtIndex_inLayout__onceToken, &__block_literal_global_59421);
    }

    v9 = [colorAtIndex_inLayout__colors count];
    v5 = [colorAtIndex_inLayout__colors objectAtIndexedSubscript:v8 % v9];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] blueColor];
  }

  return v5;
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

- (void)primaryItemDidChangeForStackItemsLayout:(id)a3
{
  v13 = [(PXBaseMessagesStackView *)self currentDataSource];
  v4 = [(PXBaseMessagesStackView *)self currentIndex];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, [v13 numberOfItemsInSection:0] <= v4))
  {
    v6 = *off_1E7722228;
    v7 = *(off_1E7722228 + 1);
    v5 = *(off_1E7722228 + 2);
    v8 = *(off_1E7722228 + 3);
  }

  else
  {
    v6 = [v13 identifier];
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
    v10 = dataSourceIdentifier != v6 || self->_lastKnownPrimaryIndex.section != v7 || self->_lastKnownPrimaryIndex.item != v5 || self->_lastKnownPrimaryIndex.subitem != v8;
  }

  self->_lastKnownPrimaryIndex.dataSourceIdentifier = v6;
  self->_lastKnownPrimaryIndex.section = v7;
  self->_lastKnownPrimaryIndex.item = v5;
  self->_lastKnownPrimaryIndex.subitem = v8;
  [(PXBaseMessagesStackView *)self primaryItemDidChange:self->_isProgramaticallyScrolling didChangeIndex:v10];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (DataSourceManagerObservationContext_59424 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXBaseMessagesStackView.m" lineNumber:444 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXBaseMessagesStackView *)self _updateDataSource];
    v9 = v11;
  }
}

- (void)_updateDataSource
{
  v3 = [(PXBaseMessagesStackView *)self currentDataSource];
  v4 = [(PXBaseMessagesStackView *)self dataSourceManager];
  v5 = [v4 dataSource];

  if (v3 != v5)
  {
    v6 = [(PXBaseMessagesStackView *)self dataSourceManager];
    v7 = [v6 allChangeDetailsFromDataSource:v3 toDataSource:v5];

    v8 = *&self->_lastKnownPrimaryIndex.item;
    v23 = *&self->_lastKnownPrimaryIndex.dataSourceIdentifier;
    v24 = v8;
    [off_1E77218B0 indexPathAfterApplyingChanges:v7 toIndexPath:&v23 hasIncrementalChanges:0 objectChanged:0];
    v9 = v26;
    *&self->_lastKnownPrimaryIndex.dataSourceIdentifier = v25;
    *&self->_lastKnownPrimaryIndex.item = v9;
    v10 = [v3 numberOfItemsInSection:0];
    indexToRestore = self->_indexToRestore;
    if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL)
    {
      indexToRestore = [(PXBaseMessagesStackView *)self currentIndex];
    }

    if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL || indexToRestore < v10)
    {
      if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v5 numberOfItemsInSection:0] <= 0)
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
        v18 = [v3 identifier];
        v25 = 0u;
        v26 = 0u;
        v23 = v18;
        *&v24 = indexToRestore;
        *(&v24 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        [off_1E77218B0 indexPathAfterApplyingChanges:v7 toIndexPath:&v23 hasIncrementalChanges:0 objectChanged:0];
        if (v25 == *off_1E7721F68)
        {
          v19 = [v5 numberOfItemsInSection:0];
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
      v13 = indexToRestore - v10 + [v5 numberOfItemsInSection:0];
    }

    self->_indexToRestore = v13;
    if (([v3 containsAnyItems] & 1) != 0 && objc_msgSend(v5, "containsAnyItems") && -[PXMessagesStackItemsLayout appearState](self->_layout, "appearState") == 1)
    {
      v14 = [(PXMessagesStackItemsLayout *)self->_layout createDefaultAnimationForCurrentContext];
      v15 = [off_1E7721810 sharedInstance];
      [v15 defaultAnimationDuration];
      [v14 setDuration:?];
    }

    layout = self->_layout;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__PXBaseMessagesStackView__updateDataSource__block_invoke;
    v20[3] = &unk_1E7733948;
    v20[4] = self;
    v21 = v3;
    v17 = v5;
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

- (void)setSettled:(BOOL)a3
{
  if (self->_settled != a3)
  {
    self->_settled = a3;
    [(PXBaseMessagesStackView *)self settledDidChange];
  }
}

- (void)setCurrentDataSource:(id)a3
{
  v5 = a3;
  if (self->_currentDataSource != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_currentDataSource, a3);
    [(PXBaseMessagesStackView *)self currentDataSourceDidChange];
    [(PXBaseMessagesStackView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)registerAllTextureProvidersWithMediaProvider:(id)a3
{
  v4 = a3;
  v6 = [(PXBaseMessagesStackView *)self tungstenView];
  [v6 registerAllTextureProvidersWithMediaProvider:v4];

  v5 = objc_alloc_init(off_1E77215C0);
  [v5 setOverlayViewSource:self];
  [v6 registerTextureProvider:v5 forMediaKind:8];
}

- (void)reloadAccessoryItems
{
  v2 = [(PXBaseMessagesStackView *)self layout];
  [v2 reloadAccessoryItems];
}

- (int64_t)numberOfAccessoryItems
{
  v2 = [(PXBaseMessagesStackView *)self layout];
  v3 = [v2 numberOfAccessoryItems];

  return v3;
}

- (void)setNumberOfAccessoryItems:(int64_t)a3
{
  v9 = [(PXBaseMessagesStackView *)self layout];
  if ([v9 numberOfAccessoryItems] != a3)
  {
    v5 = [v9 numberOfItems];
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = v5 + a3 - 1;
    if (v5 + a3 >= 1)
    {
      indexToRestore = self->_indexToRestore;
      if (indexToRestore == 0x7FFFFFFFFFFFFFFFLL)
      {
        indexToRestore = [v9 primaryItemIndex];
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
    [v9 setNumberOfAccessoryItems:a3];
    [(PXBaseMessagesStackView *)self reloadAccessoryItems];
  }
}

- (void)setHorizontalAlignment:(int64_t)a3
{
  if (self->_horizontalAlignment != a3)
  {
    self->_horizontalAlignment = a3;
    [(PXBaseMessagesStackView *)self setNeedsLayout];
  }
}

- (void)setSelectionOverlayEnabled:(BOOL)a3
{
  if (self->_selectionOverlayEnabled != a3)
  {
    self->_selectionOverlayEnabled = a3;
    v4 = [(PXBaseMessagesStackView *)self layout];
    [v4 invalidateDecorationAndSprites];
  }
}

- (double)horizontalContentMarginForSize:(CGSize)a3
{
  v4 = MEMORY[0x1A590D300](self, a2, 1.0, a3.width, a3.height);
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

- (void)setVerticalContentInsets:(double)a3
{
  if (self->_verticalContentInsets != a3)
  {
    self->_verticalContentInsets = a3;
    [(PXBaseMessagesStackView *)self setNeedsLayout];
  }
}

- (UIPanGestureRecognizer)panGestureRecognizer
{
  v2 = [(PXBaseMessagesStackView *)self tungstenView];
  v3 = [v2 scrollViewController];
  v4 = [v3 scrollView];

  v5 = [v4 panGestureRecognizer];

  return v5;
}

- (PXSectionedObjectReference)currentObjectReference
{
  v3 = [(PXBaseMessagesStackView *)self currentIndex];
  v4 = [(PXBaseMessagesStackView *)self currentDataSource];
  v5 = v4;
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || [v4 numberOfItemsInSection:0] <= v3)
  {
    v6 = 0;
  }

  else
  {
    v8[0] = [v5 identifier];
    v8[1] = 0;
    v8[2] = v3;
    v8[3] = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [v5 objectReferenceAtIndexPath:v8];
  }

  return v6;
}

- (unint64_t)currentIndex
{
  v2 = [(PXBaseMessagesStackView *)self layout];
  v3 = [v2 primaryItemIndex];

  return v3;
}

- (BOOL)scrollToObjectReference:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXBaseMessagesStackView *)self currentDataSource];
  v8 = [v7 objectReferenceForObjectReference:v6];

  if (v8)
  {
    v13 = 0.0;
    v9 = [(PXMessagesStackItemsLayout *)self->_layout getHorizontalOffsetForObjectReference:v8 outOffset:&v13];
    if (v9)
    {
      self->_isProgramaticallyScrolling = 1;
      v10 = [(PXGView *)self->_tungstenView scrollViewController];
      v11 = [v10 scrollView];

      [v11 px_scrollToContentOffset:v4 animated:{v13, 0.0}];
      if (!v4)
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

- (BOOL)scrollToIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(PXBaseMessagesStackView *)self currentDataSource];
  if ([v7 numberOfItemsInSection:0] <= a3)
  {
    v9 = 0;
  }

  else
  {
    v11[0] = [v7 identifier];
    v11[1] = 0;
    v11[2] = a3;
    v11[3] = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [v7 objectReferenceAtIndexPath:v11];
    v9 = [(PXBaseMessagesStackView *)self scrollToObjectReference:v8 animated:v4];
  }

  return v9;
}

- (void)setDebugColorModeEnabled:(BOOL)a3
{
  if (self->_debugColorModeEnabled != a3)
  {
    self->_debugColorModeEnabled = a3;
    if (a3)
    {
      v5 = [(PXBaseMessagesStackView *)self layout];
      v6 = 5;
      [v5 setMediaKind:5];
    }

    else
    {
      v7 = [objc_opt_class() itemMediaKind];
      v8 = [(PXBaseMessagesStackView *)self layout];
      [v8 setMediaKind:v7];

      v6 = [objc_opt_class() accessoryMediaKind];
    }

    v9 = [(PXBaseMessagesStackView *)self layout];
    [v9 setAccessoryMediaKind:v6];
  }
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PXBaseMessagesStackView;
  [(PXBaseMessagesStackView *)&v25 layoutSubviews];
  v3 = [(PXBaseMessagesStackView *)self bounds];
  v6 = MEMORY[0x1A590D300](v3, 1.0, v4, v5);
  v8 = v7;
  [(NSShadow *)self->_centerItemShadow shadowOffset];
  v10 = v9;
  [(NSShadow *)self->_centerItemShadow shadowBlurRadius];
  v12 = v11;
  v13 = [(PXBaseMessagesStackView *)self horizontalAlignment];
  if (!v13 || v13 == 2)
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

- (void)setDataSourceManager:(id)a3
{
  v5 = a3;
  dataSourceManager = self->_dataSourceManager;
  if (dataSourceManager != v5)
  {
    v8 = v5;
    [(PXSectionedDataSourceManager *)dataSourceManager unregisterChangeObserver:self context:DataSourceManagerObservationContext_59424];
    objc_storeStrong(&self->_dataSourceManager, a3);
    [(PXSectionedDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:DataSourceManagerObservationContext_59424];
    [(PXBaseMessagesStackView *)self _updateDataSource];
    v7 = *(off_1E7722228 + 1);
    *&self->_lastKnownPrimaryIndex.dataSourceIdentifier = *off_1E7722228;
    *&self->_lastKnownPrimaryIndex.item = v7;
    [(PXBaseMessagesStackView *)self dataSourceManagerDidChange];
    v5 = v8;
  }
}

- (PXBaseMessagesStackView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXBaseMessagesStackView.m" lineNumber:116 description:{@"%s is not available as initializer", "-[PXBaseMessagesStackView initWithCoder:]"}];

  abort();
}

- (PXBaseMessagesStackView)initWithFrame:(CGRect)a3
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
    v9 = [v8 renderWithCA];
    v10 = &unk_1F1910198;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [[off_1E7721708 alloc] initWithFrame:v11 allowedPresentationTypes:{v3, v4, v5, v6}];

    tungstenView = v7->_tungstenView;
    v7->_tungstenView = v12;

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(PXGView *)v7->_tungstenView setBackgroundColor:v14];

    v15 = [(PXGView *)v7->_tungstenView scrollViewController];
    v16 = [v15 scrollView];

    [v16 setAlwaysBounceVertical:0];
    [v16 setShowsHorizontalScrollIndicator:0];
    [v16 setShowsVerticalScrollIndicator:0];
    [v16 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
    [v16 setClipsToBounds:0];
    v17 = [(PXGView *)v7->_tungstenView scrollViewController];
    [v17 registerObserver:v7];

    v18 = objc_alloc_init(PXMessagesStackItemsLayout);
    [(PXMessagesStackItemsLayout *)v18 setPresentationType:0];
    if ([(PXBaseMessagesStackView *)v7 debugColorModeEnabled])
    {
      v19 = 5;
    }

    else
    {
      v19 = [objc_opt_class() itemMediaKind];
    }

    [(PXMessagesStackItemsLayout *)v18 setMediaKind:v19];
    [(PXMessagesStackItemsLayout *)v18 setContentSource:v7];
    [(PXMessagesStackItemsLayout *)v18 setAccessoryPresentationType:1];
    if ([(PXBaseMessagesStackView *)v7 debugColorModeEnabled])
    {
      v20 = 5;
    }

    else
    {
      v20 = [objc_opt_class() accessoryMediaKind];
    }

    [(PXMessagesStackItemsLayout *)v18 setAccessoryMediaKind:v20];
    [(PXGItemsLayout *)v18 setAccessoryItemContentSource:v7];
    [(PXMessagesStackItemsLayout *)v18 setPrimaryItemDelegate:v7];
    -[PXMessagesStackItemsLayout setStackedItemsCount:](v18, "setStackedItemsCount:", [v8 stackedItemsCount]);
    v21 = [v8 renderWithCA];
    [v8 normalizedPageWidth];
    if (!v21)
    {
      v22 = v22 * 0.5;
    }

    [(PXMessagesStackItemsLayout *)v18 setNormalizedPageWidth:v22];
    [v8 normalizedStackSizeTransform];
    [(PXMessagesStackItemsLayout *)v18 setNormalizedStackSizeTransform:?];
    v23 = [v8 horizontalOffsets];
    [(PXMessagesStackItemsLayout *)v18 setNormalizedStackHorizontalOffsets:v23];

    [v8 rotationAngle];
    PXDegreesToRadians();
  }

  return 0;
}

@end