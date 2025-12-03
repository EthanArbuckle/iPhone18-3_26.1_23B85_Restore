@interface PKDashboardAccountModulePresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardAccountModulePresenter)init;
- (id)accountViewControllerWithConfiguration:(id)configuration presentationContext:(id)context;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)_configureCell:(id)cell item:(id)item collectionView:(id)view;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)pushAccountViewControllerForAccount:(id)account presentingPass:(id)pass presentationContext:(id)context onNavigationController:(id)controller;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  itemCopy = item;
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKDashboardAccountModulePresenterIdentifier" forIndexPath:path];
  [(PKDashboardAccountModulePresenter *)self _configureCell:v10 item:itemCopy collectionView:viewCopy];

  return v10;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  controllerCopy = controller;
  presentCopy = present;
  v16 = presentCopy;
  if (!presentCopy || (*(presentCopy + 2))(presentCopy))
  {
    v17 = itemCopy;
    account = [v17 account];
    presentingPass = [v17 presentingPass];

    [(PKDashboardAccountModulePresenter *)self pushAccountViewControllerForAccount:account presentingPass:presentingPass presentationContext:0 onNavigationController:controllerCopy];
  }
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  viewCopy = view;
  itemCopy = item;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v12 = width + v11 * -2.0;
  [(PKDashboardAccountModulePresenter *)self _configureCell:self->_sampleCell item:itemCopy collectionView:viewCopy];

  sampleCell = self->_sampleCell;

  [(PKAccountModuleCollectionViewCell *)sampleCell sizeThatFits:v12, 3.40282347e38];
  result.height = v15;
  result.width = v14;
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
        v11 = [PKAccountModuleCollectionViewCell alloc];
        v12 = [(PKAccountModuleCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v12;
      }
    }
  }
}

- (void)pushAccountViewControllerForAccount:(id)account presentingPass:(id)pass presentationContext:(id)context onNavigationController:(id)controller
{
  controllerCopy = controller;
  contextCopy = context;
  passCopy = pass;
  accountCopy = account;
  v15 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
  [(PKAccountViewInterfaceConfiguration *)v15 setAccount:accountCopy];

  [(PKAccountViewInterfaceConfiguration *)v15 setDestination:0];
  [(PKAccountViewInterfaceConfiguration *)v15 setViewStyle:0];
  [(PKAccountViewInterfaceConfiguration *)v15 setCashbackPass:passCopy];

  v14 = [(PKDashboardAccountModulePresenter *)self accountViewControllerWithConfiguration:v15 presentationContext:contextCopy];

  [controllerCopy pushViewController:v14 animated:1];
}

- (id)accountViewControllerWithConfiguration:(id)configuration presentationContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  account = [configurationCopy account];
  presentationSource = [contextCopy presentationSource];

  if (presentationSource)
  {
    if (presentationSource == 2)
    {
      accountIdentifier = [account accountIdentifier];
      if (PKAccountServiceIsNewAccountWithAccountIdentifier())
      {
        destination = [configurationCopy destination];
        [configurationCopy setIsNewAccount:destination == 0];
        if (!destination)
        {
          PKSetAccountServiceIsNewAccountWithAccountIdentifier();
        }
      }

      else
      {
        [configurationCopy setIsNewAccount:0];
      }
    }
  }

  else if (![configurationCopy destination])
  {
    savingsDetails = [account savingsDetails];
    fccStepUpDetails = [savingsDetails fccStepUpDetails];
    thresholdExceeded = [fccStepUpDetails thresholdExceeded];

    if (thresholdExceeded)
    {
      [configurationCopy setDestination:11];
    }
  }

  if ([account type] == 4)
  {
    v14 = [PKAccountViewInterfaceHelper initialAccountViewControllerWithConfiguration:configurationCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_configureCell:(id)cell item:(id)item collectionView:(id)view
{
  itemCopy = item;
  cellCopy = cell;
  account = [itemCopy account];
  [cellCopy configureWithAccount:account];
}

- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  account = [item account];
  if ([account type] == 4)
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