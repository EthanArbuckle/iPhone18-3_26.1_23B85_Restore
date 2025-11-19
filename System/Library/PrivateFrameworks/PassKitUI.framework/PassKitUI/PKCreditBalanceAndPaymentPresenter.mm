@interface PKCreditBalanceAndPaymentPresenter
- (BOOL)_useAccessibilityLayoutForCollectionView:(id)a3;
- (BOOL)cellIsIndependentForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (BOOL)cellIsStackableForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKCreditBalanceAndPaymentPresenter)initWithViewController:(id)a3;
- (id)_accountServiceResoultionControllerWithItem:(id)a3;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureAccountUserSpendingCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)_configureActivityCell:(id)a3 forItem:(id)a4 sizing:(BOOL)a5 inCollectionView:(id)a6 forIndexPath:(id)a7;
- (void)_configureBalanceCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)_configurePaymentDueCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)accountServiceAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)paymentButtonTappedForItem:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKCreditBalanceAndPaymentPresenter

- (PKCreditBalanceAndPaymentPresenter)initWithViewController:(id)a3
{
  v4 = a3;
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
    v11 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v10 setLocale:v11];

    [(NSDateFormatter *)v5->_monthDayFormatter setLocalizedDateFormatFromTemplate:@"MMM d"];
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    monthFormatter = v5->_monthFormatter;
    v5->_monthFormatter = v12;

    v14 = v5->_monthFormatter;
    v15 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v14 setLocale:v15];

    [(NSDateFormatter *)v5->_monthFormatter setLocalizedDateFormatFromTemplate:@"MMMM"];
    objc_storeWeak(&v5->_viewController, v4);
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

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = [v11 type];
  v13 = 0;
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        v13 = [v9 dequeueReusableCellWithReuseIdentifier:@"balancePresenter" forIndexPath:v10];
        [(PKCreditBalanceAndPaymentPresenter *)self _configureAccountUserSpendingCell:v13 forItem:v11 inCollectionView:v9 forIndexPath:v10];
      }
    }

    else
    {
      v13 = [v9 dequeueReusableCellWithReuseIdentifier:@"balancePresenter" forIndexPath:v10];
      [(PKCreditBalanceAndPaymentPresenter *)self _configureBalanceCell:v13 forItem:v11 inCollectionView:v9 forIndexPath:v10];
    }
  }

  else if (v12 == 2 || v12 == 3)
  {
    v13 = [v9 dequeueReusableCellWithReuseIdentifier:@"activityPresenter" forIndexPath:v10];
    [(PKCreditBalanceAndPaymentPresenter *)self _configureActivityCell:v13 forItem:v11 sizing:0 inCollectionView:v9 forIndexPath:v10];
  }

  else if (v12 == 4)
  {
    v13 = [v9 dequeueReusableCellWithReuseIdentifier:@"paymentDuePresenter" forIndexPath:v10];
    [(PKCreditBalanceAndPaymentPresenter *)self _configurePaymentDueCell:v13 forItem:v11 inCollectionView:v9 forIndexPath:v10];
  }

  return v13;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  v14 = [v13 type];
  if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        [(PKCreditBalanceAndPaymentPresenter *)self _configureAccountUserSpendingCell:v15 forItem:v13 inCollectionView:v11 forIndexPath:v12];
      }
    }

    else
    {
      [(PKCreditBalanceAndPaymentPresenter *)self _configureBalanceCell:v15 forItem:v13 inCollectionView:v11 forIndexPath:v12];
    }
  }

  else if (v14 == 2 || v14 == 3)
  {
    [(PKCreditBalanceAndPaymentPresenter *)self _configureActivityCell:v15 forItem:v13 sizing:0 inCollectionView:v11 forIndexPath:v12];
  }

  else if (v14 == 4)
  {
    [(PKCreditBalanceAndPaymentPresenter *)self _configurePaymentDueCell:v15 forItem:v13 inCollectionView:v11 forIndexPath:v12];
  }
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
  v25 = [v11 traitCollection];
  v26 = [v25 preferredContentSizeCategory];
  v27 = UIContentSizeCategoryCompareToCategory(v24, v26);

  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v28.n128_f64[0] = a5 + v28.n128_f64[0] * -2.0;
  v29.n128_f64[0] = (v28.n128_f64[0] + -8.0) * 0.5;
  if (v27 == NSOrderedDescending)
  {
    v28.n128_f64[0] = (v28.n128_f64[0] + -8.0) * 0.5;
  }

  PKFloatFloorToPixel(v28, v29);
  v31 = v30;
  v32 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PKCreditBalanceAndPaymentPresenter_sizeForItem_inCollectionView_safeAreaWidth_atIndexPath___block_invoke;
  aBlock[3] = &unk_1E8014688;
  v95 = v27 == NSOrderedDescending;
  aBlock[4] = self;
  v33 = v32;
  v90 = v33;
  v34 = v11;
  v91 = v34;
  v35 = v12;
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
  v55 = [v47 type];
  if (v55 <= 1)
  {
    if (!v55)
    {
      v56 = v41[2](v41);
      goto LABEL_21;
    }

    if (v55 != 1)
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

  if (v55 == 2)
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

  if (v55 == 3)
  {
    v56 = v42[2](v42);
    goto LABEL_21;
  }

  if (v55 != 4)
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

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v53[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 type];
  v12 = 0;
  if (v11 <= 1)
  {
    if (v11 <= 1)
    {
      v23 = [PKCreditBalanceDetailsViewController alloc];
      v24 = [v9 transactionSourceCollection];
      v25 = [v9 familyCollection];
      v26 = [MEMORY[0x1E69B8EF8] sharedService];
      v27 = [v9 account];
      v28 = [v9 accountUserCollection];
      v29 = [v9 physicalCards];
      v18 = [(PKCreditBalanceDetailsViewController *)v23 initWithStyle:0 transactionSourceCollection:v24 familyCollection:v25 webService:v26 account:v27 accountUserCollection:v28 physicalCards:v29 statement:0 previousStatements:0];

      v30 = [v10 pkui_viewControllerFromResponderChain];
      v31 = [v30 navigationController];
      [v31 pushViewController:v18 animated:1];

      v22 = MEMORY[0x1E69BA3B0];
      goto LABEL_8;
    }
  }

  else
  {
    v51 = self;
    if ((v11 - 2) < 2)
    {
      v47 = [PKSpendingSummaryViewController alloc];
      v50 = [v9 transactionSourceCollection];
      v42 = [v9 familyCollection];
      v49 = [v9 avatarManager];
      v46 = [v9 account];
      v45 = [v9 accountUserCollection];
      v44 = [v9 physicalCards];
      v41 = [v9 summaryFetcher];
      v40 = [v9 weeks];
      v39 = [v9 months];
      v13 = [v9 years];
      v14 = PKBroadwaySummaryType();
      v15 = [v9 mostRecentTransactions];
      v16 = [v9 pendingPayments];
      [v9 upcomingScheduledPayments];
      v17 = v43 = v10;
      v48 = [(PKSpendingSummaryViewController *)v47 initWithTransactionSourceCollection:v50 familyCollection:v42 avatarManager:v49 account:v46 accountUserCollection:v45 physicalCards:v44 fetcher:v41 weeks:v40 months:v39 years:v13 type:v14 unit:0x7FFFFFFFFFFFFFFFLL currentMonthTransactions:v15 pendingPayments:v16 upcomingScheduledPayments:v17 dispayType:0];

      v10 = v43;
      v18 = v48;

      WeakRetained = objc_loadWeakRetained(&v51->_viewController);
      [(PKSpendingSummaryViewController *)v48 setDelegate:WeakRetained];

      v20 = [v43 pkui_viewControllerFromResponderChain];
      v21 = [v20 navigationController];
      [v21 pushViewController:v48 animated:1];

      v22 = MEMORY[0x1E69BB2A8];
LABEL_8:
      v12 = *v22;

      goto LABEL_9;
    }

    if (v11 == 4)
    {
      v18 = [(PKCreditBalanceAndPaymentPresenter *)self _accountServiceResoultionControllerWithItem:v9];
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
  v37 = [v9 transactionSourceCollection];
  v38 = [v37 paymentPass];
  [v36 reportDashboardEventIfNecessary:v35 forPass:v38];
}

- (BOOL)cellIsStackableForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = [a3 type];
  if (v8 != 3 && v8)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = ![(PKCreditBalanceAndPaymentPresenter *)self _useAccessibilityLayoutForCollectionView:v7];
  }

  return v9;
}

