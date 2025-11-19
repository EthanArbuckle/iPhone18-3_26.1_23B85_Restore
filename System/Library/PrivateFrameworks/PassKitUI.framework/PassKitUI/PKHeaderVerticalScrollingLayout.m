@interface PKHeaderVerticalScrollingLayout
- (BOOL)_indexPathIsHeaderIndexPath:(id)a3;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (PKHeaderVerticalScrollingLayout)init;
- (id)_customAttributesForStickyHeader:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutSectionAtIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (void)_updateAdjustedHeaderHeight;
- (void)invalidateLayout;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setUseStickyHeader:(BOOL)a3;
@end

@implementation PKHeaderVerticalScrollingLayout

- (PKHeaderVerticalScrollingLayout)init
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3042000000;
  v13 = __Block_byref_object_copy__46;
  v14 = __Block_byref_object_dispose__46;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PKHeaderVerticalScrollingLayout_init__block_invoke;
  v9[3] = &unk_1E80139C0;
  v9[4] = &v10;
  v8.receiver = self;
  v8.super_class = PKHeaderVerticalScrollingLayout;
  v2 = [(PKHeaderVerticalScrollingLayout *)&v8 initWithSectionProvider:v9];
  v3 = v2;
  if (v2)
  {
    v2->_adjustedHeaderHeightDirty = 1;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    v3->_horizontalInset = v4;
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    headerIndexPath = v3->_headerIndexPath;
    v3->_headerIndexPath = v5;

    objc_storeWeak(v11 + 5, v3);
  }

  _Block_object_dispose(&v10, 8);
  objc_destroyWeak(&v15);
  return v3;
}

id __39__PKHeaderVerticalScrollingLayout_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  v7 = [WeakRetained layoutSectionAtIndex:a2 layoutEnvironment:v5];

  return v7;
}

- (void)invalidateLayout
{
  self->_adjustedHeaderHeightDirty = 1;
  v2.receiver = self;
  v2.super_class = PKHeaderVerticalScrollingLayout;
  [(PKHeaderVerticalScrollingLayout *)&v2 invalidateLayout];
}

- (void)invalidateLayoutWithContext:(id)a3
{
  self->_adjustedHeaderHeightDirty = 1;
  v3.receiver = self;
  v3.super_class = PKHeaderVerticalScrollingLayout;
  [(PKHeaderVerticalScrollingLayout *)&v3 invalidateLayoutWithContext:a3];
}

- (void)_updateAdjustedHeaderHeight
{
  if (self->_adjustedHeaderHeightDirty)
  {
    self->_adjustedHeaderHeightDirty = 0;
    if (self->_useStickyHeader)
    {
      v6 = [(PKHeaderVerticalScrollingLayout *)self collectionView];
      v3 = [v6 delegate];
      [v3 collectionView:v6 layout:self sizeForItemAtIndexPath:self->_headerIndexPath];
      self->_adjustedHeaderHeight = v4;
      [v6 adjustedContentInset];
      self->_adjustedHeaderHeight = self->_adjustedHeaderHeight - v5;
    }

    else
    {
      self->_adjustedHeaderHeight = 0.0;
    }
  }
}

- (void)prepareLayout
{
  [(PKHeaderVerticalScrollingLayout *)self _updateAdjustedHeaderHeight];
  v3.receiver = self;
  v3.super_class = PKHeaderVerticalScrollingLayout;
  [(PKHeaderVerticalScrollingLayout *)&v3 prepareLayout];
}

