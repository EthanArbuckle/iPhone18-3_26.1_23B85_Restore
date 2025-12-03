@interface PKCreditBalanceAndPaymentPresenter
- (BOOL)_useAccessibilityLayoutForCollectionView:(id)view;
- (BOOL)cellIsIndependentForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (BOOL)cellIsStackableForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKCreditBalanceAndPaymentPresenter)initWithViewController:(id)controller;
- (id)_accountServiceResoultionControllerWithItem:(id)item;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureAccountUserSpendingCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)_configureActivityCell:(id)cell forItem:(id)item sizing:(BOOL)sizing inCollectionView:(id)view forIndexPath:(id)path;
- (void)_configureBalanceCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)_configurePaymentDueCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)accountServiceAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)paymentButtonTappedForItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
@end

@implementation PKCreditBalanceAndPaymentPresenter

- (PKCreditBalanceAndPaymentPresenter)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = PKCreditBalanceAndPaymentPresenter;
  v5 = [(PKCreditBalanceAndPaymentPresenter *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    paymentDateFormatter = v5->_paymentDateFormatter;
    v5->_paymentDateFormatter = v6;

    [(NSDateFormatter *)v5->_paymentDateFormatter setLocalizedDateFormatFromTemplate:@"MMM d"];
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    monthDayFormatter = v5->_monthDayFormatter;
    v5->_monthDayFormatter = v8;

    v10 = v5->_monthDayFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v10 setLocale:autoupdatingCurrentLocale];

    [(NSDateFormatter *)v5->_monthDayFormatter setLocalizedDateFormatFromTemplate:@"MMM d"];
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    monthFormatter = v5->_monthFormatter;
    v5->_monthFormatter = v12;

    v14 = v5->_monthFormatter;
    autoupdatingCurrentLocale2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v14 setLocale:autoupdatingCurrentLocale2];

    [(NSDateFormatter *)v5->_monthFormatter setLocalizedDateFormatFromTemplate:@"MMMM"];
    objc_storeWeak(&v5->_viewController, controllerCopy);
    v5->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
  }

  return v5;
}

- (id)collectionViewCellClasses
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"balancePresenter";
  v5[0] = objc_opt_class();
  v4[1] = @"paymentDuePresenter";
  v5[1] = objc_opt_class();
  v4[2] = @"activityPresenter";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v11 = itemCopy;
  type = [v11 type];
  v13 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"balancePresenter" forIndexPath:pathCopy];
        [(PKCreditBalanceAndPaymentPresenter *)self _configureAccountUserSpendingCell:v13 forItem:v11 inCollectionView:viewCopy forIndexPath:pathCopy];
      }
    }

    else
    {
      v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"balancePresenter" forIndexPath:pathCopy];
      [(PKCreditBalanceAndPaymentPresenter *)self _configureBalanceCell:v13 forItem:v11 inCollectionView:viewCopy forIndexPath:pathCopy];
    }
  }

  else if (type == 2 || type == 3)
  {
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"activityPresenter" forIndexPath:pathCopy];
    [(PKCreditBalanceAndPaymentPresenter *)self _configureActivityCell:v13 forItem:v11 sizing:0 inCollectionView:viewCopy forIndexPath:pathCopy];
  }

  else if (type == 4)
  {
    v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"paymentDuePresenter" forIndexPath:pathCopy];
    [(PKCreditBalanceAndPaymentPresenter *)self _configurePaymentDueCell:v13 forItem:v11 inCollectionView:viewCopy forIndexPath:pathCopy];
  }

  return v13;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v13 = itemCopy;
  type = [v13 type];
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        [(PKCreditBalanceAndPaymentPresenter *)self _configureAccountUserSpendingCell:cellCopy forItem:v13 inCollectionView:viewCopy forIndexPath:pathCopy];
      }
    }

    else
    {
      [(PKCreditBalanceAndPaymentPresenter *)self _configureBalanceCell:cellCopy forItem:v13 inCollectionView:viewCopy forIndexPath:pathCopy];
    }
  }

  else if (type == 2 || type == 3)
  {
    [(PKCreditBalanceAndPaymentPresenter *)self _configureActivityCell:cellCopy forItem:v13 sizing:0 inCollectionView:viewCopy forIndexPath:pathCopy];
  }

  else if (type == 4)
  {
    [(PKCreditBalanceAndPaymentPresenter *)self _configurePaymentDueCell:cellCopy forItem:v13 inCollectionView:viewCopy forIndexPath:pathCopy];
  }
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  if (!self->_sampleBalanceCell)
  {
    v13 = [PKCreditBalanceCell alloc];
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    v18 = [(PKCreditBalanceCell *)v13 initWithFrame:*MEMORY[0x1E695F058], v15, v16, v17];
    sampleBalanceCell = self->_sampleBalanceCell;
    self->_sampleBalanceCell = v18;

    v20 = [[PKCreditActivityCell alloc] initWithFrame:v14, v15, v16, v17];
    sampleActivityCell = self->_sampleActivityCell;
    self->_sampleActivityCell = v20;

    v22 = [[PKCreditPaymentDueCell alloc] initWithFrame:v14, v15, v16, v17];
    samplePaymentDueCell = self->_samplePaymentDueCell;
    self->_samplePaymentDueCell = v22;
  }

  v24 = *MEMORY[0x1E69DDC58];
  traitCollection = [viewCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v27 = UIContentSizeCategoryCompareToCategory(v24, preferredContentSizeCategory);

  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v28.n128_f64[0] = width + v28.n128_f64[0] * -2.0;
  v29.n128_f64[0] = (v28.n128_f64[0] + -8.0) * 0.5;
  if (v27 == NSOrderedDescending)
  {
    v28.n128_f64[0] = (v28.n128_f64[0] + -8.0) * 0.5;
  }

  PKFloatFloorToPixel(v28, v29);
  v31 = v30;
  v32 = itemCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke;
  aBlock[3] = &unk_1E8014688;
  v95 = v27 == NSOrderedDescending;
  aBlock[4] = self;
  v33 = v32;
  v90 = v33;
  v34 = viewCopy;
  v91 = v34;
  v35 = pathCopy;
  v92 = v35;
  v93 = v31;
  v94 = 0x47EFFFFFE0000000;
  v36 = _Block_copy(aBlock);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_2;
  v82[3] = &unk_1E8014688;
  v88 = v27 == NSOrderedDescending;
  v82[4] = self;
  v37 = v33;
  v83 = v37;
  v38 = v34;
  v84 = v38;
  v39 = v35;
  v85 = v39;
  v86 = v31;
  v87 = 0x47EFFFFFE0000000;
  v40 = _Block_copy(v82);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_3;
  v73[3] = &unk_1E80146B0;
  v81 = v27 == NSOrderedDescending;
  v41 = v36;
  v77 = v41;
  v42 = v40;
  v79 = v31;
  v80 = 0x47EFFFFFE0000000;
  v78 = v42;
  v73[4] = self;
  v43 = v37;
  v74 = v43;
  v44 = v38;
  v75 = v44;
  v45 = v39;
  v76 = v45;
  v46 = _Block_copy(v73);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_4;
  v66[3] = &unk_1E8014688;
  v72 = v27 == NSOrderedDescending;
  v66[4] = self;
  v47 = v43;
  v67 = v47;
  v68 = v44;
  v69 = v45;
  v70 = v31;
  v71 = 0x47EFFFFFE0000000;
  v48 = v45;
  v49 = v44;
  v50 = _Block_copy(v66);
  v51 = _Block_copy(v42);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_5;
  v63[3] = &unk_1E80146D8;
  v52 = v50;
  v64 = v52;
  v53 = v51;
  v65 = v53;
  v54 = _Block_copy(v63);
  type = [v47 type];
  if (type <= 1)
  {
    if (!type)
    {
      v56 = v41[2](v41);
      goto LABEL_21;
    }

    if (type != 1)
    {
      goto LABEL_23;
    }

    if (v27 == NSOrderedDescending)
    {
      v58 = v54;
    }

    else
    {
      v58 = v52;
    }

LABEL_18:
    v56 = v58[2](v58);
    goto LABEL_21;
  }

  if (type == 2)
  {
    if (v27 == NSOrderedDescending)
    {
      v58 = v54;
    }

    else
    {
      v58 = v53;
    }

    goto LABEL_18;
  }

  if (type == 3)
  {
    v56 = v42[2](v42);
    goto LABEL_21;
  }

  if (type != 4)
  {
LABEL_23:
    v59 = *MEMORY[0x1E695F060];
    v60 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_22;
  }

  v56 = v46[2](v46);
LABEL_21:
  v59 = v56;
  v60 = v57;
LABEL_22:

  v61 = v59;
  v62 = v60;
  result.height = v62;
  result.width = v61;
  return result;
}

