@interface ServerPromptData
- (_TtC14SiriKitRuntime16ServerPromptData)init;
- (_TtC14SiriKitRuntime16ServerPromptData)initWithSerializedBackingStore:(id)a3;
- (id)serializedBackingStore;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ServerPromptData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ServerPromptData.encode(with:)(v4);
}

- (_TtC14SiriKitRuntime16ServerPromptData)initWithSerializedBackingStore:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return ServerPromptData.init(serializedBackingStore:)(v4);
}

- (id)serializedBackingStore
{
  v2 = self;
  ServerPromptData.serializedBackingStore()(v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);

  return v3;
}

- (_TtC14SiriKitRuntime16ServerPromptData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end