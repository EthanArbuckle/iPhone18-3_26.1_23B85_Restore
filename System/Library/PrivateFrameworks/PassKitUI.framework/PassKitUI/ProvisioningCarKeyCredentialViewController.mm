@interface ProvisioningCarKeyCredentialViewController
- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)handleNextButtonTapped:(id)a3;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ProvisioningCarKeyCredentialViewController

- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  v4 = v10.receiver;
  [(PKPaymentSetupFieldsViewController *)&v10 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 viewControllers];

    sub_1BD0E5E8C(0, &qword_1EBD43450);
    v8 = sub_1BE052744();

    if (v8 >> 62)
    {
      v9 = sub_1BE053704();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == 1)
    {
      sub_1BD5AC110();
    }
  }
}

- (void)loadView
{
  v2 = self;
  sub_1BD5AB67C();
}

- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
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
  v3 = self;
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v5 = self;
  }

  v6 = *(&v3->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [(PKPaymentSetupFieldsViewController *)v3 fieldsModel];
  if (v8)
  {
    v9 = v8;
    sub_1BD317B18(v8);

    v3 = v9;
LABEL_7:

    sub_1BD14EC0C(v10);
    return;
  }

  __break(1u);
}

- (id)defaultHeaderViewTitle
{
  v2 = self;
  sub_1BD5AC694();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = self;
  sub_1BD5AC694();
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