@interface VoiceOptionsView
- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler;
- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)voiceSelectionViewModelDidChange;
@end

@implementation VoiceOptionsView

- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_voiceSelectionViewModelProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_voiceSelectionEventHandler);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_269057744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269057724();
  v11 = a3;
  v12 = self;
  sub_269014E88();

  (*(v7 + 8))(v10, v6);
}

- (void)voiceSelectionViewModelDidChange
{
  v2 = self;
  sub_2690147C4();
}

@end