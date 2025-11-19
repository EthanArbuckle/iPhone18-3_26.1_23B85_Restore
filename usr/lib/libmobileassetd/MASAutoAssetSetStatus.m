@interface MASAutoAssetSetStatus
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetSetStatus

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [v3 setByAddingObject:objc_opt_class()];

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

+ (id)newShimmedToFramework:(id)a3
{
  v3 = a3;
  if (!v3 || !__isPlatformVersionAtLeast(2, 17, 0, 0) || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class())
  {
    goto LABEL_34;
  }

  v4 = [MAAutoAssetSetStatus alloc];
  v5 = objc_opt_respondsToSelector();

  v6 = [MAAutoAssetSetStatus alloc];
  if (v5)
  {
    v216 = [v3 clientDomainName];
    v217 = [v3 assetSetIdentifier];
    v194 = [v3 configuredAssetEntries];
    v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v194];
    v164 = [v3 atomicInstancesDownloaded];
    v182 = [v3 catalogCachedAssetSetID];
    v210 = [v3 catalogDownloadedFromLive];
    v173 = [v3 catalogLastTimeChecked];
    v219 = [v3 catalogPostedDate];
    v209 = [v3 newerAtomicInstanceDiscovered];
    v195 = [v3 newerDiscoveredAtomicEntries];
    v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
    v214 = [v3 latestDownloadedAtomicInstance];
    v157 = [v3 latestDownloadedAtomicInstanceFromPreSUStaging];
    v193 = [v3 latestDowloadedAtomicInstanceEntries];
    v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
    v205 = [v3 downloadedCatalogCachedAssetSetID];
    v211 = [v3 downloadedCatalogDownloadedFromLive];
    v204 = [v3 downloadedCatalogLastTimeChecked];
    v206 = [v3 downloadedCatalogPostedDate];
    v192 = [v3 currentNotifications];
    v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
    v191 = [v3 currentNeedPolicy];
    v7 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
    v155 = [v3 schedulerPolicy];
    v142 = [MASAutoAssetSetPolicy newShimmedToFramework:v155];
    v152 = [v3 stagerPolicy];
    v130 = [MASAutoAssetSetPolicy newShimmedToFramework:v152];
    v196 = [v3 haveReceivedLookupResponse];
    v126 = [v3 vendingAtomicInstanceForConfiguredEntries];
    v8 = [v3 downloadUserInitiated];
    v136 = v6;
    v148 = [v3 downloadProgress];
    v123 = [MASAutoAssetSetProgress newShimmedToFramework:v148];
    v9 = [v3 downloadedNetworkBytes];
    v10 = [v3 downloadedFilesystemBytes];
    v121 = [v3 currentLockUsage];
    v11 = [v3 selectorsForStaging];
    v12 = [v3 availableForUseError];
    v13 = [v3 newerVersionError];
    v114 = v9;
    v119 = v10;
    BYTE2(v110) = v8;
    BYTE1(v110) = v126;
    LOBYTE(v110) = v196;
    v14 = v130;
    v15 = v142;
    v197 = v7;
    LOBYTE(v98) = v157;
    v16 = v164;
    v17 = v182;
    v18 = [v136 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v164 withCatalogCachedAssetSetID:v182 withCatalogDownloadedFromLive:v210 withCatalogLastTimeChecked:v173 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v209 withNewerDiscoveredAtomicEntries:v208 withLatestDownloadedAtomicInstance:v214 withLatestDownloadedAtomicInstanceFromPreSUStaging:v98 withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:v205 withDownloadedCatalogDownloadedFromLive:v211 withDownloadedCatalogLastTimeChecked:v204 withDownloadedCatalogPostedDate:v206 withCurrentNotifications:v202 withCurrentNeedPolicy:v7 withSchedulerPolicy:v142 withStagerPolicy:v130 havingReceivedLookupResponse:v110 vendingAtomicInstanceForConfiguredEntries:v123 withDownloadUserInitiated:v114 withDownloadProgress:v119 withDownloadedNetworkBytes:v121 withDownloadedFilesystemBytes:v11 withCurrentLockUsage:v12 withSelectorsForStaging:v13 withAvailableForUseError:? withNewerVersionError:?];

    v19 = v173;
    v20 = v123;
LABEL_18:

LABEL_19:
LABEL_20:
    v30 = v155;
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
      v216 = [v3 clientDomainName];
      v217 = [v3 assetSetIdentifier];
      v194 = [v3 configuredAssetEntries];
      v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v194];
      v166 = [v3 atomicInstancesDownloaded];
      v184 = [v3 catalogCachedAssetSetID];
      v210 = [v3 catalogDownloadedFromLive];
      v175 = [v3 catalogLastTimeChecked];
      v219 = [v3 catalogPostedDate];
      v209 = [v3 newerAtomicInstanceDiscovered];
      v159 = v32;
      v195 = [v3 newerDiscoveredAtomicEntries];
      v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v214 = [v3 latestDownloadedAtomicInstance];
      v193 = [v3 latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v205 = [v3 downloadedCatalogCachedAssetSetID];
      v211 = [v3 downloadedCatalogDownloadedFromLive];
      v204 = [v3 downloadedCatalogLastTimeChecked];
      v206 = [v3 downloadedCatalogPostedDate];
      v192 = [v3 currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      v191 = [v3 currentNeedPolicy];
      v33 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v155 = [v3 schedulerPolicy];
      v144 = [MASAutoAssetSetPolicy newShimmedToFramework:v155];
      v152 = [v3 stagerPolicy];
      v138 = [MASAutoAssetSetPolicy newShimmedToFramework:v152];
      v199 = [v3 haveReceivedLookupResponse];
      v132 = [v3 vendingAtomicInstanceForConfiguredEntries];
      v34 = [v3 downloadUserInitiated];
      v148 = [v3 downloadProgress];
      v128 = [MASAutoAssetSetProgress newShimmedToFramework:v148];
      v35 = [v3 downloadedNetworkBytes];
      v36 = [v3 downloadedFilesystemBytes];
      v125 = [v3 currentLockUsage];
      v37 = [v3 selectorsForStaging];
      v38 = [v3 availableForUseError];
      v39 = [v3 newerVersionError];
      v115 = v35;
      v120 = v36;
      BYTE2(v110) = v34;
      BYTE1(v110) = v132;
      LOBYTE(v110) = v199;
      v14 = v138;
      v15 = v144;
      v197 = v33;
      v16 = v166;
      v19 = v175;
      v17 = v184;
      v18 = [v159 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v166 withCatalogCachedAssetSetID:v184 withCatalogDownloadedFromLive:v210 withCatalogLastTimeChecked:v175 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v209 withNewerDiscoveredAtomicEntries:v208 withLatestDownloadedAtomicInstance:v214 withLatestDowloadedAtomicInstanceEntries:v212 withPreviouslyVendedLockedAtomicInstance:0 withDownloadedCatalogCachedAssetSetID:v205 withDownloadedCatalogDownloadedFromLive:v211 withDownloadedCatalogLastTimeChecked:v204 withDownloadedCatalogPostedDate:v206 withCurrentNotifications:v202 withCurrentNeedPolicy:v33 withSchedulerPolicy:v144 withStagerPolicy:v138 havingReceivedLookupResponse:v110 vendingAtomicInstanceForConfiguredEntries:v128 withDownloadUserInitiated:v115 withDownloadProgress:v120 withDownloadedNetworkBytes:v125 withDownloadedFilesystemBytes:v37 withCurrentLockUsage:v38 withSelectorsForStaging:v39 withAvailableForUseError:? withNewerVersionError:?];

LABEL_17:
      v20 = v128;
      goto LABEL_18;
    }

    v40 = objc_opt_respondsToSelector();

    v41 = [MAAutoAssetSetStatus alloc];
    if (v40)
    {
      v216 = [v3 clientDomainName];
      v217 = [v3 assetSetIdentifier];
      v194 = [v3 configuredAssetEntries];
      v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v194];
      v167 = [v3 atomicInstancesDownloaded];
      v185 = [v3 catalogCachedAssetSetID];
      v210 = [v3 catalogDownloadedFromLive];
      v176 = [v3 catalogLastTimeChecked];
      v219 = [v3 catalogPostedDate];
      v209 = [v3 newerAtomicInstanceDiscovered];
      v160 = v41;
      v195 = [v3 newerDiscoveredAtomicEntries];
      v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v214 = [v3 latestDownloadedAtomicInstance];
      v193 = [v3 latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v205 = [v3 downloadedCatalogCachedAssetSetID];
      v211 = [v3 downloadedCatalogDownloadedFromLive];
      v204 = [v3 downloadedCatalogLastTimeChecked];
      v206 = [v3 downloadedCatalogPostedDate];
      v192 = [v3 currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      v191 = [v3 currentNeedPolicy];
      v42 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v155 = [v3 schedulerPolicy];
      v145 = [MASAutoAssetSetPolicy newShimmedToFramework:v155];
      v152 = [v3 stagerPolicy];
      v139 = [MASAutoAssetSetPolicy newShimmedToFramework:v152];
      v200 = [v3 haveReceivedLookupResponse];
      v133 = [v3 vendingAtomicInstanceForConfiguredEntries];
      v43 = [v3 downloadUserInitiated];
      v148 = [v3 downloadProgress];
      v128 = [MASAutoAssetSetProgress newShimmedToFramework:v148];
      v44 = [v3 downloadedNetworkBytes];
      v45 = [v3 downloadedFilesystemBytes];
      v125 = [v3 currentLockUsage];
      v46 = [v3 selectorsForStaging];
      v47 = [v3 availableForUseError];
      v48 = [v3 newerVersionError];
      v112 = v44;
      v116 = v45;
      BYTE2(v109) = v43;
      BYTE1(v109) = v133;
      LOBYTE(v109) = v200;
      v14 = v139;
      v15 = v145;
      v197 = v42;
      v19 = v176;
      v17 = v185;
      v18 = [v160 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v167 withCatalogCachedAssetSetID:v185 withCatalogDownloadedFromLive:v210 withCatalogLastTimeChecked:v176 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v209 withNewerDiscoveredAtomicEntries:v208 withLatestDownloadedAtomicInstance:v214 withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:v205 withDownloadedCatalogDownloadedFromLive:v211 withDownloadedCatalogLastTimeChecked:v204 withDownloadedCatalogPostedDate:v206 withCurrentNotifications:v202 withCurrentNeedPolicy:v42 withSchedulerPolicy:v145 withStagerPolicy:v139 havingReceivedLookupResponse:v109 vendingAtomicInstanceForConfiguredEntries:v128 withDownloadUserInitiated:v112 withDownloadProgress:v116 withDownloadedNetworkBytes:v125 withDownloadedFilesystemBytes:v46 withCurrentLockUsage:v47 withSelectorsForStaging:v48 withAvailableForUseError:? withNewerVersionError:?];

      v16 = v167;
      goto LABEL_17;
    }

    v49 = objc_opt_respondsToSelector();

    v50 = [MAAutoAssetSetStatus alloc];
    if (v49)
    {
      v216 = [v3 clientDomainName];
      v217 = [v3 assetSetIdentifier];
      v194 = [v3 configuredAssetEntries];
      v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v194];
      v168 = [v3 atomicInstancesDownloaded];
      v186 = [v3 catalogCachedAssetSetID];
      v210 = [v3 catalogDownloadedFromLive];
      v177 = [v3 catalogLastTimeChecked];
      v219 = [v3 catalogPostedDate];
      v209 = [v3 newerAtomicInstanceDiscovered];
      v161 = v50;
      v195 = [v3 newerDiscoveredAtomicEntries];
      v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v214 = [v3 latestDownloadedAtomicInstance];
      v193 = [v3 latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v205 = [v3 downloadedCatalogCachedAssetSetID];
      v211 = [v3 downloadedCatalogDownloadedFromLive];
      v204 = [v3 downloadedCatalogLastTimeChecked];
      v206 = [v3 downloadedCatalogPostedDate];
      v192 = [v3 currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      v191 = [v3 currentNeedPolicy];
      v197 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v155 = [v3 schedulerPolicy];
      v146 = [MASAutoAssetSetPolicy newShimmedToFramework:v155];
      v152 = [v3 stagerPolicy];
      v134 = [MASAutoAssetSetPolicy newShimmedToFramework:v152];
      v140 = [v3 haveReceivedLookupResponse];
      v51 = [v3 downloadUserInitiated];
      v150 = [v3 downloadProgress];
      v129 = [MASAutoAssetSetProgress newShimmedToFramework:v150];
      v52 = [v3 downloadedNetworkBytes];
      v53 = [v3 downloadedFilesystemBytes];
      v54 = [v3 currentLockUsage];
      v55 = [v3 selectorsForStaging];
      v56 = [v3 availableForUseError];
      v57 = [v3 newerVersionError];
      v117 = v53;
      BYTE1(v109) = v51;
      LOBYTE(v109) = v140;
      v15 = v146;
      v17 = v186;
      v18 = [v161 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v168 withCatalogCachedAssetSetID:v186 withCatalogDownloadedFromLive:v210 withCatalogLastTimeChecked:v177 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v209 withNewerDiscoveredAtomicEntries:v208 withLatestDownloadedAtomicInstance:v214 withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:v205 withDownloadedCatalogDownloadedFromLive:v211 withDownloadedCatalogLastTimeChecked:v204 withDownloadedCatalogPostedDate:v206 withCurrentNotifications:v202 withCurrentNeedPolicy:v197 withSchedulerPolicy:v146 withStagerPolicy:v134 havingReceivedLookupResponse:v109 withDownloadUserInitiated:v129 withDownloadProgress:v52 withDownloadedNetworkBytes:v117 withDownloadedFilesystemBytes:v54 withCurrentLockUsage:v55 withSelectorsForStaging:v56 withAvailableForUseError:v57 withNewerVersionError:?];

      v16 = v168;
      v19 = v177;
      v58 = v134;
LABEL_27:

      goto LABEL_19;
    }

    v59 = objc_opt_respondsToSelector();

    v60 = [MAAutoAssetSetStatus alloc];
    if (v59)
    {
      v216 = [v3 clientDomainName];
      v217 = [v3 assetSetIdentifier];
      v194 = [v3 configuredAssetEntries];
      v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v194];
      v169 = [v3 atomicInstancesDownloaded];
      v187 = [v3 catalogCachedAssetSetID];
      v210 = [v3 catalogDownloadedFromLive];
      v178 = [v3 catalogLastTimeChecked];
      v219 = [v3 catalogPostedDate];
      v209 = [v3 newerAtomicInstanceDiscovered];
      v162 = v60;
      v195 = [v3 newerDiscoveredAtomicEntries];
      v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v214 = [v3 latestDownloadedAtomicInstance];
      v193 = [v3 latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v205 = [v3 downloadedCatalogCachedAssetSetID];
      v211 = [v3 downloadedCatalogDownloadedFromLive];
      v204 = [v3 downloadedCatalogLastTimeChecked];
      v206 = [v3 downloadedCatalogPostedDate];
      v192 = [v3 currentNotifications];
      v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      v191 = [v3 currentNeedPolicy];
      v61 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v155 = [v3 schedulerPolicy];
      v147 = [MASAutoAssetSetPolicy newShimmedToFramework:v155];
      v152 = [v3 stagerPolicy];
      v141 = [MASAutoAssetSetPolicy newShimmedToFramework:v152];
      v201 = [v3 downloadUserInitiated];
      v151 = [v3 downloadProgress];
      v135 = [MASAutoAssetSetProgress newShimmedToFramework:v151];
      v62 = [v3 downloadedNetworkBytes];
      v63 = [v3 downloadedFilesystemBytes];
      v64 = [v3 currentLockUsage];
      v65 = [v3 selectorsForStaging];
      v66 = [v3 availableForUseError];
      v67 = [v3 newerVersionError];
      v113 = v62;
      v118 = v63;
      v16 = v169;
      LOBYTE(v109) = v201;
      v15 = v147;
      v197 = v61;
      v17 = v187;
      v18 = [v162 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v169 withCatalogCachedAssetSetID:v187 withCatalogDownloadedFromLive:v210 withCatalogLastTimeChecked:v178 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v209 withNewerDiscoveredAtomicEntries:v208 withLatestDownloadedAtomicInstance:v214 withLatestDowloadedAtomicInstanceEntries:v212 withDownloadedCatalogCachedAssetSetID:v205 withDownloadedCatalogDownloadedFromLive:v211 withDownloadedCatalogLastTimeChecked:v204 withDownloadedCatalogPostedDate:v206 withCurrentNotifications:v202 withCurrentNeedPolicy:v61 withSchedulerPolicy:v147 withStagerPolicy:v141 withDownloadUserInitiated:v109 withDownloadProgress:v135 withDownloadedNetworkBytes:v113 withDownloadedFilesystemBytes:v118 withCurrentLockUsage:v64 withSelectorsForStaging:v65 withAvailableForUseError:v66 withNewerVersionError:v67];

      v19 = v178;
      v58 = v141;
      goto LABEL_27;
    }

    v68 = objc_opt_respondsToSelector();

    v69 = [MAAutoAssetSetStatus alloc];
    if (v68)
    {
      v216 = [v3 clientDomainName];
      v217 = [v3 assetSetIdentifier];
      v194 = [v3 configuredAssetEntries];
      v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v194];
      v170 = [v3 atomicInstancesDownloaded];
      v188 = [v3 catalogCachedAssetSetID];
      v210 = [v3 catalogDownloadedFromLive];
      v179 = [v3 catalogLastTimeChecked];
      v219 = [v3 catalogPostedDate];
      v209 = [v3 newerAtomicInstanceDiscovered];
      v163 = v69;
      v195 = [v3 newerDiscoveredAtomicEntries];
      v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v214 = [v3 latestDownloadedAtomicInstance];
      v193 = [v3 latestDowloadedAtomicInstanceEntries];
      v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v205 = [v3 currentNotifications];
      v211 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      v204 = [v3 currentNeedPolicy];
      v206 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v192 = [v3 schedulerPolicy];
      v70 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v191 = [v3 stagerPolicy];
      v71 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v203 = [v3 downloadUserInitiated];
      v155 = [v3 downloadProgress];
      v154 = [MASAutoAssetSetProgress newShimmedToFramework:v155];
      v72 = [v3 downloadedNetworkBytes];
      v73 = [v3 downloadedFilesystemBytes];
      v74 = [v3 currentLockUsage];
      v75 = [v3 selectorsForStaging];
      v76 = [v3 availableForUseError];
      v77 = [v3 newerVersionError];
      v107 = v72;
      v108 = v73;
      v16 = v170;
      v17 = v188;
      LOBYTE(v103) = v203;
      v197 = v71;
      v202 = v70;
      v19 = v179;
      v18 = [v163 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v170 withCatalogCachedAssetSetID:v188 withCatalogDownloadedFromLive:v210 withCatalogLastTimeChecked:v179 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v209 withNewerDiscoveredAtomicEntries:v208 withLatestDownloadedAtomicInstance:v214 withLatestDowloadedAtomicInstanceEntries:v212 withCurrentNotifications:v211 withCurrentNeedPolicy:v206 withSchedulerPolicy:v70 withStagerPolicy:v71 withDownloadUserInitiated:v103 withDownloadProgress:v154 withDownloadedNetworkBytes:v107 withDownloadedFilesystemBytes:v108 withCurrentLockUsage:v74 withSelectorsForStaging:v75 withAvailableForUseError:v76 withNewerVersionError:v77];

      goto LABEL_20;
    }

    v78 = objc_opt_respondsToSelector();

    v79 = [MAAutoAssetSetStatus alloc];
    if (v78)
    {
      v216 = [v3 clientDomainName];
      v217 = [v3 assetSetIdentifier];
      v194 = [v3 configuredAssetEntries];
      v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:?];
      v171 = [v3 atomicInstancesDownloaded];
      v189 = [v3 newerAtomicInstanceDiscovered];
      v210 = [v3 newerDiscoveredAtomicEntries];
      v180 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v219 = [v3 latestDownloadedAtomicInstance];
      v209 = [v3 latestDowloadedAtomicInstanceEntries];
      v195 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
      v208 = [v3 currentNotifications];
      v214 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      v193 = [v3 currentNeedPolicy];
      v212 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v205 = [v3 schedulerPolicy];
      v211 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v204 = [v3 stagerPolicy];
      v80 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v207 = [v3 downloadUserInitiated];
      v192 = [v3 downloadProgress];
      v81 = [MASAutoAssetSetProgress newShimmedToFramework:?];
      v82 = [v3 downloadedNetworkBytes];
      v83 = [v3 downloadedFilesystemBytes];
      v84 = [v3 currentLockUsage];
      v85 = [v3 selectorsForStaging];
      v86 = [v3 availableForUseError];
      v87 = [v3 newerVersionError];
      v197 = v85;
      v191 = v84;
      v104 = v83;
      v106 = v84;
      v16 = v171;
      v19 = v180;
      v202 = v81;
      LOBYTE(v100) = v207;
      v206 = v80;
      v18 = [v79 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v171 withNewerAtomicInstanceDiscovered:v189 withNewerDiscoveredAtomicEntries:v180 withLatestDownloadedAtomicInstance:v219 withLatestDowloadedAtomicInstanceEntries:v195 withAllDownloadedAtomicInstanceEntries:0 withCurrentNotifications:v214 withCurrentNeedPolicy:v212 withSchedulerPolicy:v211 withStagerPolicy:v80 withDownloadUserInitiated:v100 withDownloadProgress:v81 withDownloadedNetworkBytes:v82 withDownloadedFilesystemBytes:v104 withCurrentLockUsage:v106 withSelectorsForStaging:v85 withAvailableForUseError:v86 withNewerVersionError:v87];

      v17 = v189;
      goto LABEL_22;
    }

    v88 = objc_opt_respondsToSelector();

    if (v88)
    {
      v172 = [MAAutoAssetSetStatus alloc];
      v216 = [v3 clientDomainName];
      v217 = [v3 assetSetIdentifier];
      v194 = [v3 atomicInstancesDownloaded];
      v218 = [v3 newerAtomicInstanceDiscovered];
      v16 = [v3 newerDiscoveredAtomicEntries];
      v190 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:v16];
      v210 = [v3 latestDownloadedAtomicInstance];
      v181 = [v3 latestDowloadedAtomicInstanceEntries];
      v219 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:v181];
      v209 = [v3 currentNotifications];
      v195 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
      v208 = [v3 currentNeedPolicy];
      v89 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v193 = [v3 schedulerPolicy];
      v90 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v205 = [v3 stagerPolicy];
      v91 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
      v215 = [v3 downloadUserInitiated];
      v204 = [v3 downloadProgress];
      v92 = [MASAutoAssetSetProgress newShimmedToFramework:?];
      v213 = [v3 downloadedNetworkBytes];
      v93 = [v3 downloadedFilesystemBytes];
      v94 = [v3 currentLockUsage];
      v95 = [v3 selectorsForStaging];
      v96 = [v3 availableForUseError];
      v197 = [v3 newerVersionError];
      v191 = v96;
      v202 = v95;
      v192 = v94;
      v102 = v93;
      v105 = v94;
      v19 = v181;
      v101 = v213;
      v17 = v190;
      v206 = v92;
      LOBYTE(v99) = v215;
      v211 = v91;
      v212 = v90;
      v214 = v89;
      v18 = [v172 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withAtomicInstancesDownloaded:v194 withNewerAtomicInstanceDiscovered:v218 withNewerDiscoveredAtomicEntries:v190 withLatestDownloadedAtomicInstance:v210 withLatestDowloadedAtomicInstanceEntries:v219 withAllDownloadedAtomicInstanceEntries:0 withCurrentNotifications:v195 withCurrentNeedPolicy:v89 withSchedulerPolicy:v90 withStagerPolicy:v91 withDownloadUserInitiated:v99 withDownloadProgress:v92 withDownloadedNetworkBytes:v101 withDownloadedFilesystemBytes:v102 withCurrentLockUsage:v105 withSelectorsForStaging:v95 withAvailableForUseError:v96 withNewerVersionError:v197];
      goto LABEL_22;
    }

