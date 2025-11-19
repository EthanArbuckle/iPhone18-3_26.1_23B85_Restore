@interface UIApplicationDisplayConfigurationResolver
@end

@implementation UIApplicationDisplayConfigurationResolver

void __60___UIApplicationDisplayConfigurationResolver_sharedResolver__block_invoke()
{
  v0 = [[_UIApplicationDisplayConfigurationResolver alloc] _init];
  v1 = _MergedGlobals_1237;
  _MergedGlobals_1237 = v0;
}

void __74___UIApplicationDisplayConfigurationResolver_displayConfigurationChanged___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 _screen];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = [v8 _contextId];
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
    [v6 addObject:v7];
  }
}

@end