@interface NSFileManager
@end

@implementation NSFileManager

void __55__NSFileManager_HKSPFileManager___bundleCacheDirectory__block_invoke()
{
  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v0 = [v5 firstObject];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v0 stringByAppendingPathComponent:v2];
  v4 = _MergedGlobals_13;
  _MergedGlobals_13 = v3;
}

@end