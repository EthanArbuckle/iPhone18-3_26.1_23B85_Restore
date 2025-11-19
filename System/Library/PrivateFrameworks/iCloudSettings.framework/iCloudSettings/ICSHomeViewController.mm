@interface ICSHomeViewController
- (ICSHomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)accountsForAccountManager:(id)a3;
- (void)PREFIX_popViewController;
- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4;
- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4;
- (void)handleURL:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation ICSHomeViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2758EA848(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2758EAEC0(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2758EB124(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2758EB264();
}

- (void)handleURL:(id)a3
{
  if (a3)
  {
    v4 = sub_2759BA1D8();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_2758EC310(v4);
}

- (ICSHomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)genericTermsRemoteUI:(id)a3 didFinishWithSuccess:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_2758ED728(a4);
}

- (void)genericTermsRemoteUI:(id)a3 acceptedTermsInfo:(id)a4
{
  if (a4)
  {
    v6 = sub_2759BA1D8();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_2758ED930(v6);
}

- (id)accountsForAccountManager:(id)a3
{
  v4 = a3;
  v5 = self;
  _s14iCloudSettings01iA18HomeViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0();

  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_2758ED4A0(&qword_280A0E500, type metadata accessor for AIDAServiceType);
  v6 = sub_2759BA1C8();

  return v6;
}

- (void)PREFIX_popViewController
{
  v2 = self;
  iCloudHomeViewController.popViewController()();
}

@end