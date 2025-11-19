@interface NSString(PVAdditions)
- (uint64_t)pv_isRightToLeft;
@end

@implementation NSString(PVAdditions)

- (uint64_t)pv_isRightToLeft
{
  v1 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a1];
  v2 = [v1 pv_isRightToLeft];

  return v2;
}

@end