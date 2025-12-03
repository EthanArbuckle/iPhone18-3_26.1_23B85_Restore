@interface PKDashboardBalanceSummaryItemPresenter
- (BOOL)_statementIsFromMonthPriorToSummaryForItem:(id)item;
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardBalanceSummaryItemPresenter)init;
- (id)_createPreviewController;
- (id)_formattedCurrencyAmountWithPlusIfNeeded:(id)needed;
- (id)_readableFileTypeForFormat:(id)format feature:(unint64_t)feature;
- (id)_spinnerAccessory;
- (id)_statementCellTitleForItem:(id)item;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (id)provideDataForItem:(id)item;
- (id)statementIcon;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path forSizing:(BOOL)sizing;
- (void)_configureCellForReuse:(id)reuse;
- (void)_configureDailyCashCell:(id)cell forItem:(id)item;
- (void)_configureExportStatementDataCell:(id)cell forItem:(id)item;
- (void)_configureInstallmentBalanceCell:(id)cell forItem:(id)item;
- (void)_configureInterestCell:(id)cell forItem:(id)item;
- (void)_configureMergeBalanceCell:(id)cell forItem:(id)item;
- (void)_configureMergeNoticeCell:(id)cell forItem:(id)item;
- (void)_configureMonthlySpendLimitCell:(id)cell forItem:(id)item;
- (void)_configurePaymentsAndCreditsCell:(id)cell forItem:(id)item;
- (void)_configurePriorStatementBalanceCell:(id)cell forItem:(id)item;
- (void)_configureRewardsSummaryCell:(id)cell forItem:(id)item;
- (void)_configureSpendingCell:(id)cell forItem:(id)item;
- (void)_configureStatementBalanceCell:(id)cell forItem:(id)item;
- (void)_configureStatementCell:(id)cell forItem:(id)item;
- (void)_configureStatementDownloadCell:(id)cell forItem:(id)item;
- (void)_configureTotalBalanceCell:(id)cell forItem:(id)item;
- (void)_configureTransactionLimitCell:(id)cell forItem:(id)item;
- (void)_downloadAndPresentStatementForItem:(id)item inCollectionView:(id)view;
- (void)_downloadExportedStatementDataForItem:(id)item withFileFormat:(id)format atIndexPath:(id)path inCollectionView:(id)view;
- (void)_selectFileFormatForExportedStatementDataForItem:(id)item atIndexPath:(id)path inCollectionView:(id)view;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  type = [itemCopy type];
  if (type > 0x14)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E8013628[type];
  }

  v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];
  [(PKDashboardBalanceSummaryItemPresenter *)self _configureCell:v13 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy forSizing:0];

  return v13;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  controllerCopy = controller;
  v42 = itemCopy;
  transactionGroup = [v42 transactionGroup];

  if (transactionGroup)
  {
    v16 = [PKTransactionHistoryViewController alloc];
    transactionGroup2 = [v42 transactionGroup];
    transactionSourceCollection = [v42 transactionSourceCollection];
    familyCollection = [v42 familyCollection];
    account = [v42 account];
    accountUserCollection = [v42 accountUserCollection];
    physicalCards = [v42 physicalCards];
    v23 = [(PKTransactionHistoryViewController *)v16 initWithTransactionGroup:transactionGroup2 transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection physicalCards:physicalCards fetcher:0 detailViewStyle:0];

    if ([controllerCopy pk_settings_useStateDrivenNavigation])
    {
      [controllerCopy pk_settings_pushViewController:v23];
    }

    else
    {
      [controllerCopy pushViewController:v23 animated:1];
    }
  }

  else if ([v42 type] == 2 || !objc_msgSend(v42, "type"))
  {
    v40 = pathCopy;
    v41 = viewCopy;
    v24 = v42;
    v38 = [PKCreditBalanceDetailsViewController alloc];
    selfCopy = self;
    cellStyle = self->_cellStyle;
    transactionSourceCollection2 = [v24 transactionSourceCollection];
    familyCollection2 = [v24 familyCollection];
    webService = [v24 webService];
    account2 = [v24 account];
    accountUserCollection2 = [v24 accountUserCollection];
    physicalCards2 = [v24 physicalCards];
    statement = [v24 statement];
    statements = [v24 statements];
    v32 = webService;
    v33 = [(PKCreditBalanceDetailsViewController *)v38 initWithStyle:cellStyle transactionSourceCollection:transactionSourceCollection2 familyCollection:familyCollection2 webService:webService account:account2 accountUserCollection:accountUserCollection2 physicalCards:physicalCards2 statement:statement previousStatements:statements];

    if ([controllerCopy pk_settings_useStateDrivenNavigation])
    {
      [controllerCopy pk_settings_pushViewController:v33];
    }

    else
    {
      [controllerCopy pushViewController:v33 animated:1];
    }

    if (selfCopy->_cellStyle == 1)
    {
      navigationItem = [(PKCreditBalanceDetailsViewController *)v33 navigationItem];
      v35 = [(PKDashboardBalanceSummaryItemPresenter *)selfCopy _statementCellTitleForItem:v24];
      [navigationItem setTitle:v35];
    }

    pathCopy = v40;
    viewCopy = v41;
  }

  else if ([v42 type] == 6)
  {
    [(PKDashboardBalanceSummaryItemPresenter *)self _downloadAndPresentStatementForItem:v42 inCollectionView:viewCopy];
  }

  else if ([v42 type] == 7)
  {
    [(PKDashboardBalanceSummaryItemPresenter *)self _selectFileFormatForExportedStatementDataForItem:v42 atIndexPath:pathCopy inCollectionView:viewCopy];
  }
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  if ([itemCopy type] == 2 && (v13 = self->_sampleTransactionCell) != 0)
  {
    v14 = v13;
    [(PKDashboardBalanceSummaryItemPresenter *)self _configureCell:v13 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy forSizing:1];
    [(PKPaymentTransactionCollectionViewCell *)v14 sizeThatFits:width, 3.40282347e38];
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

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  if ([itemCopy type] == 6)
  {
    v7 = 88;
  }

  else
  {
    if ([itemCopy type] != 7)
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

- (id)_formattedCurrencyAmountWithPlusIfNeeded:(id)needed
{
  neededCopy = needed;
  formattedStringValue = [neededCopy formattedStringValue];
  amount = [neededCopy amount];

  LODWORD(neededCopy) = [amount pk_isNegativeNumber];
  if (neededCopy)
  {
    v6 = formattedStringValue;
  }

  else
  {
    v6 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
  }

  v7 = v6;

  return v7;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path forSizing:(BOOL)sizing
{
  cellCopy = cell;
  itemCopy = item;
  switch([itemCopy type])
  {
    case 0:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureStatementBalanceCell:cellCopy forItem:itemCopy];
      break;
    case 1:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configurePriorStatementBalanceCell:cellCopy forItem:itemCopy];
      break;
    case 2:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureStatementCell:cellCopy forItem:itemCopy];
      break;
    case 3:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureSpendingCell:cellCopy forItem:itemCopy];
      break;
    case 4:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureInterestCell:cellCopy forItem:itemCopy];
      break;
    case 5:
    case 8:
    case 9:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configurePaymentsAndCreditsCell:cellCopy forItem:itemCopy];
      break;
    case 6:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureStatementDownloadCell:cellCopy forItem:itemCopy];
      break;
    case 7:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureExportStatementDataCell:cellCopy forItem:itemCopy];
      break;
    case 10:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureDailyCashCell:cellCopy forItem:itemCopy];
      break;
    case 11:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureInstallmentBalanceCell:cellCopy forItem:itemCopy];
      break;
    case 12:
    case 13:
    case 14:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureTotalBalanceCell:cellCopy forItem:itemCopy];
      break;
    case 15:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureTransactionLimitCell:cellCopy forItem:itemCopy];
      break;
    case 16:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureMonthlySpendLimitCell:cellCopy forItem:itemCopy];
      break;
    case 17:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureMergeNoticeCell:cellCopy forItem:itemCopy];
      break;
    case 18:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureMergeBalanceCell:cellCopy forItem:itemCopy];
      break;
    case 19:
    case 20:
      [(PKDashboardBalanceSummaryItemPresenter *)self _configureRewardsSummaryCell:cellCopy forItem:itemCopy];
      break;
    default:
      break;
  }

  type = [itemCopy type];
  if (type > 0x14)
  {
    v11 = MEMORY[0x1E69B9D90];
  }

  else
  {
    v11 = qword_1E80136D0[type];
  }

  [cellCopy setAccessibilityIdentifier:*v11];
}

