@interface AutoFillCredentialSelectionHostingViewController
- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithCoder:(id)a3;
- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithEligible:(id)a3 ineligible:(id)a4 selectionHandler:(id)a5;
- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AutoFillCredentialSelectionHostingViewController

- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithEligible:(id)a3 ineligible:(id)a4 selectionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (a3)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    a3 = sub_1BE052744();
  }

  if (a4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    a4 = sub_1BE052744();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return sub_1BD2FF308(a3, a4, sub_1BD300F58, v8);
}

- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1BD2FF614();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BD2FF734();
}

- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end