@interface MASAutoAssetSetStatus
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetSetStatus

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = [classesCopy setByAddingObject:objc_opt_class()];

    if (__isPlatformVersionAtLeast(2, 17, 0, 0))
    {
      if (objc_opt_class())
      {
        v5 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v5;
      }

      if (objc_opt_class())
      {
        v6 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v6;
      }

      if (objc_opt_class())
      {
        v7 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v7;
      }

      if (objc_opt_class())
      {
        v8 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v8;
      }

      if (objc_opt_class())
      {
        v9 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v9;
      }

      if (objc_opt_class())
      {
        v10 = [v4 setByAddingObject:objc_opt_class()];

        v4 = v10;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)newShimmedToFramework:(id)framework
{
  frameworkCopy = framework;
  if (!frameworkCopy || !__isPlatformVersionAtLeast(2, 17, 0, 0) || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class())
  {
    goto LABEL_34;
  }

  v4 = [MAAutoAssetSetStatus alloc];
  v5 = objc_opt_respondsToSelector();

  v6 = [MAAutoAssetSetStatus alloc];
  if (v5)
  {
    clientDomainName = [frameworkCopy clientDomainName];
    assetSetIdentifier = [frameworkCopy assetSetIdentifier];
    configuredAssetEntries = [frameworkCopy configuredAssetEntries];
    newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];
    atomicInstancesDownloaded = [frameworkCopy atomicInstancesDownloaded];
    catalogCachedAssetSetID = [frameworkCopy catalogCachedAssetSetID];
    catalogDownloadedFromLive = [frameworkCopy catalogDownloadedFromLive];
    catalogLastTimeChecked = [frameworkCopy catalogLastTimeChecked];
    catalogPostedDate = [frameworkCopy catalogPostedDate];
    newerAtomicInstanceDiscovered = [frameworkCopy newerAtomicInstanceDiscovered];
    newerDiscoveredAtomicEntries = [frameworkCopy newerDiscoveredAtomicEntries];
    currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
    latestDownloadedAtomicInstance = [frameworkCopy latestDownloadedAtomicInstance];
    latestDownloadedAtomicInstanceFromPreSUStaging = [frameworkCopy latestDownloadedAtomicInstanceFromPreSUStaging];
    latestDowloadedAtomicInstanceEntries = [frameworkCopy latestDowloadedAtomicInstanceEntries];
    v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
    downloadedCatalogCachedAssetSetID = [frameworkCopy downloadedCatalogCachedAssetSetID];
    downloadedCatalogDownloadedFromLive = [frameworkCopy downloadedCatalogDownloadedFromLive];
    downloadedCatalogLastTimeChecked = [frameworkCopy downloadedCatalogLastTimeChecked];
    downloadedCatalogPostedDate = [frameworkCopy downloadedCatalogPostedDate];
    currentNotifications = [frameworkCopy currentNotifications];
    v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
    currentNeedPolicy = [frameworkCopy currentNeedPolicy];
    v7 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
    schedulerPolicy = [frameworkCopy schedulerPolicy];
    v142 = [MASAutoAssetSetPolicy newShimmedToFramework:schedulerPolicy];
    stagerPolicy = [frameworkCopy stagerPolicy];
    v130 = [MASAutoAssetSetPolicy newShimmedToFramework:stagerPolicy];
    haveReceivedLookupResponse = [frameworkCopy haveReceivedLookupResponse];
    vendingAtomicInstanceForConfiguredEntries = [frameworkCopy vendingAtomicInstanceForConfiguredEntries];
    downloadUserInitiated = [frameworkCopy downloadUserInitiated];
    v136 = v6;
    downloadProgress = [frameworkCopy downloadProgress];
    v123 = [MASAutoAssetSetProgress newShimmedToFramework:downloadProgress];
    downloadedNetworkBytes = [frameworkCopy downloadedNetworkBytes];
    downloadedFilesystemBytes = [frameworkCopy downloadedFilesystemBytes];
    currentLockUsage = [frameworkCopy currentLockUsage];
    selectorsForStaging = [frameworkCopy selectorsForStaging];
    availableForUseError = [frameworkCopy availableForUseError];
    newerVersionError = [frameworkCopy newerVersionError];
    v114 = downloadedNetworkBytes;
    v119 = downloadedFilesystemBytes;
    BYTE2(v110) = downloadUserInitiated;
    BYTE1(v110) = vendingAtomicInstanceForConfiguredEntries;
    LOBYTE(v110) = haveReceivedLookupResponse;
    v14 = v130;
    v15 = v142;
    newerVersionError8 = v7;
    LOBYTE(v98) = latestDownloadedAtomicInstanceFromPreSUStaging;
    newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded;
    v17 = catalogCachedAssetSetID;
    v18 = [v136 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded withCatalogCachedAssetSetID:catalogCachedAssetSetID withCatalogDownloadedFromLive:catalogDownloadedFromLive withCatalogLastTimeChecked:catalogLastTimeChecked withCatalogPostedDate:catalogPostedDate withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDownloadedAtomicInstanceFromPreSUStaging:v98 withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v202 withCurrentNeedPolicy:v7 withSchedulerPolicy:v142 withStagerPolicy:v130 havingReceivedLookupResponse:v110 vendingAtomicInstanceForConfiguredEntries:v123 withDownloadUserInitiated:v114 withDownloadProgress:v119 withDownloadedNetworkBytes:currentLockUsage withDownloadedFilesystemBytes:selectorsForStaging withCurrentLockUsage:availableForUseError withSelectorsForStaging:newerVersionError withAvailableForUseError:? withNewerVersionError:?];

    v19 = catalogLastTimeChecked;
    v20 = v123;
LABEL_18:

LABEL_19:
LABEL_20:
    v30 = schedulerPolicy;
    goto LABEL_21;
  }

  v21 = objc_opt_respondsToSelector();

  v22 = [MAAutoAssetSetStatus alloc];
  if ((v21 & 1) == 0)
  {
    v31 = objc_opt_respondsToSelector();

    v32 = [MAAutoAssetSetStatus alloc];
    if (v31)
    {
      clientDomainName = [frameworkCopy clientDomainName];
      assetSetIdentifier = [frameworkCopy assetSetIdentifier];
      configuredAssetEntries = [frameworkCopy configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];
      atomicInstancesDownloaded2 = [frameworkCopy atomicInstancesDownloaded];
      catalogCachedAssetSetID2 = [frameworkCopy catalogCachedAssetSetID];
      catalogDownloadedFromLive = [frameworkCopy catalogDownloadedFromLive];
      catalogLastTimeChecked2 = [frameworkCopy catalogLastTimeChecked];
      catalogPostedDate = [frameworkCopy catalogPostedDate];
      newerAtomicInstanceDiscovered = [frameworkCopy newerAtomicInstanceDiscovered];
      v159 = v32;
      newerDiscoveredAtomicEntries = [frameworkCopy newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      latestDownloadedAtomicInstance = [frameworkCopy latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [frameworkCopy latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      downloadedCatalogCachedAssetSetID = [frameworkCopy downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [frameworkCopy downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [frameworkCopy downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [frameworkCopy downloadedCatalogPostedDate];
      currentNotifications = [frameworkCopy currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      currentNeedPolicy = [frameworkCopy currentNeedPolicy];
      v33 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      schedulerPolicy = [frameworkCopy schedulerPolicy];
      v144 = [MASAutoAssetSetPolicy newShimmedToFramework:schedulerPolicy];
      stagerPolicy = [frameworkCopy stagerPolicy];
      v138 = [MASAutoAssetSetPolicy newShimmedToFramework:stagerPolicy];
      haveReceivedLookupResponse2 = [frameworkCopy haveReceivedLookupResponse];
      vendingAtomicInstanceForConfiguredEntries2 = [frameworkCopy vendingAtomicInstanceForConfiguredEntries];
      downloadUserInitiated2 = [frameworkCopy downloadUserInitiated];
      downloadProgress = [frameworkCopy downloadProgress];
      v128 = [MASAutoAssetSetProgress newShimmedToFramework:downloadProgress];
      downloadedNetworkBytes2 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes2 = [frameworkCopy downloadedFilesystemBytes];
      currentLockUsage2 = [frameworkCopy currentLockUsage];
      selectorsForStaging2 = [frameworkCopy selectorsForStaging];
      availableForUseError2 = [frameworkCopy availableForUseError];
      newerVersionError2 = [frameworkCopy newerVersionError];
      v115 = downloadedNetworkBytes2;
      v120 = downloadedFilesystemBytes2;
      BYTE2(v110) = downloadUserInitiated2;
      BYTE1(v110) = vendingAtomicInstanceForConfiguredEntries2;
      LOBYTE(v110) = haveReceivedLookupResponse2;
      v14 = v138;
      v15 = v144;
      newerVersionError8 = v33;
      newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded2;
      v19 = catalogLastTimeChecked2;
      v17 = catalogCachedAssetSetID2;
      v18 = [v159 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded2 withCatalogCachedAssetSetID:catalogCachedAssetSetID2 withCatalogDownloadedFromLive:catalogDownloadedFromLive withCatalogLastTimeChecked:catalogLastTimeChecked2 withCatalogPostedDate:catalogPostedDate withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v212 withPreviouslyVendedLockedAtomicInstance:0 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v202 withCurrentNeedPolicy:v33 withSchedulerPolicy:v144 withStagerPolicy:v138 havingReceivedLookupResponse:v110 vendingAtomicInstanceForConfiguredEntries:v128 withDownloadUserInitiated:v115 withDownloadProgress:v120 withDownloadedNetworkBytes:currentLockUsage2 withDownloadedFilesystemBytes:selectorsForStaging2 withCurrentLockUsage:availableForUseError2 withSelectorsForStaging:newerVersionError2 withAvailableForUseError:? withNewerVersionError:?];

LABEL_17:
      v20 = v128;
      goto LABEL_18;
    }

    v40 = objc_opt_respondsToSelector();

    v41 = [MAAutoAssetSetStatus alloc];
    if (v40)
    {
      clientDomainName = [frameworkCopy clientDomainName];
      assetSetIdentifier = [frameworkCopy assetSetIdentifier];
      configuredAssetEntries = [frameworkCopy configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];
      atomicInstancesDownloaded3 = [frameworkCopy atomicInstancesDownloaded];
      catalogCachedAssetSetID3 = [frameworkCopy catalogCachedAssetSetID];
      catalogDownloadedFromLive = [frameworkCopy catalogDownloadedFromLive];
      catalogLastTimeChecked3 = [frameworkCopy catalogLastTimeChecked];
      catalogPostedDate = [frameworkCopy catalogPostedDate];
      newerAtomicInstanceDiscovered = [frameworkCopy newerAtomicInstanceDiscovered];
      v160 = v41;
      newerDiscoveredAtomicEntries = [frameworkCopy newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      latestDownloadedAtomicInstance = [frameworkCopy latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [frameworkCopy latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      downloadedCatalogCachedAssetSetID = [frameworkCopy downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [frameworkCopy downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [frameworkCopy downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [frameworkCopy downloadedCatalogPostedDate];
      currentNotifications = [frameworkCopy currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      currentNeedPolicy = [frameworkCopy currentNeedPolicy];
      v42 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      schedulerPolicy = [frameworkCopy schedulerPolicy];
      v145 = [MASAutoAssetSetPolicy newShimmedToFramework:schedulerPolicy];
      stagerPolicy = [frameworkCopy stagerPolicy];
      v139 = [MASAutoAssetSetPolicy newShimmedToFramework:stagerPolicy];
      haveReceivedLookupResponse3 = [frameworkCopy haveReceivedLookupResponse];
      vendingAtomicInstanceForConfiguredEntries3 = [frameworkCopy vendingAtomicInstanceForConfiguredEntries];
      downloadUserInitiated3 = [frameworkCopy downloadUserInitiated];
      downloadProgress = [frameworkCopy downloadProgress];
      v128 = [MASAutoAssetSetProgress newShimmedToFramework:downloadProgress];
      downloadedNetworkBytes3 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes3 = [frameworkCopy downloadedFilesystemBytes];
      currentLockUsage2 = [frameworkCopy currentLockUsage];
      selectorsForStaging3 = [frameworkCopy selectorsForStaging];
      availableForUseError3 = [frameworkCopy availableForUseError];
      newerVersionError3 = [frameworkCopy newerVersionError];
      v112 = downloadedNetworkBytes3;
      v116 = downloadedFilesystemBytes3;
      BYTE2(v109) = downloadUserInitiated3;
      BYTE1(v109) = vendingAtomicInstanceForConfiguredEntries3;
      LOBYTE(v109) = haveReceivedLookupResponse3;
      v14 = v139;
      v15 = v145;
      newerVersionError8 = v42;
      v19 = catalogLastTimeChecked3;
      v17 = catalogCachedAssetSetID3;
      v18 = [v160 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded3 withCatalogCachedAssetSetID:catalogCachedAssetSetID3 withCatalogDownloadedFromLive:catalogDownloadedFromLive withCatalogLastTimeChecked:catalogLastTimeChecked3 withCatalogPostedDate:catalogPostedDate withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v202 withCurrentNeedPolicy:v42 withSchedulerPolicy:v145 withStagerPolicy:v139 havingReceivedLookupResponse:v109 vendingAtomicInstanceForConfiguredEntries:v128 withDownloadUserInitiated:v112 withDownloadProgress:v116 withDownloadedNetworkBytes:currentLockUsage2 withDownloadedFilesystemBytes:selectorsForStaging3 withCurrentLockUsage:availableForUseError3 withSelectorsForStaging:newerVersionError3 withAvailableForUseError:? withNewerVersionError:?];

      newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded3;
      goto LABEL_17;
    }

    v49 = objc_opt_respondsToSelector();

    v50 = [MAAutoAssetSetStatus alloc];
    if (v49)
    {
      clientDomainName = [frameworkCopy clientDomainName];
      assetSetIdentifier = [frameworkCopy assetSetIdentifier];
      configuredAssetEntries = [frameworkCopy configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];
      atomicInstancesDownloaded4 = [frameworkCopy atomicInstancesDownloaded];
      catalogCachedAssetSetID4 = [frameworkCopy catalogCachedAssetSetID];
      catalogDownloadedFromLive = [frameworkCopy catalogDownloadedFromLive];
      catalogLastTimeChecked4 = [frameworkCopy catalogLastTimeChecked];
      catalogPostedDate = [frameworkCopy catalogPostedDate];
      newerAtomicInstanceDiscovered = [frameworkCopy newerAtomicInstanceDiscovered];
      v161 = v50;
      newerDiscoveredAtomicEntries = [frameworkCopy newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      latestDownloadedAtomicInstance = [frameworkCopy latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [frameworkCopy latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      downloadedCatalogCachedAssetSetID = [frameworkCopy downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [frameworkCopy downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [frameworkCopy downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [frameworkCopy downloadedCatalogPostedDate];
      currentNotifications = [frameworkCopy currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      currentNeedPolicy = [frameworkCopy currentNeedPolicy];
      newerVersionError8 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      schedulerPolicy = [frameworkCopy schedulerPolicy];
      v146 = [MASAutoAssetSetPolicy newShimmedToFramework:schedulerPolicy];
      stagerPolicy = [frameworkCopy stagerPolicy];
      v134 = [MASAutoAssetSetPolicy newShimmedToFramework:stagerPolicy];
      haveReceivedLookupResponse4 = [frameworkCopy haveReceivedLookupResponse];
      downloadUserInitiated4 = [frameworkCopy downloadUserInitiated];
      downloadProgress2 = [frameworkCopy downloadProgress];
      v129 = [MASAutoAssetSetProgress newShimmedToFramework:downloadProgress2];
      downloadedNetworkBytes4 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes4 = [frameworkCopy downloadedFilesystemBytes];
      currentLockUsage3 = [frameworkCopy currentLockUsage];
      selectorsForStaging4 = [frameworkCopy selectorsForStaging];
      availableForUseError4 = [frameworkCopy availableForUseError];
      newerVersionError4 = [frameworkCopy newerVersionError];
      v117 = downloadedFilesystemBytes4;
      BYTE1(v109) = downloadUserInitiated4;
      LOBYTE(v109) = haveReceivedLookupResponse4;
      v15 = v146;
      v17 = catalogCachedAssetSetID4;
      v18 = [v161 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded4 withCatalogCachedAssetSetID:catalogCachedAssetSetID4 withCatalogDownloadedFromLive:catalogDownloadedFromLive withCatalogLastTimeChecked:catalogLastTimeChecked4 withCatalogPostedDate:catalogPostedDate withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v202 withCurrentNeedPolicy:newerVersionError8 withSchedulerPolicy:v146 withStagerPolicy:v134 havingReceivedLookupResponse:v109 withDownloadUserInitiated:v129 withDownloadProgress:downloadedNetworkBytes4 withDownloadedNetworkBytes:v117 withDownloadedFilesystemBytes:currentLockUsage3 withCurrentLockUsage:selectorsForStaging4 withSelectorsForStaging:availableForUseError4 withAvailableForUseError:newerVersionError4 withNewerVersionError:?];

      newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded4;
      v19 = catalogLastTimeChecked4;
      v58 = v134;
LABEL_27:

      goto LABEL_19;
    }

    v59 = objc_opt_respondsToSelector();

    v60 = [MAAutoAssetSetStatus alloc];
    if (v59)
    {
      clientDomainName = [frameworkCopy clientDomainName];
      assetSetIdentifier = [frameworkCopy assetSetIdentifier];
      configuredAssetEntries = [frameworkCopy configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];
      atomicInstancesDownloaded5 = [frameworkCopy atomicInstancesDownloaded];
      catalogCachedAssetSetID5 = [frameworkCopy catalogCachedAssetSetID];
      catalogDownloadedFromLive = [frameworkCopy catalogDownloadedFromLive];
      catalogLastTimeChecked5 = [frameworkCopy catalogLastTimeChecked];
      catalogPostedDate = [frameworkCopy catalogPostedDate];
      newerAtomicInstanceDiscovered = [frameworkCopy newerAtomicInstanceDiscovered];
      v162 = v60;
      newerDiscoveredAtomicEntries = [frameworkCopy newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      latestDownloadedAtomicInstance = [frameworkCopy latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [frameworkCopy latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      downloadedCatalogCachedAssetSetID = [frameworkCopy downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [frameworkCopy downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [frameworkCopy downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [frameworkCopy downloadedCatalogPostedDate];
      currentNotifications = [frameworkCopy currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      currentNeedPolicy = [frameworkCopy currentNeedPolicy];
      v61 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      schedulerPolicy = [frameworkCopy schedulerPolicy];
      v147 = [MASAutoAssetSetPolicy newShimmedToFramework:schedulerPolicy];
      stagerPolicy = [frameworkCopy stagerPolicy];
      v141 = [MASAutoAssetSetPolicy newShimmedToFramework:stagerPolicy];
      downloadUserInitiated5 = [frameworkCopy downloadUserInitiated];
      downloadProgress3 = [frameworkCopy downloadProgress];
      v135 = [MASAutoAssetSetProgress newShimmedToFramework:downloadProgress3];
      downloadedNetworkBytes5 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes5 = [frameworkCopy downloadedFilesystemBytes];
      currentLockUsage4 = [frameworkCopy currentLockUsage];
      selectorsForStaging5 = [frameworkCopy selectorsForStaging];
      availableForUseError5 = [frameworkCopy availableForUseError];
      newerVersionError5 = [frameworkCopy newerVersionError];
      v113 = downloadedNetworkBytes5;
      v118 = downloadedFilesystemBytes5;
      newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded5;
      LOBYTE(v109) = downloadUserInitiated5;
      v15 = v147;
      newerVersionError8 = v61;
      v17 = catalogCachedAssetSetID5;
      v18 = [v162 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded5 withCatalogCachedAssetSetID:catalogCachedAssetSetID5 withCatalogDownloadedFromLive:catalogDownloadedFromLive withCatalogLastTimeChecked:catalogLastTimeChecked5 withCatalogPostedDate:catalogPostedDate withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v202 withCurrentNeedPolicy:v61 withSchedulerPolicy:v147 withStagerPolicy:v141 withDownloadUserInitiated:v109 withDownloadProgress:v135 withDownloadedNetworkBytes:v113 withDownloadedFilesystemBytes:v118 withCurrentLockUsage:currentLockUsage4 withSelectorsForStaging:selectorsForStaging5 withAvailableForUseError:availableForUseError5 withNewerVersionError:newerVersionError5];

      v19 = catalogLastTimeChecked5;
      v58 = v141;
      goto LABEL_27;
    }

    v68 = objc_opt_respondsToSelector();

    v69 = [MAAutoAssetSetStatus alloc];
    if (v68)
    {
      clientDomainName = [frameworkCopy clientDomainName];
      assetSetIdentifier = [frameworkCopy assetSetIdentifier];
      configuredAssetEntries = [frameworkCopy configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];
      atomicInstancesDownloaded6 = [frameworkCopy atomicInstancesDownloaded];
      catalogCachedAssetSetID6 = [frameworkCopy catalogCachedAssetSetID];
      catalogDownloadedFromLive = [frameworkCopy catalogDownloadedFromLive];
      catalogLastTimeChecked6 = [frameworkCopy catalogLastTimeChecked];
      catalogPostedDate = [frameworkCopy catalogPostedDate];
      newerAtomicInstanceDiscovered = [frameworkCopy newerAtomicInstanceDiscovered];
      v163 = v69;
      newerDiscoveredAtomicEntries = [frameworkCopy newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      latestDownloadedAtomicInstance = [frameworkCopy latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [frameworkCopy latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      downloadedCatalogCachedAssetSetID = [frameworkCopy currentNotifications];
      downloadedCatalogDownloadedFromLive = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      downloadedCatalogLastTimeChecked = [frameworkCopy currentNeedPolicy];
      downloadedCatalogPostedDate = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      currentNotifications = [frameworkCopy schedulerPolicy];
      v70 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      currentNeedPolicy = [frameworkCopy stagerPolicy];
      v71 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      downloadUserInitiated6 = [frameworkCopy downloadUserInitiated];
      schedulerPolicy = [frameworkCopy downloadProgress];
      v154 = [MASAutoAssetSetProgress newShimmedToFramework:schedulerPolicy];
      downloadedNetworkBytes6 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes6 = [frameworkCopy downloadedFilesystemBytes];
      currentLockUsage5 = [frameworkCopy currentLockUsage];
      selectorsForStaging6 = [frameworkCopy selectorsForStaging];
      availableForUseError6 = [frameworkCopy availableForUseError];
      newerVersionError6 = [frameworkCopy newerVersionError];
      v107 = downloadedNetworkBytes6;
      v108 = downloadedFilesystemBytes6;
      newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded6;
      v17 = catalogCachedAssetSetID6;
      LOBYTE(v103) = downloadUserInitiated6;
      newerVersionError8 = v71;
      v202 = v70;
      v19 = catalogLastTimeChecked6;
      v18 = [v163 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded6 withCatalogCachedAssetSetID:catalogCachedAssetSetID6 withCatalogDownloadedFromLive:catalogDownloadedFromLive withCatalogLastTimeChecked:catalogLastTimeChecked6 withCatalogPostedDate:catalogPostedDate withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v212 withCurrentNotifications:downloadedCatalogDownloadedFromLive withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v70 withStagerPolicy:v71 withDownloadUserInitiated:v103 withDownloadProgress:v154 withDownloadedNetworkBytes:v107 withDownloadedFilesystemBytes:v108 withCurrentLockUsage:currentLockUsage5 withSelectorsForStaging:selectorsForStaging6 withAvailableForUseError:availableForUseError6 withNewerVersionError:newerVersionError6];

      goto LABEL_20;
    }

    v78 = objc_opt_respondsToSelector();

    v79 = [MAAutoAssetSetStatus alloc];
    if (v78)
    {
      clientDomainName = [frameworkCopy clientDomainName];
      assetSetIdentifier = [frameworkCopy assetSetIdentifier];
      configuredAssetEntries = [frameworkCopy configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:?];
      atomicInstancesDownloaded7 = [frameworkCopy atomicInstancesDownloaded];
      newerAtomicInstanceDiscovered2 = [frameworkCopy newerAtomicInstanceDiscovered];
      catalogDownloadedFromLive = [frameworkCopy newerDiscoveredAtomicEntries];
      v180 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      catalogPostedDate = [frameworkCopy latestDownloadedAtomicInstance];
      newerAtomicInstanceDiscovered = [frameworkCopy latestDowloadedAtomicInstanceEntries];
      newerDiscoveredAtomicEntries = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      currentNotifications2 = [frameworkCopy currentNotifications];
      latestDownloadedAtomicInstance = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      latestDowloadedAtomicInstanceEntries = [frameworkCopy currentNeedPolicy];
      v212 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      downloadedCatalogCachedAssetSetID = [frameworkCopy schedulerPolicy];
      downloadedCatalogDownloadedFromLive = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      downloadedCatalogLastTimeChecked = [frameworkCopy stagerPolicy];
      v80 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      downloadUserInitiated7 = [frameworkCopy downloadUserInitiated];
      currentNotifications = [frameworkCopy downloadProgress];
      v81 = [MASAutoAssetSetProgress newShimmedToFramework:?];
      downloadedNetworkBytes7 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes7 = [frameworkCopy downloadedFilesystemBytes];
      currentLockUsage6 = [frameworkCopy currentLockUsage];
      selectorsForStaging7 = [frameworkCopy selectorsForStaging];
      availableForUseError7 = [frameworkCopy availableForUseError];
      newerVersionError7 = [frameworkCopy newerVersionError];
      newerVersionError8 = selectorsForStaging7;
      currentNeedPolicy = currentLockUsage6;
      v104 = downloadedFilesystemBytes7;
      v106 = currentLockUsage6;
      newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded7;
      v19 = v180;
      v202 = v81;
      LOBYTE(v100) = downloadUserInitiated7;
      downloadedCatalogPostedDate = v80;
      v18 = [v79 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded7 withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered2 withNewerDiscoveredAtomicEntries:v180 withLatestDownloadedAtomicInstance:catalogPostedDate withLatestDowloadedAtomicInstanceEntries:newerDiscoveredAtomicEntries withAllDownloadedAtomicInstanceEntries:0 withCurrentNotifications:latestDownloadedAtomicInstance withCurrentNeedPolicy:v212 withSchedulerPolicy:downloadedCatalogDownloadedFromLive withStagerPolicy:v80 withDownloadUserInitiated:v100 withDownloadProgress:v81 withDownloadedNetworkBytes:downloadedNetworkBytes7 withDownloadedFilesystemBytes:v104 withCurrentLockUsage:v106 withSelectorsForStaging:selectorsForStaging7 withAvailableForUseError:availableForUseError7 withNewerVersionError:newerVersionError7];

      v17 = newerAtomicInstanceDiscovered2;
      goto LABEL_22;
    }

    v88 = objc_opt_respondsToSelector();

    if (v88)
    {
      v172 = [MAAutoAssetSetStatus alloc];
      clientDomainName = [frameworkCopy clientDomainName];
      assetSetIdentifier = [frameworkCopy assetSetIdentifier];
      configuredAssetEntries = [frameworkCopy atomicInstancesDownloaded];
      newerAtomicInstanceDiscovered3 = [frameworkCopy newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries2 = [frameworkCopy newerDiscoveredAtomicEntries];
      v190 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:newerDiscoveredAtomicEntries2];
      catalogDownloadedFromLive = [frameworkCopy latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries2 = [frameworkCopy latestDowloadedAtomicInstanceEntries];
      catalogPostedDate = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:latestDowloadedAtomicInstanceEntries2];
      newerAtomicInstanceDiscovered = [frameworkCopy currentNotifications];
      newerDiscoveredAtomicEntries = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      currentNotifications2 = [frameworkCopy currentNeedPolicy];
      v89 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      latestDowloadedAtomicInstanceEntries = [frameworkCopy schedulerPolicy];
      v90 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      downloadedCatalogCachedAssetSetID = [frameworkCopy stagerPolicy];
      v91 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      downloadUserInitiated8 = [frameworkCopy downloadUserInitiated];
      downloadedCatalogLastTimeChecked = [frameworkCopy downloadProgress];
      v92 = [MASAutoAssetSetProgress newShimmedToFramework:?];
      downloadedNetworkBytes8 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes8 = [frameworkCopy downloadedFilesystemBytes];
      currentLockUsage7 = [frameworkCopy currentLockUsage];
      selectorsForStaging8 = [frameworkCopy selectorsForStaging];
      availableForUseError8 = [frameworkCopy availableForUseError];
      newerVersionError8 = [frameworkCopy newerVersionError];
      currentNeedPolicy = availableForUseError8;
      v202 = selectorsForStaging8;
      currentNotifications = currentLockUsage7;
      v102 = downloadedFilesystemBytes8;
      v105 = currentLockUsage7;
      v19 = latestDowloadedAtomicInstanceEntries2;
      v101 = downloadedNetworkBytes8;
      v17 = v190;
      downloadedCatalogPostedDate = v92;
      LOBYTE(v99) = downloadUserInitiated8;
      downloadedCatalogDownloadedFromLive = v91;
      v212 = v90;
      latestDownloadedAtomicInstance = v89;
      v18 = [v172 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withAtomicInstancesDownloaded:configuredAssetEntries withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered3 withNewerDiscoveredAtomicEntries:v190 withLatestDownloadedAtomicInstance:catalogDownloadedFromLive withLatestDowloadedAtomicInstanceEntries:catalogPostedDate withAllDownloadedAtomicInstanceEntries:0 withCurrentNotifications:newerDiscoveredAtomicEntries withCurrentNeedPolicy:v89 withSchedulerPolicy:v90 withStagerPolicy:v91 withDownloadUserInitiated:v99 withDownloadProgress:v92 withDownloadedNetworkBytes:v101 withDownloadedFilesystemBytes:v102 withCurrentLockUsage:v105 withSelectorsForStaging:selectorsForStaging8 withAvailableForUseError:availableForUseError8 withNewerVersionError:newerVersionError8];
      goto LABEL_22;
    }

LABEL_34:
    v18 = 0;
    goto LABEL_35;
  }

  clientDomainName = [frameworkCopy clientDomainName];
  assetSetIdentifier = [frameworkCopy assetSetIdentifier];
  configuredAssetEntries = [frameworkCopy configuredAssetEntries];
  newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayToFramework:configuredAssetEntries];
  atomicInstancesDownloaded8 = [frameworkCopy atomicInstancesDownloaded];
  catalogCachedAssetSetID7 = [frameworkCopy catalogCachedAssetSetID];
  catalogDownloadedFromLive = [frameworkCopy catalogDownloadedFromLive];
  catalogLastTimeChecked7 = [frameworkCopy catalogLastTimeChecked];
  catalogPostedDate = [frameworkCopy catalogPostedDate];
  newerAtomicInstanceDiscovered = [frameworkCopy newerAtomicInstanceDiscovered];
  v158 = v22;
  newerDiscoveredAtomicEntries = [frameworkCopy newerDiscoveredAtomicEntries];
  currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
  latestDownloadedAtomicInstance = [frameworkCopy latestDownloadedAtomicInstance];
  latestDownloadedAtomicInstanceFromPreSUStaging2 = [frameworkCopy latestDownloadedAtomicInstanceFromPreSUStaging];
  latestDowloadedAtomicInstanceEntries = [frameworkCopy latestDowloadedAtomicInstanceEntries];
  v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
  downloadedCatalogCachedAssetSetID = [frameworkCopy downloadedCatalogCachedAssetSetID];
  downloadedCatalogDownloadedFromLive = [frameworkCopy downloadedCatalogDownloadedFromLive];
  downloadedCatalogLastTimeChecked = [frameworkCopy downloadedCatalogLastTimeChecked];
  downloadedCatalogPostedDate = [frameworkCopy downloadedCatalogPostedDate];
  currentNotifications = [frameworkCopy currentNotifications];
  v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
  currentNeedPolicy = [frameworkCopy currentNeedPolicy];
  v23 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
  schedulerPolicy2 = [frameworkCopy schedulerPolicy];
  v137 = [MASAutoAssetSetPolicy newShimmedToFramework:schedulerPolicy2];
  stagerPolicy2 = [frameworkCopy stagerPolicy];
  v131 = [MASAutoAssetSetPolicy newShimmedToFramework:stagerPolicy2];
  haveReceivedLookupResponse5 = [frameworkCopy haveReceivedLookupResponse];
  vendingAtomicInstanceForConfiguredEntries4 = [frameworkCopy vendingAtomicInstanceForConfiguredEntries];
  downloadUserInitiated9 = [frameworkCopy downloadUserInitiated];
  downloadProgress4 = [frameworkCopy downloadProgress];
  v124 = [MASAutoAssetSetProgress newShimmedToFramework:downloadProgress4];
  downloadedNetworkBytes9 = [frameworkCopy downloadedNetworkBytes];
  downloadedFilesystemBytes9 = [frameworkCopy downloadedFilesystemBytes];
  currentLockUsage8 = [frameworkCopy currentLockUsage];
  selectorsForStaging9 = [frameworkCopy selectorsForStaging];
  availableForUseError9 = [frameworkCopy availableForUseError];
  newerVersionError9 = [frameworkCopy newerVersionError];
  BYTE2(v111) = downloadUserInitiated9;
  BYTE1(v111) = vendingAtomicInstanceForConfiguredEntries4;
  LOBYTE(v111) = haveReceivedLookupResponse5;
  newerVersionError8 = v23;
  LOBYTE(v98) = latestDownloadedAtomicInstanceFromPreSUStaging2;
  newerDiscoveredAtomicEntries2 = atomicInstancesDownloaded8;
  v17 = catalogCachedAssetSetID7;
  v18 = [v158 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded8 withCatalogCachedAssetSetID:catalogCachedAssetSetID7 withCatalogDownloadedFromLive:catalogDownloadedFromLive withCatalogLastTimeChecked:catalogLastTimeChecked7 withCatalogPostedDate:catalogPostedDate withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDownloadedAtomicInstanceFromPreSUStaging:v98 withLatestDowloadedAtomicInstanceEntries:v212 withPreviouslyVendedLockedAtomicInstance:0 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v202 withCurrentNeedPolicy:v23 withSchedulerPolicy:v137 withStagerPolicy:v131 havingReceivedLookupResponse:v111 vendingAtomicInstanceForConfiguredEntries:v124 withDownloadUserInitiated:downloadedNetworkBytes9 withDownloadProgress:downloadedFilesystemBytes9 withDownloadedNetworkBytes:currentLockUsage8 withDownloadedFilesystemBytes:selectorsForStaging9 withCurrentLockUsage:availableForUseError9 withSelectorsForStaging:newerVersionError9 withAvailableForUseError:? withNewerVersionError:?];

  v19 = catalogLastTimeChecked7;
  v30 = schedulerPolicy2;
LABEL_21:

LABEL_22:
LABEL_35:

  return v18;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (!frameworkCopy || !__isPlatformVersionAtLeast(2, 17, 0, 0) || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class())
  {
    goto LABEL_33;
  }

  v4 = [MAAutoAssetSetStatus alloc];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    v19 = [MAAutoAssetSetStatus alloc];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = frameworkCopy;
      v164 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v21 clientDomainName];
      assetSetIdentifier = [v21 assetSetIdentifier];
      configuredAssetEntries = [v21 configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries];
      atomicInstancesDownloaded = [v21 atomicInstancesDownloaded];
      catalogCachedAssetSetID = [v21 catalogCachedAssetSetID];
      catalogDownloadedFromLive = [v21 catalogDownloadedFromLive];
      catalogLastTimeChecked = [v21 catalogLastTimeChecked];
      catalogPostedDate = [v21 catalogPostedDate];
      newerAtomicInstanceDiscovered = [v21 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries = [v21 newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      latestDownloadedAtomicInstance = [v21 latestDownloadedAtomicInstance];
      latestDownloadedAtomicInstanceFromPreSUStaging = [v21 latestDownloadedAtomicInstanceFromPreSUStaging];
      latestDowloadedAtomicInstanceEntries = [v21 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v21 downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [v21 downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [v21 downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [v21 downloadedCatalogPostedDate];
      currentNotifications = [v21 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      currentNeedPolicy = [v21 currentNeedPolicy];
      v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      schedulerPolicy = [v21 schedulerPolicy];
      v139 = [MASAutoAssetSetPolicy newShimmedFromFramework:schedulerPolicy];
      stagerPolicy = [v21 stagerPolicy];
      v22 = [MASAutoAssetSetPolicy newShimmedFromFramework:stagerPolicy];
      haveReceivedLookupResponse = [v21 haveReceivedLookupResponse];
      vendingAtomicInstanceForConfiguredEntries = [v21 vendingAtomicInstanceForConfiguredEntries];
      downloadUserInitiated = [v21 downloadUserInitiated];
      downloadProgress = [v21 downloadProgress];
      v125 = [MASAutoAssetSetProgress newShimmedFromFramework:downloadProgress];
      downloadedNetworkBytes = [v21 downloadedNetworkBytes];
      downloadedFilesystemBytes = [v21 downloadedFilesystemBytes];
      currentLockUsage = [v21 currentLockUsage];
      selectorsForStaging = [v21 selectorsForStaging];
      availableForUseError = [v21 availableForUseError];
      newerVersionError = [v21 newerVersionError];

      v119 = downloadedFilesystemBytes;
      BYTE2(v111) = downloadUserInitiated;
      BYTE1(v111) = vendingAtomicInstanceForConfiguredEntries;
      LOBYTE(v111) = haveReceivedLookupResponse;
      v12 = v22;
      v13 = v139;
      v110 = v22;
      LOBYTE(v94) = latestDownloadedAtomicInstanceFromPreSUStaging;
      v14 = catalogPostedDate;
      v15 = catalogCachedAssetSetID;
      v18 = atomicInstancesDownloaded;
      latestDownloadedAtomicInstance3 = catalogDownloadedFromLive;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v164 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withCatalogCachedAssetSetID:newerAtomicInstanceDiscovered3 withCatalogDownloadedFromLive:atomicInstancesDownloaded withCatalogLastTimeChecked:catalogCachedAssetSetID withCatalogPostedDate:catalogDownloadedFromLive withNewerAtomicInstanceDiscovered:catalogLastTimeChecked withNewerDiscoveredAtomicEntries:catalogPostedDate withLatestDownloadedAtomicInstance:newerAtomicInstanceDiscovered withLatestDownloadedAtomicInstanceFromPreSUStaging:currentNotifications2 withLatestDowloadedAtomicInstanceEntries:latestDownloadedAtomicInstance withPreviouslyVendedLockedAtomicInstance:v94 withDownloadedCatalogCachedAssetSetID:v237 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:downloadedCatalogCachedAssetSetID withDownloadedCatalogPostedDate:downloadedCatalogDownloadedFromLive withCurrentNotifications:downloadedCatalogLastTimeChecked withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v139 vendingAtomicInstanceForConfiguredEntries:v110 withDownloadUserInitiated:v111 withDownloadProgress:v125 withDownloadedNetworkBytes:downloadedNetworkBytes withDownloadedFilesystemBytes:v119 withCurrentLockUsage:currentLockUsage withSelectorsForStaging:selectorsForStaging withAvailableForUseError:availableForUseError withNewerVersionError:newerVersionError];

      goto LABEL_12;
    }

    v29 = [MAAutoAssetSetStatus alloc];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v31 = frameworkCopy;
      v165 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v31 clientDomainName];
      assetSetIdentifier = [v31 assetSetIdentifier];
      configuredAssetEntries2 = [v31 configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries2];
      atomicInstancesDownloaded2 = [v31 atomicInstancesDownloaded];
      catalogCachedAssetSetID2 = [v31 catalogCachedAssetSetID];
      catalogDownloadedFromLive2 = [v31 catalogDownloadedFromLive];
      catalogLastTimeChecked = [v31 catalogLastTimeChecked];
      catalogPostedDate2 = [v31 catalogPostedDate];
      newerAtomicInstanceDiscovered = [v31 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries = [v31 newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      latestDownloadedAtomicInstance = [v31 latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [v31 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v31 downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [v31 downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [v31 downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [v31 downloadedCatalogPostedDate];
      currentNotifications = [v31 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      currentNeedPolicy = [v31 currentNeedPolicy];
      v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      schedulerPolicy2 = [v31 schedulerPolicy];
      v151 = [MASAutoAssetSetPolicy newShimmedFromFramework:schedulerPolicy2];
      stagerPolicy2 = [v31 stagerPolicy];
      v140 = [MASAutoAssetSetPolicy newShimmedFromFramework:stagerPolicy2];
      haveReceivedLookupResponse2 = [v31 haveReceivedLookupResponse];
      vendingAtomicInstanceForConfiguredEntries2 = [v31 vendingAtomicInstanceForConfiguredEntries];
      downloadUserInitiated2 = [v31 downloadUserInitiated];
      downloadProgress2 = [v31 downloadProgress];
      v129 = [MASAutoAssetSetProgress newShimmedFromFramework:downloadProgress2];
      downloadedNetworkBytes2 = [v31 downloadedNetworkBytes];
      downloadedFilesystemBytes2 = [v31 downloadedFilesystemBytes];
      currentLockUsage2 = [v31 currentLockUsage];
      selectorsForStaging2 = [v31 selectorsForStaging];
      availableForUseError2 = [v31 availableForUseError];
      newerVersionError2 = [v31 newerVersionError];

      v118 = downloadedFilesystemBytes2;
      BYTE2(v109) = downloadUserInitiated2;
      BYTE1(v109) = vendingAtomicInstanceForConfiguredEntries2;
      LOBYTE(v109) = haveReceivedLookupResponse2;
      selectorsForStaging6 = v140;
      v38 = v151;
      v14 = catalogPostedDate2;
      v39 = catalogCachedAssetSetID2;
      v18 = atomicInstancesDownloaded2;
      latestDownloadedAtomicInstance3 = catalogDownloadedFromLive2;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v165 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withCatalogCachedAssetSetID:newerAtomicInstanceDiscovered3 withCatalogDownloadedFromLive:atomicInstancesDownloaded2 withCatalogLastTimeChecked:catalogCachedAssetSetID2 withCatalogPostedDate:catalogDownloadedFromLive2 withNewerAtomicInstanceDiscovered:catalogLastTimeChecked withNewerDiscoveredAtomicEntries:catalogPostedDate2 withLatestDownloadedAtomicInstance:newerAtomicInstanceDiscovered withLatestDowloadedAtomicInstanceEntries:currentNotifications2 withPreviouslyVendedLockedAtomicInstance:latestDownloadedAtomicInstance withDownloadedCatalogCachedAssetSetID:v237 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:downloadedCatalogCachedAssetSetID withDownloadedCatalogPostedDate:downloadedCatalogDownloadedFromLive withCurrentNotifications:downloadedCatalogLastTimeChecked withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v151 vendingAtomicInstanceForConfiguredEntries:v140 withDownloadUserInitiated:v109 withDownloadProgress:v129 withDownloadedNetworkBytes:downloadedNetworkBytes2 withDownloadedFilesystemBytes:v118 withCurrentLockUsage:currentLockUsage2 withSelectorsForStaging:selectorsForStaging2 withAvailableForUseError:availableForUseError2 withNewerVersionError:newerVersionError2];

      configuredAssetEntries7 = configuredAssetEntries2;
LABEL_17:

      v15 = v39;
LABEL_18:

LABEL_19:
      v28 = schedulerPolicy2;
      goto LABEL_20;
    }

    v40 = [MAAutoAssetSetStatus alloc];
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      v42 = frameworkCopy;
      v166 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v42 clientDomainName];
      assetSetIdentifier = [v42 assetSetIdentifier];
      configuredAssetEntries3 = [v42 configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries3];
      atomicInstancesDownloaded3 = [v42 atomicInstancesDownloaded];
      catalogCachedAssetSetID3 = [v42 catalogCachedAssetSetID];
      catalogDownloadedFromLive3 = [v42 catalogDownloadedFromLive];
      catalogLastTimeChecked = [v42 catalogLastTimeChecked];
      catalogPostedDate3 = [v42 catalogPostedDate];
      newerAtomicInstanceDiscovered = [v42 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries = [v42 newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      latestDownloadedAtomicInstance = [v42 latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [v42 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v42 downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [v42 downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [v42 downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [v42 downloadedCatalogPostedDate];
      currentNotifications = [v42 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      currentNeedPolicy = [v42 currentNeedPolicy];
      v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      schedulerPolicy2 = [v42 schedulerPolicy];
      v141 = [MASAutoAssetSetPolicy newShimmedFromFramework:schedulerPolicy2];
      stagerPolicy2 = [v42 stagerPolicy];
      v135 = [MASAutoAssetSetPolicy newShimmedFromFramework:stagerPolicy2];
      haveReceivedLookupResponse3 = [v42 haveReceivedLookupResponse];
      vendingAtomicInstanceForConfiguredEntries3 = [v42 vendingAtomicInstanceForConfiguredEntries];
      downloadUserInitiated3 = [v42 downloadUserInitiated];
      downloadProgress2 = [v42 downloadProgress];
      v129 = [MASAutoAssetSetProgress newShimmedFromFramework:downloadProgress2];
      downloadedNetworkBytes3 = [v42 downloadedNetworkBytes];
      downloadedFilesystemBytes3 = [v42 downloadedFilesystemBytes];
      currentLockUsage2 = [v42 currentLockUsage];
      selectorsForStaging3 = [v42 selectorsForStaging];
      availableForUseError3 = [v42 availableForUseError];
      newerVersionError3 = [v42 newerVersionError];

      v114 = downloadedFilesystemBytes3;
      configuredAssetEntries7 = configuredAssetEntries3;
      BYTE2(v108) = downloadUserInitiated3;
      BYTE1(v108) = vendingAtomicInstanceForConfiguredEntries3;
      LOBYTE(v108) = haveReceivedLookupResponse3;
      selectorsForStaging6 = v135;
      v38 = v141;
      v14 = catalogPostedDate3;
      v39 = catalogCachedAssetSetID3;
      v18 = atomicInstancesDownloaded3;
      latestDownloadedAtomicInstance3 = catalogDownloadedFromLive3;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v166 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withCatalogCachedAssetSetID:newerAtomicInstanceDiscovered3 withCatalogDownloadedFromLive:atomicInstancesDownloaded3 withCatalogLastTimeChecked:catalogCachedAssetSetID3 withCatalogPostedDate:catalogDownloadedFromLive3 withNewerAtomicInstanceDiscovered:catalogLastTimeChecked withNewerDiscoveredAtomicEntries:catalogPostedDate3 withLatestDownloadedAtomicInstance:newerAtomicInstanceDiscovered withLatestDowloadedAtomicInstanceEntries:currentNotifications2 withDownloadedCatalogCachedAssetSetID:latestDownloadedAtomicInstance withDownloadedCatalogDownloadedFromLive:v237 withDownloadedCatalogLastTimeChecked:downloadedCatalogCachedAssetSetID withDownloadedCatalogPostedDate:downloadedCatalogDownloadedFromLive withCurrentNotifications:downloadedCatalogLastTimeChecked withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v141 vendingAtomicInstanceForConfiguredEntries:v135 withDownloadUserInitiated:v108 withDownloadProgress:v129 withDownloadedNetworkBytes:downloadedNetworkBytes3 withDownloadedFilesystemBytes:v114 withCurrentLockUsage:currentLockUsage2 withSelectorsForStaging:selectorsForStaging3 withAvailableForUseError:availableForUseError3 withNewerVersionError:newerVersionError3];

      goto LABEL_17;
    }

    v47 = [MAAutoAssetSetStatus alloc];
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      v49 = frameworkCopy;
      v167 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v49 clientDomainName];
      assetSetIdentifier = [v49 assetSetIdentifier];
      configuredAssetEntries4 = [v49 configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries4];
      atomicInstancesDownloaded4 = [v49 atomicInstancesDownloaded];
      catalogCachedAssetSetID4 = [v49 catalogCachedAssetSetID];
      catalogDownloadedFromLive4 = [v49 catalogDownloadedFromLive];
      catalogLastTimeChecked = [v49 catalogLastTimeChecked];
      catalogPostedDate4 = [v49 catalogPostedDate];
      newerAtomicInstanceDiscovered = [v49 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries = [v49 newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      latestDownloadedAtomicInstance = [v49 latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [v49 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v49 downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [v49 downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [v49 downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [v49 downloadedCatalogPostedDate];
      currentNotifications = [v49 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      currentNeedPolicy = [v49 currentNeedPolicy];
      v50 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      schedulerPolicy2 = [v49 schedulerPolicy];
      v153 = [MASAutoAssetSetPolicy newShimmedFromFramework:schedulerPolicy2];
      stagerPolicy2 = [v49 stagerPolicy];
      v148 = [MASAutoAssetSetPolicy newShimmedFromFramework:stagerPolicy2];
      haveReceivedLookupResponse4 = [v49 haveReceivedLookupResponse];
      downloadUserInitiated4 = [v49 downloadUserInitiated];
      downloadProgress3 = [v49 downloadProgress];
      v136 = [MASAutoAssetSetProgress newShimmedFromFramework:downloadProgress3];
      downloadedNetworkBytes4 = [v49 downloadedNetworkBytes];
      downloadedFilesystemBytes4 = [v49 downloadedFilesystemBytes];
      currentLockUsage3 = [v49 currentLockUsage];
      selectorsForStaging4 = [v49 selectorsForStaging];
      availableForUseError4 = [v49 availableForUseError];
      newerVersionError4 = [v49 newerVersionError];

      v112 = downloadedNetworkBytes4;
      v115 = downloadedFilesystemBytes4;
      v18 = atomicInstancesDownloaded4;
      BYTE1(v108) = downloadUserInitiated4;
      LOBYTE(v108) = haveReceivedLookupResponse4;
      v56 = v148;
      v38 = v153;
      v218 = v50;
      v15 = catalogCachedAssetSetID4;
      latestDownloadedAtomicInstance3 = catalogDownloadedFromLive4;
      v17 = [(MANAutoAssetSetStatus *)v167 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded4 withCatalogCachedAssetSetID:catalogCachedAssetSetID4 withCatalogDownloadedFromLive:catalogDownloadedFromLive4 withCatalogLastTimeChecked:catalogLastTimeChecked withCatalogPostedDate:catalogPostedDate4 withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v237 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v224 withCurrentNeedPolicy:v50 withSchedulerPolicy:v153 withStagerPolicy:v148 havingReceivedLookupResponse:v108 withDownloadUserInitiated:v136 withDownloadProgress:v112 withDownloadedNetworkBytes:v115 withDownloadedFilesystemBytes:currentLockUsage3 withCurrentLockUsage:selectorsForStaging4 withSelectorsForStaging:availableForUseError4 withAvailableForUseError:newerVersionError4 withNewerVersionError:?];

      configuredAssetEntries7 = configuredAssetEntries4;
      v14 = catalogPostedDate4;
LABEL_26:

      goto LABEL_19;
    }

    v57 = [MAAutoAssetSetStatus alloc];
    v58 = objc_opt_respondsToSelector();

    if (v58)
    {
      v59 = frameworkCopy;
      v168 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v59 clientDomainName];
      assetSetIdentifier = [v59 assetSetIdentifier];
      configuredAssetEntries5 = [v59 configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries5];
      atomicInstancesDownloaded5 = [v59 atomicInstancesDownloaded];
      catalogCachedAssetSetID5 = [v59 catalogCachedAssetSetID];
      catalogDownloadedFromLive5 = [v59 catalogDownloadedFromLive];
      catalogLastTimeChecked = [v59 catalogLastTimeChecked];
      catalogPostedDate5 = [v59 catalogPostedDate];
      newerAtomicInstanceDiscovered = [v59 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries = [v59 newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      latestDownloadedAtomicInstance = [v59 latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [v59 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v59 downloadedCatalogCachedAssetSetID];
      downloadedCatalogDownloadedFromLive = [v59 downloadedCatalogDownloadedFromLive];
      downloadedCatalogLastTimeChecked = [v59 downloadedCatalogLastTimeChecked];
      downloadedCatalogPostedDate = [v59 downloadedCatalogPostedDate];
      currentNotifications = [v59 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      currentNeedPolicy = [v59 currentNeedPolicy];
      v60 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      schedulerPolicy2 = [v59 schedulerPolicy];
      v154 = [MASAutoAssetSetPolicy newShimmedFromFramework:schedulerPolicy2];
      stagerPolicy2 = [v59 stagerPolicy];
      v149 = [MASAutoAssetSetPolicy newShimmedFromFramework:stagerPolicy2];
      downloadUserInitiated5 = [v59 downloadUserInitiated];
      downloadProgress3 = [v59 downloadProgress];
      v143 = [MASAutoAssetSetProgress newShimmedFromFramework:downloadProgress3];
      downloadedNetworkBytes5 = [v59 downloadedNetworkBytes];
      downloadedFilesystemBytes5 = [v59 downloadedFilesystemBytes];
      currentLockUsage4 = [v59 currentLockUsage];
      selectorsForStaging5 = [v59 selectorsForStaging];
      availableForUseError5 = [v59 availableForUseError];
      newerVersionError5 = [v59 newerVersionError];

      v113 = downloadedNetworkBytes5;
      v116 = downloadedFilesystemBytes5;
      v18 = atomicInstancesDownloaded5;
      LOBYTE(v108) = downloadUserInitiated5;
      v56 = v149;
      v38 = v154;
      v218 = v60;
      v14 = catalogPostedDate5;
      v15 = catalogCachedAssetSetID5;
      latestDownloadedAtomicInstance3 = catalogDownloadedFromLive5;
      v17 = [(MANAutoAssetSetStatus *)v168 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded5 withCatalogCachedAssetSetID:catalogCachedAssetSetID5 withCatalogDownloadedFromLive:catalogDownloadedFromLive5 withCatalogLastTimeChecked:catalogLastTimeChecked withCatalogPostedDate:catalogPostedDate5 withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v237 withDownloadedCatalogCachedAssetSetID:downloadedCatalogCachedAssetSetID withDownloadedCatalogDownloadedFromLive:downloadedCatalogDownloadedFromLive withDownloadedCatalogLastTimeChecked:downloadedCatalogLastTimeChecked withDownloadedCatalogPostedDate:downloadedCatalogPostedDate withCurrentNotifications:v224 withCurrentNeedPolicy:v60 withSchedulerPolicy:v154 withStagerPolicy:v149 withDownloadUserInitiated:v108 withDownloadProgress:v143 withDownloadedNetworkBytes:v113 withDownloadedFilesystemBytes:v116 withCurrentLockUsage:currentLockUsage4 withSelectorsForStaging:selectorsForStaging5 withAvailableForUseError:availableForUseError5 withNewerVersionError:newerVersionError5];

      configuredAssetEntries7 = configuredAssetEntries5;
      goto LABEL_26;
    }

    v65 = [MAAutoAssetSetStatus alloc];
    v66 = objc_opt_respondsToSelector();

    if (v66)
    {
      v67 = frameworkCopy;
      v169 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v67 clientDomainName];
      assetSetIdentifier = [v67 assetSetIdentifier];
      configuredAssetEntries6 = [v67 configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries6];
      atomicInstancesDownloaded6 = [v67 atomicInstancesDownloaded];
      catalogCachedAssetSetID6 = [v67 catalogCachedAssetSetID];
      catalogDownloadedFromLive6 = [v67 catalogDownloadedFromLive];
      catalogLastTimeChecked = [v67 catalogLastTimeChecked];
      catalogPostedDate6 = [v67 catalogPostedDate];
      newerAtomicInstanceDiscovered = [v67 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries = [v67 newerDiscoveredAtomicEntries];
      currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      latestDownloadedAtomicInstance = [v67 latestDownloadedAtomicInstance];
      latestDowloadedAtomicInstanceEntries = [v67 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v67 currentNotifications];
      downloadedCatalogDownloadedFromLive = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      downloadedCatalogLastTimeChecked = [v67 currentNeedPolicy];
      downloadedCatalogPostedDate = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      currentNotifications = [v67 schedulerPolicy];
      v224 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      currentNeedPolicy = [v67 stagerPolicy];
      v68 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      downloadUserInitiated6 = [v67 downloadUserInitiated];
      schedulerPolicy2 = [v67 downloadProgress];
      v69 = [MASAutoAssetSetProgress newShimmedFromFramework:schedulerPolicy2];
      downloadedNetworkBytes6 = [v67 downloadedNetworkBytes];
      downloadedFilesystemBytes6 = [v67 downloadedFilesystemBytes];
      stagerPolicy2 = [v67 currentLockUsage];
      selectorsForStaging6 = [v67 selectorsForStaging];
      downloadProgress2 = [v67 availableForUseError];
      newerVersionError6 = [v67 newerVersionError];

      v106 = downloadedFilesystemBytes6;
      v15 = catalogCachedAssetSetID6;
      v102 = v69;
      v104 = downloadedNetworkBytes6;
      configuredAssetEntries7 = configuredAssetEntries6;
      v38 = v69;
      LOBYTE(v101) = downloadUserInitiated6;
      v218 = v68;
      v14 = catalogPostedDate6;
      v18 = atomicInstancesDownloaded6;
      latestDownloadedAtomicInstance3 = catalogDownloadedFromLive6;
      v17 = [(MANAutoAssetSetStatus *)v169 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded6 withCatalogCachedAssetSetID:catalogCachedAssetSetID6 withCatalogDownloadedFromLive:catalogDownloadedFromLive6 withCatalogLastTimeChecked:catalogLastTimeChecked withCatalogPostedDate:catalogPostedDate6 withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered withNewerDiscoveredAtomicEntries:currentNotifications2 withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance withLatestDowloadedAtomicInstanceEntries:v237 withCurrentNotifications:downloadedCatalogDownloadedFromLive withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v224 withStagerPolicy:v68 withDownloadUserInitiated:v101 withDownloadProgress:v102 withDownloadedNetworkBytes:v104 withDownloadedFilesystemBytes:v106 withCurrentLockUsage:stagerPolicy2 withSelectorsForStaging:selectorsForStaging6 withAvailableForUseError:downloadProgress2 withNewerVersionError:newerVersionError6];

      goto LABEL_18;
    }

    v73 = [MAAutoAssetSetStatus alloc];
    v74 = objc_opt_respondsToSelector();

    if (v74)
    {
      v75 = frameworkCopy;
      v176 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v75 clientDomainName];
      assetSetIdentifier = [v75 assetSetIdentifier];
      configuredAssetEntries7 = [v75 configuredAssetEntries];
      newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries7];
      atomicInstancesDownloaded7 = [v75 atomicInstancesDownloaded];
      newerAtomicInstanceDiscovered2 = [v75 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries2 = [v75 newerDiscoveredAtomicEntries];
      catalogLastTimeChecked = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:newerDiscoveredAtomicEntries2];
      latestDownloadedAtomicInstance2 = [v75 latestDownloadedAtomicInstance];
      newerAtomicInstanceDiscovered = [v75 latestDowloadedAtomicInstanceEntries];
      newerDiscoveredAtomicEntries = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      currentNotifications2 = [v75 currentNotifications];
      latestDownloadedAtomicInstance = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      latestDowloadedAtomicInstanceEntries = [v75 currentNeedPolicy];
      v237 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v75 schedulerPolicy];
      downloadedCatalogDownloadedFromLive = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      downloadedCatalogLastTimeChecked = [v75 stagerPolicy];
      v76 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      downloadUserInitiated7 = [v75 downloadUserInitiated];
      currentNotifications = [v75 downloadProgress];
      v77 = [MASAutoAssetSetProgress newShimmedFromFramework:?];
      downloadedNetworkBytes7 = [v75 downloadedNetworkBytes];
      downloadedFilesystemBytes7 = [v75 downloadedFilesystemBytes];
      currentLockUsage5 = [v75 currentLockUsage];
      selectorsForStaging7 = [v75 selectorsForStaging];
      availableForUseError6 = [v75 availableForUseError];
      newerVersionError7 = [v75 newerVersionError];

      v218 = selectorsForStaging7;
      v105 = selectorsForStaging7;
      currentNeedPolicy = currentLockUsage5;
      v99 = downloadedNetworkBytes7;
      v18 = atomicInstancesDownloaded7;
      v224 = v77;
      v97 = v77;
      LOBYTE(v96) = downloadUserInitiated7;
      v15 = newerAtomicInstanceDiscovered2;
      downloadedCatalogPostedDate = v76;
      v17 = [(MANAutoAssetSetStatus *)v176 initStatusForClientDomain:clientDomainName forAssetSetIdentifier:assetSetIdentifier withConfiguredAssetEntries:newerAtomicInstanceDiscovered3 withAtomicInstancesDownloaded:atomicInstancesDownloaded7 withNewerAtomicInstanceDiscovered:newerAtomicInstanceDiscovered2 withNewerDiscoveredAtomicEntries:catalogLastTimeChecked withLatestDownloadedAtomicInstance:latestDownloadedAtomicInstance2 withLatestDowloadedAtomicInstanceEntries:newerDiscoveredAtomicEntries withAllDownloadedAtomicInstanceEntries:0 withCurrentNotifications:latestDownloadedAtomicInstance withCurrentNeedPolicy:v237 withSchedulerPolicy:downloadedCatalogDownloadedFromLive withStagerPolicy:v76 withDownloadUserInitiated:v96 withDownloadProgress:v97 withDownloadedNetworkBytes:v99 withDownloadedFilesystemBytes:downloadedFilesystemBytes7 withCurrentLockUsage:currentLockUsage5 withSelectorsForStaging:v105 withAvailableForUseError:availableForUseError6 withNewerVersionError:newerVersionError7];

      v14 = latestDownloadedAtomicInstance2;
      latestDownloadedAtomicInstance3 = newerDiscoveredAtomicEntries2;
      goto LABEL_21;
    }

    v83 = [MAAutoAssetSetStatus alloc];
    v84 = objc_opt_respondsToSelector();

    if (v84)
    {
      v85 = frameworkCopy;
      v186 = [MANAutoAssetSetStatus alloc];
      clientDomainName = [v85 clientDomainName];
      assetSetIdentifier = [v85 assetSetIdentifier];
      atomicInstancesDownloaded8 = [v85 atomicInstancesDownloaded];
      newerAtomicInstanceDiscovered3 = [v85 newerAtomicInstanceDiscovered];
      newerDiscoveredAtomicEntries3 = [v85 newerDiscoveredAtomicEntries];
      v195 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:newerDiscoveredAtomicEntries3];
      latestDownloadedAtomicInstance3 = [v85 latestDownloadedAtomicInstance];
      catalogLastTimeChecked = [v85 latestDowloadedAtomicInstanceEntries];
      v217 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      newerAtomicInstanceDiscovered = [v85 currentNotifications];
      newerDiscoveredAtomicEntries = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      currentNotifications2 = [v85 currentNeedPolicy];
      latestDownloadedAtomicInstance = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      latestDowloadedAtomicInstanceEntries = [v85 schedulerPolicy];
      v237 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      downloadedCatalogCachedAssetSetID = [v85 stagerPolicy];
      v86 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      downloadUserInitiated8 = [v85 downloadUserInitiated];
      downloadedCatalogLastTimeChecked = [v85 downloadProgress];
      v87 = [MASAutoAssetSetProgress newShimmedFromFramework:?];
      downloadedNetworkBytes8 = [v85 downloadedNetworkBytes];
      downloadedFilesystemBytes8 = [v85 downloadedFilesystemBytes];
      currentLockUsage6 = [v85 currentLockUsage];
      selectorsForStaging8 = [v85 selectorsForStaging];
      availableForUseError7 = [v85 availableForUseError];
      newerVersionError8 = [v85 newerVersionError];

      v218 = newerVersionError8;
      currentNeedPolicy = availableForUseError7;
      v107 = availableForUseError7;
      v224 = selectorsForStaging8;
      currentNotifications = currentLockUsage6;
      v103 = currentLockUsage6;
      v100 = downloadedNetworkBytes8;
      v18 = newerDiscoveredAtomicEntries3;
      downloadedCatalogPostedDate = v87;
      v98 = v87;
      LOBYTE(v96) = downloadUserInitiated8;
      v14 = v217;
      v15 = v195;
      downloadedCatalogDownloadedFromLive = v86;
      v95 = v86;
      configuredAssetEntries7 = atomicInstancesDownloaded8;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v186 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withAllDownloadedAtomicInstanceEntries:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:latestDownloadedAtomicInstance3 withLatestDownloadedAtomicInstance:v217 withLatestDowloadedAtomicInstanceEntries:0 withAllDownloadedAtomicInstanceEntries:newerDiscoveredAtomicEntries withCurrentNotifications:latestDownloadedAtomicInstance withCurrentNeedPolicy:v237 withSchedulerPolicy:v95 withStagerPolicy:v96 withDownloadUserInitiated:v98 withDownloadProgress:v100 withDownloadedNetworkBytes:downloadedFilesystemBytes8 withDownloadedFilesystemBytes:v103 withCurrentLockUsage:selectorsForStaging8 withSelectorsForStaging:v107 withAvailableForUseError:newerVersionError8 withNewerVersionError:?];
      goto LABEL_21;
    }

LABEL_33:
    v17 = 0;
    goto LABEL_34;
  }

  v6 = frameworkCopy;
  v163 = [MANAutoAssetSetStatus alloc];
  clientDomainName = [v6 clientDomainName];
  assetSetIdentifier = [v6 assetSetIdentifier];
  configuredAssetEntries = [v6 configuredAssetEntries];
  newerAtomicInstanceDiscovered3 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:configuredAssetEntries];
  atomicInstancesDownloaded9 = [v6 atomicInstancesDownloaded];
  catalogCachedAssetSetID7 = [v6 catalogCachedAssetSetID];
  catalogDownloadedFromLive7 = [v6 catalogDownloadedFromLive];
  catalogLastTimeChecked = [v6 catalogLastTimeChecked];
  catalogPostedDate7 = [v6 catalogPostedDate];
  newerAtomicInstanceDiscovered = [v6 newerAtomicInstanceDiscovered];
  newerDiscoveredAtomicEntries = [v6 newerDiscoveredAtomicEntries];
  currentNotifications2 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
  latestDownloadedAtomicInstance = [v6 latestDownloadedAtomicInstance];
  latestDownloadedAtomicInstanceFromPreSUStaging2 = [v6 latestDownloadedAtomicInstanceFromPreSUStaging];
  latestDowloadedAtomicInstanceEntries = [v6 latestDowloadedAtomicInstanceEntries];
  v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
  downloadedCatalogCachedAssetSetID = [v6 downloadedCatalogCachedAssetSetID];
  downloadedCatalogDownloadedFromLive = [v6 downloadedCatalogDownloadedFromLive];
  downloadedCatalogLastTimeChecked = [v6 downloadedCatalogLastTimeChecked];
  downloadedCatalogPostedDate = [v6 downloadedCatalogPostedDate];
  currentNotifications = [v6 currentNotifications];
  v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
  currentNeedPolicy = [v6 currentNeedPolicy];
  v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
  schedulerPolicy = [v6 schedulerPolicy];
  v144 = [MASAutoAssetSetPolicy newShimmedFromFramework:schedulerPolicy];
  stagerPolicy = [v6 stagerPolicy];
  v132 = [MASAutoAssetSetPolicy newShimmedFromFramework:stagerPolicy];
  haveReceivedLookupResponse5 = [v6 haveReceivedLookupResponse];
  vendingAtomicInstanceForConfiguredEntries4 = [v6 vendingAtomicInstanceForConfiguredEntries];
  downloadUserInitiated9 = [v6 downloadUserInitiated];
  downloadProgress = [v6 downloadProgress];
  v125 = [MASAutoAssetSetProgress newShimmedFromFramework:downloadProgress];
  downloadedNetworkBytes9 = [v6 downloadedNetworkBytes];
  downloadedFilesystemBytes9 = [v6 downloadedFilesystemBytes];
  currentLockUsage = [v6 currentLockUsage];
  selectorsForStaging = [v6 selectorsForStaging];
  availableForUseError8 = [v6 availableForUseError];
  newerVersionError9 = [v6 newerVersionError];

  v117 = downloadedFilesystemBytes9;
  BYTE2(v109) = downloadUserInitiated9;
  BYTE1(v109) = vendingAtomicInstanceForConfiguredEntries4;
  LOBYTE(v109) = haveReceivedLookupResponse5;
  v12 = v132;
  v13 = v144;
  LOBYTE(v94) = latestDownloadedAtomicInstanceFromPreSUStaging2;
  v14 = catalogPostedDate7;
  v15 = catalogCachedAssetSetID7;
  latestDownloadedAtomicInstance3 = catalogDownloadedFromLive7;
  v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v163 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withCatalogCachedAssetSetID:newerAtomicInstanceDiscovered3 withCatalogDownloadedFromLive:atomicInstancesDownloaded9 withCatalogLastTimeChecked:catalogCachedAssetSetID7 withCatalogPostedDate:catalogDownloadedFromLive7 withNewerAtomicInstanceDiscovered:catalogLastTimeChecked withNewerDiscoveredAtomicEntries:catalogPostedDate7 withLatestDownloadedAtomicInstance:newerAtomicInstanceDiscovered withLatestDownloadedAtomicInstanceFromPreSUStaging:currentNotifications2 withLatestDowloadedAtomicInstanceEntries:latestDownloadedAtomicInstance withDownloadedCatalogCachedAssetSetID:v94 withDownloadedCatalogDownloadedFromLive:v237 withDownloadedCatalogLastTimeChecked:downloadedCatalogCachedAssetSetID withDownloadedCatalogPostedDate:downloadedCatalogDownloadedFromLive withCurrentNotifications:downloadedCatalogLastTimeChecked withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v144 vendingAtomicInstanceForConfiguredEntries:v132 withDownloadUserInitiated:v109 withDownloadProgress:v125 withDownloadedNetworkBytes:downloadedNetworkBytes9 withDownloadedFilesystemBytes:v117 withCurrentLockUsage:currentLockUsage withSelectorsForStaging:selectorsForStaging withAvailableForUseError:availableForUseError8 withNewerVersionError:newerVersionError9];

  v18 = atomicInstancesDownloaded9;
LABEL_12:

  configuredAssetEntries7 = configuredAssetEntries;
  v28 = schedulerPolicy;
LABEL_20:

LABEL_21:
LABEL_34:

  return v17;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && ((v9 = [MAAutoAssetSetStatus alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0) || (v11 = [MAAutoAssetSetStatus alloc], v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0) || (v13 = [MAAutoAssetSetStatus alloc], v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0) || (v15 = [MAAutoAssetSetStatus alloc], v16 = objc_opt_respondsToSelector(), v15, (v16 & 1) != 0) || (v17 = [MAAutoAssetSetStatus alloc], v18 = objc_opt_respondsToSelector(), v17, (v18 & 1) != 0) || (v19 = [MAAutoAssetSetStatus alloc], v20 = objc_opt_respondsToSelector(), v19, (v20 & 1) != 0) || (v21 = [MAAutoAssetSetStatus alloc], v22 = objc_opt_respondsToSelector(), v21, (v22 & 1) != 0) || (v23 = [MAAutoAssetSetStatus alloc], v24 = objc_opt_respondsToSelector(), v23, (v24 & 1) != 0) || (v25 = [MAAutoAssetSetStatus alloc], v26 = objc_opt_respondsToSelector(), v25, (v26 & 1) != 0)))
    {
      v27 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetSetStatus newShimmedFromFramework:v27];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end