LABEL_34:
    v18 = 0;
    goto LABEL_35;
  }

  v216 = [v3 clientDomainName];
  v217 = [v3 assetSetIdentifier];
  v194 = [v3 configuredAssetEntries];
  v218 = [MASAutoAssetSetEntry newShimmedArrayToFramework:v194];
  v165 = [v3 atomicInstancesDownloaded];
  v183 = [v3 catalogCachedAssetSetID];
  v210 = [v3 catalogDownloadedFromLive];
  v174 = [v3 catalogLastTimeChecked];
  v219 = [v3 catalogPostedDate];
  v209 = [v3 newerAtomicInstanceDiscovered];
  v158 = v22;
  v195 = [v3 newerDiscoveredAtomicEntries];
  v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
  v214 = [v3 latestDownloadedAtomicInstance];
  v156 = [v3 latestDownloadedAtomicInstanceFromPreSUStaging];
  v193 = [v3 latestDowloadedAtomicInstanceEntries];
  v212 = [MASAutoAssetSetAtomicEntry newShimmedArrayToFramework:?];
  v205 = [v3 downloadedCatalogCachedAssetSetID];
  v211 = [v3 downloadedCatalogDownloadedFromLive];
  v204 = [v3 downloadedCatalogLastTimeChecked];
  v206 = [v3 downloadedCatalogPostedDate];
  v192 = [v3 currentNotifications];
  v202 = [MASAutoAssetSetNotifications newShimmedToFramework:?];
  v191 = [v3 currentNeedPolicy];
  v23 = [MASAutoAssetSetPolicy newShimmedToFramework:?];
  v153 = [v3 schedulerPolicy];
  v137 = [MASAutoAssetSetPolicy newShimmedToFramework:v153];
  v149 = [v3 stagerPolicy];
  v131 = [MASAutoAssetSetPolicy newShimmedToFramework:v149];
  v198 = [v3 haveReceivedLookupResponse];
  v127 = [v3 vendingAtomicInstanceForConfiguredEntries];
  v24 = [v3 downloadUserInitiated];
  v143 = [v3 downloadProgress];
  v124 = [MASAutoAssetSetProgress newShimmedToFramework:v143];
  v25 = [v3 downloadedNetworkBytes];
  v26 = [v3 downloadedFilesystemBytes];
  v122 = [v3 currentLockUsage];
  v27 = [v3 selectorsForStaging];
  v28 = [v3 availableForUseError];
  v29 = [v3 newerVersionError];
  BYTE2(v111) = v24;
  BYTE1(v111) = v127;
  LOBYTE(v111) = v198;
  v197 = v23;
  LOBYTE(v98) = v156;
  v16 = v165;
  v17 = v183;
  v18 = [v158 initStatusForClientDomain:v216 forAssetSetIdentifier:v217 withConfiguredAssetEntries:v218 withAtomicInstancesDownloaded:v165 withCatalogCachedAssetSetID:v183 withCatalogDownloadedFromLive:v210 withCatalogLastTimeChecked:v174 withCatalogPostedDate:v219 withNewerAtomicInstanceDiscovered:v209 withNewerDiscoveredAtomicEntries:v208 withLatestDownloadedAtomicInstance:v214 withLatestDownloadedAtomicInstanceFromPreSUStaging:v98 withLatestDowloadedAtomicInstanceEntries:v212 withPreviouslyVendedLockedAtomicInstance:0 withDownloadedCatalogCachedAssetSetID:v205 withDownloadedCatalogDownloadedFromLive:v211 withDownloadedCatalogLastTimeChecked:v204 withDownloadedCatalogPostedDate:v206 withCurrentNotifications:v202 withCurrentNeedPolicy:v23 withSchedulerPolicy:v137 withStagerPolicy:v131 havingReceivedLookupResponse:v111 vendingAtomicInstanceForConfiguredEntries:v124 withDownloadUserInitiated:v25 withDownloadProgress:v26 withDownloadedNetworkBytes:v122 withDownloadedFilesystemBytes:v27 withCurrentLockUsage:v28 withSelectorsForStaging:v29 withAvailableForUseError:? withNewerVersionError:?];

  v19 = v174;
  v30 = v153;
