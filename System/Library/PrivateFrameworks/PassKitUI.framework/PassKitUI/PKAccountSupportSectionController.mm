@interface PKAccountSupportSectionController
- (PKAccountSupportSectionController)initWithAccount:(id)account;
- (id)_decorateListCell:(id)cell forRowItem:(id)item;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
@end

@implementation PKAccountSupportSectionController

- (PKAccountSupportSectionController)initWithAccount:(id)account
{
  accountCopy = account;
  v18.receiver = self;
  v18.super_class = PKAccountSupportSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    objc_initWeak(&location, v7);
    v8 = MEMORY[0x1E69DC800];
    v9 = objc_opt_class();
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __53__PKAccountSupportSectionController_initWithAccount___block_invoke;
    v15 = &unk_1E8012088;
    objc_copyWeak(&v16, &location);
    v10 = [v8 registrationWithCellClass:v9 configurationHandler:&v12];
    [(PKPaymentSetupListSectionController *)v7 setCellRegistration:v10, v12, v13, v14, v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __53__PKAccountSupportSectionController_initWithAccount___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained _decorateListCell:v9 forRowItem:v6];
  }
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PKAccountSupportSectionController;
  v4 = [(PKPaymentSetupListSectionController *)&v6 layoutWithLayoutEnvironment:environment sectionIdentifier:identifier];
  [v4 contentInsets];
  [v4 setContentInsets:16.0];

  return v4;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_account;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)_decorateListCell:(id)cell forRowItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  if ([itemCopy feature] == 5)
  {
    v8 = PKPassKitUIBundle();
    v9 = [v8 URLForResource:@"SAVINGS_Icon" withExtension:@"pdf"];

    savingsDetails = [itemCopy savingsDetails];
    accountSummary = [savingsDetails accountSummary];
    currentBalance = [accountSummary currentBalance];
    currencyCode = [savingsDetails currencyCode];
    v14 = PKCurrencyAmountMake();

    v15 = PKLocalizedFeatureString();
    [subtitleCellConfiguration setText:v15];

    textProperties = [subtitleCellConfiguration textProperties];
    v17 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC90], 2, 0);
    [textProperties setFont:v17];

    if (v14)
    {
      formattedStringValue = [v14 formattedStringValue];
      v19 = PKLocalizedFeatureString();
      [subtitleCellConfiguration setSecondaryText:{v19, formattedStringValue}];

      [subtitleCellConfiguration setTextToSecondaryTextVerticalPadding:4.0];
      secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [secondaryTextProperties setColor:secondaryLabelColor];

      v22 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
      [secondaryTextProperties setFont:v22];
    }

    v23 = PKUIScreenScale();
    v24 = PKUIImageFromPDF(v9, 45.0, 45.0, v23);
    [subtitleCellConfiguration setImage:v24];
    [subtitleCellConfiguration setImageToTextPadding:16.0];
    imageProperties = [subtitleCellConfiguration imageProperties];
    [imageProperties setCornerRadius:4.0];
    [imageProperties setAccessibilityIgnoresInvertColors:1];
    [subtitleCellConfiguration setDirectionalLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    [cellCopy setContentConfiguration:subtitleCellConfiguration];
  }

  return subtitleCellConfiguration;
}

@end