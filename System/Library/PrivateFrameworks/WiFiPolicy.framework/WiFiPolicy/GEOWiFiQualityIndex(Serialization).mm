@interface GEOWiFiQualityIndex(Serialization)
- (uint64_t)typeDescription;
@end

@implementation GEOWiFiQualityIndex(Serialization)

- (uint64_t)typeDescription
{
  type = [self type];

  return [self typeAsString:type];
}

@end