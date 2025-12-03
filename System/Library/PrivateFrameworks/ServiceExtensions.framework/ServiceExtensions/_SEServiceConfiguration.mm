@interface _SEServiceConfiguration
- (NSString)serviceIdentifier;
- (_SEServiceConfiguration)init;
- (_SEServiceConfiguration)initWithServiceIdentifier:(id)identifier;
- (id)interruptionHandler;
- (void)setInterruptionHandler:(id)handler;
- (void)setServiceIdentifier:(id)identifier;
@end

@implementation _SEServiceConfiguration

- (NSString)serviceIdentifier
{
  v2 = *(self + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v3 = *(self + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);

  v4 = sub_2657501B8();

  return v4;
}

- (void)setServiceIdentifier:(id)identifier
{
  v4 = sub_2657501C8();
  v5 = (self + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  v6 = *(self + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (id)interruptionHandler
{
  v2 = *(self + OBJC_IVAR____SEServiceConfiguration_interruptionHandler + 8);
  v5[4] = *(self + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2657434D0;
  v5[3] = &block_descriptor;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setInterruptionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  v7 = *(self + OBJC_IVAR____SEServiceConfiguration_interruptionHandler + 8);
  *v6 = sub_265743DD8;
  v6[1] = v5;
}

- (_SEServiceConfiguration)initWithServiceIdentifier:(id)identifier
{
  v4 = sub_2657501C8();
  v5 = (self + OBJC_IVAR____SEServiceConfiguration_interruptionHandler);
  *v5 = nullsub_1;
  v5[1] = 0;
  v6 = (self + OBJC_IVAR____SEServiceConfiguration_serviceIdentifier);
  *v6 = v4;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for _SEServiceConfiguration();
  return [(_SEServiceConfiguration *)&v9 init];
}

- (_SEServiceConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end