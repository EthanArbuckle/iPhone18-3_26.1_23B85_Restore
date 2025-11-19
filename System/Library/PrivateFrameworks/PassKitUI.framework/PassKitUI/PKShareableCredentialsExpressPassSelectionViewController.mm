@interface PKShareableCredentialsExpressPassSelectionViewController
- (PKShareableCredentialsExpressPassSelectionViewController)initWithPasses:(id)a3 groupsController:(id)a4 context:(int64_t)a5 delegate:(id)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_done;
- (void)_enableView:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKShareableCredentialsExpressPassSelectionViewController

- (PKShareableCredentialsExpressPassSelectionViewController)initWithPasses:(id)a3 groupsController:(id)a4 context:(int64_t)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = PKShareableCredentialsExpressPassSelectionViewController;
  v14 = [(PKPaymentSetupTableViewController *)&v21 initWithContext:a5];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_passes, a3);
    objc_storeStrong(&v15->_delegate, a6);
    if (v12)
    {
      objc_storeStrong(&v15->_groupsController, a4);
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x1E69B88E0]);
      v17 = [MEMORY[0x1E69B8A58] sharedInstance];
      v18 = [v16 initWithPassLibrary:v17];
      groupsController = v15->_groupsController;
      v15->_groupsController = v18;

      [(PKGroupsController *)v15->_groupsController loadGroupsSynchronously];
    }
  }

  return v15;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PKShareableCredentialsExpressPassSelectionViewController;
  [(PKShareableCredentialsExpressPassSelectionViewController *)&v19 viewDidLoad];
  v3 = [(PKShareableCredentialsExpressPassSelectionViewController *)self navigationItem];
  [v3 setHidesBackButton:1 animated:0];

  v4 = [(PKPaymentSetupTableViewController *)self tableView];
  [v4 setAllowsMultipleSelection:0];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"CellReuseIdentifier"];
  self->_hasSetDefault = 0;
  v5 = [PKTableHeaderView alloc];
  v6 = [(PKTableHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  tableHeader = self->_tableHeader;
  self->_tableHeader = v6;

  [(PKTableHeaderView *)self->_tableHeader setTopPadding:30.0];
  v8 = self->_tableHeader;
  if (_UISolariumFeatureFlagEnabled())
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [(PKTableHeaderView *)v8 setStyle:v9];
  v10 = [(PKTableHeaderView *)self->_tableHeader titleLabel];
  v11 = PKLocalizedShareableCredentialString(&cfstr_SelectExpressP.isa);
  [v10 setText:v11];

  v12 = [(PKTableHeaderView *)self->_tableHeader subtitleLabel];
  if (PKPearlIsAvailable())
  {
    v13 = @"SELECT_EXPRESS_PASS_DESCRIPTION_FACE_ID";
  }

  else
  {
    v13 = @"SELECT_EXPRESS_PASS_DESCRIPTION_TOUCH_ID";
  }

  v14 = PKLocalizedShareableCredentialString(&v13->isa);
  [v12 setText:v14];

  [v4 setTableHeaderView:self->_tableHeader];
  [(PKTableHeaderView *)self->_tableHeader sizeToFit];
  [(PKTableHeaderView *)self->_tableHeader bounds];
  [v4 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v20)];
  [(PKTableHeaderView *)self->_tableHeader setBottomPadding:20.0];
  v15 = [(PKPaymentSetupTableViewController *)self dockView];
  v16 = [v15 primaryButton];
  [v16 addTarget:self action:sel__done forControlEvents:0x2000];

  v17 = [v15 primaryButton];
  v18 = PKLocalizedShareableCredentialString(&cfstr_SelectExpressP_2.isa);
  [v17 setTitle:v18 forState:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKShareableCredentialsExpressPassSelectionViewController;
  [(PKPaymentSetupTableViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKShareableCredentialsExpressPassSelectionViewController;
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
  v7 = a4;
  v8 = [a3 dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:v7];
  if (!v8)
  {
    v8 = [[PKPaymentCredentialTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"CellReuseIdentifier"];
  }

  v9 = -[NSArray objectAtIndex:](self->_passes, "objectAtIndex:", [v7 row]);
  if (!self->_hasSetDefault)
  {
    self->_hasSetDefault = 1;
    [(PKPaymentCredentialTableViewCell *)v8 setAccessoryType:3];
    objc_storeStrong(&self->_previouslySelectedIndexPath, a4);
    objc_storeStrong(&self->_previouslySelectedPass, v9);
  }

  [(PKPaymentCredentialTableViewCell *)v8 setSnapshotImageHasBorder:0];
  v10 = [(PKPaymentCredentialTableViewCell *)v8 textLabel];
  [v10 setLineBreakMode:4];
  v11 = [v9 fieldForKey:*MEMORY[0x1E69BC0D0]];
  v12 = [v11 value];
  [v10 setText:v12];

  v13 = [(PKPaymentCredentialTableViewCell *)v8 credentialDetailLabel];
  v14 = [(PKPaymentCredentialTableViewCell *)v8 detailTextLabelColor];
  [v13 setTextColor:v14];

  v15 = [v9 localizedDescription];
  [v13 setText:v15];

  [v13 setLineBreakMode:4];
  v16 = [[PKPassView alloc] initWithPass:v9 content:5];
  +[PKPaymentCredentialTableViewCell defaultImageViewSize];
  v17 = [(PKPassView *)v16 snapshotOfFrontFaceWithRequestedSize:?];
  v18 = [(PKPaymentCredentialTableViewCell *)v8 imageView];
  [v18 setImage:v17];

  v19 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PKPaymentCredentialTableViewCell *)v8 setBackgroundColor:v19];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = PKShareableCredentialsExpressPassSelectionViewController;
  v7 = a3;
  [(PKPaymentSetupTableViewController *)&v14 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:{self->_previouslySelectedIndexPath, v14.receiver, v14.super_class}];
  [v8 setAccessoryType:0];

  v9 = [v7 cellForRowAtIndexPath:v6];

  [v9 setAccessoryType:3];
  previouslySelectedIndexPath = self->_previouslySelectedIndexPath;
  self->_previouslySelectedIndexPath = v6;
  v11 = v6;

  v12 = [(NSArray *)self->_passes objectAtIndex:[(NSIndexPath *)v11 row]];
  previouslySelectedPass = self->_previouslySelectedPass;
  self->_previouslySelectedPass = v12;
}

- (void)_done
{
  v14[1] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v13 = *MEMORY[0x1E69BB158];
  v14[0] = *MEMORY[0x1E69BB160];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:0 context:v4];

  [(PKGroupsController *)self->_groupsController suppressRemoteUpdates:1];
  groupsController = self->_groupsController;
  v6 = [(PKSecureElementPass *)self->_previouslySelectedPass uniqueID];
  v7 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:v6];

  v8 = [(PKGroupsController *)self->_groupsController groupAtIndex:v7];
  if (v8)
  {
    [(PKGroupsController *)self->_groupsController movePass:self->_previouslySelectedPass inGroup:v8 toIndex:0];
  }

  [(PKGroupsController *)self->_groupsController enableRemoteUpdates];
  v9 = [(NSArray *)self->_passes mutableCopy];
  v10 = v9;
  if (self->_previouslySelectedPass)
  {
    [v9 removeObject:?];
    [v10 insertObject:self->_previouslySelectedPass atIndex:0];
  }

  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v12 = [v10 copy];
    [(PKPaymentSetupViewControllerDelegate *)delegate viewController:self didFinishWithPasses:v12 error:0];
  }
}

- (void)_enableView:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaymentSetupTableViewController *)self tableView];
  [v5 setUserInteractionEnabled:v3];

  v6 = [(PKPaymentSetupTableViewController *)self dockView];
  v7 = [v6 primaryButton];

  [v7 setShowSpinner:v3 ^ 1];
  [v7 setEnabled:v3];
}

@end