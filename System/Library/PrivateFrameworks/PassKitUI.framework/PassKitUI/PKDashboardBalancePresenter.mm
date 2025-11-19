@interface PKDashboardBalancePresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardBalancePresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_updateBalanceView:(id)a3 withItem:(id)a4;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardBalancePresenter

- (PKDashboardBalancePresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardBalancePresenter;
  v2 = [(PKDashboardBalancePresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKDashboardBalanceView alloc];
    v4 = [(PKDashboardBalanceView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleBalanceView = v2->_sampleBalanceView;
    v2->_sampleBalanceView = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardBalancePresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKDashboardBalancePresenter *)self _identifierForItem:v8];
  v12 = [(UICollectionView *)v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v10];

  collectionView = self->_collectionView;
  self->_collectionView = v9;

  [(PKDashboardBalancePresenter *)self _updateBalanceView:v12 withItem:v8];

  return v12;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardBalancePresenter *)self _updateBalanceView:self->_sampleBalanceView withItem:a3, a6];
  sampleBalanceView = self->_sampleBalanceView;

  [(PKDashboardBalanceView *)sampleBalanceView sizeThatFits:a5, 3.40282347e38];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_updateBalanceView:(id)a3 withItem:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v5 title];
  if (v6)
  {
    [v14 setTitle:v6];
  }

  else
  {
    v7 = PKLocalizedPaymentString(&cfstr_DashboardModul.isa);
    [v14 setTitle:v7];
  }

  v8 = [v5 titleColor];
  [v14 setTitleColor:v8];

  v9 = [v5 balance];
  [v14 setBalance:v9];

  v10 = [v5 availableCredit];
  [v14 setAvailableCredit:v10];

  v11 = [v5 topUpTitle];
  [v14 setTopUpTitle:v11];

  v12 = [v5 topUpAction];
  [v14 setTopUpAction:v12];

  v13 = [v5 topUpEnabled];
  [v14 setTopUpEnabled:v13];
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
        v11 = [PKDashboardBalanceView alloc];
        v12 = [(PKDashboardBalanceView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleBalanceView = self->_sampleBalanceView;
        self->_sampleBalanceView = v12;
      }
    }
  }
}

@end