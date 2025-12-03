@interface MANAutoAssetSetStatus
+ (id)_shortTermLockFilenameNormalizedComponent:(id)component;
+ (id)newCurrentLockUsageDetailed:(id)detailed;
+ (id)newCurrentLockUsageSummary:(id)summary;
+ (id)newSelectorsForStagingSummary:(id)summary;
+ (id)shortTermLockDirectory:(id)directory forAssetSetIdentifier:(id)identifier;
+ (id)shortTermLockFilename:(id)filename forAssetSetIdentifier:(id)identifier forSetAtomicInstance:(id)instance;
- (MANAutoAssetSetStatus)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withCurrentNotifications:(id)self5 withCurrentNeedPolicy:(id)self6 withSchedulerPolicy:(id)self7 withStagerPolicy:(id)self8 withDownloadUserInitiated:(BOOL)self9 withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withDownloadedCatalogCachedAssetSetID:(id)self5 withDownloadedCatalogDownloadedFromLive:(id)self6 withDownloadedCatalogLastTimeChecked:(id)self7 withDownloadedCatalogPostedDate:(id)self8 withCurrentNotifications:(id)self9 withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)domain0 withAvailableForUseError:(id)domain1 withNewerVersionError:(id)domain2;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withPreviouslyVendedLockedAtomicInstance:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withPreviouslyVendedLockedAtomicInstance:(id)self6 withDownloadedCatalogCachedAssetSetID:(id)self7 withDownloadedCatalogDownloadedFromLive:(id)self8 withDownloadedCatalogLastTimeChecked:(id)self9 withDownloadedCatalogPostedDate:(id)postedDate withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)domain0 withCurrentLockUsage:(id)domain1 withSelectorsForStaging:(id)domain2 withAvailableForUseError:(id)domain3 withNewerVersionError:(id)domain4;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withNewerAtomicInstanceDiscovered:(id)discovered withNewerDiscoveredAtomicEntries:(id)atomicEntries withLatestDownloadedAtomicInstance:(id)instance withLatestDowloadedAtomicInstanceEntries:(id)self0 withAllDownloadedAtomicInstanceEntries:(id)self1 withCurrentNotifications:(id)self2 withCurrentNeedPolicy:(id)self3 withSchedulerPolicy:(id)self4 withStagerPolicy:(id)self5 withDownloadUserInitiated:(BOOL)self6 withDownloadProgress:(id)self7 withDownloadedNetworkBytes:(int64_t)self8 withDownloadedFilesystemBytes:(int64_t)self9 withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetSetStatus

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withNewerAtomicInstanceDiscovered:(id)discovered withNewerDiscoveredAtomicEntries:(id)atomicEntries withLatestDownloadedAtomicInstance:(id)instance withLatestDowloadedAtomicInstanceEntries:(id)self0 withAllDownloadedAtomicInstanceEntries:(id)self1 withCurrentNotifications:(id)self2 withCurrentNeedPolicy:(id)self3 withSchedulerPolicy:(id)self4 withStagerPolicy:(id)self5 withDownloadUserInitiated:(BOOL)self6 withDownloadProgress:(id)self7 withDownloadedNetworkBytes:(int64_t)self8 withDownloadedFilesystemBytes:(int64_t)self9 withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError
{
  BYTE2(v24) = initiated;
  LOWORD(v24) = 0;
  return [MANAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:domain withConfiguredAssetEntries:identifier withAtomicInstancesDownloaded:entries withCatalogCachedAssetSetID:downloaded withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:discovered withLatestDownloadedAtomicInstance:atomicEntries withLatestDowloadedAtomicInstanceEntries:instance withDownloadedCatalogCachedAssetSetID:instanceEntries withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:notifications withSchedulerPolicy:policy withStagerPolicy:schedulerPolicy havingReceivedLookupResponse:stagerPolicy vendingAtomicInstanceForConfiguredEntries:v24 withDownloadUserInitiated:progress withDownloadProgress:bytes withDownloadedNetworkBytes:filesystemBytes withDownloadedFilesystemBytes:usage withCurrentLockUsage:staging withSelectorsForStaging:error withAvailableForUseError:versionError withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withCurrentNotifications:(id)self5 withCurrentNeedPolicy:(id)self6 withSchedulerPolicy:(id)self7 withStagerPolicy:(id)self8 withDownloadUserInitiated:(BOOL)self9 withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  entriesCopy2 = entries;
  downloadedCopy = downloaded;
  dCopy = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  stagingCopy = staging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v59.receiver = self;
  v59.super_class = MANAutoAssetSetStatus;
  v37 = [(MANAutoAssetSetStatus *)&v59 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_clientDomainName, domain);
    objc_storeStrong(&v38->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v38->_configuredAssetEntries, entriesCopy);
    objc_storeStrong(&v38->_atomicInstancesDownloaded, downloaded);
    objc_storeStrong(&v38->_catalogCachedAssetSetID, d);
    objc_storeStrong(&v38->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v38->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v38->_catalogPostedDate, date);
    objc_storeStrong(&v38->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v38->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v38->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v38->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    objc_storeStrong(&v38->_currentNotifications, notifications);
    objc_storeStrong(&v38->_currentNeedPolicy, policy);
    objc_storeStrong(&v38->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v38->_stagerPolicy, stagerPolicy);
    v38->_downloadUserInitiated = initiated;
    objc_storeStrong(&v38->_downloadProgress, progress);
    v38->_downloadedNetworkBytes = bytes;
    v38->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v38->_currentLockUsage, usage);
    objc_storeStrong(&v38->_selectorsForStaging, staging);
    objc_storeStrong(&v38->_availableForUseError, error);
    objc_storeStrong(&v38->_newerVersionError, versionError);
  }

  return v38;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withDownloadedCatalogCachedAssetSetID:(id)self5 withDownloadedCatalogDownloadedFromLive:(id)self6 withDownloadedCatalogLastTimeChecked:(id)self7 withDownloadedCatalogPostedDate:(id)self8 withCurrentNotifications:(id)self9 withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)domain0 withAvailableForUseError:(id)domain1 withNewerVersionError:(id)domain2
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  downloadedCopy = downloaded;
  dCopy = d;
  dCopy2 = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  stagingCopy = staging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v69.receiver = self;
  v69.super_class = MANAutoAssetSetStatus;
  v42 = [(MANAutoAssetSetStatus *)&v69 init];
  v43 = v42;
  if (v42)
  {
    objc_storeStrong(&v42->_clientDomainName, domain);
    objc_storeStrong(&v43->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v43->_configuredAssetEntries, entries);
    objc_storeStrong(&v43->_atomicInstancesDownloaded, downloaded);
    objc_storeStrong(&v43->_catalogCachedAssetSetID, dCopy);
    objc_storeStrong(&v43->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v43->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v43->_catalogPostedDate, date);
    objc_storeStrong(&v43->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v43->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v43->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v43->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    objc_storeStrong(&v43->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v43->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v43->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v43->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v43->_currentNotifications, notifications);
    objc_storeStrong(&v43->_currentNeedPolicy, policy);
    objc_storeStrong(&v43->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v43->_stagerPolicy, stagerPolicy);
    v43->_haveReceivedLookupResponse = response;
    v43->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v43->_downloadUserInitiated = initiated;
    objc_storeStrong(&v43->_downloadProgress, progress);
    v43->_downloadedNetworkBytes = bytes;
    v43->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v43->_currentLockUsage, usage);
    objc_storeStrong(&v43->_selectorsForStaging, staging);
    objc_storeStrong(&v43->_availableForUseError, error);
    objc_storeStrong(&v43->_newerVersionError, versionError);
  }

  return v43;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withPreviouslyVendedLockedAtomicInstance:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  entriesCopy2 = entries;
  downloadedCopy = downloaded;
  downloadedCopy2 = downloaded;
  dCopy = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  atomicInstanceCopy = atomicInstance;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  stagingCopy = staging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v72.receiver = self;
  v72.super_class = MANAutoAssetSetStatus;
  v44 = [(MANAutoAssetSetStatus *)&v72 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_clientDomainName, domain);
    objc_storeStrong(&v45->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v45->_configuredAssetEntries, entriesCopy);
    objc_storeStrong(&v45->_atomicInstancesDownloaded, downloadedCopy);
    objc_storeStrong(&v45->_catalogCachedAssetSetID, d);
    objc_storeStrong(&v45->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v45->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v45->_catalogPostedDate, date);
    objc_storeStrong(&v45->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v45->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v45->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v45->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    objc_storeStrong(&v45->_previouslyVendedLockedAtomicInstance, atomicInstance);
    objc_storeStrong(&v45->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v45->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v45->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v45->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v45->_currentNotifications, notifications);
    objc_storeStrong(&v45->_currentNeedPolicy, policy);
    objc_storeStrong(&v45->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v45->_stagerPolicy, stagerPolicy);
    v45->_haveReceivedLookupResponse = response;
    v45->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v45->_downloadUserInitiated = initiated;
    objc_storeStrong(&v45->_downloadProgress, progress);
    v45->_downloadedNetworkBytes = bytes;
    v45->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v45->_currentLockUsage, usage);
    objc_storeStrong(&v45->_selectorsForStaging, staging);
    objc_storeStrong(&v45->_availableForUseError, error);
    objc_storeStrong(&v45->_newerVersionError, versionError);
  }

  return v45;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withPreviouslyVendedLockedAtomicInstance:(id)self6 withDownloadedCatalogCachedAssetSetID:(id)self7 withDownloadedCatalogDownloadedFromLive:(id)self8 withDownloadedCatalogLastTimeChecked:(id)self9 withDownloadedCatalogPostedDate:(id)postedDate withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)domain0 withCurrentLockUsage:(id)domain1 withSelectorsForStaging:(id)domain2 withAvailableForUseError:(id)domain3 withNewerVersionError:(id)domain4
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  entriesCopy2 = entries;
  downloadedCopy = downloaded;
  downloadedCopy2 = downloaded;
  dCopy = d;
  dCopy2 = d;
  liveCopy = live;
  liveCopy2 = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  atomicInstanceCopy = atomicInstance;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  forStagingCopy = forStaging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v75.receiver = self;
  v75.super_class = MANAutoAssetSetStatus;
  v48 = [(MANAutoAssetSetStatus *)&v75 init];
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(&v48->_clientDomainName, domain);
    objc_storeStrong(&v49->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v49->_configuredAssetEntries, entriesCopy);
    objc_storeStrong(&v49->_atomicInstancesDownloaded, downloadedCopy);
    objc_storeStrong(&v49->_catalogCachedAssetSetID, dCopy);
    objc_storeStrong(&v49->_catalogDownloadedFromLive, liveCopy);
    objc_storeStrong(&v49->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v49->_catalogPostedDate, date);
    objc_storeStrong(&v49->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v49->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v49->_latestDownloadedAtomicInstance, instance);
    v49->_latestDownloadedAtomicInstanceFromPreSUStaging = staging;
    objc_storeStrong(&v49->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    objc_storeStrong(&v49->_previouslyVendedLockedAtomicInstance, atomicInstance);
    objc_storeStrong(&v49->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v49->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v49->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v49->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v49->_currentNotifications, notifications);
    objc_storeStrong(&v49->_currentNeedPolicy, policy);
    objc_storeStrong(&v49->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v49->_stagerPolicy, stagerPolicy);
    v49->_haveReceivedLookupResponse = response;
    v49->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v49->_downloadUserInitiated = initiated;
    objc_storeStrong(&v49->_downloadProgress, progress);
    v49->_downloadedNetworkBytes = bytes;
    v49->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v49->_currentLockUsage, usage);
    objc_storeStrong(&v49->_selectorsForStaging, forStaging);
    objc_storeStrong(&v49->_availableForUseError, error);
    objc_storeStrong(&v49->_newerVersionError, versionError);
  }

  return v49;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  entriesCopy2 = entries;
  downloadedCopy = downloaded;
  dCopy = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  forStagingCopy = forStaging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v70.receiver = self;
  v70.super_class = MANAutoAssetSetStatus;
  v44 = [(MANAutoAssetSetStatus *)&v70 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_clientDomainName, domain);
    objc_storeStrong(&v45->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v45->_configuredAssetEntries, entriesCopy);
    objc_storeStrong(&v45->_atomicInstancesDownloaded, downloaded);
    objc_storeStrong(&v45->_catalogCachedAssetSetID, d);
    objc_storeStrong(&v45->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v45->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v45->_catalogPostedDate, date);
    objc_storeStrong(&v45->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v45->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v45->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v45->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    v45->_latestDownloadedAtomicInstanceFromPreSUStaging = staging;
    objc_storeStrong(&v45->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v45->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v45->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v45->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v45->_currentNotifications, notifications);
    objc_storeStrong(&v45->_currentNeedPolicy, policy);
    objc_storeStrong(&v45->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v45->_stagerPolicy, stagerPolicy);
    v45->_haveReceivedLookupResponse = response;
    v45->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v45->_downloadUserInitiated = initiated;
    objc_storeStrong(&v45->_downloadProgress, progress);
    v45->_downloadedNetworkBytes = bytes;
    v45->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v45->_currentLockUsage, usage);
    objc_storeStrong(&v45->_selectorsForStaging, forStaging);
    objc_storeStrong(&v45->_availableForUseError, error);
    objc_storeStrong(&v45->_newerVersionError, versionError);
  }

  return v45;
}

