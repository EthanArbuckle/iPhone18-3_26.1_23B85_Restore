@interface SpotlightQuery
- (_TtC22SearchIntrospectionKit14SpotlightQuery)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SpotlightQuery

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SpotlightQuery.encode(with:)(coderCopy);
}

- (_TtC22SearchIntrospectionKit14SpotlightQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end