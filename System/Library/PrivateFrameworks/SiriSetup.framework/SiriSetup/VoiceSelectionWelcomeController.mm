@interface VoiceSelectionWelcomeController
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (void)chooseForMeTapped;
- (void)continueTapped;
- (void)presenter:(id)presenter didChangeVoiceSelection:(id)selection;
@end

@implementation VoiceSelectionWelcomeController

- (void)continueTapped
{
  selfCopy = self;
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

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SiriSetup31VoiceSelectionWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presenter:(id)presenter didChangeVoiceSelection:(id)selection
{
  presenterCopy = presenter;
  selectionCopy = selection;
  selfCopy = self;
  sub_269014DB4(selectionCopy);
}

@end