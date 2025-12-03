@interface PKDashboardBalancePresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardBalancePresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_updateBalanceView:(id)view withItem:(id)item;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v11 = [(PKDashboardBalancePresenter *)self _identifierForItem:itemCopy];
  v12 = [(UICollectionView *)viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  collectionView = self->_collectionView;
  self->_collectionView = viewCopy;

  [(PKDashboardBalancePresenter *)self _updateBalanceView:v12 withItem:itemCopy];

  return v12;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardBalancePresenter *)self _updateBalanceView:self->_sampleBalanceView withItem:item, path];
  sampleBalanceView = self->_sampleBalanceView;

  [(PKDashboardBalanceView *)sampleBalanceView sizeThatFits:width, 3.40282347e38];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_updateBalanceView:(id)view withItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  title = [itemCopy title];
  if (title)
  {
    [viewCopy setTitle:title];
  }

  else
  {
    v7 = PKLocalizedPaymentString(&cfstr_DashboardModul.isa);
    [viewCopy setTitle:v7];
  }

  titleColor = [itemCopy titleColor];
  [viewCopy setTitleColor:titleColor];

  balance = [itemCopy balance];
  [viewCopy setBalance:balance];

  availableCredit = [itemCopy availableCredit];
  [viewCopy setAvailableCredit:availableCredit];

  topUpTitle = [itemCopy topUpTitle];
  [viewCopy setTopUpTitle:topUpTitle];

  topUpAction = [itemCopy topUpAction];
  [viewCopy setTopUpAction:topUpAction];

  topUpEnabled = [itemCopy topUpEnabled];
  [viewCopy setTopUpEnabled:topUpEnabled];
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
        v11 = [PKDashboardBalanceView alloc];
        v12 = [(PKDashboardBalanceView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleBalanceView = self->_sampleBalanceView;
        self->_sampleBalanceView = v12;
      }
    }
  }
}

@end