@interface PKSharePreviewAdditionalSecuritySectionController
- (id)_initWithMode:(unint64_t)a3 activationOptions:(id)a4 context:(id)a5 delegate:(id)a6;
- (id)decorateListCell:(id)a3 forRowItem:(id)a4;
- (id)footerAttributedStringForIdentifier:(id)a3;
- (id)headerAttributedStringForIdentifier:(id)a3;
- (void)_activationCodeSwitchValueChanged:(id)a3;
- (void)didSelectItem:(id)a3;
- (void)reloadItemsAnimated:(BOOL)a3;
- (void)setContext:(id)a3;
@end

@implementation PKSharePreviewAdditionalSecuritySectionController

- (id)_initWithMode:(unint64_t)a3 activationOptions:(id)a4 context:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = PKSharePreviewAdditionalSecuritySectionController;
  v14 = [(PKPassShareSectionController *)&v26 initWithIdentifiers:&unk_1F3CC87B0];
  p_isa = &v14->super.super.super.isa;
  if (v14)
  {
    v14->_mode = a3;
    objc_storeStrong(&v14->_activationOptions, a4);
    objc_storeStrong(p_isa + 11, a5);
    objc_storeWeak(p_isa + 12, v13);
    objc_initWeak(&location, p_isa);
    v16 = MEMORY[0x1E69DC800];
    v17 = objc_opt_class();
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __102__PKSharePreviewAdditionalSecuritySectionController__initWithMode_activationOptions_context_delegate___block_invoke;
    v23 = &unk_1E8012088;
    objc_copyWeak(&v24, &location);
    v18 = [v16 registrationWithCellClass:v17 configurationHandler:&v20];
    [p_isa setCellRegistration:{v18, v20, v21, v22, v23}];

    [p_isa reloadItemsAnimated:0];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return p_isa;
}

void __102__PKSharePreviewAdditionalSecuritySectionController__initWithMode_activationOptions_context_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained decorateListCell:v9 forRowItem:v6];
  }
}

- (void)setContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);

  [(PKSharePreviewAdditionalSecuritySectionController *)self reloadItemsAnimated:0];
}

- (void)reloadItemsAnimated:(BOOL)a3
{
  activationOptions = self->_activationOptions;
  v44 = a3;
  if (activationOptions)
  {
    v5 = activationOptions;
LABEL_4:
    v7 = 1;
    v43 = v5;
    v8 = v43;
    goto LABEL_5;
  }

  v6 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v5 = [v6 activationOptions];

  if (v5)
  {
    goto LABEL_4;
  }

  v41 = [(PKPassShareInitiationContext *)self->_context availableActivationOptions];
  if (v41)
  {
    v8 = v41;
    v7 = 0;
    v43 = 0;
LABEL_5:
    v9 = PKPassShareActivationOptionActivationCodeTypes();
    v10 = [v8 optionOfTypes:v9];

    v46 = [v10 value];
    v45 = [v8 optionsOfType:3];
    footerText = self->_footerText;
    self->_footerText = 0;

    context = self->_context;
    if (context)
    {
      v13 = [(PKPassShareInitiationContext *)context areActivationOptionsUserEditable];
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v13)
      {
        v15 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"ActivationCodeToggleRowItem"];
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"number.circle.fill" withConfiguration:0];
        [(PKSharePreviewRowItem *)v15 setIcon:v16];

        if (v10)
        {
          v17 = @"SHARE_OVERVIEW_ACTIVATION_CODE_TITLE";
        }

        else
        {
          v17 = @"SHARE_OVERVIEW_ACTIVATION_CODE_EXTERNAL_KEY_TITLE";
        }

        v18 = PKLocalizedShareableCredentialString(&v17->isa);
        [(PKSharePreviewRowItem *)v15 setTitle:v18];

        v19 = 1;
        if (v7)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        [(PKSharePreviewRowItem *)v15 setDisplayToggleState:v20];
        [v14 addObject:v15];

        goto LABEL_16;
      }
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v19 = 0;
LABEL_16:
    v21 = v7 ^ 1;
    if (v10)
    {
      v22 = v7 ^ 1;
    }

    else
    {
      v22 = 1;
    }

    v23 = v45;
    if ((v22 & 1) == 0)
    {
      v24 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"ActivationCodePreviewRowItem"];
      if (v19)
      {
        PKLocalizedShareableCredentialString(&cfstr_ShareOverviewA_2.isa);
      }

      else
      {
        v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"number.circle.fill" withConfiguration:0];
        [(PKSharePreviewRowItem *)v24 setIcon:v25];

        [v10 localizedName];
      }
      v26 = ;
      [(PKSharePreviewRowItem *)v24 setTitle:v26];

      [(PKSharePreviewRowItem *)v24 setIsShowingSensitiveContent:1];
      v27 = v46;
      if (v27 && (v28 = v27, v29 = [v27 length], v28, v29))
      {
        [(PKSharePreviewRowItem *)v24 setSubtitle:v28];
      }

      else
      {
        v30 = PKPANMask();
        [(PKSharePreviewRowItem *)v24 setSubtitle:v30];
      }

      [v14 addObject:v24];

      v23 = v45;
    }

    if ([v23 count])
    {
      v31 = v21;
    }

    else
    {
      v31 = 1;
    }

    if ((v31 & 1) == 0 && v23)
    {
      v32 = [[PKSharePreviewRowItem alloc] initWithIdentifier:@"ActivationExistingKeyPreviewRowItem"];
      v33 = PKLocalizedShareableCredentialString(&cfstr_ShareActivatio_8.isa);
      [(PKSharePreviewRowItem *)v32 setTitle:v33];

      if ((v19 & 1) == 0)
      {
        v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"key" withConfiguration:0];
        [(PKSharePreviewRowItem *)v32 setIcon:v34];
      }

      [(PKSharePreviewRowItem *)v32 setIsShowingSensitiveContent:1];
      [v14 addObject:v32];
    }

    v35 = MEMORY[0x1E696AEC0];
    v36 = [v8 localizationKeyPostfixForInitiation];
    v37 = [v35 stringWithFormat:@"SHARE_OVERVIEW_ACTIVATION_FOOTER_%@", v36];
    v38 = PKLocalizedShareableCredentialString(v37);
    v39 = self->_footerText;
    self->_footerText = v38;

    [(PKPaymentSetupListSectionController *)self setItems:v14];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained reloadDataAnimated:v44];

    return;
  }

  v42 = MEMORY[0x1E695E0F0];

  [(PKPaymentSetupListSectionController *)self setItems:v42];
}