- (BOOL)cellIsIndependentForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = [a3 type] <= 4 && -[PKCreditBalanceAndPaymentPresenter _useAccessibilityLayoutForCollectionView:](self, "_useAccessibilityLayoutForCollectionView:", v7);

  return v8;
}

- (void)_configurePaymentDueCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v231 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v183 = a5;
  v182 = a6;
  v11 = [v10 account];
  [v11 feature];
  v12 = [v11 creditDetails];
  v13 = [v12 accountSummary];
  v14 = [v13 paymentDueDate];
  v198 = v12;
  v189 = [v12 createdDate];
  v191 = v13;
  v190 = [v13 currentStatement];
  v15 = [v10 upcomingScheduledPayments];
  v201 = [v10 pendingPayments];
  v194 = [MEMORY[0x1E69B8770] relevantScheduledPaymentFromScheduledPayments:v15 account:v11];
  v16 = objc_alloc(MEMORY[0x1E695DEE8]);
  v17 = *MEMORY[0x1E695D850];
  v18 = [v16 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v19 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v17];
  v20 = [v11 creditDetails];
  v21 = [v20 productTimeZone];

  v193 = v19;
  v187 = v21;
  [v19 setTimeZone:v21];
  v22 = [MEMORY[0x1E695DF00] date];
  v185 = v9;
  v186 = v22;
  v197 = v14;
  v188 = v18;
  if (v14)
  {
    v23 = v22;
    v24 = PKDateRangeNumberOfIntervalsForUnit();
    v25 = [v18 components:96 fromDate:v23 toDate:v14 options:0];
    v26 = [v25 hour];
    v14 = [v25 minute];
  }

  else
  {
    v26 = 0;
    v24 = 0;
  }

  v204 = PKLocalizedFeatureString();
  v203 = [MEMORY[0x1E69DC888] labelColor];
  v27 = +[PKDashboardViewController backgroundColor];
  v202 = [MEMORY[0x1E69DC888] labelColor];
  v28 = MEMORY[0x1E69B8770];
  v29 = [v10 mostRecentTransactions];
  v195 = v11;
  v192 = v15;
  v30 = [v28 paymentEducationStateForAccount:v11 mostRecentTransactions:v29 pendingPayments:v201 upcomingScheduledPayments:v15];

  v31 = 0;
  v32 = 0;
  v184 = v10;
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

      v132 = [v191 remainingMinimumPayment];
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v133 = v201;
      v134 = [v133 countByEnumeratingWithState:&v219 objects:v229 count:16];
      if (v134)
      {
        v135 = v134;
        v136 = *v220;
        do
        {
          v137 = 0;
          v138 = v132;
          do
          {
            if (*v220 != v136)
            {
              objc_enumerationMutation(v133);
            }

            v139 = [*(*(&v219 + 1) + 8 * v137) currencyAmount];
            v140 = [v139 amount];
            v132 = [v138 decimalNumberBySubtracting:v140];

            ++v137;
            v138 = v132;
          }

          while (v135 != v137);
          v135 = [v133 countByEnumeratingWithState:&v219 objects:v229 count:16];
        }

        while (v135);
      }

      v141 = [v198 currencyCode];
      v142 = PKCurrencyAmountMake();
      v143 = [v142 formattedStringValue];

      v175 = v143;
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
      if (v24 == 1 && v26 >= 13 || !v24 && v26 >= 13)
      {
        v200 = PKLocalizedFeatureString();
        v206 = PKLocalizedFeatureString();
        v175 = v50;
        v209 = PKLocalizedFeatureString();
        goto LABEL_90;
      }

      if ((v26 - 1) > 0xB)
      {
        v200 = PKLocalizedFeatureString();
        v46 = v204;
        if (v26 || v14 < 2)
        {
          v174 = PKLocalizedFeatureString();
        }

        else
        {
          v174 = PKLocalizedString(&cfstr_DashboardMinut.isa, &cfstr_Ld.isa, v14);
        }

        v206 = v174;
        v209 = 0;
        v31 = 0;
        goto LABEL_91;
      }

      v200 = PKLocalizedFeatureString();
      PKLocalizedString(&cfstr_DashboardHours.isa, &cfstr_Ld.isa, v26);
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
      v52 = [MEMORY[0x1E69DC888] systemRedColor];

      v32 = 0;
      LODWORD(v50) = 0;
      v31 = 0;
      v209 = 0;
      v202 = v52;
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

      v147 = v27;
      v148 = 0;
      v149 = 0x1E69DC000;
      goto LABEL_158;
    }

    if ([v195 showBillPaymentInterestSummary])
    {
      v53 = [v191 unpostedInterest];
      v54 = v185;
      if (v53 && ([MEMORY[0x1E696AB90] zero], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v53, "compare:", v55), v55, v56 == 1))
      {
        v57 = PKLocalizedFeatureString();
      }

      else
      {
        v91 = [v191 remainingStatementBalance];
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v92 = v201;
        v93 = [v92 countByEnumeratingWithState:&v215 objects:v228 count:16];
        if (v93)
        {
          v94 = v93;
          v95 = *v216;
          do
          {
            v96 = 0;
            v97 = v91;
            do
            {
              if (*v216 != v95)
              {
                objc_enumerationMutation(v92);
              }

              v98 = [*(*(&v215 + 1) + 8 * v96) currencyAmount];
              v99 = [v98 amount];
              v91 = [v97 decimalNumberBySubtracting:v99];

              ++v96;
              v97 = v91;
            }

            while (v94 != v96);
            v94 = [v92 countByEnumeratingWithState:&v215 objects:v228 count:16];
          }

          while (v94);
        }

        v100 = [v198 currencyCode];
        v101 = PKCurrencyAmountMake();
        v102 = [v101 formattedStringValue];

        if (v197)
        {
          v103 = [(NSDateFormatter *)self->_monthDayFormatter stringFromDate:?];
        }

        else
        {
          v103 = 0;
        }

        v54 = v185;
        v175 = v102;
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
      v86 = [v190 openingDate];
      v87 = [v190 closingDate];
      v88 = v87;
      v181 = v27;
      v200 = v85;
      if (v86 && v87 && [v190 monthNumber] != 0x7FFFFFFFFFFFFFFFLL)
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

            v129 = [*(*(&v211 + 1) + 8 * i) scheduleDetails];
            v130 = [v129 preset];

            if (v130 == 3)
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

    v34 = [v194 scheduleDetails];
    v35 = [v34 scheduledDate];

    v36 = [v193 components:28 fromDate:v35];
    v199 = [v193 dateFromComponents:v36];

    v37 = [v188 components:28 fromDate:v186];
    v38 = [MEMORY[0x1E695DFE8] localTimeZone];
    v39 = [v38 secondsFromGMT];

    v40 = [v193 timeZone];
    v41 = [v40 secondsFromGMT];

    v42 = [MEMORY[0x1E695DFE8] localTimeZone];
    v43 = [v187 isEqualToTimeZone:v42];

    v44 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/New_York"];
    v45 = [v187 isEqualToTimeZone:v44];

    if ((v43 & 1) == 0 && v45)
    {
      v43 = v41 >= v39 && v41 - v39 < 21601;
    }

    v179 = v37;
    v208 = v36;
    v104 = [v193 components:28 fromDateComponents:v37 toDateComponents:v36 options:0];
    v105 = [v104 year];
    v106 = [v104 month];
    v177 = v104;
    v107 = [v104 day];
    v108 = [v194 scheduleDetails];
    v109 = [v108 preset];

    v110 = [v194 currencyAmount];
    v111 = [v110 amount];

    LODWORD(v50) = v109 == 3;
    if (v109 == 3)
    {
      v112 = [v191 remainingStatementBalance];

      v113 = [MEMORY[0x1E696AB90] zero];
      v114 = PKEqualObjects();

      if (v114)
      {

        v111 = 0;
      }

      else
      {
        v111 = v112;
      }
    }

    v115 = [v198 currencyCode];
    v116 = PKFormattedCurrencyStringFromNumber();

    if (v105)
    {
      v117 = 0;
    }

    else
    {
      v117 = v43;
    }

    if (v106)
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
        v121 = [v195 creditDetails];
        v122 = [v121 productTimeZone];
        v123 = PKMediumDayAndLongMonthStringFromDate(v199, v122);

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
        v32 = v109 != 3;
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
  v59 = [v10 mostRecentTransactions];
  v60 = [v59 firstObject];
  v61 = [v60 referenceIdentifier];
  v62 = [v60 amount];
  v63 = [v62 pk_absoluteValue];

  v210 = v61;
  v200 = v58;
  if (!v61)
  {
    v69 = v60;
    goto LABEL_128;
  }

  v205 = v60;
  v207 = v63;
  v180 = v27;
  v64 = [v60 serviceIdentifier];
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v178 = v59;
  v65 = v59;
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
        v72 = [v71 referenceIdentifier];
        v73 = v210;
        v74 = v73;
        if (v72 == v73)
        {

          goto LABEL_41;
        }

        if (v72)
        {
          v75 = [v72 isEqualToString:v73];

          if (!v75)
          {
            goto LABEL_54;
          }

LABEL_41:
          v74 = [v71 serviceIdentifier];
          v76 = v64;
          v77 = v76;
          if (v74 == v76)
          {

            v79 = v74;
          }

          else
          {
            if (v64 && v74)
            {
              v78 = [v74 isEqualToString:v76];

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
              v80 = [v205 transactionStatus];

              if (v80)
              {
                continue;
              }
            }

            v72 = [v71 amount];
            v79 = [v72 pk_absoluteValue];
            v74 = v207;
            v207 = [v207 decimalNumberByAdding:v79];
          }

          v74 = v79;
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

  v59 = v178;
  v27 = v180;
  v63 = v207;
LABEL_128:
  v131 = [v198 currencyCode];
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
  v150 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];

  v147 = [MEMORY[0x1E69DC888] labelColor];

  v51 = v50;
  v203 = v150;
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

  [v54 setPaymentDueLabelTextColor:v202];
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

  v159 = [*(v149 + 2184) secondaryLabelColor];
  [v54 setDetailLabelTextColor:v159];

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

  v170 = [v54 payButton];
  [v170 setUserInteractionEnabled:0];
  [v54 setUseAccessibilityLayout:{-[PKCreditBalanceAndPaymentPresenter _useAccessibilityLayoutForCollectionView:](self, "_useAccessibilityLayoutForCollectionView:", v183)}];
  [v54 setPayButtonTitleColor:v147];
  [v54 setPayButtonTintColor:v203];
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

- (void)_configureAccountUserSpendingCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v56 = a3;
  v9 = a4;
  v51 = a5;
  v55 = [v9 account];
  v10 = [v9 familyCollection];
  v11 = [v10 currentUserAltDSID];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = PKCurrentUserAltDSID();
  }

  v14 = v13;

  v15 = [v9 accountUserCollection];
  v16 = [v15 accountUserWithAltDSID:v14];

  v17 = [v55 creditDetails];
  v54 = [v17 accountSummary];
  v18 = [v54 accountUserActivityForAccountUserAltDSID:v14];
  v52 = v17;
  v19 = [v17 currencyCode];
  v20 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v21 = [MEMORY[0x1E695DF00] date];
  v22 = [v20 components:8 fromDate:v21];
  [v22 month];

  v23 = v18;
  v24 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
  v25 = PKLocalizedFeatureString();
  [v56 setBalanceText:v25];

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
  [v56 setBalanceFont:v27];

  v28 = [v18 totalSpending];
  v29 = 0;
  if (v28 && v19)
  {
    v30 = PKCurrencyAmountMake();
    v29 = [v30 formattedStringValue];
  }

  v50 = v29;
  if (self->_isCompactUI)
  {
    v31 = MEMORY[0x1E69DDDC0];
  }

  else
  {
    v31 = MEMORY[0x1E69DDDB8];
  }

  v32 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *v31, 0, 2, 0, *MEMORY[0x1E69DB958]);
  [v56 setAmountFont:v32];

  v53 = v16;
  v33 = [v16 preferences];
  v34 = self;
  if ([v33 monthlySpendLimitEnabled])
  {
    v47 = v14;
    v35 = [v33 monthlySpendLimitAmount];
    v36 = v35;
    v37 = 0;
    if (!v28 || !v35 || !v19)
    {
      goto LABEL_23;
    }

    v46 = v23;
    v38 = [v23 remainingMonthlySpendWithLimit:v35];
    v39 = PKCurrencyAmountMake();
    [v55 feature];
    v45 = [v39 formattedStringValue];
    v37 = PKLocalizedFeatureString();

LABEL_22:
    v23 = v46;
LABEL_23:

    v14 = v47;
    goto LABEL_25;
  }

  if ([v33 showAvailableCredit])
  {
    v47 = v14;
    v36 = [v54 availableCredit];
    v37 = 0;
    if (!v36 || !v19)
    {
      goto LABEL_23;
    }

    v46 = v23;
    v38 = PKCurrencyAmountMake();
    [v55 feature];
    v39 = [v38 formattedStringValue];
    v45 = v39;
    v37 = PKLocalizedFeatureString();
    goto LABEL_22;
  }

  v37 = 0;
