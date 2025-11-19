@interface FlowPluginInfo
- (NSString)description;
- (_TtC14SiriKitRuntime14FlowPluginInfo)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FlowPluginInfo

- (NSString)description
{
  v2 = self;
  v3 = FlowPluginInfo.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  FlowPluginInfo.encode(with:)(v4);
}

- (_TtC14SiriKitRuntime14FlowPluginInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end