- (void)_configureStatementCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  statement = [itemCopy statement];
  transactionView = [cellCopy transactionView];
  totalBalance = [statement totalBalance];
  if (totalBalance)
  {
    statementBalance = totalBalance;
  }

  else
  {
    statementBalance = [statement statementBalance];
    if (!statementBalance)
    {
      currencyCode = 0;
      goto LABEL_7;
    }
  }

  currencyCode = [statement currencyCode];

  if (currencyCode)
  {
    currencyCode2 = [statement currencyCode];
    currencyCode = PKCurrencyAmountCreate(statementBalance, currencyCode2);
  }

LABEL_7:
  v35 = itemCopy;
  v13 = [(PKDashboardBalanceSummaryItemPresenter *)self _statementCellTitleForItem:itemCopy];
  [transactionView setPrimaryString:v13];
  formatterMonthAndDay = self->_formatterMonthAndDay;
  openingDate = [statement openingDate];
  v16 = [(NSDateFormatter *)formatterMonthAndDay stringFromDate:openingDate];

  formatterMonthDayYear = self->_formatterMonthDayYear;
  closingDate = [statement closingDate];
  v19 = [(NSDateFormatter *)formatterMonthDayYear stringFromDate:closingDate];

  v20 = PKLocalizedFeatureString();
  pk_uppercaseFirstStringForPreferredLocale = [v20 pk_uppercaseFirstStringForPreferredLocale];

  [transactionView setSecondaryString:pk_uppercaseFirstStringForPreferredLocale];
  if (currencyCode)
  {
    v22 = objc_alloc(MEMORY[0x1E696AAB0]);
    [currencyCode formattedStringValue];
    v34 = transactionView;
    v23 = pk_uppercaseFirstStringForPreferredLocale;
    v24 = statement;
    v25 = v19;
    selfCopy = self;
    v27 = v16;
    v28 = statementBalance;
    v29 = currencyCode;
    v31 = v30 = v13;
    v32 = [v22 initWithString:v31 attributes:0];

    v13 = v30;
    currencyCode = v29;
    statementBalance = v28;
    v16 = v27;
    self = selfCopy;
    v19 = v25;
    statement = v24;
    pk_uppercaseFirstStringForPreferredLocale = v23;
    transactionView = v34;
    [v34 setTransactionValueAttributedText:v32];
  }

  else
  {
    [transactionView setTransactionValueAttributedText:0];
  }

  [transactionView setTertiaryString:0];
  statementIcon = [(PKDashboardBalanceSummaryItemPresenter *)self statementIcon];
  [transactionView setPrimaryImage:statementIcon];

  [transactionView setShowsDisclosureView:1];
  [cellCopy setWantsListBehavior:1];
}

- (void)_configurePriorStatementBalanceCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  statement = [itemCopy statement];
  summary = [itemCopy summary];
  mergeSummaryAccountDetails = [itemCopy mergeSummaryAccountDetails];
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  if (mergeSummaryAccountDetails)
  {
    account = [itemCopy account];
    creditDetails = [account creditDetails];
    currencyCode = [creditDetails currencyCode];

    statementBalance = [mergeSummaryAccountDetails statementBalance];

    currencyCode2 = 0;
    if (statementBalance && currencyCode)
    {
      statementBalance2 = [mergeSummaryAccountDetails statementBalance];
      currencyCode2 = PKCurrencyAmountMake();
    }

    formattedStringValue = [currencyCode2 formattedStringValue];
    [valueCellConfiguration setSecondaryText:formattedStringValue];
  }

  else
  {
    if (summary && ![(PKDashboardBalanceSummaryItemPresenter *)self _statementIsFromMonthPriorToSummaryForItem:itemCopy])
    {
      v22 = PKLocalizedFeatureString();
      [valueCellConfiguration setSecondaryText:v22];

LABEL_15:
      balanceSummary = [summary balanceSummary];
      openingDate = [balanceSummary openingDate];
      closingDate = [balanceSummary closingDate];

      goto LABEL_18;
    }

    statementBalance3 = [statement statementBalance];
    if (statementBalance3)
    {
      v19 = statementBalance3;
      currencyCode2 = [statement currencyCode];

      if (currencyCode2)
      {
        statementBalance4 = [statement statementBalance];
        currencyCode3 = [statement currencyCode];
        currencyCode2 = PKCurrencyAmountCreate(statementBalance4, currencyCode3);
      }
    }

    else
    {
      currencyCode2 = 0;
    }

    currencyCode = [currencyCode2 formattedStringValue];
    [valueCellConfiguration setSecondaryText:currencyCode];
  }

  if (summary)
  {
    goto LABEL_15;
  }

  if (!statement)
  {
    goto LABEL_19;
  }

  openingDate = [statement openingDate];
  closingDate = [statement closingDate];
LABEL_18:

LABEL_19:
  if (mergeSummaryAccountDetails)
  {
    ownerAltDSID = [mergeSummaryAccountDetails ownerAltDSID];
    accountUserCollection = [itemCopy accountUserCollection];
    v28 = [accountUserCollection accountUserWithAltDSID:ownerAltDSID];

    if ([v28 isCurrentUser])
    {
      v29 = PKLocalizedFeatureString();
    }

    else
    {
      familyCollection = [itemCopy familyCollection];
      v31 = [familyCollection familyMemberForAltDSID:ownerAltDSID];

      v32 = MEMORY[0x1E69B8740];
      nameComponents = [v28 nameComponents];
      [v32 contactForFamilyMember:v31 nameComponents:nameComponents imageData:0];
      v38 = summary;
      v34 = statement;
      v36 = v35 = cellCopy;

      givenName = [v36 givenName];
      v29 = PKLocalizedFeatureString();

      cellCopy = v35;
      statement = v34;
      summary = v38;
    }
  }

  else
  {
    v29 = PKLocalizedFeatureString();
  }

  [valueCellConfiguration setText:{v29, givenName}];
  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureStatementBalanceCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  statement = [itemCopy statement];
  summary = [itemCopy summary];
  mergeSummaryAccountDetails = [itemCopy mergeSummaryAccountDetails];
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  if (mergeSummaryAccountDetails)
  {
    account = [itemCopy account];
    creditDetails = [account creditDetails];
    currencyCode = [creditDetails currencyCode];

    statementBalance = [mergeSummaryAccountDetails statementBalance];

    statementBalance3 = 0;
    if (statementBalance && currencyCode)
    {
      statementBalance2 = [mergeSummaryAccountDetails statementBalance];
      statementBalance3 = PKCurrencyAmountMake();
    }

    formattedStringValue = [statementBalance3 formattedStringValue];
    [valueCellConfiguration setSecondaryText:formattedStringValue];
  }

  else
  {
    if (summary && ![(PKDashboardBalanceSummaryItemPresenter *)self _statementIsFromMonthPriorToSummaryForItem:itemCopy])
    {
      statementBalance3 = PKLocalizedFeatureString();
      [valueCellConfiguration setSecondaryText:statementBalance3];
      goto LABEL_15;
    }

    statementBalance3 = [statement statementBalance];
    if (statementBalance3)
    {
      currencyCode2 = [statement currencyCode];

      if (currencyCode2)
      {
        statementBalance4 = [statement statementBalance];
        currencyCode3 = [statement currencyCode];
        statementBalance3 = PKCurrencyAmountCreate(statementBalance4, currencyCode3);
      }

      else
      {
        statementBalance3 = 0;
      }
    }

    currencyCode = [statementBalance3 formattedStringValue];
    [valueCellConfiguration setSecondaryText:currencyCode];
  }

