@interface PKCurrentDevicePasscodeViewController
- (PKCurrentDevicePasscodeViewController)initWithDelegate:(id)delegate;
- (id)stringsBundle;
- (void)didAcceptEnteredPIN:(id)n;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKCurrentDevicePasscodeViewController

- (PKCurrentDevicePasscodeViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = PKCurrentDevicePasscodeViewController;
  v5 = [(DevicePINController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_alloc_init(MEMORY[0x1E69C5748]);
    v8 = *MEMORY[0x1E69C5808];
    v9 = *(&v6->super.super.super.super.super.super.isa + v8);
    *(&v6->super.super.super.super.super.super.isa + v8) = v7;

    [*(&v6->super.super.super.super.super.super.isa + v8) setEditPaneClass:objc_opt_class()];
    [*(&v6->super.super.super.super.super.super.isa + v8) setProperty:&unk_1F3CC8060 forKey:*MEMORY[0x1E69C59B8]];
    [(DevicePINController *)v6 setShouldDismissWhenDone:0];
    [(DevicePINController *)v6 setHidesCancelButton:1];
    [(DevicePINController *)v6 setPinDelegate:v6];
  }

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKCurrentDevicePasscodeViewController;
  [(DevicePINController *)&v4 viewWillAppear:appear];
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57A0]) resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKCurrentDevicePasscodeViewController;
  [(DevicePINController *)&v4 viewDidAppear:appear];
  [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x1E69C57A0]) becomeFirstResponder];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (id)stringsBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)didAcceptEnteredPIN:(id)n
{
  reporter = self->_reporter;
  nCopy = n;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pk_zString = [nCopy pk_zString];

  [WeakRetained currentPasscodeViewController:self didFinishWithPasscode:pk_zString];
}

@end