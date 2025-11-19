@interface UIToolbar
@end

@implementation UIToolbar

uint64_t __38__UIToolbar_Bridge__ts_barButtonViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ts_barButtonItemView];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end