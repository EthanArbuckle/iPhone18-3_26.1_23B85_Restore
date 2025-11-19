@interface MANAutoAssetControlStatistics
+ (id)allocStringForBytes:(int64_t)a3;
- (MANAutoAssetControlStatistics)initWithCoder:(id)a3;
- (MANAutoAssetControlStatistics)initWithInitialValue:(int64_t)a3;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetControlStatistics

- (MANAutoAssetControlStatistics)initWithInitialValue:(int64_t)a3
{
  v28.receiver = self;
  v28.super_class = MANAutoAssetControlStatistics;
  v4 = [(MANAutoAssetControlStatistics *)&v28 init];
  if (v4)
  {
    v5 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalClientRequests = v4->_totalClientRequests;
    v4->_totalClientRequests = v5;

    v7 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalClientRepliesSuccess = v4->_totalClientRepliesSuccess;
    v4->_totalClientRepliesSuccess = v7;

    v9 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalClientRepliesFailure = v4->_totalClientRepliesFailure;
    v4->_totalClientRepliesFailure = v9;

    v11 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalQueuedClientRequests = v4->_totalQueuedClientRequests;
    v4->_totalQueuedClientRequests = v11;

    v13 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalDequeuedClientRequests = v4->_totalDequeuedClientRequests;
    v4->_totalDequeuedClientRequests = v13;

    v4->_totalAutoAssetJobsStarted = a3;
    v4->_totalAutoJobsFinished = a3;
    v4->_totalStagerDetermineJobsStarted = a3;
    v4->_totalStagerDetermineJobsFinished = a3;
    v4->_totalStagerDownloadJobsStarted = a3;
    v4->_totalStagerDownloadJobsFinished = a3;
    v4->_totalResumedInFlightJobs = a3;
    v4->_totalSchedulerTriggeredJobs = a3;
    v4->_totalFailuresToStartJobs = a3;
    v15 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    previouslyDownloaded = v4->_previouslyDownloaded;
    v4->_previouslyDownloaded = v15;

    v17 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalDownloaded = v4->_totalDownloaded;
    v4->_totalDownloaded = v17;

    v19 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalStaged = v4->_totalStaged;
    v4->_totalStaged = v19;

    v21 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalUnstaged = v4->_totalUnstaged;
    v4->_totalUnstaged = v21;

    v23 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalPromoted = v4->_totalPromoted;
    v4->_totalPromoted = v23;

    v25 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalRemoved = v4->_totalRemoved;
    v4->_totalRemoved = v25;

    v4->_finishedJobSchedulerNetworkFailure = a3;
    v4->_finishedJobSchedulerNotNetworkRelated = a3;
    v4->_finishedJobClientNetworkFailure = a3;
    v4->_finishedJobClientNotNetworkRelated = a3;
    *&v4->_garbageCollectionPerformed = 0;
    *&v4->_garbageCollectionTotalReclaimedSpace = 0u;
    *&v4->_garbageCollectionReclaimedV2AssetSpace = 0u;
    *&v4->_garbageCollectionReclaimedUnlockedSpace = 0u;
    *&v4->_garbageCollectionReclaimedLockedOverridableSpace = 0u;
    *&v4->_garbageCollectionReclaimedLockedNeverRemoveSpace = 0u;
    *&v4->_garbageCollectionReclaimedStagedSpace = 0u;
    v4->_garbageCollectionReclaimedMetadataBlockedSpace = 0;
  }

  return v4;
}

