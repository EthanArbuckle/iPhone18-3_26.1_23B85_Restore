@interface SATextDecorationRegion(SiriUIFoundationAdditions)
- (uint64_t)sruif_range;
@end

@implementation SATextDecorationRegion(SiriUIFoundationAdditions)

- (uint64_t)sruif_range
{
  start = [self start];
  unsignedIntegerValue = [start unsignedIntegerValue];
  v4 = [self length];
  [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end