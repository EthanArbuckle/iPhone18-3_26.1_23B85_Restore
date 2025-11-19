@interface WFSystemActionConfigurationServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (WFSystemActionConfigurationServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)setSelectedSystemAction:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFSystemActionConfigurationServiceViewController

- (WFSystemActionConfigurationServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000135EC();
  }

  v5 = a4;
  sub_100006EE0();
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100007320();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100007784(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10000781C();
}

- (void)setSelectedSystemAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007A60();
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v5 = self;
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