LABEL_25:
  [v56 setAmountText:{v50, v45}];
  [v56 setCreditAvailableText:v37];
  if (v34->_isCompactUI)
  {
    v40 = v49;
  }

  else
  {
    v40 = v48;
  }

  v41 = PKFontForDefaultDesign(v40, 0);
  [v56 setCreditAvailableFont:v41];

  v42 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v56 setCreditAvailableTextColor:v42];

  v43 = [(PKCreditBalanceAndPaymentPresenter *)v34 _useAccessibilityLayoutForCollectionView:v51];
  [v56 setUseAccessibilityLayout:v43];
  [v56 setWantsCustomAppearance:1];
  [v56 setWantsDefaultHighlightBehavior:1];
  [v56 setMaskType:3];
  v44 = +[(PKDashboardCollectionViewCell *)PKCreditBalanceCell];
  [v56 setBackgroundColor:v44];

  [v56 setItem:v9];
}

- (void)_configureBalanceCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v48 = a3;
  v45 = a5;
  v47 = a4;
  v9 = [v47 account];
  v10 = [v9 creditDetails];
  v11 = [v10 currencyCode];

  [v9 stateReason];
  v12 = PKAccountStateReasonIsInMerge();
  v13 = v12;
  if (v12)
  {
    v14 = 2;
    v15 = PKLocalizedFeatureString();
  }

  else
  {
    [v9 feature];
    v15 = PKLocalizedFeatureString();
    v14 = 1;
  }

  v46 = v15;
  [v48 setBalanceText:v15];
  [v48 setBalanceLabelNumberOfLines:v14];
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
  [v48 setBalanceFont:v19];

  v20 = [v9 creditDetails];
  v21 = [v20 accountSummary];

  v22 = 0;
  if ((v13 & 1) == 0)
  {
    v23 = v11;
    v24 = [v9 creditDetails];
    v25 = [v24 cardBalance];

    v26 = [v25 amount];
    v27 = [MEMORY[0x1E696AB90] zero];
    v28 = [v26 compare:v27];

    if (v28 == -1)
    {
      v29 = [v25 negativeValue];

      v30 = [v29 formattedStringValue];
      v22 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v30);

      v25 = v29;
    }

    else
    {
      v22 = [v25 formattedStringValue];
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
    [v48 setAmountFont:v32];

    v11 = v23;
  }

  [v48 setAmountText:v22];
  v44 = v21;
  v33 = [v21 availableCredit];
  v34 = v33;
  if (v33)
  {
    PKCurrencyAmountCreate(v33, v11);
    v36 = v35 = v11;
    [v9 feature];
    v43 = [v36 formattedStringValue];
    v37 = PKLocalizedFeatureString();
  }

  else
  {
    v37 = 0;
    v35 = v11;
  }

  [v48 setCreditAvailableText:{v37, v43}];
  if (self->_isCompactUI)
  {
    v38 = v16;
  }

  else
  {
    v38 = v17;
  }

  v39 = PKFontForDefaultDesign(v38, 0, 0x8000, 0);
  [v48 setCreditAvailableFont:v39];

  v40 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v48 setCreditAvailableTextColor:v40];

  v41 = [(PKCreditBalanceAndPaymentPresenter *)self _useAccessibilityLayoutForCollectionView:v45];
  [v48 setUseAccessibilityLayout:v41];
  [v48 setWantsCustomAppearance:1];
  [v48 setWantsDefaultHighlightBehavior:1];
  [v48 setMaskType:3];
  v42 = +[(PKDashboardCollectionViewCell *)PKCreditBalanceCell];
  [v48 setBackgroundColor:v42];

  [v48 setItem:v47];
}

