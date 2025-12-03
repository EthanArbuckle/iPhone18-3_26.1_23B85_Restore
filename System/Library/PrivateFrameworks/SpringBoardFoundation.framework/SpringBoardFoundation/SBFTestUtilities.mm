@interface SBFTestUtilities
+ (BOOL)isRunningXCTest;
@end

@implementation SBFTestUtilities

+ (BOOL)isRunningXCTest
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  environment = [processInfo environment];
  v4 = [environment objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  v5 = v4 != 0;

  return v5;
}

@end