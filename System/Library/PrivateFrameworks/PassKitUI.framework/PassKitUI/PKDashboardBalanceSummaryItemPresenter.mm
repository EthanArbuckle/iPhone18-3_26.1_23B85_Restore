@interface PKDashboardBalanceSummaryItemPresenter
- (BOOL)_statementIsFromMonthPriorToSummaryForItem:(id)a3;
- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardBalanceSummaryItemPresenter)init;
- (id)_createPreviewController;
- (id)_formattedCurrencyAmountWithPlusIfNeeded:(id)a3;
- (id)_readableFileTypeForFormat:(id)a3 feature:(unint64_t)a4;
- (id)_spinnerAccessory;
- (id)_statementCellTitleForItem:(id)a3;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (id)provideDataForItem:(id)a3;
- (id)statementIcon;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 forSizing:(BOOL)a7;
- (void)_configureCellForReuse:(id)a3;
- (void)_configureDailyCashCell:(id)a3 forItem:(id)a4;
- (void)_configureExportStatementDataCell:(id)a3 forItem:(id)a4;
- (void)_configureInstallmentBalanceCell:(id)a3 forItem:(id)a4;
- (void)_configureInterestCell:(id)a3 forItem:(id)a4;
- (void)_configureMergeBalanceCell:(id)a3 forItem:(id)a4;
- (void)_configureMergeNoticeCell:(id)a3 forItem:(id)a4;
- (void)_configureMonthlySpendLimitCell:(id)a3 forItem:(id)a4;
- (void)_configurePaymentsAndCreditsCell:(id)a3 forItem:(id)a4;
- (void)_configurePriorStatementBalanceCell:(id)a3 forItem:(id)a4;
- (void)_configureRewardsSummaryCell:(id)a3 forItem:(id)a4;
- (void)_configureSpendingCell:(id)a3 forItem:(id)a4;
- (void)_configureStatementBalanceCell:(id)a3 forItem:(id)a4;
- (void)_configureStatementCell:(id)a3 forItem:(id)a4;
- (void)_configureStatementDownloadCell:(id)a3 forItem:(id)a4;
- (void)_configureTotalBalanceCell:(id)a3 forItem:(id)a4;
- (void)_configureTransactionLimitCell:(id)a3 forItem:(id)a4;
- (void)_downloadAndPresentStatementForItem:(id)a3 inCollectionView:(id)a4;
- (void)_downloadExportedStatementDataForItem:(id)a3 withFileFormat:(id)a4 atIndexPath:(id)a5 inCollectionView:(id)a6;
- (void)_selectFileFormatForExportedStatementDataForItem:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardBalanceSummaryItemPresenter

- (PKDashboardBalanceSummaryItemPresenter)init
{
  v15.receiver = self;
  v15.super_class = PKDashboardBalanceSummaryItemPresenter;
  v2 = [(PKDashboardBalanceSummaryItemPresenter *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonthYear = v2->_formatterMonthYear;
    v2->_formatterMonthYear = v3;

    [(NSDateFormatter *)v2->_formatterMonthYear setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonthAndDay = v2->_formatterMonthAndDay;
    v2->_formatterMonthAndDay = v5;

    [(NSDateFormatter *)v2->_formatterMonthAndDay setLocalizedDateFormatFromTemplate:@"MMM d"];
    v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonthDayYear = v2->_formatterMonthDayYear;
    v2->_formatterMonthDayYear = v7;

    [(NSDateFormatter *)v2->_formatterMonthDayYear setLocalizedDateFormatFromTemplate:@"MMM d yyyy"];
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonth = v2->_formatterMonth;
    v2->_formatterMonth = v9;

    [(NSDateFormatter *)v2->_formatterMonth setLocalizedDateFormatFromTemplate:@"MMMM"];
    v11 = [PKPaymentTransactionCollectionViewCell alloc];
    v12 = [(PKPaymentTransactionCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleTransactionCell = v2->_sampleTransactionCell;
    v2->_sampleTransactionCell = v12;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"PKDashboardBalanceSummaryItemPresenterIdentifier";
  v4[1] = @"PKDashboardStatementSummaryItemPresenterIdentifier";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 type];
  if (v11 > 0x14)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E8013628[v11];
  }

  v13 = [v9 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v8];
  [(PKDashboardBalanceSummaryItemPresenter *)self _configureCell:v13 forItem:v10 inCollectionView:v9 forIndexPath:v8 forSizing:0];

  return v13;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v42 = v11;
  v15 = [v42 transactionGroup];

  if (v15)
  {
    v16 = [PKTransactionHistoryViewController alloc];
    v17 = [v42 transactionGroup];
    v18 = [v42 transactionSourceCollection];
    v19 = [v42 familyCollection];
    v20 = [v42 account];
    v21 = [v42 accountUserCollection];
    v22 = [v42 physicalCards];
    v23 = [(PKTransactionHistoryViewController *)v16 initWithTransactionGroup:v17 transactionSourceCollection:v18 familyCollection:v19 account:v20 accountUserCollection:v21 physicalCards:v22 fetcher:0 detailViewStyle:0];

    if ([v14 pk_settings_useStateDrivenNavigation])
    {
      [v14 pk_settings_pushViewController:v23];
    }

    else
    {
      [v14 pushViewController:v23 animated:1];
    }
  }

  else if ([v42 type] == 2 || !objc_msgSend(v42, "type"))
  {
    v40 = v13;
    v41 = v12;
    v24 = v42;
    v38 = [PKCreditBalanceDetailsViewController alloc];
    v39 = self;
    cellStyle = self->_cellStyle;
    v36 = [v24 transactionSourceCollection];
    v25 = [v24 familyCollection];
    v26 = [v24 webService];
    v27 = [v24 account];
    v28 = [v24 accountUserCollection];
    v29 = [v24 physicalCards];
    v30 = [v24 statement];
    v31 = [v24 statements];
    v32 = v26;
    v33 = [(PKCreditBalanceDetailsViewController *)v38 initWithStyle:cellStyle transactionSourceCollection:v36 familyCollection:v25 webService:v26 account:v27 accountUserCollection:v28 physicalCards:v29 statement:v30 previousStatements:v31];

    if ([v14 pk_settings_useStateDrivenNavigation])
    {
      [v14 pk_settings_pushViewController:v33];
    }

    else
    {
      [v14 pushViewController:v33 animated:1];
    }

    if (v39->_cellStyle == 1)
    {
      v34 = [(PKCreditBalanceDetailsViewController *)v33 navigationItem];
      v35 = [(PKDashboardBalanceSummaryItemPresenter *)v39 _statementCellTitleForItem:v24];
      [v34 setTitle:v35];
    }

    v13 = v40;
    v12 = v41;
  }

  else if ([v42 type] == 6)
  {
    [(PKDashboardBalanceSummaryItemPresenter *)self _downloadAndPresentStatementForItem:v42 inCollectionView:v12];
  }

  else if ([v42 type] == 7)
  {
    [(PKDashboardBalanceSummaryItemPresenter *)self _selectFileFormatForExportedStatementDataForItem:v42 atIndexPath:v13 inCollectionView:v12];
  }
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 type] == 2 && (v13 = self->_sampleTransactionCell) != 0)
  {
    v14 = v13;
    [(PKDashboardBalanceSummaryItemPresenter *)self _configureCell:v13 forItem:v10 inCollectionView:v11 forIndexPath:v12 forSizing:1];
    [(PKPaymentTransactionCollectionViewCell *)v14 sizeThatFits:a5, 3.40282347e38];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
  }

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v6 = a3;
  if ([v6 type] == 6)
  {
    v7 = 88;
  }

  else
  {
    if ([v6 type] != 7)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = 89;
  }

  v8 = *(&self->super.isa + v7) ^ 1;
LABEL_7:

  return v8 & 1;
}

- (id)_formattedCurrencyAmountWithPlusIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [v3 formattedStringValue];
  v5 = [v3 amount];

  LODWORD(v3) = [v5 pk_isNegativeNumber];
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v4);
  }

  v7 = v6;

  return v7;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 forSizing:(BOOL)a7
{
  v12 = a3;
  v9 = a4;
  switch([v9 type])
  {
    case 0:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureStatementBalanceCell:v12 forItem:v9];
      break;
    case 1:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configurePriorStatementBalanceCell:v12 forItem:v9];
      break;
    case 2:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureStatementCell:v12 forItem:v9];
      break;
    case 3:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureSpendingCell:v12 forItem:v9];
      break;
    case 4:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureInterestCell:v12 forItem:v9];
      break;
    case 5:
    case 8:
    case 9:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configurePaymentsAndCreditsCell:v12 forItem:v9];
      break;
    case 6:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureStatementDownloadCell:v12 forItem:v9];
      break;
    case 7:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureExportStatementDataCell:v12 forItem:v9];
      break;
    case 10:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureDailyCashCell:v12 forItem:v9];
      break;
    case 11:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureInstallmentBalanceCell:v12 forItem:v9];
      break;
    case 12:
    case 13:
    case 14:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureTotalBalanceCell:v12 forItem:v9];
      break;
    case 15:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureTransactionLimitCell:v12 forItem:v9];
      break;
    case 16:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureMonthlySpendLimitCell:v12 forItem:v9];
      break;
    case 17:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureMergeNoticeCell:v12 forItem:v9];
      break;
    case 18:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureMergeBalanceCell:v12 forItem:v9];
      break;
    case 19:
    case 20:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureRewardsSummaryCell:v12 forItem:v9];
      break;
    default:
      break;
  }

  v10 = [v9 type];
  if (v10 > 0x14)
  {
    v11 = MEMORY[0x1E69B9D90];
  }

  else
  {
    v11 = qword_1E80136D0[v10];
  }

  [v12 setAccessibilityIdentifier:*v11];
}

