@interface PKDashboardAccountModulePresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardAccountModulePresenter)init;
- (id)accountViewControllerWithConfiguration:(id)a3 presentationContext:(id)a4;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (void)_configureCell:(id)a3 item:(id)a4 collectionView:(id)a5;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)pushAccountViewControllerForAccount:(id)a3 presentingPass:(id)a4 presentationContext:(id)a5 onNavigationController:(id)a6;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardAccountModulePresenter

- (PKDashboardAccountModulePresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardAccountModulePresenter;
  v2 = [(PKDashboardAccountModulePresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKAccountModuleCollectionViewCell alloc];
    v4 = [(PKAccountModuleCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardAccountModulePresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:@"PKDashboardAccountModulePresenterIdentifier" forIndexPath:a5];
  [(PKDashboardAccountModulePresenter *)self _configureCell:v10 item:v9 collectionView:v8];

  return v10;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v20 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (!v15 || (*(v15 + 2))(v15))
  {
    v17 = v20;
    v18 = [v17 account];
    v19 = [v17 presentingPass];

    [(PKDashboardAccountModulePresenter *)self pushAccountViewControllerForAccount:v18 presentingPass:v19 presentationContext:0 onNavigationController:v14];
  }
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v9 = a4;
  v10 = a3;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v12 = a5 + v11 * -2.0;
  [(PKDashboardAccountModulePresenter *)self _configureCell:self->_sampleCell item:v10 collectionView:v9];

  sampleCell = self->_sampleCell;

  [(PKAccountModuleCollectionViewCell *)sampleCell sizeThatFits:v12, 3.40282347e38];
  result.height = v15;
  result.width = v14;
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
        v11 = [PKAccountModuleCollectionViewCell alloc];
        v12 = [(PKAccountModuleCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v12;
      }
    }
  }
}

- (void)pushAccountViewControllerForAccount:(id)a3 presentingPass:(id)a4 presentationContext:(id)a5 onNavigationController:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
  [(PKAccountViewInterfaceConfiguration *)v15 setAccount:v13];

  [(PKAccountViewInterfaceConfiguration *)v15 setDestination:0];
  [(PKAccountViewInterfaceConfiguration *)v15 setViewStyle:0];
  [(PKAccountViewInterfaceConfiguration *)v15 setCashbackPass:v12];

  v14 = [(PKDashboardAccountModulePresenter *)self accountViewControllerWithConfiguration:v15 presentationContext:v11];

  [v10 pushViewController:v14 animated:1];
}

- (id)accountViewControllerWithConfiguration:(id)a3 presentationContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 account];
  v8 = [v6 presentationSource];

  if (v8)
  {
    if (v8 == 2)
    {
      v9 = [v7 accountIdentifier];
      if (PKAccountServiceIsNewAccountWithAccountIdentifier())
      {
        v10 = [v5 destination];
        [v5 setIsNewAccount:v10 == 0];
        if (!v10)
        {
          PKSetAccountServiceIsNewAccountWithAccountIdentifier();
        }
      }

      else
      {
        [v5 setIsNewAccount:0];
      }
    }
  }

  else if (![v5 destination])
  {
    v11 = [v7 savingsDetails];
    v12 = [v11 fccStepUpDetails];
    v13 = [v12 thresholdExceeded];

    if (v13)
    {
      [v5 setDestination:11];
    }
  }

  if ([v7 type] == 4)
  {
    v14 = [PKAccountViewInterfaceHelper initialAccountViewControllerWithConfiguration:v5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_configureCell:(id)a3 item:(id)a4 collectionView:(id)a5
{
  v8 = a4;
  v6 = a3;
  v7 = [v8 account];
  [v6 configureWithAccount:v7];
}

- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a3 account];
  if ([v5 type] == 4)
  {
    v6 = PKLocalizedFeatureString();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end