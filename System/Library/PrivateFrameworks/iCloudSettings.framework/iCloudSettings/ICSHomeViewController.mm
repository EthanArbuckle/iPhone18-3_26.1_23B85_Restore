@interface ICSHomeViewController
- (ICSHomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)accountsForAccountManager:(id)manager;
- (void)PREFIX_popViewController;
- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info;
- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success;
- (void)handleURL:(id)l;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation ICSHomeViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2758EA848(appear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2758EAEC0(appear);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2758EB124(controller);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2758EB264();
}

- (void)handleURL:(id)l
{
  if (l)
  {
    v4 = sub_2759BA1D8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_2758EC310(v4);
}

- (ICSHomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)genericTermsRemoteUI:(id)i didFinishWithSuccess:(BOOL)success
{
  iCopy = i;
  selfCopy = self;
  sub_2758ED728(success);
}

- (void)genericTermsRemoteUI:(id)i acceptedTermsInfo:(id)info
{
  if (info)
  {
    v6 = sub_2759BA1D8();
  }

  else
  {
    v6 = 0;
  }

  iCopy = i;
  selfCopy = self;
  sub_2758ED930(v6);
}

- (id)accountsForAccountManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  _s14iCloudSettings01iA18HomeViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0();

  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_2758ED4A0(&qword_280A0E500, type metadata accessor for AIDAServiceType);
  v6 = sub_2759BA1C8();

  return v6;
}

- (void)PREFIX_popViewController
{
  selfCopy = self;
  iCloudHomeViewController.popViewController()();
}

@end