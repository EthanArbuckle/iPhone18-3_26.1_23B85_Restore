@interface ExecutionInputInfo
- (NSString)description;
- (_TtC14SiriKitRuntime18ExecutionInputInfo)init;
- (_TtC14SiriKitRuntime18ExecutionInputInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ExecutionInputInfo

- (NSString)description
{
  v2 = self;
  v3 = ExecutionInputInfo.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (_TtC14SiriKitRuntime18ExecutionInputInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized ExecutionInputInfo.init(coder:)(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ExecutionInputInfo.encode(with:)(v4);
}

- (_TtC14SiriKitRuntime18ExecutionInputInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end