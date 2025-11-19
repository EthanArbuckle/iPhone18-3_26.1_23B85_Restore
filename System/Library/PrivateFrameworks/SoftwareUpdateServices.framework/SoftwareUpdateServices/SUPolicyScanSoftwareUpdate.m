@interface SUPolicyScanSoftwareUpdate
- (BOOL)allowSameVersion;
- (BOOL)isSplatOnlyScan;
- (BOOL)restrictToFull;
- (BOOL)restrictToIncremental;
@end

@implementation SUPolicyScanSoftwareUpdate

- (BOOL)restrictToIncremental
{
  v3 = [(SUPolicyScan *)self scanOptions];
  if ([v3 containsType:1])
  {
    v4 = [(SUPolicyScan *)self scanOptions];
    v5 = [v4 types];
    v6 = [v5 count] == 1;
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
    v5 = [(SUPolicyScan *)self scanOptions];
    if ([v5 containsType:2])
    {
      v6 = [(SUPolicyScan *)self scanOptions];
      v7 = [v6 types];
      v4 = [v7 count] == 1;
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
  v3 = [(SUPolicyScan *)self scanOptions];
  if ([v3 containsType:4])
  {
    v4 = [(SUPolicyScan *)self scanOptions];
    v5 = [v4 types];
    v6 = [v5 count] == 1;
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
  v3 = [v2 allowSameBuildUpdates];

  return v3;
}

@end