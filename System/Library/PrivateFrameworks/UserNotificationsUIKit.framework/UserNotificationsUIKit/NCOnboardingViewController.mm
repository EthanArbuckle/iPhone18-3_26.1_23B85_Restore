@interface NCOnboardingViewController
- (NCOnboardingViewController)initWithTitle:(id)title detailText:(id)text contentLayout:(int64_t)layout;
- (NCOnboardingViewControllerDelegate)delegate;
- (void)_nextButtonPressed:(id)pressed;
- (void)setNextButtonEnabled:(BOOL)enabled;
- (void)setNextButtonText:(id)text;
- (void)viewDidLoad;
@end

@implementation NCOnboardingViewController

- (NCOnboardingViewController)initWithTitle:(id)title detailText:(id)text contentLayout:(int64_t)layout
{
  v6.receiver = self;
  v6.super_class = NCOnboardingViewController;
  result = [(NCOnboardingViewController *)&v6 initWithTitle:title detailText:text icon:0 contentLayout:layout];
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
  boldButton = [MEMORY[0x277D37618] boldButton];
  nextButton = self->_nextButton;
  self->_nextButton = boldButton;

  [(OBTrayButton *)self->_nextButton setEnabled:self->_nextButtonEnabled];
  [(OBTrayButton *)self->_nextButton setTitle:self->_nextButtonText forState:0];
  [(OBTrayButton *)self->_nextButton addTarget:self action:sel__nextButtonPressed_ forControlEvents:64];
  buttonTray = [(NCOnboardingViewController *)self buttonTray];
  [buttonTray addButton:self->_nextButton];
}

- (void)setNextButtonText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_nextButtonText isEqualToString:?])
  {
    objc_storeStrong(&self->_nextButtonText, text);
    [(OBTrayButton *)self->_nextButton setTitle:self->_nextButtonText forState:0];
  }
}

- (void)setNextButtonEnabled:(BOOL)enabled
{
  if (self->_nextButtonEnabled != enabled)
  {
    self->_nextButtonEnabled = enabled;
    [(OBTrayButton *)self->_nextButton setEnabled:?];
  }
}

- (void)_nextButtonPressed:(id)pressed
{
  delegate = [(NCOnboardingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingViewControllerNextButtonTapped:self];
  }
}

- (NCOnboardingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end