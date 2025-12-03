@interface PKShareableCredentialsExpressPassSelectionViewController
- (PKShareableCredentialsExpressPassSelectionViewController)initWithPasses:(id)passes groupsController:(id)controller context:(int64_t)context delegate:(id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_done;
- (void)_enableView:(BOOL)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKShareableCredentialsExpressPassSelectionViewController

- (PKShareableCredentialsExpressPassSelectionViewController)initWithPasses:(id)passes groupsController:(id)controller context:(int64_t)context delegate:(id)delegate
{
  passesCopy = passes;
  controllerCopy = controller;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = PKShareableCredentialsExpressPassSelectionViewController;
  v14 = [(PKPaymentSetupTableViewController *)&v21 initWithContext:context];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_passes, passes);
    objc_storeStrong(&v15->_delegate, delegate);
    if (controllerCopy)
    {
      objc_storeStrong(&v15->_groupsController, controller);
    }

    else
    {
      v16 = objc_alloc(MEMORY[0x1E69B88E0]);
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      v18 = [v16 initWithPassLibrary:mEMORY[0x1E69B8A58]];
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
  navigationItem = [(PKShareableCredentialsExpressPassSelectionViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView setAllowsMultipleSelection:0];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CellReuseIdentifier"];
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
  titleLabel = [(PKTableHeaderView *)self->_tableHeader titleLabel];
  v11 = PKLocalizedShareableCredentialString(&cfstr_SelectExpressP.isa);
  [titleLabel setText:v11];

  subtitleLabel = [(PKTableHeaderView *)self->_tableHeader subtitleLabel];
  if (PKPearlIsAvailable())
  {
    v13 = @"SELECT_EXPRESS_PASS_DESCRIPTION_FACE_ID";
  }

  else
  {
    v13 = @"SELECT_EXPRESS_PASS_DESCRIPTION_TOUCH_ID";
  }

  v14 = PKLocalizedShareableCredentialString(&v13->isa);
  [subtitleLabel setText:v14];

  [tableView setTableHeaderView:self->_tableHeader];
  [(PKTableHeaderView *)self->_tableHeader sizeToFit];
  [(PKTableHeaderView *)self->_tableHeader bounds];
  [tableView _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v20)];
  [(PKTableHeaderView *)self->_tableHeader setBottomPadding:20.0];
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  primaryButton = [dockView primaryButton];
  [primaryButton addTarget:self action:sel__done forControlEvents:0x2000];

  primaryButton2 = [dockView primaryButton];
  v18 = PKLocalizedShareableCredentialString(&cfstr_SelectExpressP_2.isa);
  [primaryButton2 setTitle:v18 forState:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKShareableCredentialsExpressPassSelectionViewController;
  [(PKPaymentSetupTableViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKShareableCredentialsExpressPassSelectionViewController;
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
  v8 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:pathCopy];
  if (!v8)
  {
    v8 = [[PKPaymentCredentialTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"CellReuseIdentifier"];
  }

  v9 = -[NSArray objectAtIndex:](self->_passes, "objectAtIndex:", [pathCopy row]);
  if (!self->_hasSetDefault)
  {
    self->_hasSetDefault = 1;
    [(PKPaymentCredentialTableViewCell *)v8 setAccessoryType:3];
    objc_storeStrong(&self->_previouslySelectedIndexPath, path);
    objc_storeStrong(&self->_previouslySelectedPass, v9);
  }

  [(PKPaymentCredentialTableViewCell *)v8 setSnapshotImageHasBorder:0];
  textLabel = [(PKPaymentCredentialTableViewCell *)v8 textLabel];
  [textLabel setLineBreakMode:4];
  v11 = [v9 fieldForKey:*MEMORY[0x1E69BC0D0]];
  value = [v11 value];
  [textLabel setText:value];

  credentialDetailLabel = [(PKPaymentCredentialTableViewCell *)v8 credentialDetailLabel];
  detailTextLabelColor = [(PKPaymentCredentialTableViewCell *)v8 detailTextLabelColor];
  [credentialDetailLabel setTextColor:detailTextLabelColor];

  localizedDescription = [v9 localizedDescription];
  [credentialDetailLabel setText:localizedDescription];

  [credentialDetailLabel setLineBreakMode:4];
  v16 = [[PKPassView alloc] initWithPass:v9 content:5];
  +[PKPaymentCredentialTableViewCell defaultImageViewSize];
  v17 = [(PKPassView *)v16 snapshotOfFrontFaceWithRequestedSize:?];
  imageView = [(PKPaymentCredentialTableViewCell *)v8 imageView];
  [imageView setImage:v17];

  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PKPaymentCredentialTableViewCell *)v8 setBackgroundColor:secondarySystemBackgroundColor];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = PKShareableCredentialsExpressPassSelectionViewController;
  viewCopy = view;
  [(PKPaymentSetupTableViewController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:{self->_previouslySelectedIndexPath, v14.receiver, v14.super_class}];
  [v8 setAccessoryType:0];

  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setAccessoryType:3];
  previouslySelectedIndexPath = self->_previouslySelectedIndexPath;
  self->_previouslySelectedIndexPath = pathCopy;
  v11 = pathCopy;

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
  uniqueID = [(PKSecureElementPass *)self->_previouslySelectedPass uniqueID];
  v7 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:uniqueID];

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

- (void)_enableView:(BOOL)view
{
  viewCopy = view;
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView setUserInteractionEnabled:viewCopy];

  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  primaryButton = [dockView primaryButton];

  [primaryButton setShowSpinner:viewCopy ^ 1];
  [primaryButton setEnabled:viewCopy];
}

@end