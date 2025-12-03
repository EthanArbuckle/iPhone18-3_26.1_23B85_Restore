@interface WFWidgetConfigurationHostContainerViewController
- (MTVisualStylingProvider)fillProvider;
- (MTVisualStylingProvider)strokeProvider;
- (UIColor)containerBackgroundColor;
- (UIViewController)contentViewController;
- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate;
- (WFWidgetConfigurationHostContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WFWidgetConfigurationRequest)request;
- (void)setContainerBackgroundColor:(id)color;
- (void)setContainerDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation WFWidgetConfigurationHostContainerViewController

- (WFWidgetConfigurationContainerViewControllerProtocolDelegate)containerDelegate
{
  v2 = sub_1C83C932C();

  return v2;
}

- (void)setContainerDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)setContainerBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1C83C9524(color);
}

- (MTVisualStylingProvider)strokeProvider
{
  selfCopy = self;
  v3 = sub_1C83C957C();

  return v3;
}

- (MTVisualStylingProvider)fillProvider
{
  selfCopy = self;
  v3 = sub_1C83C95C8();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1C83C97C4();
}

- (WFWidgetConfigurationHostContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1C840CDDC();
  }

  bundleCopy = bundle;
  sub_1C83CA318();
}

@end