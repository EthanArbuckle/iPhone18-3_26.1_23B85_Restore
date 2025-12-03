@interface PKPassDetailsIdentityDigitalIDSectionController
+ (BOOL)validForPaymentPass:(id)pass;
- (PKPassDetailsIdentityDigitalIDSectionController)initWithPass:(id)pass detailViewStyle:(int64_t)style delegate:(id)delegate;
- (PKPassDetailsIdentityDigitalIDSectionControllerDelegate)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)preflight:(id)preflight;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
@end

@implementation PKPassDetailsIdentityDigitalIDSectionController

- (PKPassDetailsIdentityDigitalIDSectionController)initWithPass:(id)pass detailViewStyle:(int64_t)style delegate:(id)delegate
{
  passCopy = pass;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PKPassDetailsIdentityDigitalIDSectionController;
  v11 = [(PKPaymentPassDetailSectionController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pass, pass);
    v12->_detailViewStyle = style;
    objc_storeWeak(&v12->_delegate, delegateCopy);
  }

  return v12;
}

+ (BOOL)validForPaymentPass:(id)pass
{
  v17 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if ([passCopy identityType] == 5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    deviceContactlessPaymentApplications = [passCopy deviceContactlessPaymentApplications];
    v5 = [deviceContactlessPaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(deviceContactlessPaymentApplications);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          [v8 paymentType];
          if (PKPaymentMethodTypeIsIdentityDocument())
          {
            subcredentials = [v8 subcredentials];
            v10 = [subcredentials count];

            if (v10)
            {
              LOBYTE(v5) = 1;
              goto LABEL_14;
            }
          }
        }

        v5 = [deviceContactlessPaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)preflight:(id)preflight
{
  if (preflight)
  {
    (*(preflight + 2))(preflight);
  }
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"DigitalIDSectionIdentifier";
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
    allSectionIdentifiers = [(PKPassDetailsIdentityDigitalIDSectionController *)self allSectionIdentifiers];
  }

  return allSectionIdentifiers;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  if (PKEqualObjects())
  {
    v7 = PKLocalizedIdentityString(&cfstr_DigitalidIdent.isa);
    v8 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v7 detailText:0 cellStyle:0 forTableView:viewCopy];

    [v8 setAccessoryType:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v10 = PKEqualObjects();

  if (v10)
  {
    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [(PKPaymentPassDetailSectionController *)self showSpinner:1 inCell:v11 overrideTextColor:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didSelectDigitalIDForSectionController:self tableViewCell:v11 completion:&__block_literal_global_139];
  }
}

- (PKPassDetailsIdentityDigitalIDSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end