- (MANAutoAssetSetStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v68.receiver = self;
  v68.super_class = MANAutoAssetSetStatus;
  v5 = [(MANAutoAssetSetStatus *)&v68 init];
  if (v5)
  {
    v73[0] = objc_opt_class();
    v73[1] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v73 count:2];
    v67 = [NSSet setWithArray:v6];

    v72[0] = objc_opt_class();
    v72[1] = objc_opt_class();
    v72[2] = objc_opt_class();
    v72[3] = objc_opt_class();
    v72[4] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v72 count:5];
    v8 = [NSSet setWithArray:v7];

    v71[0] = objc_opt_class();
    v71[1] = objc_opt_class();
    v71[2] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v71 count:3];
    v10 = [NSSet setWithArray:v9];

    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v70[2] = objc_opt_class();
    v70[3] = objc_opt_class();
    v11 = [NSArray arrayWithObjects:v70 count:4];
    v12 = [NSSet setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v15;

    v17 = [NSSet alloc];
    v69[0] = objc_opt_class();
    v69[1] = objc_opt_class();
    v69[2] = objc_opt_class();
    v18 = [NSArray arrayWithObjects:v69 count:3];
    v19 = [v17 initWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v20;

    v22 = [coderCopy decodeObjectOfClasses:v67 forKey:@"atomicInstancesDownloaded"];
    atomicInstancesDownloaded = v5->_atomicInstancesDownloaded;
    v5->_atomicInstancesDownloaded = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newerAtomicInstanceDiscovered"];
    newerAtomicInstanceDiscovered = v5->_newerAtomicInstanceDiscovered;
    v5->_newerAtomicInstanceDiscovered = v32;

    v5->_latestDownloadedAtomicInstanceFromPreSUStaging = [coderCopy decodeBoolForKey:@"latestDownloadedAtomicInstanceFromPreSUStaging"];
    v34 = [coderCopy decodeObjectOfClasses:v8 forKey:@"newerDiscoveredAtomicEntries"];
    newerDiscoveredAtomicEntries = v5->_newerDiscoveredAtomicEntries;
    v5->_newerDiscoveredAtomicEntries = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v36;

    v38 = [coderCopy decodeObjectOfClasses:v8 forKey:@"latestDowloadedAtomicInstanceEntries"];
    latestDowloadedAtomicInstanceEntries = v5->_latestDowloadedAtomicInstanceEntries;
    v5->_latestDowloadedAtomicInstanceEntries = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogCachedAssetSetID"];
    downloadedCatalogCachedAssetSetID = v5->_downloadedCatalogCachedAssetSetID;
    v5->_downloadedCatalogCachedAssetSetID = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogDownloadedFromLive"];
    downloadedCatalogDownloadedFromLive = v5->_downloadedCatalogDownloadedFromLive;
    v5->_downloadedCatalogDownloadedFromLive = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogLastTimeChecked"];
    downloadedCatalogLastTimeChecked = v5->_downloadedCatalogLastTimeChecked;
    v5->_downloadedCatalogLastTimeChecked = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogPostedDate"];
    downloadedCatalogPostedDate = v5->_downloadedCatalogPostedDate;
    v5->_downloadedCatalogPostedDate = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentNotifications"];
    currentNotifications = v5->_currentNotifications;
    v5->_currentNotifications = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentNeedPolicy"];
    currentNeedPolicy = v5->_currentNeedPolicy;
    v5->_currentNeedPolicy = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schedulerPolicy"];
    schedulerPolicy = v5->_schedulerPolicy;
    v5->_schedulerPolicy = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagerPolicy"];
    stagerPolicy = v5->_stagerPolicy;
    v5->_stagerPolicy = v54;

    v5->_haveReceivedLookupResponse = [coderCopy decodeBoolForKey:@"haveReceivedLookupResponse"];
    v5->_vendingAtomicInstanceForConfiguredEntries = [coderCopy decodeBoolForKey:@"vendingAtomicInstanceForConfiguredEntries"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v56;

    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v58 = [coderCopy decodeObjectOfClasses:v10 forKey:@"currentLockUsage"];
    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v58;

    v60 = [coderCopy decodeObjectOfClasses:v12 forKey:@"selectorsForStaging"];
    selectorsForStaging = v5->_selectorsForStaging;
    v5->_selectorsForStaging = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v64;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MANAutoAssetSetStatus *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  configuredAssetEntries = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  [coderCopy encodeObject:configuredAssetEntries forKey:@"configuredAssetEntries"];

  atomicInstancesDownloaded = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  [coderCopy encodeObject:atomicInstancesDownloaded forKey:@"atomicInstancesDownloaded"];

  catalogCachedAssetSetID = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  [coderCopy encodeObject:catalogCachedAssetSetID forKey:@"catalogCachedAssetSetID"];

  catalogDownloadedFromLive = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
  [coderCopy encodeObject:catalogDownloadedFromLive forKey:@"catalogDownloadedFromLive"];

  catalogLastTimeChecked = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
  [coderCopy encodeObject:catalogLastTimeChecked forKey:@"catalogLastTimeChecked"];

  catalogPostedDate = [(MANAutoAssetSetStatus *)self catalogPostedDate];
  [coderCopy encodeObject:catalogPostedDate forKey:@"catalogPostedDate"];

  newerAtomicInstanceDiscovered = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  [coderCopy encodeObject:newerAtomicInstanceDiscovered forKey:@"newerAtomicInstanceDiscovered"];

  [coderCopy encodeBool:-[MANAutoAssetSetStatus latestDownloadedAtomicInstanceFromPreSUStaging](self forKey:{"latestDownloadedAtomicInstanceFromPreSUStaging"), @"latestDownloadedAtomicInstanceFromPreSUStaging"}];
  newerDiscoveredAtomicEntries = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  [coderCopy encodeObject:newerDiscoveredAtomicEntries forKey:@"newerDiscoveredAtomicEntries"];

  latestDownloadedAtomicInstance = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  [coderCopy encodeObject:latestDownloadedAtomicInstance forKey:@"latestDownloadedAtomicInstance"];

  latestDowloadedAtomicInstanceEntries = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  [coderCopy encodeObject:latestDowloadedAtomicInstanceEntries forKey:@"latestDowloadedAtomicInstanceEntries"];

  downloadedCatalogCachedAssetSetID = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  [coderCopy encodeObject:downloadedCatalogCachedAssetSetID forKey:@"downloadedCatalogCachedAssetSetID"];

  downloadedCatalogDownloadedFromLive = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  [coderCopy encodeObject:downloadedCatalogDownloadedFromLive forKey:@"downloadedCatalogDownloadedFromLive"];

  downloadedCatalogLastTimeChecked = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  [coderCopy encodeObject:downloadedCatalogLastTimeChecked forKey:@"downloadedCatalogLastTimeChecked"];

  downloadedCatalogPostedDate = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  [coderCopy encodeObject:downloadedCatalogPostedDate forKey:@"downloadedCatalogPostedDate"];

  currentNotifications = [(MANAutoAssetSetStatus *)self currentNotifications];
  [coderCopy encodeObject:currentNotifications forKey:@"currentNotifications"];

  currentNeedPolicy = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
  [coderCopy encodeObject:currentNeedPolicy forKey:@"currentNeedPolicy"];

  schedulerPolicy = [(MANAutoAssetSetStatus *)self schedulerPolicy];
  [coderCopy encodeObject:schedulerPolicy forKey:@"schedulerPolicy"];

  stagerPolicy = [(MANAutoAssetSetStatus *)self stagerPolicy];
  [coderCopy encodeObject:stagerPolicy forKey:@"stagerPolicy"];

  [coderCopy encodeBool:-[MANAutoAssetSetStatus haveReceivedLookupResponse](self forKey:{"haveReceivedLookupResponse"), @"haveReceivedLookupResponse"}];
  [coderCopy encodeBool:-[MANAutoAssetSetStatus vendingAtomicInstanceForConfiguredEntries](self forKey:{"vendingAtomicInstanceForConfiguredEntries"), @"vendingAtomicInstanceForConfiguredEntries"}];
  [coderCopy encodeBool:-[MANAutoAssetSetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  downloadProgress = [(MANAutoAssetSetStatus *)self downloadProgress];
  [coderCopy encodeObject:downloadProgress forKey:@"downloadProgress"];

  [coderCopy encodeInteger:-[MANAutoAssetSetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MANAutoAssetSetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  currentLockUsage = [(MANAutoAssetSetStatus *)self currentLockUsage];
  [coderCopy encodeObject:currentLockUsage forKey:@"currentLockUsage"];

  selectorsForStaging = [(MANAutoAssetSetStatus *)self selectorsForStaging];
  [coderCopy encodeObject:selectorsForStaging forKey:@"selectorsForStaging"];

  availableForUseError = [(MANAutoAssetSetStatus *)self availableForUseError];
  [coderCopy encodeObject:availableForUseError forKey:@"availableForUseError"];

  newerVersionError = [(MANAutoAssetSetStatus *)self newerVersionError];
  [coderCopy encodeObject:newerVersionError forKey:@"newerVersionError"];
}

- (id)copy
{
  v28 = [MANAutoAssetSetStatus alloc];
  clientDomainName = [(MANAutoAssetSetStatus *)self clientDomainName];
  assetSetIdentifier = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  configuredAssetEntries = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  v46 = [configuredAssetEntries copy];
  atomicInstancesDownloaded = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v45 = [atomicInstancesDownloaded copy];
  catalogCachedAssetSetID = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  catalogDownloadedFromLive = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
  catalogLastTimeChecked = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
  catalogPostedDate = [(MANAutoAssetSetStatus *)self catalogPostedDate];
  newerAtomicInstanceDiscovered = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  newerDiscoveredAtomicEntries = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v39 = [newerDiscoveredAtomicEntries copy];
  latestDownloadedAtomicInstance = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v38 = [latestDownloadedAtomicInstance copy];
  latestDownloadedAtomicInstanceFromPreSUStaging = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstanceFromPreSUStaging];
  latestDowloadedAtomicInstanceEntries = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v37 = [latestDowloadedAtomicInstanceEntries copy];
  downloadedCatalogCachedAssetSetID = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  downloadedCatalogDownloadedFromLive = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  downloadedCatalogLastTimeChecked = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  downloadedCatalogPostedDate = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  currentNotifications = [(MANAutoAssetSetStatus *)self currentNotifications];
  v17 = [currentNotifications copy];
  currentNeedPolicy = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
  v19 = [currentNeedPolicy copy];
  schedulerPolicy = [(MANAutoAssetSetStatus *)self schedulerPolicy];
  v18 = [schedulerPolicy copy];
  stagerPolicy = [(MANAutoAssetSetStatus *)self stagerPolicy];
  v16 = [stagerPolicy copy];
  haveReceivedLookupResponse = [(MANAutoAssetSetStatus *)self haveReceivedLookupResponse];
  vendingAtomicInstanceForConfiguredEntries = [(MANAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries];
  downloadUserInitiated = [(MANAutoAssetSetStatus *)self downloadUserInitiated];
  downloadProgress = [(MANAutoAssetSetStatus *)self downloadProgress];
  v5 = [downloadProgress copy];
  downloadedNetworkBytes = [(MANAutoAssetSetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MANAutoAssetSetStatus *)self downloadedFilesystemBytes];
  currentLockUsage = [(MANAutoAssetSetStatus *)self currentLockUsage];
  selectorsForStaging = [(MANAutoAssetSetStatus *)self selectorsForStaging];
  availableForUseError = [(MANAutoAssetSetStatus *)self availableForUseError];
  newerVersionError = [(MANAutoAssetSetStatus *)self newerVersionError];
  BYTE2(v14) = downloadUserInitiated;
  BYTE1(v14) = vendingAtomicInstanceForConfiguredEntries;
  LOBYTE(v14) = haveReceivedLookupResponse;
  LOBYTE(v13) = latestDownloadedAtomicInstanceFromPreSUStaging;
  v29 = [MANAutoAssetSetStatus initStatusForClientDomain:v28 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withCatalogCachedAssetSetID:v46 withCatalogDownloadedFromLive:v45 withCatalogLastTimeChecked:catalogCachedAssetSetID withCatalogPostedDate:catalogDownloadedFromLive withNewerAtomicInstanceDiscovered:catalogLastTimeChecked withNewerDiscoveredAtomicEntries:catalogPostedDate withLatestDownloadedAtomicInstance:newerAtomicInstanceDiscovered withLatestDownloadedAtomicInstanceFromPreSUStaging:v39 withLatestDowloadedAtomicInstanceEntries:v38 withDownloadedCatalogCachedAssetSetID:v13 withDownloadedCatalogDownloadedFromLive:v37 withDownloadedCatalogLastTimeChecked:downloadedCatalogCachedAssetSetID withDownloadedCatalogPostedDate:downloadedCatalogDownloadedFromLive withCurrentNotifications:downloadedCatalogLastTimeChecked withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v17 withStagerPolicy:v19 havingReceivedLookupResponse:v18 vendingAtomicInstanceForConfiguredEntries:v16 withDownloadUserInitiated:v14 withDownloadProgress:v5 withDownloadedNetworkBytes:downloadedNetworkBytes withDownloadedFilesystemBytes:downloadedFilesystemBytes withCurrentLockUsage:currentLockUsage withSelectorsForStaging:selectorsForStaging withAvailableForUseError:availableForUseError withNewerVersionError:newerVersionError];

  return v29;
}

- (id)description
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  clientDomainName = [(MANAutoAssetSetStatus *)self clientDomainName];
  assetSetIdentifier = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  configuredAssetEntries = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  if (configuredAssetEntries)
  {
    v5 = [NSString alloc];
    configuredAssetEntries2 = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
    v84 = [v5 initWithFormat:@"%ld", objc_msgSend(configuredAssetEntries2, "count")];
  }

  else
  {
    v84 = @"N";
  }

  atomicInstancesDownloaded = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  if (atomicInstancesDownloaded)
  {
    v6 = [NSString alloc];
    atomicInstancesDownloaded2 = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
    v83 = [v6 initWithFormat:@"%ld", objc_msgSend(atomicInstancesDownloaded2, "count")];
  }

  else
  {
    v83 = @"N";
  }

  catalogCachedAssetSetID = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  if (catalogCachedAssetSetID)
  {
    catalogCachedAssetSetID2 = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  }

  else
  {
    catalogCachedAssetSetID2 = @"N";
  }

  catalogDownloadedFromLive = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
  if (catalogDownloadedFromLive)
  {
    catalogDownloadedFromLive2 = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
    path = [catalogDownloadedFromLive2 path];
  }

  else
  {
    path = @"N";
  }

  catalogLastTimeChecked = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
  if (catalogLastTimeChecked)
  {
    catalogLastTimeChecked2 = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
    v80 = [v3 stringFromDate:?];
  }

  else
  {
    v80 = @"N";
  }

  catalogPostedDate = [(MANAutoAssetSetStatus *)self catalogPostedDate];
  if (catalogPostedDate)
  {
    catalogPostedDate2 = [(MANAutoAssetSetStatus *)self catalogPostedDate];
    v79 = [v3 stringFromDate:?];
  }

  else
  {
    v79 = @"N";
  }

  newerAtomicInstanceDiscovered = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (newerAtomicInstanceDiscovered)
  {
    newerAtomicInstanceDiscovered2 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    newerAtomicInstanceDiscovered2 = @"N";
  }

  newerDiscoveredAtomicEntries = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  if (newerDiscoveredAtomicEntries)
  {
    v12 = [NSString alloc];
    newerDiscoveredAtomicEntries2 = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
    v77 = [v12 initWithFormat:@"%ld", objc_msgSend(newerDiscoveredAtomicEntries2, "count")];
  }

  else
  {
    v77 = @"N";
  }

  [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v93 = v13 = @"N";
  v61 = catalogCachedAssetSetID;
  if (v93)
  {
    latestDownloadedAtomicInstance = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance = @"N";
  }

  if ([(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstanceFromPreSUStaging])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v54 = v14;
  latestDowloadedAtomicInstanceEntries = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  if (latestDowloadedAtomicInstanceEntries)
  {
    v15 = [NSString alloc];
    latestDowloadedAtomicInstanceEntries2 = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
    v13 = [v15 initWithFormat:@"%ld", objc_msgSend(latestDowloadedAtomicInstanceEntries2, "count")];
  }

  downloadedCatalogCachedAssetSetID = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  if (downloadedCatalogCachedAssetSetID)
  {
    downloadedCatalogCachedAssetSetID2 = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  }

  else
  {
    downloadedCatalogCachedAssetSetID2 = @"N";
  }

  downloadedCatalogDownloadedFromLive = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  if (downloadedCatalogDownloadedFromLive)
  {
    downloadedCatalogDownloadedFromLive2 = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  }

  else
  {
    downloadedCatalogDownloadedFromLive2 = @"N";
  }

  downloadedCatalogLastTimeChecked = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  if (downloadedCatalogLastTimeChecked)
  {
    downloadedCatalogLastTimeChecked2 = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
    v72 = [v3 stringFromDate:?];
  }

  else
  {
    v72 = @"N";
  }

  downloadedCatalogPostedDate = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  if (downloadedCatalogPostedDate)
  {
    downloadedCatalogPostedDate2 = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
    v71 = [v3 stringFromDate:?];
  }

  else
  {
    v71 = @"N";
  }

  currentNotifications = [(MANAutoAssetSetStatus *)self currentNotifications];
  summary = [currentNotifications summary];
  currentNeedPolicy = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
  if (currentNeedPolicy)
  {
    currentNeedPolicy2 = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
    summary2 = [currentNeedPolicy2 summary];
  }

  else
  {
    summary2 = @"N";
  }

  schedulerPolicy = [(MANAutoAssetSetStatus *)self schedulerPolicy];
  v59 = catalogLastTimeChecked;
  if (schedulerPolicy)
  {
    schedulerPolicy2 = [(MANAutoAssetSetStatus *)self schedulerPolicy];
    summary3 = [schedulerPolicy2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  [(MANAutoAssetSetStatus *)self stagerPolicy];
  v53 = v16 = @"N";
  if (v53)
  {
    stagerPolicy = [(MANAutoAssetSetStatus *)self stagerPolicy];
    summary4 = [stagerPolicy summary];
  }

  else
  {
    summary4 = @"N";
  }

  if ([(MANAutoAssetSetStatus *)self haveReceivedLookupResponse])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v51 = v17;
  if ([(MANAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  v50 = v18;
  if ([(MANAutoAssetSetStatus *)self downloadUserInitiated])
  {
    v19 = @"Y";
  }

  else
  {
    v19 = @"N";
  }

  v49 = v19;
  downloadProgress = [(MANAutoAssetSetStatus *)self downloadProgress];
  v64 = clientDomainName;
  v65 = v3;
  v56 = newerDiscoveredAtomicEntries;
  v75 = v13;
  if (downloadProgress)
  {
    downloadProgress2 = [(MANAutoAssetSetStatus *)self downloadProgress];
    v16 = [downloadProgress2 description];
  }

  downloadedNetworkBytes = [(MANAutoAssetSetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MANAutoAssetSetStatus *)self downloadedFilesystemBytes];
  currentLockUsage = [(MANAutoAssetSetStatus *)self currentLockUsage];
  v57 = newerAtomicInstanceDiscovered;
  if (currentLockUsage)
  {
    v67 = [MANAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v67 = @"N";
  }

  selectorsForStaging = [(MANAutoAssetSetStatus *)self selectorsForStaging];
  if (selectorsForStaging)
  {
    v66 = [MANAutoAssetSetStatus newSelectorsForStagingSummary:self];
  }

  else
  {
    v66 = @"N";
  }

  v58 = catalogPostedDate;
  availableForUseError = [(MANAutoAssetSetStatus *)self availableForUseError];
  if (availableForUseError)
  {
    availableForUseError2 = [(MANAutoAssetSetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
  }

  else
  {
    checkedSummary = @"N";
  }

  newerVersionError = [(MANAutoAssetSetStatus *)self newerVersionError];
  if (newerVersionError)
  {
    newerVersionError2 = [(MANAutoAssetSetStatus *)self newerVersionError];
    checkedSummary2 = [newerVersionError2 checkedSummary];
    v33 = downloadedFilesystemBytes;
    v29 = v64;
    v30 = [NSString stringWithFormat:@"                      clientDomainName:        %@\n                    assetSetIdentifier:        %@\n                configuredAssetEntries:        %@\n             atomicInstancesDownloaded:        %@\n               catalogCachedAssetSetID:        %@\n             catalogDownloadedFromLive:        %@\n                catalogLastTimeChecked:        %@\n                     catalogPostedDate:        %@\n         newerAtomicInstanceDiscovered:        %@\n          newerDiscoveredAtomicEntries:        %@\n              latestDownloadedInstance:        %@\nlatestDownloadedAtomicInstanceFromPreSUStaging:%@\n        latestDowloadedInstanceEntries:        %@\n     downloadedCatalogCachedAssetSetID:        %@\n   downloadedCatalogDownloadedFromLive:        %@\n      downloadedCatalogLastTimeChecked:        %@\n           downloadedCatalogPostedDate:        %@\n                  currentNotifications:        %@\n                     currentNeedPolicy:        %@\n                currentSchedulerPolicy:        %@\n                   currentStagerPolicy:        %@\n            haveReceivedLookupResponse:        %@\n vendingAtomicInstanceForConfigEntries:        %@\n                 downloadUserInitiated:        %@\n                      downloadProgress:        \n%@\n                downloadedNetworkBytes:        %ld\n             downloadedFilesystemBytes:        %ld\n                      currentLockUsage:        \n%@\n                   selectorsForStaging:        %@\n                  availableForUseError:        %@\n                     newerVersionError:        %@\n", v64, assetSetIdentifier, v84, v83, catalogCachedAssetSetID2, path, v80, v79, newerAtomicInstanceDiscovered2, v77, latestDownloadedAtomicInstance, v54, v75, downloadedCatalogCachedAssetSetID2, downloadedCatalogDownloadedFromLive2, v72, v71, summary, summary2, summary3, summary4, v51, v50, v49, v16, downloadedNetworkBytes, v33, v67, v66, checkedSummary, checkedSummary2];
  }

  else
  {
    v34 = downloadedFilesystemBytes;
    v29 = v64;
    v30 = [NSString stringWithFormat:@"                      clientDomainName:        %@\n                    assetSetIdentifier:        %@\n                configuredAssetEntries:        %@\n             atomicInstancesDownloaded:        %@\n               catalogCachedAssetSetID:        %@\n             catalogDownloadedFromLive:        %@\n                catalogLastTimeChecked:        %@\n                     catalogPostedDate:        %@\n         newerAtomicInstanceDiscovered:        %@\n          newerDiscoveredAtomicEntries:        %@\n              latestDownloadedInstance:        %@\nlatestDownloadedAtomicInstanceFromPreSUStaging:%@\n        latestDowloadedInstanceEntries:        %@\n     downloadedCatalogCachedAssetSetID:        %@\n   downloadedCatalogDownloadedFromLive:        %@\n      downloadedCatalogLastTimeChecked:        %@\n           downloadedCatalogPostedDate:        %@\n                  currentNotifications:        %@\n                     currentNeedPolicy:        %@\n                currentSchedulerPolicy:        %@\n                   currentStagerPolicy:        %@\n            haveReceivedLookupResponse:        %@\n vendingAtomicInstanceForConfigEntries:        %@\n                 downloadUserInitiated:        %@\n                      downloadProgress:        \n%@\n                downloadedNetworkBytes:        %ld\n             downloadedFilesystemBytes:        %ld\n                      currentLockUsage:        \n%@\n                   selectorsForStaging:        %@\n                  availableForUseError:        %@\n                     newerVersionError:        %@\n", v64, assetSetIdentifier, v84, v83, catalogCachedAssetSetID2, path, v80, v79, newerAtomicInstanceDiscovered2, v77, latestDownloadedAtomicInstance, v54, v75, downloadedCatalogCachedAssetSetID2, downloadedCatalogDownloadedFromLive2, v72, v71, summary, summary2, summary3, summary4, v51, v50, v49, v16, downloadedNetworkBytes, v34, v67, v66, checkedSummary, @"N"];
  }

  if (availableForUseError)
  {
  }

  if (selectorsForStaging)
  {
  }

  if (currentLockUsage)
  {
  }

  if (downloadProgress)
  {
  }

  if (v53)
  {
  }

  if (schedulerPolicy)
  {
  }

  if (currentNeedPolicy)
  {
  }

  if (downloadedCatalogPostedDate)
  {
  }

  if (downloadedCatalogLastTimeChecked)
  {
  }

  if (downloadedCatalogDownloadedFromLive)
  {
  }

  if (downloadedCatalogCachedAssetSetID)
  {
  }

  if (latestDowloadedAtomicInstanceEntries)
  {
  }

  if (v93)
  {
  }

  if (v56)
  {
  }

  if (v57)
  {
  }

  if (v58)
  {
  }

  if (v59)
  {
  }

  if (catalogDownloadedFromLive)
  {
  }

  if (v61)
  {
  }

  if (atomicInstancesDownloaded)
  {
  }

  if (configuredAssetEntries)
  {
  }

  v31 = v30;
  return v30;
}

- (id)summary
{
  clientDomainName = [(MANAutoAssetSetStatus *)self clientDomainName];
  assetSetIdentifier = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  configuredAssetEntries = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  v30 = [configuredAssetEntries count];
  atomicInstancesDownloaded = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v29 = [atomicInstancesDownloaded count];
  newerAtomicInstanceDiscovered = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (newerAtomicInstanceDiscovered)
  {
    newerAtomicInstanceDiscovered2 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    newerAtomicInstanceDiscovered2 = @"N";
  }

  newerDiscoveredAtomicEntries = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v27 = [newerDiscoveredAtomicEntries count];
  latestDownloadedAtomicInstance = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v36 = assetSetIdentifier;
  v37 = clientDomainName;
  v32 = newerAtomicInstanceDiscovered2;
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"N";
  }

  latestDowloadedAtomicInstanceEntries = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v7 = [latestDowloadedAtomicInstanceEntries count];
  if ([(MANAutoAssetSetStatus *)self haveReceivedLookupResponse])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(MANAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(MANAutoAssetSetStatus *)self downloadUserInitiated])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  currentLockUsage = [(MANAutoAssetSetStatus *)self currentLockUsage];
  if (currentLockUsage)
  {
    v12 = [MANAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v12 = @"N";
  }

  availableForUseError = [(MANAutoAssetSetStatus *)self availableForUseError];
  if (availableForUseError)
  {
    availableForUseError2 = [(MANAutoAssetSetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
    v23 = v9;
    v25 = v10;
    v21 = v8;
    v16 = v32;
    v17 = v36;
    v18 = v37;
    v19 = [NSString stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v37, v36, v30, v29, v32, v27, latestDownloadedAtomicInstance2, v7, v21, v23, v25, v12, checkedSummary];
  }

  else
  {
    v24 = v9;
    v26 = v10;
    v22 = v8;
    v16 = v32;
    v17 = v36;
    v18 = v37;
    v19 = [NSString stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v37, v36, v30, v29, v32, v27, latestDownloadedAtomicInstance2, v7, v22, v24, v26, v12, @"N"];
  }

  if (currentLockUsage)
  {
  }

  if (latestDownloadedAtomicInstance)
  {
  }

  if (newerAtomicInstanceDiscovered)
  {
  }

  return v19;
}

+ (id)newCurrentLockUsageSummary:(id)summary
{
  summaryCopy = summary;
  currentLockUsage = [summaryCopy currentLockUsage];

  if (currentLockUsage)
  {
    currentLockUsage = [[NSMutableString alloc] initWithString:@"{"];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [summaryCopy currentLockUsage];
    v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v20 = *v29;
      v21 = summaryCopy;
      v5 = 1;
      do
      {
        v6 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v6;
          v7 = *(*(&v28 + 1) + 8 * v6);
          currentLockUsage2 = [summaryCopy currentLockUsage];
          v9 = [currentLockUsage2 safeObjectForKey:v7 ofClass:objc_opt_class()];

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
            v14 = v5;
            do
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v24 + 1) + 8 * i);
                v17 = [v10 safeIntegerForKey:v16];
                if ((v14 & 1) == 0)
                {
                  [currentLockUsage appendString:{@", "}];
                }

                [currentLockUsage appendFormat:@"[lockReason:%@ atomicInstance:%@ lockCount:%ld]", v7, v16, v17];
                v14 = 0;
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
              v14 = 0;
              v5 = 0;
            }

            while (v12);
          }

          v6 = v23 + 1;
          summaryCopy = v21;
        }

        while ((v23 + 1) != v22);
        v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }

    [currentLockUsage appendString:@"}"];
  }

  return currentLockUsage;
}

+ (id)newCurrentLockUsageDetailed:(id)detailed
{
  detailedCopy = detailed;
  currentLockUsage = [detailedCopy currentLockUsage];

  if (currentLockUsage)
  {
    v5 = [NSString alloc];
    currentLockUsage2 = [detailedCopy currentLockUsage];
    v7 = [currentLockUsage2 description];
    currentLockUsage = [v5 initWithFormat:@"%@", v7];
  }

  return currentLockUsage;
}

+ (id)newSelectorsForStagingSummary:(id)summary
{
  summaryCopy = summary;
  selectorsForStaging = [summaryCopy selectorsForStaging];

  if (selectorsForStaging)
  {
    selectorsForStaging = [[NSMutableString alloc] initWithString:@"{"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [summaryCopy selectorsForStaging];
    v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      v8 = 1;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          selectorsForStaging2 = [summaryCopy selectorsForStaging];
          v12 = [selectorsForStaging2 safeObjectForKey:v10 ofClass:objc_opt_class()];

          v13 = [v12 count];
          if ((v8 & 1) == 0)
          {
            [selectorsForStaging appendString:{@", "}];
          }

          [selectorsForStaging appendFormat:@"%@:%ld", v10, v13];

          v8 = 0;
          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        v8 = 0;
      }

      while (v6);
    }

    [selectorsForStaging appendString:@"}"];
  }

  return selectorsForStaging;
}

+ (id)shortTermLockDirectory:(id)directory forAssetSetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:directory];
  v7 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:identifierCopy];

  v8 = [NSString alloc];
  v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/locks");
  v10 = [v8 initWithFormat:@"%@/%@/%@/%@", v9, v6, v7, @"shared_locks"];

  return v10;
}

+ (id)shortTermLockFilename:(id)filename forAssetSetIdentifier:(id)identifier forSetAtomicInstance:(id)instance
{
  instanceCopy = instance;
  identifierCopy = identifier;
  v9 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:filename];
  v10 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:identifierCopy];

  if (instanceCopy)
  {
    v11 = instanceCopy;
  }

  else
  {
    v11 = @"latest";
  }

  v12 = [NSString alloc];
  v13 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/locks");
  v14 = [v12 initWithFormat:@"%@/%@/%@/%@/%@_%@.%@", v13, v9, v10, @"shared_locks", @"atomic_instance", v11, @"locker"];

  return v14;
}

+ (id)_shortTermLockFilenameNormalizedComponent:(id)component
{
  if (component)
  {
    componentCopy = component;
    v4 = [NSCharacterSet characterSetWithCharactersInString:@":, /\\?~%*|<>[](){}"];;
    v5 = [componentCopy componentsSeparatedByCharactersInSet:v4];

    v6 = [v5 componentsJoinedByString:@"_"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end