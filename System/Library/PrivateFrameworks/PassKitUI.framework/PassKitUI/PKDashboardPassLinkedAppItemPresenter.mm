@interface PKDashboardPassLinkedAppItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPassLinkedAppItemPresenterDelegate)delegate;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path animated:(BOOL)animated;
- (void)appViewContentSizeChanged:(id)changed;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PassLinkedAppItem" forIndexPath:pathCopy];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  [v11 setHostedContentInset:{0.0, v12, 0.0, v12}];
  [(PKDashboardPassLinkedAppItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy animated:0];

  return v11;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v19[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [(PKDashboardPassLinkedAppItemPresenter *)self _configureCell:cell forItem:item inCollectionView:viewCopy forIndexPath:pathCopy animated:1];
  v12 = objc_alloc_init(MEMORY[0x1E69DC860]);
  v19[0] = pathCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v12 invalidateItemsAtIndexPaths:v13];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKDashboardPassLinkedAppItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke;
  v16[3] = &unk_1E8010A10;
  v17 = viewCopy;
  v18 = v12;
  v14 = v12;
  v15 = viewCopy;
  [v15 performBatchUpdates:v16 completion:0];
}

void __89__PKDashboardPassLinkedAppItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewLayout];
  [v2 invalidateLayoutWithContext:*(a1 + 40)];
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
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

  [(PKDashboardPassLinkedAppItemPresenter *)self _configureCell:sampleCell forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy animated:0];
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell sizeThatFits:width, 1.79769313e308];
  v19 = v18;
  v21 = v20;
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell prepareForReuse];

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path animated:(BOOL)animated
{
  cellCopy = cell;
  linkedApplication = [item linkedApplication];
  hostedContentView = [cellCopy hostedContentView];
  v11 = hostedContentView;
  if (!hostedContentView || ([(PKLinkedAppContentView *)hostedContentView linkedApplication], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != linkedApplication))
  {
    v13 = [[PKLinkedAppContentView alloc] initWithLinkedApplication:linkedApplication];

    [(PKLinkedAppContentView *)v13 setDelegate:self];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(PKLinkedAppContentView *)v13 setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(UIView *)v13 pkui_setMaskType:3];
    [cellCopy setHostedContentView:v13];
    v11 = v13;
  }
}

- (void)appViewContentSizeChanged:(id)changed
{
  superview = [changed superview];
  v4Superview = [superview superview];

  if (self->_sampleCell != v4Superview)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dashboardPassLinkedAppItemPresenter:self reloadItemForCollectionViewCell:v4Superview];
  }
}

- (PKDashboardPassLinkedAppItemPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end