uint64_t __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 80);
  [*(a1 + 32) _configureBalanceCell:*(*(a1 + 32) + 8) forItem:*(a1 + 40) inCollectionView:*(a1 + 48) forIndexPath:*(a1 + 56)];
  v3 = *(a1 + 72);
  if (v2 == 1)
  {
    return [*(*(a1 + 32) + 8) sizeThatFits:{*(a1 + 64), v3}];
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(a1 + 64);

  return [v5 sizeThatFits:{v6, v3}];
}

uint64_t __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 80);
  [*(a1 + 32) _configureActivityCell:*(*(a1 + 32) + 16) forItem:*(a1 + 40) sizing:1 inCollectionView:*(a1 + 48) forIndexPath:*(a1 + 56)];
  v3 = *(a1 + 72);
  if (v2 == 1)
  {
    return [*(*(a1 + 32) + 16) sizeThatFits:{*(a1 + 64), v3}];
  }

  v5 = *(*(a1 + 32) + 16);
  v6 = *(a1 + 64);

  return [v5 sizeThatFits:{v6, v3}];
}

uint64_t __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    (*(*(a1 + 64) + 16))();
    return (*(*(a1 + 72) + 16))();
  }

  else
  {
    [*(a1 + 32) _configurePaymentDueCell:*(*(a1 + 32) + 24) forItem:*(a1 + 40) inCollectionView:*(a1 + 48) forIndexPath:*(a1 + 56)];
    v3 = *(*(a1 + 32) + 24);
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);

    return [v3 sizeThatFits:{v4, v5}];
  }
}

