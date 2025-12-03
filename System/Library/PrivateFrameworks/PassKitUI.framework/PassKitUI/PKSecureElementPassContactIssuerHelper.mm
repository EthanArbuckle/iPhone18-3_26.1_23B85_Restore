@interface PKSecureElementPassContactIssuerHelper
- (PKSecureElementPassContactIssuerHelperDelegate)delegate;
- (void)callIssuerWithSourceItem:(id)item;
- (void)emailIssuer;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)openIssuerWebsite;
- (void)presentContactViewController:(unint64_t)controller sourceItem:(id)item;
- (void)setPass:(id)pass;
@end

@implementation PKSecureElementPassContactIssuerHelper

- (void)setPass:(id)pass
{
  v30 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  objc_storeStrong(&self->_pass, pass);
  devicePaymentApplications = [(PKSecureElementPass *)self->_pass devicePaymentApplications];
  allObjects = [devicePaymentApplications allObjects];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = allObjects;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      automaticSelectionCriteria = [v11 automaticSelectionCriteria];
      v13 = [automaticSelectionCriteria countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
LABEL_8:
        v16 = 0;
        while (1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(automaticSelectionCriteria);
          }

          type = [*(*(&v20 + 1) + 8 * v16) type];
          self->_isAppleAccess = PKEqualObjects();

          if (self->_isAppleAccess)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [automaticSelectionCriteria countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      if (self->_isAppleAccess)
      {
        break;
      }

      if (++v10 == v8)
      {
        v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)presentContactViewController:(unint64_t)controller sourceItem:(id)item
{
  itemCopy = item;
  v6 = PKUserInterfaceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v7 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
  v8 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v9 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC108]];
  businessChatIdentifier = [(PKSecureElementPass *)self->_pass businessChatIdentifier];
  organizationName = [(PKSecureElementPass *)self->_pass organizationName];
  v11 = [v8 length] != 0;
  v45 = v9;
  if ([(PKSecureElementPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_11.isa);
LABEL_5:
    v13 = v12;
LABEL_6:

    organizationName = v13;
    goto LABEL_7;
  }

  if (self->_featureIdentifier)
  {
    v12 = PKLocalizedFeatureString();
    goto LABEL_5;
  }

  if (self->_isAppleAccess && [(PKSecureElementPass *)self->_pass isAccessPass])
  {
    v39 = [(PKSecureElementPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0F8]];
    value = [v39 value];
    v41 = value;
    if (value)
    {
      v42 = value;
    }

    else
    {
      v42 = organizationName;
    }

    v13 = v42;

    organizationName = v39;
    v9 = v45;
    goto LABEL_6;
  }

LABEL_7:
  v14 = controller & v11;
  v48 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, organizationName);
  v15 = 0;
  if (v6 && ((v14 ^ 1) & 1) == 0)
  {
    organizationName2 = [(PKSecureElementPass *)self->_pass organizationName];
    v15 = PKLocalizedPaymentString(&cfstr_ContactIssuerB.isa, &cfstr_12.isa, organizationName2, v8);
  }

  v17 = v6 == 0;
  v43 = v8;
  if (v7 && [v7 length])
  {
    v18 = (controller >> 1) & 1;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v18) = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if ([v9 length])
  {
    v9 = ((controller >> 2) & 1);
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_18:
  v19 = 0;
  v20 = v17 & v14;
  if ((controller & 8) != 0 && businessChatIdentifier)
  {
    v19 = +[PKBusinessChatController deviceSupportsBusinessChat];
  }

  v44 = v7;
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v48 message:v15 preferredStyle:0];
  if (v20)
  {
    v22 = MEMORY[0x1E69DC648];
    v23 = PKLocalizedPaymentString(&cfstr_Call.isa);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke;
    v52[3] = &unk_1E8011310;
    v52[4] = self;
    v53 = itemCopy;
    v24 = [v22 actionWithTitle:v23 style:0 handler:v52];
    [v21 addAction:v24];
  }

  if (v18)
  {
    v25 = MEMORY[0x1E69DC648];
    v26 = PKLocalizedPaymentString(&cfstr_Email_0.isa);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_2;
    v51[3] = &unk_1E80112E8;
    v51[4] = self;
    v27 = [v25 actionWithTitle:v26 style:0 handler:v51];
    [v21 addAction:v27];
  }

  if (v9)
  {
    v28 = MEMORY[0x1E69DC648];
    v29 = PKLocalizedPaymentString(&cfstr_GoToWebsite.isa);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_3;
    v50[3] = &unk_1E80112E8;
    v50[4] = self;
    v30 = [v28 actionWithTitle:v29 style:0 handler:v50];
    [v21 addAction:v30];
  }

  if (v19)
  {
    v31 = MEMORY[0x1E69DC648];
    v32 = PKLocalizedPaymentString(&cfstr_Message.isa);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_4;
    v49[3] = &unk_1E80112E8;
    v49[4] = self;
    v33 = [v31 actionWithTitle:v32 style:0 handler:v49];
    [v21 addAction:v33];
  }

  v34 = MEMORY[0x1E69DC648];
  v35 = PKLocalizedString(&cfstr_Cancel.isa);
  v36 = [v34 actionWithTitle:v35 style:1 handler:0];
  [v21 addAction:v36];

  popoverPresentationController = [v21 popoverPresentationController];
  [popoverPresentationController setSourceItem:itemCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contactIssuerHelper:self didRequestPresentViewController:v21 animated:1 completion:0];
}

uint64_t __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_4(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)callIssuerWithSourceItem:(id)item
{
  v52[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (PKStoreDemoModeEnabled())
  {
    organizationName = PKUIStoreDemoGatewayViewController();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contactIssuerHelper:self didRequestPresentViewController:organizationName animated:1 completion:0];

LABEL_33:
    goto LABEL_34;
  }

  if (!PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    organizationName = [(PKSecureElementPass *)self->_pass organizationName];
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:organizationName message:0 preferredStyle:0];
    v8 = MEMORY[0x1E69DCC10];
    v52[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
    v10 = [v8 appearanceWhenContainedInInstancesOfClasses:v9];
    [v10 setNumberOfLines:2];

    v11 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
    v12 = v11;
    if (v11)
    {
      v13 = MEMORY[0x1E69DC648];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke;
      v48[3] = &unk_1E80112E8;
      v49 = v11;
      v14 = [v13 actionWithTitle:v49 style:0 handler:v48];
      [v7 addAction:v14];
    }

    selfCopy = self;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [(PKSecureElementPass *)self->_pass backFieldBuckets];
    v36 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (!v36)
    {
LABEL_32:

      v29 = PKLocalizedString(&cfstr_RemoveSheetCan.isa);
      v30 = [MEMORY[0x1E69DC648] actionWithTitle:v29 style:1 handler:0];
      [v7 addAction:v30];

      popoverPresentationController = [v7 popoverPresentationController];
      [popoverPresentationController setSourceItem:itemCopy];

      v32 = objc_loadWeakRetained(&selfCopy->_delegate);
      [v32 contactIssuerHelper:selfCopy didRequestPresentViewController:v7 animated:1 completion:0];

      goto LABEL_33;
    }

    v35 = *v45;
LABEL_9:
    v15 = 0;
    while (1)
    {
      if (*v45 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = v15;
      v16 = *(*(&v44 + 1) + 8 * v15);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v18)
      {
        break;
      }

LABEL_30:

      v15 = v37 + 1;
      if (v37 + 1 == v36)
      {
        v36 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (!v36)
        {
          goto LABEL_32;
        }

        goto LABEL_9;
      }
    }

    v19 = v18;
    v20 = *v41;
LABEL_14:
    v21 = 0;
    while (1)
    {
      if (*v41 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v40 + 1) + 8 * v21);
      if ([v22 dataDetectorTypes] != 1)
      {
        goto LABEL_28;
      }

      label = [v22 label];

      value = [v22 value];

      if (label)
      {
        v25 = value == 0;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        if (label || (label = value) != 0)
        {
LABEL_27:
          v27 = MEMORY[0x1E69DC648];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke_2;
          v38[3] = &unk_1E80112E8;
          v12 = value;
          v39 = v12;
          v28 = [v27 actionWithTitle:label style:0 handler:v38];
          [v7 addAction:v28];

          organizationName = label;
          goto LABEL_28;
        }
      }

      else
      {
        v26 = [label stringByAppendingFormat:@"\n%@", value];

        label = v26;
        if (v26)
        {
          goto LABEL_27;
        }
      }

      organizationName = 0;
      v12 = value;
LABEL_28:
      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (!v19)
        {
          goto LABEL_30;
        }

        goto LABEL_14;
      }
    }
  }

  [(PKSecureElementPassContactIssuerHelper *)self presentContactViewController:1 sourceItem:0];
