@interface FlowTaskXPC
- (NSString)description;
- (_TtC14SiriKitRuntime11FlowTaskXPC)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FlowTaskXPC

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  FlowTaskXPC.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  v3 = FlowTaskXPC.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (_TtC14SiriKitRuntime11FlowTaskXPC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end