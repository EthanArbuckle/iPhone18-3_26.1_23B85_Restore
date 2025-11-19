@interface NSURLSessionConfiguration(ICAdditions)
+ (id)ic_defaultSessionConfiguration;
@end

@implementation NSURLSessionConfiguration(ICAdditions)

+ (id)ic_defaultSessionConfiguration
{
  v0 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v0 setHTTPShouldUsePipelining:1];
  [v0 set_tlsTrustPinningPolicyName:*MEMORY[0x1E697B2A8]];
  v1 = +[ICDeviceInfo currentDeviceInfo];
  if ([v1 isInternalBuild])
  {
    v2 = +[ICDefaults standardDefaults];
    [v0 set_alwaysPerformDefaultTrustEvaluation:{objc_msgSend(v2, "ignoreExtendedCertificateValidation") ^ 1}];
  }

  else
  {
    [v0 set_alwaysPerformDefaultTrustEvaluation:1];
  }

  v3 = +[ICDeviceInfo currentDeviceInfo];
  v4 = [v3 isWatch];

  if (v4)
  {
    v5 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    v6 = [v5 bundleIdentifier];

    if ([v6 isEqualToString:@"com.apple.SessionTrackerApp"])
    {
      v7 = ICBundleIdentifierForSystemApplicationType(0);
      [v0 set_sourceApplicationBundleIdentifier:v7];
    }
  }

  return v0;
}

@end