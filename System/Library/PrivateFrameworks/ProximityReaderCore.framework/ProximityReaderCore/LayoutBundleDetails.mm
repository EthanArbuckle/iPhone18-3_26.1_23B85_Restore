@interface LayoutBundleDetails
- (_TtC19ProximityReaderCore19LayoutBundleDetails)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LayoutBundleDetails

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  LayoutBundleDetails.encode(with:)(coderCopy);
}

- (_TtC19ProximityReaderCore19LayoutBundleDetails)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end