- (MANAutoAssetControlStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MANAutoAssetControlStatistics;
  v5 = [(MANAutoAssetControlStatistics *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRequests"];
    totalClientRequests = v5->_totalClientRequests;
    v5->_totalClientRequests = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesSuccess"];
    totalClientRepliesSuccess = v5->_totalClientRepliesSuccess;
    v5->_totalClientRepliesSuccess = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesFailure"];
    totalClientRepliesFailure = v5->_totalClientRepliesFailure;
    v5->_totalClientRepliesFailure = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalQueuedClientRequests"];
    totalQueuedClientRequests = v5->_totalQueuedClientRequests;
    v5->_totalQueuedClientRequests = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDequeuedClientRequests"];
    totalDequeuedClientRequests = v5->_totalDequeuedClientRequests;
    v5->_totalDequeuedClientRequests = v14;

    v5->_totalAutoAssetJobsStarted = [v4 decodeInt64ForKey:@"totalAutoAssetJobsStarted"];
    v5->_totalAutoJobsFinished = [v4 decodeInt64ForKey:@"totalAutoJobsFinished"];
    v5->_totalStagerDetermineJobsStarted = [v4 decodeInt64ForKey:@"totalStagerDetermineJobsStarted"];
    v5->_totalStagerDetermineJobsFinished = [v4 decodeInt64ForKey:@"totalStagerDetermineJobsFinished"];
    v5->_totalStagerDownloadJobsStarted = [v4 decodeInt64ForKey:@"totalStagerDownloadJobsStarted"];
    v5->_totalStagerDownloadJobsFinished = [v4 decodeInt64ForKey:@"totalStagerDownloadJobsFinished"];
    v5->_totalResumedInFlightJobs = [v4 decodeInt64ForKey:@"totalResumedInFlightJobs"];
    v5->_totalSchedulerTriggeredJobs = [v4 decodeInt64ForKey:@"totalSchedulerTriggeredJobs"];
    v5->_totalFailuresToStartJobs = [v4 decodeInt64ForKey:@"totalFailuresToStartJobs"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previouslyDownloaded"];
    previouslyDownloaded = v5->_previouslyDownloaded;
    v5->_previouslyDownloaded = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDownloaded"];
    totalDownloaded = v5->_totalDownloaded;
    v5->_totalDownloaded = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalStaged"];
    totalStaged = v5->_totalStaged;
    v5->_totalStaged = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalUnstaged"];
    totalUnstaged = v5->_totalUnstaged;
    v5->_totalUnstaged = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalPromoted"];
    totalPromoted = v5->_totalPromoted;
    v5->_totalPromoted = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalRemoved"];
    totalRemoved = v5->_totalRemoved;
    v5->_totalRemoved = v26;

    v5->_finishedJobSchedulerNetworkFailure = [v4 decodeInt64ForKey:@"finishedJobSchedulerNetworkFailure"];
    v5->_finishedJobSchedulerNotNetworkRelated = [v4 decodeInt64ForKey:@"finishedJobSchedulerNotNetworkRelated"];
    v5->_finishedJobClientNetworkFailure = [v4 decodeInt64ForKey:@"finishedJobClientNetworkFailure"];
    v5->_finishedJobClientNotNetworkRelated = [v4 decodeInt64ForKey:@"finishedJobClientNotNetworkRelated"];
    v5->_garbageCollectionPerformed = [v4 decodeBoolForKey:@"garbageCollectionPerformed"];
    v5->_garbageCollectionReclaimSpace = [v4 decodeBoolForKey:@"garbageCollectionReclaimSpace"];
    v5->_garbageCollectionTotalReclaimedSpace = [v4 decodeInt64ForKey:@"garbageCollectionTotalReclaimedSpace"];
    v5->_garbageCollectionReclaimedV2AssetCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetCount"];
    v5->_garbageCollectionReclaimedV2AssetSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetSpace"];
    v5->_garbageCollectionReclaimedUnlockedCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedCount"];
    v5->_garbageCollectionReclaimedUnlockedSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedSpace"];
    v5->_garbageCollectionReclaimedLockedOverridableCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableCount"];
    v5->_garbageCollectionReclaimedLockedOverridableSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableSpace"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveCount"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveSpace"];
    v5->_garbageCollectionReclaimedStagedCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedStagedCount"];
    v5->_garbageCollectionReclaimedStagedSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedStagedSpace"];
    v5->_garbageCollectionReclaimedMetadataBlockedCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedCount"];
    v5->_garbageCollectionReclaimedMetadataBlockedSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  [v15 encodeObject:v4 forKey:@"totalClientRequests"];

  v5 = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  [v15 encodeObject:v5 forKey:@"totalClientRepliesSuccess"];

  v6 = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  [v15 encodeObject:v6 forKey:@"totalClientRepliesFailure"];

  v7 = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  [v15 encodeObject:v7 forKey:@"totalQueuedClientRequests"];

  v8 = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  [v15 encodeObject:v8 forKey:@"totalDequeuedClientRequests"];

  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalAutoAssetJobsStarted](self forKey:{"totalAutoAssetJobsStarted"), @"totalAutoAssetJobsStarted"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalAutoJobsFinished](self forKey:{"totalAutoJobsFinished"), @"totalAutoJobsFinished"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalStagerDetermineJobsStarted](self forKey:{"totalStagerDetermineJobsStarted"), @"totalStagerDetermineJobsStarted"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalStagerDetermineJobsFinished](self forKey:{"totalStagerDetermineJobsFinished"), @"totalStagerDetermineJobsFinished"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalStagerDownloadJobsStarted](self forKey:{"totalStagerDownloadJobsStarted"), @"totalStagerDownloadJobsStarted"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalStagerDownloadJobsFinished](self forKey:{"totalStagerDownloadJobsFinished"), @"totalStagerDownloadJobsFinished"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalResumedInFlightJobs](self forKey:{"totalResumedInFlightJobs"), @"totalResumedInFlightJobs"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalSchedulerTriggeredJobs](self forKey:{"totalSchedulerTriggeredJobs"), @"totalSchedulerTriggeredJobs"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics totalFailuresToStartJobs](self forKey:{"totalFailuresToStartJobs"), @"totalFailuresToStartJobs"}];
  v9 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  [v15 encodeObject:v9 forKey:@"previouslyDownloaded"];

  v10 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  [v15 encodeObject:v10 forKey:@"totalDownloaded"];

  v11 = [(MANAutoAssetControlStatistics *)self totalStaged];
  [v15 encodeObject:v11 forKey:@"totalStaged"];

  v12 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  [v15 encodeObject:v12 forKey:@"totalUnstaged"];

  v13 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  [v15 encodeObject:v13 forKey:@"totalPromoted"];

  v14 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  [v15 encodeObject:v14 forKey:@"totalRemoved"];

  [v15 encodeInt64:-[MANAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self forKey:{"finishedJobSchedulerNetworkFailure"), @"finishedJobSchedulerNetworkFailure"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self forKey:{"finishedJobSchedulerNotNetworkRelated"), @"finishedJobSchedulerNotNetworkRelated"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics finishedJobClientNetworkFailure](self forKey:{"finishedJobClientNetworkFailure"), @"finishedJobClientNetworkFailure"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self forKey:{"finishedJobClientNotNetworkRelated"), @"finishedJobClientNotNetworkRelated"}];
  [v15 encodeBool:-[MANAutoAssetControlStatistics garbageCollectionPerformed](self forKey:{"garbageCollectionPerformed"), @"garbageCollectionPerformed"}];
  [v15 encodeBool:-[MANAutoAssetControlStatistics garbageCollectionReclaimSpace](self forKey:{"garbageCollectionReclaimSpace"), @"garbageCollectionReclaimSpace"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionTotalReclaimedSpace](self forKey:{"garbageCollectionTotalReclaimedSpace"), @"garbageCollectionTotalReclaimedSpace"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedV2AssetCount](self forKey:{"garbageCollectionReclaimedV2AssetCount"), @"garbageCollectionReclaimedV2AssetCount"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedV2AssetSpace](self forKey:{"garbageCollectionReclaimedV2AssetSpace"), @"garbageCollectionReclaimedV2AssetSpace"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedUnlockedCount](self forKey:{"garbageCollectionReclaimedUnlockedCount"), @"garbageCollectionReclaimedUnlockedCount"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedUnlockedSpace](self forKey:{"garbageCollectionReclaimedUnlockedSpace"), @"garbageCollectionReclaimedUnlockedSpace"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableCount](self forKey:{"garbageCollectionReclaimedLockedOverridableCount"), @"garbageCollectionReclaimedLockedOverridableCount"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableSpace](self forKey:{"garbageCollectionReclaimedLockedOverridableSpace"), @"garbageCollectionReclaimedLockedOverridableSpace"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveCount](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveCount"), @"garbageCollectionReclaimedLockedNeverRemoveCount"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveSpace](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveSpace"), @"garbageCollectionReclaimedLockedNeverRemoveSpace"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedStagedCount](self forKey:{"garbageCollectionReclaimedStagedCount"), @"garbageCollectionReclaimedStagedCount"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedStagedSpace](self forKey:{"garbageCollectionReclaimedStagedSpace"), @"garbageCollectionReclaimedStagedSpace"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedCount](self forKey:{"garbageCollectionReclaimedMetadataBlockedCount"), @"garbageCollectionReclaimedMetadataBlockedCount"}];
  [v15 encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedSpace](self forKey:{"garbageCollectionReclaimedMetadataBlockedSpace"), @"garbageCollectionReclaimedMetadataBlockedSpace"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MANAutoAssetControlStatistics);
  v4 = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  v5 = [v4 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalClientRequests:v5];

  v6 = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v7 = [v6 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalClientRepliesSuccess:v7];

  v8 = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v9 = [v8 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalClientRepliesFailure:v9];

  v10 = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v11 = [v10 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalQueuedClientRequests:v11];

  v12 = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v13 = [v12 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalDequeuedClientRequests:v13];

  [(MANAutoAssetControlStatistics *)v3 setTotalAutoAssetJobsStarted:[(MANAutoAssetControlStatistics *)self totalAutoAssetJobsStarted]];
  [(MANAutoAssetControlStatistics *)v3 setTotalAutoJobsFinished:[(MANAutoAssetControlStatistics *)self totalAutoJobsFinished]];
  [(MANAutoAssetControlStatistics *)v3 setTotalStagerDetermineJobsStarted:[(MANAutoAssetControlStatistics *)self totalStagerDetermineJobsStarted]];
  [(MANAutoAssetControlStatistics *)v3 setTotalStagerDetermineJobsFinished:[(MANAutoAssetControlStatistics *)self totalStagerDetermineJobsFinished]];
  [(MANAutoAssetControlStatistics *)v3 setTotalStagerDownloadJobsStarted:[(MANAutoAssetControlStatistics *)self totalStagerDownloadJobsStarted]];
  [(MANAutoAssetControlStatistics *)v3 setTotalStagerDownloadJobsFinished:[(MANAutoAssetControlStatistics *)self totalStagerDownloadJobsFinished]];
  [(MANAutoAssetControlStatistics *)v3 setTotalResumedInFlightJobs:[(MANAutoAssetControlStatistics *)self totalResumedInFlightJobs]];
  [(MANAutoAssetControlStatistics *)v3 setTotalSchedulerTriggeredJobs:[(MANAutoAssetControlStatistics *)self totalSchedulerTriggeredJobs]];
  [(MANAutoAssetControlStatistics *)v3 setTotalFailuresToStartJobs:[(MANAutoAssetControlStatistics *)self totalFailuresToStartJobs]];
  v14 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  v15 = [v14 copy];
  [(MANAutoAssetControlStatistics *)v3 setPreviouslyDownloaded:v15];

  v16 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  v17 = [v16 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalDownloaded:v17];

  v18 = [(MANAutoAssetControlStatistics *)self totalStaged];
  v19 = [v18 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalStaged:v19];

  v20 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  v21 = [v20 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalUnstaged:v21];

  v22 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  v23 = [v22 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalPromoted:v23];

  v24 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  v25 = [v24 copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalRemoved:v25];

  [(MANAutoAssetControlStatistics *)v3 setFinishedJobSchedulerNetworkFailure:[(MANAutoAssetControlStatistics *)self finishedJobSchedulerNetworkFailure]];
  [(MANAutoAssetControlStatistics *)v3 setFinishedJobSchedulerNotNetworkRelated:[(MANAutoAssetControlStatistics *)self finishedJobSchedulerNotNetworkRelated]];
  [(MANAutoAssetControlStatistics *)v3 setFinishedJobClientNetworkFailure:[(MANAutoAssetControlStatistics *)self finishedJobClientNetworkFailure]];
  [(MANAutoAssetControlStatistics *)v3 setFinishedJobClientNotNetworkRelated:[(MANAutoAssetControlStatistics *)self finishedJobClientNotNetworkRelated]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionPerformed:[(MANAutoAssetControlStatistics *)self garbageCollectionPerformed]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimSpace]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionTotalReclaimedSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionTotalReclaimedSpace]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedV2AssetCount:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetCount]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedV2AssetSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetSpace]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedUnlockedCount:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedCount]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedUnlockedSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedSpace]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedOverridableCount:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableCount]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedOverridableSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableSpace]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedNeverRemoveCount:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveCount]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedNeverRemoveSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveSpace]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedStagedCount:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedCount]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedStagedSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedSpace]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedMetadataBlockedCount:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedCount]];
  [(MANAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedMetadataBlockedSpace:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedSpace]];
  return v3;
}

