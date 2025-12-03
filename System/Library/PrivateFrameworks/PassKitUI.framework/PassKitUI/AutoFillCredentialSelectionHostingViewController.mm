@interface AutoFillCredentialSelectionHostingViewController
- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithCoder:(id)coder;
- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithEligible:(id)eligible ineligible:(id)ineligible selectionHandler:(id)handler;
- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation AutoFillCredentialSelectionHostingViewController

- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithEligible:(id)eligible ineligible:(id)ineligible selectionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (eligible)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    eligible = sub_1BE052744();
  }

  if (ineligible)
  {
    sub_1BD0E5E8C(0, &qword_1EBD41880);
    ineligible = sub_1BE052744();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  return sub_1BD2FF308(eligible, ineligible, sub_1BD300F58, v8);
}

- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController_hostingVC) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_1BD2FF614();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BD2FF734();
}

- (_TtC9PassKitUIP33_5920B4C63AB8FD754A3E7F2EE731213248AutoFillCredentialSelectionHostingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end