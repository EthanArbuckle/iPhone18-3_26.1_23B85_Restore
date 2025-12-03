@interface ExecutionInputInfo
- (NSString)description;
- (_TtC14SiriKitRuntime18ExecutionInputInfo)init;
- (_TtC14SiriKitRuntime18ExecutionInputInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ExecutionInputInfo

- (NSString)description
{
  selfCopy = self;
  v3 = ExecutionInputInfo.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (_TtC14SiriKitRuntime18ExecutionInputInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized ExecutionInputInfo.init(coder:)(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ExecutionInputInfo.encode(with:)(coderCopy);
}

- (_TtC14SiriKitRuntime18ExecutionInputInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end