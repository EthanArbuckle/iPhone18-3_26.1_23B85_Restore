@interface VoiceTrainingWelcomeController
- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)secondaryButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation VoiceTrainingWelcomeController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_269027024(a3);
}

- (void)secondaryButtonTapped
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_26903EF68();
    swift_unknownObjectRelease();
  }
}

- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup30VoiceTrainingWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end