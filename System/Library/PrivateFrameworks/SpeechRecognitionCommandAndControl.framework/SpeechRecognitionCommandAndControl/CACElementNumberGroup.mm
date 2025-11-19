@interface CACElementNumberGroup
- (_TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup)init;
- (_TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup)initWithElements:(id)a3 volatile:(BOOL)a4;
@end

@implementation CACElementNumberGroup

- (_TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup)initWithElements:(id)a3 volatile:(BOOL)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CACNumberedPresentationElement_pMd);
  *(&self->super.isa + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_elements) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup_volatile) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CACElementNumberGroup();
  return [(CACElementNumberGroup *)&v7 init];
}

- (_TtC34SpeechRecognitionCommandAndControl21CACElementNumberGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end