- (void)_configureStatementCell:(id)a3 forItem:(id)a4
{
  v36 = a3;
  v6 = a4;
  v7 = [v6 statement];
  v8 = [v36 transactionView];
  v9 = [v7 totalBalance];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [v7 statementBalance];
    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }
  }

  v11 = [v7 currencyCode];

  if (v11)
  {
    v12 = [v7 currencyCode];
    v11 = PKCurrencyAmountCreate(v10, v12);
  }

LABEL_7:
  v35 = v6;
  v13 = [(PKDashboardBalanceSummaryItemPresenter *)self _statementCellTitleForItem:v6];
  [v8 setPrimaryString:v13];
  formatterMonthAndDay = self->_formatterMonthAndDay;
  v15 = [v7 openingDate];
  v16 = [(NSDateFormatter *)formatterMonthAndDay stringFromDate:v15];

  formatterMonthDayYear = self->_formatterMonthDayYear;
  v18 = [v7 closingDate];
  v19 = [(NSDateFormatter *)formatterMonthDayYear stringFromDate:v18];

  v20 = PKLocalizedFeatureString();
  v21 = [v20 pk_uppercaseFirstStringForPreferredLocale];

  [v8 setSecondaryString:v21];
  if (v11)
  {
    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    [v11 formattedStringValue];
    v34 = v8;
    v23 = v21;
    v24 = v7;
    v25 = v19;
    v26 = self;
    v27 = v16;
    v28 = v10;
    v29 = v11;
    v31 = v30 = v13;
    v32 = [v22 initWithString:v31 attributes:0];

    v13 = v30;
    v11 = v29;
    v10 = v28;
    v16 = v27;
    self = v26;
    v19 = v25;
    v7 = v24;
    v21 = v23;
    v8 = v34;
    [v34 setTransactionValueAttributedText:v32];
  }

  else
  {
    [v8 setTransactionValueAttributedText:0];
  }

  [v8 setTertiaryString:0];
  v33 = [(PKDashboardBalanceSummaryItemPresenter *)self statementIcon];
  [v8 setPrimaryImage:v33];

  [v8 setShowsDisclosureView:1];
  [v36 setWantsListBehavior:1];
}

