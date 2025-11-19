@interface TaggedSSML
- (NSArray)ssmlSnippets;
- (_TtC12TextToSpeech10TaggedSSML)init;
- (void)setSsmlSnippets:(id)a3;
@end

@implementation TaggedSSML

- (NSArray)ssmlSnippets
{
  v3 = OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for VoiceTaggedSSMLSnippet();

  v5 = sub_1A957C4B8();

  return v5;
}

- (void)setSsmlSnippets:(id)a3
{
  type metadata accessor for VoiceTaggedSSMLSnippet();
  v4 = sub_1A957C4C8();
  v5 = OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC12TextToSpeech10TaggedSSML)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end