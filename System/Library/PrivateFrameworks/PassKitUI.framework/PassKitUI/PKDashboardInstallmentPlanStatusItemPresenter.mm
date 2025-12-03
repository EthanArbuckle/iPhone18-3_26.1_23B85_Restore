@interface PKDashboardInstallmentPlanStatusItemPresenter
- (BOOL)_showStatusForItem:(id)item;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardInstallmentPlanStatusItemPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureProgressCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)_configureTotalFinancedCell:(id)cell forItem:(id)item inCollection:(id)collection forIndexPath:(id)path;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
@end

@implementation PKDashboardInstallmentPlanStatusItemPresenter

- (PKDashboardInstallmentPlanStatusItemPresenter)init
{
  v13.receiver = self;
  v13.super_class = PKDashboardInstallmentPlanStatusItemPresenter;
  v2 = [(PKDashboardInstallmentPlanStatusItemPresenter *)&v13 init];
  if (v2)
  {
    v3 = [PKInstallmentPlanProgressCollectionViewCell alloc];
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 8);
    v6 = *(MEMORY[0x1E695F058] + 16);
    v7 = *(MEMORY[0x1E695F058] + 24);
    v8 = [(PKInstallmentPlanProgressCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
    sampleProgressCell = v2->_sampleProgressCell;
    v2->_sampleProgressCell = v8;

    v10 = [[PKInstallmentPlanTotalFinancedCollectionViewCell alloc] initWithFrame:v4, v5, v6, v7];
    sampleTotalFinancedCell = v2->_sampleTotalFinancedCell;
    v2->_sampleTotalFinancedCell = v10;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"InstallmentPlanStatusItemCellReuseIdentifier";
  v4[1] = @"InstallmentPlanTotalFinancedCellReuseIdentifier";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  controllerCopy = controller;
  presentCopy = present;
  v15 = presentCopy;
  if (!presentCopy || (*(presentCopy + 2))(presentCopy))
  {
    v16 = itemCopy;
    v25 = [PKInstallmentPlanDetailsViewController alloc];
    account = [v16 account];
    installmentPlan = [v16 installmentPlan];
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountUserCollection = [v16 accountUserCollection];
    [v16 familyMemberCollection];
    v26 = controllerCopy;
    v22 = v21 = viewCopy;
    transactionSourceCollection = [v16 transactionSourceCollection];

    v24 = [(PKInstallmentPlanDetailsViewController *)v25 initWithAccount:account installmentPlan:installmentPlan accountService:mEMORY[0x1E69B8400] accountUserCollection:accountUserCollection familyMemberCollection:v22 transactionSourceCollection:transactionSourceCollection];
    viewCopy = v21;
    controllerCopy = v26;

    [v26 pushViewController:v24 animated:1];
  }
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  if ([(PKDashboardInstallmentPlanStatusItemPresenter *)self _showStatusForItem:itemCopy])
  {
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"InstallmentPlanStatusItemCellReuseIdentifier" forIndexPath:pathCopy];
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureProgressCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];
  }

  else
  {
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"InstallmentPlanTotalFinancedCellReuseIdentifier" forIndexPath:pathCopy];
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureTotalFinancedCell:v11 forItem:itemCopy inCollection:viewCopy forIndexPath:pathCopy];
  }

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  if ([(PKDashboardInstallmentPlanStatusItemPresenter *)self _showStatusForItem:itemCopy])
  {
    p_sampleProgressCell = &self->_sampleProgressCell;
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureProgressCell:self->_sampleProgressCell forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];
  }

  else
  {
    p_sampleProgressCell = &self->_sampleTotalFinancedCell;
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureTotalFinancedCell:self->_sampleTotalFinancedCell forItem:itemCopy inCollection:viewCopy forIndexPath:pathCopy];
  }

  [*p_sampleProgressCell sizeThatFits:{width, 1.79769313e308}];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  cellCopy = cell;
  if ([(PKDashboardInstallmentPlanStatusItemPresenter *)self _showStatusForItem:itemCopy])
  {
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureProgressCell:cellCopy forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];
  }

  else
  {
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureTotalFinancedCell:cellCopy forItem:itemCopy inCollection:viewCopy forIndexPath:pathCopy];
  }
}