- (void)_configureActivityCell:(id)a3 forItem:(id)a4 sizing:(BOOL)a5 inCollectionView:(id)a6 forIndexPath:(id)a7
{
  v33 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 account];
  if (PKBroadwaySummaryType() <= 2)
  {
    [v13 feature];
    v14 = PKLocalizedFeatureString();
    [v33 setTitle:v14];
  }

  if (!a5)
  {
    v15 = [v33 chartView];
    v16 = [v11 summary];
    [v15 configureWithSummary:v16 presentationStyle:3];
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
  [v33 setTitleFont:v20];

  v21 = [v11 summary];
  v22 = [v21 rewards];
  v23 = [v22 totalAmount];

  v24 = [v23 formattedStringValue];
  v25 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v24);

  v26 = PKLocalizedFeatureString();
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v25, v26];
  [v33 setRewardsSummary:v27];

  if (self->_isCompactUI)
  {
    v28 = v17;
  }

  else
  {
    v28 = v18;
  }

  v29 = PKFontForDefaultDesign(v28, 0, 0x8000, 0);
  [v33 setRewardsSummaryFont:v29];

  v30 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v33 setRewardsSummaryTextColor:v30];

  v31 = [(PKCreditBalanceAndPaymentPresenter *)self _useAccessibilityLayoutForCollectionView:v12];
  [v33 setUseAccessibilityLayout:v31];
  [v33 setWantsCustomAppearance:1];
  [v33 setWantsDefaultHighlightBehavior:1];
  [v33 setMaskType:3];
  v32 = +[(PKDashboardCollectionViewCell *)PKCreditActivityCell];
  [v33 setBackgroundColor:v32];

  [v33 setItem:v11];
}

