@interface PKDashboardAuxiliaryPassInformationPresenter
- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardAuxiliaryPassInformationPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardAuxiliaryPassInformationPresenter

- (PKDashboardAuxiliaryPassInformationPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardAuxiliaryPassInformationPresenter;
  v2 = [(PKDashboardAuxiliaryPassInformationPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKPassInformationDashboardCollectionViewCell alloc];
    v4 = [(PKPassInformationDashboardCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"AuxiliaryPassInformationItemCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v15 = a3;
  v7 = a4;
  if (v15 && v7)
  {
    v8 = [v15 preferredContentSizeCategory];
    v9 = [v7 preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(v8, v9))
    {
    }

    else
    {
      v10 = [v15 legibilityWeight];
      v11 = [v7 legibilityWeight];

      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    v12 = [PKPassInformationDashboardCollectionViewCell alloc];
    v13 = [(PKPassInformationDashboardCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = self->_sampleCell;
    self->_sampleCell = v13;
  }

LABEL_7:
}

- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a3 item];
  v6 = [v5 mapsURL];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 sections];
    v7 = v8 != 0;
  }

  return v7;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v8 = a6;
  v9 = a3;
  v10 = [PKDashboardAuxiliaryPassInformationViewController alloc];
  v11 = [v9 item];
  v12 = [v9 pass];

  v13 = [(PKDashboardAuxiliaryPassInformationViewController *)v10 initWithItem:v11 forPass:v12];
  [v8 pushViewController:v13 animated:1];
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"AuxiliaryPassInformationItemCellReuseIdentifier" forIndexPath:v8];
  [(PKDashboardAuxiliaryPassInformationPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardAuxiliaryPassInformationPresenter *)self _configureCell:self->_sampleCell forItem:a3 inCollectionView:a4 forIndexPath:a6];
  sampleCell = self->_sampleCell;

  [(PKPassInformationDashboardCollectionViewCell *)sampleCell sizeThatFits:a5, 1.79769313e308];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v13 = a3;
  v7 = [a4 item];
  v8 = [v7 title];
  [v13 setTitle:v8];

  v9 = [v7 subtitle];
  [v13 setSecondaryText:v9];

  v10 = [v7 subtitle2];
  [v13 setTertiaryText:v10];

  v11 = [v7 mapsURL];
  if (v11)
  {
    [v13 setShowsDisclosureView:1];
  }

  else
  {
    v12 = [v7 sections];
    [v13 setShowsDisclosureView:v12 != 0];
  }
}

@end