LABEL_15:
  mergeDate = [itemCopy mergeDate];
  account2 = [itemCopy account];
  creditDetails2 = [account2 creditDetails];
  productTimeZone = [creditDetails2 productTimeZone];

  if (summary)
  {
    balanceSummary = [summary balanceSummary];
    openingDate = [balanceSummary openingDate];
    closingDate = [balanceSummary closingDate];

LABEL_17:
    v27 = 1;
    if (!openingDate)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (!statement)
  {
    openingDate = 0;
    closingDate = 0;
    if (!mergeDate)
    {
      goto LABEL_34;
    }

    v43 = productTimeZone;
    if (!productTimeZone)
    {
LABEL_35:
      v38 = PKLocalizedFeatureString();
      goto LABEL_36;
    }

    openingDate = PKStartOfMonthWithTimeZone();
    closingDate = PKEndOfMonthWithTimeZone();
    goto LABEL_17;
  }

  openingDate = [statement openingDate];
  closingDate = [statement closingDate];
  v27 = 0;
  if (!openingDate)
  {
LABEL_34:
    v43 = productTimeZone;
    goto LABEL_35;
  }

LABEL_21:
  if (!closingDate)
  {
    goto LABEL_34;
  }

  v52 = mergeDate;
  [closingDate timeIntervalSinceDate:openingDate];
  v29 = [MEMORY[0x1E695DF00] dateWithTimeInterval:openingDate sinceDate:v28 * 0.5];
  v30 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v31 = v30;
  if (v27)
  {
    [v30 setMonth:-1];
  }

  v53 = cellCopy;
  v32 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v50 = v31;
  v51 = v29;
  v49 = [v32 dateByAddingComponents:v31 toDate:v29 options:0];
  v33 = [v32 components:8 fromDate:?];
  [v33 month];

  if (mergeSummaryAccountDetails)
  {
    v48 = mergeSummaryAccountDetails;
    ownerAltDSID = [mergeSummaryAccountDetails ownerAltDSID];
    accountUserCollection = [itemCopy accountUserCollection];
    v36 = [accountUserCollection accountUserWithAltDSID:ownerAltDSID];

    if ([v36 isCurrentUser])
    {
      v37 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
      v38 = PKLocalizedFeatureString();
    }

    else
    {
      [itemCopy familyCollection];
      v39 = v46 = summary;
      v37 = [v39 familyMemberForAltDSID:ownerAltDSID];

      v40 = MEMORY[0x1E69B8740];
      [v36 nameComponents];
      v41 = v47 = statement;
      v45 = [v40 contactForFamilyMember:v37 nameComponents:v41 imageData:0];

      v42 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
      givenName = [v45 givenName];
      v38 = PKLocalizedFeatureString();

      summary = v46;
      statement = v47;
    }

    mergeSummaryAccountDetails = v48;
  }

  else
  {
    ownerAltDSID = PKGregorianMonthSpecificLocalizedStringKeyForKey();
    v38 = PKLocalizedFeatureString();
  }

  mergeDate = v52;
  cellCopy = v53;
  v43 = productTimeZone;
LABEL_36:
  [valueCellConfiguration setText:{v38, givenName}];
  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureSpendingCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  summary = [itemCopy summary];
  statement = [itemCopy statement];
  v8 = statement;
  if (summary)
  {
    balanceSummary = [summary balanceSummary];
    purchases = [balanceSummary purchases];

    balanceSummary2 = [summary balanceSummary];
    pendingPurchases = [balanceSummary2 pendingPurchases];

    v13 = 0;
    if (purchases && pendingPurchases)
    {
      v14 = [(NSDecimalNumber *)purchases decimalNumberByAdding:pendingPurchases];
      account = [itemCopy account];
      creditDetails = [account creditDetails];
      currencyCode = [creditDetails currencyCode];
      v13 = PKCurrencyAmountCreate(v14, currencyCode);
    }

    goto LABEL_7;
  }

  purchases2 = [statement purchases];

  if (purchases2)
  {
    purchases = [v8 purchases];
    pendingPurchases = [v8 currencyCode];
    v13 = PKCurrencyAmountCreate(purchases, pendingPurchases);
LABEL_7:

    goto LABEL_8;
  }

  v13 = 0;
LABEL_8:
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v20 = PKLocalizedFeatureString();
  [valueCellConfiguration setText:v20];

  formattedStringValue = [v13 formattedStringValue];
  [valueCellConfiguration setSecondaryText:formattedStringValue];

  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureInterestCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  summary = [itemCopy summary];
  statement = [itemCopy statement];
  balanceSummary = [summary balanceSummary];
  account = [itemCopy account];

  creditDetails = [account creditDetails];
  currencyCode = [creditDetails currencyCode];

  if (summary && ([balanceSummary interestCharged], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) && currencyCode)
  {
    interestCharged = [balanceSummary interestCharged];
  }

  else
  {
    interestCharged2 = [statement interestCharged];
    if (interestCharged2)
    {
      v15 = interestCharged2;
      currencyCode2 = [statement currencyCode];

      if (currencyCode2)
      {
        interestCharged3 = [statement interestCharged];
        currencyCode3 = [statement currencyCode];
        v19 = PKCurrencyAmountCreate(interestCharged3, currencyCode3);

        goto LABEL_10;
      }
    }

    interestCharged = [MEMORY[0x1E696AB90] zero];
  }

  interestCharged3 = interestCharged;
  v19 = PKCurrencyAmountCreate(interestCharged, currencyCode);
LABEL_10:

  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v21 = PKLocalizedFeatureString();
  [valueCellConfiguration setText:v21];

  formattedStringValue = [v19 formattedStringValue];
  [valueCellConfiguration setSecondaryText:formattedStringValue];

  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configurePaymentsAndCreditsCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  summary = [itemCopy summary];
  statement = [itemCopy statement];
  v9 = statement;
  if (summary)
  {
    account = [itemCopy account];
    creditDetails = [account creditDetails];
    currencyCode = [creditDetails currencyCode];

    type = [itemCopy type];
    switch(type)
    {
      case 5:
        balanceSummary = [summary balanceSummary];
        paymentsAndCredits = [balanceSummary paymentsAndCredits];
        goto LABEL_14;
      case 8:
        balanceSummary = [summary balanceSummary];
        paymentsAndCredits = [balanceSummary credits];
        goto LABEL_14;
      case 9:
        balanceSummary = [summary balanceSummary];
        paymentsAndCredits = [balanceSummary payments];
LABEL_14:

        goto LABEL_15;
    }

LABEL_11:
    paymentsAndCredits = 0;
    v17 = 0;
    v18 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (statement)
  {
    currencyCode = [statement currencyCode];
    type2 = [itemCopy type];
    switch(type2)
    {
      case 5:
        paymentsAndCredits = [v9 paymentsAndCredits];
        goto LABEL_15;
      case 8:
        paymentsAndCredits = [v9 credits];
        goto LABEL_15;
      case 9:
        paymentsAndCredits = [v9 payments];
LABEL_15:
        v17 = PKLocalizedFeatureString();
        v18 = 0;
        if (paymentsAndCredits && currencyCode)
        {
          v18 = PKCurrencyAmountCreate(paymentsAndCredits, currencyCode);
        }

        goto LABEL_18;
    }

    goto LABEL_11;
  }

  v17 = 0;
  v18 = 0;
LABEL_19:
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [valueCellConfiguration setText:v17];
  v20 = [(PKDashboardBalanceSummaryItemPresenter *)self _formattedCurrencyAmountWithPlusIfNeeded:v18];
  [valueCellConfiguration setSecondaryText:v20];

  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureInstallmentBalanceCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  summary = [itemCopy summary];
  installmentBalance = [summary installmentBalance];
  v8 = installmentBalance;
  if (installmentBalance)
  {
    zero = installmentBalance;
  }

  else
  {
    zero = [MEMORY[0x1E696AB90] zero];
  }

  v10 = zero;

  account = [itemCopy account];

  creditDetails = [account creditDetails];
  currencyCode = [creditDetails currencyCode];
  v14 = PKCurrencyAmountCreate(v10, currencyCode);

  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v16 = PKLocalizedFeatureString();
  [valueCellConfiguration setText:v16];

  formattedStringValue = [v14 formattedStringValue];
  [valueCellConfiguration setSecondaryText:formattedStringValue];

  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureTransactionLimitCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  accountUserCollection = [itemCopy accountUserCollection];
  currentAccountUser = [accountUserCollection currentAccountUser];
  preferences = [currentAccountUser preferences];
  transactionSpendLimitAmount = [preferences transactionSpendLimitAmount];

  account = [itemCopy account];

  creditDetails = [account creditDetails];
  currencyCode = [creditDetails currencyCode];

  if (transactionSpendLimitAmount)
  {
    if (currencyCode)
    {
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      v14 = [transactionSpendLimitAmount isEqualToNumber:notANumber];

      if ((v14 & 1) == 0)
      {
        valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
        v16 = PKLocalizedFeatureString();
        [valueCellConfiguration setText:v16];

        v17 = PKCurrencyAmountMake();
        formattedStringValue = [v17 formattedStringValue];
        [valueCellConfiguration setSecondaryText:formattedStringValue];

        [cellCopy setContentConfiguration:valueCellConfiguration];
      }
    }
  }
}

- (void)_configureMonthlySpendLimitCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  accountUserCollection = [itemCopy accountUserCollection];
  currentAccountUser = [accountUserCollection currentAccountUser];
  preferences = [currentAccountUser preferences];
  monthlySpendLimitAmount = [preferences monthlySpendLimitAmount];

  account = [itemCopy account];

  creditDetails = [account creditDetails];
  currencyCode = [creditDetails currencyCode];

  if (monthlySpendLimitAmount)
  {
    if (currencyCode)
    {
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      v14 = [monthlySpendLimitAmount isEqualToNumber:notANumber];

      if ((v14 & 1) == 0)
      {
        valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
        v16 = PKLocalizedFeatureString();
        [valueCellConfiguration setText:v16];

        v17 = PKCurrencyAmountMake();
        formattedStringValue = [v17 formattedStringValue];
        [valueCellConfiguration setSecondaryText:formattedStringValue];

        [cellCopy setContentConfiguration:valueCellConfiguration];
      }
    }
  }
}

