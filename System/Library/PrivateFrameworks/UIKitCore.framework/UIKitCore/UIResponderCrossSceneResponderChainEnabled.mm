@interface UIResponderCrossSceneResponderChainEnabled
@end

@implementation UIResponderCrossSceneResponderChainEnabled

void ___UIResponderCrossSceneResponderChainEnabled_block_invoke()
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.goodnotesapp.x", 0}];
  v0 = _UIMainBundleIdentifier();
  if ([v2 containsObject:v0])
  {
    v1 = dyld_program_sdk_at_least();
  }

  else
  {
    v1 = 1;
  }

  byte_1ED4A0031 = _os_feature_enabled_impl() & v1;
}

@end