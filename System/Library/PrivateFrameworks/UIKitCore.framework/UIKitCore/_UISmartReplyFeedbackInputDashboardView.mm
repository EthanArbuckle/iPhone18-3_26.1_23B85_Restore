@interface _UISmartReplyFeedbackInputDashboardView
+ (id)makeBackgroundView;
- (_UISmartReplyFeedbackInputDashboardView)init;
- (id)makeButtonWithSystemImageNamed:(id)named action:(id)action;
- (id)makeFeedbackLabelWithText:(id)text;
- (id)makeImageWithSystemImageNamed:(id)named;
@end

@implementation _UISmartReplyFeedbackInputDashboardView

- (_UISmartReplyFeedbackInputDashboardView)init
{
  v3.receiver = self;
  v3.super_class = _UISmartReplyFeedbackInputDashboardView;
  return [(UIView *)&v3 init];
}

- (id)makeButtonWithSystemImageNamed:(id)named action:(id)action
{
  actionCopy = action;
  namedCopy = named;
  v7 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:-1];
  v8 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:17.0];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = [UIImage _systemImageNamed:namedCopy withConfiguration:v9];

  v11 = +[UIButtonConfiguration plainButtonConfiguration];
  v12 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v12 userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    [v11 setCornerStyle:4];
    v14 = 16.0;
    v15 = 16.0;
  }

  else
  {
    v15 = 20.0;
    v14 = 5.0;
  }

  [v11 setContentInsets:{v14, v15, v14, v15}];
  [v11 setImage:v10];
  v16 = [UIButton buttonWithConfiguration:v11 primaryAction:actionCopy];

  [v16 setConfigurationUpdateHandler:&__block_literal_global_545];

  return v16;
}

- (id)makeFeedbackLabelWithText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(UILabel);
  v5 = [UIMorphingLabel preferredFontWithSize:17.0];
  [(UILabel *)v4 setFont:v5];

  [(UILabel *)v4 setText:textCopy];
  v6 = +[UIColor labelColor];
  [(UILabel *)v4 setTextColor:v6];

  [(UILabel *)v4 setTextAlignment:1];
  [(UILabel *)v4 setAdjustsFontSizeToFitWidth:1];

  return v4;
}

- (id)makeImageWithSystemImageNamed:(id)named
{
  namedCopy = named;
  v4 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:-1];
  v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:17.0];
  v6 = [v4 configurationByApplyingConfiguration:v5];

  v7 = [UIImage _systemImageNamed:namedCopy withConfiguration:v6];

  v8 = [[UIImageView alloc] initWithImage:v7];

  return v8;
}

+ (id)makeBackgroundView
{
  v2 = [UIView alloc];
  v3 = [(UIView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v3 _setContinuousCornerRadius:10.0];

  return v3;
}

@end