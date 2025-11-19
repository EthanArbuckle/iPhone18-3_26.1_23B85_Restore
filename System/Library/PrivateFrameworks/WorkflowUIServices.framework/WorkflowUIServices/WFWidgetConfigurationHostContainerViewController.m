@interface WFWidgetConfigurationHostContainerViewController
- (MTVisualStylingProvider)fillProvider;
- (MTVisualStylingProvider)strokeProvider;
- (UIColor)containerBackgroundColor;
- (UIViewController)contentViewController;
- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate;
- (WFWidgetConfigurationHostContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFWidgetConfigurationRequest)request;
- (void)setContainerBackgroundColor:(id)a3;
- (void)setContainerDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFWidgetConfigurationHostContainerViewController

- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate
{
  v2 = sub_1C83C932C();

  return v2;
}

- (void)setContainerDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C83C939C();
}

- (WFWidgetConfigurationRequest)request
{
  v2 = sub_1C83C9418();

  return v2;
}

- (UIViewController)contentViewController
{
  v2 = sub_1C83C9458();

  return v2;
}

- (UIColor)containerBackgroundColor
{
  v2 = sub_1C83C9498();

  return v2;
}

- (void)setContainerBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1C83C9524(a3);
}

- (MTVisualStylingProvider)strokeProvider
{
  v2 = self;
  v3 = sub_1C83C957C();

  return v3;
}

- (MTVisualStylingProvider)fillProvider
{
  v2 = self;
  v3 = sub_1C83C95C8();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1C83C97C4();
}

- (WFWidgetConfigurationHostContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1C840CDDC();
  }

  v5 = a4;
  sub_1C83CA318();
}

@end