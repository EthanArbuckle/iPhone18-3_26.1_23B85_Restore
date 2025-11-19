@interface SSKDisplayProfileRegistry
- (SSKDisplayProfileRegistry)init;
- (SSKDisplayProfileRegistry)initWithDisplayTransformerRegistry:(id)a3;
- (void)activate;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)evaluateProfilesForConnectedDisplays;
- (void)registerDisplayProfile:(id)a3;
@end

@implementation SSKDisplayProfileRegistry

- (SSKDisplayProfileRegistry)initWithDisplayTransformerRegistry:(id)a3
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

- (void)registerDisplayProfile:(id)a3
{
  v4 = a3;
  v5 = self;
  SSKDisplayProfileRegistry.register(_:)(v4);
}

- (void)activate
{
  sub_265FEC250();
  v4[2] = self;
  v3 = self;
  sub_265FE2014(sub_265FE7F68, v4);
}

- (void)evaluateProfilesForConnectedDisplays
{
  v3 = *(&self->super.isa + OBJC_IVAR___SSKDisplayProfileRegistry_state);
  swift_getKeyPath();
  sub_265FE7AF8(&qword_2800556A0, type metadata accessor for RegistryState);
  v4 = self;

  sub_265FEBF30();
}

- (void)appendDescriptionToFormatter:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
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