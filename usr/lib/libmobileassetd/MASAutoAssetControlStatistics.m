@interface MASAutoAssetControlStatistics
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetControlStatistics

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
  if (v3 && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetControlStatistics alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetControlStatistics);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v3 totalClientRequests];
      v8 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:v7];
      [v6 setTotalClientRequests:v8];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v3 totalClientRepliesSuccess];
      v10 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:v9];
      [v6 setTotalClientRepliesSuccess:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v3 totalClientRepliesFailure];
      v12 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:v11];
      [v6 setTotalClientRepliesFailure:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v3 totalQueuedClientRequests];
      v14 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:v13];
      [v6 setTotalQueuedClientRequests:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v3 totalDequeuedClientRequests];
      v16 = [MASAutoAssetControlStatisticsByCommand newShimmedToFramework:v15];
      [v6 setTotalDequeuedClientRequests:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalAutoAssetJobsStarted:{objc_msgSend(v3, "totalAutoAssetJobsStarted")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalAutoJobsFinished:{objc_msgSend(v3, "totalAutoJobsFinished")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDetermineJobsStarted:{objc_msgSend(v3, "totalStagerDetermineJobsStarted")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDetermineJobsFinished:{objc_msgSend(v3, "totalStagerDetermineJobsFinished")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDownloadJobsStarted:{objc_msgSend(v3, "totalStagerDownloadJobsStarted")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalStagerDownloadJobsFinished:{objc_msgSend(v3, "totalStagerDownloadJobsFinished")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalResumedInFlightJobs:{objc_msgSend(v3, "totalResumedInFlightJobs")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalSchedulerTriggeredJobs:{objc_msgSend(v3, "totalSchedulerTriggeredJobs")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setTotalFailuresToStartJobs:{objc_msgSend(v3, "totalFailuresToStartJobs")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [v3 previouslyDownloaded];
      v18 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:v17];
      [v6 setPreviouslyDownloaded:v18];
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v3 totalDownloaded];
      v20 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:v19];
      [v6 setTotalDownloaded:v20];
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [v3 totalStaged];
      v22 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:v21];
      [v6 setTotalStaged:v22];
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [v3 totalUnstaged];
      v24 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:v23];
      [v6 setTotalUnstaged:v24];
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [v3 totalPromoted];
      v26 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:v25];
      [v6 setTotalPromoted:v26];
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [v3 totalRemoved];
      v28 = [MASAutoAssetControlStatisticsBySize newShimmedToFramework:v27];
      [v6 setTotalRemoved:v28];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobSchedulerNetworkFailure:{objc_msgSend(v3, "finishedJobSchedulerNetworkFailure")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobSchedulerNotNetworkRelated:{objc_msgSend(v3, "finishedJobSchedulerNotNetworkRelated")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobClientNetworkFailure:{objc_msgSend(v3, "finishedJobClientNetworkFailure")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setFinishedJobClientNotNetworkRelated:{objc_msgSend(v3, "finishedJobClientNotNetworkRelated")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionPerformed:{objc_msgSend(v3, "garbageCollectionPerformed")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimSpace:{objc_msgSend(v3, "garbageCollectionReclaimSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionTotalReclaimedSpace:{objc_msgSend(v3, "garbageCollectionTotalReclaimedSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedV2AssetCount:{objc_msgSend(v3, "garbageCollectionReclaimedV2AssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedV2AssetSpace:{objc_msgSend(v3, "garbageCollectionReclaimedV2AssetSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedUnlockedCount:{objc_msgSend(v3, "garbageCollectionReclaimedUnlockedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedUnlockedSpace:{objc_msgSend(v3, "garbageCollectionReclaimedUnlockedSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedOverridableCount:{objc_msgSend(v3, "garbageCollectionReclaimedLockedOverridableCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedOverridableSpace:{objc_msgSend(v3, "garbageCollectionReclaimedLockedOverridableSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedNeverRemoveCount:{objc_msgSend(v3, "garbageCollectionReclaimedLockedNeverRemoveCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedLockedNeverRemoveSpace:{objc_msgSend(v3, "garbageCollectionReclaimedLockedNeverRemoveSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedStagedCount:{objc_msgSend(v3, "garbageCollectionReclaimedStagedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedStagedSpace:{objc_msgSend(v3, "garbageCollectionReclaimedStagedSpace")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedMetadataBlockedCount:{objc_msgSend(v3, "garbageCollectionReclaimedMetadataBlockedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setGarbageCollectionReclaimedMetadataBlockedSpace:{objc_msgSend(v3, "garbageCollectionReclaimedMetadataBlockedSpace")}];
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

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && objc_opt_class() && objc_opt_class() && objc_opt_class() && (v4 = [MAAutoAssetControlStatistics alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
    v7 = objc_alloc_init(MANAutoAssetControlStatistics);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 totalClientRequests];
      v9 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:v8];
      [(MANAutoAssetControlStatistics *)v7 setTotalClientRequests:v9];
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v6 totalClientRepliesSuccess];
      v11 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:v10];
      [(MANAutoAssetControlStatistics *)v7 setTotalClientRepliesSuccess:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v6 totalClientRepliesFailure];
      v13 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:v12];
      [(MANAutoAssetControlStatistics *)v7 setTotalClientRepliesFailure:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v6 totalQueuedClientRequests];
      v15 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:v14];
      [(MANAutoAssetControlStatistics *)v7 setTotalQueuedClientRequests:v15];
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v6 totalDequeuedClientRequests];
      v17 = [MASAutoAssetControlStatisticsByCommand newShimmedFromFramework:v16];
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
      v18 = [v6 previouslyDownloaded];
      v19 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:v18];
      [(MANAutoAssetControlStatistics *)v7 setPreviouslyDownloaded:v19];
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [v6 totalDownloaded];
      v21 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:v20];
      [(MANAutoAssetControlStatistics *)v7 setTotalDownloaded:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v6 totalStaged];
      v23 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:v22];
      [(MANAutoAssetControlStatistics *)v7 setTotalStaged:v23];
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v6 totalUnstaged];
      v25 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:v24];
      [(MANAutoAssetControlStatistics *)v7 setTotalUnstaged:v25];
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [v6 totalPromoted];
      v27 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:v26];
      [(MANAutoAssetControlStatistics *)v7 setTotalPromoted:v27];
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = [v6 totalRemoved];
      v29 = [MASAutoAssetControlStatisticsBySize newShimmedFromFramework:v28];
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

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (objc_opt_class() && (v9 = [MAAutoAssetControlStatistics alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
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