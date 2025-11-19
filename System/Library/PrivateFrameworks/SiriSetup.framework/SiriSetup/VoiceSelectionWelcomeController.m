@interface VoiceSelectionWelcomeController
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (void)chooseForMeTapped;
- (void)continueTapped;
- (void)presenter:(id)a3 didChangeVoiceSelection:(id)a4;
@end

@implementation VoiceSelectionWelcomeController

- (void)continueTapped
{
  v2 = self;
  sub_269013A5C();
}

- (void)chooseForMeTapped
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_voiceSelectionPresenter);
  if (v2)
  {
    v5[4] = nullsub_1;
    v5[5] = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2690133A0;
    v5[3] = &block_descriptor_1;
    v3 = _Block_copy(v5);
    v4 = v2;
    [v4 selectRandomVoiceWithCompletion_];
    _Block_release(v3);
  }
}

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presenter:(id)a3 didChangeVoiceSelection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_269014DB4(v7);
}

@end