+ (id)allocStringForBytes:(int64_t)a3
{
  if (!a3)
  {
    return @"0 bytes";
  }

  v4 = @"NEGATIVE ";
  if (a3 < 0)
  {
    v5 = a3 + 0x3FFFFFFF;
  }

  else
  {
    v4 = &stru_4BD3F0;
    v5 = a3;
  }

  v6 = v4;
  v7 = a3 - (v5 & 0xFFFFFFFFC0000000);
  if (a3 >= (v5 & 0xFFFFFFFFC0000000))
  {
    v8 = a3 - (v5 & 0xFFFFFFFFC0000000);
  }

  else
  {
    v8 = v7 + 0xFFFFF;
  }

  v9 = v7 - (v8 & 0xFFFFFFFFFFF00000);
  if (v7 >= (v8 & 0xFFFFFFFFFFF00000))
  {
    v10 = v7 - (v8 & 0xFFFFFFFFFFF00000);
  }

  else
  {
    v10 = v9 + 1023;
  }

  v11 = v9 - (v10 & 0xFFFFFFFFFFFFFC00);
  if (v11 == 1)
  {
    v12 = @" 1 byte";
  }

  else if (v11 < 2)
  {
    v12 = &stru_4BD3F0;
  }

  else
  {
    v12 = [[NSString alloc] initWithFormat:@" %lld bytes", v9 - (v10 & 0xFFFFFFFFFFFFFC00)];
  }

  v14 = v8 >> 20;
  if (a3 < 0x40000000)
  {
    if (v7 < 0x100000)
    {
      v16 = [NSString alloc];
      if (v9 < 1024)
      {
        v15 = [v16 initWithFormat:@"%@%lld bytes", v6, a3, v18, v19, v20];
      }

      else
      {
        v15 = [v16 initWithFormat:@"%@%lldKB%@", v6, v10 >> 10, v12, v19, v20];
      }
    }

    else
    {
      v15 = [[NSString alloc] initWithFormat:@"%@%lldMB %lldKB%@", v6, v14, v10 >> 10, v12, v20];
    }
  }

  else
  {
    v15 = [[NSString alloc] initWithFormat:@"%@%lldGB %lldMB %lldKB%@", &stru_4BD3F0, v5 >> 30, v14, v10 >> 10, v12];
  }

  v13 = v15;

  return v13;
}

