@interface ProvisioningUICoordinator
- (_TtC9PassKitUI25ProvisioningUICoordinator)init;
- (id)provisionedPass;
- (void)continueWithFieldModel:(id)model;
- (void)dealloc;
- (void)disambiguationViewController:(id)controller didSelectProduct:(id)product;
- (void)disambiguationViewControllerSetUpLater:(id)later;
- (void)terminate;
@end

@implementation ProvisioningUICoordinator

- (void)dealloc
{
  selfCopy = self;
  sub_1BD81679C();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ProvisioningUICoordinator();
  [(ProvisioningUICoordinator *)&v3 dealloc];
}

- (void)continueWithFieldModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1BD8145A8(modelCopy);
}

- (void)terminate
{
  selfCopy = self;
  sub_1BD81521C();
}

- (id)provisionedPass
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses);
  if (v2)
  {
    selfCopy = self;
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

- (void)disambiguationViewController:(id)controller didSelectProduct:(id)product
{
  if (product)
  {
    selfCopy = self;
    productCopy = product;
    sub_1BD81C7FC(productCopy);
  }

  else
  {
    __break(1u);
  }
}

- (void)disambiguationViewControllerSetUpLater:(id)later
{
  if (later)
  {
    laterCopy = later;
    navigationController = [laterCopy navigationController];
    if (navigationController)
    {
      v4 = navigationController;
    }
  }

  else
  {
    __break(1u);
  }
}

@end