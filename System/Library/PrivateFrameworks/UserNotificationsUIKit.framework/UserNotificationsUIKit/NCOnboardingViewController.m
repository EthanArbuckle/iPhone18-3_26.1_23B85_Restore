@interface NCOnboardingViewController
- (NCOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 contentLayout:(int64_t)a5;
- (NCOnboardingViewControllerDelegate)delegate;
- (void)_nextButtonPressed:(id)a3;
- (void)setNextButtonEnabled:(BOOL)a3;
- (void)setNextButtonText:(id)a3;
- (void)viewDidLoad;
@end

@implementation NCOnboardingViewController

- (NCOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 contentLayout:(int64_t)a5
{
  v6.receiver = self;
  v6.super_class = NCOnboardingViewController;
  result = [(NCOnboardingViewController *)&v6 initWithTitle:a3 detailText:a4 icon:0 contentLayout:a5];
  if (result)
  {
    result->_nextButtonEnabled = 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NCOnboardingViewController;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277D37618] boldButton];
  nextButton = self->_nextButton;
  self->_nextButton = v3;

  [(OBTrayButton *)self->_nextButton setEnabled:self->_nextButtonEnabled];
  [(OBTrayButton *)self->_nextButton setTitle:self->_nextButtonText forState:0];
  [(OBTrayButton *)self->_nextButton addTarget:self action:sel__nextButtonPressed_ forControlEvents:64];
  v5 = [(NCOnboardingViewController *)self buttonTray];
  [v5 addButton:self->_nextButton];
}

- (void)setNextButtonText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_nextButtonText isEqualToString:?])
  {
    objc_storeStrong(&self->_nextButtonText, a3);
    [(OBTrayButton *)self->_nextButton setTitle:self->_nextButtonText forState:0];
  }
}

- (void)setNextButtonEnabled:(BOOL)a3
{
  if (self->_nextButtonEnabled != a3)
  {
    self->_nextButtonEnabled = a3;
    [(OBTrayButton *)self->_nextButton setEnabled:?];
  }
}

- (void)_nextButtonPressed:(id)a3
{
  v4 = [(NCOnboardingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 onboardingViewControllerNextButtonTapped:self];
  }
}

- (NCOnboardingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end