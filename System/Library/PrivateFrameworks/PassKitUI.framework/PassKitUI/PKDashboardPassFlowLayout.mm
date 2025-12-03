@interface PKDashboardPassFlowLayout
+ (double)topMarginInFirstSection;
- (BOOL)_indexPathIsPassGroupIndexPath:(id)path;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (PKDashboardPassFlowLayout)init;
- (id)_modifiedLayoutAttributes:(id)attributes;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (void)_adjustItems:(id)items withLateralMove:(double)move;
- (void)hideContent;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)revealContentAnimated:(BOOL)animated;
@end

@implementation PKDashboardPassFlowLayout

+ (double)topMarginInFirstSection
{
  v2 = PKUIGetMinScreenWidthType();
  result = 12.0;
  if (!v2)
  {
    return 8.0;
  }

  return result;
}

- (PKDashboardPassFlowLayout)init
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3042000000;
  v11 = __Block_byref_object_copy__37;
  v12 = __Block_byref_object_dispose__37;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PKDashboardPassFlowLayout_init__block_invoke;
  v7[3] = &unk_1E80139C0;
  v7[4] = &v8;
  v6.receiver = self;
  v6.super_class = PKDashboardPassFlowLayout;
  v2 = [(PKDashboardPassFlowLayout *)&v6 initWithSectionProvider:v7];
  if (v2)
  {
    objc_storeWeak(v9 + 5, v2);
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    v2->_horizontalInset = v3;
    [objc_opt_class() topMarginInFirstSection];
    v2->_topMarginInFirstSection = v4;
  }

  _Block_object_dispose(&v8, 8);
  objc_destroyWeak(&v13);
  return v2;
}

id __33__PKDashboardPassFlowLayout_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  v7 = [WeakRetained layoutSectionAtIndex:a2 layoutEnvironment:v5];

  return v7;
}

- (void)invalidateLayoutWithContext:(id)context
{
  v9.receiver = self;
  v9.super_class = PKDashboardPassFlowLayout;
  contextCopy = context;
  [(PKDashboardPassFlowLayout *)&v9 invalidateLayoutWithContext:contextCopy];
  invalidatedItemIndexPaths = [contextCopy invalidatedItemIndexPaths];

  if ([invalidatedItemIndexPaths count] == 1)
  {
    firstObject = [invalidatedItemIndexPaths firstObject];
    _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
    v8 = PKEqualObjects();

    if (v8)
    {
      self->_preventLayoutComputation = 1;
    }
  }
}

- (void)prepareLayout
{
  if (self->_preventLayoutComputation)
  {
    self->_preventLayoutComputation = 0;
  }

  else
  {
    collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
    delegate = [collectionView delegate];
    v5 = delegate;
    if (collectionView)
    {
      if (delegate)
      {
        _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
        [v5 collectionView:collectionView layout:self sizeForItemAtIndexPath:_indexPathForPassGroup];
        self->_passCellSize.width = v7;
        self->_passCellSize.height = v8;

        v9.receiver = self;
        v9.super_class = PKDashboardPassFlowLayout;
        [(PKDashboardPassFlowLayout *)&v9 prepareLayout];
      }
    }
  }
}

- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  v89 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
  delegate = [collectionView delegate];
  [collectionView frame];
  v8 = v7;
  v9 = objc_opt_respondsToSelector();
  v10 = objc_opt_respondsToSelector();
  v11 = objc_opt_respondsToSelector();
  v68 = objc_opt_respondsToSelector();
  v12 = objc_opt_respondsToSelector();
  v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dataSource = [collectionView dataSource];
  v14 = [dataSource collectionView:collectionView numberOfItemsInSection:index];

  if (v14 < 1)
  {
    v64 = 0;
    goto LABEL_63;
  }

  _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
  section = [_indexPathForPassGroup section];
  topMarginInFirstSection = 0.0;
  if (section == index)
  {
    topMarginInFirstSection = self->_topMarginInFirstSection;
  }

  v69 = topMarginInFirstSection;

  if ((v10 & 1) != 0 && [delegate collectionView:collectionView layout:self isListSectionAtIndex:index])
  {
    v18 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v18 setBackgroundColor:clearColor];

    if (v11)
    {
      v20 = [delegate collectionView:collectionView layout:self hasHeaderForSectionAtIndex:index];
    }

    else
    {
      v20 = 0;
    }

    if (v68)
    {
      v65 = [delegate collectionView:collectionView layout:self hasFooterForSectionAtIndex:index];
      if (!v20)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v65 = 0;
      if (!v20)
      {
LABEL_54:
        if (v65)
        {
          [v18 setFooterMode:1];
        }

        objc_initWeak(&location, self);
        if (v12)
        {
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke;
          v85[3] = &unk_1E8013B50;
          objc_copyWeak(&v86, &location);
          [v18 setTrailingSwipeActionsConfigurationProvider:v85];
          objc_destroyWeak(&v86);
        }

        if (objc_opt_respondsToSelector())
        {
          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 3221225472;
          v80[2] = __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2;
          v80[3] = &unk_1E801C9C8;
          objc_copyWeak(&v81, &location);
          v82 = xmmword_1BE0D82B0;
          v83 = xmmword_1BE0D82B0;
          v84 = 2;
          [v18 setItemSeparatorHandler:v80];
          objc_destroyWeak(&v81);
        }

        else
        {
          v66 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:2];
          [v66 setTopSeparatorInsets:{0.0, 16.0, 0.0, 16.0}];
          [v66 setBottomSeparatorInsets:{0.0, 16.0, 0.0, 16.0}];
          [v18 setSeparatorConfiguration:v66];
        }

        v64 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v18 layoutEnvironment:environmentCopy];
        [v64 setContentInsets:{v69, self->_horizontalInset, 20.0, self->_horizontalInset}];
        objc_destroyWeak(&location);
        goto LABEL_62;
      }
    }

    [v18 setHeaderMode:1];
    goto LABEL_54;
  }

  [collectionView safeAreaInsets];
  v21 = 0;
  v22 = 0;
  v25 = v8 - v23 - v24;
  v26 = *(MEMORY[0x1E695F060] + 8);
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  do
  {
    v31 = [MEMORY[0x1E696AC88] indexPathForRow:v22 inSection:index];
    [delegate collectionView:collectionView layout:self sizeForItemAtIndexPath:v31];
    v33 = v32;
    v35 = v34;
    if (v9)
    {
      v36 = [delegate itemIsStackableInCollectionView:collectionView atIndexPath:v31];
      v37 = [delegate itemIsIndependentInCollectionView:collectionView atIndexPath:v31];
      if (v36)
      {
        v38 = 0;
        if (v21)
        {
          v29 = v29 + 8.0;
        }

        else
        {
          v29 = 0.0;
        }

        v21 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v37 = [delegate itemIsIndependentInCollectionView:collectionView atIndexPath:v31];
    }

    v39 = v28 + v30;
    if (v21)
    {
      v29 = 0.0;
    }

    else
    {
      v39 = v28;
    }

    if (v25 - v28 >= v33)
    {
      if (v39 == 0.0)
      {
        v28 = v39;
      }

      else
      {
        v28 = v39 + 8.0;
      }

      v38 = 1;
      v21 = 0;
    }

    else
    {
      v28 = 0.0;
      v40 = v26 + 0.0;
      if (v29 > 0.0)
      {
        v40 = v29;
      }

      v41 = v27 + v40;
      if (v37)
      {
        v27 = v41 + 8.0;
      }

      else
      {
        v27 = v41;
      }

      PKFloatRoundToPixel();
      [(PKDashboardPassFlowLayout *)self _adjustItems:v73 withLateralMove:?];
      [v73 removeAllObjects];
      v21 = 0;
      v38 = 1;
    }

LABEL_30:
    v42 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v31];
    [v42 setSize:{v33, v35}];
    [v42 setFrame:{v28, v27 + v29, v33, v35}];
    [v42 setZIndex:{-[PKDashboardPassFlowLayout _indexPathIsPassGroupIndexPath:](self, "_indexPathIsPassGroupIndexPath:", v31)}];
    [v71 addObject:v42];
    [v73 addObject:v42];
    if (v38)
    {
      v28 = v33 + v28;
    }

    else
    {
      v29 = v35 + v29;
      v30 = v33;
    }

    ++v22;
    v26 = v35;
  }

  while (v14 != v22);
  if ([v73 count])
  {
    PKFloatRoundToPixel();
    v44 = v43;
    v45 = [v73 copy];
    [(PKDashboardPassFlowLayout *)self _adjustItems:v45 withLateralMove:v44];

    [v73 removeAllObjects];
  }

  if (v29 <= 0.0)
  {
    v46 = v35;
  }

  else
  {
    v46 = v29;
  }

  v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v71, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v48 = v71;
  v49 = [v48 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v49)
  {
    v50 = *v77;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v77 != v50)
        {
          objc_enumerationMutation(v48);
        }

        v52 = *(*(&v76 + 1) + 8 * i);
        v53 = MEMORY[0x1E6995570];
        [v52 frame];
        v58 = [v53 customItemWithFrame:objc_msgSend(v52 zIndex:{"zIndex"), v54, v55, v56, v57}];
        [v47 addObject:v58];
      }

      v49 = [v48 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v49);
  }

  v18 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v59 = [MEMORY[0x1E6995558] absoluteDimension:v27 + v46];
  v60 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v18 heightDimension:v59];
  v61 = MEMORY[0x1E6995568];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_3;
  v74[3] = &unk_1E801C9F0;
  v75 = v47;
  v62 = v47;
  v63 = [v61 customGroupWithLayoutSize:v60 itemProvider:v74];
  v64 = [MEMORY[0x1E6995580] sectionWithGroup:v63];
  [v64 setContentInsets:{v69, 0.0, 20.0, 0.0}];

