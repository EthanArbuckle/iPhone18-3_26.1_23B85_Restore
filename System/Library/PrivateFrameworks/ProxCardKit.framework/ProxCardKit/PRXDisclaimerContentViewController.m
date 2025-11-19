@interface PRXDisclaimerContentViewController
- (void)_updateDisclaimerLabel;
- (void)_updateMoreInfoButton;
- (void)setDisclaimer:(id)a3;
- (void)setMoreInfoAction:(id)a3;
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

- (void)setDisclaimer:(id)a3
{
  v4 = a3;
  disclaimer = self->_disclaimer;
  if (disclaimer != v4)
  {
    v8 = v4;
    disclaimer = [disclaimer isEqualToString:v4];
    v4 = v8;
    if ((disclaimer & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_disclaimer;
      self->_disclaimer = v6;

      disclaimer = [(PRXDisclaimerContentViewController *)self _updateDisclaimerLabel];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](disclaimer, v4);
}

- (void)_updateDisclaimerLabel
{
  disclaimer = self->_disclaimer;
  v4 = [(PRXCardContentViewController *)self contentView];
  v3 = [v4 disclaimerLabel];
  [v3 setText:disclaimer];
}

- (void)setMoreInfoAction:(id)a3
{
  v5 = a3;
  if (self->_moreInfoAction != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_moreInfoAction, a3);
    [(PRXDisclaimerContentViewController *)self _updateMoreInfoButton];
    v5 = v6;
  }
}

- (void)_updateMoreInfoButton
{
  if (self->_moreInfoAction)
  {
    v5 = [PRXButton buttonWithProximityType:3];
    v3 = [(PRXAction *)self->_moreInfoAction title];
    [v5 setTitle:v3 forState:0];

    [v5 addTarget:self->_moreInfoAction action:sel__callHandler forControlEvents:0x2000];
    v4 = [(PRXCardContentViewController *)self contentView];
    [v4 setMoreInfoButton:v5];
  }

  else
  {
    v5 = [(PRXCardContentViewController *)self contentView];
    [v5 setMoreInfoButton:0];
  }
}

@end