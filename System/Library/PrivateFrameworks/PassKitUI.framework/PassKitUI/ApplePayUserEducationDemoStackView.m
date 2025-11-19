@interface ApplePayUserEducationDemoStackView
- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithCoder:(id)a3;
- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithFrame:(CGRect)a3;
- (id)groupAtIndex:(int64_t)a3;
- (unint64_t)suppressedContent;
- (void)layoutSubviews;
- (void)userEducationDemoControllerDidChangeState:(unint64_t)a3 oldState:(unint64_t)a4;
- (void)userEducationDemoControllerRequestsUserRestart;
@end

@implementation ApplePayUserEducationDemoStackView

- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_presentationState) = 1;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD2B58EC();
}

- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)suppressedContent
{
  if (PKIsLowEndDevice())
  {
    return 819;
  }

  else
  {
    return 307;
  }
}

- (id)groupAtIndex:(int64_t)a3
{
  v3 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController) groupAtIndex_];

  return v3;
}

- (void)userEducationDemoControllerRequestsUserRestart
{
  v2 = self;
  ApplePayUserEducationDemoStackView.userEducationDemoControllerRequestsUserRestart()();
}

- (void)userEducationDemoControllerDidChangeState:(unint64_t)a3 oldState:(unint64_t)a4
{
  v6 = self;
  sub_1BD2B5D68(a3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD565620(a3, a4);
    swift_unknownObjectRelease();
  }
}

@end