LABEL_62:
LABEL_63:

  return v64;
}

id __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained collectionView];
  v6 = [v5 delegate];

  v7 = [WeakRetained collectionView];
  v8 = [v6 collectionView:v7 layout:WeakRetained trailingSwipeActionsConfigurationForItemAtIndexPath:v3];

  return v8;
}

id __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2(uint64_t a1, void *a2)
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

- (void)_adjustItems:(id)items withLateralMove:(double)move
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 frame];
        [v10 setFrame:v11 + move];
      }

      v7 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  y = change.origin.y;
  v5 = [(PKDashboardPassFlowLayout *)self collectionView:change.origin.x];
  v6 = v5;
  p_userIsHoldingCardInCurrentDrag = &self->_userIsHoldingCardInCurrentDrag;
  if (self->_userIsHoldingCardInCurrentDrag)
  {
    v8 = 1;
  }

  else
  {
    if (([v5 isDragging] & 1) == 0)
    {
      LOBYTE(v8) = 0;
      p_userIsActivelyDragging = &self->_userIsActivelyDragging;
      goto LABEL_9;
    }

    v8 = [v6 isDecelerating] ^ 1;
  }

  p_userIsActivelyDragging = &self->_userIsActivelyDragging;
  if (!self->_userIsActivelyDragging && v8)
  {
    self->_currentDraggingWentBelowThreshold = 0;
    self->_userWasHoldingCard = *p_userIsHoldingCardInCurrentDrag;
  }

LABEL_9:
  *p_userIsActivelyDragging = v8;
  [v6 adjustedContentInset];
  v11 = -v10;
  if (!*p_userIsActivelyDragging && y < v11 && !self->_currentDraggingWentBelowThreshold)
  {
    self->_bouncing = 1;
  }

  if (y >= v11)
  {
    v12 = 0;
    self->_bouncing = 0;
    goto LABEL_21;
  }

  if (self->_bouncing)
  {
    goto LABEL_16;
  }

  if (!*p_userIsActivelyDragging)
  {
    if (!self->_currentDraggingWentBelowThreshold)
    {
LABEL_16:
      v12 = 0;
      goto LABEL_21;
    }

    p_userIsHoldingCardInCurrentDrag = &self->_userWasHoldingCard;
  }

  v13 = *p_userIsHoldingCardInCurrentDrag;
  self->_currentDraggingWentBelowThreshold = 1;
  v12 = !v13;
