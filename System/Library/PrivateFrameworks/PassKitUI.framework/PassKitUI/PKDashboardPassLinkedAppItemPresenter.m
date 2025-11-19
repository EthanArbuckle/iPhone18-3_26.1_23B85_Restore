@interface PKDashboardPassLinkedAppItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardPassLinkedAppItemPresenterDelegate)delegate;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 animated:(BOOL)a7;
- (void)appViewContentSizeChanged:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKDashboardPassLinkedAppItemPresenter

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PassLinkedAppItem";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"PassLinkedAppItem" forIndexPath:v8];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  [v11 setHostedContentInset:{0.0, v12, 0.0, v12}];
  [(PKDashboardPassLinkedAppItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8 animated:0];

  return v11;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  [(PKDashboardPassLinkedAppItemPresenter *)self _configureCell:a3 forItem:a4 inCollectionView:v10 forIndexPath:v11 animated:1];
  v12 = objc_alloc_init(MEMORY[0x1E69DC860]);
  v19[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v12 invalidateItemsAtIndexPaths:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKDashboardPassLinkedAppItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke;
  v16[3] = &unk_1E8010A10;
  v17 = v10;
  v18 = v12;
  v14 = v12;
  v15 = v10;
  [v15 performBatchUpdates:v16 completion:0];
}

void __89__PKDashboardPassLinkedAppItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke(uint64_t a1)
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

    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell setHostedContentInset:0.0, v17, 0.0, v17];
    sampleCell = self->_sampleCell;
  }

  [(PKDashboardPassLinkedAppItemPresenter *)self _configureCell:sampleCell forItem:v10 inCollectionView:v11 forIndexPath:v12 animated:0];
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell sizeThatFits:a5, 1.79769313e308];
  v19 = v18;
  v21 = v20;
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell prepareForReuse];

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 animated:(BOOL)a7
{
  v15 = a3;
  v9 = [a4 linkedApplication];
  v10 = [v15 hostedContentView];
  v11 = v10;
  if (!v10 || ([(PKLinkedAppContentView *)v10 linkedApplication], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v9))
  {
    v13 = [[PKLinkedAppContentView alloc] initWithLinkedApplication:v9];

    [(PKLinkedAppContentView *)v13 setDelegate:self];
    v14 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKLinkedAppContentView *)v13 setBackgroundColor:v14];

    [(UIView *)v13 pkui_setMaskType:3];
    [v15 setHostedContentView:v13];
    v11 = v13;
  }
}

- (void)appViewContentSizeChanged:(id)a3
{
  v4 = [a3 superview];
  v6 = [v4 superview];

  if (self->_sampleCell != v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dashboardPassLinkedAppItemPresenter:self reloadItemForCollectionViewCell:v6];
  }
}

- (PKDashboardPassLinkedAppItemPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end