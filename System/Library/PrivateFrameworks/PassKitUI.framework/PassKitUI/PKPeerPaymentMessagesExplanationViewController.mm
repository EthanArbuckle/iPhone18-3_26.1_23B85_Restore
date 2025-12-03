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
  contentView = [(PKPeerPaymentMessagesContentBaseViewController *)self contentView];
  [contentView setVerticalPadding:18.0];
  imageView = [contentView imageView];
  v5 = PKUIScreenScale();
  v6 = +[PKPeerPaymentTheme primaryTextColor];
  v7 = PKUIApplePayLogo(v6, 90.0, 25.0, v5);
  [imageView setImage:v7];

  if (self->_explanation)
  {
    label = [contentView label];
    [label setText:self->_explanation];
  }

  if (self->_buttonTitle && self->_buttonAction)
  {
    button = [contentView button];
    v10 = _UISolariumFeatureFlagEnabled();
    buttonTitle = self->_buttonTitle;
    if (v10)
    {
      [button pkui_updateConfigurationWithTitle:buttonTitle];
    }

    else
    {
      [button setTitle:buttonTitle forState:0];
    }

    [button addTarget:self action:sel__buttonTapped forControlEvents:0x2000];
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