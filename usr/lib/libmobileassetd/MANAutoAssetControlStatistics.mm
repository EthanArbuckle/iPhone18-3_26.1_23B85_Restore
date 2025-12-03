@interface MANAutoAssetControlStatistics
+ (id)allocStringForBytes:(int64_t)bytes;
- (MANAutoAssetControlStatistics)initWithCoder:(id)coder;
- (MANAutoAssetControlStatistics)initWithInitialValue:(int64_t)value;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MANAutoAssetControlStatistics

- (MANAutoAssetControlStatistics)initWithInitialValue:(int64_t)value
{
  v28.receiver = self;
  v28.super_class = MANAutoAssetControlStatistics;
  v4 = [(MANAutoAssetControlStatistics *)&v28 init];
  if (v4)
  {
    v5 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalClientRequests = v4->_totalClientRequests;
    v4->_totalClientRequests = v5;

    v7 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalClientRepliesSuccess = v4->_totalClientRepliesSuccess;
    v4->_totalClientRepliesSuccess = v7;

    v9 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalClientRepliesFailure = v4->_totalClientRepliesFailure;
    v4->_totalClientRepliesFailure = v9;

    v11 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalQueuedClientRequests = v4->_totalQueuedClientRequests;
    v4->_totalQueuedClientRequests = v11;

    v13 = [[MANAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalDequeuedClientRequests = v4->_totalDequeuedClientRequests;
    v4->_totalDequeuedClientRequests = v13;

    v4->_totalAutoAssetJobsStarted = value;
    v4->_totalAutoJobsFinished = value;
    v4->_totalStagerDetermineJobsStarted = value;
    v4->_totalStagerDetermineJobsFinished = value;
    v4->_totalStagerDownloadJobsStarted = value;
    v4->_totalStagerDownloadJobsFinished = value;
    v4->_totalResumedInFlightJobs = value;
    v4->_totalSchedulerTriggeredJobs = value;
    v4->_totalFailuresToStartJobs = value;
    v15 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    previouslyDownloaded = v4->_previouslyDownloaded;
    v4->_previouslyDownloaded = v15;

    v17 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalDownloaded = v4->_totalDownloaded;
    v4->_totalDownloaded = v17;

    v19 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalStaged = v4->_totalStaged;
    v4->_totalStaged = v19;

    v21 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalUnstaged = v4->_totalUnstaged;
    v4->_totalUnstaged = v21;

    v23 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalPromoted = v4->_totalPromoted;
    v4->_totalPromoted = v23;

    v25 = [[MANAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalRemoved = v4->_totalRemoved;
    v4->_totalRemoved = v25;

    v4->_finishedJobSchedulerNetworkFailure = value;
    v4->_finishedJobSchedulerNotNetworkRelated = value;
    v4->_finishedJobClientNetworkFailure = value;
    v4->_finishedJobClientNotNetworkRelated = value;
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

- (MANAutoAssetControlStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MANAutoAssetControlStatistics;
  v5 = [(MANAutoAssetControlStatistics *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRequests"];
    totalClientRequests = v5->_totalClientRequests;
    v5->_totalClientRequests = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesSuccess"];
    totalClientRepliesSuccess = v5->_totalClientRepliesSuccess;
    v5->_totalClientRepliesSuccess = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesFailure"];
    totalClientRepliesFailure = v5->_totalClientRepliesFailure;
    v5->_totalClientRepliesFailure = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalQueuedClientRequests"];
    totalQueuedClientRequests = v5->_totalQueuedClientRequests;
    v5->_totalQueuedClientRequests = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDequeuedClientRequests"];
    totalDequeuedClientRequests = v5->_totalDequeuedClientRequests;
    v5->_totalDequeuedClientRequests = v14;

    v5->_totalAutoAssetJobsStarted = [coderCopy decodeInt64ForKey:@"totalAutoAssetJobsStarted"];
    v5->_totalAutoJobsFinished = [coderCopy decodeInt64ForKey:@"totalAutoJobsFinished"];
    v5->_totalStagerDetermineJobsStarted = [coderCopy decodeInt64ForKey:@"totalStagerDetermineJobsStarted"];
    v5->_totalStagerDetermineJobsFinished = [coderCopy decodeInt64ForKey:@"totalStagerDetermineJobsFinished"];
    v5->_totalStagerDownloadJobsStarted = [coderCopy decodeInt64ForKey:@"totalStagerDownloadJobsStarted"];
    v5->_totalStagerDownloadJobsFinished = [coderCopy decodeInt64ForKey:@"totalStagerDownloadJobsFinished"];
    v5->_totalResumedInFlightJobs = [coderCopy decodeInt64ForKey:@"totalResumedInFlightJobs"];
    v5->_totalSchedulerTriggeredJobs = [coderCopy decodeInt64ForKey:@"totalSchedulerTriggeredJobs"];
    v5->_totalFailuresToStartJobs = [coderCopy decodeInt64ForKey:@"totalFailuresToStartJobs"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previouslyDownloaded"];
    previouslyDownloaded = v5->_previouslyDownloaded;
    v5->_previouslyDownloaded = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDownloaded"];
    totalDownloaded = v5->_totalDownloaded;
    v5->_totalDownloaded = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalStaged"];
    totalStaged = v5->_totalStaged;
    v5->_totalStaged = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalUnstaged"];
    totalUnstaged = v5->_totalUnstaged;
    v5->_totalUnstaged = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalPromoted"];
    totalPromoted = v5->_totalPromoted;
    v5->_totalPromoted = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalRemoved"];
    totalRemoved = v5->_totalRemoved;
    v5->_totalRemoved = v26;

    v5->_finishedJobSchedulerNetworkFailure = [coderCopy decodeInt64ForKey:@"finishedJobSchedulerNetworkFailure"];
    v5->_finishedJobSchedulerNotNetworkRelated = [coderCopy decodeInt64ForKey:@"finishedJobSchedulerNotNetworkRelated"];
    v5->_finishedJobClientNetworkFailure = [coderCopy decodeInt64ForKey:@"finishedJobClientNetworkFailure"];
    v5->_finishedJobClientNotNetworkRelated = [coderCopy decodeInt64ForKey:@"finishedJobClientNotNetworkRelated"];
    v5->_garbageCollectionPerformed = [coderCopy decodeBoolForKey:@"garbageCollectionPerformed"];
    v5->_garbageCollectionReclaimSpace = [coderCopy decodeBoolForKey:@"garbageCollectionReclaimSpace"];
    v5->_garbageCollectionTotalReclaimedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionTotalReclaimedSpace"];
    v5->_garbageCollectionReclaimedV2AssetCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetCount"];
    v5->_garbageCollectionReclaimedV2AssetSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetSpace"];
    v5->_garbageCollectionReclaimedUnlockedCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedCount"];
    v5->_garbageCollectionReclaimedUnlockedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedSpace"];
    v5->_garbageCollectionReclaimedLockedOverridableCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableCount"];
    v5->_garbageCollectionReclaimedLockedOverridableSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableSpace"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveCount"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveSpace"];
    v5->_garbageCollectionReclaimedStagedCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedStagedCount"];
    v5->_garbageCollectionReclaimedStagedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedStagedSpace"];
    v5->_garbageCollectionReclaimedMetadataBlockedCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedCount"];
    v5->_garbageCollectionReclaimedMetadataBlockedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  totalClientRequests = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  [coderCopy encodeObject:totalClientRequests forKey:@"totalClientRequests"];

  totalClientRepliesSuccess = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  [coderCopy encodeObject:totalClientRepliesSuccess forKey:@"totalClientRepliesSuccess"];

  totalClientRepliesFailure = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  [coderCopy encodeObject:totalClientRepliesFailure forKey:@"totalClientRepliesFailure"];

  totalQueuedClientRequests = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  [coderCopy encodeObject:totalQueuedClientRequests forKey:@"totalQueuedClientRequests"];

  totalDequeuedClientRequests = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  [coderCopy encodeObject:totalDequeuedClientRequests forKey:@"totalDequeuedClientRequests"];

  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalAutoAssetJobsStarted](self forKey:{"totalAutoAssetJobsStarted"), @"totalAutoAssetJobsStarted"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalAutoJobsFinished](self forKey:{"totalAutoJobsFinished"), @"totalAutoJobsFinished"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalStagerDetermineJobsStarted](self forKey:{"totalStagerDetermineJobsStarted"), @"totalStagerDetermineJobsStarted"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalStagerDetermineJobsFinished](self forKey:{"totalStagerDetermineJobsFinished"), @"totalStagerDetermineJobsFinished"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalStagerDownloadJobsStarted](self forKey:{"totalStagerDownloadJobsStarted"), @"totalStagerDownloadJobsStarted"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalStagerDownloadJobsFinished](self forKey:{"totalStagerDownloadJobsFinished"), @"totalStagerDownloadJobsFinished"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalResumedInFlightJobs](self forKey:{"totalResumedInFlightJobs"), @"totalResumedInFlightJobs"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalSchedulerTriggeredJobs](self forKey:{"totalSchedulerTriggeredJobs"), @"totalSchedulerTriggeredJobs"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics totalFailuresToStartJobs](self forKey:{"totalFailuresToStartJobs"), @"totalFailuresToStartJobs"}];
  previouslyDownloaded = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  [coderCopy encodeObject:previouslyDownloaded forKey:@"previouslyDownloaded"];

  totalDownloaded = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  [coderCopy encodeObject:totalDownloaded forKey:@"totalDownloaded"];

  totalStaged = [(MANAutoAssetControlStatistics *)self totalStaged];
  [coderCopy encodeObject:totalStaged forKey:@"totalStaged"];

  totalUnstaged = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  [coderCopy encodeObject:totalUnstaged forKey:@"totalUnstaged"];

  totalPromoted = [(MANAutoAssetControlStatistics *)self totalPromoted];
  [coderCopy encodeObject:totalPromoted forKey:@"totalPromoted"];

  totalRemoved = [(MANAutoAssetControlStatistics *)self totalRemoved];
  [coderCopy encodeObject:totalRemoved forKey:@"totalRemoved"];

  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self forKey:{"finishedJobSchedulerNetworkFailure"), @"finishedJobSchedulerNetworkFailure"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self forKey:{"finishedJobSchedulerNotNetworkRelated"), @"finishedJobSchedulerNotNetworkRelated"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics finishedJobClientNetworkFailure](self forKey:{"finishedJobClientNetworkFailure"), @"finishedJobClientNetworkFailure"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self forKey:{"finishedJobClientNotNetworkRelated"), @"finishedJobClientNotNetworkRelated"}];
  [coderCopy encodeBool:-[MANAutoAssetControlStatistics garbageCollectionPerformed](self forKey:{"garbageCollectionPerformed"), @"garbageCollectionPerformed"}];
  [coderCopy encodeBool:-[MANAutoAssetControlStatistics garbageCollectionReclaimSpace](self forKey:{"garbageCollectionReclaimSpace"), @"garbageCollectionReclaimSpace"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionTotalReclaimedSpace](self forKey:{"garbageCollectionTotalReclaimedSpace"), @"garbageCollectionTotalReclaimedSpace"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedV2AssetCount](self forKey:{"garbageCollectionReclaimedV2AssetCount"), @"garbageCollectionReclaimedV2AssetCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedV2AssetSpace](self forKey:{"garbageCollectionReclaimedV2AssetSpace"), @"garbageCollectionReclaimedV2AssetSpace"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedUnlockedCount](self forKey:{"garbageCollectionReclaimedUnlockedCount"), @"garbageCollectionReclaimedUnlockedCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedUnlockedSpace](self forKey:{"garbageCollectionReclaimedUnlockedSpace"), @"garbageCollectionReclaimedUnlockedSpace"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableCount](self forKey:{"garbageCollectionReclaimedLockedOverridableCount"), @"garbageCollectionReclaimedLockedOverridableCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableSpace](self forKey:{"garbageCollectionReclaimedLockedOverridableSpace"), @"garbageCollectionReclaimedLockedOverridableSpace"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveCount](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveCount"), @"garbageCollectionReclaimedLockedNeverRemoveCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveSpace](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveSpace"), @"garbageCollectionReclaimedLockedNeverRemoveSpace"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedStagedCount](self forKey:{"garbageCollectionReclaimedStagedCount"), @"garbageCollectionReclaimedStagedCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedStagedSpace](self forKey:{"garbageCollectionReclaimedStagedSpace"), @"garbageCollectionReclaimedStagedSpace"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedCount](self forKey:{"garbageCollectionReclaimedMetadataBlockedCount"), @"garbageCollectionReclaimedMetadataBlockedCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedSpace](self forKey:{"garbageCollectionReclaimedMetadataBlockedSpace"), @"garbageCollectionReclaimedMetadataBlockedSpace"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MANAutoAssetControlStatistics);
  totalClientRequests = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  v5 = [totalClientRequests copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalClientRequests:v5];

  totalClientRepliesSuccess = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v7 = [totalClientRepliesSuccess copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalClientRepliesSuccess:v7];

  totalClientRepliesFailure = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v9 = [totalClientRepliesFailure copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalClientRepliesFailure:v9];

  totalQueuedClientRequests = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v11 = [totalQueuedClientRequests copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalQueuedClientRequests:v11];

  totalDequeuedClientRequests = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v13 = [totalDequeuedClientRequests copy];
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
  previouslyDownloaded = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  v15 = [previouslyDownloaded copy];
  [(MANAutoAssetControlStatistics *)v3 setPreviouslyDownloaded:v15];

  totalDownloaded = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  v17 = [totalDownloaded copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalDownloaded:v17];

  totalStaged = [(MANAutoAssetControlStatistics *)self totalStaged];
  v19 = [totalStaged copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalStaged:v19];

  totalUnstaged = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  v21 = [totalUnstaged copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalUnstaged:v21];

  totalPromoted = [(MANAutoAssetControlStatistics *)self totalPromoted];
  v23 = [totalPromoted copy];
  [(MANAutoAssetControlStatistics *)v3 setTotalPromoted:v23];

  totalRemoved = [(MANAutoAssetControlStatistics *)self totalRemoved];
  v25 = [totalRemoved copy];
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

+ (id)allocStringForBytes:(int64_t)bytes
{
  if (!bytes)
  {
    return @"0 bytes";
  }

  v4 = @"NEGATIVE ";
  if (bytes < 0)
  {
    bytesCopy = bytes + 0x3FFFFFFF;
  }

  else
  {
    v4 = &stru_4BD3F0;
    bytesCopy = bytes;
  }

  v6 = v4;
  v7 = bytes - (bytesCopy & 0xFFFFFFFFC0000000);
  if (bytes >= (bytesCopy & 0xFFFFFFFFC0000000))
  {
    v8 = bytes - (bytesCopy & 0xFFFFFFFFC0000000);
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
  if (bytes < 0x40000000)
  {
    if (v7 < 0x100000)
    {
      v16 = [NSString alloc];
      if (v9 < 1024)
      {
        v15 = [v16 initWithFormat:@"%@%lld bytes", v6, bytes, v18, v19, v20];
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
    v15 = [[NSString alloc] initWithFormat:@"%@%lldGB %lldMB %lldKB%@", &stru_4BD3F0, bytesCopy >> 30, v14, v10 >> 10, v12];
  }

  v13 = v15;

  return v13;
}

- (id)description
{
  v3 = objc_opt_new();
  v102[0] = @"totalClientRequests";
  totalClientRequests = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  v103[0] = totalClientRequests;
  v102[1] = @"totalClientRepliesSuccess";
  totalClientRepliesSuccess = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v103[1] = totalClientRepliesSuccess;
  v102[2] = @"totalClientRepliesFailure";
  totalClientRepliesFailure = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v103[2] = totalClientRepliesFailure;
  v102[3] = @"totalQueuedClientRequests";
  totalQueuedClientRequests = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v103[3] = totalQueuedClientRequests;
  v102[4] = @"totalDequeuedClientRequests";
  selfCopy = self;
  totalDequeuedClientRequests = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v103[4] = totalDequeuedClientRequests;
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

  totalAutoAssetJobsStarted = [(MANAutoAssetControlStatistics *)selfCopy totalAutoAssetJobsStarted];
  totalAutoJobsFinished = [(MANAutoAssetControlStatistics *)selfCopy totalAutoJobsFinished];
  totalStagerDetermineJobsStarted = [(MANAutoAssetControlStatistics *)selfCopy totalStagerDetermineJobsStarted];
  totalStagerDetermineJobsFinished = [(MANAutoAssetControlStatistics *)selfCopy totalStagerDetermineJobsFinished];
  totalStagerDownloadJobsStarted = [(MANAutoAssetControlStatistics *)selfCopy totalStagerDownloadJobsStarted];
  totalStagerDownloadJobsFinished = [(MANAutoAssetControlStatistics *)selfCopy totalStagerDownloadJobsFinished];
  totalResumedInFlightJobs = [(MANAutoAssetControlStatistics *)selfCopy totalResumedInFlightJobs];
  totalSchedulerTriggeredJobs = [(MANAutoAssetControlStatistics *)selfCopy totalSchedulerTriggeredJobs];
  totalFailuresToStartJobs = [(MANAutoAssetControlStatistics *)selfCopy totalFailuresToStartJobs];
  previouslyDownloaded = [(MANAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  patchedAssets = [previouslyDownloaded patchedAssets];
  previouslyDownloaded2 = [(MANAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  patchedBytes = [previouslyDownloaded2 patchedBytes];
  previouslyDownloaded3 = [(MANAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  fullAssets = [previouslyDownloaded3 fullAssets];
  previouslyDownloaded4 = [(MANAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  fullBytes = [previouslyDownloaded4 fullBytes];
  totalDownloaded = [(MANAutoAssetControlStatistics *)selfCopy totalDownloaded];
  patchedAssets2 = [totalDownloaded patchedAssets];
  totalDownloaded2 = [(MANAutoAssetControlStatistics *)selfCopy totalDownloaded];
  patchedBytes2 = [totalDownloaded2 patchedBytes];
  totalDownloaded3 = [(MANAutoAssetControlStatistics *)selfCopy totalDownloaded];
  fullAssets2 = [totalDownloaded3 fullAssets];
  totalDownloaded4 = [(MANAutoAssetControlStatistics *)selfCopy totalDownloaded];
  fullBytes2 = [totalDownloaded4 fullBytes];
  totalStaged = [(MANAutoAssetControlStatistics *)selfCopy totalStaged];
  patchedAssets3 = [totalStaged patchedAssets];
  totalStaged2 = [(MANAutoAssetControlStatistics *)selfCopy totalStaged];
  patchedBytes3 = [totalStaged2 patchedBytes];
  totalStaged3 = [(MANAutoAssetControlStatistics *)selfCopy totalStaged];
  fullAssets3 = [totalStaged3 fullAssets];
  totalStaged4 = [(MANAutoAssetControlStatistics *)selfCopy totalStaged];
  fullBytes3 = [totalStaged4 fullBytes];
  totalUnstaged = [(MANAutoAssetControlStatistics *)selfCopy totalUnstaged];
  patchedAssets4 = [totalUnstaged patchedAssets];
  totalUnstaged2 = [(MANAutoAssetControlStatistics *)selfCopy totalUnstaged];
  patchedBytes4 = [totalUnstaged2 patchedBytes];
  totalUnstaged3 = [(MANAutoAssetControlStatistics *)selfCopy totalUnstaged];
  fullAssets4 = [totalUnstaged3 fullAssets];
  totalUnstaged4 = [(MANAutoAssetControlStatistics *)selfCopy totalUnstaged];
  fullBytes4 = [totalUnstaged4 fullBytes];
  totalPromoted = [(MANAutoAssetControlStatistics *)selfCopy totalPromoted];
  patchedAssets5 = [totalPromoted patchedAssets];
  totalPromoted2 = [(MANAutoAssetControlStatistics *)selfCopy totalPromoted];
  patchedBytes5 = [totalPromoted2 patchedBytes];
  totalPromoted3 = [(MANAutoAssetControlStatistics *)selfCopy totalPromoted];
  fullAssets5 = [totalPromoted3 fullAssets];
  totalPromoted4 = [(MANAutoAssetControlStatistics *)selfCopy totalPromoted];
  fullBytes5 = [totalPromoted4 fullBytes];
  totalRemoved = [(MANAutoAssetControlStatistics *)selfCopy totalRemoved];
  patchedAssets6 = [totalRemoved patchedAssets];
  totalRemoved2 = [(MANAutoAssetControlStatistics *)selfCopy totalRemoved];
  patchedBytes6 = [totalRemoved2 patchedBytes];
  totalRemoved3 = [(MANAutoAssetControlStatistics *)selfCopy totalRemoved];
  fullAssets6 = [totalRemoved3 fullAssets];
  totalRemoved4 = [(MANAutoAssetControlStatistics *)selfCopy totalRemoved];
  fullBytes6 = [totalRemoved4 fullBytes];
  finishedJobSchedulerNetworkFailure = [(MANAutoAssetControlStatistics *)selfCopy finishedJobSchedulerNetworkFailure];
  finishedJobSchedulerNotNetworkRelated = [(MANAutoAssetControlStatistics *)selfCopy finishedJobSchedulerNotNetworkRelated];
  finishedJobClientNetworkFailure = [(MANAutoAssetControlStatistics *)selfCopy finishedJobClientNetworkFailure];
  finishedJobClientNotNetworkRelated = [(MANAutoAssetControlStatistics *)selfCopy finishedJobClientNotNetworkRelated];
  if ([(MANAutoAssetControlStatistics *)selfCopy garbageCollectionPerformed])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v33 = v16;
  if ([(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimSpace])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v32 = v17;
  v34 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)selfCopy garbageCollectionTotalReclaimedSpace]];
  garbageCollectionReclaimedV2AssetCount = [(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedV2AssetCount];
  v31 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedV2AssetSpace]];
  garbageCollectionReclaimedUnlockedCount = [(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedUnlockedCount];
  v29 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedUnlockedSpace]];
  garbageCollectionReclaimedLockedOverridableCount = [(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedOverridableCount];
  v27 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedOverridableSpace]];
  garbageCollectionReclaimedLockedNeverRemoveCount = [(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedNeverRemoveCount];
  v19 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedNeverRemoveSpace]];
  garbageCollectionReclaimedStagedCount = [(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedStagedCount];
  v21 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedStagedSpace]];
  garbageCollectionReclaimedMetadataBlockedCount = [(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedMetadataBlockedCount];
  v23 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedMetadataBlockedSpace]];
  +[NSString stringWithFormat:]( NSString,  "stringWithFormat:",  @">>>\nCategory                    Statistic                   Value\n=========================== =========================== ================================\n%@autoJobs                     totalAutoAssetJobsStarted: %lld\nautoJobs                         totalAutoJobsFinished: %lld\nstagerJobs             totalStagerDetermineJobsStarted: %lld\nstagerJobs            totalStagerDetermineJobsFinished: %lld\nstagerJobs              totalStagerDownloadJobsStarted: %lld\nstagerJobs             totalStagerDownloadJobsFinished: %lld\nresumedInFlightJobs           totalResumedInFlightJobs: %lld\nscheduledJobs              totalSchedulerTriggeredJobs: %lld\nfailuresToStartJobs           totalFailuresToStartJobs: %lld\n\npreviously           previouslyDownloadedPatchedAssets: %lld\npreviously            previouslyDownloadedPatchedBytes: %lld\npreviously              previouslyDownloadedFullAssets: %lld\npreviously               previouslyDownloadedFullBytes: %lld\n\ndownloaded                totalDownloadedPatchedAssets: %lld\ndownloaded                 totalDownloadedPatchedBytes: %lld\ndownloaded                   totalDownloadedFullAssets: %lld\ndownloaded                    totalDownloadedFullBytes: %lld\n\nstaged                        totalStagedPatchedAssets: %lld\nstaged                         totalStagedPatchedBytes: %lld\nstaged                           totalStagedFullAssets: %lld\nstaged                            totalStagedFullBytes: %lld\n\nunstaged                    totalUnstagedPatchedAssets: %lld\nunstaged                     totalUnstagedPatchedBytes: %lld\nunstaged                       totalUnstagedFullAssets: %lld\nunstaged                        totalUnstagedFullBytes: %lld\n\npromoted                    totalPromotedPatchedAssets: %lld\npromoted                     totalPromotedPatchedBytes: %lld\npromoted                       totalPromotedFullAssets: %lld\npromoted                        totalPromotedFullBytes: %lld\n\nremoved                      totalRemovedPatchedAssets: %lld\nremoved                       totalRemovedPatchedBytes: %lld\nremoved                         totalRemovedFullAssets: %lld\nremoved                          totalRemovedFullBytes: %lld\n\nfinishedJobs        finishedJobSchedulerNetworkFailure: %lld\nfinishedJobs     finishedJobSchedulerNotNetworkRelated: %lld\nfinishedJobs           finishedJobClientNetworkFailure: %lld\nfinishedJobs        finishedJobClientNotNetworkRelated: %lld\n\ngarbageColection                             performed: %@\ngarbageColection                          reclaimSpace: %@\ngarbageColection                   totalReclaimedSpace: %@\ngarbageColection                 reclaimedV2AssetCount: %ld\ngarbageColection                 reclaimedV2AssetSpace: %@\ngarbageColection                reclaimedUnlockedCount: %ld\ngarbageColection                reclaimedUnlockedSpace: %@\ngarbageColection       reclaimedLockedOverridableCount: %ld\ngarbageColection       reclaimedLockedOverridableSpace: %@\ngarbageColection       reclaimedLockedNeverRemoveCount: %ld\ngarbageColection       reclaimedLockedNeverRemoveSpace: %@\ngarbageColection                  reclaimedStagedCount: %ld\ngarbageColection                  reclaimedStagedSpace: %@\ngarbageColection         reclaimedMetadataBlockedCount: %ld\ngarbageColection         reclaimedMetadataBlockedSpace: %@\n<<<]",  v3,  totalAutoAssetJobsStarted,  totalAutoJobsFinished,  totalStagerDetermineJobsStarted,  totalStagerDetermineJobsFinished,  totalStagerDownloadJobsStarted,  totalStagerDownloadJobsFinished,  totalResumedInFlightJobs,  totalSchedulerTriggeredJobs,  totalFailuresToStartJobs,  patchedAssets,  patchedBytes,  fullAssets,  fullBytes,  patchedAssets2,  patchedBytes2,  fullAssets2,  fullBytes2,  patchedAssets3,  patchedBytes3,  fullAssets3,  fullBytes3,  patchedAssets4,  patchedBytes4,  fullAssets4,  fullBytes4,  patchedAssets5,  patchedBytes5,  fullAssets5,  fullBytes5,  patchedAssets6,  patchedBytes6,  fullAssets6,  fullBytes6,  finishedJobSchedulerNetworkFailure,  finishedJobSchedulerNotNetworkRelated,  finishedJobClientNetworkFailure,  finishedJobClientNotNetworkRelated,  v33,  v32,  v34,  garbageCollectionReclaimedV2AssetCount,  v31,  garbageCollectionReclaimedUnlockedCount,  v29,  garbageCollectionReclaimedLockedOverridableCount,
    v27,
    garbageCollectionReclaimedLockedNeverRemoveCount,
    v19,
    garbageCollectionReclaimedStagedCount,
    v21,
    garbageCollectionReclaimedMetadataBlockedCount,
  v24 = v23);

  return v24;
}

- (id)summary
{
  totalClientRequests = [(MANAutoAssetControlStatistics *)self totalClientRequests];
  total = [totalClientRequests total];

  totalClientRepliesSuccess = [(MANAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  total2 = [totalClientRepliesSuccess total];

  totalClientRepliesFailure = [(MANAutoAssetControlStatistics *)self totalClientRepliesFailure];
  total3 = [totalClientRepliesFailure total];

  totalQueuedClientRequests = [(MANAutoAssetControlStatistics *)self totalQueuedClientRequests];
  total4 = [totalQueuedClientRequests total];

  totalDequeuedClientRequests = [(MANAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  total5 = [totalDequeuedClientRequests total];

  totalAutoAssetJobsStarted = [(MANAutoAssetControlStatistics *)self totalAutoAssetJobsStarted];
  totalStagerDetermineJobsStarted = [(MANAutoAssetControlStatistics *)self totalStagerDetermineJobsStarted];
  totalStagerDownloadJobsStarted = [(MANAutoAssetControlStatistics *)self totalStagerDownloadJobsStarted];
  totalAutoJobsFinished = [(MANAutoAssetControlStatistics *)self totalAutoJobsFinished];
  totalStagerDetermineJobsFinished = [(MANAutoAssetControlStatistics *)self totalStagerDetermineJobsFinished];
  totalStagerDownloadJobsFinished = [(MANAutoAssetControlStatistics *)self totalStagerDownloadJobsFinished];
  totalResumedInFlightJobs = [(MANAutoAssetControlStatistics *)self totalResumedInFlightJobs];
  totalSchedulerTriggeredJobs = [(MANAutoAssetControlStatistics *)self totalSchedulerTriggeredJobs];
  totalFailuresToStartJobs = [(MANAutoAssetControlStatistics *)self totalFailuresToStartJobs];
  previouslyDownloaded = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  patchedAssets = [previouslyDownloaded patchedAssets];
  previouslyDownloaded2 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  fullAssets = [previouslyDownloaded2 fullAssets];

  previouslyDownloaded3 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  patchedBytes = [previouslyDownloaded3 patchedBytes];
  previouslyDownloaded4 = [(MANAutoAssetControlStatistics *)self previouslyDownloaded];
  fullBytes = [previouslyDownloaded4 fullBytes];

  totalDownloaded = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  patchedAssets2 = [totalDownloaded patchedAssets];
  totalDownloaded2 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  fullAssets2 = [totalDownloaded2 fullAssets];

  totalDownloaded3 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  patchedBytes2 = [totalDownloaded3 patchedBytes];
  totalDownloaded4 = [(MANAutoAssetControlStatistics *)self totalDownloaded];
  fullBytes2 = [totalDownloaded4 fullBytes];

  totalStaged = [(MANAutoAssetControlStatistics *)self totalStaged];
  patchedAssets3 = [totalStaged patchedAssets];
  totalStaged2 = [(MANAutoAssetControlStatistics *)self totalStaged];
  fullAssets3 = [totalStaged2 fullAssets];

  totalStaged3 = [(MANAutoAssetControlStatistics *)self totalStaged];
  patchedBytes3 = [totalStaged3 patchedBytes];
  totalStaged4 = [(MANAutoAssetControlStatistics *)self totalStaged];
  fullBytes3 = [totalStaged4 fullBytes];

  totalUnstaged = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  patchedAssets4 = [totalUnstaged patchedAssets];
  totalUnstaged2 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  fullAssets4 = [totalUnstaged2 fullAssets];

  totalUnstaged3 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  patchedBytes4 = [totalUnstaged3 patchedBytes];
  totalUnstaged4 = [(MANAutoAssetControlStatistics *)self totalUnstaged];
  fullBytes4 = [totalUnstaged4 fullBytes];

  totalPromoted = [(MANAutoAssetControlStatistics *)self totalPromoted];
  patchedAssets5 = [totalPromoted patchedAssets];
  totalPromoted2 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  fullAssets5 = [totalPromoted2 fullAssets];

  totalPromoted3 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  patchedBytes5 = [totalPromoted3 patchedBytes];
  totalPromoted4 = [(MANAutoAssetControlStatistics *)self totalPromoted];
  fullBytes5 = [totalPromoted4 fullBytes];

  totalRemoved = [(MANAutoAssetControlStatistics *)self totalRemoved];
  patchedAssets6 = [totalRemoved patchedAssets];
  totalRemoved2 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  fullAssets6 = [totalRemoved2 fullAssets];

  totalRemoved3 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  patchedBytes6 = [totalRemoved3 patchedBytes];
  totalRemoved4 = [(MANAutoAssetControlStatistics *)self totalRemoved];
  fullBytes6 = [totalRemoved4 fullBytes];

  v64 = [[NSString alloc] initWithFormat:@"|jobFinished schedNWFail:%lld, schedOther:%lld, clientNWFail:%lld, clientOther:%lld", -[MANAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self, "finishedJobSchedulerNetworkFailure"), -[MANAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self, "finishedJobSchedulerNotNetworkRelated"), -[MANAutoAssetControlStatistics finishedJobClientNetworkFailure](self, "finishedJobClientNetworkFailure"), -[MANAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self, "finishedJobClientNotNetworkRelated")];
  if ([(MANAutoAssetControlStatistics *)self garbageCollectionPerformed])
  {
    v58 = [NSString alloc];
    garbageCollectionReclaimSpace = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimSpace];
    v34 = @"garbageDetermined";
    if (garbageCollectionReclaimSpace)
    {
      v34 = @"garbageReclaimed";
    }

    v57 = v34;
    garbageCollectionReclaimedV2AssetCount = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetCount];
    v55 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetSpace]];
    garbageCollectionReclaimedUnlockedCount = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedCount];
    v53 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedSpace]];
    garbageCollectionReclaimedLockedOverridableCount = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableCount];
    v35 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableSpace]];
    garbageCollectionReclaimedLockedNeverRemoveCount = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveCount];
    v36 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveSpace]];
    garbageCollectionReclaimedStagedCount = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedCount];
    v38 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedSpace]];
    garbageCollectionReclaimedMetadataBlockedCount = [(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedCount];
    v40 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedSpace]];
    v41 = [MANAutoAssetControlStatistics allocStringForBytes:[(MANAutoAssetControlStatistics *)self garbageCollectionTotalReclaimedSpace]];
    v42 = [v58 initWithFormat:@"|%@ v2Assets:%ld(%@), unlocked:%ld(%@), lockedOverridable:%ld(%@), lockedNeverRemove:%ld(%@), staged:%ld(%@), metadataBlocked:%ld(%@), totalSpace:%@", v57, garbageCollectionReclaimedV2AssetCount, v55, garbageCollectionReclaimedUnlockedCount, v53, garbageCollectionReclaimedLockedOverridableCount, v35, garbageCollectionReclaimedLockedNeverRemoveCount, v36, garbageCollectionReclaimedStagedCount, v38, garbageCollectionReclaimedMetadataBlockedCount, v40, v41];
  }

  else
  {
    v42 = &stru_4BD3F0;
  }

  v43 = [MANAutoAssetControlStatistics allocStringForBytes:&patchedBytes[fullBytes]];
  v44 = [MANAutoAssetControlStatistics allocStringForBytes:&patchedBytes2[fullBytes2]];
  v45 = [MANAutoAssetControlStatistics allocStringForBytes:&patchedBytes3[fullBytes3]];
  v46 = [MANAutoAssetControlStatistics allocStringForBytes:&patchedBytes4[fullBytes4]];
  v47 = [MANAutoAssetControlStatistics allocStringForBytes:&patchedBytes5[fullBytes5]];
  v48 = [MANAutoAssetControlStatistics allocStringForBytes:&patchedBytes6[fullBytes6]];
  v49 = [NSString stringWithFormat:@"[totalClient requests:%lld, success:%lld, failure:%lld, queued:%lld, dequeued:%lld|totalJobs started:%lld, finished:%lld|totalInFlight:%lld|totalScheduler:%lld|totalFailuresToStart:%lld|previouslyDownloaded assets:%lld(%@)|totalDownloaded assets:%lld(%@)|totalStaged assets:%lld(%@)|totalUnstaged assets:%lld(%@)|totalPromoted assets:%lld(%@)|totalRemoved assets:%lld(%@)%@%@]", total, total2, total3, total4, total5, totalStagerDetermineJobsStarted + totalAutoAssetJobsStarted + totalStagerDownloadJobsStarted, totalStagerDetermineJobsFinished + totalAutoJobsFinished + totalStagerDownloadJobsFinished, totalResumedInFlightJobs, totalSchedulerTriggeredJobs, totalFailuresToStartJobs, &patchedAssets[fullAssets], v43, &patchedAssets2[fullAssets2], v44, &patchedAssets3[fullAssets3], v45, &patchedAssets4[fullAssets4], v46, &patchedAssets5[fullAssets5], v47, &patchedAssets6[fullAssets6], v48, v64, v42];

  return v49;
}

@end