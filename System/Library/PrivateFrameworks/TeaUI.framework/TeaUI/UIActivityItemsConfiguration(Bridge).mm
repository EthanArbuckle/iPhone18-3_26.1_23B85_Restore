@interface UIActivityItemsConfiguration(Bridge)
- (uint64_t)initTSWithActivityItemSources:()Bridge;
- (void)ts_setExcludedActivityTypes:()Bridge;
@end

@implementation UIActivityItemsConfiguration(Bridge)

- (uint64_t)initTSWithActivityItemSources:()Bridge
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  return [a1 _initWithActivityItemSources:a3];
}

- (void)ts_setExcludedActivityTypes:()Bridge
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [a1 _setExcludedActivityTypes:v4];
  }
}

@end