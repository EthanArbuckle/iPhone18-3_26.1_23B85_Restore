@interface PKPassDetailsIdentityDigitalIDSectionController
+ (BOOL)validForPaymentPass:(id)a3;
- (PKPassDetailsIdentityDigitalIDSectionController)initWithPass:(id)a3 detailViewStyle:(int64_t)a4 delegate:(id)a5;
- (PKPassDetailsIdentityDigitalIDSectionControllerDelegate)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (void)preflight:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPassDetailsIdentityDigitalIDSectionController

- (PKPassDetailsIdentityDigitalIDSectionController)initWithPass:(id)a3 detailViewStyle:(int64_t)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKPassDetailsIdentityDigitalIDSectionController;
  v11 = [(PKPaymentPassDetailSectionController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pass, a3);
    v12->_detailViewStyle = a4;
    objc_storeWeak(&v12->_delegate, v10);
  }

  return v12;
}

+ (BOOL)validForPaymentPass:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 identityType] == 5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 deviceContactlessPaymentApplications];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          [v8 paymentType];
          if (PKPaymentMethodTypeIsIdentityDocument())
          {
            v9 = [v8 subcredentials];
            v10 = [v9 count];

            if (v10)
            {
              LOBYTE(v5) = 1;
              goto LABEL_14;
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)preflight:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
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
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(PKPassDetailsIdentityDigitalIDSectionController *)self allSectionIdentifiers];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v6 = a3;
  if (PKEqualObjects())
  {
    v7 = PKLocalizedIdentityString(&cfstr_DigitalidIdent.isa);
    v8 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v7 detailText:0 cellStyle:0 forTableView:v6];

    [v8 setAccessoryType:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  [v13 deselectRowAtIndexPath:v8 animated:1];
  v10 = PKEqualObjects();

  if (v10)
  {
    v11 = [v13 cellForRowAtIndexPath:v8];
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