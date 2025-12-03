@interface ApplicationInfoInternal
- (_TtC9SEService23ApplicationInfoInternal)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ApplicationInfoInternal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ApplicationInfoInternal.encode(with:)(coderCopy);
}

- (_TtC9SEService23ApplicationInfoInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end