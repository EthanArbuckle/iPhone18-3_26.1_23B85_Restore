@interface TRIIntegrationTestingDefaultsOverrides
+ (BOOL)shouldUseIntegrationTestLogger;
@end

@implementation TRIIntegrationTestingDefaultsOverrides

+ (BOOL)shouldUseIntegrationTestLogger
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"com.apple.triald.use-integration-test-logger"];

  return v3;
}

@end