uint64_t __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 80);
  [*(a1 + 32) _configureAccountUserSpendingCell:*(*(a1 + 32) + 8) forItem:*(a1 + 40) inCollectionView:*(a1 + 48) forIndexPath:*(a1 + 56)];
  v3 = *(a1 + 72);
  if (v2 == 1)
  {
    return [*(*(a1 + 32) + 8) sizeThatFits:{*(a1 + 64), v3}];
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(a1 + 64);

  return [v5 sizeThatFits:{v6, v3}];
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  v53[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  viewCopy = view;
  type = [itemCopy type];
  v12 = 0;
  if (type <= 1)
  {
    if (type <= 1)
    {
      v23 = [PKCreditBalanceDetailsViewController alloc];
      transactionSourceCollection = [itemCopy transactionSourceCollection];
      familyCollection = [itemCopy familyCollection];
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      account = [itemCopy account];
      accountUserCollection = [itemCopy accountUserCollection];
      physicalCards = [itemCopy physicalCards];
      v18 = [(PKCreditBalanceDetailsViewController *)v23 initWithStyle:0 transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection webService:mEMORY[0x1E69B8EF8] account:account accountUserCollection:accountUserCollection physicalCards:physicalCards statement:0 previousStatements:0];

      pkui_viewControllerFromResponderChain = [viewCopy pkui_viewControllerFromResponderChain];
      navigationController = [pkui_viewControllerFromResponderChain navigationController];
      [navigationController pushViewController:v18 animated:1];

      v22 = MEMORY[0x1E69BA3B0];
      goto LABEL_8;
    }
  }

  else
  {
    selfCopy = self;
    if ((type - 2) < 2)
    {
      v47 = [PKSpendingSummaryViewController alloc];
      transactionSourceCollection2 = [itemCopy transactionSourceCollection];
      familyCollection2 = [itemCopy familyCollection];
      avatarManager = [itemCopy avatarManager];
      account2 = [itemCopy account];
      accountUserCollection2 = [itemCopy accountUserCollection];
      physicalCards2 = [itemCopy physicalCards];
      summaryFetcher = [itemCopy summaryFetcher];
      weeks = [itemCopy weeks];
      months = [itemCopy months];
      years = [itemCopy years];
      v14 = PKBroadwaySummaryType();
      mostRecentTransactions = [itemCopy mostRecentTransactions];
      pendingPayments = [itemCopy pendingPayments];
      [itemCopy upcomingScheduledPayments];
      v17 = v43 = viewCopy;
      v48 = [(PKSpendingSummaryViewController *)v47 initWithTransactionSourceCollection:transactionSourceCollection2 familyCollection:familyCollection2 avatarManager:avatarManager account:account2 accountUserCollection:accountUserCollection2 physicalCards:physicalCards2 fetcher:summaryFetcher weeks:weeks months:months years:years type:v14 unit:0x7FFFFFFFFFFFFFFFLL currentMonthTransactions:mostRecentTransactions pendingPayments:pendingPayments upcomingScheduledPayments:v17 dispayType:0];

      viewCopy = v43;
      v18 = v48;

      WeakRetained = objc_loadWeakRetained(&selfCopy->_viewController);
      [(PKSpendingSummaryViewController *)v48 setDelegate:WeakRetained];

      pkui_viewControllerFromResponderChain2 = [v43 pkui_viewControllerFromResponderChain];
      navigationController2 = [pkui_viewControllerFromResponderChain2 navigationController];
      [navigationController2 pushViewController:v48 animated:1];

      v22 = MEMORY[0x1E69BB2A8];
LABEL_8:
      v12 = *v22;

      goto LABEL_9;
    }

    if (type == 4)
    {
      v18 = [(PKCreditBalanceAndPaymentPresenter *)self _accountServiceResoultionControllerWithItem:itemCopy];
      [(PKCreditBalanceDetailsViewController *)v18 presentFlowForAccountResolution:1 configuration:0 completion:0];
      v22 = MEMORY[0x1E69BACC0];
      goto LABEL_8;
    }
  }

LABEL_9:
  v32 = *MEMORY[0x1E69BAC10];
  v33 = *MEMORY[0x1E69BA680];
  v52[0] = *MEMORY[0x1E69BABE8];
  v52[1] = v33;
  v34 = *MEMORY[0x1E69BA6F0];
  v53[0] = v32;
  v53[1] = v34;
  v52[2] = *MEMORY[0x1E69BA440];
  v53[2] = v12;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
  v36 = MEMORY[0x1E69B8540];
  transactionSourceCollection3 = [itemCopy transactionSourceCollection];
  paymentPass = [transactionSourceCollection3 paymentPass];
  [v36 reportDashboardEventIfNecessary:v35 forPass:paymentPass];
}

- (BOOL)cellIsStackableForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  type = [item type];
  if (type != 3 && type)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = ![(PKCreditBalanceAndPaymentPresenter *)self _useAccessibilityLayoutForCollectionView:viewCopy];
  }

  return v9;
}

- (BOOL)cellIsIndependentForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  v8 = [item type] <= 4 && -[PKCreditBalanceAndPaymentPresenter _useAccessibilityLayoutForCollectionView:](self, "_useAccessibilityLayoutForCollectionView:", viewCopy);

  return v8;
}

