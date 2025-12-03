@interface PNTripFetcher
+ (BOOL)supportsCollection:(id)collection;
@end

@implementation PNTripFetcher

+ (BOOL)supportsCollection:(id)collection
{
  swift_unknownObjectRetain();
  sub_1C75515CC();
  swift_unknownObjectRelease();
  v3 = static PNTripFetcher.supports(collection:)(v5);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3 & 1;
}

@end