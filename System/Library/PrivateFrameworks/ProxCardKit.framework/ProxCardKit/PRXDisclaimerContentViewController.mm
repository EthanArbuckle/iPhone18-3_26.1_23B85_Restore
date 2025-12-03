@interface PRXDisclaimerContentViewController
- (void)_updateDisclaimerLabel;
- (void)_updateMoreInfoButton;
- (void)setDisclaimer:(id)disclaimer;
- (void)setMoreInfoAction:(id)action;
- (void)viewDidLoad;
@end

@implementation PRXDisclaimerContentViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PRXDisclaimerContentViewController;
  [(PRXCardContentViewController *)&v3 viewDidLoad];
  [(PRXDisclaimerContentViewController *)self _updateDisclaimerLabel];
  [(PRXDisclaimerContentViewController *)self _updateMoreInfoButton];
}

- (void)setDisclaimer:(id)disclaimer
{
  disclaimerCopy = disclaimer;
  disclaimer = self->_disclaimer;
  if (disclaimer != disclaimerCopy)
  {
    v8 = disclaimerCopy;
    disclaimer = [disclaimer isEqualToString:disclaimerCopy];
    disclaimerCopy = v8;
    if ((disclaimer & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_disclaimer;
      self->_disclaimer = v6;

      disclaimer = [(PRXDisclaimerContentViewController *)self _updateDisclaimerLabel];
      disclaimerCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](disclaimer, disclaimerCopy);
}

- (void)_updateDisclaimerLabel
{
  disclaimer = self->_disclaimer;
  contentView = [(PRXCardContentViewController *)self contentView];
  disclaimerLabel = [contentView disclaimerLabel];
  [disclaimerLabel setText:disclaimer];
}

- (void)setMoreInfoAction:(id)action
{
  actionCopy = action;
  if (self->_moreInfoAction != actionCopy)
  {
    v6 = actionCopy;
    objc_storeStrong(&self->_moreInfoAction, action);
    [(PRXDisclaimerContentViewController *)self _updateMoreInfoButton];
    actionCopy = v6;
  }
}

- (void)_updateMoreInfoButton
{
  if (self->_moreInfoAction)
  {
    contentView2 = [PRXButton buttonWithProximityType:3];
    title = [(PRXAction *)self->_moreInfoAction title];
    [contentView2 setTitle:title forState:0];

    [contentView2 addTarget:self->_moreInfoAction action:sel__callHandler forControlEvents:0x2000];
    contentView = [(PRXCardContentViewController *)self contentView];
    [contentView setMoreInfoButton:contentView2];
  }

  else
  {
    contentView2 = [(PRXCardContentViewController *)self contentView];
    [contentView2 setMoreInfoButton:0];
  }
}

@end