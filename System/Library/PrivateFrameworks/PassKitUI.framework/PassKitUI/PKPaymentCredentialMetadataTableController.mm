@interface PKPaymentCredentialMetadataTableController
- (PKPaymentCredentialMetadataTableController)initWithMetadata:(id)metadata setupContext:(int64_t)context cellStyle:(int64_t)style;
- (id)cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
@end

@implementation PKPaymentCredentialMetadataTableController

- (PKPaymentCredentialMetadataTableController)initWithMetadata:(id)metadata setupContext:(int64_t)context cellStyle:(int64_t)style
{
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = PKPaymentCredentialMetadataTableController;
  v9 = [(PKPaymentCredentialMetadataTableController *)&v13 init];
  if (v9)
  {
    v10 = [metadataCopy copy];
    metadata = v9->_metadata;
    v9->_metadata = v10;

    v9->_setupContext = context;
    v9->_cellStyle = style;
  }

  return v9;
}

- (id)cellForRowAtIndexPath:(id)path
{
  v4 = MEMORY[0x1E69DD028];
  pathCopy = path;
  v6 = [[v4 alloc] initWithStyle:self->_cellStyle reuseIdentifier:@"summaryCell"];
  v7 = PKProvisioningSecondaryBackgroundColor();
  [v6 setBackgroundColor:v7];

  detailTextLabel = [v6 detailTextLabel];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel setTextColor:secondaryLabelColor];

  metadata = self->_metadata;
  v11 = [pathCopy row];

  v12 = [(NSArray *)metadata objectAtIndex:v11];
  textLabel = [v6 textLabel];
  localizedDisplayName = [v12 localizedDisplayName];
  [textLabel setText:localizedDisplayName];

  detailTextLabel2 = [v6 detailTextLabel];
  displayString = [v12 displayString];
  [detailTextLabel2 setText:displayString];

  [detailTextLabel2 setAdjustsFontSizeToFitWidth:1];
  [detailTextLabel2 setMinimumScaleFactor:0.75];
  [detailTextLabel2 setNumberOfLines:2];
  [v6 setSelectionStyle:0];
  if (self->_cellStyle == 3)
  {
    if (PKPaymentSetupContextIsBridge())
    {
      systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
      [textLabel setTextColor:systemGrayColor];

      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      [textLabel setFont:v18];

      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [textLabel setTextColor:secondaryLabelColor2];

      v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      [textLabel setFont:v22];

      [MEMORY[0x1E69DC888] labelColor];
    }
    v23 = ;
    [detailTextLabel2 setTextColor:v23];

    v20 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], 0, 0, 4);
  }

  else
  {
    v19 = PKOBKListTextFieldCellLabelFont();
    [textLabel setFont:v19];

    v20 = PKOBKListTextFieldCellTextFieldFont();
  }

  v24 = v20;
  [detailTextLabel2 setFont:v20];

  return v6;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  v5 = [view cellForRowAtIndexPath:{path, point.x, point.y}];
  v6 = v5;
  if (v5)
  {
    detailTextLabel = [v5 detailTextLabel];
    text = [detailTextLabel text];
  }

  else
  {
    text = 0;
  }

  if (![text length])
  {

    text = 0;
  }

  v9 = MEMORY[0x1E69DC8D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__PKPaymentCredentialMetadataTableController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v13[3] = &unk_1E8016090;
  v14 = text;
  v10 = text;
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