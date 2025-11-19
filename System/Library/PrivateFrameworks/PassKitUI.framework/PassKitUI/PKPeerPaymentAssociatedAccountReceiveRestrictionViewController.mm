@interface PKPeerPaymentAssociatedAccountReceiveRestrictionViewController
- (PKPeerPaymentAssociatedAccountReceiveRestrictionViewController)initWithPeerPaymentSetupFlowController:(id)a3;
- (id)_textLabelStringForIndexPath:(id)a3;
- (id)_updatedPreferences;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_continue;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentAssociatedAccountReceiveRestrictionViewController

- (PKPeerPaymentAssociatedAccountReceiveRestrictionViewController)initWithPeerPaymentSetupFlowController:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PKPeerPaymentAssociatedAccountReceiveRestrictionViewController;
  v6 = -[PKPaymentSetupTableViewController initWithContext:](&v21, sel_initWithContext_, [v5 context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v8 = [v5 configuration];
    v9 = [v8 peerPaymentSetupConfigurationType];

    if (v9 == 1)
    {
      v10 = [v5 configuration];
      configuration = v7->_configuration;
      v7->_configuration = v10;

      v12 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)v7->_configuration associatedAccountSetupDelegate];
      objc_storeWeak(&v7->_delegate, v12);

      v13 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)v7->_configuration familyMember];
      familyMember = v7->_familyMember;
      v7->_familyMember = v13;

      v15 = [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)v7->_configuration updatedPreferences];
      currentPreferences = v7->_currentPreferences;
      v7->_currentPreferences = v15;

      v17 = [(PKFamilyMember *)v7->_familyMember age]< 0xD;
      v18 = [MEMORY[0x1E696AC88] indexPathForRow:v17 inSection:0];
      defaultSelectedIndexPath = v7->_defaultSelectedIndexPath;
      v7->_defaultSelectedIndexPath = v18;
    }
  }

  return v7;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKPeerPaymentAssociatedAccountReceiveRestrictionViewController;
  [(PKPeerPaymentAssociatedAccountReceiveRestrictionViewController *)&v28 viewDidLoad];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 setAllowsMultipleSelection:0];
  [(PKPeerPaymentAssociatedAccountReceiveRestrictionViewController *)self tableView:v3 didSelectRowAtIndexPath:self->_defaultSelectedIndexPath];
  v4 = [PKTableHeaderView alloc];
  v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  tableHeader = self->_tableHeader;
  self->_tableHeader = v5;

  [(PKTableHeaderView *)self->_tableHeader setTopPadding:30.0];
  [(PKTableHeaderView *)self->_tableHeader setBottomPadding:30.0];
  v7 = [(PKPeerPaymentAssociatedAccountReceiveRestrictionViewController *)self traitCollection];
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
  v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentRec_0.isa);
  [v11 setText:v12];

  v13 = [(PKTableHeaderView *)self->_tableHeader subtitleLabel];
  v14 = [(PKFamilyMember *)self->_familyMember firstName];
  v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentRec_1.isa, &stru_1F3BD5BF0.isa, v14);
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
    v19 = [v18 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
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
  v8.super_class = PKPeerPaymentAssociatedAccountReceiveRestrictionViewController;
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
  v9 = [(PKPeerPaymentAssociatedAccountReceiveRestrictionViewController *)self _textLabelStringForIndexPath:v6];
  [v8 setText:v9];

  v10 = [(PKPaymentSetupTableViewController *)self selectedIndexPath];
  LODWORD(v8) = PKEqualObjects();

  if (v8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];

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
  v12.super_class = PKPeerPaymentAssociatedAccountReceiveRestrictionViewController;
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
  v4 = [(PKPeerPaymentAssociatedAccountReceiveRestrictionViewController *)self _updatedPreferences];
  [(PKPeerPaymentSetupFlowControllerAssociatedAccountConfiguration *)configuration setUpdatedPreferences:v4];

  v6 = [[PKPeerPaymentAssociatedAccountActivationViewController alloc] initWithPeerPaymentSetupFlowController:self->_controller];
  v5 = [(PKPeerPaymentAssociatedAccountReceiveRestrictionViewController *)self navigationController];
  [v5 pk_presentPaymentSetupViewController:v6 animated:1 completion:0];
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
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_8;
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v4 addReceiveRestrictionType:v9 altDSID:v3];
LABEL_8:

  return v4;
}

- (id)_textLabelStringForIndexPath:(id)a3
{
  v3 = [a3 row];
  if (!v3)
  {
    v4 = @"PEER_PAYMENT_ASSOCIATED_ACCOUNT_RECEIVE_RESTRICTIONS_ANYONE";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"PEER_PAYMENT_ASSOCIATED_ACCOUNT_RECEIVE_RESTRICTIONS_FAMILY";
LABEL_5:
    v5 = PKLocalizedPeerPaymentString(&v4->isa);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end