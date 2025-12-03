@interface WFNetworkRetryManager
- (BOOL)defaultAPIVersionIsFailingForSettings:(id)settings failTracker:(id)tracker;
- (NSArray)apiVersions;
- (NSArray)failingAPIVersions;
- (WFNetworkRetryManager)init;
- (double)lastFailTimeInSecondsForAPIVersion:(id)version;
- (id)apiVersionForSettings:(id)settings;
- (int)consecutiveFailsForAPIVersion:(id)version;
- (void)requestFailureForAPIVersion:(id)version error:(id)error;
- (void)requestSuccessForAPIVersion:(id)version;
@end

@implementation WFNetworkRetryManager

- (WFNetworkRetryManager)init
{
  v8.receiver = self;
  v8.super_class = WFNetworkRetryManager;
  v2 = [(WFNetworkRetryManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    failTrackerDict = v2->_failTrackerDict;
    v2->_failTrackerDict = v3;

    v5 = objc_opt_new();
    failingAPIVersionsSet = v2->_failingAPIVersionsSet;
    v2->_failingAPIVersionsSet = v5;
  }

  return v2;
}

- (id)apiVersionForSettings:(id)settings
{
  settingsCopy = settings;
  failTrackerDict = [(WFNetworkRetryManager *)self failTrackerDict];
  apiVersion = [settingsCopy apiVersion];
  v7 = [failTrackerDict objectForKeyedSubscript:apiVersion];

  if ([(WFNetworkRetryManager *)self defaultAPIVersionIsFailingForSettings:settingsCopy failTracker:v7])
  {
    failingAPIVersionsSet = [(WFNetworkRetryManager *)self failingAPIVersionsSet];
    apiVersion2 = [settingsCopy apiVersion];
    v10 = [failingAPIVersionsSet containsObject:apiVersion2];

    if ((v10 & 1) == 0)
    {
      apiVersion3 = [settingsCopy apiVersion];

      if (apiVersion3)
      {
        failingAPIVersionsSet2 = [(WFNetworkRetryManager *)self failingAPIVersionsSet];
        apiVersion4 = [settingsCopy apiVersion];
        [failingAPIVersionsSet2 addObject:apiVersion4];
      }
    }

    apiVersionFallback = [settingsCopy apiVersionFallback];
  }

  else
  {
    apiVersion5 = [settingsCopy apiVersion];

    if (apiVersion5)
    {
      failingAPIVersionsSet3 = [(WFNetworkRetryManager *)self failingAPIVersionsSet];
      apiVersion6 = [settingsCopy apiVersion];
      [failingAPIVersionsSet3 removeObject:apiVersion6];
    }

    apiVersionFallback = [settingsCopy apiVersion];
  }

  v18 = apiVersionFallback;

  return v18;
}

- (void)requestSuccessForAPIVersion:(id)version
{
  if (version)
  {
    versionCopy = version;
    failTrackerDict = [(WFNetworkRetryManager *)self failTrackerDict];
    [failTrackerDict setObject:0 forKeyedSubscript:versionCopy];
  }
}

- (void)requestFailureForAPIVersion:(id)version error:(id)error
{
  versionCopy = version;
  if (versionCopy)
  {
    v9 = versionCopy;
    failTrackerDict = [(WFNetworkRetryManager *)self failTrackerDict];
    v7 = [failTrackerDict objectForKeyedSubscript:v9];

    if (!v7)
    {
      v7 = objc_opt_new();
      failTrackerDict2 = [(WFNetworkRetryManager *)self failTrackerDict];
      [failTrackerDict2 setObject:v7 forKeyedSubscript:v9];
    }

    [v7 incrementFailCount];

    versionCopy = v9;
  }
}

- (BOOL)defaultAPIVersionIsFailingForSettings:(id)settings failTracker:(id)tracker
{
  settingsCopy = settings;
  trackerCopy = tracker;
  v7 = trackerCopy;
  if (trackerCopy && (v8 = [trackerCopy numConsecutiveFails], objc_msgSend(settingsCopy, "networkFailedAttemptsLimit") < v8))
  {
    v9 = [v7 lastFailTimeExpiredForSettings:settingsCopy] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (NSArray)apiVersions
{
  failTrackerDict = [(WFNetworkRetryManager *)self failTrackerDict];
  allKeys = [failTrackerDict allKeys];

  return allKeys;
}

- (NSArray)failingAPIVersions
{
  failingAPIVersionsSet = [(WFNetworkRetryManager *)self failingAPIVersionsSet];
  allObjects = [failingAPIVersionsSet allObjects];

  return allObjects;
}

- (int)consecutiveFailsForAPIVersion:(id)version
{
  versionCopy = version;
  failTrackerDict = [(WFNetworkRetryManager *)self failTrackerDict];
  v6 = [failTrackerDict objectForKeyedSubscript:versionCopy];

  LODWORD(versionCopy) = [v6 numConsecutiveFails];
  return versionCopy;
}

- (double)lastFailTimeInSecondsForAPIVersion:(id)version
{
  versionCopy = version;
  failTrackerDict = [(WFNetworkRetryManager *)self failTrackerDict];
  v6 = [failTrackerDict objectForKeyedSubscript:versionCopy];

  [v6 lastFailTimeInSeconds];
  v8 = v7;

  return v8;
}

@end