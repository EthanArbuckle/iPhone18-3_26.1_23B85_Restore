@interface TCCDPlatformIOSFamily
- (BOOL)isChinaSKUDevice;
- (BOOL)isNonAppBundleIdentifierValid:(id)a3;
- (BOOL)removalOfAppBundleIdentifierRequiresPruning:(id)a3;
- (id)prefixOfBundleIdentifiersToResetAfterResetOfAppBundleIdentifier:(id)a3;
- (void)prepareForAbort;
@end

@implementation TCCDPlatformIOSFamily

- (BOOL)isChinaSKUDevice
{
  if (qword_1000C1148 != -1)
  {
    sub_100034C9C();
  }

  return byte_1000C1140;
}

- (void)prepareForAbort
{
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 syncController];

  if (v3)
  {
    v5 = +[TCCDPlatform currentPlatform];
    v4 = [v5 syncController];
    [v4 willShutdown];
  }
}

- (BOOL)isNonAppBundleIdentifierValid:(id)a3
{
  v4 = a3;
  v5 = [(TCCDPlatform *)self server];
  if ([v5 allowsInternalSecurityPolicies])
  {
    v6 = [v4 hasPrefix:@"com.appleinternal.health.Lime."];

    if (v6)
    {
      v7 = @"com.appleinternal.health.Lime";
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (![v4 hasPrefix:@"com.apple.Research.study."])
  {
    v11 = 0;
    goto LABEL_12;
  }

  v7 = @"com.apple.Research";
LABEL_7:
  v8 = [LSApplicationProxy applicationProxyForIdentifier:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 appState];
    v11 = [v10 isInstalled];
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  return v11;
}

- (BOOL)removalOfAppBundleIdentifierRequiresPruning:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.Research"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TCCDPlatform *)self server];
    if ([v6 allowsInternalSecurityPolicies])
    {
      v5 = [v4 isEqualToString:@"com.appleinternal.health.Lime"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)prefixOfBundleIdentifiersToResetAfterResetOfAppBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.Research"])
  {
    goto LABEL_2;
  }

  v6 = [(TCCDPlatform *)self server];
  if (([v6 allowsInternalSecurityPolicies] & 1) == 0)
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v7 = [v4 isEqualToString:@"com.appleinternal.health.Lime"];

  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_2:
  v5 = @"com.apple.Research.study.";
LABEL_8:

  return v5;
}

@end