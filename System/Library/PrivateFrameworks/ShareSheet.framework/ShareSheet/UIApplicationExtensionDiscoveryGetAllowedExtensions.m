@interface UIApplicationExtensionDiscoveryGetAllowedExtensions
@end

@implementation UIApplicationExtensionDiscoveryGetAllowedExtensions

uint64_t ___UIApplicationExtensionDiscoveryGetAllowedExtensions_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

@end