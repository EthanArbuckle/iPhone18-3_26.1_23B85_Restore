@interface PKDashboardPassTilesItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPassTilesItemPresenterDelegate)delegate;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)customViewProviderForPassTileGroupView:(id)view;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path animated:(BOOL)animated;
- (void)passTileGroupView:(id)view displayTileContext:(int64_t)context tile:(id)tile overrideMaximumRows:(BOOL)rows;
- (void)passTileGroupView:(id)view executeSEActionForPass:(id)pass tile:(id)tile withCompletion:(id)completion;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PassTilesItem" forIndexPath:pathCopy];
  [(PKDashboardPassTilesItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy animated:0];

  return v11;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v21[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  [(PKDashboardPassTilesItemPresenter *)self _configureCell:cell forItem:item inCollectionView:viewCopy forIndexPath:pathCopy animated:1];
  collectionViewLayout = [viewCopy collectionViewLayout];
  invalidationContextClass = [objc_opt_class() invalidationContextClass];

  v14 = objc_alloc_init(invalidationContextClass);
  v21[0] = pathCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [v14 invalidateItemsAtIndexPaths:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PKDashboardPassTilesItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke;
  v18[3] = &unk_1E8010A10;
  v19 = viewCopy;
  v20 = v14;
  v16 = v14;
  v17 = viewCopy;
  [v17 performBatchUpdates:v18 completion:0];
}

void __85__PKDashboardPassTilesItemPresenter_updateCell_forItem_inCollectionView_atIndexPath___block_invoke(uint64_t a1)
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

    sampleCell = self->_sampleCell;
  }

  [(PKDashboardPassTilesItemPresenter *)self _configureCell:sampleCell forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy animated:0];
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell sizeThatFits:width, 1.79769313e308];
  v18 = v17;
  v20 = v19;
  [(PKDashboardContentHostCollectionViewCell *)self->_sampleCell prepareForReuse];

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  hostedContentView = [cellCopy hostedContentView];
  v13 = hostedContentView;
  if (!hostedContentView)
  {
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    v15 = v14;
    v13 = objc_alloc_init(PKPassTileGroupView);
    [(PKPassTileGroupView *)v13 setDelegate:self];
    [(PKPassTileGroupView *)v13 setContentInset:0.0, v15, 0.0, v15];
    [cellCopy setHostedContentView:v13];
  }

  pass = [itemCopy pass];
  groupTile = [itemCopy groupTile];
  passState = [itemCopy passState];
  maximumRowsOverride = [itemCopy maximumRowsOverride];

  v21[0] = 0;
  if (hostedContentView)
  {
    v20 = animatedCopy;
  }

  else
  {
    v20 = 0;
  }

  v22 = 0;
  v23 = maximumRowsOverride;
  [(PKPassTileGroupView *)v13 setPass:pass content:groupTile passState:passState context:v21 animated:v20];
}

- (void)passTileGroupView:(id)view executeSEActionForPass:(id)pass tile:(id)tile withCompletion:(id)completion
{
  passCopy = pass;
  tileCopy = tile;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained passTilesItemPresenter:self executeSEActionForPass:passCopy tile:tileCopy withCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)passTileGroupView:(id)view displayTileContext:(int64_t)context tile:(id)tile overrideMaximumRows:(BOOL)rows
{
  rowsCopy = rows;
  viewCopy = view;
  tileCopy = tile;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    pass = [viewCopy pass];
    [WeakRetained passTilesItemPresenter:self displayTileContext:context forPass:pass tile:tileCopy overrideMaximumRows:rowsCopy];
  }
}

- (id)customViewProviderForPassTileGroupView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  passTileCustomViewProvider = [WeakRetained passTileCustomViewProvider];

  return passTileCustomViewProvider;
}

- (PKDashboardPassTilesItemPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end