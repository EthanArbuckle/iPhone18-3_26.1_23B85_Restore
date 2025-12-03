@interface SUPolicyScanSoftwareUpdate
- (BOOL)allowSameVersion;
- (BOOL)isSplatOnlyScan;
- (BOOL)restrictToFull;
- (BOOL)restrictToIncremental;
@end

@implementation SUPolicyScanSoftwareUpdate

- (BOOL)restrictToIncremental
{
  scanOptions = [(SUPolicyScan *)self scanOptions];
  if ([scanOptions containsType:1])
  {
    scanOptions2 = [(SUPolicyScan *)self scanOptions];
    types = [scanOptions2 types];
    v6 = [types count] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)restrictToFull
{
  v3 = +[SUPreferences sharedInstance];
  if ([v3 forceFullReplacement])
  {
    v4 = 1;
  }

  else
  {
    scanOptions = [(SUPolicyScan *)self scanOptions];
    if ([scanOptions containsType:2])
    {
      scanOptions2 = [(SUPolicyScan *)self scanOptions];
      types = [scanOptions2 types];
      v4 = [types count] == 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)isSplatOnlyScan
{
  scanOptions = [(SUPolicyScan *)self scanOptions];
  if ([scanOptions containsType:4])
  {
    scanOptions2 = [(SUPolicyScan *)self scanOptions];
    types = [scanOptions2 types];
    v6 = [types count] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)allowSameVersion
{
  v2 = +[SUPreferences sharedInstance];
  allowSameBuildUpdates = [v2 allowSameBuildUpdates];

  return allowSameBuildUpdates;
}

@end