@interface ProvisioningUICoordinator
- (_TtC9PassKitUI25ProvisioningUICoordinator)init;
- (id)provisionedPass;
- (void)continueWithFieldModel:(id)a3;
- (void)dealloc;
- (void)disambiguationViewController:(id)a3 didSelectProduct:(id)a4;
- (void)disambiguationViewControllerSetUpLater:(id)a3;
- (void)terminate;
@end

@implementation ProvisioningUICoordinator

- (void)dealloc
{
  v2 = self;
  sub_1BD81679C();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for ProvisioningUICoordinator();
  [(ProvisioningUICoordinator *)&v3 dealloc];
}

- (void)continueWithFieldModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD8145A8(v4);
}

- (void)terminate
{
  v2 = self;
  sub_1BD81521C();
}

- (id)provisionedPass
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses);
  if (v2)
  {
    v3 = self;
    v4 = v2;
    v2 = sub_1BE04BC84();
  }

  return v2;
}

- (_TtC9PassKitUI25ProvisioningUICoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)disambiguationViewController:(id)a3 didSelectProduct:(id)a4
{
  if (a4)
  {
    v6 = self;
    v5 = a4;
    sub_1BD81C7FC(v5);
  }

  else
  {
    __break(1u);
  }
}

- (void)disambiguationViewControllerSetUpLater:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v3 = [v5 navigationController];
    if (v3)
    {
      v4 = v3;
    }
  }

  else
  {
    __break(1u);
  }
}

@end