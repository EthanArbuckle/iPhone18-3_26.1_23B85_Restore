@interface SATextDecorationRegion(SiriUIFoundationAdditions)
- (uint64_t)sruif_range;
@end

@implementation SATextDecorationRegion(SiriUIFoundationAdditions)

- (uint64_t)sruif_range
{
  v2 = [a1 start];
  v3 = [v2 unsignedIntegerValue];
  v4 = [a1 length];
  [v4 unsignedIntegerValue];

  return v3;
}

@end