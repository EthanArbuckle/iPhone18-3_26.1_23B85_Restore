@interface PMCredentialExchangeViewController
- (PMCredentialExchangeViewController)initWithCoder:(id)coder;
- (PMCredentialExchangeViewController)initWithExportedCredentialData:(id)data exporterBundleID:(id)d;
- (PMCredentialExchangeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PMCredentialExchangeViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  PMCredentialExchangeViewController.viewWillAppear(_:)(appear);
}

- (PMCredentialExchangeViewController)initWithExportedCredentialData:(id)data exporterBundleID:(id)d
{
  dataCopy = data;
  if (data)
  {
    dCopy = d;
    v8 = dataCopy;
    dataCopy = sub_21CB80C84();
    v10 = v9;
  }

  else
  {
    dCopy2 = d;
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
  sub_21C7902FC(dataCopy, v10);

  return v14;
}

- (PMCredentialExchangeViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel) = 0;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (PMCredentialExchangeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end