- (void)_configurePaymentDueCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  v231 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  account = [itemCopy account];
  [account feature];
  creditDetails = [account creditDetails];
  accountSummary = [creditDetails accountSummary];
  paymentDueDate = [accountSummary paymentDueDate];
  v198 = creditDetails;
  createdDate = [creditDetails createdDate];
  v191 = accountSummary;
  currentStatement = [accountSummary currentStatement];
  upcomingScheduledPayments = [itemCopy upcomingScheduledPayments];
  pendingPayments = [itemCopy pendingPayments];
  v194 = [MEMORY[0x1E69B8770] relevantScheduledPaymentFromScheduledPayments:upcomingScheduledPayments account:account];
  v16 = objc_alloc(MEMORY[0x1E695DEE8]);
  v17 = *MEMORY[0x1E695D850];
  v18 = [v16 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v19 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v17];
  creditDetails2 = [account creditDetails];
  productTimeZone = [creditDetails2 productTimeZone];

  v193 = v19;
  v187 = productTimeZone;
  [v19 setTimeZone:productTimeZone];
  date = [MEMORY[0x1E695DF00] date];
  v185 = cellCopy;
  v186 = date;
  v197 = paymentDueDate;
  v188 = v18;
  if (paymentDueDate)
  {
    v23 = date;
    v24 = PKDateRangeNumberOfIntervalsForUnit();
    v25 = [v18 components:96 fromDate:v23 toDate:paymentDueDate options:0];
    hour = [v25 hour];
    paymentDueDate = [v25 minute];
  }

  else
  {
    hour = 0;
    v24 = 0;
  }

  v204 = PKLocalizedFeatureString();
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v27 = +[PKDashboardViewController backgroundColor];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v28 = MEMORY[0x1E69B8770];
  mostRecentTransactions = [itemCopy mostRecentTransactions];
  v195 = account;
  v192 = upcomingScheduledPayments;
  v30 = [v28 paymentEducationStateForAccount:account mostRecentTransactions:mostRecentTransactions pendingPayments:pendingPayments upcomingScheduledPayments:upcomingScheduledPayments];

  v31 = 0;
  v32 = 0;
  v184 = itemCopy;
  if (v30 <= 4)
  {
    if (v30 <= 1)
    {
      v46 = v204;
      if (!v30)
      {
        v200 = PKLocalizedFeatureString();
        PKLocalizedFeatureString();
        v209 = v206 = 0;
        v31 = 0;
        LODWORD(v50) = 0;
        v51 = 1;
        goto LABEL_156;
      }

      if (v30 == 1)
      {
        v200 = PKLocalizedFeatureString();
        monthDayFormatter = self->_monthDayFormatter;
        v48 = PKEndOfNextMonth();
        v175 = [(NSDateFormatter *)monthDayFormatter stringFromDate:v48];
        v209 = PKLocalizedFeatureString();

        v49 = PKLocalizedFeatureString();

        v31 = PKLocalizedFeatureString();
        v206 = 0;
        LODWORD(v50) = 0;
        v51 = 0;
        v204 = v49;
        goto LABEL_156;
      }

      LODWORD(v50) = 0;
      v206 = 0;
      v209 = 0;
      v200 = 0;
      goto LABEL_153;
    }

    if (v30 == 2)
    {
      v200 = PKLocalizedFeatureString();
      PKLocalizedFeatureString();
      v209 = v206 = 0;
      goto LABEL_129;
    }

    if (v30 != 3)
    {
      if (v197)
      {
        v33 = [(NSDateFormatter *)self->_monthDayFormatter stringFromDate:?];
      }

      else
      {
        v33 = 0;
      }

      if (![v195 showBillPaymentInterestSummary] || objc_msgSend(v192, "count"))
      {
        goto LABEL_75;
      }

      remainingMinimumPayment = [v191 remainingMinimumPayment];
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v133 = pendingPayments;
      v134 = [v133 countByEnumeratingWithState:&v219 objects:v229 count:16];
      if (v134)
      {
        v135 = v134;
        v136 = *v220;
        do
        {
          v137 = 0;
          v138 = remainingMinimumPayment;
          do
          {
            if (*v220 != v136)
            {
              objc_enumerationMutation(v133);
            }

            currencyAmount = [*(*(&v219 + 1) + 8 * v137) currencyAmount];
            amount = [currencyAmount amount];
            remainingMinimumPayment = [v138 decimalNumberBySubtracting:amount];

            ++v137;
            v138 = remainingMinimumPayment;
          }

          while (v135 != v137);
          v135 = [v133 countByEnumeratingWithState:&v219 objects:v229 count:16];
        }

        while (v135);
      }

      currencyCode = [v198 currencyCode];
      v142 = PKCurrencyAmountMake();
      formattedStringValue = [v142 formattedStringValue];

      v175 = formattedStringValue;
      v176 = v33;
      v90 = PKLocalizedFeatureString();

      if (!v90)
      {
LABEL_75:
        v175 = v33;
        v90 = PKLocalizedFeatureString();
      }

      v209 = v90;
      v200 = PKLocalizedFeatureString();

      v32 = 0;
      LODWORD(v50) = 0;
      v31 = 0;
      v206 = 0;
      goto LABEL_77;
    }

    v50 = [MEMORY[0x1E696AB78] localizedStringFromDate:v197 dateStyle:0 timeStyle:1];
    IsSingular = PKHourOfDateIsSingular();
    v82 = @"ACCOUNT_DASHBOARD_PAYMENT_DUE_BY_TIME";
    if (IsSingular)
    {
      v82 = @"ACCOUNT_DASHBOARD_PAYMENT_DUE_BY_TIME_SINGULAR";
    }

    v83 = v82;
    v32 = v24 > 7;
    if (v24 >= 8)
    {
      v200 = PKLocalizedFeatureString();
      v206 = [(NSDateFormatter *)self->_monthDayFormatter stringFromDate:v197];
      v84 = PKLocalizedFeatureString();

      v31 = PKLocalizedFeatureString();
      v209 = 0;
      v46 = v84;
LABEL_91:

      LODWORD(v50) = 0;
      goto LABEL_153;
    }

    if (v24 == 7)
    {
      v200 = PKLocalizedFeatureString();
      PKLocalizedString(&cfstr_DashboardWeeks.isa, &cfstr_Ld.isa, 1);
    }

    else if (v24 < 2)
    {
      if (v24 == 1 && hour >= 13 || !v24 && hour >= 13)
      {
        v200 = PKLocalizedFeatureString();
        v206 = PKLocalizedFeatureString();
        v175 = v50;
        v209 = PKLocalizedFeatureString();
        goto LABEL_90;
      }

      if ((hour - 1) > 0xB)
      {
        v200 = PKLocalizedFeatureString();
        v46 = v204;
        if (hour || paymentDueDate < 2)
        {
          v174 = PKLocalizedFeatureString();
        }

        else
        {
          v174 = PKLocalizedString(&cfstr_DashboardMinut.isa, &cfstr_Ld.isa, paymentDueDate);
        }

        v206 = v174;
        v209 = 0;
        v31 = 0;
        goto LABEL_91;
      }

      v200 = PKLocalizedFeatureString();
      PKLocalizedString(&cfstr_DashboardHours.isa, &cfstr_Ld.isa, hour);
    }

    else
    {
      v200 = PKLocalizedFeatureString();
      PKLocalizedString(&cfstr_DashboardDays.isa, &cfstr_Ld.isa, v24);
    }
    v206 = ;
    v209 = 0;
LABEL_90:
    v31 = 0;
    v46 = v204;
    goto LABEL_91;
  }

  if (v30 <= 6)
  {
    v46 = v204;
    if (v30 != 5)
    {
      v200 = PKLocalizedFeatureString();
      v206 = PKLocalizedFeatureString();
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];

      v32 = 0;
      LODWORD(v50) = 0;
      v31 = 0;
      v209 = 0;
      labelColor2 = systemRedColor;
LABEL_153:
      v51 = 0;
      v204 = v46;
      if (v32)
      {
        goto LABEL_156;
      }

      v54 = v185;
      if (v50)
      {
        goto LABEL_157;
      }

      labelColor3 = v27;
      v148 = 0;
      v149 = 0x1E69DC000;
      goto LABEL_158;
    }

    if ([v195 showBillPaymentInterestSummary])
    {
      unpostedInterest = [v191 unpostedInterest];
      v54 = v185;
      if (unpostedInterest && ([MEMORY[0x1E696AB90] zero], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(unpostedInterest, "compare:", v55), v55, v56 == 1))
      {
        v57 = PKLocalizedFeatureString();
      }

      else
      {
        remainingStatementBalance = [v191 remainingStatementBalance];
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v92 = pendingPayments;
        v93 = [v92 countByEnumeratingWithState:&v215 objects:v228 count:16];
        if (v93)
        {
          v94 = v93;
          v95 = *v216;
          do
          {
            v96 = 0;
            v97 = remainingStatementBalance;
            do
            {
              if (*v216 != v95)
              {
                objc_enumerationMutation(v92);
              }

              currencyAmount2 = [*(*(&v215 + 1) + 8 * v96) currencyAmount];
              amount2 = [currencyAmount2 amount];
              remainingStatementBalance = [v97 decimalNumberBySubtracting:amount2];

              ++v96;
              v97 = remainingStatementBalance;
            }

            while (v94 != v96);
            v94 = [v92 countByEnumeratingWithState:&v215 objects:v228 count:16];
          }

          while (v94);
        }

        currencyCode2 = [v198 currencyCode];
        v101 = PKCurrencyAmountMake();
        formattedStringValue2 = [v101 formattedStringValue];

        if (v197)
        {
          v103 = [(NSDateFormatter *)self->_monthDayFormatter stringFromDate:?];
        }

        else
        {
          v103 = 0;
        }

        v54 = v185;
        v175 = formattedStringValue2;
        v176 = v103;
        v57 = PKLocalizedFeatureString();
      }

      v89 = PKLocalizedFeatureString();

      v46 = v204;
      if (v57)
      {
        goto LABEL_144;
      }
    }

    else
    {
      v89 = 0;
      v54 = v185;
    }

    v144 = PKLocalizedFeatureString();

    v57 = PKLocalizedFeatureString();
    v89 = v144;