LABEL_21:

LABEL_22:
LABEL_35:

  return v18;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (!v3 || !__isPlatformVersionAtLeast(2, 17, 0, 0) || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class())
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
      v21 = v3;
      v164 = [MANAutoAssetSetStatus alloc];
      v236 = [v21 clientDomainName];
      v234 = [v21 assetSetIdentifier];
      v170 = [v21 configuredAssetEntries];
      v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v170];
      v197 = [v21 atomicInstancesDownloaded];
      v188 = [v21 catalogCachedAssetSetID];
      v179 = [v21 catalogDownloadedFromLive];
      v233 = [v21 catalogLastTimeChecked];
      v210 = [v21 catalogPostedDate];
      v230 = [v21 newerAtomicInstanceDiscovered];
      v208 = [v21 newerDiscoveredAtomicEntries];
      v229 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v238 = [v21 latestDownloadedAtomicInstance];
      v161 = [v21 latestDownloadedAtomicInstanceFromPreSUStaging];
      v207 = [v21 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v223 = [v21 downloadedCatalogCachedAssetSetID];
      v231 = [v21 downloadedCatalogDownloadedFromLive];
      v222 = [v21 downloadedCatalogLastTimeChecked];
      v226 = [v21 downloadedCatalogPostedDate];
      v206 = [v21 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v205 = [v21 currentNeedPolicy];
      v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v158 = [v21 schedulerPolicy];
      v139 = [MASAutoAssetSetPolicy newShimmedFromFramework:v158];
      v155 = [v21 stagerPolicy];
      v22 = [MASAutoAssetSetPolicy newShimmedFromFramework:v155];
      v145 = [v21 haveReceivedLookupResponse];
      v133 = [v21 vendingAtomicInstanceForConfiguredEntries];
      v128 = [v21 downloadUserInitiated];
      v150 = [v21 downloadProgress];
      v125 = [MASAutoAssetSetProgress newShimmedFromFramework:v150];
      v23 = [v21 downloadedNetworkBytes];
      v24 = [v21 downloadedFilesystemBytes];
      v122 = [v21 currentLockUsage];
      v120 = [v21 selectorsForStaging];
      v25 = [v21 availableForUseError];
      v26 = [v21 newerVersionError];

      v119 = v24;
      BYTE2(v111) = v128;
      BYTE1(v111) = v133;
      LOBYTE(v111) = v145;
      v12 = v22;
      v13 = v139;
      v110 = v22;
      LOBYTE(v94) = v161;
      v14 = v210;
      v15 = v188;
      v18 = v197;
      v16 = v179;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v164 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v236 withAtomicInstancesDownloaded:v234 withCatalogCachedAssetSetID:v235 withCatalogDownloadedFromLive:v197 withCatalogLastTimeChecked:v188 withCatalogPostedDate:v179 withNewerAtomicInstanceDiscovered:v233 withNewerDiscoveredAtomicEntries:v210 withLatestDownloadedAtomicInstance:v230 withLatestDownloadedAtomicInstanceFromPreSUStaging:v229 withLatestDowloadedAtomicInstanceEntries:v238 withPreviouslyVendedLockedAtomicInstance:v94 withDownloadedCatalogCachedAssetSetID:v237 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:v223 withDownloadedCatalogPostedDate:v231 withCurrentNotifications:v222 withCurrentNeedPolicy:v226 withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v139 vendingAtomicInstanceForConfiguredEntries:v110 withDownloadUserInitiated:v111 withDownloadProgress:v125 withDownloadedNetworkBytes:v23 withDownloadedFilesystemBytes:v119 withCurrentLockUsage:v122 withSelectorsForStaging:v120 withAvailableForUseError:v25 withNewerVersionError:v26];

      goto LABEL_12;
    }

    v29 = [MAAutoAssetSetStatus alloc];
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      v31 = v3;
      v165 = [MANAutoAssetSetStatus alloc];
      v236 = [v31 clientDomainName];
      v234 = [v31 assetSetIdentifier];
      v171 = [v31 configuredAssetEntries];
      v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v171];
      v198 = [v31 atomicInstancesDownloaded];
      v189 = [v31 catalogCachedAssetSetID];
      v180 = [v31 catalogDownloadedFromLive];
      v233 = [v31 catalogLastTimeChecked];
      v211 = [v31 catalogPostedDate];
      v230 = [v31 newerAtomicInstanceDiscovered];
      v208 = [v31 newerDiscoveredAtomicEntries];
      v229 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v238 = [v31 latestDownloadedAtomicInstance];
      v207 = [v31 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v223 = [v31 downloadedCatalogCachedAssetSetID];
      v231 = [v31 downloadedCatalogDownloadedFromLive];
      v222 = [v31 downloadedCatalogLastTimeChecked];
      v226 = [v31 downloadedCatalogPostedDate];
      v206 = [v31 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v205 = [v31 currentNeedPolicy];
      v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v162 = [v31 schedulerPolicy];
      v151 = [MASAutoAssetSetPolicy newShimmedFromFramework:v162];
      v159 = [v31 stagerPolicy];
      v140 = [MASAutoAssetSetPolicy newShimmedFromFramework:v159];
      v146 = [v31 haveReceivedLookupResponse];
      v134 = [v31 vendingAtomicInstanceForConfiguredEntries];
      v32 = [v31 downloadUserInitiated];
      v156 = [v31 downloadProgress];
      v129 = [MASAutoAssetSetProgress newShimmedFromFramework:v156];
      v33 = [v31 downloadedNetworkBytes];
      v34 = [v31 downloadedFilesystemBytes];
      v126 = [v31 currentLockUsage];
      v123 = [v31 selectorsForStaging];
      v35 = [v31 availableForUseError];
      v36 = [v31 newerVersionError];

      v118 = v34;
      BYTE2(v109) = v32;
      BYTE1(v109) = v134;
      LOBYTE(v109) = v146;
      v37 = v140;
      v38 = v151;
      v14 = v211;
      v39 = v189;
      v18 = v198;
      v16 = v180;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v165 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withPreviouslyVendedLockedAtomicInstance:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v236 withAtomicInstancesDownloaded:v234 withCatalogCachedAssetSetID:v235 withCatalogDownloadedFromLive:v198 withCatalogLastTimeChecked:v189 withCatalogPostedDate:v180 withNewerAtomicInstanceDiscovered:v233 withNewerDiscoveredAtomicEntries:v211 withLatestDownloadedAtomicInstance:v230 withLatestDowloadedAtomicInstanceEntries:v229 withPreviouslyVendedLockedAtomicInstance:v238 withDownloadedCatalogCachedAssetSetID:v237 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:v223 withDownloadedCatalogPostedDate:v231 withCurrentNotifications:v222 withCurrentNeedPolicy:v226 withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v151 vendingAtomicInstanceForConfiguredEntries:v140 withDownloadUserInitiated:v109 withDownloadProgress:v129 withDownloadedNetworkBytes:v33 withDownloadedFilesystemBytes:v118 withCurrentLockUsage:v126 withSelectorsForStaging:v123 withAvailableForUseError:v35 withNewerVersionError:v36];

      v27 = v171;
LABEL_17:

      v15 = v39;
LABEL_18:

LABEL_19:
      v28 = v162;
      goto LABEL_20;
    }

    v40 = [MAAutoAssetSetStatus alloc];
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      v42 = v3;
      v166 = [MANAutoAssetSetStatus alloc];
      v236 = [v42 clientDomainName];
      v234 = [v42 assetSetIdentifier];
      v172 = [v42 configuredAssetEntries];
      v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v172];
      v199 = [v42 atomicInstancesDownloaded];
      v190 = [v42 catalogCachedAssetSetID];
      v181 = [v42 catalogDownloadedFromLive];
      v233 = [v42 catalogLastTimeChecked];
      v212 = [v42 catalogPostedDate];
      v230 = [v42 newerAtomicInstanceDiscovered];
      v208 = [v42 newerDiscoveredAtomicEntries];
      v229 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v238 = [v42 latestDownloadedAtomicInstance];
      v207 = [v42 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v223 = [v42 downloadedCatalogCachedAssetSetID];
      v231 = [v42 downloadedCatalogDownloadedFromLive];
      v222 = [v42 downloadedCatalogLastTimeChecked];
      v226 = [v42 downloadedCatalogPostedDate];
      v206 = [v42 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v205 = [v42 currentNeedPolicy];
      v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v162 = [v42 schedulerPolicy];
      v141 = [MASAutoAssetSetPolicy newShimmedFromFramework:v162];
      v159 = [v42 stagerPolicy];
      v135 = [MASAutoAssetSetPolicy newShimmedFromFramework:v159];
      v152 = [v42 haveReceivedLookupResponse];
      v147 = [v42 vendingAtomicInstanceForConfiguredEntries];
      v43 = [v42 downloadUserInitiated];
      v156 = [v42 downloadProgress];
      v129 = [MASAutoAssetSetProgress newShimmedFromFramework:v156];
      v44 = [v42 downloadedNetworkBytes];
      v45 = [v42 downloadedFilesystemBytes];
      v126 = [v42 currentLockUsage];
      v124 = [v42 selectorsForStaging];
      v121 = [v42 availableForUseError];
      v46 = [v42 newerVersionError];

      v114 = v45;
      v27 = v172;
      BYTE2(v108) = v43;
      BYTE1(v108) = v147;
      LOBYTE(v108) = v152;
      v37 = v135;
      v38 = v141;
      v14 = v212;
      v39 = v190;
      v18 = v199;
      v16 = v181;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v166 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v236 withAtomicInstancesDownloaded:v234 withCatalogCachedAssetSetID:v235 withCatalogDownloadedFromLive:v199 withCatalogLastTimeChecked:v190 withCatalogPostedDate:v181 withNewerAtomicInstanceDiscovered:v233 withNewerDiscoveredAtomicEntries:v212 withLatestDownloadedAtomicInstance:v230 withLatestDowloadedAtomicInstanceEntries:v229 withDownloadedCatalogCachedAssetSetID:v238 withDownloadedCatalogDownloadedFromLive:v237 withDownloadedCatalogLastTimeChecked:v223 withDownloadedCatalogPostedDate:v231 withCurrentNotifications:v222 withCurrentNeedPolicy:v226 withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v141 vendingAtomicInstanceForConfiguredEntries:v135 withDownloadUserInitiated:v108 withDownloadProgress:v129 withDownloadedNetworkBytes:v44 withDownloadedFilesystemBytes:v114 withCurrentLockUsage:v126 withSelectorsForStaging:v124 withAvailableForUseError:v121 withNewerVersionError:v46];

      goto LABEL_17;
    }

    v47 = [MAAutoAssetSetStatus alloc];
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      v49 = v3;
      v167 = [MANAutoAssetSetStatus alloc];
      v236 = [v49 clientDomainName];
      v234 = [v49 assetSetIdentifier];
      v173 = [v49 configuredAssetEntries];
      v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v173];
      v200 = [v49 atomicInstancesDownloaded];
      v191 = [v49 catalogCachedAssetSetID];
      v182 = [v49 catalogDownloadedFromLive];
      v233 = [v49 catalogLastTimeChecked];
      v213 = [v49 catalogPostedDate];
      v230 = [v49 newerAtomicInstanceDiscovered];
      v208 = [v49 newerDiscoveredAtomicEntries];
      v229 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v238 = [v49 latestDownloadedAtomicInstance];
      v207 = [v49 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v223 = [v49 downloadedCatalogCachedAssetSetID];
      v231 = [v49 downloadedCatalogDownloadedFromLive];
      v222 = [v49 downloadedCatalogLastTimeChecked];
      v226 = [v49 downloadedCatalogPostedDate];
      v206 = [v49 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v205 = [v49 currentNeedPolicy];
      v50 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v162 = [v49 schedulerPolicy];
      v153 = [MASAutoAssetSetPolicy newShimmedFromFramework:v162];
      v159 = [v49 stagerPolicy];
      v148 = [MASAutoAssetSetPolicy newShimmedFromFramework:v159];
      v219 = [v49 haveReceivedLookupResponse];
      v142 = [v49 downloadUserInitiated];
      v157 = [v49 downloadProgress];
      v136 = [MASAutoAssetSetProgress newShimmedFromFramework:v157];
      v51 = [v49 downloadedNetworkBytes];
      v52 = [v49 downloadedFilesystemBytes];
      v130 = [v49 currentLockUsage];
      v53 = [v49 selectorsForStaging];
      v54 = [v49 availableForUseError];
      v55 = [v49 newerVersionError];

      v112 = v51;
      v115 = v52;
      v18 = v200;
      BYTE1(v108) = v142;
      LOBYTE(v108) = v219;
      v56 = v148;
      v38 = v153;
      v218 = v50;
      v15 = v191;
      v16 = v182;
      v17 = [(MANAutoAssetSetStatus *)v167 initStatusForClientDomain:v236 forAssetSetIdentifier:v234 withConfiguredAssetEntries:v235 withAtomicInstancesDownloaded:v200 withCatalogCachedAssetSetID:v191 withCatalogDownloadedFromLive:v182 withCatalogLastTimeChecked:v233 withCatalogPostedDate:v213 withNewerAtomicInstanceDiscovered:v230 withNewerDiscoveredAtomicEntries:v229 withLatestDownloadedAtomicInstance:v238 withLatestDowloadedAtomicInstanceEntries:v237 withDownloadedCatalogCachedAssetSetID:v223 withDownloadedCatalogDownloadedFromLive:v231 withDownloadedCatalogLastTimeChecked:v222 withDownloadedCatalogPostedDate:v226 withCurrentNotifications:v224 withCurrentNeedPolicy:v50 withSchedulerPolicy:v153 withStagerPolicy:v148 havingReceivedLookupResponse:v108 withDownloadUserInitiated:v136 withDownloadProgress:v112 withDownloadedNetworkBytes:v115 withDownloadedFilesystemBytes:v130 withCurrentLockUsage:v53 withSelectorsForStaging:v54 withAvailableForUseError:v55 withNewerVersionError:?];

      v27 = v173;
      v14 = v213;
LABEL_26:

      goto LABEL_19;
    }

    v57 = [MAAutoAssetSetStatus alloc];
    v58 = objc_opt_respondsToSelector();

    if (v58)
    {
      v59 = v3;
      v168 = [MANAutoAssetSetStatus alloc];
      v236 = [v59 clientDomainName];
      v234 = [v59 assetSetIdentifier];
      v174 = [v59 configuredAssetEntries];
      v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v174];
      v201 = [v59 atomicInstancesDownloaded];
      v192 = [v59 catalogCachedAssetSetID];
      v183 = [v59 catalogDownloadedFromLive];
      v233 = [v59 catalogLastTimeChecked];
      v214 = [v59 catalogPostedDate];
      v230 = [v59 newerAtomicInstanceDiscovered];
      v208 = [v59 newerDiscoveredAtomicEntries];
      v229 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v238 = [v59 latestDownloadedAtomicInstance];
      v207 = [v59 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v223 = [v59 downloadedCatalogCachedAssetSetID];
      v231 = [v59 downloadedCatalogDownloadedFromLive];
      v222 = [v59 downloadedCatalogLastTimeChecked];
      v226 = [v59 downloadedCatalogPostedDate];
      v206 = [v59 currentNotifications];
      v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v205 = [v59 currentNeedPolicy];
      v60 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v162 = [v59 schedulerPolicy];
      v154 = [MASAutoAssetSetPolicy newShimmedFromFramework:v162];
      v159 = [v59 stagerPolicy];
      v149 = [MASAutoAssetSetPolicy newShimmedFromFramework:v159];
      v220 = [v59 downloadUserInitiated];
      v157 = [v59 downloadProgress];
      v143 = [MASAutoAssetSetProgress newShimmedFromFramework:v157];
      v61 = [v59 downloadedNetworkBytes];
      v62 = [v59 downloadedFilesystemBytes];
      v137 = [v59 currentLockUsage];
      v131 = [v59 selectorsForStaging];
      v63 = [v59 availableForUseError];
      v64 = [v59 newerVersionError];

      v113 = v61;
      v116 = v62;
      v18 = v201;
      LOBYTE(v108) = v220;
      v56 = v149;
      v38 = v154;
      v218 = v60;
      v14 = v214;
      v15 = v192;
      v16 = v183;
      v17 = [(MANAutoAssetSetStatus *)v168 initStatusForClientDomain:v236 forAssetSetIdentifier:v234 withConfiguredAssetEntries:v235 withAtomicInstancesDownloaded:v201 withCatalogCachedAssetSetID:v192 withCatalogDownloadedFromLive:v183 withCatalogLastTimeChecked:v233 withCatalogPostedDate:v214 withNewerAtomicInstanceDiscovered:v230 withNewerDiscoveredAtomicEntries:v229 withLatestDownloadedAtomicInstance:v238 withLatestDowloadedAtomicInstanceEntries:v237 withDownloadedCatalogCachedAssetSetID:v223 withDownloadedCatalogDownloadedFromLive:v231 withDownloadedCatalogLastTimeChecked:v222 withDownloadedCatalogPostedDate:v226 withCurrentNotifications:v224 withCurrentNeedPolicy:v60 withSchedulerPolicy:v154 withStagerPolicy:v149 withDownloadUserInitiated:v108 withDownloadProgress:v143 withDownloadedNetworkBytes:v113 withDownloadedFilesystemBytes:v116 withCurrentLockUsage:v137 withSelectorsForStaging:v131 withAvailableForUseError:v63 withNewerVersionError:v64];

      v27 = v174;
      goto LABEL_26;
    }

    v65 = [MAAutoAssetSetStatus alloc];
    v66 = objc_opt_respondsToSelector();

    if (v66)
    {
      v67 = v3;
      v169 = [MANAutoAssetSetStatus alloc];
      v236 = [v67 clientDomainName];
      v234 = [v67 assetSetIdentifier];
      v175 = [v67 configuredAssetEntries];
      v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v175];
      v202 = [v67 atomicInstancesDownloaded];
      v193 = [v67 catalogCachedAssetSetID];
      v184 = [v67 catalogDownloadedFromLive];
      v233 = [v67 catalogLastTimeChecked];
      v215 = [v67 catalogPostedDate];
      v230 = [v67 newerAtomicInstanceDiscovered];
      v208 = [v67 newerDiscoveredAtomicEntries];
      v229 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v238 = [v67 latestDownloadedAtomicInstance];
      v207 = [v67 latestDowloadedAtomicInstanceEntries];
      v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v223 = [v67 currentNotifications];
      v231 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v222 = [v67 currentNeedPolicy];
      v226 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v206 = [v67 schedulerPolicy];
      v224 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v205 = [v67 stagerPolicy];
      v68 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v221 = [v67 downloadUserInitiated];
      v162 = [v67 downloadProgress];
      v69 = [MASAutoAssetSetProgress newShimmedFromFramework:v162];
      v70 = [v67 downloadedNetworkBytes];
      v71 = [v67 downloadedFilesystemBytes];
      v159 = [v67 currentLockUsage];
      v37 = [v67 selectorsForStaging];
      v156 = [v67 availableForUseError];
      v72 = [v67 newerVersionError];

      v106 = v71;
      v15 = v193;
      v102 = v69;
      v104 = v70;
      v27 = v175;
      v38 = v69;
      LOBYTE(v101) = v221;
      v218 = v68;
      v14 = v215;
      v18 = v202;
      v16 = v184;
      v17 = [(MANAutoAssetSetStatus *)v169 initStatusForClientDomain:v236 forAssetSetIdentifier:v234 withConfiguredAssetEntries:v235 withAtomicInstancesDownloaded:v202 withCatalogCachedAssetSetID:v193 withCatalogDownloadedFromLive:v184 withCatalogLastTimeChecked:v233 withCatalogPostedDate:v215 withNewerAtomicInstanceDiscovered:v230 withNewerDiscoveredAtomicEntries:v229 withLatestDownloadedAtomicInstance:v238 withLatestDowloadedAtomicInstanceEntries:v237 withCurrentNotifications:v231 withCurrentNeedPolicy:v226 withSchedulerPolicy:v224 withStagerPolicy:v68 withDownloadUserInitiated:v101 withDownloadProgress:v102 withDownloadedNetworkBytes:v104 withDownloadedFilesystemBytes:v106 withCurrentLockUsage:v159 withSelectorsForStaging:v37 withAvailableForUseError:v156 withNewerVersionError:v72];

      goto LABEL_18;
    }

    v73 = [MAAutoAssetSetStatus alloc];
    v74 = objc_opt_respondsToSelector();

    if (v74)
    {
      v75 = v3;
      v176 = [MANAutoAssetSetStatus alloc];
      v236 = [v75 clientDomainName];
      v234 = [v75 assetSetIdentifier];
      v27 = [v75 configuredAssetEntries];
      v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v27];
      v203 = [v75 atomicInstancesDownloaded];
      v194 = [v75 newerAtomicInstanceDiscovered];
      v185 = [v75 newerDiscoveredAtomicEntries];
      v233 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:v185];
      v216 = [v75 latestDownloadedAtomicInstance];
      v230 = [v75 latestDowloadedAtomicInstanceEntries];
      v208 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v229 = [v75 currentNotifications];
      v238 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v207 = [v75 currentNeedPolicy];
      v237 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v223 = [v75 schedulerPolicy];
      v231 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v222 = [v75 stagerPolicy];
      v76 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v227 = [v75 downloadUserInitiated];
      v206 = [v75 downloadProgress];
      v77 = [MASAutoAssetSetProgress newShimmedFromFramework:?];
      v225 = [v75 downloadedNetworkBytes];
      v78 = [v75 downloadedFilesystemBytes];
      v79 = [v75 currentLockUsage];
      v80 = [v75 selectorsForStaging];
      v81 = [v75 availableForUseError];
      v82 = [v75 newerVersionError];

      v218 = v80;
      v105 = v80;
      v205 = v79;
      v99 = v225;
      v18 = v203;
      v224 = v77;
      v97 = v77;
      LOBYTE(v96) = v227;
      v15 = v194;
      v226 = v76;
      v17 = [(MANAutoAssetSetStatus *)v176 initStatusForClientDomain:v236 forAssetSetIdentifier:v234 withConfiguredAssetEntries:v235 withAtomicInstancesDownloaded:v203 withNewerAtomicInstanceDiscovered:v194 withNewerDiscoveredAtomicEntries:v233 withLatestDownloadedAtomicInstance:v216 withLatestDowloadedAtomicInstanceEntries:v208 withAllDownloadedAtomicInstanceEntries:0 withCurrentNotifications:v238 withCurrentNeedPolicy:v237 withSchedulerPolicy:v231 withStagerPolicy:v76 withDownloadUserInitiated:v96 withDownloadProgress:v97 withDownloadedNetworkBytes:v99 withDownloadedFilesystemBytes:v78 withCurrentLockUsage:v79 withSelectorsForStaging:v105 withAvailableForUseError:v81 withNewerVersionError:v82];

      v14 = v216;
      v16 = v185;
      goto LABEL_21;
    }

    v83 = [MAAutoAssetSetStatus alloc];
    v84 = objc_opt_respondsToSelector();

    if (v84)
    {
      v85 = v3;
      v186 = [MANAutoAssetSetStatus alloc];
      v236 = [v85 clientDomainName];
      v234 = [v85 assetSetIdentifier];
      v177 = [v85 atomicInstancesDownloaded];
      v235 = [v85 newerAtomicInstanceDiscovered];
      v204 = [v85 newerDiscoveredAtomicEntries];
      v195 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:v204];
      v16 = [v85 latestDownloadedAtomicInstance];
      v233 = [v85 latestDowloadedAtomicInstanceEntries];
      v217 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
      v230 = [v85 currentNotifications];
      v208 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
      v229 = [v85 currentNeedPolicy];
      v238 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v207 = [v85 schedulerPolicy];
      v237 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v223 = [v85 stagerPolicy];
      v86 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
      v232 = [v85 downloadUserInitiated];
      v222 = [v85 downloadProgress];
      v87 = [MASAutoAssetSetProgress newShimmedFromFramework:?];
      v228 = [v85 downloadedNetworkBytes];
      v88 = [v85 downloadedFilesystemBytes];
      v89 = [v85 currentLockUsage];
      v90 = [v85 selectorsForStaging];
      v91 = [v85 availableForUseError];
      v92 = [v85 newerVersionError];

      v218 = v92;
      v205 = v91;
      v107 = v91;
      v224 = v90;
      v206 = v89;
      v103 = v89;
      v100 = v228;
      v18 = v204;
      v226 = v87;
      v98 = v87;
      LOBYTE(v96) = v232;
      v14 = v217;
      v15 = v195;
      v231 = v86;
      v95 = v86;
      v27 = v177;
      v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v186 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withAllDownloadedAtomicInstanceEntries:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v236 withAtomicInstancesDownloaded:v234 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:v16 withLatestDownloadedAtomicInstance:v217 withLatestDowloadedAtomicInstanceEntries:0 withAllDownloadedAtomicInstanceEntries:v208 withCurrentNotifications:v238 withCurrentNeedPolicy:v237 withSchedulerPolicy:v95 withStagerPolicy:v96 withDownloadUserInitiated:v98 withDownloadProgress:v100 withDownloadedNetworkBytes:v88 withDownloadedFilesystemBytes:v103 withCurrentLockUsage:v90 withSelectorsForStaging:v107 withAvailableForUseError:v92 withNewerVersionError:?];
      goto LABEL_21;
    }

