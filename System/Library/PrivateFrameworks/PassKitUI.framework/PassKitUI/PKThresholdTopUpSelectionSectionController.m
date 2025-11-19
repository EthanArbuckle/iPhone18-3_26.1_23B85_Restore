@interface PKThresholdTopUpSelectionSectionController
- (BOOL)shouldHighlightItem:(id)a3;
- (BOOL)valuesEdited;
- (NSArray)identifiers;
- (PKThresholdTopUpSelectionSectionController)initWithAmountSuggestions:(id)a3 selectedAmount:(id)a4 thresholdSuggestions:(id)a5 selectedThreshold:(id)a6 currencyCode:(id)a7 paymentMethodName:(id)a8 paymentMethodIdentifier:(id)a9 viewStyle:(int64_t)a10 delegate:(id)a11 useSetupMargins:(BOOL)a12;
- (id)_buttonAccessoryForItem:(id)a3;
- (id)cellRegistrationForItem:(id)a3;
- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
- (void)applyUpdate;
- (void)didSelectItem:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)updatePaymentMethod:(id)a3;
- (void)updateTopUpAmount:(id)a3 threshold:(id)a4 paymentMethodName:(id)a5 paymentMethodIdentifier:(id)a6;
@end

@implementation PKThresholdTopUpSelectionSectionController

- (PKThresholdTopUpSelectionSectionController)initWithAmountSuggestions:(id)a3 selectedAmount:(id)a4 thresholdSuggestions:(id)a5 selectedThreshold:(id)a6 currencyCode:(id)a7 paymentMethodName:(id)a8 paymentMethodIdentifier:(id)a9 viewStyle:(int64_t)a10 delegate:(id)a11 useSetupMargins:(BOOL)a12
{
  v19 = a3;
  v20 = a4;
  obj = a5;
  v21 = a5;
  v22 = a6;
  v36 = a7;
  v34 = a8;
  v23 = a8;
  v24 = v22;
  v35 = a9;
  v25 = a11;
  v37.receiver = self;
  v37.super_class = PKThresholdTopUpSelectionSectionController;
  v26 = [(PKThresholdTopUpSelectionSectionController *)&v37 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_amountSuggestions, a3);
    objc_storeStrong(&v27->_thresholdSuggestions, obj);
    objc_storeStrong(&v27->_currencyCode, a7);
    v27->_amountIsExpanded = 1;
    *&v27->_enabled = 257;
    objc_storeWeak(&v27->_delegate, v25);
    if (v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = [v19 firstObject];
    }

    currentAmount = v27->_currentAmount;
    v27->_currentAmount = v28;

    objc_storeStrong(&v27->_originalAmount, v27->_currentAmount);
    if (v24)
    {
      v30 = v24;
    }

    else
    {
      v30 = [v21 firstObject];
    }

    currentThreshold = v27->_currentThreshold;
    v27->_currentThreshold = v30;

    objc_storeStrong(&v27->_originalThreshold, v27->_currentThreshold);
    objc_storeStrong(&v27->_currentPaymentMethodName, v34);
    objc_storeStrong(&v27->_originalPaymentMethodName, v27->_currentPaymentMethodName);
    objc_storeStrong(&v27->_currentPaymentMethodIdentifier, a9);
    objc_storeStrong(&v27->_originalPaymentMethodIdentifier, v27->_currentPaymentMethodIdentifier);
    v27->_viewStyle = a10;
    v27->_useSetupMargins = a12;
  }

  return v27;
}

- (void)setEditing:(BOOL)a3
{
  self->_editing = a3;
  if (!a3)
  {
    *&self->_amountIsExpanded = 0;
    objc_storeStrong(&self->_currentAmount, self->_originalAmount);
    objc_storeStrong(&self->_currentThreshold, self->_originalThreshold);
    objc_storeStrong(&self->_currentPaymentMethodName, self->_originalPaymentMethodName);
    objc_storeStrong(&self->_currentPaymentMethodIdentifier, self->_originalPaymentMethodIdentifier);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:1];
}

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadDataAnimated:1];
}

- (void)applyUpdate
{
  objc_storeStrong(&self->_originalAmount, self->_currentAmount);
  objc_storeStrong(&self->_originalThreshold, self->_currentThreshold);
  objc_storeStrong(&self->_originalPaymentMethodName, self->_currentPaymentMethodName);
  currentPaymentMethodIdentifier = self->_currentPaymentMethodIdentifier;

  objc_storeStrong(&self->_originalPaymentMethodIdentifier, currentPaymentMethodIdentifier);
}

- (BOOL)valuesEdited
{
  if (PKEqualObjects() && PKEqualObjects())
  {
    return PKEqualObjects() ^ 1;
  }

  else
  {
    return 1;
  }
}

