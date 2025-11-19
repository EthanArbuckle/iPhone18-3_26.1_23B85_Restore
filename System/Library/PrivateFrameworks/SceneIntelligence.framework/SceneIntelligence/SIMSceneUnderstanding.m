@interface SIMSceneUnderstanding
+ (NSString)compiledModelPath;
@end

@implementation SIMSceneUnderstanding

+ (NSString)compiledModelPath
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSIMSceneUnderstandingNetworkName];
  v4 = [v2 pathForResource:v3 ofType:@"mlmodelc"];

  return v4;
}

@end