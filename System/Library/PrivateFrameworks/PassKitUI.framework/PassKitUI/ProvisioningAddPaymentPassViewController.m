@interface ProvisioningAddPaymentPassViewController
- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)cancel;
- (void)handleNextButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ProvisioningAddPaymentPassViewController

- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD595B4C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ProvisioningAddPaymentPassViewController();
  v4 = v5.receiver;
  [(PKPaymentSetupFieldsViewController *)&v5 viewDidAppear:v3];
  [*&v4[OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_reporter] reportViewAppeared];
}

- (void)cancel
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI40ProvisioningAddPaymentPassViewController_coordinator);
  if (v2)
  {
    v4 = self;
    v3 = v2;
    sub_1BD81521C();
  }
}

- (_TtC9PassKitUI40ProvisioningAddPaymentPassViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  v2 = self;
  result = [(PKPaymentSetupFieldsViewController *)v2 fieldsModel];
  if (result)
  {
    v4 = result;
    v5 = [result visibleSetupFieldIdentifiers];

    if (v5)
    {
      sub_1BE052744();

      v6 = sub_1BE052724();
    }

    else
    {

      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)handleNextButtonTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1BD59603C();

  sub_1BD14EC0C(v6);
}

- (id)defaultHeaderViewTitle
{
  v2 = self;
  sub_1BD596158();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = self;
  sub_1BD596158();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1BE052404();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultFields
{
  v2 = sub_1BE052724();

  return v2;
}

@end