@interface BFFFinishSetupPINVerificationViewController
- (id)stringsBundle;
- (void)didAcceptEnteredPIN:(id)a3;
- (void)didCancelEnteringPIN;
- (void)loadView;
@end

@implementation BFFFinishSetupPINVerificationViewController

- (void)loadView
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = BFFFinishSetupPINVerificationViewController;
  [(BFFFinishSetupPINVerificationViewController *)&v6 loadView];
  v3 = objc_alloc_init(MEMORY[0x277D3F910]);
  v4 = objc_alloc_init(MEMORY[0x277D3FAD8]);
  [v4 setEditPaneClass:objc_opt_class()];
  [v4 setProperty:&unk_287767D10 forKey:@"mode"];
  [v3 setSpecifier:v4];
  [v3 setPinDelegate:self];
  v7[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(BFFFinishSetupPINVerificationViewController *)self setViewControllers:v5];
}

- (id)stringsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

- (void)didAcceptEnteredPIN:(id)a3
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a3);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (void)didCancelEnteringPIN
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, 0);
    v4 = self->_completion;
    self->_completion = 0;
  }
}

@end