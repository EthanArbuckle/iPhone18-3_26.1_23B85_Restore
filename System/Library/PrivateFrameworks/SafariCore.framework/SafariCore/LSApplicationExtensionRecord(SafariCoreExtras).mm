@interface LSApplicationExtensionRecord(SafariCoreExtras)
- (id)safari_initWithExtensionApplicationIdentifier:()SafariCoreExtras error:;
@end

@implementation LSApplicationExtensionRecord(SafariCoreExtras)

- (id)safari_initWithExtensionApplicationIdentifier:()SafariCoreExtras error:
{
  v6 = a3;
  v7 = [v6 rangeOfString:@"."];
  v9 = [v6 substringFromIndex:v7 + v8];
  v10 = [objc_alloc(objc_opt_class()) initWithBundleIdentifier:v9 error:a4];
  v11 = [v10 applicationIdentifier];
  v12 = [v11 isEqualToString:v6];

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end