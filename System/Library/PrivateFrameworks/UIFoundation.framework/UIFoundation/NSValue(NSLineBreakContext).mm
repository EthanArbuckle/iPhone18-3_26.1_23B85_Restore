@interface NSValue(NSLineBreakContext)
- (uint64_t)UIF_lineBreakContextValue;
@end

@implementation NSValue(NSLineBreakContext)

- (uint64_t)UIF_lineBreakContextValue
{
  *x8_0 = 0;
  x8_0[1] = 0;
  x8_0[2] = 0;
  return [self getValue:x8_0];
}

@end