- (void)_configurePriorStatementBalanceCell:(id)a3 forItem:(id)a4
{
  v39 = a4;
  v6 = a3;
  v7 = [v39 statement];
  v8 = [v39 summary];
  v9 = [v39 mergeSummaryAccountDetails];
  v10 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  if (v9)
  {
    v11 = [v39 account];
    v12 = [v11 creditDetails];
    v13 = [v12 currencyCode];

    v14 = [v9 statementBalance];

    v15 = 0;
    if (v14 && v13)
    {
      v16 = [v9 statementBalance];
      v15 = PKCurrencyAmountMake();
    }

    v17 = [v15 formattedStringValue];
    [v10 setSecondaryText:v17];
  }

  else
  {
    if (v8 && ![(PKDashboardBalanceSummaryItemPresenter *)self _statementIsFromMonthPriorToSummaryForItem:v39])
    {
      v22 = PKLocalizedFeatureString();
      [v10 setSecondaryText:v22];

LABEL_15:
      v23 = [v8 balanceSummary];
      v24 = [v23 openingDate];
      v25 = [v23 closingDate];

      goto LABEL_18;
    }

    v18 = [v7 statementBalance];
    if (v18)
    {
      v19 = v18;
      v15 = [v7 currencyCode];

      if (v15)
      {
        v20 = [v7 statementBalance];
        v21 = [v7 currencyCode];
        v15 = PKCurrencyAmountCreate(v20, v21);
      }
    }

    else
    {
      v15 = 0;
    }

    v13 = [v15 formattedStringValue];
    [v10 setSecondaryText:v13];
  }

  if (v8)
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  v24 = [v7 openingDate];
  v25 = [v7 closingDate];
LABEL_18:

LABEL_19:
  if (v9)
  {
    v26 = [v9 ownerAltDSID];
    v27 = [v39 accountUserCollection];
    v28 = [v27 accountUserWithAltDSID:v26];

    if ([v28 isCurrentUser])
    {
      v29 = PKLocalizedFeatureString();
    }

    else
    {
      v30 = [v39 familyCollection];
      v31 = [v30 familyMemberForAltDSID:v26];

      v32 = MEMORY[0x1E69B8740];
      v33 = [v28 nameComponents];
      [v32 contactForFamilyMember:v31 nameComponents:v33 imageData:0];
      v38 = v8;
      v34 = v7;
      v36 = v35 = v6;

      v37 = [v36 givenName];
      v29 = PKLocalizedFeatureString();

      v6 = v35;
      v7 = v34;
      v8 = v38;
    }
  }

  else
  {
    v29 = PKLocalizedFeatureString();
  }

  [v10 setText:{v29, v37}];
  [v6 setContentConfiguration:v10];
}

- (void)_configureStatementBalanceCell:(id)a3 forItem:(id)a4
{
  v55 = a4;
  v6 = a3;
  v7 = [v55 statement];
  v8 = [v55 summary];
  v9 = [v55 mergeSummaryAccountDetails];
  v10 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  if (v9)
  {
    v11 = [v55 account];
    v12 = [v11 creditDetails];
    v13 = [v12 currencyCode];

    v14 = [v9 statementBalance];

    v15 = 0;
    if (v14 && v13)
    {
      v16 = [v9 statementBalance];
      v15 = PKCurrencyAmountMake();
    }

    v17 = [v15 formattedStringValue];
    [v10 setSecondaryText:v17];
  }

  else
  {
    if (v8 && ![(PKDashboardBalanceSummaryItemPresenter *)self _statementIsFromMonthPriorToSummaryForItem:v55])
    {
      v15 = PKLocalizedFeatureString();
      [v10 setSecondaryText:v15];
      goto LABEL_15;
    }

    v15 = [v7 statementBalance];
    if (v15)
    {
      v18 = [v7 currencyCode];

      if (v18)
      {
        v19 = [v7 statementBalance];
        v20 = [v7 currencyCode];
        v15 = PKCurrencyAmountCreate(v19, v20);
      }

      else
      {
        v15 = 0;
      }
    }

    v13 = [v15 formattedStringValue];
    [v10 setSecondaryText:v13];
  }

LABEL_15:
  v21 = [v55 mergeDate];
  v22 = [v55 account];
  v23 = [v22 creditDetails];
  v54 = [v23 productTimeZone];

  if (v8)
  {
    v24 = [v8 balanceSummary];
    v25 = [v24 openingDate];
    v26 = [v24 closingDate];

LABEL_17:
    v27 = 1;
    if (!v25)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (!v7)
  {
    v25 = 0;
    v26 = 0;
    if (!v21)
    {
      goto LABEL_34;
    }

    v43 = v54;
    if (!v54)
    {
LABEL_35:
      v38 = PKLocalizedFeatureString();
      goto LABEL_36;
    }

    v25 = PKStartOfMonthWithTimeZone();
    v26 = PKEndOfMonthWithTimeZone();
    goto LABEL_17;
  }

  v25 = [v7 openingDate];
  v26 = [v7 closingDate];
  v27 = 0;
  if (!v25)
  {
LABEL_34:
    v43 = v54;
    goto LABEL_35;
  }

LABEL_21:
  if (!v26)
  {
    goto LABEL_34;
  }

  v52 = v21;
  [v26 timeIntervalSinceDate:v25];
  v29 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v25 sinceDate:v28 * 0.5];
  v30 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v31 = v30;
  if (v27)
  {
    [v30 setMonth:-1];
  }

  v53 = v6;
  v32 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v50 = v31;
  v51 = v29;
  v49 = [v32 dateByAddingComponents:v31 toDate:v29 options:0];
  v33 = [v32 components:8 fromDate:?];
  [v33 month];

  if (v9)
  {
    v48 = v9;
    v34 = [v9 ownerAltDSID];
    v35 = [v55 accountUserCollection];
    v36 = [v35 accountUserWithAltDSID:v34];

    if ([v36 isCurrentUser])
    {
      v37 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
      v38 = PKLocalizedFeatureString();
    }

    else
    {
      [v55 familyCollection];
      v39 = v46 = v8;
      v37 = [v39 familyMemberForAltDSID:v34];

      v40 = MEMORY[0x1E69B8740];
      [v36 nameComponents];
      v41 = v47 = v7;
      v45 = [v40 contactForFamilyMember:v37 nameComponents:v41 imageData:0];

      v42 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
      v44 = [v45 givenName];
      v38 = PKLocalizedFeatureString();

      v8 = v46;
      v7 = v47;
    }

    v9 = v48;
  }

  else
  {
    v34 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
    v38 = PKLocalizedFeatureString();
  }

  v21 = v52;
  v6 = v53;
  v43 = v54;
LABEL_36:
  [v10 setText:{v38, v44}];
  [v6 setContentConfiguration:v10];
}

