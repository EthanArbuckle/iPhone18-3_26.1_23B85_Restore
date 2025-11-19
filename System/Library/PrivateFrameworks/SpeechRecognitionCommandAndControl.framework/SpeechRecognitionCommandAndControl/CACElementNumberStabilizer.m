@interface CACElementNumberStabilizer
+ (_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer)shared;
- (_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer)init;
- (int64_t)maxAdditionsToStabilize;
- (int64_t)maxDeletionsToStabilize;
- (void)setMaxAdditionsToStabilize:(int64_t)a3;
- (void)setMaxDeletionsToStabilize:(int64_t)a3;
- (void)stabilizeElements;
- (void)willBeginPresentingElements;
- (void)willPresentElementGroup:(id)a3;
@end

@implementation CACElementNumberStabilizer

- (int64_t)maxAdditionsToStabilize
{
  v3 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxAdditionsToStabilize;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMaxAdditionsToStabilize:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxAdditionsToStabilize;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)maxDeletionsToStabilize
{
  v3 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxDeletionsToStabilize;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMaxDeletionsToStabilize:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxDeletionsToStabilize;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

+ (_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static CACElementNumberStabilizer.shared;

  return v3;
}

- (void)willBeginPresentingElements
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xC0);
  v3 = self;
  v2(MEMORY[0x277D84F90]);
}

- (void)willPresentElementGroup:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xC8);
  v5 = a3;
  v6 = self;
  v7 = v4(v11);
  v9 = v8;
  v10 = v5;
  MEMORY[0x26D675E00]();
  if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7(v11, 0);
}

- (void)stabilizeElements
{
  v2 = self;
  CACElementNumberStabilizer.stabilizeElements()();
}

- (_TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer)init
{
  *(&self->super.isa + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxAdditionsToStabilize) = 3;
  *(&self->super.isa + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_maxDeletionsToStabilize) = 3;
  v2 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_previouslyPresentedElements) = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl26CACElementNumberStabilizer_elementGroupsToPresent) = v2;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CACElementNumberStabilizer();
  return [(CACElementNumberStabilizer *)&v4 init];
}

@end