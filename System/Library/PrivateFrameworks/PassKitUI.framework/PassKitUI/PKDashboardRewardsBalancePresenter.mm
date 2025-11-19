@interface PKDashboardRewardsBalancePresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
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

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = [a4 dequeueReusableCellWithReuseIdentifier:@"paymentRewardsBalanceCellReuseIdentifier" forIndexPath:a5];
  [v8 configureWithRewardsBalanceItem:v7];

  return v8;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v8 = a6;
  v11 = [PKDashboardRewardsBalanceDetailsViewHosting makeViewControllerWithRewardsBalanceItem:a3];
  v9 = [v8 navigationBar];
  [v9 setPrefersLargeTitles:1];

  v10 = [v11 navigationItem];
  [v10 setLargeTitleDisplayMode:1];

  [v8 pushViewController:v11 animated:1];
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v8 = a3;
  sampleCell = self->_sampleCell;
  if (!sampleCell)
  {
    v10 = [_TtC9PassKitUI29PKDashboardRewardsBalanceCell alloc];
    v11 = [(PKDashboardRewardsBalanceCell *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v12 = self->_sampleCell;
    self->_sampleCell = v11;

    sampleCell = self->_sampleCell;
  }

  [(PKDashboardRewardsBalanceCell *)sampleCell configureWithRewardsBalanceItem:v8];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v14 = a5 + v13 * -2.0;
  [(PKDashboardRewardsBalanceCell *)self->_sampleCell sizeThatFits:v14, 1.79769313e308];
  v16 = v15;
  [(PKDashboardCollectionViewCell *)self->_sampleCell prepareForReuse];

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      v7 = a4;
      v8 = [a3 preferredContentSizeCategory];
      v9 = [v7 preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(v8, v9);
      if (v10)
      {
        sampleCell = self->_sampleCell;
        self->_sampleCell = 0;
      }
    }
  }
}

@end