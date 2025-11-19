@interface PKInstallmentPlanDetailsViewController
- (BOOL)shouldMapSection:(unint64_t)a3;
- (PKInstallmentPlanDetailsViewController)initWithAccount:(id)a3 installmentPlan:(id)a4 accountService:(id)a5 accountUserCollection:(id)a6 familyMemberCollection:(id)a7 transactionSourceCollection:(id)a8;
- (id)_detailsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_progressCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateHeaderHeight;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKInstallmentPlanDetailsViewController

- (PKInstallmentPlanDetailsViewController)initWithAccount:(id)a3 installmentPlan:(id)a4 accountService:(id)a5 accountUserCollection:(id)a6 familyMemberCollection:(id)a7 transactionSourceCollection:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v29.receiver = self;
  v29.super_class = PKInstallmentPlanDetailsViewController;
  v18 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v29, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 2);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_account, a3);
    objc_storeStrong(&v19->_installmentPlan, a4);
    objc_storeStrong(&v19->_accountService, a5);
    objc_storeStrong(&v19->_accountUserCollection, a6);
    objc_storeStrong(&v19->_familyMemberCollection, a7);
    objc_storeStrong(&v19->_transactionSourceCollection, a8);
    v20 = objc_alloc_init(PKPaymentTransactionDetailAmountLineItemGenerator);
    lineItemGenerator = v19->_lineItemGenerator;
    v19->_lineItemGenerator = v20;

    v22 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)v19->_lineItemGenerator lineItemsForInstallmentPlan:v16];
    lineItems = v19->_lineItems;
    v19->_lineItems = v22;

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v24 = [(PKInstallmentPlanDetailsViewController *)v19 navigationItem];
      [v24 pkui_setupScrollEdgeChromelessAppearance];
      [v24 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v19;
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = PKInstallmentPlanDetailsViewController;
  [(PKSectionTableViewController *)&v34 viewDidLoad];
  v3 = [(PKInstallmentPlanDetailsViewController *)self tableView];
  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"StatusCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"LineItemCellReuseIdentifier"];
  v4 = [(PKCreditInstallmentPlan *)self->_installmentPlan totalAmount];
  if (v4 && (v5 = v4, [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(PKCreditInstallmentPlan *)self->_installmentPlan totalAmount];
    v8 = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
    v9 = PKCurrencyAmountCreate(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(PKPaymentTransactionDetailHeaderView);
  headerView = self->_headerView;
  self->_headerView = v10;

  v12 = self->_headerView;
  v13 = [v9 formattedStringValue];
  [(PKPaymentTransactionDetailHeaderView *)v12 setAmountText:v13];

  v14 = self->_headerView;
  v15 = [(PKCreditInstallmentPlan *)self->_installmentPlan merchant];
  v16 = [v15 name];
  [(PKPaymentTransactionDetailHeaderView *)v14 setSubtitleText:v16];

  v17 = [(PKCreditInstallmentPlan *)self->_installmentPlan summary];
  v18 = [v17 startDate];

  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v19 setDateStyle:2];
    [v19 setTimeStyle:1];
    v20 = self->_headerView;
    v21 = [v19 stringFromDate:v18];
    [(PKPaymentTransactionDetailHeaderView *)v20 setSecondarySubtitleText:v21];
  }

  v22 = [(PKCreditInstallmentPlan *)self->_installmentPlan accountUserAltDSID];
  if (v22)
  {
    v23 = [(PKAccountUserCollection *)self->_accountUserCollection accountUserWithAltDSID:v22];
    v24 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMemberForAltDSID:v22];
    v25 = MEMORY[0x1E69B8740];
    v26 = [v23 nameComponents];
    v27 = [v25 contactForFamilyMember:v24 nameComponents:v26 imageData:0];

    if (v27)
    {
      v28 = [v27 givenName];
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_0.isa, &stru_1F3BD5BF0.isa, v28);
      v33 = v18;
      v29 = v3;
      v30 = v23;
      v32 = v31 = v9;

      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setTertiarySubtitleText:v32];
      v9 = v31;
      v23 = v30;
      v3 = v29;
      v18 = v33;
    }
  }

  [v3 setTableHeaderView:self->_headerView];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9888]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKInstallmentPlanDetailsViewController;
  [(PKInstallmentPlanDetailsViewController *)&v5 viewWillLayoutSubviews];
  [(PKInstallmentPlanDetailsViewController *)self _updateHeaderHeight];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKInstallmentPlanDetailsViewController *)self tableView];
    v4 = [(PKInstallmentPlanDetailsViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return [(PKAccount *)self->_account accessLevel:v3]== 1;
  }

  return 0;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 == 1)
  {
    return 3;
  }

  if (v5)
  {
    return 0;
  }

  return [(NSArray *)self->_lineItems count]+ 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  if (v8 == 1)
  {
    v9 = [(PKInstallmentPlanDetailsViewController *)self _progressCellForTableView:v6 atIndexPath:v7];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [(PKInstallmentPlanDetailsViewController *)self _detailsCellForTableView:v6 atIndexPath:v7];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  if (v8 == 1)
  {
    [v11 setSeparatorStyle:{objc_msgSend(v11, "hasTrailingLineSeperator")}];
  }

  else if (!v8)
  {
    v9 = [v7 row];
    if (v9 >= 1)
    {
      v10 = [(NSArray *)self->_lineItems objectAtIndex:v9 - 1];
      [v11 setSeparatorStyle:{objc_msgSend(v10, "hasTrailingLineSeperator")}];
    }
  }
}

