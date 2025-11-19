@interface UILiveSceneResizeEnabled
@end

@implementation UILiveSceneResizeEnabled

uint64_t ___UILiveSceneResizeEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1ED49E114 = result;
  return result;
}

@end