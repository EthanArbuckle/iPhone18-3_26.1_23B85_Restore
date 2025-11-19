@interface PKAccountSupportSectionController
- (PKAccountSupportSectionController)initWithAccount:(id)a3;
- (id)_decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
@end

@implementation PKAccountSupportSectionController

- (PKAccountSupportSectionController)initWithAccount:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PKAccountSupportSectionController;
  v6 = [(PKPaymentSetupListSectionController *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
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

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKAccountSupportSectionController;
  v4 = [(PKPaymentSetupListSectionController *)&v6 layoutWithLayoutEnvironment:a3 sectionIdentifier:a4];
  [v4 contentInsets];
  [v4 setContentInsets:16.0];

  return v4;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v8[0] = self->_account;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 appendItems:v6];

  return v5;
}

- (id)_decorateListCell:(id)a3 forRowItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  if ([v6 feature] == 5)
  {
    v8 = PKPassKitUIBundle();
    v9 = [v8 URLForResource:@"SAVINGS_Icon" withExtension:@"pdf"];

    v10 = [v6 savingsDetails];
    v11 = [v10 accountSummary];
    v12 = [v11 currentBalance];
    v13 = [v10 currencyCode];
    v14 = PKCurrencyAmountMake();

    v15 = PKLocalizedFeatureString();
    [v7 setText:v15];

    v16 = [v7 textProperties];
    v17 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC90], 2, 0);
    [v16 setFont:v17];

    if (v14)
    {
      v18 = [v14 formattedStringValue];
      v19 = PKLocalizedFeatureString();
      [v7 setSecondaryText:{v19, v18}];

      [v7 setTextToSecondaryTextVerticalPadding:4.0];
      v20 = [v7 secondaryTextProperties];
      v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v20 setColor:v21];

      v22 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
      [v20 setFont:v22];
    }

    v23 = PKUIScreenScale();
    v24 = PKUIImageFromPDF(v9, 45.0, 45.0, v23);
    [v7 setImage:v24];
    [v7 setImageToTextPadding:16.0];
    v25 = [v7 imageProperties];
    [v25 setCornerRadius:4.0];
    [v25 setAccessibilityIgnoresInvertColors:1];
    [v7 setDirectionalLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    [v5 setContentConfiguration:v7];
  }

  return v7;
}

@end