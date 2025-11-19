@interface SBHPerformanceFlagsHomeScreenDefaults
@end

@implementation SBHPerformanceFlagsHomeScreenDefaults

uint64_t ___SBHPerformanceFlagsHomeScreenDefaults_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4030]);
  v1 = _SBHPerformanceFlagsHomeScreenDefaults_homeScreenDefaults;
  _SBHPerformanceFlagsHomeScreenDefaults_homeScreenDefaults = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end