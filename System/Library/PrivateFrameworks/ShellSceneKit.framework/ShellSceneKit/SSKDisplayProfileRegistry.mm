@interface SSKDisplayProfileRegistry
- (SSKDisplayProfileRegistry)init;
- (SSKDisplayProfileRegistry)initWithDisplayTransformerRegistry:(id)registry;
- (void)activate;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)evaluateProfilesForConnectedDisplays;
- (void)registerDisplayProfile:(id)profile;
@end

@implementation SSKDisplayProfileRegistry

- (SSKDisplayProfileRegistry)initWithDisplayTransformerRegistry:(id)registry
{
  v4 = self + OBJC_IVAR___SSKDisplayProfileRegistry_registration;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 45) = 0;
  v5 = OBJC_IVAR___SSKDisplayProfileRegistry_state;
  v6 = type metadata accessor for RegistryState();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 2) = MEMORY[0x277D84F90];
  swift_unknownObjectRetain();
  sub_265FEBF70();
  *(&self->super.isa + v5) = v9;
  v12.receiver = self;
  v12.super_class = SSKDisplayProfileRegistry;
  v10 = [(SSKDisplayProfileRegistry *)&v12 init];
  swift_unknownObjectRelease();
  return v10;
}

- (void)registerDisplayProfile:(id)profile
{
  profileCopy = profile;
  selfCopy = self;
  SSKDisplayProfileRegistry.register(_:)(profileCopy);
}

- (void)activate
{
  sub_265FEC250();
  v4[2] = self;
  selfCopy = self;
  sub_265FE2014(sub_265FE7F68, v4);
}

- (void)evaluateProfilesForConnectedDisplays
{
  v3 = *(&self->super.isa + OBJC_IVAR___SSKDisplayProfileRegistry_state);
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
  selfCopy = self;

  sub_265FEBF30();
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SSKDisplayProfileRegistry.appendDescription(toFormatter:)();
  swift_unknownObjectRelease();
}

- (SSKDisplayProfileRegistry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end