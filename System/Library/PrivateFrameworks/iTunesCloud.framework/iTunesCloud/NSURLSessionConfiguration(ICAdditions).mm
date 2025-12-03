@interface NSURLSessionConfiguration(ICAdditions)
+ (id)ic_defaultSessionConfiguration;
@end

@implementation NSURLSessionConfiguration(ICAdditions)

+ (id)ic_defaultSessionConfiguration
{
  defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [defaultSessionConfiguration setHTTPShouldUsePipelining:1];
  [defaultSessionConfiguration set_tlsTrustPinningPolicyName:*MEMORY[0x1E697B2A8]];
  v1 = +[ICDeviceInfo currentDeviceInfo];
  if ([v1 isInternalBuild])
  {
    v2 = +[ICDefaults standardDefaults];
    [defaultSessionConfiguration set_alwaysPerformDefaultTrustEvaluation:{objc_msgSend(v2, "ignoreExtendedCertificateValidation") ^ 1}];
  }

  else
  {
    [defaultSessionConfiguration set_alwaysPerformDefaultTrustEvaluation:1];
  }

  v3 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v3 isWatch];

  if (isWatch)
  {
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    bundleIdentifier = [bundleRecordForCurrentProcess bundleIdentifier];

    if ([bundleIdentifier isEqualToString:@"com.apple.SessionTrackerApp"])
    {
      v7 = ICBundleIdentifierForSystemApplicationType(0);
      [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:v7];
    }
  }

  return defaultSessionConfiguration;
}

@end