- (NSArray)identifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"thresholdSelection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)shouldHighlightItem:(id)a3
{
  if (!self->_editing)
  {
    return 0;
  }

  v3 = [a3 identifier];
  if (PKEqualObjects() & 1) != 0 || (PKEqualObjects())
  {
    v4 = 1;
  }

  else
  {
    v4 = PKEqualObjects();
  }

  return v4;
}

- (void)updateTopUpAmount:(id)a3 threshold:(id)a4 paymentMethodName:(id)a5 paymentMethodIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  self->_amountIsExpanded = self->_editing;
  self->_enabled = 1;
  currentAmount = self->_currentAmount;
  self->_currentAmount = v10;
  v15 = v10;

  currentThreshold = self->_currentThreshold;
  self->_currentThreshold = v11;
  v17 = v11;

  currentPaymentMethodName = self->_currentPaymentMethodName;
  self->_currentPaymentMethodName = v12;
  v19 = v12;

  currentPaymentMethodIdentifier = self->_currentPaymentMethodIdentifier;
  self->_currentPaymentMethodIdentifier = v13;

  [(PKThresholdTopUpSelectionSectionController *)self applyUpdate];
}

- (void)updatePaymentMethod:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedDescription];
  currentPaymentMethodName = self->_currentPaymentMethodName;
  self->_currentPaymentMethodName = v5;

  v7 = [v4 primaryAccountIdentifier];

  currentPaymentMethodIdentifier = self->_currentPaymentMethodIdentifier;
  self->_currentPaymentMethodIdentifier = v7;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"paymentMethodIdentifier"];
  [WeakRetained reloadItem:v9 animated:1];
}

- (void)didSelectItem:(id)a3
{
  v7 = [a3 identifier];
  if (PKEqualObjects() && !self->_amountIsExpanded)
  {
    v5 = 1;
LABEL_9:
    *&self->_amountIsExpanded = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadDataAnimated:1];
    goto LABEL_10;
  }

  if (PKEqualObjects() && !self->_thresholdIsExpanded)
  {
    v5 = 256;
    goto LABEL_9;
  }

  if (!PKEqualObjects())
  {
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectPaymentMethod];
LABEL_10:

LABEL_11:
  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 deselectCells];
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  v7 = v5;
  v8 = v7;
  if (v7 == @"thresholdSelection" || v7 && (v9 = [(__CFString *)v7 isEqualToString:@"thresholdSelection"], v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"amountIdentifier"];
    [v10 addObject:v11];

    if (self->_amountIsExpanded)
    {
      v12 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"amountPickerIdentifier"];
      [v10 addObject:v12];
    }

    v13 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"thresholdIdentifier"];
    [v10 addObject:v13];

    if (self->_thresholdIsExpanded)
    {
      v14 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"thresholdPickerIdentifier"];
      [v10 addObject:v14];
    }

    if ([(NSString *)self->_currentPaymentMethodName length])
    {
      v15 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"paymentMethodIdentifier"];
      [v10 addObject:v15];
    }

    v16 = [v10 copy];
    [v6 appendItems:v16];
  }

  return v6;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (PKEqualObjects() & 1) != 0 || (PKEqualObjects())
  {
    objc_initWeak(&location, self);
LABEL_4:
    v6 = objc_opt_class();
    v7 = MEMORY[0x1E69DC800];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke;
    v17[3] = &unk_1E801CCA0;
    v8 = &v18;
    objc_copyWeak(&v18, &location);
    v17[4] = self;
    v9 = [v7 registrationWithCellClass:v6 configurationHandler:v17];
    goto LABEL_5;
  }

  v12 = PKEqualObjects();
  objc_initWeak(&location, self);
  if (v12)
  {
    goto LABEL_4;
  }

  v13 = objc_opt_class();
  v14 = MEMORY[0x1E69DC800];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke_2;
  v15[3] = &unk_1E801CCC8;
  v8 = &v16;
  objc_copyWeak(&v16, &location);
  v15[4] = self;
  v9 = [v14 registrationWithCellClass:v13 configurationHandler:v15];
LABEL_5:
  v10 = v9;
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v10;
}

