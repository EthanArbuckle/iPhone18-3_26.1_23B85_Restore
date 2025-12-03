@interface FMR1HapticPattern
- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithContentsOfURL:(id)l error:(id *)error;
- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation FMR1HapticPattern

- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithDictionary:(id)dictionary error:(id *)error
{
  type metadata accessor for CHHapticPatternKey(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return FMR1HapticPattern.init(dictionary:)();
}

- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithContentsOfURL:(id)l error:(id *)error
{
  type metadata accessor for URL();
  MEMORY[0x28223BE20]();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return FMR1HapticPattern.init(contentsOf:)(v5);
}

@end