- (void)_configureSpendingCell:(id)a3 forItem:(id)a4
{
  v22 = a4;
  v5 = a3;
  v6 = [v22 summary];
  v7 = [v22 statement];
  v8 = v7;
  if (v6)
  {
    v9 = [v6 balanceSummary];
    v10 = [v9 purchases];

    v11 = [v6 balanceSummary];
    v12 = [v11 pendingPurchases];

    v13 = 0;
    if (v10 && v12)
    {
      v14 = [(NSDecimalNumber *)v10 decimalNumberByAdding:v12];
      v15 = [v22 account];
      v16 = [v15 creditDetails];
      v17 = [v16 currencyCode];
      v13 = PKCurrencyAmountCreate(v14, v17);
    }

    goto LABEL_7;
  }

  v18 = [v7 purchases];

  if (v18)
  {
    v10 = [v8 purchases];
    v12 = [v8 currencyCode];
    v13 = PKCurrencyAmountCreate(v10, v12);
LABEL_7:

    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:
  v19 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v20 = PKLocalizedFeatureString();
  [v19 setText:v20];

  v21 = [v13 formattedStringValue];
  [v19 setSecondaryText:v21];

  [v5 setContentConfiguration:v19];
}

- (void)_configureInterestCell:(id)a3 forItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v23 = [v5 summary];
  v7 = [v5 statement];
  v8 = [v23 balanceSummary];
  v9 = [v5 account];

  v10 = [v9 creditDetails];
  v11 = [v10 currencyCode];

  if (v23 && ([v8 interestCharged], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) && v11)
  {
    v13 = [v8 interestCharged];
  }

  else
  {
    v14 = [v7 interestCharged];
    if (v14)
    {
      v15 = v14;
      v16 = [v7 currencyCode];

      if (v16)
      {
        v17 = [v7 interestCharged];
        v18 = [v7 currencyCode];
        v19 = PKCurrencyAmountCreate(v17, v18);

        goto LABEL_10;
      }
    }

    v13 = [MEMORY[0x1E696AB90] zero];
  }

  v17 = v13;
  v19 = PKCurrencyAmountCreate(v13, v11);
LABEL_10:

  v20 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v21 = PKLocalizedFeatureString();
  [v20 setText:v21];

  v22 = [v19 formattedStringValue];
  [v20 setSecondaryText:v22];

  [v6 setContentConfiguration:v20];
}

- (void)_configurePaymentsAndCreditsCell:(id)a3 forItem:(id)a4
{
  v21 = a4;
  v6 = a3;
  v7 = [v21 summary];
  v8 = [v21 statement];
  v9 = v8;
  if (v7)
  {
    v10 = [v21 account];
    v11 = [v10 creditDetails];
    v12 = [v11 currencyCode];

    v13 = [v21 type];
    switch(v13)
    {
      case 5:
        v14 = [v7 balanceSummary];
        v15 = [v14 paymentsAndCredits];
        goto LABEL_14;
      case 8:
        v14 = [v7 balanceSummary];
        v15 = [v14 credits];
        goto LABEL_14;
      case 9:
        v14 = [v7 balanceSummary];
        v15 = [v14 payments];
LABEL_14:

        goto LABEL_15;
    }

LABEL_11:
    v15 = 0;
    v17 = 0;
    v18 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (v8)
  {
    v12 = [v8 currencyCode];
    v16 = [v21 type];
    switch(v16)
    {
      case 5:
        v15 = [v9 paymentsAndCredits];
        goto LABEL_15;
      case 8:
        v15 = [v9 credits];
        goto LABEL_15;
      case 9:
        v15 = [v9 payments];
LABEL_15:
        v17 = PKLocalizedFeatureString();
        v18 = 0;
        if (v15 && v12)
        {
          v18 = PKCurrencyAmountCreate(v15, v12);
        }

        goto LABEL_18;
    }

    goto LABEL_11;
  }

  v17 = 0;
  v18 = 0;
LABEL_19:
  v19 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [v19 setText:v17];
  v20 = [(PKDashboardBalanceSummaryItemPresenter *)self _formattedCurrencyAmountWithPlusIfNeeded:v18];
  [v19 setSecondaryText:v20];

  [v6 setContentConfiguration:v19];
}

- (void)_configureInstallmentBalanceCell:(id)a3 forItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v18 = [v5 summary];
  v7 = [v18 installmentBalance];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E696AB90] zero];
  }

  v10 = v9;

  v11 = [v5 account];

  v12 = [v11 creditDetails];
  v13 = [v12 currencyCode];
  v14 = PKCurrencyAmountCreate(v10, v13);

  v15 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v16 = PKLocalizedFeatureString();
  [v15 setText:v16];

  v17 = [v14 formattedStringValue];
  [v15 setSecondaryText:v17];

  [v6 setContentConfiguration:v15];
}

- (void)_configureTransactionLimitCell:(id)a3 forItem:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = [v5 accountUserCollection];
  v7 = [v6 currentAccountUser];
  v8 = [v7 preferences];
  v9 = [v8 transactionSpendLimitAmount];

  v10 = [v5 account];

  v11 = [v10 creditDetails];
  v12 = [v11 currencyCode];

  if (v9)
  {
    if (v12)
    {
      v13 = [MEMORY[0x1E696AB90] notANumber];
      v14 = [v9 isEqualToNumber:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
        v16 = PKLocalizedFeatureString();
        [v15 setText:v16];

        v17 = PKCurrencyAmountMake();
        v18 = [v17 formattedStringValue];
        [v15 setSecondaryText:v18];

        [v19 setContentConfiguration:v15];
      }
    }
  }
}

- (void)_configureMonthlySpendLimitCell:(id)a3 forItem:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = [v5 accountUserCollection];
  v7 = [v6 currentAccountUser];
  v8 = [v7 preferences];
  v9 = [v8 monthlySpendLimitAmount];

  v10 = [v5 account];

  v11 = [v10 creditDetails];
  v12 = [v11 currencyCode];

  if (v9)
  {
    if (v12)
    {
      v13 = [MEMORY[0x1E696AB90] notANumber];
      v14 = [v9 isEqualToNumber:v13];

      if ((v14 & 1) == 0)
      {
        v15 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
        v16 = PKLocalizedFeatureString();
        [v15 setText:v16];

        v17 = PKCurrencyAmountMake();
        v18 = [v17 formattedStringValue];
        [v15 setSecondaryText:v18];

        [v19 setContentConfiguration:v15];
      }
    }
  }
}

