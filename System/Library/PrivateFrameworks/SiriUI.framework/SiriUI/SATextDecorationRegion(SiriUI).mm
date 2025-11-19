@interface SATextDecorationRegion(SiriUI)
- (uint64_t)siriui_range;
@end

@implementation SATextDecorationRegion(SiriUI)

- (uint64_t)siriui_range
{
  v2 = [a1 start];
  v3 = [v2 unsignedIntegerValue];
  v4 = [a1 length];
  [v4 unsignedIntegerValue];

  return v3;
}

@end