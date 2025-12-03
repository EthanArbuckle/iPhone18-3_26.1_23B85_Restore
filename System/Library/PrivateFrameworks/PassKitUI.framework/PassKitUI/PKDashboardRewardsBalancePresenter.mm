@interface PKDashboardRewardsBalancePresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardRewardsBalancePresenter

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"paymentRewardsBalanceCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  v8 = [view dequeueReusableCellWithReuseIdentifier:@"paymentRewardsBalanceCellReuseIdentifier" forIndexPath:path];
  [v8 configureWithRewardsBalanceItem:itemCopy];

  return v8;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  controllerCopy = controller;
  v11 = [PKDashboardRewardsBalanceDetailsViewHosting makeViewControllerWithRewardsBalanceItem:item];
  navigationBar = [controllerCopy navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  navigationItem = [v11 navigationItem];
  [navigationItem setLargeTitleDisplayMode:1];

  [controllerCopy pushViewController:v11 animated:1];
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  sampleCell = self->_sampleCell;
  if (!sampleCell)
  {
    v10 = [_TtC9PassKitUI29PKDashboardRewardsBalanceCell alloc];
    v11 = [(PKDashboardRewardsBalanceCell *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v12 = self->_sampleCell;
    self->_sampleCell = v11;

    sampleCell = self->_sampleCell;
  }

  [(PKDashboardRewardsBalanceCell *)sampleCell configureWithRewardsBalanceItem:itemCopy];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v14 = width + v13 * -2.0;
  [(PKDashboardRewardsBalanceCell *)self->_sampleCell sizeThatFits:v14, 1.79769313e308];
  v16 = v15;
  [(PKDashboardCollectionViewCell *)self->_sampleCell prepareForReuse];

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  if (trait)
  {
    if (toTrait)
    {
      toTraitCopy = toTrait;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);
      if (v10)
      {
        sampleCell = self->_sampleCell;
        self->_sampleCell = 0;
      }
    }
  }
}

@end