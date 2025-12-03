@interface PKInstallmentPlanDetailsViewController
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKInstallmentPlanDetailsViewController)initWithAccount:(id)account installmentPlan:(id)plan accountService:(id)service accountUserCollection:(id)collection familyMemberCollection:(id)memberCollection transactionSourceCollection:(id)sourceCollection;
- (id)_detailsCellForTableView:(id)view atIndexPath:(id)path;
- (id)_progressCellForTableView:(id)view atIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateHeaderHeight;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKInstallmentPlanDetailsViewController

- (PKInstallmentPlanDetailsViewController)initWithAccount:(id)account installmentPlan:(id)plan accountService:(id)service accountUserCollection:(id)collection familyMemberCollection:(id)memberCollection transactionSourceCollection:(id)sourceCollection
{
  accountCopy = account;
  planCopy = plan;
  serviceCopy = service;
  collectionCopy = collection;
  memberCollectionCopy = memberCollection;
  sourceCollectionCopy = sourceCollection;
  v29.receiver = self;
  v29.super_class = PKInstallmentPlanDetailsViewController;
  v18 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v29, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 2);
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_account, account);
    objc_storeStrong(&v19->_installmentPlan, plan);
    objc_storeStrong(&v19->_accountService, service);
    objc_storeStrong(&v19->_accountUserCollection, collection);
    objc_storeStrong(&v19->_familyMemberCollection, memberCollection);
    objc_storeStrong(&v19->_transactionSourceCollection, sourceCollection);
    v20 = objc_alloc_init(PKPaymentTransactionDetailAmountLineItemGenerator);
    lineItemGenerator = v19->_lineItemGenerator;
    v19->_lineItemGenerator = v20;

    v22 = [(PKPaymentTransactionDetailAmountLineItemGenerator *)v19->_lineItemGenerator lineItemsForInstallmentPlan:planCopy];
    lineItems = v19->_lineItems;
    v19->_lineItems = v22;

    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKInstallmentPlanDetailsViewController *)v19 navigationItem];
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v19;
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = PKInstallmentPlanDetailsViewController;
  [(PKSectionTableViewController *)&v34 viewDidLoad];
  tableView = [(PKInstallmentPlanDetailsViewController *)self tableView];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"StatusCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"LineItemCellReuseIdentifier"];
  totalAmount = [(PKCreditInstallmentPlan *)self->_installmentPlan totalAmount];
  if (totalAmount && (v5 = totalAmount, [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    totalAmount2 = [(PKCreditInstallmentPlan *)self->_installmentPlan totalAmount];
    currencyCode = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
    v9 = PKCurrencyAmountCreate(totalAmount2, currencyCode);
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(PKPaymentTransactionDetailHeaderView);
  headerView = self->_headerView;
  self->_headerView = v10;

  v12 = self->_headerView;
  formattedStringValue = [v9 formattedStringValue];
  [(PKPaymentTransactionDetailHeaderView *)v12 setAmountText:formattedStringValue];

  v14 = self->_headerView;
  merchant = [(PKCreditInstallmentPlan *)self->_installmentPlan merchant];
  name = [merchant name];
  [(PKPaymentTransactionDetailHeaderView *)v14 setSubtitleText:name];

  summary = [(PKCreditInstallmentPlan *)self->_installmentPlan summary];
  startDate = [summary startDate];

  if (startDate)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v19 setDateStyle:2];
    [v19 setTimeStyle:1];
    v20 = self->_headerView;
    v21 = [v19 stringFromDate:startDate];
    [(PKPaymentTransactionDetailHeaderView *)v20 setSecondarySubtitleText:v21];
  }

  accountUserAltDSID = [(PKCreditInstallmentPlan *)self->_installmentPlan accountUserAltDSID];
  if (accountUserAltDSID)
  {
    v23 = [(PKAccountUserCollection *)self->_accountUserCollection accountUserWithAltDSID:accountUserAltDSID];
    v24 = [(PKFamilyMemberCollection *)self->_familyMemberCollection familyMemberForAltDSID:accountUserAltDSID];
    v25 = MEMORY[0x1E69B8740];
    nameComponents = [v23 nameComponents];
    v27 = [v25 contactForFamilyMember:v24 nameComponents:nameComponents imageData:0];

    if (v27)
    {
      givenName = [v27 givenName];
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_0.isa, &stru_1F3BD5BF0.isa, givenName);
      v33 = startDate;
      v29 = tableView;
      v30 = v23;
      v32 = v31 = v9;

      [(PKPaymentTransactionDetailHeaderView *)self->_headerView setTertiarySubtitleText:v32];
      v9 = v31;
      v23 = v30;
      tableView = v29;
      startDate = v33;
    }
  }

  [tableView setTableHeaderView:self->_headerView];
  [tableView setAccessibilityIdentifier:*MEMORY[0x1E69B9888]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKInstallmentPlanDetailsViewController;
  [(PKInstallmentPlanDetailsViewController *)&v5 viewWillLayoutSubviews];
  [(PKInstallmentPlanDetailsViewController *)self _updateHeaderHeight];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKInstallmentPlanDetailsViewController *)self tableView];
    navigationItem = [(PKInstallmentPlanDetailsViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  if (!section)
  {
    return 1;
  }

  if (section == 1)
  {
    return [(PKAccount *)self->_account accessLevel:v3]== 1;
  }

  return 0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v8 == 1)
  {
    v9 = [(PKInstallmentPlanDetailsViewController *)self _progressCellForTableView:viewCopy atIndexPath:pathCopy];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [(PKInstallmentPlanDetailsViewController *)self _detailsCellForTableView:viewCopy atIndexPath:pathCopy];
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v8 == 1)
  {
    [cellCopy setSeparatorStyle:{objc_msgSend(cellCopy, "hasTrailingLineSeperator")}];
  }

  else if (!v8)
  {
    v9 = [pathCopy row];
    if (v9 >= 1)
    {
      v10 = [(NSArray *)self->_lineItems objectAtIndex:v9 - 1];
      [cellCopy setSeparatorStyle:{objc_msgSend(v10, "hasTrailingLineSeperator")}];
    }
  }
}

