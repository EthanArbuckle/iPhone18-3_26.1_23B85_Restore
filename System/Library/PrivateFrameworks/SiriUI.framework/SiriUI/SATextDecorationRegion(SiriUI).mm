@interface SATextDecorationRegion(SiriUI)
- (uint64_t)siriui_range;
@end

@implementation SATextDecorationRegion(SiriUI)

- (uint64_t)siriui_range
{
  start = [self start];
  unsignedIntegerValue = [start unsignedIntegerValue];
  v4 = [self length];
  [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end