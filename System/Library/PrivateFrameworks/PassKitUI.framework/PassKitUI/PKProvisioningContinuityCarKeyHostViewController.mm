@interface PKProvisioningContinuityCarKeyHostViewController
- (PKProvisioningContinuityCarKeyHostViewController)initWithHandle:(id)handle userInfo:(id)info parent:(id)parent;
- (PKProvisioningContinuityCarKeyHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKProvisioningContinuityCarKeyHostViewController

- (PKProvisioningContinuityCarKeyHostViewController)initWithHandle:(id)handle userInfo:(id)info parent:(id)parent
{
  v6 = sub_1BE052244();
  handleCopy = handle;
  swift_unknownObjectRetain();
  ProvisioningContinuityCarKeyHostViewController.init(handle:userInfo:parent:)(handleCopy, v6);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  ProvisioningContinuityCarKeyHostViewController.viewWillAppear(_:)(appear);
}

- (PKProvisioningContinuityCarKeyHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end