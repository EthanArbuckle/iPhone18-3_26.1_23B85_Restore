@interface PKDashboardInstallmentPlanStatusItemPresenter
- (BOOL)_showStatusForItem:(id)a3;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardInstallmentPlanStatusItemPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureProgressCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)_configureTotalFinancedCell:(id)a3 forItem:(id)a4 inCollection:(id)a5 forIndexPath:(id)a6;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
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

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v27 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (!v14 || (*(v14 + 2))(v14))
  {
    v16 = v27;
    v25 = [PKInstallmentPlanDetailsViewController alloc];
    v17 = [v16 account];
    v18 = [v16 installmentPlan];
    v19 = [MEMORY[0x1E69B8400] sharedInstance];
    v20 = [v16 accountUserCollection];
    [v16 familyMemberCollection];
    v26 = v13;
    v22 = v21 = v11;
    v23 = [v16 transactionSourceCollection];

    v24 = [(PKInstallmentPlanDetailsViewController *)v25 initWithAccount:v17 installmentPlan:v18 accountService:v19 accountUserCollection:v20 familyMemberCollection:v22 transactionSourceCollection:v23];
    v11 = v21;
    v13 = v26;

    [v26 pushViewController:v24 animated:1];
  }
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([(PKDashboardInstallmentPlanStatusItemPresenter *)self _showStatusForItem:v8])
  {
    v11 = [v10 dequeueReusableCellWithReuseIdentifier:@"InstallmentPlanStatusItemCellReuseIdentifier" forIndexPath:v9];
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureProgressCell:v11 forItem:v8 inCollectionView:v10 forIndexPath:v9];
  }

  else
  {
    v11 = [v10 dequeueReusableCellWithReuseIdentifier:@"InstallmentPlanTotalFinancedCellReuseIdentifier" forIndexPath:v9];
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureTotalFinancedCell:v11 forItem:v8 inCollection:v10 forIndexPath:v9];
  }

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  if ([(PKDashboardInstallmentPlanStatusItemPresenter *)self _showStatusForItem:v10])
  {
    p_sampleProgressCell = &self->_sampleProgressCell;
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureProgressCell:self->_sampleProgressCell forItem:v10 inCollectionView:v12 forIndexPath:v11];
  }

  else
  {
    p_sampleProgressCell = &self->_sampleTotalFinancedCell;
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureTotalFinancedCell:self->_sampleTotalFinancedCell forItem:v10 inCollection:v12 forIndexPath:v11];
  }

  [*p_sampleProgressCell sizeThatFits:{a5, 1.79769313e308}];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v13 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  if ([(PKDashboardInstallmentPlanStatusItemPresenter *)self _showStatusForItem:v13])
  {
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureProgressCell:v12 forItem:v13 inCollectionView:v11 forIndexPath:v10];
  }

  else
  {
    [(PKDashboardInstallmentPlanStatusItemPresenter *)self _configureTotalFinancedCell:v12 forItem:v13 inCollection:v11 forIndexPath:v10];
  }
}

- (void)_configureTotalFinancedCell:(id)a3 forItem:(id)a4 inCollection:(id)a5 forIndexPath:(id)a6
{
  v25 = a3;
  v7 = [a4 installmentPlan];
  v8 = [v7 currencyCode];
  v9 = [v7 totalAmount];
  v10 = PKLocalizedFeatureString();
  [v25 setTitle:v10];

  v11 = PKCurrencyAmountMake();
  [v25 setAmount:v11];

  v12 = [v7 nextPaymentDue];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 amountDue];
    v15 = [v13 currencyCode];
    v16 = PKCurrencyAmountCreate(v14, v15);

    v17 = [v13 statementDate];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v13 dueDate];
    }

    v21 = v19;

    v22 = PKMediumDateString();
    [v16 formattedStringValue];
    v24 = v23 = v22;
    v20 = PKLocalizedFeatureString();
  }

  else
  {
    v20 = 0;
  }

  [v25 setSubtitleText:{v20, v23, v24}];
}

- (void)_configureProgressCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v39 = a3;
  v7 = [a4 installmentPlan];
  v8 = [v7 currencyCode];
  v9 = [v7 summary];
  v10 = [v9 paymentsToDateAmount];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x1E696AB90] zero];
  }

  v13 = v12;

  v14 = [v7 totalAmount];
  v15 = [v7 isComplete];
  [v39 setComplete:v15];
  if (v15)
  {
    v16 = PKLocalizedFeatureString();
    [v39 setLeadingTitle:v16];

    [v39 setTrailingTitle:0];
    [v39 setLeadingAmount:0];
    [v39 setTrailingAmount:0];
    v17 = [v7 nextPaymentDue];
    v18 = PKLocalizedFeatureString();
  }

  else
  {
    if (v8)
    {
      if (v13 && v14)
      {
        v19 = [(NSDecimalNumber *)v13 decimalNumberByDividingBy:v14];
        [v19 floatValue];
        v21 = v20;

        v22 = PKCurrencyAmountCreate(v13, v8);
      }

      else
      {
        v24 = [MEMORY[0x1E696AB90] zero];
        v22 = PKCurrencyAmountCreate(v24, v8);

        v21 = 0.0;
      }

      v23 = [v7 remainingAmount];

      if (v23)
      {
        v25 = [v7 remainingAmount];
        v23 = PKCurrencyAmountCreate(v25, v8);
      }
    }

    else
    {
      v23 = 0;
      v22 = 0;
      v21 = 0.0;
    }

    [v39 setProgressAmount:v21];
    v26 = PKLocalizedFeatureString();
    [v39 setLeadingTitle:v26];

    [v39 setLeadingAmount:v22];
    v27 = PKLocalizedFeatureString();
    [v39 setTrailingTitle:v27];

    [v39 setTrailingAmount:v23];
    v28 = [v7 nextPaymentDue];
    v17 = v28;
    if (v28)
    {
      v29 = [v28 amountDue];
      v30 = [v17 currencyCode];
      v31 = PKCurrencyAmountCreate(v29, v30);

      v32 = [v17 statementDate];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [v17 dueDate];
      }

      v35 = v34;

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

  [v39 setSubtitleText:{v18, v37, v38}];
}

- (BOOL)_showStatusForItem:(id)a3
{
  v3 = [a3 account];
  v4 = [v3 accessLevel] == 1;

  return v4;
}

@end