- (void)_configureMergeBalanceCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  account = [itemCopy account];
  [account feature];
  mergeSummaryAccountDetails = [itemCopy mergeSummaryAccountDetails];
  mergeDate = [itemCopy mergeDate];
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  if (mergeSummaryAccountDetails)
  {
    v27 = mergeDate;
    currentBalance = [mergeSummaryAccountDetails currentBalance];
    creditDetails = [account creditDetails];
    currencyCode = [creditDetails currencyCode];

    ownerAltDSID = [mergeSummaryAccountDetails ownerAltDSID];
    accountUserCollection = [itemCopy accountUserCollection];
    v14 = [accountUserCollection accountUserWithAltDSID:ownerAltDSID];

    if (currentBalance && currencyCode)
    {
      v15 = PKCurrencyAmountMake();
      formattedStringValue = [v15 formattedStringValue];
      [valueCellConfiguration setSecondaryText:formattedStringValue];
    }

    if ([v14 isCurrentUser])
    {
      v17 = PKLocalizedFeatureString();
    }

    else
    {
      familyCollection = [itemCopy familyCollection];
      v21 = [familyCollection familyMemberForAltDSID:ownerAltDSID];

      v22 = MEMORY[0x1E69B8740];
      nameComponents = [v14 nameComponents];
      [v22 contactForFamilyMember:v21 nameComponents:nameComponents imageData:0];
      v24 = v26 = currencyCode;

      givenName = [v24 givenName];
      v17 = PKLocalizedFeatureString();

      currencyCode = v26;
    }

    mergeDate = v27;
    [valueCellConfiguration setText:{v17, givenName}];
    [cellCopy setContentConfiguration:valueCellConfiguration];
  }

  else
  {
    if (!mergeDate)
    {
      goto LABEL_12;
    }

    currentBalance = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    v18 = PKLocalizedFeatureString();
    [currentBalance setText:v18];

    v19 = [MEMORY[0x1E696AB78] localizedStringFromDate:mergeDate dateStyle:2 timeStyle:0];
    [currentBalance setSecondaryText:v19];

    [cellCopy setContentConfiguration:currentBalance];
  }