- (id)description
{
  v3 = objc_opt_new();
  v102[0] = @"totalClientRequests";
  v4 = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  v103[0] = v4;
  v102[1] = @"totalClientRepliesSuccess";
  v5 = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v103[1] = v5;
  v102[2] = @"totalClientRepliesFailure";
  v6 = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v103[2] = v6;
  v102[3] = @"totalQueuedClientRequests";
  v7 = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v103[3] = v7;
  v102[4] = @"totalDequeuedClientRequests";
  v96 = self;
  v8 = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v103[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:5];

  v100 = 0u;
  v99 = 0u;
  v97 = 0u;
  v98 = 0u;
  v10 = [&off_4F6DD0 countByEnumeratingWithState:&v97 objects:v101 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v98;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v98 != v12)
        {
          objc_enumerationMutation(&off_4F6DD0);
        }

        v14 = *(*(&v97 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        if (v15)
        {
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "interestInContent:", objc_msgSend(v15, "interestInContent")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "checkForNewer:", objc_msgSend(v15, "checkForNewer")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "determineIfAvailable:", objc_msgSend(v15, "determineIfAvailable")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "currentStatus:", objc_msgSend(v15, "currentStatus")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "lockContent:", objc_msgSend(v15, "lockContent")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "continueLockUsage:", objc_msgSend(v15, "continueLockUsage")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "endLockUsage:", objc_msgSend(v15, "endLockUsage")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "endPreviousLocks:", objc_msgSend(v15, "endPreviousLocks")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "endAllPreviousLocks:", objc_msgSend(v15, "endAllPreviousLocks")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stageDetermineAllAvailable:", objc_msgSend(v15, "stageDetermineAllAvailable")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stageDownloadAll:", objc_msgSend(v15, "stageDownloadAll")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stagePurgeAll:", objc_msgSend(v15, "stagePurgeAll")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stageEraseAll:", objc_msgSend(v15, "stageEraseAll")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "estEvictableBytesForSU:", objc_msgSend(v15, "estimateEvictableBytesForSoftwareUpdate")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "suspendForSU:", objc_msgSend(v15, "suspendForSoftwareUpdate")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "resumeFromSU:", objc_msgSend(v15, "resumeFromSoftwareUpdate")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "suspendResumeStatusForSU:", objc_msgSend(v15, "suspendResumeStatusForSoftwareUpdate")];
          [v3 appendFormat:@"\n"];
        }
      }

      v11 = [&off_4F6DD0 countByEnumeratingWithState:&v97 objects:v101 count:16];
    }

    while (v11);
  }

  v89 = [(MANAutoAssetControlStatistics *)v96 totalAutoAssetJobsStarted];
  v87 = [(MANAutoAssetControlStatistics *)v96 totalAutoJobsFinished];
  v86 = [(MANAutoAssetControlStatistics *)v96 totalStagerDetermineJobsStarted];
  v84 = [(MANAutoAssetControlStatistics *)v96 totalStagerDetermineJobsFinished];
  v83 = [(MANAutoAssetControlStatistics *)v96 totalStagerDownloadJobsStarted];
  v81 = [(MANAutoAssetControlStatistics *)v96 totalStagerDownloadJobsFinished];
  v80 = [(MANAutoAssetControlStatistics *)v96 totalResumedInFlightJobs];
  v78 = [(MANAutoAssetControlStatistics *)v96 totalSchedulerTriggeredJobs];
  v77 = [(MANAutoAssetControlStatistics *)v96 totalFailuresToStartJobs];
  v95 = [(MANAutoAssetControlStatistics *)v96 previouslyDownloaded];
  v75 = [v95 patchedAssets];
  v94 = [(MANAutoAssetControlStatistics *)v96 previouslyDownloaded];
  v73 = [v94 patchedBytes];
  v93 = [(MANAutoAssetControlStatistics *)v96 previouslyDownloaded];
  v72 = [v93 fullAssets];
  v92 = [(MANAutoAssetControlStatistics *)v96 previouslyDownloaded];
  v70 = [v92 fullBytes];
  v91 = [(MANAutoAssetControlStatistics *)v96 totalDownloaded];
  v68 = [v91 patchedAssets];
  v90 = [(MANAutoAssetControlStatistics *)v96 totalDownloaded];
  v66 = [v90 patchedBytes];
  v88 = [(MANAutoAssetControlStatistics *)v96 totalDownloaded];
  v65 = [v88 fullAssets];
  v85 = [(MANAutoAssetControlStatistics *)v96 totalDownloaded];
  v63 = [v85 fullBytes];
  v82 = [(MANAutoAssetControlStatistics *)v96 totalStaged];
  v61 = [v82 patchedAssets];
  v79 = [(MANAutoAssetControlStatistics *)v96 totalStaged];
  v59 = [v79 patchedBytes];
  v76 = [(MANAutoAssetControlStatistics *)v96 totalStaged];
  v57 = [v76 fullAssets];
  v74 = [(MANAutoAssetControlStatistics *)v96 totalStaged];
  v56 = [v74 fullBytes];
  v71 = [(MANAutoAssetControlStatistics *)v96 totalUnstaged];
  v54 = [v71 patchedAssets];
  v69 = [(MANAutoAssetControlStatistics *)v96 totalUnstaged];
  v52 = [v69 patchedBytes];
  v67 = [(MANAutoAssetControlStatistics *)v96 totalUnstaged];
  v50 = [v67 fullAssets];
  v64 = [(MANAutoAssetControlStatistics *)v96 totalUnstaged];
  v48 = [v64 fullBytes];
  v62 = [(MANAutoAssetControlStatistics *)v96 totalPromoted];
  v47 = [v62 patchedAssets];
  v60 = [(MANAutoAssetControlStatistics *)v96 totalPromoted];
  v45 = [v60 patchedBytes];
  v58 = [(MANAutoAssetControlStatistics *)v96 totalPromoted];
  v44 = [v58 fullAssets];
  v55 = [(MANAutoAssetControlStatistics *)v96 totalPromoted];
  v43 = [v55 fullBytes];
  v53 = [(MANAutoAssetControlStatistics *)v96 totalRemoved];
  v42 = [v53 patchedAssets];
  v51 = [(MANAutoAssetControlStatistics *)v96 totalRemoved];
  v41 = [v51 patchedBytes];
  v49 = [(MANAutoAssetControlStatistics *)v96 totalRemoved];
  v40 = [v49 fullAssets];
  v46 = [(MANAutoAssetControlStatistics *)v96 totalRemoved];
  v39 = [v46 fullBytes];
  v38 = [(MANAutoAssetControlStatistics *)v96 finishedJobSchedulerNetworkFailure];
  v37 = [(MANAutoAssetControlStatistics *)v96 finishedJobSchedulerNotNetworkRelated];
  v36 = [(MANAutoAssetControlStatistics *)v96 finishedJobClientNetworkFailure];
  v35 = [(MANAutoAssetControlStatistics *)v96 finishedJobClientNotNetworkRelated];
  if ([(MANAutoAssetControlStatistics *)v96 garbageCollectionPerformed])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v33 = v16;
  if ([(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimSpace])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v32 = v17;
  v34 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)v96 garbageCollectionTotalReclaimedSpace]];
  v30 = [(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedV2AssetCount];
  v31 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedV2AssetSpace]];
  v28 = [(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedUnlockedCount];
  v29 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedUnlockedSpace]];
  v26 = [(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedLockedOverridableCount];
  v27 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedLockedOverridableSpace]];
  v18 = [(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedLockedNeverRemoveCount];
  v19 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedLockedNeverRemoveSpace]];
  v20 = [(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedStagedCount];
  v21 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedStagedSpace]];
  v22 = [(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedMetadataBlockedCount];
  v23 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)v96 garbageCollectionReclaimedMetadataBlockedSpace]];
  +[NSString stringWithFormat:]( NSString,  "stringWithFormat:",  @">>>\nCategory                    Statistic                   Value\n=========================== =========================== ================================\n%@autoJobs                     totalAutoAssetJobsStarted: %lld\nautoJobs                         totalAutoJobsFinished: %lld\nstagerJobs             totalStagerDetermineJobsStarted: %lld\nstagerJobs            totalStagerDetermineJobsFinished: %lld\nstagerJobs              totalStagerDownloadJobsStarted: %lld\nstagerJobs             totalStagerDownloadJobsFinished: %lld\nresumedInFlightJobs           totalResumedInFlightJobs: %lld\nscheduledJobs              totalSchedulerTriggeredJobs: %lld\nfailuresToStartJobs           totalFailuresToStartJobs: %lld\n\npreviously           previouslyDownloadedPatchedAssets: %lld\npreviously            previouslyDownloadedPatchedBytes: %lld\npreviously              previouslyDownloadedFullAssets: %lld\npreviously               previouslyDownloadedFullBytes: %lld\n\ndownloaded                totalDownloadedPatchedAssets: %lld\ndownloaded                 totalDownloadedPatchedBytes: %lld\ndownloaded                   totalDownloadedFullAssets: %lld\ndownloaded                    totalDownloadedFullBytes: %lld\n\nstaged                        totalStagedPatchedAssets: %lld\nstaged                         totalStagedPatchedBytes: %lld\nstaged                           totalStagedFullAssets: %lld\nstaged                            totalStagedFullBytes: %lld\n\nunstaged                    totalUnstagedPatchedAssets: %lld\nunstaged                     totalUnstagedPatchedBytes: %lld\nunstaged                       totalUnstagedFullAssets: %lld\nunstaged                        totalUnstagedFullBytes: %lld\n\npromoted                    totalPromotedPatchedAssets: %lld\npromoted                     totalPromotedPatchedBytes: %lld\npromoted                       totalPromotedFullAssets: %lld\npromoted                        totalPromotedFullBytes: %lld\n\nremoved                      totalRemovedPatchedAssets: %lld\nremoved                       totalRemovedPatchedBytes: %lld\nremoved                         totalRemovedFullAssets: %lld\nremoved                          totalRemovedFullBytes: %lld\n\nfinishedJobs        finishedJobSchedulerNetworkFailure: %lld\nfinishedJobs     finishedJobSchedulerNotNetworkRelated: %lld\nfinishedJobs           finishedJobClientNetworkFailure: %lld\nfinishedJobs        finishedJobClientNotNetworkRelated: %lld\n\ngarbageColection                             performed: %@\ngarbageColection                          reclaimSpace: %@\ngarbageColection                   totalReclaimedSpace: %@\ngarbageColection                 reclaimedV2AssetCount: %ld\ngarbageColection                 reclaimedV2AssetSpace: %@\ngarbageColection                reclaimedUnlockedCount: %ld\ngarbageColection                reclaimedUnlockedSpace: %@\ngarbageColection       reclaimedLockedOverridableCount: %ld\ngarbageColection       reclaimedLockedOverridableSpace: %@\ngarbageColection       reclaimedLockedNeverRemoveCount: %ld\ngarbageColection       reclaimedLockedNeverRemoveSpace: %@\ngarbageColection                  reclaimedStagedCount: %ld\ngarbageColection                  reclaimedStagedSpace: %@\ngarbageColection         reclaimedMetadataBlockedCount: %ld\ngarbageColection         reclaimedMetadataBlockedSpace: %@\n<<<]",  v3,  v89,  v87,  v86,  v84,  v83,  v81,  v80,  v78,  v77,  v75,  v73,  v72,  v70,  v68,  v66,  v65,  v63,  v61,  v59,  v57,  v56,  v54,  v52,  v50,  v48,  v47,  v45,  v44,  v43,  v42,  v41,  v40,  v39,  v38,  v37,  v36,  v35,  v33,  v32,  v34,  v30,  v31,  v28,  v29,  v26,
    v27,
    v18,
    v19,
    v20,
    v21,
    v22,
  v24 = v23);

  return v24;
}

