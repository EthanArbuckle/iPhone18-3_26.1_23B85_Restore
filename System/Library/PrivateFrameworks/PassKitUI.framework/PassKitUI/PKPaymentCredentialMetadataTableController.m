@interface PKPaymentCredentialMetadataTableController
- (PKPaymentCredentialMetadataTableController)initWithMetadata:(id)a3 setupContext:(int64_t)a4 cellStyle:(int64_t)a5;
- (id)cellForRowAtIndexPath:(id)a3;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
@end

@implementation PKPaymentCredentialMetadataTableController

- (PKPaymentCredentialMetadataTableController)initWithMetadata:(id)a3 setupContext:(int64_t)a4 cellStyle:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = PKPaymentCredentialMetadataTableController;
  v9 = [(PKPaymentCredentialMetadataTableController *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    metadata = v9->_metadata;
    v9->_metadata = v10;

    v9->_setupContext = a4;
    v9->_cellStyle = a5;
  }

  return v9;
}

- (id)cellForRowAtIndexPath:(id)a3
{
  v4 = MEMORY[0x1E69DD028];
  v5 = a3;
  v6 = [[v4 alloc] initWithStyle:self->_cellStyle reuseIdentifier:@"summaryCell"];
  v7 = PKProvisioningSecondaryBackgroundColor();
  [v6 setBackgroundColor:v7];

  v8 = [v6 detailTextLabel];
  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:v9];

  metadata = self->_metadata;
  v11 = [v5 row];

  v12 = [(NSArray *)metadata objectAtIndex:v11];
  v13 = [v6 textLabel];
  v14 = [v12 localizedDisplayName];
  [v13 setText:v14];

  v15 = [v6 detailTextLabel];
  v16 = [v12 displayString];
  [v15 setText:v16];

  [v15 setAdjustsFontSizeToFitWidth:1];
  [v15 setMinimumScaleFactor:0.75];
  [v15 setNumberOfLines:2];
  [v6 setSelectionStyle:0];
  if (self->_cellStyle == 3)
  {
    if (PKPaymentSetupContextIsBridge())
    {
      v17 = [MEMORY[0x1E69DC888] systemGrayColor];
      [v13 setTextColor:v17];

      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      [v13 setFont:v18];

      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v13 setTextColor:v21];

      v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      [v13 setFont:v22];

      [MEMORY[0x1E69DC888] labelColor];
    }
    v23 = ;
    [v15 setTextColor:v23];

    v20 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], 0, 0, 4);
  }

  else
  {
    v19 = PKOBKListTextFieldCellLabelFont();
    [v13 setFont:v19];

    v20 = PKOBKListTextFieldCellTextFieldFont();
  }

  v24 = v20;
  [v15 setFont:v20];

  return v6;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v5 = [a3 cellForRowAtIndexPath:{a4, a5.x, a5.y}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 detailTextLabel];
    v8 = [v7 text];
  }

  else
  {
    v8 = 0;
  }

  if (![v8 length])
  {

    v8 = 0;
  }

  v9 = MEMORY[0x1E69DC8D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__PKPaymentCredentialMetadataTableController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v13[3] = &unk_1E8016090;
  v14 = v8;
  v10 = v8;
  v11 = [v9 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

  return v11;
}

id __104__PKPaymentCredentialMetadataTableController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) && (v4 = MEMORY[0x1E69DC628], PKLocalizedString(&cfstr_MenuActionCopy.isa), v5 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"], v6 = objc_claimAutoreleasedReturnValue(), v12[0] = MEMORY[0x1E69E9820], v12[1] = 3221225472, v12[2] = __104__PKPaymentCredentialMetadataTableController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2, v12[3] = &unk_1E8016068, v13 = *(a1 + 32), objc_msgSend(v4, "actionWithTitle:image:identifier:handler:", v5, v6, 0, v12), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v13, v7))
  {
    v8 = MEMORY[0x1E69DCC60];
    v14[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [v8 menuWithTitle:&stru_1F3BD7330 children:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __104__PKPaymentCredentialMetadataTableController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

@end