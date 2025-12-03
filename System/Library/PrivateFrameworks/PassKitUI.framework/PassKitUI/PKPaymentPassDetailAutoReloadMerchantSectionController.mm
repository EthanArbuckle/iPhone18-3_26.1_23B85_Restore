@interface PKPaymentPassDetailAutoReloadMerchantSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (PKPaymentPassDetailAutoReloadActionSectionControllerDelegate)setupDelegate;
- (PKPaymentPassDetailAutoReloadMerchantSectionController)initWithPass:(id)pass delegate:(id)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPaymentPassDetailAutoReloadMerchantSectionController

- (PKPaymentPassDetailAutoReloadMerchantSectionController)initWithPass:(id)pass delegate:(id)delegate
{
  passCopy = pass;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKPaymentPassDetailAutoReloadMerchantSectionController;
  v9 = [(PKPaymentPassDetailSectionController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pass, pass);
    objc_storeStrong(&v10->_delegate, delegate);
    v10->_isAutoTopEnabled = [(PKPaymentPass *)v10->_pass isAutoTopEnabled];
  }

  return v10;
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"AutoReloadMerchantSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self currentSegment])
  {
    allSectionIdentifiers = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = [(PKPaymentPassDetailAutoReloadMerchantSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  passCopy = pass;
  if ([passCopy isAutoTopEnabled] && !objc_msgSend(passCopy, "activationState"))
  {
    v6 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:passCopy];
    if (v6)
    {
      autoTopUpMerchantTokenIdentifier = [passCopy autoTopUpMerchantTokenIdentifier];
      v4 = autoTopUpMerchantTokenIdentifier == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  v4 = [(PKPaymentPass *)self->_pass autoTopUpFields:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pass = self->_pass;
  pathCopy = path;
  autoTopUpFields = [(PKPaymentPass *)pass autoTopUpFields];
  v11 = [pathCopy row];

  v12 = [autoTopUpFields objectAtIndex:v11];

  v13 = [v12 key];
  LODWORD(v11) = [v13 isEqualToString:*MEMORY[0x1E69BBB80]];

  if (v11)
  {
    v14 = PKLocalizedPaymentString(&cfstr_PassDetailsAut.isa);
    if (self->_isAutoTopEnabled)
    {
      v15 = @"STATE_ON";
    }

    else
    {
      v15 = @"STATE_OFF";
    }

    v16 = PKLocalizedPaymentString(&v15->isa);
    v17 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v14 detailText:v16 cellStyle:1 forTableView:viewCopy];

    v18 = v17;
    v19 = 0;
    goto LABEL_8;
  }

  v20 = [v12 key];
  v21 = [v20 isEqualToString:*MEMORY[0x1E69BBB88]];

  if (v21)
  {
    organizationName = [(PKPaymentPass *)self->_pass organizationName];
    v23 = PKLocalizedPaymentString(&cfstr_PassDetailsMan.isa, &stru_1F3BD5BF0.isa, organizationName);
    v17 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v23 forTableView:viewCopy];

    v18 = v17;
    v19 = 3;
LABEL_8:
    [v18 setSelectionStyle:v19];
    goto LABEL_10;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  if (PKEqualObjects())
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    autoTopUpFields = [(PKPaymentPass *)self->_pass autoTopUpFields];
    v9 = [autoTopUpFields objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v10 = [v9 key];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69BBB88]];

    if (v11)
    {
      link = [v9 link];
      WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = objc_loadWeakRetained(&self->_setupDelegate);
        [v15 launchURL:link];
      }
    }
  }
}

- (PKPaymentPassDetailAutoReloadActionSectionControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end