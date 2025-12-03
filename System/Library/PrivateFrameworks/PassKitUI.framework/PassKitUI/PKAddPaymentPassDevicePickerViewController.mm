@interface PKAddPaymentPassDevicePickerViewController
- (PKAddPaymentPassDevicePickerDelegate)delegate;
- (PKAddPaymentPassDevicePickerViewController)initWithPaymentWebServices:(id)services configuration:(id)configuration reporter:(id)reporter;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)loadView;
- (void)reloadContentFromWebServices;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddPaymentPassDevicePickerViewController

- (PKAddPaymentPassDevicePickerViewController)initWithPaymentWebServices:(id)services configuration:(id)configuration reporter:(id)reporter
{
  servicesCopy = services;
  configurationCopy = configuration;
  reporterCopy = reporter;
  v16.receiver = self;
  v16.super_class = PKAddPaymentPassDevicePickerViewController;
  v11 = [(PKAddPaymentPassDevicePickerViewController *)&v16 initWithStyle:1];
  if (v11)
  {
    v12 = [servicesCopy copy];
    webServices = v11->_webServices;
    v11->_webServices = v12;

    objc_storeStrong(&v11->_configuration, configuration);
    objc_storeStrong(&v11->_reporter, reporter);
    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKAddPaymentPassDevicePickerViewController *)v11 navigationItem];
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
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
  tableView = [(PKAddPaymentPassDevicePickerViewController *)self tableView];
  [tableView reloadData];
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = PKAddPaymentPassDevicePickerViewController;
  [(PKAddPaymentPassDevicePickerViewController *)&v20 loadView];
  tableView = [(PKAddPaymentPassDevicePickerViewController *)self tableView];
  [tableView setOpaque:1];
  v4 = PKProvisioningBackgroundColor();
  [tableView setBackgroundColor:v4];

  v5 = [PKTableHeaderView alloc];
  v6 = [(PKTableHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v6;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTableHeaderView *)self->_headerView setStyle:3];
  }

  [tableView setTableHeaderView:self->_headerView];
  paymentNetwork = [(PKAddPaymentPassRequestConfiguration *)self->_configuration paymentNetwork];
  v9 = [paymentNetwork isEqualToString:*MEMORY[0x1E69BC0B8]];

  localizedDescription = [(PKAddPaymentPassRequestConfiguration *)self->_configuration localizedDescription];
  if ([localizedDescription length])
  {
    v11 = PKLocalizedPaymentString(&cfstr_IssuerAddPicke.isa, &stru_1F3BD5BF0.isa, localizedDescription);
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
  paymentNetwork2 = [(PKAddPaymentPassRequestConfiguration *)self->_configuration paymentNetwork];
  v14 = [paymentNetwork2 isEqualToString:*MEMORY[0x1E69BC0C0]];

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
  titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
  [titleLabel setText:v17];

  subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [subtitleLabel setText:v12];

  [(PKTableHeaderView *)self->_headerView setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = PKAddPaymentPassDevicePickerViewController;
  [(PKAddPaymentPassDevicePickerViewController *)&v15 viewWillLayoutSubviews];
  tableView = [(PKAddPaymentPassDevicePickerViewController *)self tableView];
  [tableView bounds];
  v5 = v4;
  [(PKTableHeaderView *)self->_headerView frame];
  v7 = v6;
  v9 = v8;
  [(PKTableHeaderView *)self->_headerView sizeThatFits:v5, 1.79769313e308];
  if (v7 != v11 || v9 != v10)
  {
    headerView = self->_headerView;
    [tableView _rectForTableHeaderView];
    [(PKTableHeaderView *)headerView setFrame:?];
    [tableView setTableHeaderView:0];
    [tableView setTableHeaderView:self->_headerView];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    navigationItem = [(PKAddPaymentPassDevicePickerViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKAddPaymentPassDevicePickerViewController;
  [(PKAddPaymentPassDevicePickerViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_webServices count];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Cell"];
    [v7 setSelectionStyle:3];
  }

  v8 = -[NSArray objectAtIndexedSubscript:](self->_webServices, "objectAtIndexedSubscript:", [pathCopy row]);
  textLabel = [v7 textLabel];
  v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:19.0];
  [textLabel setFont:v10];

  targetDevice = [v8 targetDevice];
  v12 = [targetDevice deviceDescriptionForPaymentWebService:v8];
  [textLabel setText:v12];

  v13 = PKProvisioningBackgroundColor();
  [v7 setBackgroundColor:v13];

  return v7;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (-[PKAddPaymentPassRequestConfiguration style](self->_configuration, "style", view, section) == PKAddPaymentPassStyleAccess || (-[PKAddPaymentPassRequestConfiguration paymentNetwork](self->_configuration, "paymentNetwork"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:*MEMORY[0x1E69BC0C0]], v5, v6))
  {
    v7 = PKLocalizedPaymentString(&cfstr_IssuerAddPicke_1.isa);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKAddPaymentPassDevicePickerViewController *)self view];
  [view setNeedsLayout];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = -[NSArray objectAtIndexedSubscript:](self->_webServices, "objectAtIndexedSubscript:", [pathCopy row]);
  targetDevice = [v6 targetDevice];

  [targetDevice currentPassbookState];
  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    deviceName = [targetDevice deviceName];
    v9 = [deviceName isEqualToString:@"Apple Watch"];

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
    v12 = -[NSArray objectAtIndexedSubscript:](self->_webServices, "objectAtIndexedSubscript:", [pathCopy row]);
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