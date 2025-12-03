@interface WFFocusConfigurationServiceViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (WFFocusConfigurationServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)startConfigurationWithRequest:(WFFocusConfigurationRequest *)request completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
  sub_100017074();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100018FC0(&selRef_viewDidLoad);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000176EC(disappear);
}

- (void)startConfigurationWithRequest:(WFFocusConfigurationRequest *)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = request;
  v7[3] = v6;
  v7[4] = self;
  requestCopy = request;
  selfCopy = self;

  sub_100018CC4(&unk_100020EE0, v7);
}

- (WFFocusConfigurationServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10001DD14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100018DD4(v5, v7, bundle);
}

@end