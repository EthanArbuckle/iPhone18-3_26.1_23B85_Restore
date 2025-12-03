@interface VASReadEntry
- (_TtC19ProximityReaderCore12VASReadEntry)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VASReadEntry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  VASReadEntry.encode(with:)(coderCopy);
}

- (_TtC19ProximityReaderCore12VASReadEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end