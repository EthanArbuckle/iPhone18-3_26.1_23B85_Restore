@interface PKTileContextCompositionalLayout
- (PKTileContextCompositionalLayout)init;
- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
@end

@implementation PKTileContextCompositionalLayout

- (PKTileContextCompositionalLayout)init
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3042000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PKTileContextCompositionalLayout_init__block_invoke;
  v5[3] = &unk_1E80139C0;
  v5[4] = &v6;
  v4.receiver = self;
  v4.super_class = PKTileContextCompositionalLayout;
  v2 = [(PKTileContextCompositionalLayout *)&v4 initWithSectionProvider:v5];
  if (v2)
  {
    objc_storeWeak(v7 + 5, v2);
  }

  _Block_object_dispose(&v6, 8);
  objc_destroyWeak(&v11);
  return v2;
}

id __40__PKTileContextCompositionalLayout_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  v7 = [WeakRetained layoutSectionAtIndex:a2 layoutEnvironment:v5];

  return v7;
}

- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  indexCopy = index;
  v6 = [(PKTileContextCompositionalLayout *)self collectionView:index];
  delegate = [v6 delegate];
  dataSource = [v6 dataSource];
  v9 = [dataSource collectionView:v6 numberOfItemsInSection:indexCopy];

  if (v9 < 1)
  {
    v30 = 0;
  }

  else
  {
    v10 = objc_opt_respondsToSelector();
    v11 = objc_opt_respondsToSelector();
    v12 = 12.0;
    v13 = 12.0;
    if (v10)
    {
      if ([delegate collectionView:v6 layout:self hasHeaderForSectionAtIndex:indexCopy])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 12.0;
      }
    }

    if (v11)
    {
      if ([delegate collectionView:v6 layout:self hasFooterForSectionAtIndex:indexCopy])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 12.0;
      }
    }

    [v6 frame];
    [v6 safeAreaInsets];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0;
    v16 = 0.0;
    do
    {
      v17 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:indexCopy];
      [delegate collectionView:v6 layout:self sizeForItemAtIndexPath:v17];
      v19 = v18;
      PKFloatRoundToPixel();
      [MEMORY[0x1E6995570] customItemWithFrame:?];
      v20 = indexCopy;
      v21 = v6;
      v23 = v22 = delegate;
      [v14 addObject:v23];

      delegate = v22;
      v6 = v21;
      indexCopy = v20;
      v16 = v16 + v19;

      ++v15;
    }

    while (v9 != v15);
    v24 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v25 = [MEMORY[0x1E6995558] absoluteDimension:v16];
    v26 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v24 heightDimension:v25];
    v27 = MEMORY[0x1E6995568];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __75__PKTileContextCompositionalLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke;
    v32[3] = &unk_1E80139E8;
    v33 = v14;
    v28 = v14;
    v29 = [v27 customGroupWithLayoutSize:v26 itemProvider:v32];
    v30 = [MEMORY[0x1E6995580] sectionWithGroup:v29];
    [v30 setContentInsets:{v13, 0.0, v12, 0.0}];
  }

  return v30;
}

@end