- (id)layoutSectionAtIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  [(PKHeaderVerticalScrollingLayout *)self _updateAdjustedHeaderHeight];
  v7 = [(PKHeaderVerticalScrollingLayout *)self collectionView];
  v8 = [v7 delegate];
  v9 = [v7 dataSource];
  v10 = [v9 collectionView:v7 numberOfItemsInSection:a3];

  v11 = objc_opt_respondsToSelector();
  v12 = objc_opt_respondsToSelector();
  v13 = objc_opt_respondsToSelector();
  v39 = v8;
  v14 = objc_opt_respondsToSelector();
  if (v10 < 1)
  {
    v31 = 0;
    goto LABEL_36;
  }

  if ((v11 & 1) == 0 || (v15 = v14, ![v39 collectionView:v7 layout:self isListSectionAtIndex:a3]))
  {
    [v7 frame];
    [v7 safeAreaInsets];
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0;
    v21 = 0.0;
    do
    {
      v22 = [MEMORY[0x1E696AC88] indexPathForRow:v20 inSection:a3];
      [v39 collectionView:v7 layout:self sizeForItemAtIndexPath:v22];
      adjustedHeaderHeight = v23;
      if (self->_useStickyHeader && [(PKHeaderVerticalScrollingLayout *)self _indexPathIsHeaderIndexPath:v22])
      {
        adjustedHeaderHeight = self->_adjustedHeaderHeight;
      }

      PKFloatRoundToPixel();
      v25 = [MEMORY[0x1E6995570] customItemWithFrame:?];
      [v19 addObject:v25];

      v21 = v21 + adjustedHeaderHeight;
      ++v20;
    }

    while (v10 != v20);
    v26 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v27 = [MEMORY[0x1E6995558] absoluteDimension:v21];
    v28 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v26 heightDimension:v27];
    v29 = MEMORY[0x1E6995568];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_3;
    v40[3] = &unk_1E80139E8;
    v16 = v19;
    v41 = v16;
    v30 = [v29 customGroupWithLayoutSize:v28 itemProvider:v40];
    v31 = [MEMORY[0x1E6995580] sectionWithGroup:v30];
    v32 = [(NSIndexPath *)self->_headerIndexPath section];
    v33 = 20.0;
    if (v32 == a3)
    {
      titleInset = self->_titleInset;
      v33 = 0.0;
      if (titleInset <= 2)
      {
        v33 = dbl_1BE116368[titleInset];
      }
    }

    [v31 setContentInsets:{0.0, 0.0, v33, 0.0}];

    goto LABEL_35;
  }

  v16 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  if (v12)
  {
    v17 = [v39 collectionView:v7 layout:self hasHeaderForSectionAtIndex:a3];
    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if ((v13 & 1) == 0)
    {
LABEL_6:
      v18 = 0;
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v18 = [v39 collectionView:v7 layout:self hasFooterForSectionAtIndex:a3];
  if (v17)
  {
LABEL_20:
    [v16 setHeaderMode:1];
  }

LABEL_21:
  if (v18)
  {
    [v16 setFooterMode:1];
  }

  objc_initWeak(location, self);
  if (v15)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke;
    v48[3] = &unk_1E8013B50;
    objc_copyWeak(&v49, location);
    [v16 setTrailingSwipeActionsConfigurationProvider:v48];
    objc_destroyWeak(&v49);
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v35 = 16.0;
  }

  else
  {
    v35 = 0.0;
  }

  if (objc_opt_respondsToSelector())
  {
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2;
    v42[3] = &unk_1E801C9C8;
    objc_copyWeak(&v43, location);
    v44 = xmmword_1BE0D82B0;
    v45 = 0;
    v46 = v35;
    v47 = 2;
    [v16 setItemSeparatorHandler:v42];
    objc_destroyWeak(&v43);
  }

  else
  {
    v36 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:2];
    [v36 setTopSeparatorInsets:{0.0, 16.0, 0.0, v35}];
    [v36 setBottomSeparatorInsets:{0.0, 16.0, 0.0, v35}];
    [v16 setSeparatorConfiguration:v36];
  }

  v31 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v16 layoutEnvironment:v6];
  if (PKIsVision())
  {
    horizontalInset = 0.0;
    [v31 setContentInsetsReference:4];
  }

  else
  {
    [v31 setContentInsetsReference:2];
    horizontalInset = self->_horizontalInset;
  }

  [v31 setContentInsets:{0.0, horizontalInset, 20.0, horizontalInset}];
  objc_destroyWeak(location);
LABEL_35:

LABEL_36:

  return v31;
}

id __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained collectionView];
  v6 = [v5 delegate];

  v7 = [WeakRetained collectionView];
  v8 = [v6 collectionView:v7 layout:WeakRetained trailingSwipeActionsConfigurationForItemAtIndexPath:v3];

  return v8;
}

