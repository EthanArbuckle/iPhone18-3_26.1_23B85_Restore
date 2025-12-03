@interface MASAutoAssetControlStatistics
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetControlStatistics

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = classesCopy;
    if (objc_opt_class())
    {
      v4 = [classesCopy setByAddingObject:objc_opt_class()];
    }

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
  if (frameworkCopy && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetControlStatistics alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetControlStatistics);
    if (objc_opt_respondsToSelector())
    {
      totalClientRequests = [frameworkCopy totalClientRequests];
      v8 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:totalClientRequests];
      [v6 setTotalClientRequests:v8];
    }

    if (objc_opt_respondsToSelector())
    {
      totalClientRepliesSuccess = [frameworkCopy totalClientRepliesSuccess];
      v10 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:totalClientRepliesSuccess];
      [v6 setTotalClientRepliesSuccess:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      totalClientRepliesFailure = [frameworkCopy totalClientRepliesFailure];
      v12 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:totalClientRepliesFailure];
      [v6 setTotalClientRepliesFailure:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      totalQueuedClientRequests = [frameworkCopy totalQueuedClientRequests];
      v14 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:totalQueuedClientRequests];
      [v6 setTotalQueuedClientRequests:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      totalDequeuedClientRequests = [frameworkCopy totalDequeuedClientRequests];
      v16 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:totalDequeuedClientRequests];
      [v6 setTotalDequeuedClientRequests:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalAutoAssetJobsStarted:{objc_msgSend(frameworkCopy, "totalAutoAssetJobsStarted")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalAutoJobsFinished:{objc_msgSend(frameworkCopy, "totalAutoJobsFinished")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDetermineJobsStarted:{objc_msgSend(frameworkCopy, "totalStagerDetermineJobsStarted")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDetermineJobsFinished:{objc_msgSend(frameworkCopy, "totalStagerDetermineJobsFinished")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDownloadJobsStarted:{objc_msgSend(frameworkCopy, "totalStagerDownloadJobsStarted")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDownloadJobsFinished:{objc_msgSend(frameworkCopy, "totalStagerDownloadJobsFinished")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalResumedInFlightJobs:{objc_msgSend(frameworkCopy, "totalResumedInFlightJobs")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalSchedulerTriggeredJobs:{objc_msgSend(frameworkCopy, "totalSchedulerTriggeredJobs")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalFailuresToStartJobs:{objc_msgSend(frameworkCopy, "totalFailuresToStartJobs")}];
    }

    if (objc_opt_respondsToSelector())
    {
      previouslyDownloaded = [frameworkCopy previouslyDownloaded];
      v18 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:previouslyDownloaded];
      [v6 setPreviouslyDownloaded:v18];
    }

    if (objc_opt_respondsToSelector())
    {
      totalDownloaded = [frameworkCopy totalDownloaded];
      v20 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:totalDownloaded];
      [v6 setTotalDownloaded:v20];
    }

    if (objc_opt_respondsToSelector())
    {
      totalStaged = [frameworkCopy totalStaged];
      v22 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:totalStaged];
      [v6 setTotalStaged:v22];
    }

    if (objc_opt_respondsToSelector())
    {
      totalUnstaged = [frameworkCopy totalUnstaged];
      v24 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:totalUnstaged];
      [v6 setTotalUnstaged:v24];
    }

    if (objc_opt_respondsToSelector())
    {
      totalPromoted = [frameworkCopy totalPromoted];
      v26 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:totalPromoted];
      [v6 setTotalPromoted:v26];
    }

    if (objc_opt_respondsToSelector())
    {
      totalRemoved = [frameworkCopy totalRemoved];
      v28 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:totalRemoved];
      [v6 setTotalRemoved:v28];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobSchedulerNetworkFailure:{objc_msgSend(frameworkCopy, "finishedJobSchedulerNetworkFailure")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobSchedulerNotNetworkRelated:{objc_msgSend(frameworkCopy, "finishedJobSchedulerNotNetworkRelated")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobClientNetworkFailure:{objc_msgSend(frameworkCopy, "finishedJobClientNetworkFailure")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobClientNotNetworkRelated:{objc_msgSend(frameworkCopy, "finishedJobClientNotNetworkRelated")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionPerformed:{objc_msgSend(frameworkCopy, "garbageCollectionPerformed")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimSpace:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionTotalReclaimedSpace:{objc_msgSend(frameworkCopy, "garbageCollectionTotalReclaimedSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedV2AssetCount:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedV2AssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedV2AssetSpace:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedV2AssetSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedUnlockedCount:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedUnlockedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedUnlockedSpace:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedUnlockedSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedOverridableCount:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedLockedOverridableCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedOverridableSpace:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedLockedOverridableSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedNeverRemoveCount:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedLockedNeverRemoveCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedNeverRemoveSpace:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedLockedNeverRemoveSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedStagedCount:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedStagedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedStagedSpace:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedStagedSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedMetadataBlockedCount:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedMetadataBlockedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedMetadataBlockedSpace:{objc_msgSend(frameworkCopy, "garbageCollectionReclaimedMetadataBlockedSpace")}];
    }

    v29 = v6;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  return v30;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetControlStatistics alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = objc_alloc_init(MANAutoAssetControlStatistics);
    if (objc_opt_respondsToSelector())
    {
      totalClientRequests = [v6 totalClientRequests];
      v9 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:totalClientRequests];
      [(MANAutoAssetControlStatistics *)v7 setTotalClientRequests:v9];
    }

    if (objc_opt_respondsToSelector())
    {
      totalClientRepliesSuccess = [v6 totalClientRepliesSuccess];
      v11 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:totalClientRepliesSuccess];
      [(MANAutoAssetControlStatistics *)v7 setTotalClientRepliesSuccess:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      totalClientRepliesFailure = [v6 totalClientRepliesFailure];
      v13 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:totalClientRepliesFailure];
      [(MANAutoAssetControlStatistics *)v7 setTotalClientRepliesFailure:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      totalQueuedClientRequests = [v6 totalQueuedClientRequests];
      v15 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:totalQueuedClientRequests];
      [(MANAutoAssetControlStatistics *)v7 setTotalQueuedClientRequests:v15];
    }

    if (objc_opt_respondsToSelector())
    {
      totalDequeuedClientRequests = [v6 totalDequeuedClientRequests];
      v17 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:totalDequeuedClientRequests];
      [(MANAutoAssetControlStatistics *)v7 setTotalDequeuedClientRequests:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalAutoAssetJobsStarted:](v7, "setTotalAutoAssetJobsStarted:", [v6 totalAutoAssetJobsStarted]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalAutoJobsFinished:](v7, "setTotalAutoJobsFinished:", [v6 totalAutoJobsFinished]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalStagerDetermineJobsStarted:](v7, "setTotalStagerDetermineJobsStarted:", [v6 totalStagerDetermineJobsStarted]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalStagerDetermineJobsFinished:](v7, "setTotalStagerDetermineJobsFinished:", [v6 totalStagerDetermineJobsFinished]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalStagerDownloadJobsStarted:](v7, "setTotalStagerDownloadJobsStarted:", [v6 totalStagerDownloadJobsStarted]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalStagerDownloadJobsFinished:](v7, "setTotalStagerDownloadJobsFinished:", [v6 totalStagerDownloadJobsFinished]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalResumedInFlightJobs:](v7, "setTotalResumedInFlightJobs:", [v6 totalResumedInFlightJobs]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalSchedulerTriggeredJobs:](v7, "setTotalSchedulerTriggeredJobs:", [v6 totalSchedulerTriggeredJobs]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setTotalFailuresToStartJobs:](v7, "setTotalFailuresToStartJobs:", [v6 totalFailuresToStartJobs]);
    }

    if (objc_opt_respondsToSelector())
    {
      previouslyDownloaded = [v6 previouslyDownloaded];
      v19 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:previouslyDownloaded];
      [(MANAutoAssetControlStatistics *)v7 setPreviouslyDownloaded:v19];
    }

    if (objc_opt_respondsToSelector())
    {
      totalDownloaded = [v6 totalDownloaded];
      v21 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:totalDownloaded];
      [(MANAutoAssetControlStatistics *)v7 setTotalDownloaded:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      totalStaged = [v6 totalStaged];
      v23 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:totalStaged];
      [(MANAutoAssetControlStatistics *)v7 setTotalStaged:v23];
    }

    if (objc_opt_respondsToSelector())
    {
      totalUnstaged = [v6 totalUnstaged];
      v25 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:totalUnstaged];
      [(MANAutoAssetControlStatistics *)v7 setTotalUnstaged:v25];
    }

    if (objc_opt_respondsToSelector())
    {
      totalPromoted = [v6 totalPromoted];
      v27 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:totalPromoted];
      [(MANAutoAssetControlStatistics *)v7 setTotalPromoted:v27];
    }

    if (objc_opt_respondsToSelector())
    {
      totalRemoved = [v6 totalRemoved];
      v29 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:totalRemoved];
      [(MANAutoAssetControlStatistics *)v7 setTotalRemoved:v29];
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setFinishedJobSchedulerNetworkFailure:](v7, "setFinishedJobSchedulerNetworkFailure:", [v6 finishedJobSchedulerNetworkFailure]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setFinishedJobSchedulerNotNetworkRelated:](v7, "setFinishedJobSchedulerNotNetworkRelated:", [v6 finishedJobSchedulerNotNetworkRelated]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setFinishedJobClientNetworkFailure:](v7, "setFinishedJobClientNetworkFailure:", [v6 finishedJobClientNetworkFailure]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setFinishedJobClientNotNetworkRelated:](v7, "setFinishedJobClientNotNetworkRelated:", [v6 finishedJobClientNotNetworkRelated]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionPerformed:](v7, "setGarbageCollectionPerformed:", [v6 garbageCollectionPerformed]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimSpace:](v7, "setGarbageCollectionReclaimSpace:", [v6 garbageCollectionReclaimSpace]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionTotalReclaimedSpace:](v7, "setGarbageCollectionTotalReclaimedSpace:", [v6 garbageCollectionTotalReclaimedSpace]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedV2AssetCount:](v7, "setGarbageCollectionReclaimedV2AssetCount:", [v6 garbageCollectionReclaimedV2AssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedV2AssetSpace:](v7, "setGarbageCollectionReclaimedV2AssetSpace:", [v6 garbageCollectionReclaimedV2AssetSpace]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedUnlockedCount:](v7, "setGarbageCollectionReclaimedUnlockedCount:", [v6 garbageCollectionReclaimedUnlockedCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedUnlockedSpace:](v7, "setGarbageCollectionReclaimedUnlockedSpace:", [v6 garbageCollectionReclaimedUnlockedSpace]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedLockedOverridableCount:](v7, "setGarbageCollectionReclaimedLockedOverridableCount:", [v6 garbageCollectionReclaimedLockedOverridableCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedLockedOverridableSpace:](v7, "setGarbageCollectionReclaimedLockedOverridableSpace:", [v6 garbageCollectionReclaimedLockedOverridableSpace]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedLockedNeverRemoveCount:](v7, "setGarbageCollectionReclaimedLockedNeverRemoveCount:", [v6 garbageCollectionReclaimedLockedNeverRemoveCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedLockedNeverRemoveSpace:](v7, "setGarbageCollectionReclaimedLockedNeverRemoveSpace:", [v6 garbageCollectionReclaimedLockedNeverRemoveSpace]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedStagedCount:](v7, "setGarbageCollectionReclaimedStagedCount:", [v6 garbageCollectionReclaimedStagedCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedStagedSpace:](v7, "setGarbageCollectionReclaimedStagedSpace:", [v6 garbageCollectionReclaimedStagedSpace]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedMetadataBlockedCount:](v7, "setGarbageCollectionReclaimedMetadataBlockedCount:", [v6 garbageCollectionReclaimedMetadataBlockedCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStatistics setGarbageCollectionReclaimedMetadataBlockedSpace:](v7, "setGarbageCollectionReclaimedMetadataBlockedSpace:", [v6 garbageCollectionReclaimedMetadataBlockedSpace]);
    }
  }

  else
  {
    v7 = 0;
  }

  v30 = v7;

  return v30;
}

+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key
{
  messageCopy = message;
  keyCopy = key;
  v7 = keyCopy;
  v8 = 0;
  if (messageCopy && keyCopy)
  {
    if (objc_opt_class() && (v9 = [MAAutoAssetControlStatistics alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetControlStatistics newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end