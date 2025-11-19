@interface PKPassShareRedemptionActivationCodeSectionController
- (BOOL)hasValidActivationCode;
- (BOOL)requiresActivationCode;
- (PKPassShareRedemptionActivationCodeSectionController)initWithMode:(unint64_t)a3 delegate:(id)a4;
- (void)_endEditing;
- (void)decorateListCell:(id)a3 forRowItem:(id)a4;
- (void)didSelectItem:(id)a3;
- (void)reloadItemsAnimated:(BOOL)a3;
- (void)setActivationOptions:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3 forListCell:(id)a4;
@end

@implementation PKPassShareRedemptionActivationCodeSectionController

- (PKPassShareRedemptionActivationCodeSectionController)initWithMode:(unint64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = PKPassShareRedemptionActivationCodeSectionController;
  v7 = [(PKPassShareSectionController *)&v19 initWithIdentifiers:&unk_1F3CC8750];
  v8 = v7;
  if (v7)
  {
    v7->_mode = a3;
    objc_storeWeak(&v7->_delegate, v6);
    objc_initWeak(&location, v8);
    v9 = MEMORY[0x1E69DC800];
    v10 = objc_opt_class();
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __78__PKPassShareRedemptionActivationCodeSectionController_initWithMode_delegate___block_invoke;
    v16 = &unk_1E8025A98;
    objc_copyWeak(&v17, &location);
    v11 = [v9 registrationWithCellClass:v10 configurationHandler:&v13];
    [(PKPaymentSetupListSectionController *)v8 setCellRegistration:v11, v13, v14, v15, v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __78__PKPassShareRedemptionActivationCodeSectionController_initWithMode_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained decorateListCell:v8 forRowItem:v6];
  }
}

- (void)setActivationOptions:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_activationOptions, a3);
  [(PKPassShareRedemptionActivationCodeSectionController *)self reloadItemsAnimated:0];
  v5 = [(PKPassShareActivationOptions *)self->_activationOptions primaryOption];
  v6 = [v5 value];
  if (v6)
  {
    objc_storeStrong(&self->_enteredActivationCode, v6);
  }

  [(PKPassShareRedemptionActivationCodeSectionController *)self reloadItemsAnimated:0];
}

- (BOOL)requiresActivationCode
{
  v2 = [(PKPassShareActivationOptions *)self->_activationOptions primaryOption];
  v3 = [v2 requiresActivationCode];

  return v3;
}

- (BOOL)hasValidActivationCode
{
  v3 = [(PKPassShareActivationOptions *)self->_activationOptions primaryOption];
  v4 = [v3 valueLength];

  v5 = [(NSString *)self->_enteredActivationCode length];
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return 1;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  return !v7;
}

- (void)reloadItemsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PKPassShareRedemptionActivationCodeSectionController *)self requiresActivationCode])
  {
    v11 = [(PKPassShareActivationOptions *)self->_activationOptions primaryOption];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v11 type];
    if (PKPassShareActivationOptionTypeIsActivationCode())
    {
      v6 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"EnterActivationCode"];
      v7 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewA_0.isa);
      [(PKSharePreviewRowItem *)v6 setTitle:v7];

      v8 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_7.isa);
      [(PKSharePreviewRowItem *)v6 setSubtitle:v8];

      [v5 addObject:v6];
    }

    [(PKPaymentSetupListSectionController *)self setItems:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadDataAnimated:v3];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];

    [(PKPaymentSetupListSectionController *)self setItems:v10];
  }
}

- (void)decorateListCell:(id)a3 forRowItem:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[PKListTextFieldContentConfiguration valueCellConfiguration];
  v9 = [v7 subtitle];
  [v8 setPlaceholderText:v9];

  v10 = [v7 title];

  [v8 setSecondaryText:v10];
  [v8 setDirectionalLayoutMargins:{10.0, 10.0, 10.0, 0.0}];
  [v8 setKeyboardType:4];
  [v8 setReturnKeyType:9];
  v11 = [v8 secondaryTextProperties];
  v12 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70]);
  [v11 setFont:v12];

  [v8 setFocusTextField:0];
  [v6 setContentConfiguration:v8];
  [v6 setDelegate:self];
  if (_UISolariumFeatureFlagEnabled())
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [v13 addObject:v14];

    v15 = [MEMORY[0x1E69DC740] pkui_createPlainMinimalButtonConfiguration];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
    [v15 setImage:v16];

    [v15 setImagePadding:8.0];
    v17 = [MEMORY[0x1E69DC888] labelColor];
    [v15 setBaseForegroundColor:v17];

    v18 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [v18 setConfiguration:v15];
    [v18 addTarget:self action:sel__endEditing forControlEvents:0x2000];
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v18];
    [v13 addObject:v19];

    [v6 setToolbarItems:v13];
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = PKLocalizedString(&cfstr_Done.isa);
    v22 = [v20 initWithTitle:v21 style:2 target:self action:sel__endEditing];

    v24[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v6 setToolbarItems:v23];
  }

  [v6 setConfigurationUpdateHandler:&__block_literal_global_250];
}

void __84__PKPassShareRedemptionActivationCodeSectionController_decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v4 = MEMORY[0x1E69DC6E8];
  v5 = a2;
  v6 = [v4 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v7 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  v8 = v7;
  [v6 setBackgroundColor:v7];

  [v5 setBackgroundConfiguration:v6];
}

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = [v6 cellForItem:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 beginEditing];
  }
}

- (void)textFieldDidBeginEditing:(id)a3 forListCell:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setIsEnteringActivationCode:1];

  v6 = objc_loadWeakRetained(&self->_delegate);
  [v6 reloadDataAnimated:1];
}

- (void)_endEditing
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(PKPaymentSetupListSectionController *)self items];
  v5 = [v4 firstObject];
  v12 = [WeakRetained cellForItem:v5];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v12;
      [v6 endEditing];
      v7 = [v6 textFieldText];

      enteredActivationCode = self->_enteredActivationCode;
      self->_enteredActivationCode = v7;
    }
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  [v9 setIsEnteringActivationCode:0];

  v10 = objc_loadWeakRetained(&self->_delegate);
  [v10 activationCodeDidChange];

  v11 = objc_loadWeakRetained(&self->_delegate);
  [v11 reloadDataAnimated:1];
}

@end