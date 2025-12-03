@interface PKDashboardCenteredTextItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
@end

@implementation PKDashboardCenteredTextItemPresenter

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"CenteredTextCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CenteredTextCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardCenteredTextItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  v7 = MEMORY[0x1E69DCC28];
  itemCopy = item;
  cellCopy = cell;
  cellConfiguration = [v7 cellConfiguration];
  title = [itemCopy title];

  [cellConfiguration setText:title];
  textProperties = [cellConfiguration textProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [textProperties setColor:secondaryLabelColor];

  [textProperties setAlignment:1];
  [cellConfiguration directionalLayoutMargins];
  [cellConfiguration setDirectionalLayoutMargins:26.0];
  [cellCopy setContentConfiguration:cellConfiguration];
}

@end