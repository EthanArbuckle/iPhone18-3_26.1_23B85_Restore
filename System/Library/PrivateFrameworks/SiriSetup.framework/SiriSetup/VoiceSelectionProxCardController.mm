@interface VoiceSelectionProxCardController
- (_TtC9SiriSetup32VoiceSelectionProxCardController)initWithContentView:(id)view;
- (void)presenter:(id)presenter didChangeVoiceSelection:(id)selection;
@end

@implementation VoiceSelectionProxCardController

- (_TtC9SiriSetup32VoiceSelectionProxCardController)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presenter:(id)presenter didChangeVoiceSelection:(id)selection
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection) = selection;
  selectionCopy = selection;
  selfCopy = self;

  sub_269008414();
}

@end