- (void)_configureMergeBalanceCell:(id)a3 forItem:(id)a4
{
  v29 = a3;
  v5 = a4;
  v28 = [v5 account];
  [v28 feature];
  v6 = [v5 mergeSummaryAccountDetails];
  v7 = [v5 mergeDate];
  v8 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  if (v6)
  {
    v27 = v7;
    v9 = [v6 currentBalance];
    v10 = [v28 creditDetails];
    v11 = [v10 currencyCode];

    v12 = [v6 ownerAltDSID];
    v13 = [v5 accountUserCollection];
    v14 = [v13 accountUserWithAltDSID:v12];

    if (v9 && v11)
    {
      v15 = PKCurrencyAmountMake();
      v16 = [v15 formattedStringValue];
      [v8 setSecondaryText:v16];
    }

    if ([v14 isCurrentUser])
    {
      v17 = PKLocalizedFeatureString();
    }

    else
    {
      v20 = [v5 familyCollection];
      v21 = [v20 familyMemberForAltDSID:v12];

      v22 = MEMORY[0x1E69B8740];
      v23 = [v14 nameComponents];
      [v22 contactForFamilyMember:v21 nameComponents:v23 imageData:0];
      v24 = v26 = v11;

      v25 = [v24 givenName];
      v17 = PKLocalizedFeatureString();

      v11 = v26;
    }

    v7 = v27;
    [v8 setText:{v17, v25}];
    [v29 setContentConfiguration:v8];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    v9 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    v18 = PKLocalizedFeatureString();
    [v9 setText:v18];

    v19 = [MEMORY[0x1E696AB78] localizedStringFromDate:v7 dateStyle:2 timeStyle:0];
    [v9 setSecondaryText:v19];

    [v29 setContentConfiguration:v9];
  }

LABEL_12:
}

- (void)_configureMergeNoticeCell:(id)a3 forItem:(id)a4
{
  v4 = MEMORY[0x1E69DCC28];
  v5 = a3;
  v10 = [v4 subtitleCellConfiguration];
  v6 = PKLocalizedFeatureString();
  [v10 setText:v6];

  v7 = PKLocalizedFeatureString();
  [v10 setSecondaryText:v7];

  v8 = [v10 textProperties];
  [v8 setNumberOfLines:0];
  v9 = [v10 secondaryTextProperties];
  [v9 setNumberOfLines:0];
  [v5 setContentConfiguration:v10];
}

- (void)_configureTotalBalanceCell:(id)a3 forItem:(id)a4
{
  v26 = a4;
  v6 = a3;
  v7 = [v26 account];
  [v7 feature];

  v8 = [v26 account];
  v9 = [v8 creditDetails];

  v10 = [v9 accountSummary];
  if (!v10)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_17;
  }

  v11 = [v26 account];
  v12 = [v11 creditDetails];
  v13 = [v12 currencyCode];

  v14 = [v26 type];
  switch(v14)
  {
    case 12:
      v15 = [v10 creditLimit];
      goto LABEL_11;
    case 13:
      v19 = [v9 totalBalance];
      v20 = [v19 amount];
      v21 = [MEMORY[0x1E696AB90] zero];
      v22 = [v20 compare:v21];

      v16 = v22 == -1;
      if (v22 == -1)
      {
        v23 = [v19 negativeValue];

        v19 = v23;
      }

      v15 = [v19 amount];
      v17 = PKLocalizedFeatureString();

      goto LABEL_12;
    case 14:
      v15 = [v10 availableCredit];
LABEL_11:
      v17 = PKLocalizedFeatureString();
      v16 = 0;
LABEL_12:
      v18 = 0;
      if (v15 && v13)
      {
        v18 = PKCurrencyAmountCreate(v15, v13);
      }

      goto LABEL_16;
  }

  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
LABEL_16:

LABEL_17:
  v24 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [v24 setText:v17];
  if (v16)
  {
    [(PKDashboardBalanceSummaryItemPresenter *)self _formattedCurrencyAmountWithPlusIfNeeded:v18];
  }

  else
  {
    [v18 formattedStringValue];
  }
  v25 = ;
  [v24 setSecondaryText:v25];

  [v6 setContentConfiguration:v24];
}

- (void)_configureDailyCashCell:(id)a3 forItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v24 = [v6 summary];
  v8 = [v6 statement];
  v9 = [v24 balanceSummary];
  v10 = [v6 account];

  v11 = [v10 creditDetails];
  v12 = [v11 currencyCode];

  if (v24 && ([v9 rewardsEarned], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && v12)
  {
    v14 = [v9 rewardsEarned];
  }

  else
  {
    v15 = [v8 rewardsEarned];
    if (v15)
    {
      v16 = v15;
      v17 = [v8 currencyCode];

      if (v17)
      {
        v18 = [v8 rewardsEarned];
        v19 = [v8 currencyCode];
        v20 = PKCurrencyAmountCreate(v18, v19);

        goto LABEL_10;
      }
    }

    v14 = [MEMORY[0x1E696AB90] zero];
  }

  v18 = v14;
  v20 = PKCurrencyAmountCreate(v14, v12);
LABEL_10:

  v21 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v22 = PKLocalizedFeatureString();
  [v21 setText:v22];

  v23 = [(PKDashboardBalanceSummaryItemPresenter *)self _formattedCurrencyAmountWithPlusIfNeeded:v20];
  [v21 setSecondaryText:v23];
  [v7 setContentConfiguration:v21];
}

- (void)_configureRewardsSummaryCell:(id)a3 forItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v11 = [v5 rewardsCurrencyAmount];
  v7 = [v5 type];

  if (v7 == 19 || v7 == 20)
  {
    v8 = PKLocalizedFeatureString();
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [v9 setText:v8];
  v10 = [v11 formattedStringValue];
  [v9 setSecondaryText:v10];

  [v6 setContentConfiguration:v9];
}

