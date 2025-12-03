@interface SeymourCatalogMediaTypeHelper
+ (id)guidedTypeStringFrom:(id)from;
- (SeymourCatalogMediaTypeHelper)init;
@end

@implementation SeymourCatalogMediaTypeHelper

+ (id)guidedTypeStringFrom:(id)from
{
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = specialized static WOCatalogMediaTypeHelper.guidedTypeString(from:)(v3);
  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x20F2E6C00](v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SeymourCatalogMediaTypeHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WOCatalogMediaTypeHelper();
  return [(SeymourCatalogMediaTypeHelper *)&v3 init];
}

@end