@interface FlowPluginInfo
- (NSString)description;
- (_TtC14SiriKitRuntime14FlowPluginInfo)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FlowPluginInfo

- (NSString)description
{
  selfCopy = self;
  v3 = FlowPluginInfo.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  FlowPluginInfo.encode(with:)(coderCopy);
}

- (_TtC14SiriKitRuntime14FlowPluginInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end