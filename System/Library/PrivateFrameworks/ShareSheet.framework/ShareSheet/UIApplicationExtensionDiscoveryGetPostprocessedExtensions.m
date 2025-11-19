@interface UIApplicationExtensionDiscoveryGetPostprocessedExtensions
@end

@implementation UIApplicationExtensionDiscoveryGetPostprocessedExtensions

uint64_t ___UIApplicationExtensionDiscoveryGetPostprocessedExtensions_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _plugIn];
  v6 = [v4 _plugIn];

  v7 = [v5 timestamp];
  v8 = [v6 timestamp];
  v9 = [v7 compare:v8];

  return v9;
}

@end