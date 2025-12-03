@interface KTRepairOptions
- (_TtC12Transparency15KTRepairOptions)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTRepairOptions

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  KTRepairOptions.encode(with:)(coderCopy);
}

- (_TtC12Transparency15KTRepairOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end