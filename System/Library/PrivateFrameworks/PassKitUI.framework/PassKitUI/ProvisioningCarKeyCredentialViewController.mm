@interface ProvisioningCarKeyCredentialViewController
- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)handleNextButtonTapped:(id)tapped;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProvisioningCarKeyCredentialViewController

- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  v4 = v10.receiver;
  [(PKPaymentSetupFieldsViewController *)&v10 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    viewControllers = [navigationController viewControllers];

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
  selfCopy = self;
  sub_1BD5AB67C();
}

- (_TtC9PassKitUI42ProvisioningCarKeyCredentialViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  selfCopy = self;
  result = [(PKPaymentSetupFieldsViewController *)selfCopy fieldsModel];
  if (result)
  {
    v4 = result;
    visibleSetupFieldIdentifiers = [result visibleSetupFieldIdentifiers];

    if (visibleSetupFieldIdentifiers)
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

- (void)handleNextButtonTapped:(id)tapped
{
  selfCopy = self;
  if (tapped)
  {
    selfCopy2 = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy3 = self;
  }

  v6 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  fieldsModel = [(PKPaymentSetupFieldsViewController *)selfCopy fieldsModel];
  if (fieldsModel)
  {
    v9 = fieldsModel;
    sub_1BD317B18(fieldsModel);

    selfCopy = v9;
LABEL_7:

    sub_1BD14EC0C(v10);
    return;
  }

  __break(1u);
}

- (id)defaultHeaderViewTitle
{
  selfCopy = self;
  sub_1BD5AC694();

  v3 = sub_1BE052404();

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  selfCopy = self;
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