- (void)_updateHeaderHeight
{
  if (self->_headerView)
  {
    tableView = [(PKInstallmentPlanDetailsViewController *)self tableView];
    [tableView bounds];
    v4 = v3;
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView frame];
    v6 = v5;
    v8 = v7;
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView sizeThatFits:v4, 1.79769313e308];
    if (v6 != v10 || v8 != v9)
    {
      v12 = v9;
      headerView = self->_headerView;
      [tableView _rectForTableHeaderView];
      [(PKPaymentTransactionDetailHeaderView *)headerView setFrame:?];
      [tableView _tableHeaderHeightDidChangeToHeight:v12];
    }
  }
}

- (id)_detailsCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  if (v8)
  {
    v9 = [(NSArray *)self->_lineItems objectAtIndex:v8 - 1];
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:pathCopy];
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
    label = [v9 label];
    [v10 setTitleText:label];

    [v10 setValueFont:v12];
    value = [v9 value];
    [v10 setValueText:value];
  }

  else
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"StatusCellReuseIdentifier" forIndexPath:pathCopy];
    v15 = PKLocalizedFeatureString();
    [v10 setPrimaryText:v15];

    if ([(PKCreditInstallmentPlan *)self->_installmentPlan periodType]== 1)
    {
      v16 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v16 setNumberStyle:3];
      v17 = [(PKCreditInstallmentPlan *)self->_installmentPlan apr];
      pk_isIntegralNumber = [v17 pk_isIntegralNumber];

      if ((pk_isIntegralNumber & 1) == 0)
      {
        [v16 setMinimumFractionDigits:2];
      }

      duration = [(PKCreditInstallmentPlan *)self->_installmentPlan duration];
      v20 = [(PKCreditInstallmentPlan *)self->_installmentPlan apr];
      v21 = [v16 stringFromNumber:v20];
      v9 = PKLocalizedString(&cfstr_PlanDurationAp.isa, &cfstr_Lu_0.isa, duration, v21);
    }

    else
    {
      v9 = 0;
    }

    [v10 setSecondaryTitle:v9];
  }

  return v10;
}

- (id)_progressCellForTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  if (v8 == 2)
  {
    remainingAmount = [(PKCreditInstallmentPlan *)self->_installmentPlan remainingAmount];
    currencyCode = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
    formattedStringValue3 = currencyCode;
    if (remainingAmount)
    {
      v21 = currencyCode == 0;
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
      v11 = PKCurrencyAmountCreate(remainingAmount, currencyCode);
    }

    formattedStringValue2 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:pathCopy];
    [v13 setHasTrailingLineSeperator:1];
    [v13 setTitleFont:formattedStringValue2];
    v23 = PKLocalizedFeatureString();
    [v13 setTitleText:v23];

    [v13 setValueFont:formattedStringValue2];
    formattedStringValue = [(NSDecimalNumber *)v11 formattedStringValue];
    [v13 setValueText:formattedStringValue];

    goto LABEL_17;
  }

  if (v8 == 1)
  {
    summary = [(PKCreditInstallmentPlan *)self->_installmentPlan summary];
    paymentsToDateAmount = [summary paymentsToDateAmount];
    v18 = paymentsToDateAmount;
    if (paymentsToDateAmount)
    {
      zero = paymentsToDateAmount;
    }

    else
    {
      zero = [MEMORY[0x1E696AB90] zero];
    }

    v11 = zero;

    currencyCode2 = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
    remainingAmount = PKCurrencyAmountCreate(v11, currencyCode2);

    formattedStringValue3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], 2, 0);
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:pathCopy];
    [v13 setHasTrailingLineSeperator:0];
    [v13 setTitleFont:formattedStringValue3];
    v26 = PKLocalizedFeatureString();
    [v13 setTitleText:v26];

    [v13 setValueFont:formattedStringValue3];
    formattedStringValue2 = [(NSDecimalNumber *)remainingAmount formattedStringValue];
    [v13 setValueText:formattedStringValue2];
LABEL_17:

    goto LABEL_18;
  }

  if (v8)
  {
    v13 = 0;
    goto LABEL_19;
  }

  totalBilled = [(PKCreditInstallmentPlan *)self->_installmentPlan totalBilled];
  currencyCode3 = [(PKCreditInstallmentPlan *)self->_installmentPlan currencyCode];
  v11 = PKCurrencyAmountCreate(totalBilled, currencyCode3);

  remainingAmount = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
  v13 = [viewCopy dequeueReusableCellWithIdentifier:@"LineItemCellReuseIdentifier" forIndexPath:pathCopy];
  [v13 setHasTrailingLineSeperator:1];
  [v13 setTitleFont:remainingAmount];
  v14 = PKLocalizedFeatureString();
  [v13 setTitleText:v14];

  [v13 setValueFont:remainingAmount];
  formattedStringValue3 = [(NSDecimalNumber *)v11 formattedStringValue];
  [v13 setValueText:formattedStringValue3];
LABEL_18:

LABEL_19:

  return v13;
}

@end