- (void)_updateHeaderHeight
{
  if (self->_headerView)
  {
    v14 = [(PKInstallmentPlanDetailsViewController *)self tableView];
    [v14 bounds];
    v4 = v3;
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView frame];
    v6 = v5;
    v8 = v7;
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView sizeThatFits:v4, 1.79769313e308];
    if (v6 != v10 || v8 != v9)
    {
      v12 = v9;
      headerView = self->_headerView;
      [v14 _rectForTableHeaderView];
      [(PKPaymentTransactionDetailHeaderView *)headerView setFrame:?];
      [v14 _tableHeaderHeightDidChangeToHeight:v12];
    }
  }
}

- (id)_detailsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8)
  {
    v9 = [(NSArray *)self->_lineItems objectAtIndex:v8 - 1];
    v10 = [v6 dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:v7];
    if ([v9 isEmphasized])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], v11, 0);
    [v10 setHasTrailingLineSeperator:{objc_msgSend(v9, "hasTrailingLineSeperator")}];
    [v10 setTitleFont:v12];
    v13 = [v9 label];
    [v10 setTitleText:v13];

    [v10 setValueFont:v12];
    v14 = [v9 value];
    [v10 setValueText:v14];
  }

  else
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"StatusCellReuseIdentifier" forIndexPath:v7];
    v15 = PKLocalizedFeatureString();
    [v10 setPrimaryText:v15];

    if ([(PKCreditInstallmentPlan *)self->_installmentPlan periodType]== 1)
    {
      v16 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v16 setNumberStyle:3];
      v17 = [(PKCreditInstallmentPlan *)self->_installmentPlan apr];
      v18 = [v17 pk_isIntegralNumber];

      if ((v18 & 1) == 0)
      {
        [v16 setMinimumFractionDigits:2];
      }

      v19 = [(PKCreditInstallmentPlan *)self->_installmentPlan duration];
      v20 = [(PKCreditInstallmentPlan *)self->_installmentPlan apr];
      v21 = [v16 stringFromNumber:v20];
      v9 = PKLocalizedString(&cfstr_PlanDurationAp.isa, &cfstr_Lu_0.isa, v19, v21);
    }

    else
    {
      v9 = 0;
    }

    [v10 setSecondaryTitle:v9];
  }

  return v10;
}

- (id)_progressCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  if (v8 == 2)
  {
    v12 = [(PKCreditInstallmentPlan *)self->_installmentPlan remainingAmount];
    v20 = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
    v15 = v20;
    if (v12)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v11 = 0;
    }

    else
    {
      v11 = PKCurrencyAmountCreate(v12, v20);
    }

    v22 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
    v13 = [v6 dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:v7];
    [v13 setHasTrailingLineSeperator:1];
    [v13 setTitleFont:v22];
    v23 = PKLocalizedFeatureString();
    [v13 setTitleText:v23];

    [v13 setValueFont:v22];
    v24 = [(NSDecimalNumber *)v11 formattedStringValue];
    [v13 setValueText:v24];

    goto LABEL_17;
  }

  if (v8 == 1)
  {
    v16 = [(PKCreditInstallmentPlan *)self->_installmentPlan summary];
    v17 = [v16 paymentsToDateAmount];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x1E696AB90] zero];
    }

    v11 = v19;

    v25 = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
    v12 = PKCurrencyAmountCreate(v11, v25);

    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 2, 0);
    v13 = [v6 dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:v7];
    [v13 setHasTrailingLineSeperator:0];
    [v13 setTitleFont:v15];
    v26 = PKLocalizedFeatureString();
    [v13 setTitleText:v26];

    [v13 setValueFont:v15];
    v22 = [(NSDecimalNumber *)v12 formattedStringValue];
    [v13 setValueText:v22];
LABEL_17:

    goto LABEL_18;
  }

  if (v8)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v9 = [(PKCreditInstallmentPlan *)self->_installmentPlan totalBilled];
  v10 = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
  v11 = PKCurrencyAmountCreate(v9, v10);

  v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
  v13 = [v6 dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:v7];
  [v13 setHasTrailingLineSeperator:1];
  [v13 setTitleFont:v12];
  v14 = PKLocalizedFeatureString();
  [v13 setTitleText:v14];

  [v13 setValueFont:v12];
  v15 = [(NSDecimalNumber *)v11 formattedStringValue];
  [v13 setValueText:v15];
LABEL_18:

LABEL_19:

  return v13;
}

@end