LABEL_144:
    v209 = v57;
    v200 = v89;
    v145 = PKLocalizedFeatureString();

    v31 = PKLocalizedFeatureString();
    v206 = 0;
    LODWORD(v50) = 0;
    v51 = 0;
    v204 = v145;
    goto LABEL_157;
  }

  if (v30 != 7)
  {
    if (v30 == 8)
    {
      v85 = PKLocalizedFeatureString();
      openingDate = [currentStatement openingDate];
      closingDate = [currentStatement closingDate];
      v88 = closingDate;
      v181 = v27;
      v200 = v85;
      if (openingDate && closingDate && [currentStatement monthNumber] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v124 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        v209 = PKLocalizedFeatureString();
      }

      else
      {
        v209 = PKLocalizedFeatureString();
      }

      v125 = PKLocalizedFeatureString();

      v31 = PKLocalizedFeatureString();
      v211 = 0u;
      v212 = 0u;
      v213 = 0u;
      v214 = 0u;
      v126 = v192;
      v50 = [v126 countByEnumeratingWithState:&v211 objects:v227 count:16];
      if (v50)
      {
        v127 = *v212;
        while (2)
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v212 != v127)
            {
              objc_enumerationMutation(v126);
            }

            scheduleDetails = [*(*(&v211 + 1) + 8 * i) scheduleDetails];
            preset = [scheduleDetails preset];

            if (preset == 3)
            {
              v32 = 0;
              LODWORD(v50) = 1;
              goto LABEL_125;
            }
          }

          v50 = [v126 countByEnumeratingWithState:&v211 objects:v227 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

      v32 = 1;
LABEL_125:

      v206 = 0;
      v46 = v125;
      v27 = v181;
      goto LABEL_153;
    }

    if (v30 != 9)
    {
      LODWORD(v50) = 0;
      v206 = 0;
      v209 = 0;
      v200 = 0;
LABEL_77:
      v46 = v204;
      goto LABEL_153;
    }

    scheduleDetails2 = [v194 scheduleDetails];
    scheduledDate = [scheduleDetails2 scheduledDate];

    v36 = [v193 components:28 fromDate:scheduledDate];
    v199 = [v193 dateFromComponents:v36];

    v37 = [v188 components:28 fromDate:v186];
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    secondsFromGMT = [localTimeZone secondsFromGMT];

    timeZone = [v193 timeZone];
    secondsFromGMT2 = [timeZone secondsFromGMT];

    localTimeZone2 = [MEMORY[0x1E695DFE8] localTimeZone];
    v43 = [v187 isEqualToTimeZone:localTimeZone2];

    v44 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/New_York"];
    v45 = [v187 isEqualToTimeZone:v44];

    if ((v43 & 1) == 0 && v45)
    {
      v43 = secondsFromGMT2 >= secondsFromGMT && secondsFromGMT2 - secondsFromGMT < 21601;
    }

    v179 = v37;
    v208 = v36;
    v104 = [v193 components:28 fromDateComponents:v37 toDateComponents:v36 options:0];
    year = [v104 year];
    month = [v104 month];
    v177 = v104;
    v107 = [v104 day];
    scheduleDetails3 = [v194 scheduleDetails];
    preset2 = [scheduleDetails3 preset];

    currencyAmount3 = [v194 currencyAmount];
    amount3 = [currencyAmount3 amount];

    LODWORD(v50) = preset2 == 3;
    if (preset2 == 3)
    {
      remainingStatementBalance2 = [v191 remainingStatementBalance];

      zero = [MEMORY[0x1E696AB90] zero];
      v114 = PKEqualObjects();

      if (v114)
      {

        amount3 = 0;
      }

      else
      {
        amount3 = remainingStatementBalance2;
      }
    }

    currencyCode3 = [v198 currencyCode];
    v116 = PKFormattedCurrencyStringFromNumber();

    if (year)
    {
      v117 = 0;
    }

    else
    {
      v117 = v43;
    }

    if (month)
    {
      v117 = 0;
    }

    if (v117 != 1 || v107)
    {
      if (v107 != 1)
      {
        v117 = 0;
      }

      v118 = v199;
      if (v117 != 1)
      {
        creditDetails3 = [v195 creditDetails];
        productTimeZone2 = [creditDetails3 productTimeZone];
        v123 = PKMediumDayAndLongMonthStringFromDate(v199, productTimeZone2);

        if (v116)
        {
          v175 = v116;
          v176 = v123;
        }

        else
        {
          v175 = v123;
        }

        v209 = PKLocalizedFeatureString();

        v119 = v177;
        goto LABEL_152;
      }

      v119 = v177;
      if (v116)
      {
        v175 = v116;
        goto LABEL_111;
      }
    }

    else
    {
      v118 = v199;
      v119 = v177;
      if (v116)
      {
        v175 = v116;
LABEL_111:
        v120 = PKLocalizedFeatureString();
LABEL_149:
        v209 = v120;
LABEL_152:
        v200 = PKLocalizedFeatureString();
        v32 = preset2 != 3;
        v146 = PKLocalizedFeatureString();

        v31 = PKLocalizedFeatureString();

        v206 = 0;
        v46 = v146;
        goto LABEL_153;
      }
    }

    v120 = PKLocalizedFeatureString();
    goto LABEL_149;
  }

  v58 = PKLocalizedFeatureString();
  mostRecentTransactions2 = [itemCopy mostRecentTransactions];
  firstObject = [mostRecentTransactions2 firstObject];
  referenceIdentifier = [firstObject referenceIdentifier];
  amount4 = [firstObject amount];
  pk_absoluteValue = [amount4 pk_absoluteValue];

  v210 = referenceIdentifier;
  v200 = v58;
  if (!referenceIdentifier)
  {
    v69 = firstObject;
    goto LABEL_128;
  }

  v205 = firstObject;
  v207 = pk_absoluteValue;
  v180 = v27;
  serviceIdentifier = [firstObject serviceIdentifier];
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v178 = mostRecentTransactions2;
  v65 = mostRecentTransactions2;
  v66 = [v65 countByEnumeratingWithState:&v223 objects:v230 count:16];
  if (!v66)
  {
    v69 = v205;
    goto LABEL_127;
  }

  v67 = v66;
  v68 = *v224;
  v69 = v205;
  do
  {
    for (j = 0; j != v67; ++j)
    {
      if (*v224 != v68)
      {
        objc_enumerationMutation(v65);
      }

      v71 = *(*(&v223 + 1) + 8 * j);
      if ([v71 transactionType] == 10)
      {
        referenceIdentifier2 = [v71 referenceIdentifier];
        v73 = v210;
        serviceIdentifier2 = v73;
        if (referenceIdentifier2 == v73)
        {

          goto LABEL_41;
        }

        if (referenceIdentifier2)
        {
          v75 = [referenceIdentifier2 isEqualToString:v73];

          if (!v75)
          {
            goto LABEL_54;
          }

LABEL_41:
          serviceIdentifier2 = [v71 serviceIdentifier];
          v76 = serviceIdentifier;
          v77 = v76;
          if (serviceIdentifier2 == v76)
          {

            pk_absoluteValue2 = serviceIdentifier2;
          }

          else
          {
            if (serviceIdentifier && serviceIdentifier2)
            {
              v78 = [serviceIdentifier2 isEqualToString:v76];

              if (v78)
              {
                v69 = v205;
                goto LABEL_53;
              }
            }

            else
            {
            }

            v69 = v205;
            if ([v205 transactionStatus] == 1)
            {
            }

            else
            {
              transactionStatus = [v205 transactionStatus];

              if (transactionStatus)
              {
                continue;
              }
            }

            referenceIdentifier2 = [v71 amount];
            pk_absoluteValue2 = [referenceIdentifier2 pk_absoluteValue];
            serviceIdentifier2 = v207;
            v207 = [v207 decimalNumberByAdding:pk_absoluteValue2];
          }

          serviceIdentifier2 = pk_absoluteValue2;
        }

LABEL_53:

LABEL_54:
        continue;
      }
    }

    v67 = [v65 countByEnumeratingWithState:&v223 objects:v230 count:16];
  }

  while (v67);