void __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = [v7 identifier];
    v10 = v9;
    v11 = v9 == @"amountIdentifier";
    if (v9 == @"amountIdentifier" || !v9)
    {

      v21 = v10;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = [(__CFString *)v9 isEqualToString:@"amountIdentifier"];

      if (v10 == @"thresholdIdentifier")
      {
        goto LABEL_14;
      }

      if (v10)
      {
LABEL_6:
        v12 = [(__CFString *)v10 isEqualToString:@"thresholdIdentifier"]| v11;

        if ((v12 & 1) == 0)
        {
          v13 = v10;
          if (v13 != @"paymentMethodIdentifier")
          {
            v14 = v13;
            v15 = [(__CFString *)v13 isEqualToString:@"paymentMethodIdentifier"];

            if (!v15)
            {
              goto LABEL_30;
            }
          }

          v16 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
          [v16 setText:*(*(a1 + 32) + 144)];
          [v16 setSecondaryText:*(*(a1 + 32) + 40)];
          v17 = *(*(a1 + 32) + 120);
          v18 = [v16 textProperties];
          if (v17)
          {
            v19 = [MEMORY[0x1E69DC888] labelColor];
            [v18 setColor:v19];

            v20 = [v16 secondaryTextProperties];
            [MEMORY[0x1E69DC888] secondaryLabelColor];
          }

          else
          {
            v36 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
            [v18 setColor:v36];

            v20 = [v16 secondaryTextProperties];
            [MEMORY[0x1E69DC888] tertiaryLabelColor];
          }
          v37 = ;
          [v20 setColor:v37];

          if (*(*(a1 + 32) + 121) != 1)
          {
            [v6 setAccessories:MEMORY[0x1E695E0F0]];
            goto LABEL_29;
          }

          v32 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
          v39 = v32;
          v33 = MEMORY[0x1E695DEC8];
          v34 = &v39;
          goto LABEL_27;
        }

LABEL_14:
        v22 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
        v16 = v22;
        v23 = 136;
        if (v11)
        {
          v23 = 128;
          v24 = MEMORY[0x1E69B9448];
        }

        else
        {
          v24 = MEMORY[0x1E69B9D18];
        }

        [v22 setText:*(*(a1 + 32) + v23)];
        [v6 setAccessibilityIdentifier:*v24];
        v25 = *(*(a1 + 32) + 120);
        v26 = [v16 textProperties];
        if (v25)
        {
          v27 = [MEMORY[0x1E69DC888] labelColor];
          [v26 setColor:v27];

          v28 = [v16 secondaryTextProperties];
          [MEMORY[0x1E69DC888] secondaryLabelColor];
        }

        else
        {
          v29 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
          [v26 setColor:v29];

          v28 = [v16 secondaryTextProperties];
          [MEMORY[0x1E69DC888] tertiaryLabelColor];
        }
        v30 = ;
        [v28 setColor:v30];

        v31 = *(a1 + 32);
        if (v31[121] != 1)
        {
          v32 = PKCurrencyAmountMake();
          v35 = [v32 minimalFormattedStringValue];
          [v16 setSecondaryText:v35];

          [v6 setAccessories:MEMORY[0x1E695E0F0]];
LABEL_28:

LABEL_29:
          [v6 setContentConfiguration:v16];

LABEL_30:
          goto LABEL_31;
        }

        v32 = [v31 _buttonAccessoryForItem:v7];
        v40[0] = v32;
        v33 = MEMORY[0x1E695DEC8];
        v34 = v40;
LABEL_27:
        v38 = [v33 arrayWithObjects:v34 count:1];
        [v6 setAccessories:v38];

        goto LABEL_28;
      }
    }

    if (!v11)
    {
      goto LABEL_30;
    }

    LOBYTE(v11) = 1;
    goto LABEL_14;
  }

LABEL_31:
}

void __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v34 = a2;
  v32 = a3;
  v33 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = [v33 identifier];
    [v34 setAccessibilityIdentifier:v7];
    v8 = v7;
    v9 = v8;
    if (v8 == @"amountPickerIdentifier")
    {
      goto LABEL_5;
    }

    if (!v8)
    {
LABEL_18:

      goto LABEL_19;
    }

    v10 = [(__CFString *)v8 isEqualToString:@"amountPickerIdentifier"];

    if (v10)
    {
LABEL_5:
      v31 = v9;
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v12 = WeakRetained[9];
      v13 = 0;
      v14 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v14)
      {
        v15 = *v45;
        do
        {
          v16 = 0;
          do
          {
            if (*v45 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = PKCurrencyAmountMake();
            v18 = [v17 minimalFormattedStringValue];
            if (PKEqualObjects())
            {
              v19 = v18;

              v13 = v19;
            }

            [v11 addObject:{v18, v31, v32}];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v14);
      }

      [v34 setValues:v11];
      if (v13)
      {
        [v34 updateSelectedValue:v13];
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke_3;
      v42[3] = &unk_1E801A1E8;
      v20 = &v43;
      objc_copyWeak(&v43, (a1 + 40));
      [v34 setSelectionChanged:v42];
    }

    else
    {
      v21 = v9;
      if (v21 != @"thresholdPickerIdentifier")
      {
        v22 = v21;
        v23 = [(__CFString *)v21 isEqualToString:@"thresholdPickerIdentifier"];

        if (!v23)
        {
          goto LABEL_18;
        }
      }

      v31 = v9;
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = WeakRetained[10];
      v13 = 0;
      v25 = [v24 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v25)
      {
        v26 = *v39;
        do
        {
          v27 = 0;
          do
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = PKCurrencyAmountMake();
            v29 = [v28 minimalFormattedStringValue];
            if (PKEqualObjects())
            {
              v30 = v29;

              v13 = v30;
            }

            [v11 addObject:{v29, v31, v32}];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v24 countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v25);
      }

      [v34 setValues:v11];
      if (v13)
      {
        [v34 updateSelectedValue:v13];
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke_4;
      v36[3] = &unk_1E801A1E8;
      v20 = &v37;
      objc_copyWeak(&v37, (a1 + 40));
      [v34 setSelectionChanged:v36];
    }

    objc_destroyWeak(v20);

    v9 = v31;
    goto LABEL_18;
  }

LABEL_19:
}

void __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained[9] objectAtIndex:a2];
    v5 = v8[1];
    v8[1] = v4;

    v6 = objc_loadWeakRetained(v8 + 14);
    v7 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"amountIdentifier"];
    [v6 reloadItem:v7 animated:1];

    WeakRetained = v8;
  }
}