LABEL_33:
    v17 = 0;
    goto LABEL_34;
  }

  v6 = v3;
  v163 = [MANAutoAssetSetStatus alloc];
  v236 = [v6 clientDomainName];
  v234 = [v6 assetSetIdentifier];
  v170 = [v6 configuredAssetEntries];
  v235 = [MASAutoAssetSetEntry newShimmedArrayFromFramework:v170];
  v196 = [v6 atomicInstancesDownloaded];
  v187 = [v6 catalogCachedAssetSetID];
  v178 = [v6 catalogDownloadedFromLive];
  v233 = [v6 catalogLastTimeChecked];
  v209 = [v6 catalogPostedDate];
  v230 = [v6 newerAtomicInstanceDiscovered];
  v208 = [v6 newerDiscoveredAtomicEntries];
  v229 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
  v238 = [v6 latestDownloadedAtomicInstance];
  v160 = [v6 latestDownloadedAtomicInstanceFromPreSUStaging];
  v207 = [v6 latestDowloadedAtomicInstanceEntries];
  v237 = [MASAutoAssetSetAtomicEntry newShimmedArrayFromFramework:?];
  v223 = [v6 downloadedCatalogCachedAssetSetID];
  v231 = [v6 downloadedCatalogDownloadedFromLive];
  v222 = [v6 downloadedCatalogLastTimeChecked];
  v226 = [v6 downloadedCatalogPostedDate];
  v206 = [v6 currentNotifications];
  v224 = [MASAutoAssetSetNotifications newShimmedFromFramework:?];
  v205 = [v6 currentNeedPolicy];
  v218 = [MASAutoAssetSetPolicy newShimmedFromFramework:?];
  v158 = [v6 schedulerPolicy];
  v144 = [MASAutoAssetSetPolicy newShimmedFromFramework:v158];
  v155 = [v6 stagerPolicy];
  v132 = [MASAutoAssetSetPolicy newShimmedFromFramework:v155];
  v138 = [v6 haveReceivedLookupResponse];
  v127 = [v6 vendingAtomicInstanceForConfiguredEntries];
  v7 = [v6 downloadUserInitiated];
  v150 = [v6 downloadProgress];
  v125 = [MASAutoAssetSetProgress newShimmedFromFramework:v150];
  v8 = [v6 downloadedNetworkBytes];
  v9 = [v6 downloadedFilesystemBytes];
  v122 = [v6 currentLockUsage];
  v120 = [v6 selectorsForStaging];
  v10 = [v6 availableForUseError];
  v11 = [v6 newerVersionError];

  v117 = v9;
  BYTE2(v109) = v7;
  BYTE1(v109) = v127;
  LOBYTE(v109) = v138;
  v12 = v132;
  v13 = v144;
  LOBYTE(v94) = v160;
  v14 = v209;
  v15 = v187;
  v16 = v178;
  v17 = [MANAutoAssetSetStatus initStatusForClientDomain:v163 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v236 withAtomicInstancesDownloaded:v234 withCatalogCachedAssetSetID:v235 withCatalogDownloadedFromLive:v196 withCatalogLastTimeChecked:v187 withCatalogPostedDate:v178 withNewerAtomicInstanceDiscovered:v233 withNewerDiscoveredAtomicEntries:v209 withLatestDownloadedAtomicInstance:v230 withLatestDownloadedAtomicInstanceFromPreSUStaging:v229 withLatestDowloadedAtomicInstanceEntries:v238 withDownloadedCatalogCachedAssetSetID:v94 withDownloadedCatalogDownloadedFromLive:v237 withDownloadedCatalogLastTimeChecked:v223 withDownloadedCatalogPostedDate:v231 withCurrentNotifications:v222 withCurrentNeedPolicy:v226 withSchedulerPolicy:v224 withStagerPolicy:v218 havingReceivedLookupResponse:v144 vendingAtomicInstanceForConfiguredEntries:v132 withDownloadUserInitiated:v109 withDownloadProgress:v125 withDownloadedNetworkBytes:v8 withDownloadedFilesystemBytes:v117 withCurrentLockUsage:v122 withSelectorsForStaging:v120 withAvailableForUseError:v10 withNewerVersionError:v11];

  v18 = v196;