- (id)decorateListCell:(id)a3 forRowItem:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  v9 = [v7 title];
  [v8 setText:v9];

  v10 = [v7 subtitle];
  [v8 setSecondaryText:v10];

  v11 = [v8 secondaryTextProperties];
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v11 setColor:v12];

  [v8 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  v13 = [v7 icon];

  if (v13)
  {
    v14 = [v7 icon];
    [v8 setImage:v14];

    v15 = [v8 imageProperties];
    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"number.circle.fill" withConfiguration:0];
    [v8 setImage:v16];

    v15 = [v8 imageProperties];
    [MEMORY[0x1E69DC888] clearColor];
  }
  v17 = ;
  [v15 setTintColor:v17];

  [v6 setContentConfiguration:v8];
  if (self->_mode == 2)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }
  v18 = ;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__PKSharePreviewAdditionalSecuritySectionController_decorateListCell_forRowItem___block_invoke;
  v30[3] = &unk_1E8012AC8;
  v19 = v18;
  v31 = v19;
  [v6 setConfigurationUpdateHandler:v30];
  if (![v7 displayChevron])
  {
    v21 = [v7 displayToggleState];
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = v21;
    v23 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v24 = [v7 identifier];
    v25 = PKEqualObjects();

    if (v25)
    {
      [v23 addTarget:self action:sel__activationCodeSwitchValueChanged_ forControlEvents:4096];
    }

    [v23 setOn:v22 == 1];
    v20 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v23 placement:1];
    [v20 setMaintainsFixedSize:1];

    if (!v20)
    {
      goto LABEL_15;
    }

LABEL_14:
    v32[0] = v20;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [v6 setAccessories:v26];

    goto LABEL_16;
  }

  v20 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_15:
  [v6 setAccessories:MEMORY[0x1E695E0F0]];
LABEL_16:
  v27 = [v7 isShowingSensitiveContent];
  v28 = [v6 contentView];
  [v28 pkui_setExcludedFromScreenCapture:v27 andBroadcasting:v27];

  return v8;
}

void __81__PKSharePreviewAdditionalSecuritySectionController_decorateListCell_forRowItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = MEMORY[0x1E69DC6E8];
  v6 = a2;
  v7 = [v5 listCellConfiguration];
  if ([v9 isHighlighted] & 1) != 0 || (objc_msgSend(v9, "isSelected"))
  {
    v8 = [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    [v7 setBackgroundColor:*(a1 + 32)];
  }

  [v6 setBackgroundConfiguration:v7];
}

- (id)headerAttributedStringForIdentifier:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ((self->_mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = @"SHARE_OVERVIEW_ACTIVATION_CODE_VIEWING_HEADER";
  }

  else
  {
    v3 = @"SHARE_OVERVIEW_ACTIVATION_CODE_HEADER";
  }

  v4 = MEMORY[0x1E696AAB0];
  v5 = v3;
  v6 = [v4 alloc];
  v7 = PKLocalizedShareableCredentialString(v5);

  v13[0] = *MEMORY[0x1E69DB648];
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC58], 2, 0);
  v14[0] = v8;
  v13[1] = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v6 initWithString:v7 attributes:v10];

  return v11;
}

- (id)footerAttributedStringForIdentifier:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (self->_footerText)
  {
    v4 = objc_alloc(MEMORY[0x1E696AAB0]);
    footerText = self->_footerText;
    v11[0] = *MEMORY[0x1E69DB648];
    v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC60]);
    v12[0] = v6;
    v11[1] = *MEMORY[0x1E69DB650];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v9 = [v4 initWithString:footerText attributes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)didSelectItem:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deselectCells];
}

- (void)_activationCodeSwitchValueChanged:(id)a3
{
  v4 = [a3 isOn];
  v5 = [(PKPassShareInitiationContext *)self->_context composedShare];
  v6 = v5;
  if (v4)
  {
    v7 = [(PKPassShareInitiationContext *)self->_context availableActivationOptions];
    [v6 setActivationOptions:v7];
  }

  else
  {
    [v5 setActivationOptions:0];
  }

  [(PKSharePreviewAdditionalSecuritySectionController *)self reloadItemsAnimated:1];
}

@end