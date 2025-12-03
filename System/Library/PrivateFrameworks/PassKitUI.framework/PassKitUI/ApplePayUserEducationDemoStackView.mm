@interface ApplePayUserEducationDemoStackView
- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithCoder:(id)coder;
- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithFrame:(CGRect)frame;
- (id)groupAtIndex:(int64_t)index;
- (unint64_t)suppressedContent;
- (void)layoutSubviews;
- (void)userEducationDemoControllerDidChangeState:(unint64_t)state oldState:(unint64_t)oldState;
- (void)userEducationDemoControllerRequestsUserRestart;
@end

@implementation ApplePayUserEducationDemoStackView

- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1BD2B58EC();
}

- (_TtC9PassKitUI34ApplePayUserEducationDemoStackView)initWithFrame:(CGRect)frame
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

- (id)groupAtIndex:(int64_t)index
{
  groupAtIndex_ = [*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI34ApplePayUserEducationDemoStackView_groupsController) groupAtIndex_];

  return groupAtIndex_;
}

- (void)userEducationDemoControllerRequestsUserRestart
{
  selfCopy = self;
  ApplePayUserEducationDemoStackView.userEducationDemoControllerRequestsUserRestart()();
}

- (void)userEducationDemoControllerDidChangeState:(unint64_t)state oldState:(unint64_t)oldState
{
  selfCopy = self;
  sub_1BD2B5D68(state);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BD565620(state, oldState);
    swift_unknownObjectRelease();
  }
}

@end