@interface VoiceTrainingWelcomeController
- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)secondaryButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation VoiceTrainingWelcomeController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_269027024(appear);
}

- (void)secondaryButtonTapped
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_26903EF68();
    swift_unknownObjectRelease();
  }
}

- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end