LABEL_12:
}

- (void)_configureMergeNoticeCell:(id)cell forItem:(id)item
{
  v4 = MEMORY[0x1E69DCC28];
  cellCopy = cell;
  subtitleCellConfiguration = [v4 subtitleCellConfiguration];
  v6 = PKLocalizedFeatureString();
  [subtitleCellConfiguration setText:v6];

  v7 = PKLocalizedFeatureString();
  [subtitleCellConfiguration setSecondaryText:v7];

  textProperties = [subtitleCellConfiguration textProperties];
  [textProperties setNumberOfLines:0];
  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setNumberOfLines:0];
  [cellCopy setContentConfiguration:subtitleCellConfiguration];
}

- (void)_configureTotalBalanceCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  account = [itemCopy account];
  [account feature];

  account2 = [itemCopy account];
  creditDetails = [account2 creditDetails];

  accountSummary = [creditDetails accountSummary];
  if (!accountSummary)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_17;
  }

  account3 = [itemCopy account];
  creditDetails2 = [account3 creditDetails];
  currencyCode = [creditDetails2 currencyCode];

  type = [itemCopy type];
  switch(type)
  {
    case 12:
      creditLimit = [accountSummary creditLimit];
      goto LABEL_11;
    case 13:
      totalBalance = [creditDetails totalBalance];
      amount = [totalBalance amount];
      zero = [MEMORY[0x1E696AB90] zero];
      v22 = [amount compare:zero];

      v16 = v22 == -1;
      if (v22 == -1)
      {
        negativeValue = [totalBalance negativeValue];

        totalBalance = negativeValue;
      }

      creditLimit = [totalBalance amount];
      v17 = PKLocalizedFeatureString();

      goto LABEL_12;
    case 14:
      creditLimit = [accountSummary availableCredit];
LABEL_11:
      v17 = PKLocalizedFeatureString();
      v16 = 0;
LABEL_12:
      v18 = 0;
      if (creditLimit && currencyCode)
      {
        v18 = PKCurrencyAmountCreate(creditLimit, currencyCode);
      }

      goto LABEL_16;
  }

  v18 = 0;
  v16 = 0;
  v17 = 0;
  creditLimit = 0;
LABEL_16:

LABEL_17:
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [valueCellConfiguration setText:v17];
  if (v16)
  {
    [(PKDashboardBalanceSummaryItemPresenter *)self _formattedCurrencyAmountWithPlusIfNeeded:v18];
  }

  else
  {
    [v18 formattedStringValue];
  }
  v25 = ;
  [valueCellConfiguration setSecondaryText:v25];

  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureDailyCashCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  summary = [itemCopy summary];
  statement = [itemCopy statement];
  balanceSummary = [summary balanceSummary];
  account = [itemCopy account];

  creditDetails = [account creditDetails];
  currencyCode = [creditDetails currencyCode];

  if (summary && ([balanceSummary rewardsEarned], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && currencyCode)
  {
    rewardsEarned = [balanceSummary rewardsEarned];
  }

  else
  {
    rewardsEarned2 = [statement rewardsEarned];
    if (rewardsEarned2)
    {
      v16 = rewardsEarned2;
      currencyCode2 = [statement currencyCode];

      if (currencyCode2)
      {
        rewardsEarned3 = [statement rewardsEarned];
        currencyCode3 = [statement currencyCode];
        v20 = PKCurrencyAmountCreate(rewardsEarned3, currencyCode3);

        goto LABEL_10;
      }
    }

    rewardsEarned = [MEMORY[0x1E696AB90] zero];
  }

  rewardsEarned3 = rewardsEarned;
  v20 = PKCurrencyAmountCreate(rewardsEarned, currencyCode);
LABEL_10:

  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v22 = PKLocalizedFeatureString();
  [valueCellConfiguration setText:v22];

  v23 = [(PKDashboardBalanceSummaryItemPresenter *)self _formattedCurrencyAmountWithPlusIfNeeded:v20];
  [valueCellConfiguration setSecondaryText:v23];
  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureRewardsSummaryCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  rewardsCurrencyAmount = [itemCopy rewardsCurrencyAmount];
  type = [itemCopy type];

  if (type == 19 || type == 20)
  {
    v8 = PKLocalizedFeatureString();
  }

  else
  {
    v8 = 0;
  }

  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [valueCellConfiguration setText:v8];
  formattedStringValue = [rewardsCurrencyAmount formattedStringValue];
  [valueCellConfiguration setSecondaryText:formattedStringValue];

  [cellCopy setContentConfiguration:valueCellConfiguration];
}

