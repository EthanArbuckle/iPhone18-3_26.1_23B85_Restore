@interface PMCredentialExchangeViewController
- (PMCredentialExchangeViewController)initWithCoder:(id)a3;
- (PMCredentialExchangeViewController)initWithExportedCredentialData:(id)a3 exporterBundleID:(id)a4;
- (PMCredentialExchangeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PMCredentialExchangeViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  PMCredentialExchangeViewController.viewWillAppear(_:)(a3);
}

- (PMCredentialExchangeViewController)initWithExportedCredentialData:(id)a3 exporterBundleID:(id)a4
{
  v5 = a3;
  if (a3)
  {
    v7 = a4;
    v8 = v5;
    v5 = sub_21CB80C84();
    v10 = v9;
  }

  else
  {
    v11 = a4;
    v10 = 0xF000000000000000;
  }

  sub_21CB855C4();

  *(&self->super.super.super.super.isa + OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel) = 0;
  if (v10 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_21CB80C64();
  }

  v13 = sub_21CB85584();

  v16.receiver = self;
  v16.super_class = PMCredentialExchangeViewController;
  v14 = [(ASExportViewController *)&v16 initWithExportedCredentialData:v12 exporterBundleID:v13];
  sub_21C7902FC(v5, v10);

  return v14;
}

- (PMCredentialExchangeViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel) = 0;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (PMCredentialExchangeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end