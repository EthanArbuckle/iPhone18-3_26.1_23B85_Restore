@interface ServerBoundContextUpdateContainer
- (_TtC14SiriKitRuntime33ServerBoundContextUpdateContainer)init;
- (_TtC14SiriKitRuntime33ServerBoundContextUpdateContainer)initWithSerializedBackingStore:(id)a3;
- (id)serializedBackingStore;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ServerBoundContextUpdateContainer

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate);
  v7 = a3;
  v5 = self;
  v6 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7A620);
  [v7 encodeObject:v4 forKey:v6];
}

- (_TtC14SiriKitRuntime33ServerBoundContextUpdateContainer)initWithSerializedBackingStore:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return ServerBoundContextUpdateContainer.init(serializedBackingStore:)(v4);
}

- (id)serializedBackingStore
{
  v2 = self;
  ServerBoundContextUpdateContainer.serializedBackingStore()(v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);

  return v3;
}

- (_TtC14SiriKitRuntime33ServerBoundContextUpdateContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end