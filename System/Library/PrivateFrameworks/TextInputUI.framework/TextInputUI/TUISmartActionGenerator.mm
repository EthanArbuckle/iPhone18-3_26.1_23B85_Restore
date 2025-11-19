@interface TUISmartActionGenerator
- (BOOL)enabled;
- (TUISmartActionGenerator)init;
- (_TtC11TextInputUI28TUITextComposerClientWrapper)textComposerClient;
- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)setTextComposerClient:(id)a3;
- (void)syncToKeyboardState:(id)a3;
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

- (void)setEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (void)setTextComposerClient:(id)a3
{
  v5 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_18FFEAD38(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)syncToKeyboardState:(id)a3
{
  v4 = a3;
  v5 = self;
  SmartActionGenerator.sync(to:)(v4);
}

@end