LABEL_21:
  needsCustomLocation = self->_needsCustomLocation;
  v15 = v12;
  if (needsCustomLocation != v15)
  {
    self->_needsCustomLocation = v15;
    LOBYTE(needsCustomLocation) = 1;
  }

  return needsCustomLocation;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDashboardPassFlowLayout;
  v4 = [(PKDashboardPassFlowLayout *)&v8 invalidationContextForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  if (self->_needsCustomLocation)
  {
    _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
    v9[0] = _indexPathForPassGroup;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v4 invalidateItemsAtIndexPaths:v6];
  }

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = PKDashboardPassFlowLayout;
  v4 = [(PKDashboardPassFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:path];
  v5 = [(PKDashboardPassFlowLayout *)self _modifiedLayoutAttributes:v4];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v10.receiver = self;
  v10.super_class = PKDashboardPassFlowLayout;
  v4 = [(PKDashboardPassFlowLayout *)&v10 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = [(PKDashboardPassFlowLayout *)self _modifiedLayoutAttributes:v7];

      [v5 setObject:v8 atIndexedSubscript:v6];
      ++v6;
    }

    while (v6 < [v5 count]);
  }

  return v5;
}

- (CGSize)collectionViewContentSize
{
  v13.receiver = self;
  v13.super_class = PKDashboardPassFlowLayout;
  [(PKDashboardPassFlowLayout *)&v13 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  if (!self->_cellsPresented)
  {
    collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
    [collectionView bounds];
    v9 = v8 - self->_passCellSize.height;
    [collectionView safeAreaInsets];
    v6 = v6 - (v9 - v10 + -20.0);
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)revealContentAnimated:(BOOL)animated
{
  if (!self->_cellsPresented)
  {
    self->_hideCellsDuringDismissal = 0;
    self->_cellsPresented = 1;
  }
}

- (void)hideContent
{
  if (!self->_hideCellsDuringDismissal)
  {
    self->_cellsPresented = 0;
    self->_hideCellsDuringDismissal = 1;
  }
}

- (BOOL)_indexPathIsPassGroupIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v4 = 0;
  }

  else
  {
    v4 = [pathCopy row] == 0;
  }

  return v4;
}

- (id)_modifiedLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
  v6 = [attributesCopy copy];

  [v6 frame];
  v8 = v7;
  topMarginInFirstSection = v9;
  v12 = v11;
  v14 = v13;
  [v6 alpha];
  v16 = v15;
  indexPath = [v6 indexPath];
  if ([(PKDashboardPassFlowLayout *)self _indexPathIsPassGroupIndexPath:indexPath])
  {
    representedElementCategory = [v6 representedElementCategory];

    if (!representedElementCategory)
    {
      topMarginInFirstSection = self->_topMarginInFirstSection;
      if (!self->_needsCustomLocation)
      {
        goto LABEL_13;
      }

      [collectionView contentOffset];
      v20 = v19;
      [collectionView adjustedContentInset];
      v22 = v20 + v21;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (self->_hideCellsDuringDismissal && !self->_fade)
  {
    [collectionView bounds];
    v24 = v23;
    [collectionView safeAreaInsets];
    v22 = v24 - v25 - self->_topMarginInFirstSection - self->_passCellSize.height;
LABEL_12:
    topMarginInFirstSection = topMarginInFirstSection + v22;
    goto LABEL_13;
  }

  if (!self->_cellsPresented)
  {
    v16 = 0.0;
  }

LABEL_13:
  [v6 setFrame:{v8, topMarginInFirstSection, v12, v14}];
  [v6 setAlpha:v16];

  return v6;
}

@end