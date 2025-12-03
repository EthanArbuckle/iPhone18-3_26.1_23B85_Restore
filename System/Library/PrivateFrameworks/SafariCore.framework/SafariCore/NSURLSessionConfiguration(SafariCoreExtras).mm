@interface NSURLSessionConfiguration(SafariCoreExtras)
+ (id)safari_ephemeralSessionConfiguration;
@end

@implementation NSURLSessionConfiguration(SafariCoreExtras)

+ (id)safari_ephemeralSessionConfiguration
{
  ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration set_loggingPrivacyLevel:3];

  return ephemeralSessionConfiguration;
}

@end