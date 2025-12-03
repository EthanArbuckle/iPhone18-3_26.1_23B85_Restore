@interface MASAutoAssetStatus
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetStatus

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = [classesCopy setByAddingObject:objc_opt_class()];

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
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = _MADLog(@"Auto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "{MADAutoAssetStatus-newShimmedToFramework} WARNING: wrong class provided as daemonNativeToBeShimmed", buf, 2u);
    }
  }

  if (frameworkCopy && objc_opt_class())
  {
    if (__isPlatformVersionAtLeast(2, 16, 4, 0))
    {
      currentLockUsage = [frameworkCopy currentLockUsage];
    }

    else
    {
      currentLockUsage = 0;
    }

    v6 = [MAAutoAssetStatus alloc];
    v7 = objc_opt_respondsToSelector();

    v8 = [MAAutoAssetStatus alloc];
    if (v7)
    {
      assetSelector = [frameworkCopy assetSelector];
      notifications = [frameworkCopy notifications];
      availableForUseAttributes = [frameworkCopy availableForUseAttributes];
      newerVersionAttributes = [frameworkCopy newerVersionAttributes];
      [frameworkCopy neverBeenLocked];
      [frameworkCopy downloadUserInitiated];
      downloadProgress = [frameworkCopy downloadProgress];
      downloadedNetworkBytes = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes = [frameworkCopy downloadedFilesystemBytes];
      downloadedAsPatch = [frameworkCopy downloadedAsPatch];
      patchedFromBaseSelector = [frameworkCopy patchedFromBaseSelector];
      patchedFromBaseFilesystemBytes = [frameworkCopy patchedFromBaseFilesystemBytes];
      patchingAttempted = [frameworkCopy patchingAttempted];
      stagedPriorToAvailable = [frameworkCopy stagedPriorToAvailable];
      stagedFromOSVersion = [frameworkCopy stagedFromOSVersion];
      stagedFromBuildVersion = [frameworkCopy stagedFromBuildVersion];
      availableForUseError = [frameworkCopy availableForUseError];
      patchingAttemptError = [frameworkCopy patchingAttemptError];
      newerVersionError = [frameworkCopy newerVersionError];
      v60 = stagedFromBuildVersion;
      v42 = stagedFromBuildVersion;
      v61 = stagedFromOSVersion;
      v40 = stagedFromOSVersion;
      BYTE1(v38) = stagedPriorToAvailable;
      v17 = availableForUseAttributes;
      LOBYTE(v38) = patchingAttempted;
      v18 = assetSelector;
      v37 = patchedFromBaseFilesystemBytes;
      v19 = notifications;
      v63 = patchedFromBaseSelector;
      v34 = patchedFromBaseSelector;
      LOBYTE(v32) = downloadedAsPatch;
      v20 = downloadProgress;
      v21 = newerVersionAttributes;
      v22 = [v8 initWithAssetSelector:assetSelector withNotifications:notifications withAvailableForUseAttributes:availableForUseAttributes withNewerVersionAttributes:downloadProgress withNeverBeenLocked:downloadedNetworkBytes withDownloadUserInitiated:downloadedFilesystemBytes withDownloadProgress:v32 withDownloadedNetworkBytes:v34 withDownloadedFilesystemBytes:v37 withDownloadedAsPatch:v38 withPatchedFromBaseSelector:v40 withPatchedFromBaseFilesystemBytes:v42 withPatchingAttempted:currentLockUsage withStagedPriorToAvailable:availableForUseError withStagedFromOSVersion:patchingAttemptError withStagedFromBuildVersion:newerVersionError withCurrentLockUsage:? withAvailableForUseError:? withPatchingAttemptError:? withNewerVersionError:?];
    }

    else
    {
      v23 = objc_opt_respondsToSelector();

      if ((v23 & 1) == 0)
      {
        v5 = 0;
        goto LABEL_17;
      }

      v49 = [MAAutoAssetStatus alloc];
      assetSelector2 = [frameworkCopy assetSelector];
      notifications2 = [frameworkCopy notifications];
      availableForUseAttributes2 = [frameworkCopy availableForUseAttributes];
      newerVersionAttributes2 = [frameworkCopy newerVersionAttributes];
      [frameworkCopy downloadUserInitiated];
      downloadProgress2 = [frameworkCopy downloadProgress];
      downloadedNetworkBytes2 = [frameworkCopy downloadedNetworkBytes];
      downloadedFilesystemBytes2 = [frameworkCopy downloadedFilesystemBytes];
      downloadedAsPatch2 = [frameworkCopy downloadedAsPatch];
      patchedFromBaseSelector2 = [frameworkCopy patchedFromBaseSelector];
      patchedFromBaseFilesystemBytes2 = [frameworkCopy patchedFromBaseFilesystemBytes];
      patchingAttempted2 = [frameworkCopy patchingAttempted];
      stagedPriorToAvailable2 = [frameworkCopy stagedPriorToAvailable];
      stagedFromOSVersion2 = [frameworkCopy stagedFromOSVersion];
      stagedFromBuildVersion2 = [frameworkCopy stagedFromBuildVersion];
      availableForUseError = [frameworkCopy availableForUseError];
      patchingAttemptError = [frameworkCopy patchingAttemptError];
      newerVersionError = [frameworkCopy newerVersionError];
      v60 = stagedFromBuildVersion2;
      v41 = stagedFromBuildVersion2;
      v61 = stagedFromOSVersion2;
      v39 = stagedFromOSVersion2;
      BYTE1(v36) = stagedPriorToAvailable2;
      v19 = notifications2;
      LOBYTE(v36) = patchingAttempted2;
      v35 = patchedFromBaseFilesystemBytes2;
      v17 = availableForUseAttributes2;
      v63 = patchedFromBaseSelector2;
      v33 = patchedFromBaseSelector2;
      LOBYTE(v31) = downloadedAsPatch2;
      v18 = assetSelector2;
      v21 = newerVersionAttributes2;
      v20 = downloadProgress2;
      v22 = [v49 initWithAssetSelector:assetSelector2 withNotifications:notifications2 withAvailableForUseAttributes:availableForUseAttributes2 withNewerVersionAttributes:downloadedNetworkBytes2 withDownloadUserInitiated:downloadedFilesystemBytes2 withDownloadProgress:v31 withDownloadedNetworkBytes:v33 withDownloadedFilesystemBytes:v35 withDownloadedAsPatch:v36 withPatchedFromBaseSelector:v39 withPatchedFromBaseFilesystemBytes:v41 withPatchingAttempted:currentLockUsage withStagedPriorToAvailable:availableForUseError withStagedFromOSVersion:patchingAttemptError withStagedFromBuildVersion:newerVersionError withCurrentLockUsage:? withAvailableForUseError:? withPatchingAttemptError:? withNewerVersionError:?];
    }

    v5 = v22;

LABEL_17:
    goto LABEL_18;
  }

  v5 = 0;
