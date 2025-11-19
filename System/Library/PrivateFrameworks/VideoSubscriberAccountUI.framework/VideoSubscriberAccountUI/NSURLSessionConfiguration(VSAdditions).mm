@interface NSURLSessionConfiguration(VSAdditions)
+ (id)vs_defaultSessionConfigurationForSourceAppWithAuditToken:()VSAdditions;
@end

@implementation NSURLSessionConfiguration(VSAdditions)

+ (id)vs_defaultSessionConfigurationForSourceAppWithAuditToken:()VSAdditions
{
  v4 = a3;
  v5 = [a1 defaultSessionConfiguration];
  v6 = [v5 copy];

  if (v4)
  {
    v7 = v4;
    v8 = [v7 bundleIdentifier];
    v9 = [v7 tokenBytes];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  [v6 set_sourceApplicationBundleIdentifier:v8];
  [v6 set_sourceApplicationAuditTokenData:v9];

  return v6;
}

@end