- (void)_configureTotalFinancedCell:(id)cell forItem:(id)item inCollection:(id)collection forIndexPath:(id)path
{
  cellCopy = cell;
  installmentPlan = [item installmentPlan];
  currencyCode = [installmentPlan currencyCode];
  totalAmount = [installmentPlan totalAmount];
  v10 = PKLocalizedFeatureString();
  [cellCopy setTitle:v10];

  v11 = PKCurrencyAmountMake();
  [cellCopy setAmount:v11];

  nextPaymentDue = [installmentPlan nextPaymentDue];
  v13 = nextPaymentDue;
  if (nextPaymentDue)
  {
    amountDue = [nextPaymentDue amountDue];
    currencyCode2 = [v13 currencyCode];
    v16 = PKCurrencyAmountCreate(amountDue, currencyCode2);

    statementDate = [v13 statementDate];
    v18 = statementDate;
    if (statementDate)
    {
      dueDate = statementDate;
    }

    else
    {
      dueDate = [v13 dueDate];
    }

    v21 = dueDate;

    v22 = PKMediumDateString();
    [v16 formattedStringValue];
    v24 = v23 = v22;
    v20 = PKLocalizedFeatureString();
  }

  else
  {
    v20 = 0;
  }

  [cellCopy setSubtitleText:{v20, v23, v24}];
}

- (void)_configureProgressCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  installmentPlan = [item installmentPlan];
  currencyCode = [installmentPlan currencyCode];
  summary = [installmentPlan summary];
  paymentsToDateAmount = [summary paymentsToDateAmount];
  v11 = paymentsToDateAmount;
  if (paymentsToDateAmount)
  {
    zero = paymentsToDateAmount;
  }

  else
  {
    zero = [MEMORY[0x1E696AB90] zero];
  }

  v13 = zero;

  totalAmount = [installmentPlan totalAmount];
  isComplete = [installmentPlan isComplete];
  [cellCopy setComplete:isComplete];
  if (isComplete)
  {
    v16 = PKLocalizedFeatureString();
    [cellCopy setLeadingTitle:v16];

    [cellCopy setTrailingTitle:0];
    [cellCopy setLeadingAmount:0];
    [cellCopy setTrailingAmount:0];
    nextPaymentDue = [installmentPlan nextPaymentDue];
    v18 = PKLocalizedFeatureString();
  }

  else
  {
    if (currencyCode)
    {
      if (v13 && totalAmount)
      {
        v19 = [(NSDecimalNumber *)v13 decimalNumberByDividingBy:totalAmount];
        [v19 floatValue];
        v21 = v20;

        v22 = PKCurrencyAmountCreate(v13, currencyCode);
      }

      else
      {
        zero2 = [MEMORY[0x1E696AB90] zero];
        v22 = PKCurrencyAmountCreate(zero2, currencyCode);

        v21 = 0.0;
      }

      remainingAmount = [installmentPlan remainingAmount];

      if (remainingAmount)
      {
        remainingAmount2 = [installmentPlan remainingAmount];
        remainingAmount = PKCurrencyAmountCreate(remainingAmount2, currencyCode);
      }
    }

    else
    {
      remainingAmount = 0;
      v22 = 0;
      v21 = 0.0;
    }

    [cellCopy setProgressAmount:v21];
    v26 = PKLocalizedFeatureString();
    [cellCopy setLeadingTitle:v26];

    [cellCopy setLeadingAmount:v22];
    v27 = PKLocalizedFeatureString();
    [cellCopy setTrailingTitle:v27];

    [cellCopy setTrailingAmount:remainingAmount];
    nextPaymentDue2 = [installmentPlan nextPaymentDue];
    nextPaymentDue = nextPaymentDue2;
    if (nextPaymentDue2)
    {
      amountDue = [nextPaymentDue2 amountDue];
      currencyCode2 = [nextPaymentDue currencyCode];
      v31 = PKCurrencyAmountCreate(amountDue, currencyCode2);

      statementDate = [nextPaymentDue statementDate];
      v33 = statementDate;
      if (statementDate)
      {
        dueDate = statementDate;
      }

      else
      {
        dueDate = [nextPaymentDue dueDate];
      }

      v35 = dueDate;

      v36 = PKMediumDateString();
      [v31 formattedStringValue];
      v38 = v37 = v36;
      v18 = PKLocalizedFeatureString();
    }

    else
    {
      v18 = 0;
    }
  }

  [cellCopy setSubtitleText:{v18, v37, v38}];
}

- (BOOL)_showStatusForItem:(id)item
{
  account = [item account];
  v4 = [account accessLevel] == 1;

  return v4;
}

@end