LABEL_34:
}

void __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke()
{
  v1 = PKTelephoneURLFromPhoneNumber();
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

void __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke_2()
{
  v1 = PKTelephoneURLFromPhoneNumber();
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (void)openIssuerWebsite
{
  if (PKStoreDemoModeEnabled())
  {
    v4 = PKUIStoreDemoGatewayViewController();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contactIssuerHelper:self didRequestPresentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v4 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC108]];
    WeakRetained = [MEMORY[0x1E695DFF8] URLWithString:?];
    PKOpenURL();
  }
}

- (void)emailIssuer
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (PKStoreDemoModeEnabled())
  {
    v12 = PKUIStoreDemoGatewayViewController();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contactIssuerHelper:self didRequestPresentViewController:v12 animated:1 completion:0];

    v4 = v12;
  }

  else
  {
    if ([(objc_class *)getMFMailComposeViewControllerClass_0() canSendMail])
    {
      v5 = objc_alloc_init(getMFMailComposeViewControllerClass_0());
      [v5 setMailComposeDelegate:self];
      v6 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
      v14[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v5 setToRecipients:v7];

      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 contactIssuerHelper:self didRequestPresentViewController:v5 animated:1 completion:0];

      return;
    }

    v13 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
    if ([v13 length])
    {
      v9 = MEMORY[0x1E695DFF8];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v13];
      v11 = [v9 URLWithString:v10];
      PKOpenURL();
    }

    v4 = v13;
  }
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (PKSecureElementPassContactIssuerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end