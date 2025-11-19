@interface SERMemoryInfo
- (_TtC9SEService13SERMemoryInfo)init;
- (_TtC9SEService13SERMemoryInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SERMemoryInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C7C6F460(v4);
}

- (_TtC9SEService13SERMemoryInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1C7C74448(v3);

  return v4;
}

- (_TtC9SEService13SERMemoryInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end