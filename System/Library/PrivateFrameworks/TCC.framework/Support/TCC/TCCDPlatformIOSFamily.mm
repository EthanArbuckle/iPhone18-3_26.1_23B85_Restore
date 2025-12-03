@interface TCCDPlatformIOSFamily
- (BOOL)isChinaSKUDevice;
- (BOOL)isNonAppBundleIdentifierValid:(id)valid;
- (BOOL)removalOfAppBundleIdentifierRequiresPruning:(id)pruning;
- (id)prefixOfBundleIdentifiersToResetAfterResetOfAppBundleIdentifier:(id)identifier;
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
  syncController = [v2 syncController];

  if (syncController)
  {
    v5 = +[TCCDPlatform currentPlatform];
    syncController2 = [v5 syncController];
    [syncController2 willShutdown];
  }
}

- (BOOL)isNonAppBundleIdentifierValid:(id)valid
{
  validCopy = valid;
  server = [(TCCDPlatform *)self server];
  if ([server allowsInternalSecurityPolicies])
  {
    v6 = [validCopy hasPrefix:@"com.appleinternal.health.Lime."];

    if (v6)
    {
      v7 = @"com.appleinternal.health.Lime";
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (![validCopy hasPrefix:@"com.apple.Research.study."])
  {
    isInstalled = 0;
    goto LABEL_12;
  }

  v7 = @"com.apple.Research";
LABEL_7:
  v8 = [LSApplicationProxy applicationProxyForIdentifier:v7];
  v9 = v8;
  if (v8)
  {
    appState = [v8 appState];
    isInstalled = [appState isInstalled];
  }

  else
  {
    isInstalled = 0;
  }

LABEL_12:
  return isInstalled;
}

- (BOOL)removalOfAppBundleIdentifierRequiresPruning:(id)pruning
{
  pruningCopy = pruning;
  if ([pruningCopy isEqualToString:@"com.apple.Research"])
  {
    v5 = 1;
  }

  else
  {
    server = [(TCCDPlatform *)self server];
    if ([server allowsInternalSecurityPolicies])
    {
      v5 = [pruningCopy isEqualToString:@"com.appleinternal.health.Lime"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)prefixOfBundleIdentifiersToResetAfterResetOfAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.Research"])
  {
    goto LABEL_2;
  }

  server = [(TCCDPlatform *)self server];
  if (([server allowsInternalSecurityPolicies] & 1) == 0)
  {

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v7 = [identifierCopy isEqualToString:@"com.appleinternal.health.Lime"];

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