- (void)_configureExportStatementDataCell:(id)a3 forItem:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v7 = PKLocalizedFeatureString();
  [v6 setText:v7];

  v8 = [v6 textProperties];
  if (self->_exportingPDF)
  {
    [MEMORY[0x1E69DC888] placeholderTextColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v9 = ;
  [v8 setColor:v9];

  [v5 setContentConfiguration:v6];
  if (self->_exportingPDF)
  {
    v10 = [(PKDashboardBalanceSummaryItemPresenter *)self _spinnerAccessory];
    v12[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v5 setAccessories:v11];
  }

  else
  {
    [v5 setAccessories:MEMORY[0x1E695E0F0]];
  }
}

- (id)_spinnerAccessory
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [v2 startAnimating];
  v3 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v2 placement:1];

  return v3;
}

- (void)_selectFileFormatForExportedStatementDataForItem:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v39 = a4;
  v9 = a5;
  if (PKStoreDemoModeEnabled())
  {
    v10 = PKUIStoreDemoGatewayViewController();
    v11 = [v9 pkui_viewControllerFromResponderChain];
    [v11 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v12 = [v8 account];
    v13 = [v12 feature];
    v14 = [v12 exportTransactionDataFeatureDescriptor];
    v15 = [v14 supportedFileFormatsForTransactionData];

    v16 = [v15 count];
    if (v16 < 2)
    {
      if (v16 == 1)
      {
        v34 = [v15 firstObject];
        [(PKDashboardBalanceSummaryItemPresenter *)self _downloadExportedStatementDataForItem:v8 withFileFormat:v34 atIndexPath:v39 inCollectionView:v9];
      }
    }

    else
    {
      v36 = v12;
      v38 = v8;
      v17 = MEMORY[0x1E69DC650];
      v18 = PKLocalizedFeatureString();
      v37 = [v17 alertControllerWithTitle:v18 message:0 preferredStyle:0];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v35 = v15;
      v19 = v15;
      v20 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v46;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v45 + 1) + 8 * i);
            v25 = [(PKDashboardBalanceSummaryItemPresenter *)self _readableFileTypeForFormat:v24 feature:v13];
            if (v25)
            {
              v26 = MEMORY[0x1E69DC648];
              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __120__PKDashboardBalanceSummaryItemPresenter__selectFileFormatForExportedStatementDataForItem_atIndexPath_inCollectionView___block_invoke;
              v40[3] = &unk_1E8013518;
              v40[4] = self;
              v41 = v38;
              v42 = v24;
              v43 = v39;
              v44 = v9;
              v27 = [v26 actionWithTitle:v25 style:0 handler:v40];
              [v37 addAction:v27];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v21);
      }

      v28 = MEMORY[0x1E69DC648];
      v29 = PKLocalizedFeatureString();
      v30 = [v28 actionWithTitle:v29 style:1 handler:0];
      [v37 addAction:v30];

      v31 = [v37 popoverPresentationController];
      v32 = [v9 cellForItemAtIndexPath:v39];
      [v31 setSourceView:v32];

      v33 = [v9 pkui_viewControllerFromResponderChain];
      [v33 presentViewController:v37 animated:1 completion:0];

      v8 = v38;
      v15 = v35;
      v12 = v36;
    }
  }
}

- (id)_readableFileTypeForFormat:(id)a3 feature:(unint64_t)a4
{
  v4 = [a3 uppercaseString];
  v5 = v4;
  if (v4 == @"CSV")
  {
    goto LABEL_4;
  }

  if (v4)
  {
    v6 = [(__CFString *)v4 isEqualToString:@"CSV"];

    if (v6 & 1) != 0 || (v9 = v5, v9 == @"OFX") || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"OFX"], v10, (v11) || (v12 = v10, v12 == @"QFX") || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"QFX"], v13, (v14) || (v15 = v13, v15 == @"QIF") || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"QIF"], v16, (v17) || (v18 = v16, v18 == @"QBO") || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"QBO"], v19, (v20) || (v21 = v19, v21 == @"XLS") || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"XLS"], v22, (v23) || (v24 = v22, v24 == @"XLSX") || (v25 = v24, v26 = [(__CFString *)v24 isEqualToString:@"XLSX"], v25, (v26) || (v27 = v25, v27 == @"PDF") || (v7 = v27, v28 = [(__CFString *)v27 isEqualToString:@"PDF"], v7, v28))
    {
LABEL_4:
      v7 = PKLocalizedFeatureString();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_downloadExportedStatementDataForItem:(id)a3 withFileFormat:(id)a4 atIndexPath:(id)a5 inCollectionView:(id)a6
{
  v10 = a3;
  v34 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 account];
  v14 = [v13 feature];
  v37 = [v10 statement];
  v15 = [v37 accountIdentifier];
  v16 = v15;
  v36 = v13;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v13 accountIdentifier];
  }

  v35 = v17;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke;
  aBlock[3] = &unk_1E8013540;
  v55 = v14;
  v18 = v12;
  v54 = v18;
  v19 = _Block_copy(aBlock);
  exportedStatementDataItem = self->_exportedStatementDataItem;
  self->_exportedStatementDataItem = 0;

  exportedStatementData = self->_exportedStatementData;
  self->_exportedStatementData = 0;

  pdfData = self->_pdfData;
  self->_pdfData = 0;

  pdfItem = self->_pdfItem;
  self->_pdfItem = 0;

  self->_exportingPDF = 1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3;
  v51 = __Block_byref_object_dispose__3;
  v52 = [v18 cellForItemAtIndexPath:v11];
  [(PKDashboardBalanceSummaryItemPresenter *)self updateCell:v48[5] forItem:v10 inCollectionView:v18 atIndexPath:v11];
  objc_initWeak(&location, self);
  v24 = [MEMORY[0x1E69B8400] sharedInstance];
  v25 = [v37 openingDate];
  v26 = [v37 closingDate];
  v27 = [v36 creditDetails];
  v28 = [v27 productTimeZone];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke_204;
  v38[3] = &unk_1E80135B8;
  objc_copyWeak(&v45, &location);
  v44 = &v47;
  v29 = v18;
  v39 = v29;
  v30 = v11;
  v40 = v30;
  v33 = v10;
  v41 = v33;
  v31 = v19;
  v43 = v31;
  v32 = v34;
  v42 = v32;
  [v24 exportTransactionDataForAccountIdentifier:v35 withFileFormat:v32 beginDate:v25 endDate:v26 productTimeZone:v28 completion:v38];

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v47, 8);
}