LABEL_127:

  mostRecentTransactions2 = v178;
  v27 = v180;
  pk_absoluteValue = v207;
LABEL_128:
  currencyCode4 = [v198 currencyCode];
  v206 = PKFormattedCurrencyStringFromNumber();

  v209 = 0;
LABEL_129:
  v31 = 0;
  v51 = 0;
  LODWORD(v50) = 1;
LABEL_156:
  v54 = v185;
LABEL_157:
  v148 = v51;
  v149 = 0x1E69DC000uLL;
  tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];

  labelColor3 = [MEMORY[0x1E69DC888] labelColor];

  v51 = v50;
  labelColor = tertiarySystemFillColor;
LABEL_158:
  if (self->_isCompactUI)
  {
    v151 = MEMORY[0x1E69DDDC0];
  }

  else
  {
    v151 = MEMORY[0x1E69DDDB8];
  }

  v152 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *v151, 0, 2, 0, *MEMORY[0x1E69DB958]);
  [v54 setDateLabelFont:v152];

  v153 = *MEMORY[0x1E69DDD28];
  v154 = *MEMORY[0x1E69DDD80];
  if (self->_isCompactUI)
  {
    v155 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v155 = *MEMORY[0x1E69DDD80];
  }

  v156 = PKFontForDefaultDesign(v155, 0, 0x8000, 0);
  [v54 setPaymentDueLabelFont:v156];

  [v54 setPaymentDueLabelTextColor:labelColor2];
  if (self->_isCompactUI)
  {
    v157 = v153;
  }

  else
  {
    v157 = v154;
  }

  v158 = PKFontForDefaultDesign(v157, 0, 0x8000, 0);
  [v54 setDetailLabelFont:v158];

  secondaryLabelColor = [*(v149 + 2184) secondaryLabelColor];
  [v54 setDetailLabelTextColor:secondaryLabelColor];

  [v54 setDateLabelText:v206];
  [v54 setDetailLabelText:v209];
  [v54 setPaymentDueLabelText:v200];
  if ((v51 & 1) != 0 || v148)
  {
    v161 = PKPassKitUIBundle();
    v162 = v161;
    if (v51)
    {
      v163 = @"Bill_Payment_Checkmark";
    }

    else
    {
      v163 = @"Info";
    }

    if (v51)
    {
      v164 = 30.0;
    }

    else
    {
      v164 = 16.0;
    }

    if (v51)
    {
      v165 = 30.0;
    }

    else
    {
      v165 = 29.0;
    }

    v166 = [v161 URLForResource:v163 withExtension:{@"pdf", v175}];

    v167 = PKUIScreenScale();
    v168 = PKUIImageFromPDF(v166, v164, v165, v167);

    v169 = [v168 imageWithRenderingMode:2];

    [v54 setPayButtonImage:v169];
    v160 = v204;
  }

  else
  {
    v160 = v204;
    [v54 setButtonTitle:v204];
    [v54 setFallbackButtonTitle:v31];
  }

  payButton = [v54 payButton];
  [payButton setUserInteractionEnabled:0];
  [v54 setUseAccessibilityLayout:{-[PKCreditBalanceAndPaymentPresenter _useAccessibilityLayoutForCollectionView:](self, "_useAccessibilityLayoutForCollectionView:", viewCopy)}];
  [v54 setPayButtonTitleColor:labelColor3];
  [v54 setPayButtonTintColor:labelColor];
  if (self->_isCompactUI)
  {
    v171 = 0x8000;
  }

  else
  {
    v171 = 2;
  }

  v172 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC50], v171, 0);
  [v54 setPayButtonFont:v172];

  [v54 setWantsCustomAppearance:1];
  [v54 setWantsDefaultHighlightBehavior:1];
  [v54 setMaskType:3];
  v173 = +[(PKDashboardCollectionViewCell *)PKCreditPaymentDueCell];
  [v54 setBackgroundColor:v173];

  [v54 setItem:v184];
  [v54 setDelegate:self];
}

