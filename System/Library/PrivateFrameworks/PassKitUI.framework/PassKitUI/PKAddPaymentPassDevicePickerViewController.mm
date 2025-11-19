@interface PKAddPaymentPassDevicePickerViewController
- (PKAddPaymentPassDevicePickerDelegate)delegate;
- (PKAddPaymentPassDevicePickerViewController)initWithPaymentWebServices:(id)a3 configuration:(id)a4 reporter:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)loadView;
- (void)reloadContentFromWebServices;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddPaymentPassDevicePickerViewController

- (PKAddPaymentPassDevicePickerViewController)initWithPaymentWebServices:(id)a3 configuration:(id)a4 reporter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKAddPaymentPassDevicePickerViewController;
  v11 = [(PKAddPaymentPassDevicePickerViewController *)&v16 initWithStyle:1];
  if (v11)
  {
    v12 = [v8 copy];
    webServices = v11->_webServices;
    v11->_webServices = v12;

    objc_storeStrong(&v11->_configuration, a4);
    objc_storeStrong(&v11->_reporter, a5);
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v14 = [(PKAddPaymentPassDevicePickerViewController *)v11 navigationItem];
      [v14 pkui_setupScrollEdgeChromelessAppearance];
      [v14 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v11;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKAddPaymentPassDevicePickerViewController;
  [(PKAddPaymentPassDevicePickerViewController *)&v2 dealloc];
}

- (void)reloadContentFromWebServices
{
  v2 = [(PKAddPaymentPassDevicePickerViewController *)self tableView];
  [v2 reloadData];
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = PKAddPaymentPassDevicePickerViewController;
  [(PKAddPaymentPassDevicePickerViewController *)&v20 loadView];
  v3 = [(PKAddPaymentPassDevicePickerViewController *)self tableView];
  [v3 setOpaque:1];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  v5 = [PKTableHeaderView alloc];
  v6 = [(PKTableHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v6;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTableHeaderView *)self->_headerView setStyle:3];
  }

  [v3 setTableHeaderView:self->_headerView];
  v8 = [(PKAddPaymentPassRequestConfiguration *)self->_configuration paymentNetwork];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69BC0B8]];

  v10 = [(PKAddPaymentPassRequestConfiguration *)self->_configuration localizedDescription];
  if ([v10 length])
  {
    v11 = PKLocalizedPaymentString(&cfstr_IssuerAddPicke.isa, &stru_1F3BD5BF0.isa, v10);
  }

  else
  {
    if (v9)
    {
      PKLocalizedAquamanString(&cfstr_IssuerAddAccou_2.isa);
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_IssuerAddPicke_0.isa);
    }
    v11 = ;
  }

  v12 = v11;
  v13 = [(PKAddPaymentPassRequestConfiguration *)self->_configuration paymentNetwork];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69BC0C0]];

  if (v14)
  {
    goto LABEL_10;
  }

  if (v9)
  {
    v16 = PKLocalizedAquamanString(&cfstr_IssuerAddAccou.isa);
    goto LABEL_14;
  }

  if ([(PKAddPaymentPassRequestConfiguration *)self->_configuration style]== PKAddPaymentPassStyleAccess)
  {
LABEL_10:
    v15 = @"ISSUER_ADD_CARD_WALLET";
  }

  else
  {
    v15 = @"ISSUER_ADD_CARD";
  }

  v16 = PKLocalizedPaymentString(&v15->isa);
LABEL_14:
  v17 = v16;
  v18 = [(PKTableHeaderView *)self->_headerView titleLabel];
  [v18 setText:v17];

  v19 = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [v19 setText:v12];

  [(PKTableHeaderView *)self->_headerView setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKAddPaymentPassDevicePickerViewController;
  [(PKAddPaymentPassDevicePickerViewController *)&v15 viewWillLayoutSubviews];
  v3 = [(PKAddPaymentPassDevicePickerViewController *)self tableView];
  [v3 bounds];
  v5 = v4;
  [(PKTableHeaderView *)self->_headerView frame];
  v7 = v6;
  v9 = v8;
  [(PKTableHeaderView *)self->_headerView sizeThatFits:v5, 1.79769313e308];
  if (v7 != v11 || v9 != v10)
  {
    headerView = self->_headerView;
    [v3 _rectForTableHeaderView];
    [(PKTableHeaderView *)headerView setFrame:?];
    [v3 setTableHeaderView:0];
    [v3 setTableHeaderView:self->_headerView];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v14 = [(PKAddPaymentPassDevicePickerViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v14];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKAddPaymentPassDevicePickerViewController;
  [(PKAddPaymentPassDevicePickerViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_webServices count];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [v7 setSelectionStyle:3];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_webServices, "objectAtIndexedSubscript:", [v6 row]);
  v9 = [v7 textLabel];
  v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:19.0];
  [v9 setFont:v10];

  v11 = [v8 targetDevice];
  v12 = [v11 deviceDescriptionForPaymentWebService:v8];
  [v9 setText:v12];

  v13 = PKProvisioningBackgroundColor();
  [v7 setBackgroundColor:v13];

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (-[PKAddPaymentPassRequestConfiguration style](self->_configuration, "style", a3, a4) == PKAddPaymentPassStyleAccess || (-[PKAddPaymentPassRequestConfiguration paymentNetwork](self->_configuration, "paymentNetwork"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:*MEMORY[0x1E69BC0C0]], v5, v6))
  {
    v7 = PKLocalizedPaymentString(&cfstr_IssuerAddPicke_1.isa);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKAddPaymentPassDevicePickerViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  [a3 deselectRowAtIndexPath:v14 animated:1];
  v6 = -[NSArray objectAtIndexedSubscript:](self->_webServices, "objectAtIndexedSubscript:", [v14 row]);
  v7 = [v6 targetDevice];

  [v7 currentPassbookState];
  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    v8 = [v7 deviceName];
    v9 = [v8 isEqualToString:@"Apple Watch"];

    if (v9)
    {
      v10 = PKCreateAlertControllerForWatchWalletUninstalled(0);
    }

    else
    {
      v10 = PKCreateAlertControllerForWalletUninstalled(0);
    }

    v13 = v10;
    [(PKAddPaymentPassDevicePickerViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = -[NSArray objectAtIndexedSubscript:](self->_webServices, "objectAtIndexedSubscript:", [v14 row]);
    [WeakRetained pickerViewController:self didPickWebService:v12];

    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  }
}

- (PKAddPaymentPassDevicePickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end