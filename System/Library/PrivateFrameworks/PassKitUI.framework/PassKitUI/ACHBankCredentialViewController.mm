@interface ACHBankCredentialViewController
- (_TtC9PassKitUI31ACHBankCredentialViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUI31ACHBankCredentialViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)editButtonTapped;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ACHBankCredentialViewController

- (_TtC9PassKitUI31ACHBankCredentialViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BD616B18();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BD616EFC();
}

- (void)editButtonTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction);
  if (v2)
  {
    v3 = self;
    v4 = sub_1BD0D44B8(v2);
    v2(v4);

    sub_1BD0D4744(v2);
  }
}

- (_TtC9PassKitUI31ACHBankCredentialViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end