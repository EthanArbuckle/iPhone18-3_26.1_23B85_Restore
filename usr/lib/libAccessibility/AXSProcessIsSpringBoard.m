@interface AXSProcessIsSpringBoard
@end

@implementation AXSProcessIsSpringBoard

uint64_t ___AXSProcessIsSpringBoard_block_invoke()
{
  if (cachedAppID_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
  }

  result = [cachedAppID_CachedAppID isEqualToString:@"com.apple.springboard"];
  if (result)
  {
    _AXSProcessIsSpringBoard__AXSProcessIsSpringBoard = 1;
  }

  return result;
}

@end