@interface IntroWelcomeController
- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)continueTapped;
- (void)skipTapped;
@end

@implementation IntroWelcomeController

- (void)continueTapped
{
  v2 = self;
  sub_26902A258();
}

- (void)skipTapped
{
  v2 = self;
  sub_26902A4A8();
}

- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup22IntroWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end