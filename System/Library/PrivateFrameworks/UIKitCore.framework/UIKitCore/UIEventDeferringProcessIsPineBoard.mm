@interface UIEventDeferringProcessIsPineBoard
@end

@implementation UIEventDeferringProcessIsPineBoard

void ___UIEventDeferringProcessIsPineBoard_block_invoke(uint64_t a1)
{
  v3 = _UIMainBundleIdentifier();
  if ([v3 isEqualToString:*(a1 + 32)])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v3 isEqualToString:*(a1 + 40)];
  }

  byte_1ED49FF29 = v2;
}

@end