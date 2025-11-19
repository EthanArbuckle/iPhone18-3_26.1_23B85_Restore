@interface ConversationalContextContainer
- (_TtC14SiriKitRuntime30ConversationalContextContainer)init;
- (_TtC14SiriKitRuntime30ConversationalContextContainer)initWithSerializedBackingStore:(id)a3;
- (id)serializedBackingStore;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ConversationalContextContainer

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationalContextContainer.encode(with:)(v4);
}

- (_TtC14SiriKitRuntime30ConversationalContextContainer)initWithSerializedBackingStore:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return ConversationalContextContainer.init(serializedBackingStore:)(v4);
}

- (id)serializedBackingStore
{
  v2 = self;
  ConversationalContextContainer.serializedBackingStore()(v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);

  return v3;
}

- (_TtC14SiriKitRuntime30ConversationalContextContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end