void __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = [PKAccountFlowController displayableErrorForError:a2 featureIdentifier:*(a1 + 40) genericErrorTitle:0 genericErrorMessage:0];
  v3 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
  v4 = [*(a1 + 32) pkui_viewControllerFromResponderChain];
  v5 = [v4 navigationController];
  [v5 presentViewController:v3 animated:1 completion:0];
}

void __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke_204(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke_2;
  block[3] = &unk_1E8013590;
  objc_copyWeak(&v18, (a1 + 80));
  v17 = *(a1 + 72);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v16 = *(a1 + 64);
  v15 = *(a1 + 56);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
}

void __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke_2(uint64_t a1)
{
  v48[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 89) = 0;
    v4 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
    v5 = *(*(a1 + 88) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [v3 updateCell:*(*(*(a1 + 88) + 8) + 40) forItem:*(a1 + 48) inCollectionView:*(a1 + 32) atIndexPath:*(a1 + 40)];
    v7 = *(a1 + 56);
    if (v7 && !*(a1 + 64))
    {
      v8 = [v7 transactionData];
      v9 = [*(a1 + 56) transactionDataFilename];
      v10 = v9;
      if (!v8 || !v9 || ([*(a1 + 56) transactionDataHash], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "SHA256Hash"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "hexEncoding"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToString:", v13), v13, v12, v11, !v14))
      {
        (*(*(a1 + 80) + 16))();
LABEL_30:

        goto LABEL_31;
      }

      objc_storeStrong(v3 + 8, v8);
      v15 = [*(a1 + 72) lowercaseString];
      v16 = v15;
      if (v15 == @"csv")
      {
        v17 = 1;
      }

      else if (v15)
      {
        v17 = [(__CFString *)v15 isEqualToString:@"csv"];
      }

      else
      {
        v17 = 0;
      }

      v18 = [*(a1 + 72) lowercaseString];
      if (v18 == @"pdf")
      {
      }

      else
      {
        v19 = v18;
        if (v18)
        {
          v20 = [(__CFString *)v18 isEqualToString:@"pdf"];
        }

        else
        {
          v20 = 0;
        }

        if (((v17 | v20) & 1) == 0)
        {
          v22 = [MEMORY[0x1E696AC08] defaultManager];
          v28 = [v22 temporaryDirectory];
          v29 = [v28 URLByAppendingPathComponent:v10];

          v30 = [v29 path];
          v31 = [v22 createFileAtPath:v30 contents:v3[8] attributes:0];

          if (v31)
          {
            v32 = objc_alloc(MEMORY[0x1E69CD9F8]);
            v48[0] = v29;
            v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
            v34 = [v32 initWithActivityItems:v33 applicationActivities:0];

            v35 = *MEMORY[0x1E69CDAE8];
            v47[0] = *MEMORY[0x1E69CDAC0];
            v47[1] = v35;
            v36 = *MEMORY[0x1E69CDAE0];
            v47[2] = *MEMORY[0x1E69CDAC8];
            v47[3] = v36;
            v47[4] = *MEMORY[0x1E69CDAD0];
            v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:5];
            [v34 setExcludedActivityTypes:v37];

            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke_3;
            v44[3] = &unk_1E8013568;
            v45 = v22;
            v46 = v29;
            [v34 setCompletionWithItemsHandler:v44];
            v38 = [*(a1 + 32) cellForItemAtIndexPath:*(a1 + 40)];
            v39 = *(*(a1 + 88) + 8);
            v40 = *(v39 + 40);
            *(v39 + 40) = v38;

            if ([v34 pkui_userInterfaceIdiomSupportsLargeLayouts] && *(*(*(a1 + 88) + 8) + 40))
            {
              v41 = [v34 popoverPresentationController];
              [v41 setSourceView:*(*(*(a1 + 88) + 8) + 40)];
            }

            v42 = [*(a1 + 32) pkui_viewControllerFromResponderChain];
            v43 = [v42 navigationController];
            [v43 presentViewController:v34 animated:1 completion:0];
          }

          goto LABEL_29;
        }
      }

      v21 = MEMORY[0x1E6982D38];
      if (!v17)
      {
        v21 = MEMORY[0x1E6982F10];
      }

      v22 = [*v21 identifier];
      v23 = [objc_alloc(getQLItemClass[0]()) initWithDataProvider:v3 contentType:v22 previewTitle:v10];
      v24 = v3[10];
      v3[10] = v23;

      v25 = [*(a1 + 32) pkui_viewControllerFromResponderChain];
      v26 = [v25 navigationController];
      v27 = [v3 _createPreviewController];
      [v26 presentViewController:v27 animated:1 completion:0];

LABEL_29:
      goto LABEL_30;
    }

    (*(*(a1 + 80) + 16))();
  }

LABEL_31:
}

void __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke_3(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v14 = v12;
  if (v12 != @"com.apple.UIKit.activity.AirDrop")
  {
    if (!v12 || (v13 = [(__CFString *)v12 isEqualToString:@"com.apple.UIKit.activity.AirDrop"], v14, !v13) && a3)
    {
      [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
    }
  }
}

- (void)_configureStatementDownloadCell:(id)a3 forItem:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v7 = PKLocalizedFeatureString();
  [v6 setText:v7];

  v8 = [v6 textProperties];
  if (self->_downloadingPDF)
  {
    [MEMORY[0x1E69DC888] placeholderTextColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v9 = ;
  [v8 setColor:v9];

  [v5 setContentConfiguration:v6];
  if (self->_downloadingPDF)
  {
    v10 = [(PKDashboardBalanceSummaryItemPresenter *)self _spinnerAccessory];
    v12[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v5 setAccessories:v11];
  }
}

- (void)_downloadAndPresentStatementForItem:(id)a3 inCollectionView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PKStoreDemoModeEnabled())
  {
    v8 = PKUIStoreDemoGatewayViewController();
    v9 = [v7 pkui_viewControllerFromResponderChain];
    [v9 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v10 = [v6 account];
    v11 = [v10 feature];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke;
    aBlock[3] = &unk_1E8013540;
    v34 = v11;
    v12 = v7;
    v33 = v12;
    v13 = _Block_copy(aBlock);
    v14 = [v6 webService];
    v15 = [v6 account];
    v16 = [v6 statement];
    v17 = [v16 accountIdentifier];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v15 accountIdentifier];
    }

    v20 = v19;

    if (self->_pdfData && self->_pdfItem)
    {
      v21 = [v12 pkui_viewControllerFromResponderChain];
      v22 = [v21 navigationController];
      v23 = [(PKDashboardBalanceSummaryItemPresenter *)self _createPreviewController];
      [v22 presentViewController:v23 animated:1 completion:0];
    }

    else
    {
      self->_downloadingPDF = 1;
      [v12 reloadData];
      v21 = objc_alloc_init(MEMORY[0x1E69B84A0]);
      [v21 setAccountIdentifier:v20];
      [v16 identifier];
      v28 = v12;
      v24 = v14;
      v26 = v25 = v13;
      [v21 setDocumentIdentifier:v26];

      v27 = [v15 accountBaseURL];
      [v21 setBaseURL:v27];

      v13 = v25;
      v14 = v24;
      [v21 setAction:1];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke_2;
      v29[3] = &unk_1E8013608;
      v29[4] = self;
      v30 = v28;
      v31 = v13;
      [v24 accountDocumentActionWithRequest:v21 completion:v29];
    }
  }
}

