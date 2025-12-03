@interface NSURLSessionConfiguration(VSAdditions)
+ (id)vs_defaultSessionConfigurationForSourceAppWithAuditToken:()VSAdditions;
@end

@implementation NSURLSessionConfiguration(VSAdditions)

+ (id)vs_defaultSessionConfigurationForSourceAppWithAuditToken:()VSAdditions
{
  v4 = a3;
  defaultSessionConfiguration = [self defaultSessionConfiguration];
  v6 = [defaultSessionConfiguration copy];

  if (v4)
  {
    v7 = v4;
    bundleIdentifier = [v7 bundleIdentifier];
    tokenBytes = [v7 tokenBytes];
  }

  else
  {
    tokenBytes = 0;
    bundleIdentifier = 0;
  }

  [v6 set_sourceApplicationBundleIdentifier:bundleIdentifier];
  [v6 set_sourceApplicationAuditTokenData:tokenBytes];

  return v6;
}

@end