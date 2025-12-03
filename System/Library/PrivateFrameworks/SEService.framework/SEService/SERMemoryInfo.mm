@interface SERMemoryInfo
- (_TtC9SEService13SERMemoryInfo)init;
- (_TtC9SEService13SERMemoryInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SERMemoryInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C7C6F460(coderCopy);
}

- (_TtC9SEService13SERMemoryInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1C7C74448(coderCopy);

  return v4;
}

- (_TtC9SEService13SERMemoryInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end