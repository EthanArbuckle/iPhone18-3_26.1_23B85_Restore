@interface SEApplet
- (NSString)description;
- (_TtC9SEService8SEApplet)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SEApplet

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SEApplet.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
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