id __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained collectionView];
    v7 = [v6 delegate];

    v8 = [v5 collectionView];
    v9 = [v7 collectionView:v8 layout:v5 separatorInsetsForItemAtIndexPath:v3];

    if (v9)
    {
      [v9 directionalEdgeInsetsValue];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
    }

    else
    {
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = *(a1 + 56);
      v17 = *(a1 + 64);
    }

    v18 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:*(a1 + 72)];
    [v18 setTopSeparatorInsets:{v11, v13, v15, v17}];
    [v18 setBottomSeparatorInsets:{v11, v13, v15, v17}];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  y = a3.origin.y;
  v5 = [(PKHeaderVerticalScrollingLayout *)self collectionView:a3.origin.x];
  v6 = v5;
  headerItemNeedsBoundsChangeAdjustment = self->_headerItemNeedsBoundsChangeAdjustment;
  if (self->_useStickyHeader)
  {
    [v5 pkui_naturalRestingBounds];
    v9 = y < v8;
  }

  else
  {
    v9 = 0;
  }

  self->_headerItemNeedsBoundsChangeAdjustment = v9;
  v10 = v9 || headerItemNeedsBoundsChangeAdjustment;

  return v10;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKHeaderVerticalScrollingLayout;
  v4 = [(PKHeaderVerticalScrollingLayout *)&v7 invalidationContextForBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8[0] = self->_headerIndexPath;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 invalidateItemsAtIndexPaths:v5];

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v11.receiver = self;
  v11.super_class = PKHeaderVerticalScrollingLayout;
  v4 = [(PKHeaderVerticalScrollingLayout *)&v11 layoutAttributesForItemAtIndexPath:a3];
  v5 = v4;
  if (self->_useStickyHeader)
  {
    v6 = [v4 indexPath];
    if ([(PKHeaderVerticalScrollingLayout *)self _indexPathIsHeaderIndexPath:v6])
    {
      v7 = [v5 representedElementCategory];

      if (!v7)
      {
        v8 = [(PKHeaderVerticalScrollingLayout *)self _customAttributesForStickyHeader:v5];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = v5;
LABEL_7:
  v9 = v8;

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = PKHeaderVerticalScrollingLayout;
  v4 = [(PKHeaderVerticalScrollingLayout *)&v14 layoutAttributesForElementsInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (self->_useStickyHeader && (v13[0] = MEMORY[0x1E69E9820], v13[1] = 3221225472, v13[2] = __69__PKHeaderVerticalScrollingLayout_layoutAttributesForElementsInRect___block_invoke, v13[3] = &unk_1E801FD50, v13[4] = self, v6 = [v4 indexOfObjectPassingTest:v13], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    v9 = [v5 mutableCopy];
    v10 = [v5 objectAtIndexedSubscript:v8];
    v11 = [(PKHeaderVerticalScrollingLayout *)self _customAttributesForStickyHeader:v10];
    [v9 replaceObjectAtIndex:v8 withObject:v11];

    v7 = [v9 copy];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

BOOL __69__PKHeaderVerticalScrollingLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 indexPath];
  if ([v4 _indexPathIsHeaderIndexPath:v5])
  {
    v6 = [v3 representedElementCategory] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUseStickyHeader:(BOOL)a3
{
  if (self->_useStickyHeader == !a3)
  {
    self->_useStickyHeader = a3;
    [(PKHeaderVerticalScrollingLayout *)self invalidateLayout];
  }
}

- (id)_customAttributesForStickyHeader:(id)a3
{
  v4 = a3;
  v5 = [(PKHeaderVerticalScrollingLayout *)self collectionView];
  [v5 bounds];
  v7 = v6;
  [v5 adjustedContentInset];
  v9 = v8;
  v11 = v10;
  [v4 frame];
  if (v7 + v9 >= 0.0)
  {
    v12 = -v9;
  }

  else
  {
    v12 = v7;
  }

  [v4 setFrame:{-v11, v12}];

  return v4;
}

- (BOOL)_indexPathIsHeaderIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 == [(NSIndexPath *)self->_headerIndexPath section])
  {
    v6 = [v4 item];
    v7 = v6 == [(NSIndexPath *)self->_headerIndexPath item];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end