- (void)_configureAccountUserSpendingCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  account = [itemCopy account];
  familyCollection = [itemCopy familyCollection];
  currentUserAltDSID = [familyCollection currentUserAltDSID];
  v12 = currentUserAltDSID;
  if (currentUserAltDSID)
  {
    v13 = currentUserAltDSID;
  }

  else
  {
    v13 = PKCurrentUserAltDSID();
  }

  v14 = v13;

  accountUserCollection = [itemCopy accountUserCollection];
  v16 = [accountUserCollection accountUserWithAltDSID:v14];

  creditDetails = [account creditDetails];
  accountSummary = [creditDetails accountSummary];
  v18 = [accountSummary accountUserActivityForAccountUserAltDSID:v14];
  v52 = creditDetails;
  currencyCode = [creditDetails currencyCode];
  v20 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v22 = [v20 components:8 fromDate:date];
  [v22 month];

  v23 = v18;
  v24 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
  v25 = PKLocalizedFeatureString();
  [cellCopy setBalanceText:v25];

  v48 = *MEMORY[0x1E69DDD80];
  v49 = *MEMORY[0x1E69DDD28];
  if (self->_isCompactUI)
  {
    v26 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v26 = *MEMORY[0x1E69DDD80];
  }

  v27 = PKFontForDefaultDesign(v26, 0, 0x8000, 0);
  [cellCopy setBalanceFont:v27];

  totalSpending = [v18 totalSpending];
  formattedStringValue = 0;
  if (totalSpending && currencyCode)
  {
    v30 = PKCurrencyAmountMake();
    formattedStringValue = [v30 formattedStringValue];
  }

  v50 = formattedStringValue;
  if (self->_isCompactUI)
  {
    v31 = MEMORY[0x1E69DDDC0];
  }

  else
  {
    v31 = MEMORY[0x1E69DDDB8];
  }

  v32 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *v31, 0, 2, 0, *MEMORY[0x1E69DB958]);
  [cellCopy setAmountFont:v32];

  v53 = v16;
  preferences = [v16 preferences];
  selfCopy = self;
  if ([preferences monthlySpendLimitEnabled])
  {
    v47 = v14;
    monthlySpendLimitAmount = [preferences monthlySpendLimitAmount];
    availableCredit = monthlySpendLimitAmount;
    v37 = 0;
    if (!totalSpending || !monthlySpendLimitAmount || !currencyCode)
    {
      goto LABEL_23;
    }

    v46 = v23;
    v38 = [v23 remainingMonthlySpendWithLimit:monthlySpendLimitAmount];
    formattedStringValue3 = PKCurrencyAmountMake();
    [account feature];
    formattedStringValue2 = [formattedStringValue3 formattedStringValue];
    v37 = PKLocalizedFeatureString();

LABEL_22:
    v23 = v46;
LABEL_23:

    v14 = v47;
    goto LABEL_25;
  }

  if ([preferences showAvailableCredit])
  {
    v47 = v14;
    availableCredit = [accountSummary availableCredit];
    v37 = 0;
    if (!availableCredit || !currencyCode)
    {
      goto LABEL_23;
    }

    v46 = v23;
    v38 = PKCurrencyAmountMake();
    [account feature];
    formattedStringValue3 = [v38 formattedStringValue];
    formattedStringValue2 = formattedStringValue3;
    v37 = PKLocalizedFeatureString();
    goto LABEL_22;
  }

  v37 = 0;
LABEL_25:
  [cellCopy setAmountText:{v50, formattedStringValue2}];
  [cellCopy setCreditAvailableText:v37];
  if (selfCopy->_isCompactUI)
  {
    v40 = v49;
  }

  else
  {
    v40 = v48;
  }

  v41 = PKFontForDefaultDesign(v40, 0);
  [cellCopy setCreditAvailableFont:v41];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [cellCopy setCreditAvailableTextColor:secondaryLabelColor];

  v43 = [(PKCreditBalanceAndPaymentPresenter *)selfCopy _useAccessibilityLayoutForCollectionView:viewCopy];
  [cellCopy setUseAccessibilityLayout:v43];
  [cellCopy setWantsCustomAppearance:1];
  [cellCopy setWantsDefaultHighlightBehavior:1];
  [cellCopy setMaskType:3];
  v44 = +[(PKDashboardCollectionViewCell *)PKCreditBalanceCell];
  [cellCopy setBackgroundColor:v44];

  [cellCopy setItem:itemCopy];
}