void __70__PKThresholdTopUpSelectionSectionController_cellRegistrationForItem___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained[10] objectAtIndex:a2];
    v5 = v8[2];
    v8[2] = v4;

    v6 = objc_loadWeakRetained(v8 + 14);
    v7 = [[PKThresholdTopUpSelectionItem alloc] initWithIdentifier:@"thresholdIdentifier"];
    [v6 reloadItem:v7 animated:1];

    WeakRetained = v8;
  }
}

- (id)_buttonAccessoryForItem:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC628];
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __70__PKThresholdTopUpSelectionSectionController__buttonAccessoryForItem___block_invoke;
  v33 = &unk_1E8012328;
  objc_copyWeak(&v35, &location);
  v6 = v4;
  v34 = v6;
  v7 = [v5 actionWithHandler:&v30];
  v8 = [v6 identifier];
  v9 = MEMORY[0x1E69DC738];
  v10 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v11 = [v9 buttonWithConfiguration:v10 primaryAction:v7];

  v12 = [v11 configuration];
  v13 = [MEMORY[0x1E69DC888] labelColor];
  v14 = v8;
  v15 = v14;
  if (v14 == @"amountIdentifier")
  {
LABEL_4:
    v17 = PKCurrencyAmountMake();
    if (!self->_amountIsExpanded)
    {
      goto LABEL_15;
    }

    if (self->_viewStyle == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  if (!v14)
  {
    goto LABEL_13;
  }

  v16 = [(__CFString *)v14 isEqualToString:@"amountIdentifier"];

  if (v16)
  {
    goto LABEL_4;
  }

  v19 = v15;
  if (v19 == @"thresholdIdentifier" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"thresholdIdentifier"], v20, v21))
  {
    v17 = PKCurrencyAmountMake();
    if (self->_thresholdIsExpanded)
    {
      if (self->_viewStyle == 2)
      {
LABEL_6:
        PKBridgeButtonTextColor();
        v18 = LABEL_7:;
        v22 = v18;

        v13 = v22;
        goto LABEL_15;
      }

LABEL_14:
      [MEMORY[0x1E69DC888] linkColor];
      goto LABEL_7;
    }
  }

  else
  {
LABEL_13:
    v17 = 0;
  }

LABEL_15:
  v23 = objc_alloc(MEMORY[0x1E696AAB0]);
  v24 = [v17 minimalFormattedStringValue];
  v37 = *MEMORY[0x1E69DB650];
  v38[0] = v13;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v26 = [v23 initWithString:v24 attributes:v25];
  [v12 setAttributedTitle:v26];

  [v11 setConfiguration:v12];
  v27 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v11 setTintColor:v27];

  v28 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v11 placement:1];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  return v28;
}

void __70__PKThresholdTopUpSelectionSectionController__buttonAccessoryForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didSelectItem:*(a1 + 32)];
}

- (id)layoutWithLayoutEnvironment:(id)a3 sectionIdentifier:(id)a4
{
  v5 = MEMORY[0x1E69DC7E0];
  v6 = a3;
  v7 = [[v5 alloc] initWithAppearance:2];
  v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v6];

  [v8 contentInsets];
  if (self->_useSetupMargins)
  {
    PKSetupViewConstantsListSectionInset(v9);
  }

  [v8 setContentInsets:11.0];

  return v8;
}

@end