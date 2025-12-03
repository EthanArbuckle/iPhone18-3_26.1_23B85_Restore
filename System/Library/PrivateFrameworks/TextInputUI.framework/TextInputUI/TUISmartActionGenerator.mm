@interface TUISmartActionGenerator
- (BOOL)enabled;
- (TUISmartActionGenerator)init;
- (_TtC11TextInputUI28TUITextComposerClientWrapper)textComposerClient;
- (void)generateCandidatesWithContext:(id)context completion:(id)completion;
- (void)setEnabled:(BOOL)enabled;
- (void)setTextComposerClient:(id)client;
- (void)syncToKeyboardState:(id)state;
@end

@implementation TUISmartActionGenerator

- (TUISmartActionGenerator)init
{
  *(&self->super.isa + OBJC_IVAR___TUISmartActionGenerator_enabled) = 0;
  *(&self->super.isa + OBJC_IVAR___TUISmartActionGenerator_textComposerClient) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SmartActionGenerator();
  return [(TUISmartActionGenerator *)&v3 init];
}

- (void)setEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = enabled;
}

- (BOOL)enabled
{
  v3 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (_TtC11TextInputUI28TUITextComposerClientWrapper)textComposerClient
{
  v3 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTextComposerClient:(id)client
{
  v5 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = client;
  clientCopy = client;
}

- (void)generateCandidatesWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_18FFEAD38(contextCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)syncToKeyboardState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  SmartActionGenerator.sync(to:)(stateCopy);
}

@end