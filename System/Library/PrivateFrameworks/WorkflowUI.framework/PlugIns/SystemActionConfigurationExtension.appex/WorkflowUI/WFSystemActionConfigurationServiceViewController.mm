@interface WFSystemActionConfigurationServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (WFSystemActionConfigurationServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)setSelectedSystemAction:(id)action;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFSystemActionConfigurationServiceViewController

- (WFSystemActionConfigurationServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000135EC();
  }

  bundleCopy = bundle;
  sub_100006EE0();
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100007320();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100007784(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10000781C();
}

- (void)setSelectedSystemAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_100007A60();
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_100007C68();
}

+ (id)_exportedInterface
{
  v2 = sub_1000089C8();

  return v2;
}

+ (id)_remoteViewControllerInterface
{
  v2 = sub_100008A1C();

  return v2;
}

@end