@interface PKPeerPaymentAssociatedAccountSendRestrictionViewController
- (PKPeerPaymentAssociatedAccountSendRestrictionViewController)initWithPeerPaymentSetupFlowController:(id)controller;
- (id)_textLabelStringForIndexPath:(id)path;
- (id)_updatedPreferences;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_continue;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentAssociatedAccountSendRestrictionViewController

- (PKPeerPaymentAssociatedAccountSendRestrictionViewController)initWithPeerPaymentSetupFlowController:(id)controller
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  v6 = -[PKPaymentSetupTableViewController initWithContext:](&v22, sel_initWithContext_, [controllerCopy context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
    peerPaymentWebService = [controllerCopy peerPaymentWebService];
    targetDevice = [peerPaymentWebService targetDevice];
    preferences = [targetDevice preferences];
    currentPreferences = v7->_currentPreferences;
    v7->_currentPreferences = preferences;

    v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    defaultSelectedIndexPath = v7->_defaultSelectedIndexPath;
    v7->_defaultSelectedIndexPath = v12;

    configuration = [controllerCopy configuration];
    peerPaymentSetupConfigurationType = [configuration peerPaymentSetupConfigurationType];

    if (peerPaymentSetupConfigurationType == 1)
    {
      configuration2 = [controllerCopy configuration];
      configuration = v7->_configuration;
      v7->_configuration = configuration2;

      associatedAccountSetupDelegate = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)v7->_configuration associatedAccountSetupDelegate];
      objc_storeWeak(&v7->_delegate, associatedAccountSetupDelegate);

      familyMember = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)v7->_configuration familyMember];
      familyMember = v7->_familyMember;
      v7->_familyMember = familyMember;
    }
  }

  return v7;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)&v28 viewDidLoad];
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView setAllowsMultipleSelection:0];
  [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self tableView:tableView didSelectRowAtIndexPath:self->_defaultSelectedIndexPath];
  v4 = [PKTableHeaderView alloc];
  v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  tableHeader = self->_tableHeader;
  self->_tableHeader = v5;

  [(PKTableHeaderView *)self->_tableHeader setTopPadding:30.0];
  [(PKTableHeaderView *)self->_tableHeader setBottomPadding:30.0];
  traitCollection = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v9 = self->_tableHeader;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(PKPaymentSetupTableViewController *)self context];
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  }

  else
  {
    IsSetupAssistant = 0;
  }

  [(PKTableHeaderView *)v9 setStyle:IsSetupAssistant];
  titleLabel = [(PKTableHeaderView *)self->_tableHeader titleLabel];
  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer.isa);
  [titleLabel setText:v12];

  subtitleLabel = [(PKTableHeaderView *)self->_tableHeader subtitleLabel];
  firstName = [(PKFamilyMember *)self->_familyMember firstName];
  v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_0.isa, &stru_1F3BD5BF0.isa, firstName);
  [subtitleLabel setText:v15];

  v16 = PKUIGetMinScreenWidthType();
  v17 = 37.0;
  if (v16 < 5)
  {
    v17 = 26.0;
  }

  if (!v16)
  {
    v17 = 20.0;
  }

  [(PKTableHeaderView *)self->_tableHeader setBottomPadding:v17];
  [(PKPaymentSetupTableViewController *)self context];
  if ((PKPaymentSetupContextIsBridge() & 1) == 0)
  {
    v18 = PKPassKitUIBundle();
    v19 = [v18 URLForResource:@"MessagesIcon" withExtension:@"pdf"];
    v20 = PKUIScreenScale();
    v21 = PKUIImageFromPDF(v19, 80.0, 80.0, v20);

    v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21];
    [v22 setContentMode:1];
    [v22 setClipsToBounds:1];
    [v22 _setContinuousCornerRadius:20.0];
    [(PKTableHeaderView *)self->_tableHeader setImageView:v22];
  }

  [tableView setTableHeaderView:self->_tableHeader];
  [(PKTableHeaderView *)self->_tableHeader sizeToFit];
  [(PKTableHeaderView *)self->_tableHeader bounds];
  [tableView _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v29)];
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  footerView = [dockView footerView];
  [footerView setSetUpLaterButton:0];

  primaryButton = [dockView primaryButton];
  [primaryButton addTarget:self action:sel__continue forControlEvents:0x2000];

  primaryButton2 = [dockView primaryButton];
  v27 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton2 setTitle:v27 forState:0];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  [(PKPaymentSetupTableViewController *)&v8 viewWillLayoutSubviews];
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView bounds];
  if (self->_cachedHeaderViewWidth != v4)
  {
    [(PKTableHeaderView *)self->_tableHeader sizeThatFits:v4, 1.79769313e308];
    v6 = v5;
    tableHeader = self->_tableHeader;
    [tableView _rectForTableHeaderView];
    [(PKTableHeaderView *)tableHeader setFrame:?];
    [tableView setTableHeaderView:0];
    [tableView setTableHeaderView:self->_tableHeader];
    self->_cachedHeaderViewWidth = v6;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"CellReuseIdentifier"];
  }

  textLabel = [v7 textLabel];
  v9 = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self _textLabelStringForIndexPath:pathCopy];
  [textLabel setText:v9];

  selectedIndexPath = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  if (PKEqualObjects())
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];
  v12 = [pathCopy row];

  if (v12 > 2)
  {
    v13 = MEMORY[0x1E69B9D90];
  }

  else
  {
    v13 = qword_1E8017B38[v12];
  }

  [v7 setAccessibilityIdentifier:*v13];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  selectedIndexPath = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  defaultSelectedIndexPath = selectedIndexPath;
  if (!selectedIndexPath)
  {
    defaultSelectedIndexPath = self->_defaultSelectedIndexPath;
  }

  v10 = defaultSelectedIndexPath;

  v12.receiver = self;
  v12.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  [(PKPaymentSetupTableViewController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if (pathCopy | v10 && (PKEqualObjects() & 1) == 0)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v11 safelyAddObject:v10];
    [v11 safelyAddObject:pathCopy];
    [viewCopy reloadRowsAtIndexPaths:v11 withRowAnimation:100];
  }
}

- (void)_continue
{
  configuration = self->_configuration;
  _updatedPreferences = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self _updatedPreferences];
  [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)configuration setUpdatedPreferences:_updatedPreferences];

  v6 = [[PKPeerPaymentAssociatedAccountReceiveRestrictionViewController alloc] initWithPeerPaymentSetupFlowController:self->_controller];
  if (v6)
  {
    navigationController = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self navigationController];
    [navigationController pushViewController:v6 animated:1];
  }
}

- (id)_updatedPreferences
{
  altDSID = [(PKFamilyMember *)self->_familyMember altDSID];
  v4 = [(PKPeerPaymentPreferences *)self->_currentPreferences copy];
  selectedIndexPath = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  defaultSelectedIndexPath = selectedIndexPath;
  if (!selectedIndexPath)
  {
    defaultSelectedIndexPath = self->_defaultSelectedIndexPath;
  }

  v7 = defaultSelectedIndexPath;

  v8 = [(NSIndexPath *)v7 row];
  if (v8 <= 2)
  {
    [v4 addSendRestrictionType:v8 + 1 altDSID:altDSID];
  }

  return v4;
}

- (id)_textLabelStringForIndexPath:(id)path
{
  v3 = [path row];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKLocalizedPeerPaymentString(&off_1E8017B50[v3]->isa);
  }

  return v4;
}

@end