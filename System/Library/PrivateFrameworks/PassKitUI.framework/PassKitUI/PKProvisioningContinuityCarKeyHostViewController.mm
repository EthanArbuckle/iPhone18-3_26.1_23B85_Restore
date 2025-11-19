@interface PKProvisioningContinuityCarKeyHostViewController
- (PKProvisioningContinuityCarKeyHostViewController)initWithHandle:(id)a3 userInfo:(id)a4 parent:(id)a5;
- (PKProvisioningContinuityCarKeyHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKProvisioningContinuityCarKeyHostViewController

- (PKProvisioningContinuityCarKeyHostViewController)initWithHandle:(id)a3 userInfo:(id)a4 parent:(id)a5
{
  v6 = sub_1BE052244();
  v7 = a3;
  swift_unknownObjectRetain();
  ProvisioningContinuityCarKeyHostViewController.init(handle:userInfo:parent:)(v7, v6);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  ProvisioningContinuityCarKeyHostViewController.viewWillAppear(_:)(a3);
}

- (PKProvisioningContinuityCarKeyHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end