- (void)_configureBalanceCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  viewCopy = view;
  itemCopy = item;
  account = [itemCopy account];
  creditDetails = [account creditDetails];
  currencyCode = [creditDetails currencyCode];

  [account stateReason];
  v12 = PKAccountStateReasonIsInMerge();
  v13 = v12;
  if (v12)
  {
    v14 = 2;
    v15 = PKLocalizedFeatureString();
  }

  else
  {
    [account feature];
    v15 = PKLocalizedFeatureString();
    v14 = 1;
  }

  v46 = v15;
  [cellCopy setBalanceText:v15];
  [cellCopy setBalanceLabelNumberOfLines:v14];
  v16 = *MEMORY[0x1E69DDD28];
  v17 = *MEMORY[0x1E69DDD80];
  if (self->_isCompactUI)
  {
    v18 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v18 = *MEMORY[0x1E69DDD80];
  }

  v19 = PKFontForDefaultDesign(v18, 0, 0x8000, 0);
  [cellCopy setBalanceFont:v19];

  creditDetails2 = [account creditDetails];
  accountSummary = [creditDetails2 accountSummary];

  formattedStringValue2 = 0;
  if ((v13 & 1) == 0)
  {
    v23 = currencyCode;
    creditDetails3 = [account creditDetails];
    cardBalance = [creditDetails3 cardBalance];

    amount = [cardBalance amount];
    zero = [MEMORY[0x1E696AB90] zero];
    v28 = [amount compare:zero];

    if (v28 == -1)
    {
      negativeValue = [cardBalance negativeValue];

      formattedStringValue = [negativeValue formattedStringValue];
      formattedStringValue2 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

      cardBalance = negativeValue;
    }

    else
    {
      formattedStringValue2 = [cardBalance formattedStringValue];
    }

    if (self->_isCompactUI)
    {
      v31 = MEMORY[0x1E69DDDC0];
    }

    else
    {
      v31 = MEMORY[0x1E69DDDB8];
    }

    v32 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *v31, 0, 2, 0, *MEMORY[0x1E69DB958]);
    [cellCopy setAmountFont:v32];

    currencyCode = v23;
  }

  [cellCopy setAmountText:formattedStringValue2];
  v44 = accountSummary;
  availableCredit = [accountSummary availableCredit];
  v34 = availableCredit;
  if (availableCredit)
  {
    PKCurrencyAmountCreate(availableCredit, currencyCode);
    v36 = v35 = currencyCode;
    [account feature];
    formattedStringValue3 = [v36 formattedStringValue];
    v37 = PKLocalizedFeatureString();
  }

  else
  {
    v37 = 0;
    v35 = currencyCode;
  }

  [cellCopy setCreditAvailableText:{v37, formattedStringValue3}];
  if (self->_isCompactUI)
  {
    v38 = v16;
  }

  else
  {
    v38 = v17;
  }

  v39 = PKFontForDefaultDesign(v38, 0, 0x8000, 0);
  [cellCopy setCreditAvailableFont:v39];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [cellCopy setCreditAvailableTextColor:secondaryLabelColor];

  v41 = [(PKCreditBalanceAndPaymentPresenter *)self _useAccessibilityLayoutForCollectionView:viewCopy];
  [cellCopy setUseAccessibilityLayout:v41];
  [cellCopy setWantsCustomAppearance:1];
  [cellCopy setWantsDefaultHighlightBehavior:1];
  [cellCopy setMaskType:3];
  v42 = +[(PKDashboardCollectionViewCell *)PKCreditBalanceCell];
  [cellCopy setBackgroundColor:v42];

  [cellCopy setItem:itemCopy];
}

- (void)_configureActivityCell:(id)cell forItem:(id)item sizing:(BOOL)sizing inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  account = [itemCopy account];
  if (PKBroadwaySummaryType() <= 2)
  {
    [account feature];
    v14 = PKLocalizedFeatureString();
    [cellCopy setTitle:v14];
  }

  if (!sizing)
  {
    chartView = [cellCopy chartView];
    summary = [itemCopy summary];
    [chartView configureWithSummary:summary presentationStyle:3];
  }

  v17 = *MEMORY[0x1E69DDD28];
  v18 = *MEMORY[0x1E69DDD80];
  if (self->_isCompactUI)
  {
    v19 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v19 = *MEMORY[0x1E69DDD80];
  }

  v20 = PKFontForDefaultDesign(v19, 0, 0x8000, 0);
  [cellCopy setTitleFont:v20];

  summary2 = [itemCopy summary];
  rewards = [summary2 rewards];
  totalAmount = [rewards totalAmount];

  formattedStringValue = [totalAmount formattedStringValue];
  v25 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

  v26 = PKLocalizedFeatureString();
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v25, v26];
  [cellCopy setRewardsSummary:v27];

  if (self->_isCompactUI)
  {
    v28 = v17;
  }

  else
  {
    v28 = v18;
  }

  v29 = PKFontForDefaultDesign(v28, 0, 0x8000, 0);
  [cellCopy setRewardsSummaryFont:v29];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [cellCopy setRewardsSummaryTextColor:secondaryLabelColor];

  v31 = [(PKCreditBalanceAndPaymentPresenter *)self _useAccessibilityLayoutForCollectionView:viewCopy];
  [cellCopy setUseAccessibilityLayout:v31];
  [cellCopy setWantsCustomAppearance:1];
  [cellCopy setWantsDefaultHighlightBehavior:1];
  [cellCopy setMaskType:3];
  v32 = +[(PKDashboardCollectionViewCell *)PKCreditActivityCell];
  [cellCopy setBackgroundColor:v32];

  [cellCopy setItem:itemCopy];
}

- (BOOL)_useAccessibilityLayoutForCollectionView:(id)view
{
  traitCollection = [view traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC58]) != NSOrderedAscending;

  return v5;
}

- (id)_accountServiceResoultionControllerWithItem:(id)item
{
  itemCopy = item;
  account = [itemCopy account];
  transactionSourceCollection = [itemCopy transactionSourceCollection];
  account2 = [(PKAccountServiceAccountResolutionController *)self->_resolutionController account];
  transactionSourceCollection2 = [(PKAccountServiceAccountResolutionController *)self->_resolutionController transactionSourceCollection];
  if (self->_resolutionController)
  {
    accountIdentifier = [account accountIdentifier];
    accountIdentifier2 = [account2 accountIdentifier];
    if (PKEqualObjects())
    {
      v11 = PKEqualObjects();

      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = [PKAccountServiceAccountResolutionController alloc];
  account3 = [itemCopy account];
  accountUserCollection = [itemCopy accountUserCollection];
  v15 = [(PKAccountServiceAccountResolutionController *)v12 initWithAccount:account3 accountUserCollection:accountUserCollection transactionSourceCollection:transactionSourceCollection];
  resolutionController = self->_resolutionController;
  self->_resolutionController = v15;

  [(PKAccountServiceAccountResolutionController *)self->_resolutionController setDelegate:self];
LABEL_7:
  v17 = self->_resolutionController;
  v18 = v17;

  return v17;
}

- (void)paymentButtonTappedForItem:(id)item
{
  v3 = [(PKCreditBalanceAndPaymentPresenter *)self _accountServiceResoultionControllerWithItem:item];
  [v3 presentFlowForAccountResolution:1 configuration:0 completion:0];
}

- (void)accountServiceAccountResolutionController:(id)controller requestsPresentViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    pkui_frontMostViewController = [WeakRetained pkui_frontMostViewController];
    [pkui_frontMostViewController presentViewController:viewControllerCopy animated:1 completion:0];
  }
}

@end