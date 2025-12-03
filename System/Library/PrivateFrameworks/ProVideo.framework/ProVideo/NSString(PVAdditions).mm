@interface NSString(PVAdditions)
- (uint64_t)pv_isRightToLeft;
@end

@implementation NSString(PVAdditions)

- (uint64_t)pv_isRightToLeft
{
  v1 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self];
  pv_isRightToLeft = [v1 pv_isRightToLeft];

  return pv_isRightToLeft;
}

@end