void __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = PKLocalizedFeatureString();
    v5 = PKLocalizedFeatureString();
    v15 = PKDisplayableErrorCustom();

    v3 = v15;
  }

  v6 = MEMORY[0x1E69DC650];
  v16 = v3;
  v7 = PKTitleForDisplayableError();
  v8 = MEMORY[0x1BFB42D10](v16);
  v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v12 = [v10 actionWithTitle:v11 style:1 handler:0];
  [v9 addAction:v12];

  v13 = [*(a1 + 32) pkui_viewControllerFromResponderChain];
  v14 = [v13 navigationController];
  [v14 presentViewController:v9 animated:1 completion:0];
}

void __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke_3;
  block[3] = &unk_1E80135E0;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 88) = 0;
  [*(a1 + 40) reloadData];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    obj = [v2 documentPDFData];
    v5 = [*(a1 + 48) documentDataFilename];
    if (obj)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || ([*(a1 + 48) documentDataHash], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(obj, "SHA256Hash"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "hexEncoding"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqualToString:", v9), v9, v8, v7, !v10))
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      objc_storeStrong((*(a1 + 32) + 56), obj);
      v11 = [*MEMORY[0x1E6982F10] identifier];
      v12 = [objc_alloc(getQLItemClass[0]()) initWithDataProvider:*(a1 + 32) contentType:v11 previewTitle:v5];
      v13 = *(a1 + 32);
      v14 = *(v13 + 72);
      *(v13 + 72) = v12;

      v15 = [*(a1 + 40) pkui_viewControllerFromResponderChain];
      v16 = [v15 navigationController];
      v17 = [*(a1 + 32) _createPreviewController];
      [v16 presentViewController:v17 animated:1 completion:0];
    }
  }

  else
  {
    v4 = *(*(a1 + 64) + 16);

    v4();
  }
}

- (id)statementIcon
{
  statementIcon = self->_statementIcon;
  if (!statementIcon)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"Category_Statement" withExtension:@"pdf"];
    v6 = PKUIScreenScale();
    v7 = PKUIImageFromPDF(v5, 45.0, 45.0, v6);
    v8 = self->_statementIcon;
    self->_statementIcon = v7;

    statementIcon = self->_statementIcon;
  }

  return statementIcon;
}

- (id)_statementCellTitleForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 statement];
  v6 = [v5 openingDate];
  v7 = [v5 closingDate];
  v8 = PKDatesMidpoint();

  v9 = [v4 account];

  v10 = [v9 creditDetails];
  v11 = [v10 productTimeZone];

  [(NSDateFormatter *)self->_formatterMonthYear setTimeZone:v11];
  [(NSDateFormatter *)self->_formatterMonthAndDay setTimeZone:v11];
  [(NSDateFormatter *)self->_formatterMonthDayYear setTimeZone:v11];
  v12 = [(NSDateFormatter *)self->_formatterMonthYear stringFromDate:v8];
  v13 = [v12 pk_uppercaseFirstStringForPreferredLocale];

  return v13;
}

- (BOOL)_statementIsFromMonthPriorToSummaryForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 statement];
  v5 = [v3 summary];
  v6 = [v5 balanceSummary];

  v7 = [v6 openingDate];
  v8 = [v6 closingDate];
  v9 = PKDatesMidpoint();

  v10 = [v4 openingDate];
  v11 = [v4 closingDate];
  v12 = PKDatesMidpoint();

  v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v13 setMonth:-1];
  v14 = objc_alloc(MEMORY[0x1E695DEE8]);
  v15 = [v14 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v16 = [v3 account];

  v17 = [v16 creditDetails];
  v18 = [v17 productTimeZone];
  [v15 setTimeZone:v18];

  v19 = [v15 dateByAddingComponents:v13 toDate:v9 options:0];
  v20 = [v15 component:8 fromDate:v19];
  LOBYTE(v20) = [v15 component:8 fromDate:v12] == v20;

  return v20;
}

- (void)_configureCellForReuse:(id)a3
{
  v3 = a3;
  [v3 setWantsDefaultHighlightBehavior:0];
  [v3 setWantsCustomAppearance:1];
  v4 = [objc_opt_class() defaultBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (id)_createPreviewController
{
  v3 = objc_alloc_init(getQLPreviewControllerClass());
  [v3 setDelegate:self];
  [v3 setDataSource:self];

  return v3;
}

- (id)provideDataForItem:(id)a3
{
  pdfData = self->_pdfData;
  if (!pdfData)
  {
    pdfData = self->_exportedStatementData;
  }

  return pdfData;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  pdfItem = self->_pdfItem;
  if (!pdfItem)
  {
    pdfItem = self->_exportedStatementDataItem;
  }

  return pdfItem;
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
        v11 = [PKPaymentTransactionCollectionViewCell alloc];
        v12 = [(PKPaymentTransactionCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleTransactionCell = self->_sampleTransactionCell;
        self->_sampleTransactionCell = v12;
      }
    }
  }
}

@end