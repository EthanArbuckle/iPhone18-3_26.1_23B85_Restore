@interface VoiceTrainingPresenter
- (_TtC9SiriSetup22VoiceTrainingPresenter)init;
- (void)audioLevelDidChange:(float)a3;
@end

@implementation VoiceTrainingPresenter

- (_TtC9SiriSetup22VoiceTrainingPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)audioLevelDidChange:(float)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
  {
    v4 = *&self->dataSource[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8];
    v5 = *(&self->super.isa + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(ObjectType, v4, a3);
  }
}

@end