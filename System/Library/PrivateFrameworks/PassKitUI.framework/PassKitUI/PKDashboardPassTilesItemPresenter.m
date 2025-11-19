@interface PKDashboardPassTilesItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardPassTilesItemPresenterDelegate)delegate;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)customViewProviderForPassTileGroupView:(id)a3;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 animated:(BOOL)a7;
- (void)passTileGroupView:(id)a3 displayTileContext:(int64_t)a4 tile:(id)a5 overrideMaximumRows:(BOOL)a6;
- (void)passTileGroupView:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKDashboardPassTilesItemPresenter

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PassTilesItem";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"PassTilesItem" forIndexPath:v8];
  [(PKDashboardPassTilesItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8 animated:0];

  return v11;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  [(PKDashboardPassTilesItemPresenter *)self _configureCell:a3 forItem:a4 inCollectionView:v10 forIndexPath:v11 animated:1];
  v12 = [v10 collectionViewLayout];
  v13 = [objc_opt_class() invalidationContextClass];

  v14 = objc_alloc_init(v13);
  v21[0] = v11;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v14 invalidateItemsAtIndexPaths:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PKDashboardPassTilesItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke;
  v18[3] = &unk_1E8010A10;
  v19 = v10;
  v20 = v14;
  v16 = v14;
  v17 = v10;
  [v17 performBatchUpdates:v18 completion:0];
}

void __85__PKDashboardPassTilesItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewLayout];
  [v2 invalidateLayoutWithContext:*(a1 + 40)];
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  sampleCell = self->_sampleCell;
  if (!sampleCell)
  {
    v14 = [PKDashboardContentHostCollectionViewCell alloc];
    v15 = [(PKDashboardContentHostCollectionViewCell *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v16 = self->_sampleCell;
    self->_sampleCell = v15;

    sampleCell = self->_sampleCell;
  }

  [(PKDashboardPassTilesItemPresenter *)self _configureCell:sampleCell forItem:v10 inCollectionView:v11 forIndexPath:v12 animated:0];
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell sizeThatFits:a5, 1.79769313e308];
  v18 = v17;
  v20 = v19;
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell prepareForReuse];

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 animated:(BOOL)a7
{
  v7 = a7;
  v10 = a3;
  v11 = a4;
  v12 = [v10 hostedContentView];
  v13 = v12;
  if (!v12)
  {
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    v15 = v14;
    v13 = objc_alloc_init(PKPassTileGroupView);
    [(PKPassTileGroupView *)v13 setDelegate:self];
    [(PKPassTileGroupView *)v13 setContentInset:0.0, v15, 0.0, v15];
    [v10 setHostedContentView:v13];
  }

  v16 = [v11 pass];
  v17 = [v11 groupTile];
  v18 = [v11 passState];
  v19 = [v11 maximumRowsOverride];

  v21[0] = 0;
  if (v12)
  {
    v20 = v7;
  }

  else
  {
    v20 = 0;
  }

  v22 = 0;
  v23 = v19;
  [(PKPassTileGroupView *)v13 setPass:v16 content:v17 passState:v18 context:v21 animated:v20];
}

- (void)passTileGroupView:(id)a3 executeSEActionForPass:(id)a4 tile:(id)a5 withCompletion:(id)a6
{
  v13 = a4;
  v9 = a5;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained passTilesItemPresenter:self executeSEActionForPass:v13 tile:v9 withCompletion:v10];
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)passTileGroupView:(id)a3 displayTileContext:(int64_t)a4 tile:(id)a5 overrideMaximumRows:(BOOL)a6
{
  v6 = a6;
  v13 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = [v13 pass];
    [WeakRetained passTilesItemPresenter:self displayTileContext:a4 forPass:v12 tile:v10 overrideMaximumRows:v6];
  }
}

- (id)customViewProviderForPassTileGroupView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained passTileCustomViewProvider];

  return v4;
}

- (PKDashboardPassTilesItemPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end