- (void)_configureExportStatementDataCell:(id)cell forItem:(id)item
{
  v12[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  v7 = PKLocalizedFeatureString();
  [cellConfiguration setText:v7];

  textProperties = [cellConfiguration textProperties];
  if (self->_exportingPDF)
  {
    [MEMORY[0x1E69DC888] placeholderTextColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v9 = ;
  [textProperties setColor:v9];

  [cellCopy setContentConfiguration:cellConfiguration];
  if (self->_exportingPDF)
  {
    _spinnerAccessory = [(PKDashboardBalanceSummaryItemPresenter *)self _spinnerAccessory];
    v12[0] = _spinnerAccessory;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [cellCopy setAccessories:v11];
  }

  else
  {
    [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
  }
}

- (id)_spinnerAccessory
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [v2 startAnimating];
  v3 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v2 placement:1];

  return v3;
}

- (void)_selectFileFormatForExportedStatementDataForItem:(id)item atIndexPath:(id)path inCollectionView:(id)view
{
  v50 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  if (PKStoreDemoModeEnabled())
  {
    v10 = PKUIStoreDemoGatewayViewController();
    pkui_viewControllerFromResponderChain = [viewCopy pkui_viewControllerFromResponderChain];
    [pkui_viewControllerFromResponderChain presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    account = [itemCopy account];
    feature = [account feature];
    exportTransactionDataFeatureDescriptor = [account exportTransactionDataFeatureDescriptor];
    supportedFileFormatsForTransactionData = [exportTransactionDataFeatureDescriptor supportedFileFormatsForTransactionData];

    v16 = [supportedFileFormatsForTransactionData count];
    if (v16 < 2)
    {
      if (v16 == 1)
      {
        firstObject = [supportedFileFormatsForTransactionData firstObject];
        [(PKDashboardBalanceSummaryItemPresenter *)self _downloadExportedStatementDataForItem:itemCopy withFileFormat:firstObject atIndexPath:pathCopy inCollectionView:viewCopy];
      }
    }

    else
    {
      v36 = account;
      v38 = itemCopy;
      v17 = MEMORY[0x1E69DC650];
      v18 = PKLocalizedFeatureString();
      v37 = [v17 alertControllerWithTitle:v18 message:0 preferredStyle:0];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v35 = supportedFileFormatsForTransactionData;
      v19 = supportedFileFormatsForTransactionData;
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
            v25 = [(PKDashboardBalanceSummaryItemPresenter *)self _readableFileTypeForFormat:v24 feature:feature];
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
              v43 = pathCopy;
              v44 = viewCopy;
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

      popoverPresentationController = [v37 popoverPresentationController];
      v32 = [viewCopy cellForItemAtIndexPath:pathCopy];
      [popoverPresentationController setSourceView:v32];

      pkui_viewControllerFromResponderChain2 = [viewCopy pkui_viewControllerFromResponderChain];
      [pkui_viewControllerFromResponderChain2 presentViewController:v37 animated:1 completion:0];

      itemCopy = v38;
      supportedFileFormatsForTransactionData = v35;
      account = v36;
    }
  }
}

- (id)_readableFileTypeForFormat:(id)format feature:(unint64_t)feature
{
  uppercaseString = [format uppercaseString];
  v5 = uppercaseString;
  if (uppercaseString == @"CSV")
  {
    goto LABEL_4;
  }

  if (uppercaseString)
  {
    v6 = [(__CFString *)uppercaseString isEqualToString:@"CSV"];

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

- (void)_downloadExportedStatementDataForItem:(id)item withFileFormat:(id)format atIndexPath:(id)path inCollectionView:(id)view
{
  itemCopy = item;
  formatCopy = format;
  pathCopy = path;
  viewCopy = view;
  account = [itemCopy account];
  feature = [account feature];
  statement = [itemCopy statement];
  accountIdentifier = [statement accountIdentifier];
  v16 = accountIdentifier;
  v36 = account;
  if (accountIdentifier)
  {
    accountIdentifier2 = accountIdentifier;
  }

  else
  {
    accountIdentifier2 = [account accountIdentifier];
  }

  v35 = accountIdentifier2;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke;
  aBlock[3] = &unk_1E8013540;
  v55 = feature;
  v18 = viewCopy;
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
  v52 = [v18 cellForItemAtIndexPath:pathCopy];
  [(PKDashboardBalanceSummaryItemPresenter *)self updateCell:v48[5] forItem:itemCopy inCollectionView:v18 atIndexPath:pathCopy];
  objc_initWeak(&location, self);
  mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
  openingDate = [statement openingDate];
  closingDate = [statement closingDate];
  creditDetails = [v36 creditDetails];
  productTimeZone = [creditDetails productTimeZone];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __124__PKDashboardBalanceSummaryItemPresenter__downloadExportedStatementDataForItem_withFileFormat_atIndexPath_inCollectionView___block_invoke_204;
  v38[3] = &unk_1E80135B8;
  objc_copyWeak(&v45, &location);
  v44 = &v47;
  v29 = v18;
  v39 = v29;
  v30 = pathCopy;
  v40 = v30;
  v33 = itemCopy;
  v41 = v33;
  v31 = v19;
  v43 = v31;
  v32 = formatCopy;
  v42 = v32;
  [mEMORY[0x1E69B8400] exportTransactionDataForAccountIdentifier:v35 withFileFormat:v32 beginDate:openingDate endDate:closingDate productTimeZone:productTimeZone completion:v38];

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

- (void)_configureStatementDownloadCell:(id)cell forItem:(id)item
{
  v12[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  v7 = PKLocalizedFeatureString();
  [cellConfiguration setText:v7];

  textProperties = [cellConfiguration textProperties];
  if (self->_downloadingPDF)
  {
    [MEMORY[0x1E69DC888] placeholderTextColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v9 = ;
  [textProperties setColor:v9];

  [cellCopy setContentConfiguration:cellConfiguration];
  if (self->_downloadingPDF)
  {
    _spinnerAccessory = [(PKDashboardBalanceSummaryItemPresenter *)self _spinnerAccessory];
    v12[0] = _spinnerAccessory;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [cellCopy setAccessories:v11];
  }
}

- (void)_downloadAndPresentStatementForItem:(id)item inCollectionView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  if (PKStoreDemoModeEnabled())
  {
    v8 = PKUIStoreDemoGatewayViewController();
    pkui_viewControllerFromResponderChain = [viewCopy pkui_viewControllerFromResponderChain];
    [pkui_viewControllerFromResponderChain presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    account = [itemCopy account];
    feature = [account feature];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke;
    aBlock[3] = &unk_1E8013540;
    v34 = feature;
    v12 = viewCopy;
    v33 = v12;
    v13 = _Block_copy(aBlock);
    webService = [itemCopy webService];
    account2 = [itemCopy account];
    statement = [itemCopy statement];
    accountIdentifier = [statement accountIdentifier];
    v18 = accountIdentifier;
    if (accountIdentifier)
    {
      accountIdentifier2 = accountIdentifier;
    }

    else
    {
      accountIdentifier2 = [account2 accountIdentifier];
    }

    v20 = accountIdentifier2;

    if (self->_pdfData && self->_pdfItem)
    {
      pkui_viewControllerFromResponderChain2 = [v12 pkui_viewControllerFromResponderChain];
      navigationController = [pkui_viewControllerFromResponderChain2 navigationController];
      _createPreviewController = [(PKDashboardBalanceSummaryItemPresenter *)self _createPreviewController];
      [navigationController presentViewController:_createPreviewController animated:1 completion:0];
    }

    else
    {
      self->_downloadingPDF = 1;
      [v12 reloadData];
      pkui_viewControllerFromResponderChain2 = objc_alloc_init(MEMORY[0x1E69B84A0]);
      [pkui_viewControllerFromResponderChain2 setAccountIdentifier:v20];
      [statement identifier];
      v28 = v12;
      v24 = webService;
      v26 = v25 = v13;
      [pkui_viewControllerFromResponderChain2 setDocumentIdentifier:v26];

      accountBaseURL = [account2 accountBaseURL];
      [pkui_viewControllerFromResponderChain2 setBaseURL:accountBaseURL];

      v13 = v25;
      webService = v24;
      [pkui_viewControllerFromResponderChain2 setAction:1];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __95__PKDashboardBalanceSummaryItemPresenter__downloadAndPresentStatementForItem_inCollectionView___block_invoke_2;
      v29[3] = &unk_1E8013608;
      v29[4] = self;
      v30 = v28;
      v31 = v13;
      [v24 accountDocumentActionWithRequest:pkui_viewControllerFromResponderChain2 completion:v29];
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

- (id)_statementCellTitleForItem:(id)item
{
  itemCopy = item;
  statement = [itemCopy statement];
  openingDate = [statement openingDate];
  closingDate = [statement closingDate];
  v8 = PKDatesMidpoint();

  account = [itemCopy account];

  creditDetails = [account creditDetails];
  productTimeZone = [creditDetails productTimeZone];

  [(NSDateFormatter *)self->_formatterMonthYear setTimeZone:productTimeZone];
  [(NSDateFormatter *)self->_formatterMonthAndDay setTimeZone:productTimeZone];
  [(NSDateFormatter *)self->_formatterMonthDayYear setTimeZone:productTimeZone];
  v12 = [(NSDateFormatter *)self->_formatterMonthYear stringFromDate:v8];
  pk_uppercaseFirstStringForPreferredLocale = [v12 pk_uppercaseFirstStringForPreferredLocale];

  return pk_uppercaseFirstStringForPreferredLocale;
}

- (BOOL)_statementIsFromMonthPriorToSummaryForItem:(id)item
{
  itemCopy = item;
  statement = [itemCopy statement];
  summary = [itemCopy summary];
  balanceSummary = [summary balanceSummary];

  openingDate = [balanceSummary openingDate];
  closingDate = [balanceSummary closingDate];
  v9 = PKDatesMidpoint();

  openingDate2 = [statement openingDate];
  closingDate2 = [statement closingDate];
  v12 = PKDatesMidpoint();

  v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v13 setMonth:-1];
  v14 = objc_alloc(MEMORY[0x1E695DEE8]);
  v15 = [v14 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  account = [itemCopy account];

  creditDetails = [account creditDetails];
  productTimeZone = [creditDetails productTimeZone];
  [v15 setTimeZone:productTimeZone];

  v19 = [v15 dateByAddingComponents:v13 toDate:v9 options:0];
  v20 = [v15 component:8 fromDate:v19];
  LOBYTE(v20) = [v15 component:8 fromDate:v12] == v20;

  return v20;
}

- (void)_configureCellForReuse:(id)reuse
{
  reuseCopy = reuse;
  [reuseCopy setWantsDefaultHighlightBehavior:0];
  [reuseCopy setWantsCustomAppearance:1];
  defaultBackgroundColor = [objc_opt_class() defaultBackgroundColor];
  [reuseCopy setBackgroundColor:defaultBackgroundColor];
}

- (id)_createPreviewController
{
  v3 = objc_alloc_init(getQLPreviewControllerClass());
  [v3 setDelegate:self];
  [v3 setDataSource:self];

  return v3;
}

- (id)provideDataForItem:(id)item
{
  pdfData = self->_pdfData;
  if (!pdfData)
  {
    pdfData = self->_exportedStatementData;
  }

  return pdfData;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  pdfItem = self->_pdfItem;
  if (!pdfItem)
  {
    pdfItem = self->_exportedStatementDataItem;
  }

  return pdfItem;
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
        v11 = [PKPaymentTransactionCollectionViewCell alloc];
        v12 = [(PKPaymentTransactionCollectionViewCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleTransactionCell = self->_sampleTransactionCell;
        self->_sampleTransactionCell = v12;
      }
    }
  }
}

@end