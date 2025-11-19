@interface PKPaymentSetupVerificationMethodTableController
- (PKPaymentSetupVerificationMethodTableController)initWithVerificationController:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)newVerificationRequest;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation PKPaymentSetupVerificationMethodTableController

- (PKPaymentSetupVerificationMethodTableController)initWithVerificationController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentSetupVerificationMethodTableController;
  v6 = [(PKPaymentSetupVerificationMethodTableController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_verificationController, a3);
  }

  return v7;
}

- (id)defaultHeaderViewTitle
{
  v2 = [(PKPaymentVerificationController *)self->_verificationController pass];
  v3 = [v2 supportsBarcodePayment];

  if (v3)
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
  v2 = [(PKPaymentVerificationController *)self->_verificationController pass];
  if ([v2 supportsBarcodePayment])
  {
    v3 = [v2 organizationName];
    v4 = PKLocalizedAquamanString(&cfstr_ChooseAccountV.isa, &stru_1F3BD5BF0.isa, v3);
  }

  else
  {
    v4 = PKLocalizedPaymentString(&cfstr_ChooseVerifica.isa);
  }

  return v4;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a3;
  sizingCell = self->_sizingCell;
  if (!sizingCell)
  {
    v7 = [[PKActivationMethodTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"PKActivationMethodTableViewCellIdentifier"];
    v8 = self->_sizingCell;
    self->_sizingCell = v7;

    sizingCell = self->_sizingCell;
  }

  [v5 bounds];
  [(PKActivationMethodTableViewCell *)sizingCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKActivationMethodTableViewCellIdentifier"];
  if (!v7)
  {
    v7 = [[PKActivationMethodTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"PKActivationMethodTableViewCellIdentifier"];
    v8 = PKProvisioningSecondaryBackgroundColor();
    [(PKActivationMethodTableViewCell *)v7 setBackgroundColor:v8];
  }

  v9 = -[NSArray objectAtIndex:](self->_verificationMethodGroups, "objectAtIndex:", [v6 row]);
  v10 = [(PKActivationMethodTableViewCell *)v7 textLabel];
  v11 = [v9 localizedTitle];
  [v10 setText:v11];

  v12 = [(PKActivationMethodTableViewCell *)v7 detailTextLabel];
  v13 = [(PKPaymentVerificationController *)self->_verificationController pass];
  v14 = [v9 localizedShortDescriptionWithPass:v13];
  [v12 setText:v14];

  v15 = [v6 row];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedIndex inSection:{objc_msgSend(v6, "section")}];
  v11 = [v7 cellForRowAtIndexPath:v8];

  [v11 setAccessoryType:0];
  v9 = [v7 cellForRowAtIndexPath:v6];

  [v9 setAccessoryType:3];
  v10 = [v6 row];

  self->_selectedIndex = v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  verificationController = self->_verificationController;
  v6 = a4;
  PKPaymentSetupApplyContextAppearance([(PKPaymentVerificationController *)verificationController context], v6);
}

- (id)newVerificationRequest
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69B8EF0]);
  v4 = [(PKPaymentVerificationController *)self->_verificationController pass];
  [v3 setPass:v4];

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