@interface WFFocusConfigurationServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (WFFocusConfigurationServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)startConfigurationWithRequest:(WFFocusConfigurationRequest *)a3 completion:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WFFocusConfigurationServiceViewController

+ (id)_exportedInterface
{
  v2 = sub_100016FCC();

  return v2;
}

+ (id)_remoteViewControllerInterface
{
  v2 = sub_100017020();

  return v2;
}

- (void)loadView
{
  v2 = self;
  sub_100017074();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100018FC0(&selRef_viewDidLoad);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000176EC(a3);
}

- (void)startConfigurationWithRequest:(WFFocusConfigurationRequest *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_100018CC4(&unk_100020EE0, v7);
}

- (WFFocusConfigurationServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10001DD14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100018DD4(v5, v7, a4);
}

@end