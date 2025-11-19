@interface UIEventDeferringProcessIsCarousel
@end

@implementation UIEventDeferringProcessIsCarousel

void ___UIEventDeferringProcessIsCarousel_block_invoke(uint64_t a1)
{
  v2 = _UIMainBundleIdentifier();
  byte_1ED49FF2A = [v2 isEqualToString:*(a1 + 32)];
}

@end