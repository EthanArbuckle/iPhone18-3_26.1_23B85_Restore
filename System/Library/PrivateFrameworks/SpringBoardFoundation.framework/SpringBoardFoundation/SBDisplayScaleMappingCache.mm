@interface SBDisplayScaleMappingCache
@end

@implementation SBDisplayScaleMappingCache

uint64_t __45___SBDisplayScaleMappingCache_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___result;
  sharedInstance___result = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end