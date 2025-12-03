@interface IntroWelcomeController
- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)continueTapped;
- (void)skipTapped;
@end

@implementation IntroWelcomeController

- (void)continueTapped
{
  selfCopy = self;
  sub_26902A258();
}

- (void)skipTapped
{
  selfCopy = self;
  sub_26902A4A8();
}

- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end