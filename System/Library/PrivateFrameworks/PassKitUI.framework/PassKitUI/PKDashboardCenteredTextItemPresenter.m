@interface PKDashboardCenteredTextItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
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

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"CenteredTextCellReuseIdentifier" forIndexPath:v8];
  [(PKDashboardCenteredTextItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v7 = MEMORY[0x1E69DCC28];
  v8 = a4;
  v9 = a3;
  v13 = [v7 cellConfiguration];
  v10 = [v8 title];

  [v13 setText:v10];
  v11 = [v13 textProperties];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v11 setColor:v12];

  [v11 setAlignment:1];
  [v13 directionalLayoutMargins];
  [v13 setDirectionalLayoutMargins:26.0];
  [v9 setContentConfiguration:v13];
}

@end