LABEL_18:

  return v5;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && objc_opt_class())
  {
    v4 = [MAAutoAssetStatus alloc];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      assetSelector2 = frameworkCopy;
      if (__isPlatformVersionAtLeast(2, 16, 4, 0))
      {
        currentLockUsage = [assetSelector2 currentLockUsage];
      }

      else
      {
        currentLockUsage = 0;
      }

      v49 = [MANAutoAssetStatus alloc];
      assetSelector = [assetSelector2 assetSelector];
      notifications = [assetSelector2 notifications];
      availableForUseAttributes = [assetSelector2 availableForUseAttributes];
      newerVersionAttributes = [assetSelector2 newerVersionAttributes];
      [assetSelector2 downloadUserInitiated];
      downloadProgress = [assetSelector2 downloadProgress];
      downloadedNetworkBytes = [assetSelector2 downloadedNetworkBytes];
      downloadedFilesystemBytes = [assetSelector2 downloadedFilesystemBytes];
      downloadedAsPatch = [assetSelector2 downloadedAsPatch];
      patchedFromBaseSelector = [assetSelector2 patchedFromBaseSelector];
      patchedFromBaseFilesystemBytes = [assetSelector2 patchedFromBaseFilesystemBytes];
      patchingAttempted = [assetSelector2 patchingAttempted];
      stagedPriorToAvailable = [assetSelector2 stagedPriorToAvailable];
      stagedFromOSVersion = [assetSelector2 stagedFromOSVersion];
      stagedFromBuildVersion = [assetSelector2 stagedFromBuildVersion];
      availableForUseError = [assetSelector2 availableForUseError];
      patchingAttemptError = [assetSelector2 patchingAttemptError];
      newerVersionError = [assetSelector2 newerVersionError];
      v58 = stagedFromBuildVersion;
      v36 = stagedFromBuildVersion;
      v59 = stagedFromOSVersion;
      v34 = stagedFromOSVersion;
      BYTE1(v32) = stagedPriorToAvailable;
      LOBYTE(v32) = patchingAttempted;
      v18 = notifications;
      v31 = patchedFromBaseFilesystemBytes;
      v17 = assetSelector;
      v60 = patchedFromBaseSelector;
      v30 = patchedFromBaseSelector;
      LOBYTE(v29) = downloadedAsPatch;
      v19 = availableForUseAttributes;
      v20 = newerVersionAttributes;
      v21 = [MANAutoAssetStatus initWithAssetSelector:v49 withNotifications:"initWithAssetSelector:withNotifications:withAvailableForUseAttributes:withNewerVersionAttributes:withNeverBeenLocked:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withDownloadedAsPatch:withPatchedFromBaseSelector:withPatchedFromBaseFilesystemBytes:withPatchingAttempted:withStagedPriorToAvailable:withStagedFromOSVersion:withStagedFromBuildVersion:withCurrentLockUsage:withAvailableForUseError:withPatchingAttemptError:withNewerVersionError:" withAvailableForUseAttributes:assetSelector withNewerVersionAttributes:notifications withNeverBeenLocked:availableForUseAttributes withDownloadUserInitiated:downloadProgress withDownloadProgress:downloadedNetworkBytes withDownloadedNetworkBytes:downloadedFilesystemBytes withDownloadedFilesystemBytes:v29 withDownloadedAsPatch:v30 withPatchedFromBaseSelector:v31 withPatchedFromBaseFilesystemBytes:v32 withPatchingAttempted:v34 withStagedPriorToAvailable:v36 withStagedFromOSVersion:currentLockUsage withStagedFromBuildVersion:availableForUseError withCurrentLockUsage:patchingAttemptError withAvailableForUseError:newerVersionError withPatchingAttemptError:? withNewerVersionError:?];

      goto LABEL_11;
    }

    v7 = [MAAutoAssetStatus alloc];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = frameworkCopy;
      v48 = [MANAutoAssetStatus alloc];
      assetSelector2 = [v9 assetSelector];
      currentLockUsage = [v9 notifications];
      availableForUseAttributes2 = [v9 availableForUseAttributes];
      newerVersionAttributes2 = [v9 newerVersionAttributes];
      neverBeenLocked = [v9 neverBeenLocked];
      downloadUserInitiated = [v9 downloadUserInitiated];
      downloadProgress2 = [v9 downloadProgress];
      downloadedNetworkBytes2 = [v9 downloadedNetworkBytes];
      downloadedFilesystemBytes2 = [v9 downloadedFilesystemBytes];
      downloadedAsPatch2 = [v9 downloadedAsPatch];
      patchedFromBaseSelector2 = [v9 patchedFromBaseSelector];
      patchedFromBaseFilesystemBytes2 = [v9 patchedFromBaseFilesystemBytes];
      patchingAttempted2 = [v9 patchingAttempted];
      stagedPriorToAvailable2 = [v9 stagedPriorToAvailable];
      stagedFromOSVersion2 = [v9 stagedFromOSVersion];
      stagedFromBuildVersion2 = [v9 stagedFromBuildVersion];
      currentLockUsage2 = [v9 currentLockUsage];
      availableForUseError2 = [v9 availableForUseError];
      availableForUseError = [v9 patchingAttemptError];
      patchingAttemptError = [v9 newerVersionError];

      v58 = availableForUseError2;
      v37 = availableForUseError2;
      v59 = currentLockUsage2;
      v60 = stagedFromBuildVersion2;
      v35 = stagedFromBuildVersion2;
      downloadProgress = stagedFromOSVersion2;
      v33 = stagedFromOSVersion2;
      BYTE1(v32) = stagedPriorToAvailable2;
      v17 = availableForUseAttributes2;
      LOBYTE(v32) = patchingAttempted2;
      v18 = newerVersionAttributes2;
      v19 = downloadProgress2;
      v20 = patchedFromBaseSelector2;
      LOBYTE(v29) = downloadedAsPatch2;
      v21 = [(MANAutoAssetStatus *)v48 initWithAssetSelector:assetSelector2 withNotifications:currentLockUsage withAvailableForUseAttributes:availableForUseAttributes2 withNewerVersionAttributes:newerVersionAttributes2 withNeverBeenLocked:neverBeenLocked withDownloadUserInitiated:downloadUserInitiated withDownloadProgress:downloadProgress2 withDownloadedNetworkBytes:downloadedNetworkBytes2 withDownloadedFilesystemBytes:downloadedFilesystemBytes2 withDownloadedAsPatch:v29 withPatchedFromBaseSelector:patchedFromBaseSelector2 withPatchedFromBaseFilesystemBytes:patchedFromBaseFilesystemBytes2 withPatchingAttempted:v32 withStagedPriorToAvailable:v33 withStagedFromOSVersion:v35 withStagedFromBuildVersion:currentLockUsage2 withCurrentLockUsage:v37 withAvailableForUseError:availableForUseError withPatchingAttemptError:patchingAttemptError withNewerVersionError:?];
LABEL_11:

      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_12:

  return v21;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (objc_opt_class())
    {
      v9 = [MAAutoAssetStatus alloc];
      if (objc_opt_respondsToSelector())
      {

LABEL_7:
        v12 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
        v8 = [MASAutoAssetStatus newShimmedFromFramework:v12];

        goto LABEL_9;
      }

      v10 = [MAAutoAssetStatus alloc];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        goto LABEL_7;
      }
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

@end