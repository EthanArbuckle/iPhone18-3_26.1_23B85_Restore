@interface MASAutoAssetStatus
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetStatus

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [v3 setByAddingObject:objc_opt_class()];

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

+ (id)newShimmedToFramework:(id)a3
{
  v3 = a3;
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

  if (v3 && objc_opt_class())
  {
    if (__isPlatformVersionAtLeast(2, 16, 4, 0))
    {
      v64 = [v3 currentLockUsage];
    }

    else
    {
      v64 = 0;
    }

    v6 = [MAAutoAssetStatus alloc];
    v7 = objc_opt_respondsToSelector();

    v8 = [MAAutoAssetStatus alloc];
    if (v7)
    {
      v58 = [v3 assetSelector];
      v56 = [v3 notifications];
      v52 = [v3 availableForUseAttributes];
      v54 = [v3 newerVersionAttributes];
      [v3 neverBeenLocked];
      [v3 downloadUserInitiated];
      v50 = [v3 downloadProgress];
      v47 = [v3 downloadedNetworkBytes];
      v45 = [v3 downloadedFilesystemBytes];
      v43 = [v3 downloadedAsPatch];
      v9 = [v3 patchedFromBaseSelector];
      v62 = [v3 patchedFromBaseFilesystemBytes];
      v10 = [v3 patchingAttempted];
      v11 = [v3 stagedPriorToAvailable];
      v12 = [v3 stagedFromOSVersion];
      v13 = [v3 stagedFromBuildVersion];
      v14 = [v3 availableForUseError];
      v15 = [v3 patchingAttemptError];
      v16 = [v3 newerVersionError];
      v60 = v13;
      v42 = v13;
      v61 = v12;
      v40 = v12;
      BYTE1(v38) = v11;
      v17 = v52;
      LOBYTE(v38) = v10;
      v18 = v58;
      v37 = v62;
      v19 = v56;
      v63 = v9;
      v34 = v9;
      LOBYTE(v32) = v43;
      v20 = v50;
      v21 = v54;
      v22 = [v8 initWithAssetSelector:v58 withNotifications:v56 withAvailableForUseAttributes:v52 withNewerVersionAttributes:v50 withNeverBeenLocked:v47 withDownloadUserInitiated:v45 withDownloadProgress:v32 withDownloadedNetworkBytes:v34 withDownloadedFilesystemBytes:v37 withDownloadedAsPatch:v38 withPatchedFromBaseSelector:v40 withPatchedFromBaseFilesystemBytes:v42 withPatchingAttempted:v64 withStagedPriorToAvailable:v14 withStagedFromOSVersion:v15 withStagedFromBuildVersion:v16 withCurrentLockUsage:? withAvailableForUseError:? withPatchingAttemptError:? withNewerVersionError:?];
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
      v59 = [v3 assetSelector];
      v57 = [v3 notifications];
      v53 = [v3 availableForUseAttributes];
      v55 = [v3 newerVersionAttributes];
      [v3 downloadUserInitiated];
      v51 = [v3 downloadProgress];
      v48 = [v3 downloadedNetworkBytes];
      v46 = [v3 downloadedFilesystemBytes];
      v44 = [v3 downloadedAsPatch];
      v24 = [v3 patchedFromBaseSelector];
      v25 = [v3 patchedFromBaseFilesystemBytes];
      v26 = [v3 patchingAttempted];
      v27 = [v3 stagedPriorToAvailable];
      v28 = [v3 stagedFromOSVersion];
      v29 = [v3 stagedFromBuildVersion];
      v14 = [v3 availableForUseError];
      v15 = [v3 patchingAttemptError];
      v16 = [v3 newerVersionError];
      v60 = v29;
      v41 = v29;
      v61 = v28;
      v39 = v28;
      BYTE1(v36) = v27;
      v19 = v57;
      LOBYTE(v36) = v26;
      v35 = v25;
      v17 = v53;
      v63 = v24;
      v33 = v24;
      LOBYTE(v31) = v44;
      v18 = v59;
      v21 = v55;
      v20 = v51;
      v22 = [v49 initWithAssetSelector:v59 withNotifications:v57 withAvailableForUseAttributes:v53 withNewerVersionAttributes:v48 withDownloadUserInitiated:v46 withDownloadProgress:v31 withDownloadedNetworkBytes:v33 withDownloadedFilesystemBytes:v35 withDownloadedAsPatch:v36 withPatchedFromBaseSelector:v39 withPatchedFromBaseFilesystemBytes:v41 withPatchingAttempted:v64 withStagedPriorToAvailable:v14 withStagedFromOSVersion:v15 withStagedFromBuildVersion:v16 withCurrentLockUsage:? withAvailableForUseError:? withPatchingAttemptError:? withNewerVersionError:?];
    }

    v5 = v22;

LABEL_17:
    goto LABEL_18;
  }

  v5 = 0;
LABEL_18:

  return v5;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && objc_opt_class())
  {
    v4 = [MAAutoAssetStatus alloc];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = v3;
      if (__isPlatformVersionAtLeast(2, 16, 4, 0))
      {
        v63 = [v6 currentLockUsage];
      }

      else
      {
        v63 = 0;
      }

      v49 = [MANAutoAssetStatus alloc];
      v57 = [v6 assetSelector];
      v55 = [v6 notifications];
      v53 = [v6 availableForUseAttributes];
      v51 = [v6 newerVersionAttributes];
      [v6 downloadUserInitiated];
      v62 = [v6 downloadProgress];
      v46 = [v6 downloadedNetworkBytes];
      v44 = [v6 downloadedFilesystemBytes];
      v42 = [v6 downloadedAsPatch];
      v22 = [v6 patchedFromBaseSelector];
      v61 = [v6 patchedFromBaseFilesystemBytes];
      v23 = [v6 patchingAttempted];
      v24 = [v6 stagedPriorToAvailable];
      v25 = [v6 stagedFromOSVersion];
      v26 = [v6 stagedFromBuildVersion];
      v15 = [v6 availableForUseError];
      v16 = [v6 patchingAttemptError];
      v27 = [v6 newerVersionError];
      v58 = v26;
      v36 = v26;
      v59 = v25;
      v34 = v25;
      BYTE1(v32) = v24;
      LOBYTE(v32) = v23;
      v18 = v55;
      v31 = v61;
      v17 = v57;
      v60 = v22;
      v30 = v22;
      LOBYTE(v29) = v42;
      v19 = v53;
      v20 = v51;
      v21 = [MANAutoAssetStatus initWithAssetSelector:v49 withNotifications:"initWithAssetSelector:withNotifications:withAvailableForUseAttributes:withNewerVersionAttributes:withNeverBeenLocked:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withDownloadedAsPatch:withPatchedFromBaseSelector:withPatchedFromBaseFilesystemBytes:withPatchingAttempted:withStagedPriorToAvailable:withStagedFromOSVersion:withStagedFromBuildVersion:withCurrentLockUsage:withAvailableForUseError:withPatchingAttemptError:withNewerVersionError:" withAvailableForUseAttributes:v57 withNewerVersionAttributes:v55 withNeverBeenLocked:v53 withDownloadUserInitiated:v62 withDownloadProgress:v46 withDownloadedNetworkBytes:v44 withDownloadedFilesystemBytes:v29 withDownloadedAsPatch:v30 withPatchedFromBaseSelector:v31 withPatchedFromBaseFilesystemBytes:v32 withPatchingAttempted:v34 withStagedPriorToAvailable:v36 withStagedFromOSVersion:v63 withStagedFromBuildVersion:v15 withCurrentLockUsage:v16 withAvailableForUseError:v27 withPatchingAttemptError:? withNewerVersionError:?];

      goto LABEL_11;
    }

    v7 = [MAAutoAssetStatus alloc];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = v3;
      v48 = [MANAutoAssetStatus alloc];
      v6 = [v9 assetSelector];
      v63 = [v9 notifications];
      v56 = [v9 availableForUseAttributes];
      v54 = [v9 newerVersionAttributes];
      v47 = [v9 neverBeenLocked];
      v45 = [v9 downloadUserInitiated];
      v52 = [v9 downloadProgress];
      v43 = [v9 downloadedNetworkBytes];
      v41 = [v9 downloadedFilesystemBytes];
      v40 = [v9 downloadedAsPatch];
      v50 = [v9 patchedFromBaseSelector];
      v39 = [v9 patchedFromBaseFilesystemBytes];
      v38 = [v9 patchingAttempted];
      v10 = [v9 stagedPriorToAvailable];
      v11 = [v9 stagedFromOSVersion];
      v12 = [v9 stagedFromBuildVersion];
      v13 = [v9 currentLockUsage];
      v14 = [v9 availableForUseError];
      v15 = [v9 patchingAttemptError];
      v16 = [v9 newerVersionError];

      v58 = v14;
      v37 = v14;
      v59 = v13;
      v60 = v12;
      v35 = v12;
      v62 = v11;
      v33 = v11;
      BYTE1(v32) = v10;
      v17 = v56;
      LOBYTE(v32) = v38;
      v18 = v54;
      v19 = v52;
      v20 = v50;
      LOBYTE(v29) = v40;
      v21 = [(MANAutoAssetStatus *)v48 initWithAssetSelector:v6 withNotifications:v63 withAvailableForUseAttributes:v56 withNewerVersionAttributes:v54 withNeverBeenLocked:v47 withDownloadUserInitiated:v45 withDownloadProgress:v52 withDownloadedNetworkBytes:v43 withDownloadedFilesystemBytes:v41 withDownloadedAsPatch:v29 withPatchedFromBaseSelector:v50 withPatchedFromBaseFilesystemBytes:v39 withPatchingAttempted:v32 withStagedPriorToAvailable:v33 withStagedFromOSVersion:v35 withStagedFromBuildVersion:v13 withCurrentLockUsage:v37 withAvailableForUseError:v15 withPatchingAttemptError:v16 withNewerVersionError:?];
LABEL_11:

      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_12:

  return v21;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (objc_opt_class())
    {
      v9 = [MAAutoAssetStatus alloc];
      if (objc_opt_respondsToSelector())
      {

LABEL_7:
        v12 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
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