- (id)summary
{
  v3 = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  v96 = [v3 total];

  v4 = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v95 = [v4 total];

  v5 = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v94 = [v5 total];

  v6 = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v93 = [v6 total];

  v7 = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v92 = [v7 total];

  v59 = [(MANAutoAssetControlStatistics *)self totalAutoAssetJobsStarted];
  v71 = [(MANAutoAssetControlStatistics *)self totalStagerDetermineJobsStarted];
  v88 = [(MANAutoAssetControlStatistics *)self totalStagerDownloadJobsStarted];
  v87 = [(MANAutoAssetControlStatistics *)self totalAutoJobsFinished];
  v86 = [(MANAutoAssetControlStatistics *)self totalStagerDetermineJobsFinished];
  v85 = [(MANAutoAssetControlStatistics *)self totalStagerDownloadJobsFinished];
  v91 = [(MANAutoAssetControlStatistics *)self totalResumedInFlightJobs];
  v90 = [(MANAutoAssetControlStatistics *)self totalSchedulerTriggeredJobs];
  v89 = [(MANAutoAssetControlStatistics *)self totalFailuresToStartJobs];
  v8 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  v84 = [v8 patchedAssets];
  v9 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  v83 = [v9 fullAssets];

  v10 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  v82 = [v10 patchedBytes];
  v11 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  v81 = [v11 fullBytes];

  v12 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  v80 = [v12 patchedAssets];
  v13 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  v78 = [v13 fullAssets];

  v14 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  v79 = [v14 patchedBytes];
  v15 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  v77 = [v15 fullBytes];

  v16 = [(MANAutoAssetControlStatistics *)self totalStaged];
  v75 = [v16 patchedAssets];
  v17 = [(MANAutoAssetControlStatistics *)self totalStaged];
  v73 = [v17 fullAssets];

  v18 = [(MANAutoAssetControlStatistics *)self totalStaged];
  v76 = [v18 patchedBytes];
  v19 = [(MANAutoAssetControlStatistics *)self totalStaged];
  v74 = [v19 fullBytes];

  v20 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  v21 = [v20 patchedAssets];
  v22 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  v69 = [v22 fullAssets];

  v23 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  v72 = [v23 patchedBytes];
  v24 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  v70 = [v24 fullBytes];

  v25 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  v66 = [v25 patchedAssets];
  v26 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  v65 = [v26 fullAssets];

  v27 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  v68 = [v27 patchedBytes];
  v28 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  v67 = [v28 fullBytes];

  v29 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  v61 = [v29 patchedAssets];
  v30 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  v60 = [v30 fullAssets];

  v31 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  v63 = [v31 patchedBytes];
  v32 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  v62 = [v32 fullBytes];

  v64 = [[NSString alloc] initWithFormat:@"|jobFinished schedNWFail:%lld, schedOther:%lld, clientNWFail:%lld, clientOther:%lld", -[MANAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self, "finishedJobSchedulerNetworkFailure"), -[MANAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self, "finishedJobSchedulerNotNetworkRelated"), -[MANAutoAssetControlStatistics finishedJobClientNetworkFailure](self, "finishedJobClientNetworkFailure"), -[MANAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self, "finishedJobClientNotNetworkRelated")];
  if ([(MANAutoAssetControlStatistics *)self garbageCollectionPerformed])
  {
    v58 = [NSString alloc];
    v33 = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimSpace];
    v34 = @"garbageDetermined";
    if (v33)
    {
      v34 = @"garbageReclaimed";
    }

    v57 = v34;
    v56 = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetCount];
    v55 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetSpace]];
    v54 = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedCount];
    v53 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedSpace]];
    v52 = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableCount];
    v35 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableSpace]];
    v51 = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveCount];
    v36 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveSpace]];
    v37 = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedCount];
    v38 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedSpace]];
    v39 = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedCount];
    v40 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedSpace]];
    v41 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionTotalReclaimedSpace]];
    v42 = [v58 initWithFormat:@"|%@ v2Assets:%ld(%@), unlocked:%ld(%@), lockedOverridable:%ld(%@), lockedNeverRemove:%ld(%@), staged:%ld(%@), metadataBlocked:%ld(%@), totalSpace:%@", v57, v56, v55, v54, v53, v52, v35, v51, v36, v37, v38, v39, v40, v41];
  }

  else
  {
    v42 = &stru_4BD3F0;
  }

  v43 = [MANAutoAssetControlStatistics allocStringForBytes:&v82[v81]];
  v44 = [MANAutoAssetControlStatistics allocStringForBytes:&v79[v77]];
  v45 = [MANAutoAssetControlStatistics allocStringForBytes:&v76[v74]];
  v46 = [MANAutoAssetControlStatistics allocStringForBytes:&v72[v70]];
  v47 = [MANAutoAssetControlStatistics allocStringForBytes:&v68[v67]];
  v48 = [MANAutoAssetControlStatistics allocStringForBytes:&v63[v62]];
  v49 = [NSString stringWithFormat:@"[totalClient requests:%lld, success:%lld, failure:%lld, queued:%lld, dequeued:%lld|totalJobs started:%lld, finished:%lld|totalInFlight:%lld|totalScheduler:%lld|totalFailuresToStart:%lld|previouslyDownloaded assets:%lld(%@)|totalDownloaded assets:%lld(%@)|totalStaged assets:%lld(%@)|totalUnstaged assets:%lld(%@)|totalPromoted assets:%lld(%@)|totalRemoved assets:%lld(%@)%@%@]", v96, v95, v94, v93, v92, v71 + v59 + v88, v86 + v87 + v85, v91, v90, v89, &v84[v83], v43, &v80[v78], v44, &v75[v73], v45, &v21[v69], v46, &v66[v65], v47, &v61[v60], v48, v64, v42];

  return v49;
}

@end