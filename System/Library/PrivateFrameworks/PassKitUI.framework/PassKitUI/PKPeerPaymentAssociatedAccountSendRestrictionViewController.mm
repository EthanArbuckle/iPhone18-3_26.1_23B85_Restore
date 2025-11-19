@interface PKPeerPaymentAssociatedAccountSendRestrictionViewController
- (PKPeerPaymentAssociatedAccountSendRestrictionViewController)initWithPeerPaymentSetupFlowController:(id)a3;
- (id)_textLabelStringForIndexPath:(id)a3;
- (id)_updatedPreferences;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_continue;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentAssociatedAccountSendRestrictionViewController

- (PKPeerPaymentAssociatedAccountSendRestrictionViewController)initWithPeerPaymentSetupFlowController:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  v6 = -[PKPaymentSetupTableViewController initWithContext:](&v22, sel_initWithContext_, [v5 context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v8 = [v5 peerPaymentWebService];
    v9 = [v8 targetDevice];
    v10 = [v9 preferences];
    currentPreferences = v7->_currentPreferences;
    v7->_currentPreferences = v10;

    v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    defaultSelectedIndexPath = v7->_defaultSelectedIndexPath;
    v7->_defaultSelectedIndexPath = v12;

    v14 = [v5 configuration];
    v15 = [v14 peerPaymentSetupConfigurationType];

    if (v15 == 1)
    {
      v16 = [v5 configuration];
      configuration = v7->_configuration;
      v7->_configuration = v16;

      v18 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)v7->_configuration associatedAccountSetupDelegate];
      objc_storeWeak(&v7->_delegate, v18);

      v19 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)v7->_configuration familyMember];
      familyMember = v7->_familyMember;
      v7->_familyMember = v19;
    }
  }

  return v7;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)&v28 viewDidLoad];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 setAllowsMultipleSelection:0];
  [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self tableView:v3 didSelectRowAtIndexPath:self->_defaultSelectedIndexPath];
  v4 = [PKTableHeaderView alloc];
  v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  tableHeader = self->_tableHeader;
  self->_tableHeader = v5;

  [(PKTableHeaderView *)self->_tableHeader setTopPadding:30.0];
  [(PKTableHeaderView *)self->_tableHeader setBottomPadding:30.0];
  v7 = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = self->_tableHeader;
  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(PKPaymentSetupTableViewController *)self context];
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  }

  else
  {
    IsSetupAssistant = 0;
  }

  [(PKTableHeaderView *)v9 setStyle:IsSetupAssistant];
  v11 = [(PKTableHeaderView *)self->_tableHeader titleLabel];
  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer.isa);
  [v11 setText:v12];

  v13 = [(PKTableHeaderView *)self->_tableHeader subtitleLabel];
  v14 = [(PKFamilyMember *)self->_familyMember firstName];
  v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_0.isa, &stru_1F3BD5BF0.isa, v14);
  [v13 setText:v15];

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

  [v3 setTableHeaderView:self->_tableHeader];
  [(PKTableHeaderView *)self->_tableHeader sizeToFit];
  [(PKTableHeaderView *)self->_tableHeader bounds];
  [v3 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v29)];
  v23 = [(PKPaymentSetupTableViewController *)self dockView];
  v24 = [v23 footerView];
  [v24 setSetUpLaterButton:0];

  v25 = [v23 primaryButton];
  [v25 addTarget:self action:sel__continue forControlEvents:0x2000];

  v26 = [v23 primaryButton];
  v27 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [v26 setTitle:v27 forState:0];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  [(PKPaymentSetupTableViewController *)&v8 viewWillLayoutSubviews];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 bounds];
  if (self->_cachedHeaderViewWidth != v4)
  {
    [(PKTableHeaderView *)self->_tableHeader sizeThatFits:v4, 1.79769313e308];
    v6 = v5;
    tableHeader = self->_tableHeader;
    [v3 _rectForTableHeaderView];
    [(PKTableHeaderView *)tableHeader setFrame:?];
    [v3 setTableHeaderView:0];
    [v3 setTableHeaderView:self->_tableHeader];
    self->_cachedHeaderViewWidth = v6;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"CellReuseIdentifier"];
  }

  v8 = [v7 textLabel];
  v9 = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self _textLabelStringForIndexPath:v6];
  [v8 setText:v9];

  v10 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  if (PKEqualObjects())
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];
  v12 = [v6 row];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  defaultSelectedIndexPath = v8;
  if (!v8)
  {
    defaultSelectedIndexPath = self->_defaultSelectedIndexPath;
  }

  v10 = defaultSelectedIndexPath;

  v12.receiver = self;
  v12.super_class = PKPeerPaymentAssociatedAccountSendRestrictionViewController;
  [(PKPaymentSetupTableViewController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
  [v6 deselectRowAtIndexPath:v7 animated:1];
  if (v7 | v10 && (PKEqualObjects() & 1) == 0)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v11 safelyAddObject:v10];
    [v11 safelyAddObject:v7];
    [v6 reloadRowsAtIndexPaths:v11 withRowAnimation:100];
  }
}

- (void)_continue
{
  configuration = self->_configuration;
  v4 = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self _updatedPreferences];
  [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)configuration setUpdatedPreferences:v4];

  v6 = [[PKPeerPaymentAssociatedAccountReceiveRestrictionViewController alloc] initWithPeerPaymentSetupFlowController:self->_controller];
  if (v6)
  {
    v5 = [(PKPeerPaymentAssociatedAccountSendRestrictionViewController *)self navigationController];
    [v5 pushViewController:v6 animated:1];
  }
}

- (id)_updatedPreferences
{
  v3 = [(PKFamilyMember *)self->_familyMember altDSID];
  v4 = [(PKPeerPaymentPreferences *)self->_currentPreferences copy];
  v5 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  defaultSelectedIndexPath = v5;
  if (!v5)
  {
    defaultSelectedIndexPath = self->_defaultSelectedIndexPath;
  }

  v7 = defaultSelectedIndexPath;

  v8 = [(NSIndexPath *)v7 row];
  if (v8 <= 2)
  {
    [v4 addSendRestrictionType:v8 + 1 altDSID:v3];
  }

  return v4;
}

- (id)_textLabelStringForIndexPath:(id)a3
{
  v3 = [a3 row];
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