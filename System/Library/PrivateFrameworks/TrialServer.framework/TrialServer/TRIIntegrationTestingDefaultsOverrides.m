@interface TRIIntegrationTestingDefaultsOverrides
+ (BOOL)shouldUseIntegrationTestLogger;
@end

@implementation TRIIntegrationTestingDefaultsOverrides

+ (BOOL)shouldUseIntegrationTestLogger
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"com.apple.triald.use-integration-test-logger"];

  return v3;
}

@end