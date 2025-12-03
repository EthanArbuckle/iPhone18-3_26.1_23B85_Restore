@interface PKPaymentSetupVerificationMethodTableController
- (PKPaymentSetupVerificationMethodTableController)initWithVerificationController:(id)controller;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)newVerificationRequest;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation PKPaymentSetupVerificationMethodTableController

- (PKPaymentSetupVerificationMethodTableController)initWithVerificationController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupVerificationMethodTableController;
  v6 = [(PKPaymentSetupVerificationMethodTableController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_verificationController, controller);
  }

  return v7;
}

- (id)defaultHeaderViewTitle
{
  pass = [(PKPaymentVerificationController *)self->_verificationController pass];
  supportsBarcodePayment = [pass supportsBarcodePayment];

  if (supportsBarcodePayment)
  {
    PKLocalizedAquamanString(&cfstr_AccountVerific.isa);
  }

  else
  {
    PKLocalizedPaymentString(&cfstr_CardVerificati.isa);
  }
  v4 = ;

  return v4;
}

- (id)defaultHeaderViewSubTitle
{
  pass = [(PKPaymentVerificationController *)self->_verificationController pass];
  if ([pass supportsBarcodePayment])
  {
    organizationName = [pass organizationName];
    v4 = PKLocalizedAquamanString(&cfstr_ChooseAccountV.isa, &stru_1F3BD5BF0.isa, organizationName);
  }

  else
  {
    v4 = PKLocalizedPaymentString(&cfstr_ChooseVerifica.isa);
  }

  return v4;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    v7 = [[PKActivationMethodTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"PKActivationMethodTableViewCellIdentifier"];
    v8 = self->_sizingCell;
    self->_sizingCell = v7;

    sizingCell = self->_sizingCell;
  }

  [viewCopy bounds];
  [(PKActivationMethodTableViewCell *)sizingCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKActivationMethodTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [[PKActivationMethodTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"PKActivationMethodTableViewCellIdentifier"];
    v8 = PKProvisioningSecondaryBackgroundColor();
    [(PKActivationMethodTableViewCell *)v7 setBackgroundColor:v8];
  }

  v9 = -[NSArray objectAtIndex:](self->_verificationMethodGroups, "objectAtIndex:", [pathCopy row]);
  textLabel = [(PKActivationMethodTableViewCell *)v7 textLabel];
  localizedTitle = [v9 localizedTitle];
  [textLabel setText:localizedTitle];

  detailTextLabel = [(PKActivationMethodTableViewCell *)v7 detailTextLabel];
  pass = [(PKPaymentVerificationController *)self->_verificationController pass];
  v14 = [v9 localizedShortDescriptionWithPass:pass];
  [detailTextLabel setText:v14];

  v15 = [pathCopy row];
  if (v15 == self->_selectedIndex)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [(PKActivationMethodTableViewCell *)v7 setAccessoryType:v16];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedIndex inSection:{objc_msgSend(pathCopy, "section")}];
  v11 = [viewCopy cellForRowAtIndexPath:v8];

  [v11 setAccessoryType:0];
  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setAccessoryType:3];
  v10 = [pathCopy row];

  self->_selectedIndex = v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  verificationController = self->_verificationController;
  cellCopy = cell;
  PKPaymentSetupApplyContextAppearance([(PKPaymentVerificationController *)verificationController context], cellCopy);
}

- (id)newVerificationRequest
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69B8EF0]);
  pass = [(PKPaymentVerificationController *)self->_verificationController pass];
  [v3 setPass:pass];

  v5 = [(NSArray *)self->_verificationMethodGroups objectAtIndex:self->_selectedIndex];
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Requesting start group: %@", &v10, 0xCu);
    }

    [v3 setMethodGroup:v5];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      selectedIndex = self->_selectedIndex;
      v10 = 134217984;
      v11 = selectedIndex;
      _os_log_error_impl(&dword_1BD026000, v7, OS_LOG_TYPE_ERROR, "Could not find method at index :%lu@", &v10, 0xCu);
    }
  }

  return v3;
}

@end