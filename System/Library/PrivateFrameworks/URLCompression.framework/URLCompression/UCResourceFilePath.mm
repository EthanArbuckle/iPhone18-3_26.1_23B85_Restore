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
  _bundle = [self _bundle];
  v3 = [_bundle pathForResource:@"h" ofType:@"data"];

  return v3;
}

+ (id)segmentedPathAndQueryFilePathForSegmentedURLCoderVersion0
{
  _bundle = [self _bundle];
  v3 = [_bundle pathForResource:@"spq" ofType:@"data"];

  return v3;
}

+ (id)combinedPathAndQueryFilePathForSegmentedURLCoderVersion0
{
  _bundle = [self _bundle];
  v3 = [_bundle pathForResource:@"cpq" ofType:@"data"];

  return v3;
}

@end