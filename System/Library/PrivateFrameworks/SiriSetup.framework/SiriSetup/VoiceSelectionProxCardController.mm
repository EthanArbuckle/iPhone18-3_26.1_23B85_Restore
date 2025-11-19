@interface VoiceSelectionProxCardController
- (_TtC9SiriSetup32VoiceSelectionProxCardController)initWithContentView:(id)a3;
- (void)presenter:(id)a3 didChangeVoiceSelection:(id)a4;
@end

@implementation VoiceSelectionProxCardController

- (_TtC9SiriSetup32VoiceSelectionProxCardController)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presenter:(id)a3 didChangeVoiceSelection:(id)a4
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection) = a4;
  v6 = a4;
  v7 = self;

  sub_269008414();
}

@end