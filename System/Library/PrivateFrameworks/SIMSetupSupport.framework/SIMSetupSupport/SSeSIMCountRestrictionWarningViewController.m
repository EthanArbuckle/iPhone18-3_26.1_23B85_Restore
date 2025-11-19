@interface SSeSIMCountRestrictionWarningViewController
- (SSeSIMCountRestrictionWarningViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_continueButtonTapped;
- (void)viewDidLoad;
@end

@implementation SSeSIMCountRestrictionWarningViewController

- (SSeSIMCountRestrictionWarningViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ESIM_COUNT_RESTRICTION_WARNING_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v9.receiver = self;
  v9.super_class = SSeSIMCountRestrictionWarningViewController;
  v7 = [(SSeSIMCountRestrictionWarningViewController *)&v9 initWithTitle:v4 detailText:v6 symbolName:@"antenna.radiowaves.left.and.right"];

  return v7;
}

- (void)viewDidLoad
{
  if (+[TSUtilities inBuddy])
  {
    WeakRetained = [MEMORY[0x277D37650] linkButton];
    [WeakRetained addTarget:self action:sel__continueButtonTapped forControlEvents:64];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
    [WeakRetained setTitle:v4 forState:0];

    v5 = [(SSeSIMCountRestrictionWarningViewController *)self buttonTray];
    [v5 addButton:WeakRetained];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setCancelNavigationBarItems:self];
  }
}

- (void)_continueButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end