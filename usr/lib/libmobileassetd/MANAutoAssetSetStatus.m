@interface MANAutoAssetSetStatus
+ (id)_shortTermLockFilenameNormalizedComponent:(id)a3;
+ (id)newCurrentLockUsageDetailed:(id)a3;
+ (id)newCurrentLockUsageSummary:(id)a3;
+ (id)newSelectorsForStagingSummary:(id)a3;
+ (id)shortTermLockDirectory:(id)a3 forAssetSetIdentifier:(id)a4;
+ (id)shortTermLockFilename:(id)a3 forAssetSetIdentifier:(id)a4 forSetAtomicInstance:(id)a5;
- (MANAutoAssetSetStatus)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withCurrentNotifications:(id)a15 withCurrentNeedPolicy:(id)a16 withSchedulerPolicy:(id)a17 withStagerPolicy:(id)a18 withDownloadUserInitiated:(BOOL)a19 withDownloadProgress:(id)a20 withDownloadedNetworkBytes:(int64_t)a21 withDownloadedFilesystemBytes:(int64_t)a22 withCurrentLockUsage:(id)a23 withSelectorsForStaging:(id)a24 withAvailableForUseError:(id)a25 withNewerVersionError:(id)a26;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withDownloadedCatalogCachedAssetSetID:(id)a15 withDownloadedCatalogDownloadedFromLive:(id)a16 withDownloadedCatalogLastTimeChecked:(id)a17 withDownloadedCatalogPostedDate:(id)a18 withCurrentNotifications:(id)a19 withCurrentNeedPolicy:(id)a20 withSchedulerPolicy:(id)a21 withStagerPolicy:(id)a22 havingReceivedLookupResponse:(BOOL)a23 vendingAtomicInstanceForConfiguredEntries:(BOOL)a24 withDownloadUserInitiated:(BOOL)a25 withDownloadProgress:(id)a26 withDownloadedNetworkBytes:(int64_t)a27 withDownloadedFilesystemBytes:(int64_t)a28 withCurrentLockUsage:(id)a29 withSelectorsForStaging:(id)a30 withAvailableForUseError:(id)a31 withNewerVersionError:(id)a32;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withPreviouslyVendedLockedAtomicInstance:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withPreviouslyVendedLockedAtomicInstance:(id)a16 withDownloadedCatalogCachedAssetSetID:(id)a17 withDownloadedCatalogDownloadedFromLive:(id)a18 withDownloadedCatalogLastTimeChecked:(id)a19 withDownloadedCatalogPostedDate:(id)a20 withCurrentNotifications:(id)a21 withCurrentNeedPolicy:(id)a22 withSchedulerPolicy:(id)a23 withStagerPolicy:(id)a24 havingReceivedLookupResponse:(BOOL)a25 vendingAtomicInstanceForConfiguredEntries:(BOOL)a26 withDownloadUserInitiated:(BOOL)a27 withDownloadProgress:(id)a28 withDownloadedNetworkBytes:(int64_t)a29 withDownloadedFilesystemBytes:(int64_t)a30 withCurrentLockUsage:(id)a31 withSelectorsForStaging:(id)a32 withAvailableForUseError:(id)a33 withNewerVersionError:(id)a34;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withNewerAtomicInstanceDiscovered:(id)a7 withNewerDiscoveredAtomicEntries:(id)a8 withLatestDownloadedAtomicInstance:(id)a9 withLatestDowloadedAtomicInstanceEntries:(id)a10 withAllDownloadedAtomicInstanceEntries:(id)a11 withCurrentNotifications:(id)a12 withCurrentNeedPolicy:(id)a13 withSchedulerPolicy:(id)a14 withStagerPolicy:(id)a15 withDownloadUserInitiated:(BOOL)a16 withDownloadProgress:(id)a17 withDownloadedNetworkBytes:(int64_t)a18 withDownloadedFilesystemBytes:(int64_t)a19 withCurrentLockUsage:(id)a20 withSelectorsForStaging:(id)a21 withAvailableForUseError:(id)a22 withNewerVersionError:(id)a23;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetSetStatus

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withNewerAtomicInstanceDiscovered:(id)a7 withNewerDiscoveredAtomicEntries:(id)a8 withLatestDownloadedAtomicInstance:(id)a9 withLatestDowloadedAtomicInstanceEntries:(id)a10 withAllDownloadedAtomicInstanceEntries:(id)a11 withCurrentNotifications:(id)a12 withCurrentNeedPolicy:(id)a13 withSchedulerPolicy:(id)a14 withStagerPolicy:(id)a15 withDownloadUserInitiated:(BOOL)a16 withDownloadProgress:(id)a17 withDownloadedNetworkBytes:(int64_t)a18 withDownloadedFilesystemBytes:(int64_t)a19 withCurrentLockUsage:(id)a20 withSelectorsForStaging:(id)a21 withAvailableForUseError:(id)a22 withNewerVersionError:(id)a23
{
  BYTE2(v24) = a16;
  LOWORD(v24) = 0;
  return [MANAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:a3 withConfiguredAssetEntries:a4 withAtomicInstancesDownloaded:a5 withCatalogCachedAssetSetID:a6 withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:a7 withLatestDownloadedAtomicInstance:a8 withLatestDowloadedAtomicInstanceEntries:a9 withDownloadedCatalogCachedAssetSetID:a10 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:a12 withSchedulerPolicy:a13 withStagerPolicy:a14 havingReceivedLookupResponse:a15 vendingAtomicInstanceForConfiguredEntries:v24 withDownloadUserInitiated:a17 withDownloadProgress:a18 withDownloadedNetworkBytes:a19 withDownloadedFilesystemBytes:a20 withCurrentLockUsage:a21 withSelectorsForStaging:a22 withAvailableForUseError:a23 withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withCurrentNotifications:(id)a15 withCurrentNeedPolicy:(id)a16 withSchedulerPolicy:(id)a17 withStagerPolicy:(id)a18 withDownloadUserInitiated:(BOOL)a19 withDownloadProgress:(id)a20 withDownloadedNetworkBytes:(int64_t)a21 withDownloadedFilesystemBytes:(int64_t)a22 withCurrentLockUsage:(id)a23 withSelectorsForStaging:(id)a24 withAvailableForUseError:(id)a25 withNewerVersionError:(id)a26
{
  v58 = a3;
  v41 = a4;
  v57 = a4;
  v42 = a5;
  v56 = a5;
  v55 = a6;
  v54 = a7;
  v53 = a8;
  v52 = a9;
  v51 = a10;
  v50 = a11;
  v49 = a12;
  v48 = a13;
  v47 = a14;
  v31 = a15;
  v32 = a16;
  v33 = a17;
  v34 = a18;
  v35 = a20;
  v46 = a23;
  v45 = a24;
  v44 = a25;
  v36 = a26;
  v59.receiver = self;
  v59.super_class = MANAutoAssetSetStatus;
  v37 = [(MANAutoAssetSetStatus *)&v59 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_clientDomainName, a3);
    objc_storeStrong(&v38->_assetSetIdentifier, v41);
    objc_storeStrong(&v38->_configuredAssetEntries, v42);
    objc_storeStrong(&v38->_atomicInstancesDownloaded, a6);
    objc_storeStrong(&v38->_catalogCachedAssetSetID, a7);
    objc_storeStrong(&v38->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v38->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v38->_catalogPostedDate, a10);
    objc_storeStrong(&v38->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v38->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v38->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v38->_latestDowloadedAtomicInstanceEntries, a14);
    objc_storeStrong(&v38->_currentNotifications, a15);
    objc_storeStrong(&v38->_currentNeedPolicy, a16);
    objc_storeStrong(&v38->_schedulerPolicy, a17);
    objc_storeStrong(&v38->_stagerPolicy, a18);
    v38->_downloadUserInitiated = a19;
    objc_storeStrong(&v38->_downloadProgress, a20);
    v38->_downloadedNetworkBytes = a21;
    v38->_downloadedFilesystemBytes = a22;
    objc_storeStrong(&v38->_currentLockUsage, a23);
    objc_storeStrong(&v38->_selectorsForStaging, a24);
    objc_storeStrong(&v38->_availableForUseError, a25);
    objc_storeStrong(&v38->_newerVersionError, a26);
  }

  return v38;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withDownloadedCatalogCachedAssetSetID:(id)a15 withDownloadedCatalogDownloadedFromLive:(id)a16 withDownloadedCatalogLastTimeChecked:(id)a17 withDownloadedCatalogPostedDate:(id)a18 withCurrentNotifications:(id)a19 withCurrentNeedPolicy:(id)a20 withSchedulerPolicy:(id)a21 withStagerPolicy:(id)a22 havingReceivedLookupResponse:(BOOL)a23 vendingAtomicInstanceForConfiguredEntries:(BOOL)a24 withDownloadUserInitiated:(BOOL)a25 withDownloadProgress:(id)a26 withDownloadedNetworkBytes:(int64_t)a27 withDownloadedFilesystemBytes:(int64_t)a28 withCurrentLockUsage:(id)a29 withSelectorsForStaging:(id)a30 withAvailableForUseError:(id)a31 withNewerVersionError:(id)a32
{
  v68 = a3;
  v46 = a4;
  v67 = a4;
  v66 = a5;
  v65 = a6;
  v47 = a7;
  v64 = a7;
  v63 = a8;
  v62 = a9;
  v61 = a10;
  v60 = a11;
  v59 = a12;
  v58 = a13;
  v57 = a14;
  v56 = a15;
  v55 = a16;
  v54 = a17;
  v53 = a18;
  v37 = a19;
  v38 = a20;
  v39 = a21;
  v40 = a22;
  v52 = a26;
  v51 = a29;
  v50 = a30;
  v49 = a31;
  v41 = a32;
  v69.receiver = self;
  v69.super_class = MANAutoAssetSetStatus;
  v42 = [(MANAutoAssetSetStatus *)&v69 init];
  v43 = v42;
  if (v42)
  {
    objc_storeStrong(&v42->_clientDomainName, a3);
    objc_storeStrong(&v43->_assetSetIdentifier, v46);
    objc_storeStrong(&v43->_configuredAssetEntries, a5);
    objc_storeStrong(&v43->_atomicInstancesDownloaded, a6);
    objc_storeStrong(&v43->_catalogCachedAssetSetID, v47);
    objc_storeStrong(&v43->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v43->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v43->_catalogPostedDate, a10);
    objc_storeStrong(&v43->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v43->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v43->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v43->_latestDowloadedAtomicInstanceEntries, a14);
    objc_storeStrong(&v43->_downloadedCatalogCachedAssetSetID, a15);
    objc_storeStrong(&v43->_downloadedCatalogDownloadedFromLive, a16);
    objc_storeStrong(&v43->_downloadedCatalogLastTimeChecked, a17);
    objc_storeStrong(&v43->_downloadedCatalogPostedDate, a18);
    objc_storeStrong(&v43->_currentNotifications, a19);
    objc_storeStrong(&v43->_currentNeedPolicy, a20);
    objc_storeStrong(&v43->_schedulerPolicy, a21);
    objc_storeStrong(&v43->_stagerPolicy, a22);
    v43->_haveReceivedLookupResponse = a23;
    v43->_vendingAtomicInstanceForConfiguredEntries = a24;
    v43->_downloadUserInitiated = a25;
    objc_storeStrong(&v43->_downloadProgress, a26);
    v43->_downloadedNetworkBytes = a27;
    v43->_downloadedFilesystemBytes = a28;
    objc_storeStrong(&v43->_currentLockUsage, a29);
    objc_storeStrong(&v43->_selectorsForStaging, a30);
    objc_storeStrong(&v43->_availableForUseError, a31);
    objc_storeStrong(&v43->_newerVersionError, a32);
  }

  return v43;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withPreviouslyVendedLockedAtomicInstance:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33
{
  v71 = a3;
  v48 = a4;
  v70 = a4;
  v49 = a5;
  v69 = a5;
  v50 = a6;
  v68 = a6;
  v67 = a7;
  v66 = a8;
  v65 = a9;
  v64 = a10;
  v63 = a11;
  v62 = a12;
  v61 = a13;
  v60 = a14;
  v59 = a15;
  v58 = a16;
  v57 = a17;
  v56 = a18;
  v38 = a19;
  v39 = a20;
  v40 = a21;
  v41 = a22;
  v42 = a23;
  v55 = a27;
  v54 = a30;
  v53 = a31;
  v52 = a32;
  v43 = a33;
  v72.receiver = self;
  v72.super_class = MANAutoAssetSetStatus;
  v44 = [(MANAutoAssetSetStatus *)&v72 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_clientDomainName, a3);
    objc_storeStrong(&v45->_assetSetIdentifier, v48);
    objc_storeStrong(&v45->_configuredAssetEntries, v49);
    objc_storeStrong(&v45->_atomicInstancesDownloaded, v50);
    objc_storeStrong(&v45->_catalogCachedAssetSetID, a7);
    objc_storeStrong(&v45->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v45->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v45->_catalogPostedDate, a10);
    objc_storeStrong(&v45->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v45->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v45->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v45->_latestDowloadedAtomicInstanceEntries, a14);
    objc_storeStrong(&v45->_previouslyVendedLockedAtomicInstance, a15);
    objc_storeStrong(&v45->_downloadedCatalogCachedAssetSetID, a16);
    objc_storeStrong(&v45->_downloadedCatalogDownloadedFromLive, a17);
    objc_storeStrong(&v45->_downloadedCatalogLastTimeChecked, a18);
    objc_storeStrong(&v45->_downloadedCatalogPostedDate, a19);
    objc_storeStrong(&v45->_currentNotifications, a20);
    objc_storeStrong(&v45->_currentNeedPolicy, a21);
    objc_storeStrong(&v45->_schedulerPolicy, a22);
    objc_storeStrong(&v45->_stagerPolicy, a23);
    v45->_haveReceivedLookupResponse = a24;
    v45->_vendingAtomicInstanceForConfiguredEntries = a25;
    v45->_downloadUserInitiated = a26;
    objc_storeStrong(&v45->_downloadProgress, a27);
    v45->_downloadedNetworkBytes = a28;
    v45->_downloadedFilesystemBytes = a29;
    objc_storeStrong(&v45->_currentLockUsage, a30);
    objc_storeStrong(&v45->_selectorsForStaging, a31);
    objc_storeStrong(&v45->_availableForUseError, a32);
    objc_storeStrong(&v45->_newerVersionError, a33);
  }

  return v45;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withPreviouslyVendedLockedAtomicInstance:(id)a16 withDownloadedCatalogCachedAssetSetID:(id)a17 withDownloadedCatalogDownloadedFromLive:(id)a18 withDownloadedCatalogLastTimeChecked:(id)a19 withDownloadedCatalogPostedDate:(id)a20 withCurrentNotifications:(id)a21 withCurrentNeedPolicy:(id)a22 withSchedulerPolicy:(id)a23 withStagerPolicy:(id)a24 havingReceivedLookupResponse:(BOOL)a25 vendingAtomicInstanceForConfiguredEntries:(BOOL)a26 withDownloadUserInitiated:(BOOL)a27 withDownloadProgress:(id)a28 withDownloadedNetworkBytes:(int64_t)a29 withDownloadedFilesystemBytes:(int64_t)a30 withCurrentLockUsage:(id)a31 withSelectorsForStaging:(id)a32 withAvailableForUseError:(id)a33 withNewerVersionError:(id)a34
{
  v73 = a3;
  v52 = a4;
  v72 = a4;
  v53 = a5;
  v70 = a5;
  v54 = a6;
  v69 = a6;
  v55 = a7;
  v67 = a7;
  v56 = a8;
  v65 = a8;
  v63 = a9;
  v61 = a10;
  v74 = a11;
  v71 = a12;
  v68 = a13;
  v66 = a15;
  v64 = a16;
  v62 = a17;
  v60 = a18;
  v39 = a19;
  v40 = a20;
  v41 = a21;
  v42 = a22;
  v43 = a23;
  v44 = a24;
  v45 = a28;
  v46 = a31;
  v47 = a32;
  v59 = a33;
  v58 = a34;
  v75.receiver = self;
  v75.super_class = MANAutoAssetSetStatus;
  v48 = [(MANAutoAssetSetStatus *)&v75 init];
  v49 = v48;
  if (v48)
  {
    objc_storeStrong(&v48->_clientDomainName, a3);
    objc_storeStrong(&v49->_assetSetIdentifier, v52);
    objc_storeStrong(&v49->_configuredAssetEntries, v53);
    objc_storeStrong(&v49->_atomicInstancesDownloaded, v54);
    objc_storeStrong(&v49->_catalogCachedAssetSetID, v55);
    objc_storeStrong(&v49->_catalogDownloadedFromLive, v56);
    objc_storeStrong(&v49->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v49->_catalogPostedDate, a10);
    objc_storeStrong(&v49->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v49->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v49->_latestDownloadedAtomicInstance, a13);
    v49->_latestDownloadedAtomicInstanceFromPreSUStaging = a14;
    objc_storeStrong(&v49->_latestDowloadedAtomicInstanceEntries, a15);
    objc_storeStrong(&v49->_previouslyVendedLockedAtomicInstance, a16);
    objc_storeStrong(&v49->_downloadedCatalogCachedAssetSetID, a17);
    objc_storeStrong(&v49->_downloadedCatalogDownloadedFromLive, a18);
    objc_storeStrong(&v49->_downloadedCatalogLastTimeChecked, a19);
    objc_storeStrong(&v49->_downloadedCatalogPostedDate, a20);
    objc_storeStrong(&v49->_currentNotifications, a21);
    objc_storeStrong(&v49->_currentNeedPolicy, a22);
    objc_storeStrong(&v49->_schedulerPolicy, a23);
    objc_storeStrong(&v49->_stagerPolicy, a24);
    v49->_haveReceivedLookupResponse = a25;
    v49->_vendingAtomicInstanceForConfiguredEntries = a26;
    v49->_downloadUserInitiated = a27;
    objc_storeStrong(&v49->_downloadProgress, a28);
    v49->_downloadedNetworkBytes = a29;
    v49->_downloadedFilesystemBytes = a30;
    objc_storeStrong(&v49->_currentLockUsage, a31);
    objc_storeStrong(&v49->_selectorsForStaging, a32);
    objc_storeStrong(&v49->_availableForUseError, a33);
    objc_storeStrong(&v49->_newerVersionError, a34);
  }

  return v49;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33
{
  v68 = a3;
  v48 = a4;
  v66 = a4;
  v49 = a5;
  v65 = a5;
  v63 = a6;
  v61 = a7;
  v59 = a8;
  v57 = a9;
  v56 = a10;
  v69 = a11;
  v67 = a12;
  v64 = a13;
  v62 = a15;
  v60 = a16;
  v58 = a17;
  v55 = a18;
  v38 = a19;
  v39 = a20;
  v40 = a21;
  v41 = a22;
  v42 = a23;
  v43 = a27;
  v54 = a30;
  v53 = a31;
  v52 = a32;
  v51 = a33;
  v70.receiver = self;
  v70.super_class = MANAutoAssetSetStatus;
  v44 = [(MANAutoAssetSetStatus *)&v70 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_clientDomainName, a3);
    objc_storeStrong(&v45->_assetSetIdentifier, v48);
    objc_storeStrong(&v45->_configuredAssetEntries, v49);
    objc_storeStrong(&v45->_atomicInstancesDownloaded, a6);
    objc_storeStrong(&v45->_catalogCachedAssetSetID, a7);
    objc_storeStrong(&v45->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v45->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v45->_catalogPostedDate, a10);
    objc_storeStrong(&v45->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v45->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v45->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v45->_latestDowloadedAtomicInstanceEntries, a15);
    v45->_latestDownloadedAtomicInstanceFromPreSUStaging = a14;
    objc_storeStrong(&v45->_downloadedCatalogCachedAssetSetID, a16);
    objc_storeStrong(&v45->_downloadedCatalogDownloadedFromLive, a17);
    objc_storeStrong(&v45->_downloadedCatalogLastTimeChecked, a18);
    objc_storeStrong(&v45->_downloadedCatalogPostedDate, a19);
    objc_storeStrong(&v45->_currentNotifications, a20);
    objc_storeStrong(&v45->_currentNeedPolicy, a21);
    objc_storeStrong(&v45->_schedulerPolicy, a22);
    objc_storeStrong(&v45->_stagerPolicy, a23);
    v45->_haveReceivedLookupResponse = a24;
    v45->_vendingAtomicInstanceForConfiguredEntries = a25;
    v45->_downloadUserInitiated = a26;
    objc_storeStrong(&v45->_downloadProgress, a27);
    v45->_downloadedNetworkBytes = a28;
    v45->_downloadedFilesystemBytes = a29;
    objc_storeStrong(&v45->_currentLockUsage, a30);
    objc_storeStrong(&v45->_selectorsForStaging, a31);
    objc_storeStrong(&v45->_availableForUseError, a32);
    objc_storeStrong(&v45->_newerVersionError, a33);
  }

  return v45;
}

- (MANAutoAssetSetStatus)initWithCoder:(id)a3
{
  v4 = a3;
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

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v15;

    v17 = [NSSet alloc];
    v69[0] = objc_opt_class();
    v69[1] = objc_opt_class();
    v69[2] = objc_opt_class();
    v18 = [NSArray arrayWithObjects:v69 count:3];
    v19 = [v17 initWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v20;

    v22 = [v4 decodeObjectOfClasses:v67 forKey:@"atomicInstancesDownloaded"];
    atomicInstancesDownloaded = v5->_atomicInstancesDownloaded;
    v5->_atomicInstancesDownloaded = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newerAtomicInstanceDiscovered"];
    newerAtomicInstanceDiscovered = v5->_newerAtomicInstanceDiscovered;
    v5->_newerAtomicInstanceDiscovered = v32;

    v5->_latestDownloadedAtomicInstanceFromPreSUStaging = [v4 decodeBoolForKey:@"latestDownloadedAtomicInstanceFromPreSUStaging"];
    v34 = [v4 decodeObjectOfClasses:v8 forKey:@"newerDiscoveredAtomicEntries"];
    newerDiscoveredAtomicEntries = v5->_newerDiscoveredAtomicEntries;
    v5->_newerDiscoveredAtomicEntries = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v36;

    v38 = [v4 decodeObjectOfClasses:v8 forKey:@"latestDowloadedAtomicInstanceEntries"];
    latestDowloadedAtomicInstanceEntries = v5->_latestDowloadedAtomicInstanceEntries;
    v5->_latestDowloadedAtomicInstanceEntries = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogCachedAssetSetID"];
    downloadedCatalogCachedAssetSetID = v5->_downloadedCatalogCachedAssetSetID;
    v5->_downloadedCatalogCachedAssetSetID = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogDownloadedFromLive"];
    downloadedCatalogDownloadedFromLive = v5->_downloadedCatalogDownloadedFromLive;
    v5->_downloadedCatalogDownloadedFromLive = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogLastTimeChecked"];
    downloadedCatalogLastTimeChecked = v5->_downloadedCatalogLastTimeChecked;
    v5->_downloadedCatalogLastTimeChecked = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogPostedDate"];
    downloadedCatalogPostedDate = v5->_downloadedCatalogPostedDate;
    v5->_downloadedCatalogPostedDate = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentNotifications"];
    currentNotifications = v5->_currentNotifications;
    v5->_currentNotifications = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentNeedPolicy"];
    currentNeedPolicy = v5->_currentNeedPolicy;
    v5->_currentNeedPolicy = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"schedulerPolicy"];
    schedulerPolicy = v5->_schedulerPolicy;
    v5->_schedulerPolicy = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagerPolicy"];
    stagerPolicy = v5->_stagerPolicy;
    v5->_stagerPolicy = v54;

    v5->_haveReceivedLookupResponse = [v4 decodeBoolForKey:@"haveReceivedLookupResponse"];
    v5->_vendingAtomicInstanceForConfiguredEntries = [v4 decodeBoolForKey:@"vendingAtomicInstanceForConfiguredEntries"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v56;

    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v58 = [v4 decodeObjectOfClasses:v10 forKey:@"currentLockUsage"];
    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v58;

    v60 = [v4 decodeObjectOfClasses:v12 forKey:@"selectorsForStaging"];
    selectorsForStaging = v5->_selectorsForStaging;
    v5->_selectorsForStaging = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v64;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MANAutoAssetSetStatus *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  [v4 encodeObject:v6 forKey:@"assetSetIdentifier"];

  v7 = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  [v4 encodeObject:v7 forKey:@"configuredAssetEntries"];

  v8 = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  [v4 encodeObject:v8 forKey:@"atomicInstancesDownloaded"];

  v9 = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  [v4 encodeObject:v9 forKey:@"catalogCachedAssetSetID"];

  v10 = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
  [v4 encodeObject:v10 forKey:@"catalogDownloadedFromLive"];

  v11 = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
  [v4 encodeObject:v11 forKey:@"catalogLastTimeChecked"];

  v12 = [(MANAutoAssetSetStatus *)self catalogPostedDate];
  [v4 encodeObject:v12 forKey:@"catalogPostedDate"];

  v13 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  [v4 encodeObject:v13 forKey:@"newerAtomicInstanceDiscovered"];

  [v4 encodeBool:-[MANAutoAssetSetStatus latestDownloadedAtomicInstanceFromPreSUStaging](self forKey:{"latestDownloadedAtomicInstanceFromPreSUStaging"), @"latestDownloadedAtomicInstanceFromPreSUStaging"}];
  v14 = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  [v4 encodeObject:v14 forKey:@"newerDiscoveredAtomicEntries"];

  v15 = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  [v4 encodeObject:v15 forKey:@"latestDownloadedAtomicInstance"];

  v16 = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  [v4 encodeObject:v16 forKey:@"latestDowloadedAtomicInstanceEntries"];

  v17 = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  [v4 encodeObject:v17 forKey:@"downloadedCatalogCachedAssetSetID"];

  v18 = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  [v4 encodeObject:v18 forKey:@"downloadedCatalogDownloadedFromLive"];

  v19 = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  [v4 encodeObject:v19 forKey:@"downloadedCatalogLastTimeChecked"];

  v20 = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  [v4 encodeObject:v20 forKey:@"downloadedCatalogPostedDate"];

  v21 = [(MANAutoAssetSetStatus *)self currentNotifications];
  [v4 encodeObject:v21 forKey:@"currentNotifications"];

  v22 = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
  [v4 encodeObject:v22 forKey:@"currentNeedPolicy"];

  v23 = [(MANAutoAssetSetStatus *)self schedulerPolicy];
  [v4 encodeObject:v23 forKey:@"schedulerPolicy"];

  v24 = [(MANAutoAssetSetStatus *)self stagerPolicy];
  [v4 encodeObject:v24 forKey:@"stagerPolicy"];

  [v4 encodeBool:-[MANAutoAssetSetStatus haveReceivedLookupResponse](self forKey:{"haveReceivedLookupResponse"), @"haveReceivedLookupResponse"}];
  [v4 encodeBool:-[MANAutoAssetSetStatus vendingAtomicInstanceForConfiguredEntries](self forKey:{"vendingAtomicInstanceForConfiguredEntries"), @"vendingAtomicInstanceForConfiguredEntries"}];
  [v4 encodeBool:-[MANAutoAssetSetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  v25 = [(MANAutoAssetSetStatus *)self downloadProgress];
  [v4 encodeObject:v25 forKey:@"downloadProgress"];

  [v4 encodeInteger:-[MANAutoAssetSetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v4 encodeInteger:-[MANAutoAssetSetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  v26 = [(MANAutoAssetSetStatus *)self currentLockUsage];
  [v4 encodeObject:v26 forKey:@"currentLockUsage"];

  v27 = [(MANAutoAssetSetStatus *)self selectorsForStaging];
  [v4 encodeObject:v27 forKey:@"selectorsForStaging"];

  v28 = [(MANAutoAssetSetStatus *)self availableForUseError];
  [v4 encodeObject:v28 forKey:@"availableForUseError"];

  v29 = [(MANAutoAssetSetStatus *)self newerVersionError];
  [v4 encodeObject:v29 forKey:@"newerVersionError"];
}

- (id)copy
{
  v28 = [MANAutoAssetSetStatus alloc];
  v48 = [(MANAutoAssetSetStatus *)self clientDomainName];
  v47 = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  v34 = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  v46 = [v34 copy];
  v33 = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v45 = [v33 copy];
  v44 = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  v41 = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
  v43 = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
  v42 = [(MANAutoAssetSetStatus *)self catalogPostedDate];
  v40 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  v32 = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v39 = [v32 copy];
  v31 = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v38 = [v31 copy];
  v25 = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstanceFromPreSUStaging];
  v30 = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v37 = [v30 copy];
  v36 = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  v35 = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  v22 = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  v21 = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  v27 = [(MANAutoAssetSetStatus *)self currentNotifications];
  v17 = [v27 copy];
  v26 = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
  v19 = [v26 copy];
  v24 = [(MANAutoAssetSetStatus *)self schedulerPolicy];
  v18 = [v24 copy];
  v23 = [(MANAutoAssetSetStatus *)self stagerPolicy];
  v16 = [v23 copy];
  v15 = [(MANAutoAssetSetStatus *)self haveReceivedLookupResponse];
  v3 = [(MANAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries];
  v4 = [(MANAutoAssetSetStatus *)self downloadUserInitiated];
  v20 = [(MANAutoAssetSetStatus *)self downloadProgress];
  v5 = [v20 copy];
  v6 = [(MANAutoAssetSetStatus *)self downloadedNetworkBytes];
  v7 = [(MANAutoAssetSetStatus *)self downloadedFilesystemBytes];
  v8 = [(MANAutoAssetSetStatus *)self currentLockUsage];
  v9 = [(MANAutoAssetSetStatus *)self selectorsForStaging];
  v10 = [(MANAutoAssetSetStatus *)self availableForUseError];
  v11 = [(MANAutoAssetSetStatus *)self newerVersionError];
  BYTE2(v14) = v4;
  BYTE1(v14) = v3;
  LOBYTE(v14) = v15;
  LOBYTE(v13) = v25;
  v29 = [MANAutoAssetSetStatus initStatusForClientDomain:v28 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v48 withAtomicInstancesDownloaded:v47 withCatalogCachedAssetSetID:v46 withCatalogDownloadedFromLive:v45 withCatalogLastTimeChecked:v44 withCatalogPostedDate:v41 withNewerAtomicInstanceDiscovered:v43 withNewerDiscoveredAtomicEntries:v42 withLatestDownloadedAtomicInstance:v40 withLatestDownloadedAtomicInstanceFromPreSUStaging:v39 withLatestDowloadedAtomicInstanceEntries:v38 withDownloadedCatalogCachedAssetSetID:v13 withDownloadedCatalogDownloadedFromLive:v37 withDownloadedCatalogLastTimeChecked:v36 withDownloadedCatalogPostedDate:v35 withCurrentNotifications:v22 withCurrentNeedPolicy:v21 withSchedulerPolicy:v17 withStagerPolicy:v19 havingReceivedLookupResponse:v18 vendingAtomicInstanceForConfiguredEntries:v16 withDownloadUserInitiated:v14 withDownloadProgress:v5 withDownloadedNetworkBytes:v6 withDownloadedFilesystemBytes:v7 withCurrentLockUsage:v8 withSelectorsForStaging:v9 withAvailableForUseError:v10 withNewerVersionError:v11];

  return v29;
}

- (id)description
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v4 = [(MANAutoAssetSetStatus *)self clientDomainName];
  v94 = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  v63 = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  if (v63)
  {
    v5 = [NSString alloc];
    v48 = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
    v84 = [v5 initWithFormat:@"%ld", objc_msgSend(v48, "count")];
  }

  else
  {
    v84 = @"N";
  }

  v62 = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  if (v62)
  {
    v6 = [NSString alloc];
    v47 = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
    v83 = [v6 initWithFormat:@"%ld", objc_msgSend(v47, "count")];
  }

  else
  {
    v83 = @"N";
  }

  v7 = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  if (v7)
  {
    v82 = [(MANAutoAssetSetStatus *)self catalogCachedAssetSetID];
  }

  else
  {
    v82 = @"N";
  }

  v60 = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
  if (v60)
  {
    v46 = [(MANAutoAssetSetStatus *)self catalogDownloadedFromLive];
    v81 = [v46 path];
  }

  else
  {
    v81 = @"N";
  }

  v8 = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
  if (v8)
  {
    v45 = [(MANAutoAssetSetStatus *)self catalogLastTimeChecked];
    v80 = [v3 stringFromDate:?];
  }

  else
  {
    v80 = @"N";
  }

  v9 = [(MANAutoAssetSetStatus *)self catalogPostedDate];
  if (v9)
  {
    v44 = [(MANAutoAssetSetStatus *)self catalogPostedDate];
    v79 = [v3 stringFromDate:?];
  }

  else
  {
    v79 = @"N";
  }

  v10 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (v10)
  {
    v78 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    v78 = @"N";
  }

  v11 = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  if (v11)
  {
    v12 = [NSString alloc];
    v43 = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
    v77 = [v12 initWithFormat:@"%ld", objc_msgSend(v43, "count")];
  }

  else
  {
    v77 = @"N";
  }

  [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v93 = v13 = @"N";
  v61 = v7;
  if (v93)
  {
    v76 = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v76 = @"N";
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
  v92 = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  if (v92)
  {
    v15 = [NSString alloc];
    v42 = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
    v13 = [v15 initWithFormat:@"%ld", objc_msgSend(v42, "count")];
  }

  v91 = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  if (v91)
  {
    v74 = [(MANAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  }

  else
  {
    v74 = @"N";
  }

  v90 = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  if (v90)
  {
    v73 = [(MANAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  }

  else
  {
    v73 = @"N";
  }

  v89 = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  if (v89)
  {
    v41 = [(MANAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
    v72 = [v3 stringFromDate:?];
  }

  else
  {
    v72 = @"N";
  }

  v88 = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  if (v88)
  {
    v40 = [(MANAutoAssetSetStatus *)self downloadedCatalogPostedDate];
    v71 = [v3 stringFromDate:?];
  }

  else
  {
    v71 = @"N";
  }

  v55 = [(MANAutoAssetSetStatus *)self currentNotifications];
  v87 = [v55 summary];
  v86 = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
  if (v86)
  {
    v39 = [(MANAutoAssetSetStatus *)self currentNeedPolicy];
    v70 = [v39 summary];
  }

  else
  {
    v70 = @"N";
  }

  v85 = [(MANAutoAssetSetStatus *)self schedulerPolicy];
  v59 = v8;
  if (v85)
  {
    v38 = [(MANAutoAssetSetStatus *)self schedulerPolicy];
    v69 = [v38 summary];
  }

  else
  {
    v69 = @"N";
  }

  [(MANAutoAssetSetStatus *)self stagerPolicy];
  v53 = v16 = @"N";
  if (v53)
  {
    v37 = [(MANAutoAssetSetStatus *)self stagerPolicy];
    v68 = [v37 summary];
  }

  else
  {
    v68 = @"N";
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
  v52 = [(MANAutoAssetSetStatus *)self downloadProgress];
  v64 = v4;
  v65 = v3;
  v56 = v11;
  v75 = v13;
  if (v52)
  {
    v36 = [(MANAutoAssetSetStatus *)self downloadProgress];
    v16 = [v36 description];
  }

  v20 = [(MANAutoAssetSetStatus *)self downloadedNetworkBytes];
  v21 = [(MANAutoAssetSetStatus *)self downloadedFilesystemBytes];
  v22 = [(MANAutoAssetSetStatus *)self currentLockUsage];
  v57 = v10;
  if (v22)
  {
    v67 = [MANAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v67 = @"N";
  }

  v23 = [(MANAutoAssetSetStatus *)self selectorsForStaging];
  if (v23)
  {
    v66 = [MANAutoAssetSetStatus newSelectorsForStagingSummary:self];
  }

  else
  {
    v66 = @"N";
  }

  v58 = v9;
  v24 = [(MANAutoAssetSetStatus *)self availableForUseError];
  if (v24)
  {
    v35 = [(MANAutoAssetSetStatus *)self availableForUseError];
    v25 = [v35 checkedSummary];
  }

  else
  {
    v25 = @"N";
  }

  v26 = [(MANAutoAssetSetStatus *)self newerVersionError];
  if (v26)
  {
    v27 = [(MANAutoAssetSetStatus *)self newerVersionError];
    v28 = [v27 checkedSummary];
    v33 = v21;
    v29 = v64;
    v30 = [NSString stringWithFormat:@"                      clientDomainName:        %@\n                    assetSetIdentifier:        %@\n                configuredAssetEntries:        %@\n             atomicInstancesDownloaded:        %@\n               catalogCachedAssetSetID:        %@\n             catalogDownloadedFromLive:        %@\n                catalogLastTimeChecked:        %@\n                     catalogPostedDate:        %@\n         newerAtomicInstanceDiscovered:        %@\n          newerDiscoveredAtomicEntries:        %@\n              latestDownloadedInstance:        %@\nlatestDownloadedAtomicInstanceFromPreSUStaging:%@\n        latestDowloadedInstanceEntries:        %@\n     downloadedCatalogCachedAssetSetID:        %@\n   downloadedCatalogDownloadedFromLive:        %@\n      downloadedCatalogLastTimeChecked:        %@\n           downloadedCatalogPostedDate:        %@\n                  currentNotifications:        %@\n                     currentNeedPolicy:        %@\n                currentSchedulerPolicy:        %@\n                   currentStagerPolicy:        %@\n            haveReceivedLookupResponse:        %@\n vendingAtomicInstanceForConfigEntries:        %@\n                 downloadUserInitiated:        %@\n                      downloadProgress:        \n%@\n                downloadedNetworkBytes:        %ld\n             downloadedFilesystemBytes:        %ld\n                      currentLockUsage:        \n%@\n                   selectorsForStaging:        %@\n                  availableForUseError:        %@\n                     newerVersionError:        %@\n", v64, v94, v84, v83, v82, v81, v80, v79, v78, v77, v76, v54, v75, v74, v73, v72, v71, v87, v70, v69, v68, v51, v50, v49, v16, v20, v33, v67, v66, v25, v28];
  }

  else
  {
    v34 = v21;
    v29 = v64;
    v30 = [NSString stringWithFormat:@"                      clientDomainName:        %@\n                    assetSetIdentifier:        %@\n                configuredAssetEntries:        %@\n             atomicInstancesDownloaded:        %@\n               catalogCachedAssetSetID:        %@\n             catalogDownloadedFromLive:        %@\n                catalogLastTimeChecked:        %@\n                     catalogPostedDate:        %@\n         newerAtomicInstanceDiscovered:        %@\n          newerDiscoveredAtomicEntries:        %@\n              latestDownloadedInstance:        %@\nlatestDownloadedAtomicInstanceFromPreSUStaging:%@\n        latestDowloadedInstanceEntries:        %@\n     downloadedCatalogCachedAssetSetID:        %@\n   downloadedCatalogDownloadedFromLive:        %@\n      downloadedCatalogLastTimeChecked:        %@\n           downloadedCatalogPostedDate:        %@\n                  currentNotifications:        %@\n                     currentNeedPolicy:        %@\n                currentSchedulerPolicy:        %@\n                   currentStagerPolicy:        %@\n            haveReceivedLookupResponse:        %@\n vendingAtomicInstanceForConfigEntries:        %@\n                 downloadUserInitiated:        %@\n                      downloadProgress:        \n%@\n                downloadedNetworkBytes:        %ld\n             downloadedFilesystemBytes:        %ld\n                      currentLockUsage:        \n%@\n                   selectorsForStaging:        %@\n                  availableForUseError:        %@\n                     newerVersionError:        %@\n", v64, v94, v84, v83, v82, v81, v80, v79, v78, v77, v76, v54, v75, v74, v73, v72, v71, v87, v70, v69, v68, v51, v50, v49, v16, v20, v34, v67, v66, v25, @"N"];
  }

  if (v24)
  {
  }

  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v52)
  {
  }

  if (v53)
  {
  }

  if (v85)
  {
  }

  if (v86)
  {
  }

  if (v88)
  {
  }

  if (v89)
  {
  }

  if (v90)
  {
  }

  if (v91)
  {
  }

  if (v92)
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

  if (v60)
  {
  }

  if (v61)
  {
  }

  if (v62)
  {
  }

  if (v63)
  {
  }

  v31 = v30;
  return v30;
}

- (id)summary
{
  v3 = [(MANAutoAssetSetStatus *)self clientDomainName];
  v4 = [(MANAutoAssetSetStatus *)self assetSetIdentifier];
  v35 = [(MANAutoAssetSetStatus *)self configuredAssetEntries];
  v30 = [v35 count];
  v34 = [(MANAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v29 = [v34 count];
  v33 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (v33)
  {
    v5 = [(MANAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    v5 = @"N";
  }

  v31 = [(MANAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v27 = [v31 count];
  v6 = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v36 = v4;
  v37 = v3;
  v32 = v5;
  if (v6)
  {
    v38 = [(MANAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v38 = @"N";
  }

  v28 = [(MANAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v7 = [v28 count];
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

  v11 = [(MANAutoAssetSetStatus *)self currentLockUsage];
  if (v11)
  {
    v12 = [MANAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v12 = @"N";
  }

  v13 = [(MANAutoAssetSetStatus *)self availableForUseError];
  if (v13)
  {
    v14 = [(MANAutoAssetSetStatus *)self availableForUseError];
    v15 = [v14 checkedSummary];
    v23 = v9;
    v25 = v10;
    v21 = v8;
    v16 = v32;
    v17 = v36;
    v18 = v37;
    v19 = [NSString stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v37, v36, v30, v29, v32, v27, v38, v7, v21, v23, v25, v12, v15];
  }

  else
  {
    v24 = v9;
    v26 = v10;
    v22 = v8;
    v16 = v32;
    v17 = v36;
    v18 = v37;
    v19 = [NSString stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v37, v36, v30, v29, v32, v27, v38, v7, v22, v24, v26, v12, @"N"];
  }

  if (v11)
  {
  }

  if (v6)
  {
  }

  if (v33)
  {
  }

  return v19;
}

+ (id)newCurrentLockUsageSummary:(id)a3
{
  v3 = a3;
  v4 = [v3 currentLockUsage];

  if (v4)
  {
    v4 = [[NSMutableString alloc] initWithString:@"{"];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [v3 currentLockUsage];
    v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v20 = *v29;
      v21 = v3;
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
          v8 = [v3 currentLockUsage];
          v9 = [v8 safeObjectForKey:v7 ofClass:objc_opt_class()];

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
                  [v4 appendString:{@", "}];
                }

                [v4 appendFormat:@"[lockReason:%@ atomicInstance:%@ lockCount:%ld]", v7, v16, v17];
                v14 = 0;
              }

              v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
              v14 = 0;
              v5 = 0;
            }

            while (v12);
          }

          v6 = v23 + 1;
          v3 = v21;
        }

        while ((v23 + 1) != v22);
        v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }

    [v4 appendString:@"}"];
  }

  return v4;
}

+ (id)newCurrentLockUsageDetailed:(id)a3
{
  v3 = a3;
  v4 = [v3 currentLockUsage];

  if (v4)
  {
    v5 = [NSString alloc];
    v6 = [v3 currentLockUsage];
    v7 = [v6 description];
    v4 = [v5 initWithFormat:@"%@", v7];
  }

  return v4;
}

+ (id)newSelectorsForStagingSummary:(id)a3
{
  v3 = a3;
  v4 = [v3 selectorsForStaging];

  if (v4)
  {
    v4 = [[NSMutableString alloc] initWithString:@"{"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [v3 selectorsForStaging];
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
          v11 = [v3 selectorsForStaging];
          v12 = [v11 safeObjectForKey:v10 ofClass:objc_opt_class()];

          v13 = [v12 count];
          if ((v8 & 1) == 0)
          {
            [v4 appendString:{@", "}];
          }

          [v4 appendFormat:@"%@:%ld", v10, v13];

          v8 = 0;
          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        v8 = 0;
      }

      while (v6);
    }

    [v4 appendString:@"}"];
  }

  return v4;
}

+ (id)shortTermLockDirectory:(id)a3 forAssetSetIdentifier:(id)a4
{
  v5 = a4;
  v6 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:a3];
  v7 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:v5];

  v8 = [NSString alloc];
  v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/locks");
  v10 = [v8 initWithFormat:@"%@/%@/%@/%@", v9, v6, v7, @"shared_locks"];

  return v10;
}

+ (id)shortTermLockFilename:(id)a3 forAssetSetIdentifier:(id)a4 forSetAtomicInstance:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:a3];
  v10 = [MANAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:v8];

  if (v7)
  {
    v11 = v7;
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

+ (id)_shortTermLockFilenameNormalizedComponent:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [NSCharacterSet characterSetWithCharactersInString:@":, /\\?~%*|<>[](){}"];;
    v5 = [v3 componentsSeparatedByCharactersInSet:v4];

    v6 = [v5 componentsJoinedByString:@"_"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end