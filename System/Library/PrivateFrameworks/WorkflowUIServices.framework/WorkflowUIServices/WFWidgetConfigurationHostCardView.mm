@interface WFWidgetConfigurationHostCardView
- (WFWidgetConfigurationHostCardView)initWithRequest:(id)request;
- (void)showMessage:(id)message;
- (void)startLoading;
@end

@implementation WFWidgetConfigurationHostCardView

- (void)showMessage:(id)message
{
  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v4 = WFLocalizedStringFromTable(@"Unable to Load", @"WidgetConfiguration");
  [v7 setText:v4];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v7 setFont:v5];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setNumberOfLines:0];
  [v7 setTextAlignment:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v7 setTextColor:secondaryLabelColor];

  [(WFWidgetConfigurationCardView *)self setContentView:v7 stretchToFit:0];
}

- (void)startLoading
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  [v3 startAnimating];
  [(WFWidgetConfigurationCardView *)self setContentView:v3 stretchToFit:0];
}

- (WFWidgetConfigurationHostCardView)initWithRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = WFWidgetConfigurationHostCardView;
  v3 = [(WFWidgetConfigurationCardView *)&v7 initWithRequest:request contentView:0];
  v4 = v3;
  if (v3)
  {
    [(WFWidgetConfigurationHostCardView *)v3 startLoading];
    v5 = v4;
  }

  return v4;
}

@end