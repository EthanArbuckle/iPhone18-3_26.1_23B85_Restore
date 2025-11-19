@interface GEOWiFiQualityIndex(Serialization)
- (uint64_t)typeDescription;
@end

@implementation GEOWiFiQualityIndex(Serialization)

- (uint64_t)typeDescription
{
  v2 = [a1 type];

  return [a1 typeAsString:v2];
}

@end