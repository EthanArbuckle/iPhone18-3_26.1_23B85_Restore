@interface SESnapshot
- (_TtC9SEService10SESnapshot)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESnapshot

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SESnapshot.encode(with:)(coderCopy);
}

- (_TtC9SEService10SESnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end