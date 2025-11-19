@interface UCResourceFilePath
+ (id)_bundle;
+ (id)combinedPathAndQueryFilePathForSegmentedURLCoderVersion0;
+ (id)hostFilePathForSegmentedURLCoderVersion0;
+ (id)segmentedPathAndQueryFilePathForSegmentedURLCoderVersion0;
@end

@implementation UCResourceFilePath

+ (id)_bundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

+ (id)hostFilePathForSegmentedURLCoderVersion0
{
  v2 = [a1 _bundle];
  v3 = [v2 pathForResource:@"h" ofType:@"data"];

  return v3;
}

+ (id)segmentedPathAndQueryFilePathForSegmentedURLCoderVersion0
{
  v2 = [a1 _bundle];
  v3 = [v2 pathForResource:@"spq" ofType:@"data"];

  return v3;
}

+ (id)combinedPathAndQueryFilePathForSegmentedURLCoderVersion0
{
  v2 = [a1 _bundle];
  v3 = [v2 pathForResource:@"cpq" ofType:@"data"];

  return v3;
}

@end