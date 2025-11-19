@interface PKPassShareToggleSectionController
- (NSString)footerText;
- (PKPassShareToggleSectionController)initWithIdentifier:(id)a3 title:(id)a4 toggleValue:(BOOL)a5 isEditable:(BOOL)a6 delegate:(id)a7;
- (PKPassShareToggleSectionControllerDelegate)delegate;
- (id)cellRegistrationForItem:(id)a3;
- (id)footerAttributedStringForIdentifier:(id)a3;
- (void)decorateCell:(id)a3 forIdentifier:(id)a4;
- (void)toggleValueDidChange:(id)a3;
@end

@implementation PKPassShareToggleSectionController

- (PKPassShareToggleSectionController)initWithIdentifier:(id)a3 title:(id)a4 toggleValue:(BOOL)a5 isEditable:(BOOL)a6 delegate:(id)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v22[0] = @"ToggleSection";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v20.receiver = self;
  v20.super_class = PKPassShareToggleSectionController;
  v17 = [(PKPassShareSectionController *)&v20 initWithIdentifiers:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v17->_title, a4);
    v17->_toggleValue = a5;
    v17->_isEditable = a6;
    objc_storeWeak(&v17->_delegate, v15);
    v21 = @"ToggleRow";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [(PKPaymentSetupListSectionController *)v17 setItems:v18];
  }

  return v17;
}

- (id)cellRegistrationForItem:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  v6 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PKPassShareToggleSectionController_cellRegistrationForItem___block_invoke;
  v9[3] = &unk_1E8012088;
  objc_copyWeak(&v10, &location);
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __62__PKPassShareToggleSectionController_cellRegistrationForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained decorateCell:v8 forIdentifier:v6];
  }
}

- (void)decorateCell:(id)a3 forIdentifier:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 == @"ToggleRow" || v7 && (v9 = [(__CFString *)v7 isEqualToString:@"ToggleRow"], v8, v9))
  {
    v10 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v11 setOn:self->_toggleValue];
    [v11 setEnabled:self->_isEditable];
    [v11 addTarget:self action:sel_toggleValueDidChange_ forControlEvents:4096];
    v12 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v11 placement:1];
    [v12 setMaintainsFixedSize:1];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v6 setAccessories:v13];

    [v10 setText:self->_title];
    [v10 setImage:self->_icon];
    v14 = [v10 imageProperties];
    v15 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v14 setTintColor:v15];

    [v6 setContentConfiguration:v10];
    [v6 setConfigurationUpdateHandler:&__block_literal_global_8];
  }
}

void __65__PKPassShareToggleSectionController_decorateCell_forIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC6E8];
  v3 = a2;
  v5 = [v2 listCellConfiguration];
  v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v5 setBackgroundColor:v4];

  [v3 setBackgroundConfiguration:v5];
}

- (id)footerAttributedStringForIdentifier:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_footerText);
  if (WeakRetained)
  {
    v6 = v4;
    if (v6 == @"ToggleSection")
    {
    }

    else
    {
      v7 = v6;
      if (!v6)
      {

LABEL_9:
        WeakRetained = 0;
        goto LABEL_10;
      }

      v8 = [(__CFString *)v6 isEqualToString:@"ToggleSection"];

      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = objc_loadWeakRetained(&self->_footerText);
    v15[0] = *MEMORY[0x1E69DB648];
    v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC60]);
    v16[0] = v11;
    v15[1] = *MEMORY[0x1E69DB650];
    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v16[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    WeakRetained = [v9 initWithString:v10 attributes:v13];
  }

LABEL_10:

  return WeakRetained;
}

- (void)toggleValueDidChange:(id)a3
{
  self->_toggleValue = [a3 isOn];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained toggle:self->_identifier valueDidChange:self->_toggleValue];
}

- (PKPassShareToggleSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)footerText
{
  WeakRetained = objc_loadWeakRetained(&self->_footerText);

  return WeakRetained;
}

@end