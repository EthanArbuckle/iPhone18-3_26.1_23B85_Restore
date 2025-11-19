@interface PKPeerPaymentMessagesExplanationViewController
- (void)_buttonTapped;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentMessagesExplanationViewController

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PKPeerPaymentMessagesExplanationViewController;
  [(PKPeerPaymentMessagesExplanationViewController *)&v12 viewDidLoad];
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentView];
  [v3 setVerticalPadding:18.0];
  v4 = [v3 imageView];
  v5 = PKUIScreenScale();
  v6 = +[PKPeerPaymentTheme primaryTextColor];
  v7 = PKUIApplePayLogo(v6, 90.0, 25.0, v5);
  [v4 setImage:v7];

  if (self->_explanation)
  {
    v8 = [v3 label];
    [v8 setText:self->_explanation];
  }

  if (self->_buttonTitle && self->_buttonAction)
  {
    v9 = [v3 button];
    v10 = _UISolariumFeatureFlagEnabled();
    buttonTitle = self->_buttonTitle;
    if (v10)
    {
      [v9 pkui_updateConfigurationWithTitle:buttonTitle];
    }

    else
    {
      [v9 setTitle:buttonTitle forState:0];
    }

    [v9 addTarget:self action:sel__buttonTapped forControlEvents:0x2000];
  }
}

- (void)_buttonTapped
{
  buttonAction = self->_buttonAction;
  if (buttonAction)
  {
    buttonAction[2]();
  }
}

@end