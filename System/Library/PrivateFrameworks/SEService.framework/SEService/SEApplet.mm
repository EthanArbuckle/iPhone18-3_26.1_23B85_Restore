@interface SEApplet
- (NSString)description;
- (_TtC9SEService8SEApplet)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SEApplet

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SEApplet.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  SEApplet.description.getter();

  v3 = sub_1C7C7D2E4();

  return v3;
}

- (_TtC9SEService8SEApplet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end