- (BOOL)_useAccessibilityLayoutForCollectionView:(id)a3
{
  v3 = [a3 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC58]) != NSOrderedAscending;

  return v5;
}

- (id)_accountServiceResoultionControllerWithItem:(id)a3
{
  v4 = a3;
  v5 = [v4 account];
  v6 = [v4 transactionSourceCollection];
  v7 = [(PKAccountServiceAccountResolutionController *)self->_resolutionController account];
  v8 = [(PKAccountServiceAccountResolutionController *)self->_resolutionController transactionSourceCollection];
  if (self->_resolutionController)
  {
    v9 = [v5 accountIdentifier];
    v10 = [v7 accountIdentifier];
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
  v13 = [v4 account];
  v14 = [v4 accountUserCollection];
  v15 = [(PKAccountServiceAccountResolutionController *)v12 initWithAccount:v13 accountUserCollection:v14 transactionSourceCollection:v6];
  resolutionController = self->_resolutionController;
  self->_resolutionController = v15;

  [(PKAccountServiceAccountResolutionController *)self->_resolutionController setDelegate:self];
LABEL_7:
  v17 = self->_resolutionController;
  v18 = v17;

  return v17;
}

- (void)paymentButtonTappedForItem:(id)a3
{
  v3 = [(PKCreditBalanceAndPaymentPresenter *)self _accountServiceResoultionControllerWithItem:a3];
  [v3 presentFlowForAccountResolution:1 configuration:0 completion:0];
}

- (void)accountServiceAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained pkui_frontMostViewController];
    [v8 presentViewController:v9 animated:1 completion:0];
  }
}

@end