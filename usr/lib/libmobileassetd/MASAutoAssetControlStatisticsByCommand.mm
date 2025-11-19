@interface MASAutoAssetControlStatisticsByCommand
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetControlStatisticsByCommand

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if (objc_opt_class())
    {
      v4 = [v3 setByAddingObject:objc_opt_class()];
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
  if (v3 && objc_opt_class() && (v4 = [MAAutoAssetControlStatisticsByCommand alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetControlStatisticsByCommand);
    if (objc_opt_respondsToSelector())
    {
      [v6 setInterestInContent:{objc_msgSend(v3, "interestInContent")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCheckForNewer:{objc_msgSend(v3, "checkForNewer")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setDetermineIfAvailable:{objc_msgSend(v3, "determineIfAvailable")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCurrentStatus:{objc_msgSend(v3, "currentStatus")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setLockContent:{objc_msgSend(v3, "lockContent")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setContinueLockUsage:{objc_msgSend(v3, "continueLockUsage")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEndLockUsage:{objc_msgSend(v3, "endLockUsage")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEndPreviousLocks:{objc_msgSend(v3, "endPreviousLocks")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEndAllPreviousLocks:{objc_msgSend(v3, "endAllPreviousLocks")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminateAllForSelector:{objc_msgSend(v3, "eliminateAllForSelector")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminateAllForAssetType:{objc_msgSend(v3, "eliminateAllForAssetType")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminatePromotedNeverLockedForSelector:{objc_msgSend(v3, "eliminatePromotedNeverLockedForSelector")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStageDetermineAllAvailable:{objc_msgSend(v3, "stageDetermineAllAvailable")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStageDownloadAll:{objc_msgSend(v3, "stageDownloadAll")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStagePurgeAll:{objc_msgSend(v3, "stagePurgeAll")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStageEraseAll:{objc_msgSend(v3, "stageEraseAll")}];
    }

    if (__isPlatformVersionAtLeast(2, 18, 4, 0))
    {
      if (objc_opt_respondsToSelector())
      {
        [v6 setEstimateEvictableBytesForSoftwareUpdate:{objc_msgSend(v3, "estimateEvictableBytesForSoftwareUpdate")}];
      }

      if (objc_opt_respondsToSelector())
      {
        [v6 setSuspendForSoftwareUpdate:{objc_msgSend(v3, "suspendForSoftwareUpdate")}];
      }

      if (objc_opt_respondsToSelector())
      {
        [v6 setResumeFromSoftwareUpdate:{objc_msgSend(v3, "resumeFromSoftwareUpdate")}];
      }

      if (objc_opt_respondsToSelector())
      {
        [v6 setSuspendResumeStatusForSoftwareUpdate:{objc_msgSend(v3, "suspendResumeStatusForSoftwareUpdate")}];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && objc_opt_class() && (v4 = [MAAutoAssetControlStatisticsByCommand alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = objc_alloc_init(MANAutoAssetControlStatisticsByCommand);
    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setInterestInContent:](v7, "setInterestInContent:", [v6 interestInContent]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setCheckForNewer:](v7, "setCheckForNewer:", [v6 checkForNewer]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setDetermineIfAvailable:](v7, "setDetermineIfAvailable:", [v6 determineIfAvailable]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setCurrentStatus:](v7, "setCurrentStatus:", [v6 currentStatus]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setLockContent:](v7, "setLockContent:", [v6 lockContent]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setContinueLockUsage:](v7, "setContinueLockUsage:", [v6 continueLockUsage]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setEndLockUsage:](v7, "setEndLockUsage:", [v6 endLockUsage]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setEndPreviousLocks:](v7, "setEndPreviousLocks:", [v6 endPreviousLocks]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setEndAllPreviousLocks:](v7, "setEndAllPreviousLocks:", [v6 endAllPreviousLocks]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setEliminateAllForSelector:](v7, "setEliminateAllForSelector:", [v6 eliminateAllForSelector]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setEliminateAllForAssetType:](v7, "setEliminateAllForAssetType:", [v6 eliminateAllForAssetType]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setEliminatePromotedNeverLockedForSelector:](v7, "setEliminatePromotedNeverLockedForSelector:", [v6 eliminatePromotedNeverLockedForSelector]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setStageDetermineAllAvailable:](v7, "setStageDetermineAllAvailable:", [v6 stageDetermineAllAvailable]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setStageDownloadAll:](v7, "setStageDownloadAll:", [v6 stageDownloadAll]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setStagePurgeAll:](v7, "setStagePurgeAll:", [v6 stagePurgeAll]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatisticsByCommand setStageEraseAll:](v7, "setStageEraseAll:", [v6 stageEraseAll]);
    }

    if (__isPlatformVersionAtLeast(2, 18, 4, 0))
    {
      if (objc_opt_respondsToSelector())
      {
        -[MANAutoAssetControlStatisticsByCommand setEstimateEvictableBytesForSoftwareUpdate:](v7, "setEstimateEvictableBytesForSoftwareUpdate:", [v6 estimateEvictableBytesForSoftwareUpdate]);
      }

      if (objc_opt_respondsToSelector())
      {
        -[MANAutoAssetControlStatisticsByCommand setSuspendForSoftwareUpdate:](v7, "setSuspendForSoftwareUpdate:", [v6 suspendForSoftwareUpdate]);
      }

      if (objc_opt_respondsToSelector())
      {
        -[MANAutoAssetControlStatisticsByCommand setResumeFromSoftwareUpdate:](v7, "setResumeFromSoftwareUpdate:", [v6 resumeFromSoftwareUpdate]);
      }

      if (objc_opt_respondsToSelector())
      {
        -[MANAutoAssetControlStatisticsByCommand setSuspendResumeStatusForSoftwareUpdate:](v7, "setSuspendResumeStatusForSoftwareUpdate:", [v6 suspendResumeStatusForSoftwareUpdate]);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (objc_opt_class() && (v9 = [MAAutoAssetControlStatisticsByCommand alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end