LABEL_12:

  v27 = v170;
  v28 = v158;
LABEL_20:

LABEL_21:
LABEL_34:

  return v17;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 17, 0, 0) && objc_opt_class() && ((v9 = [MAAutoAssetSetStatus alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0) || (v11 = [MAAutoAssetSetStatus alloc], v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0) || (v13 = [MAAutoAssetSetStatus alloc], v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0) || (v15 = [MAAutoAssetSetStatus alloc], v16 = objc_opt_respondsToSelector(), v15, (v16 & 1) != 0) || (v17 = [MAAutoAssetSetStatus alloc], v18 = objc_opt_respondsToSelector(), v17, (v18 & 1) != 0) || (v19 = [MAAutoAssetSetStatus alloc], v20 = objc_opt_respondsToSelector(), v19, (v20 & 1) != 0) || (v21 = [MAAutoAssetSetStatus alloc], v22 = objc_opt_respondsToSelector(), v21, (v22 & 1) != 0) || (v23 = [MAAutoAssetSetStatus alloc], v24 = objc_opt_respondsToSelector(), v23, (v24 & 1) != 0) || (v25 = [MAAutoAssetSetStatus alloc], v26 = objc_opt_respondsToSelector(), v25, (v26 & 1) != 0)))
    {
      v27 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
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