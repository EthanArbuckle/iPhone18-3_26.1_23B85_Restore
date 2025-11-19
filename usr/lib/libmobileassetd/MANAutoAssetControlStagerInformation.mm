@interface MANAutoAssetControlStagerInformation
+ (id)previousOTASituationName:(int64_t)a3;
- (MANAutoAssetControlStagerInformation)init;
- (MANAutoAssetControlStagerInformation)initWithCoder:(id)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MANAutoAssetControlStagerInformation

- (MANAutoAssetControlStagerInformation)init
{
  v18.receiver = self;
  v18.super_class = MANAutoAssetControlStagerInformation;
  v2 = [(MANAutoAssetControlStagerInformation *)&v18 init];
  v3 = v2;
  if (v2)
  {
    startupLastStagingFromOSVersion = v2->_startupLastStagingFromOSVersion;
    *&v2->_persistedStateCount = 0u;
    *&v2->_persistedAvailableForStagingByTargetCount = 0u;

    startupLastStagingFromBuildVersion = v3->_startupLastStagingFromBuildVersion;
    v3->_startupLastStagingFromBuildVersion = 0;

    startupAssetTargetOSVersion = v3->_startupAssetTargetOSVersion;
    v3->_startupAssetTargetOSVersion = 0;

    startupAssetTargetBuildVersion = v3->_startupAssetTargetBuildVersion;
    v3->_startupAssetTargetBuildVersion = 0;

    *&v3->_startupStagedAssetCount = 0u;
    *&v3->_startupActivelyStagingAssetCount = 0u;
    *&v3->_startupCandidateAssetCount = 0u;
    stagingFromOSVersion = v3->_stagingFromOSVersion;
    v3->_startupPreviousOTASituation = 0;
    v3->_stagingFromOSVersion = 0;

    stagingFromBuildVersion = v3->_stagingFromBuildVersion;
    v3->_stagingFromBuildVersion = 0;

    *&v3->_loadPersistedPostponed = 0;
    assetTargetOSVersion = v3->_assetTargetOSVersion;
    v3->_assetTargetOSVersion = 0;

    assetTargetBuildVersion = v3->_assetTargetBuildVersion;
    v3->_assetTargetBuildVersion = 0;

    assetTargetTrainName = v3->_assetTargetTrainName;
    v3->_assetTargetTrainName = 0;

    assetTargetRestoreVersion = v3->_assetTargetRestoreVersion;
    v3->_assetTargetRestoreVersion = 0;

    optionalAssetSizeAllowed = v3->_optionalAssetSizeAllowed;
    v3->_optionalAssetSizeAllowed = 0;

    *&v3->_activeTargetCandidateSetConfigurationsOptionalCount = 0u;
    *&v3->_activeTargetCandidatesForStagingOptionalCount = 0u;
    *&v3->_activeTargetOTASituation = 0u;
    otherTargetName = v3->_otherTargetName;
    v3->_activeTargetAvailableForStagingOptionalCount = 0;
    v3->_otherTargetName = 0;

    *&v3->_otherTargetOTASituation = 0u;
    *&v3->_stagingClientDownloadRequestActive = 0;
    *&v3->_otherTargetCandidatesForStagingOptionalCount = 0u;
    *&v3->_otherTargetCandidateSetConfigurationsOptionalCount = 0u;
    *&v3->_otherTargetAvailableForStagingOptionalCount = 0u;
    stagingClientName = v3->_stagingClientName;
    v3->_stagingClientName = 0;

    v3->_eliminationSetConfigurationCurrentJob = 0;
    *&v3->_setConfigurationsCount = 0u;
    *&v3->_scheduledJobsCount = 0u;
    *&v3->_candidateSetConfigurationsCount = 0u;
    *&v3->_baseForStagingDescriptorsCount = 0u;
    *&v3->_availableForStagingCount = 0u;
    *&v3->_successfullyStagedCount = 0u;
    *&v3->_overallStagedDownloadedSoFarBytes = 0u;
    *&v3->_currentStagedRemainingBytes = 0u;
    v3->_eliminationSelectorsAcknowledgedCount = 0;
  }

  return v3;
}

- (MANAutoAssetControlStagerInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = MANAutoAssetControlStagerInformation;
  v5 = [(MANAutoAssetControlStagerInformation *)&v33 init];
  if (v5)
  {
    v5->_persistedStateCount = [v4 decodeIntegerForKey:@"persistedStateCount"];
    v5->_persistedTargetLookupResultsCount = [v4 decodeInt64ForKey:@"persistedTargetLookupResultsCount"];
    v5->_persistedAvailableForStagingByTargetCount = [v4 decodeInt64ForKey:@"persistedAvailableForStagingByTargetCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromOSVersion"];
    startupLastStagingFromOSVersion = v5->_startupLastStagingFromOSVersion;
    v5->_startupLastStagingFromOSVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromBuildVersion"];
    startupLastStagingFromBuildVersion = v5->_startupLastStagingFromBuildVersion;
    v5->_startupLastStagingFromBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetOSVersion"];
    startupAssetTargetOSVersion = v5->_startupAssetTargetOSVersion;
    v5->_startupAssetTargetOSVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetBuildVersion"];
    startupAssetTargetBuildVersion = v5->_startupAssetTargetBuildVersion;
    v5->_startupAssetTargetBuildVersion = v12;

    v5->_startupCandidateAssetCount = [v4 decodeInt64ForKey:@"startupCandidateAssetCount"];
    v5->_startupDeterminedAvailableAssetCount = [v4 decodeInt64ForKey:@"startupDeterminedAvailableAssetCount"];
    v5->_startupActivelyStagingAssetCount = [v4 decodeInt64ForKey:@"startupActivelyStagingAssetCount"];
    v5->_startupAwaitingStagingAssetCount = [v4 decodeInt64ForKey:@"startupAwaitingStagingAssetCount"];
    v5->_startupStagedAssetCount = [v4 decodeInt64ForKey:@"startupStagedAssetCount"];
    v5->_startupStagedAssetTotalContentBytes = [v4 decodeInt64ForKey:@"startupStagedAssetTotalContentBytes"];
    v5->_startupPreviousOTASituation = [v4 decodeIntegerForKey:@"startupPreviousOTASituation"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromOSVersion"];
    stagingFromOSVersion = v5->_stagingFromOSVersion;
    v5->_stagingFromOSVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromBuildVersion"];
    stagingFromBuildVersion = v5->_stagingFromBuildVersion;
    v5->_stagingFromBuildVersion = v16;

    v5->_loadPersistedPostponed = [v4 decodeBoolForKey:@"loadPersistedPostponed"];
    v5->_alwaysPromoteStagedAssets = [v4 decodeBoolForKey:@"alwaysPromoteStagedAssets"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetOSVersion"];
    assetTargetOSVersion = v5->_assetTargetOSVersion;
    v5->_assetTargetOSVersion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetBuildVersion"];
    assetTargetBuildVersion = v5->_assetTargetBuildVersion;
    v5->_assetTargetBuildVersion = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetTrainName"];
    assetTargetTrainName = v5->_assetTargetTrainName;
    v5->_assetTargetTrainName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetRestoreVersion"];
    assetTargetRestoreVersion = v5->_assetTargetRestoreVersion;
    v5->_assetTargetRestoreVersion = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionalAssetSizeAllowed"];
    optionalAssetSizeAllowed = v5->_optionalAssetSizeAllowed;
    v5->_optionalAssetSizeAllowed = v26;

    v5->_activeTargetOTASituation = [v4 decodeIntegerForKey:@"activeTargetOTASituation"];
    v5->_activeTargetCandidatesForStagingRequiredCount = [v4 decodeInt64ForKey:@"activeTargetCandidatesForStagingRequiredCount"];
    v5->_activeTargetCandidatesForStagingOptionalCount = [v4 decodeInt64ForKey:@"activeTargetCandidatesForStagingOptionalCount"];
    v5->_activeTargetCandidateSetConfigurationsRequiredCount = [v4 decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsRequiredCount"];
    v5->_activeTargetCandidateSetConfigurationsOptionalCount = [v4 decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsOptionalCount"];
    v5->_activeTargetAvailableForStagingRequiredCount = [v4 decodeInt64ForKey:@"activeTargetAvailableForStagingRequiredCount"];
    v5->_activeTargetAvailableForStagingOptionalCount = [v4 decodeInt64ForKey:@"activeTargetAvailableForStagingOptionalCount"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherTargetName"];
    otherTargetName = v5->_otherTargetName;
    v5->_otherTargetName = v28;

    v5->_otherTargetOTASituation = [v4 decodeIntegerForKey:@"otherTargetOTASituation"];
    v5->_otherTargetCandidatesForStagingRequiredCount = [v4 decodeInt64ForKey:@"otherTargetCandidatesForStagingRequiredCount"];
    v5->_otherTargetCandidatesForStagingOptionalCount = [v4 decodeInt64ForKey:@"otherTargetCandidatesForStagingOptionalCount"];
    v5->_otherTargetCandidateSetConfigurationsRequiredCount = [v4 decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsRequiredCount"];
    v5->_otherTargetCandidateSetConfigurationsOptionalCount = [v4 decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsOptionalCount"];
    v5->_otherTargetAvailableForStagingRequiredCount = [v4 decodeInt64ForKey:@"otherTargetAvailableForStagingRequiredCount"];
    v5->_otherTargetAvailableForStagingOptionalCount = [v4 decodeInt64ForKey:@"otherTargetAvailableForStagingOptionalCount"];
    v5->_stagingClientDetermineRequestsCount = [v4 decodeInt64ForKey:@"stagingClientDetermineRequestsCount"];
    v5->_stagingClientDownloadRequestActive = [v4 decodeBoolForKey:@"stagingClientDownloadRequestActive"];
    v5->_stagingClientRequestActive = [v4 decodeBoolForKey:@"stagingClientRequestActive"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingClientName"];
    stagingClientName = v5->_stagingClientName;
    v5->_stagingClientName = v30;

    v5->_setConfigurationsCount = [v4 decodeInt64ForKey:@"setConfigurationsCount"];
    v5->_setTargetsCount = [v4 decodeInt64ForKey:@"setTargetsCount"];
    v5->_scheduledJobsCount = [v4 decodeInt64ForKey:@"scheduledJobsCount"];
    v5->_candidatesForStagingCount = [v4 decodeInt64ForKey:@"candidatesForStagingCount"];
    v5->_candidateSetConfigurationsCount = [v4 decodeInt64ForKey:@"candidateSetConfigurationsCount"];
    v5->_setLookupResultsCount = [v4 decodeInt64ForKey:@"setLookupResultsCount"];
    v5->_baseForStagingDescriptorsCount = [v4 decodeInt64ForKey:@"baseForStagingDescriptorsCount"];
    v5->_determiningBySelectorCount = [v4 decodeInt64ForKey:@"determiningBySelectorCount"];
    v5->_availableForStagingCount = [v4 decodeInt64ForKey:@"availableForStagingCount"];
    v5->_awaitingStagingAttemptCount = [v4 decodeInt64ForKey:@"awaitingStagingAttemptCount"];
    v5->_successfullyStagedCount = [v4 decodeInt64ForKey:@"successfullyStagedCount"];
    v5->_overallStagedTotalExpectedBytes = [v4 decodeInt64ForKey:@"overallStagedTotalExpectedBytes"];
    v5->_overallStagedDownloadedSoFarBytes = [v4 decodeInt64ForKey:@"overallStagedDownloadedSoFarBytes"];
    v5->_currentStagedLastWrittenBytes = [v4 decodeInt64ForKey:@"currentStagedLastWrittenBytes"];
    v5->_currentStagedRemainingBytes = [v4 decodeInt64ForKey:@"currentStagedRemainingBytes"];
    v5->_eliminationSelectorsCount = [v4 decodeInt64ForKey:@"eliminationSelectorsCount"];
    v5->_eliminationSetConfigurationCurrentJob = [v4 decodeBoolForKey:@"eliminationSetConfigurationCurrentJob"];
    v5->_eliminationSelectorsAcknowledgedCount = [v4 decodeInt64ForKey:@"eliminationSelectorsAcknowledgedCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation persistedStateCount](self forKey:{"persistedStateCount"), @"persistedStateCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation persistedTargetLookupResultsCount](self forKey:{"persistedTargetLookupResultsCount"), @"persistedTargetLookupResultsCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation persistedAvailableForStagingByTargetCount](self forKey:{"persistedAvailableForStagingByTargetCount"), @"persistedAvailableForStagingByTargetCount"}];
  v4 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  [v17 encodeObject:v4 forKey:@"startupLastStagingFromOSVersion"];

  v5 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  [v17 encodeObject:v5 forKey:@"startupLastStagingFromBuildVersion"];

  v6 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  [v17 encodeObject:v6 forKey:@"startupAssetTargetOSVersion"];

  v7 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  [v17 encodeObject:v7 forKey:@"startupAssetTargetBuildVersion"];

  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation startupCandidateAssetCount](self forKey:{"startupCandidateAssetCount"), @"startupCandidateAssetCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation startupDeterminedAvailableAssetCount](self forKey:{"startupDeterminedAvailableAssetCount"), @"startupDeterminedAvailableAssetCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation startupActivelyStagingAssetCount](self forKey:{"startupActivelyStagingAssetCount"), @"startupActivelyStagingAssetCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation startupAwaitingStagingAssetCount](self forKey:{"startupAwaitingStagingAssetCount"), @"startupAwaitingStagingAssetCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation startupStagedAssetCount](self forKey:{"startupStagedAssetCount"), @"startupStagedAssetCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation startupStagedAssetTotalContentBytes](self forKey:{"startupStagedAssetTotalContentBytes"), @"startupStagedAssetTotalContentBytes"}];
  [v17 encodeInteger:-[MANAutoAssetControlStagerInformation startupPreviousOTASituation](self forKey:{"startupPreviousOTASituation"), @"startupPreviousOTASituation"}];
  v8 = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  [v17 encodeObject:v8 forKey:@"stagingFromOSVersion"];

  v9 = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  [v17 encodeObject:v9 forKey:@"stagingFromBuildVersion"];

  [v17 encodeBool:-[MANAutoAssetControlStagerInformation loadPersistedPostponed](self forKey:{"loadPersistedPostponed"), @"loadPersistedPostponed"}];
  [v17 encodeBool:-[MANAutoAssetControlStagerInformation alwaysPromoteStagedAssets](self forKey:{"alwaysPromoteStagedAssets"), @"alwaysPromoteStagedAssets"}];
  v10 = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  [v17 encodeObject:v10 forKey:@"assetTargetOSVersion"];

  v11 = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  [v17 encodeObject:v11 forKey:@"assetTargetBuildVersion"];

  v12 = [(MANAutoAssetControlStagerInformation *)self assetTargetTrainName];
  [v17 encodeObject:v12 forKey:@"assetTargetTrainName"];

  v13 = [(MANAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  [v17 encodeObject:v13 forKey:@"assetTargetRestoreVersion"];

  v14 = [(MANAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  [v17 encodeObject:v14 forKey:@"optionalAssetSizeAllowed"];

  [v17 encodeInteger:-[MANAutoAssetControlStagerInformation activeTargetOTASituation](self forKey:{"activeTargetOTASituation"), @"activeTargetOTASituation"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidatesForStagingRequiredCount](self forKey:{"activeTargetCandidatesForStagingRequiredCount"), @"activeTargetCandidatesForStagingRequiredCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidatesForStagingOptionalCount](self forKey:{"activeTargetCandidatesForStagingOptionalCount"), @"activeTargetCandidatesForStagingOptionalCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsRequiredCount](self forKey:{"activeTargetCandidateSetConfigurationsRequiredCount"), @"activeTargetCandidateSetConfigurationsRequiredCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsOptionalCount](self forKey:{"activeTargetCandidateSetConfigurationsOptionalCount"), @"activeTargetCandidateSetConfigurationsOptionalCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetAvailableForStagingRequiredCount](self forKey:{"activeTargetAvailableForStagingRequiredCount"), @"activeTargetAvailableForStagingRequiredCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetAvailableForStagingOptionalCount](self forKey:{"activeTargetAvailableForStagingOptionalCount"), @"activeTargetAvailableForStagingOptionalCount"}];
  v15 = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  [v17 encodeObject:v15 forKey:@"otherTargetName"];

  [v17 encodeInteger:-[MANAutoAssetControlStagerInformation otherTargetOTASituation](self forKey:{"otherTargetOTASituation"), @"otherTargetOTASituation"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidatesForStagingRequiredCount](self forKey:{"otherTargetCandidatesForStagingRequiredCount"), @"otherTargetCandidatesForStagingRequiredCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidatesForStagingOptionalCount](self forKey:{"otherTargetCandidatesForStagingOptionalCount"), @"otherTargetCandidatesForStagingOptionalCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsRequiredCount](self forKey:{"otherTargetCandidateSetConfigurationsRequiredCount"), @"otherTargetCandidateSetConfigurationsRequiredCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsOptionalCount](self forKey:{"otherTargetCandidateSetConfigurationsOptionalCount"), @"otherTargetCandidateSetConfigurationsOptionalCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetAvailableForStagingRequiredCount](self forKey:{"otherTargetAvailableForStagingRequiredCount"), @"otherTargetAvailableForStagingRequiredCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetAvailableForStagingOptionalCount](self forKey:{"otherTargetAvailableForStagingOptionalCount"), @"otherTargetAvailableForStagingOptionalCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation stagingClientDetermineRequestsCount](self forKey:{"stagingClientDetermineRequestsCount"), @"stagingClientDetermineRequestsCount"}];
  [v17 encodeBool:-[MANAutoAssetControlStagerInformation stagingClientDownloadRequestActive](self forKey:{"stagingClientDownloadRequestActive"), @"stagingClientDownloadRequestActive"}];
  [v17 encodeBool:-[MANAutoAssetControlStagerInformation stagingClientRequestActive](self forKey:{"stagingClientRequestActive"), @"stagingClientRequestActive"}];
  v16 = [(MANAutoAssetControlStagerInformation *)self stagingClientName];
  [v17 encodeObject:v16 forKey:@"stagingClientName"];

  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation setConfigurationsCount](self forKey:{"setConfigurationsCount"), @"setConfigurationsCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation setTargetsCount](self forKey:{"setTargetsCount"), @"setTargetsCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation scheduledJobsCount](self forKey:{"scheduledJobsCount"), @"scheduledJobsCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation candidatesForStagingCount](self forKey:{"candidatesForStagingCount"), @"candidatesForStagingCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation candidateSetConfigurationsCount](self forKey:{"candidateSetConfigurationsCount"), @"candidateSetConfigurationsCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation setLookupResultsCount](self forKey:{"setLookupResultsCount"), @"setLookupResultsCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation baseForStagingDescriptorsCount](self forKey:{"baseForStagingDescriptorsCount"), @"baseForStagingDescriptorsCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation determiningBySelectorCount](self forKey:{"determiningBySelectorCount"), @"determiningBySelectorCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation availableForStagingCount](self forKey:{"availableForStagingCount"), @"availableForStagingCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation awaitingStagingAttemptCount](self forKey:{"awaitingStagingAttemptCount"), @"awaitingStagingAttemptCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation successfullyStagedCount](self forKey:{"successfullyStagedCount"), @"successfullyStagedCount"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation overallStagedTotalExpectedBytes](self forKey:{"overallStagedTotalExpectedBytes"), @"overallStagedTotalExpectedBytes"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation overallStagedDownloadedSoFarBytes](self forKey:{"overallStagedDownloadedSoFarBytes"), @"overallStagedDownloadedSoFarBytes"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation currentStagedLastWrittenBytes](self forKey:{"currentStagedLastWrittenBytes"), @"currentStagedLastWrittenBytes"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation currentStagedRemainingBytes](self forKey:{"currentStagedRemainingBytes"), @"currentStagedRemainingBytes"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation eliminationSelectorsCount](self forKey:{"eliminationSelectorsCount"), @"eliminationSelectorsCount"}];
  [v17 encodeBool:-[MANAutoAssetControlStagerInformation eliminationSetConfigurationCurrentJob](self forKey:{"eliminationSetConfigurationCurrentJob"), @"eliminationSetConfigurationCurrentJob"}];
  [v17 encodeInt64:-[MANAutoAssetControlStagerInformation eliminationSelectorsAcknowledgedCount](self forKey:{"eliminationSelectorsAcknowledgedCount"), @"eliminationSelectorsAcknowledgedCount"}];
}

- (id)description
{
  v64 = [(MANAutoAssetControlStagerInformation *)self persistedStateCount];
  v63 = [(MANAutoAssetControlStagerInformation *)self persistedTargetLookupResultsCount];
  v62 = [(MANAutoAssetControlStagerInformation *)self persistedAvailableForStagingByTargetCount];
  v3 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (v3)
  {
    v4 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    v4 = @"N";
  }

  v70 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (v70)
  {
    v69 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    v69 = @"N";
  }

  v5 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (v5)
  {
    v6 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v71 = v4;
  v72 = v3;
  if (v7)
  {
    v8 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    v8 = @"N";
  }

  v60 = [(MANAutoAssetControlStagerInformation *)self startupCandidateAssetCount];
  v59 = [(MANAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  v58 = [(MANAutoAssetControlStagerInformation *)self startupActivelyStagingAssetCount];
  v57 = [(MANAutoAssetControlStagerInformation *)self startupAwaitingStagingAssetCount];
  v56 = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  v55 = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v9 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  v89 = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (v89)
  {
    v80 = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    v80 = @"N";
  }

  [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  v88 = v10 = @"N";
  if (v88)
  {
    v79 = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    v79 = @"N";
  }

  if ([(MANAutoAssetControlStagerInformation *)self loadPersistedPostponed])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v54 = v11;
  if ([(MANAutoAssetControlStagerInformation *)self alwaysPromoteStagedAssets])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v53 = v12;
  v87 = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (v87)
  {
    v10 = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  v86 = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  if (v86)
  {
    v77 = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    v77 = @"N";
  }

  v85 = [(MANAutoAssetControlStagerInformation *)self assetTargetTrainName];
  if (v85)
  {
    v76 = [(MANAutoAssetControlStagerInformation *)self assetTargetTrainName];
  }

  else
  {
    v76 = @"N";
  }

  v84 = [(MANAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  if (v84)
  {
    v75 = [(MANAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  }

  else
  {
    v75 = @"N";
  }

  v83 = [(MANAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  v78 = v10;
  if (v83)
  {
    v74 = [(MANAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  }

  else
  {
    v74 = @"N";
  }

  v82 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  v52 = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingRequiredCount];
  v51 = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingOptionalCount];
  v50 = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsRequiredCount];
  v49 = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsOptionalCount];
  v48 = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  v47 = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  v81 = v13 = @"N";
  if (v81)
  {
    v73 = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    v73 = @"N";
  }

  v14 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  v45 = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingRequiredCount];
  v43 = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingOptionalCount];
  v42 = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsRequiredCount];
  v41 = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsOptionalCount];
  v39 = [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingRequiredCount];
  v38 = [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingOptionalCount];
  v37 = [(MANAutoAssetControlStagerInformation *)self stagingClientDetermineRequestsCount];
  if ([(MANAutoAssetControlStagerInformation *)self stagingClientDownloadRequestActive])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v36 = v15;
  if ([(MANAutoAssetControlStagerInformation *)self stagingClientRequestActive])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v35 = v16;
  v44 = [(MANAutoAssetControlStagerInformation *)self stagingClientName];
  v68 = v5;
  v67 = v6;
  v66 = v7;
  v65 = v8;
  v61 = v9;
  v46 = v14;
  if (v44)
  {
    v40 = [(MANAutoAssetControlStagerInformation *)self stagingClientName];
  }

  else
  {
    v40 = @"N";
  }

  v34 = [(MANAutoAssetControlStagerInformation *)self setConfigurationsCount];
  v33 = [(MANAutoAssetControlStagerInformation *)self setTargetsCount];
  v32 = [(MANAutoAssetControlStagerInformation *)self scheduledJobsCount];
  v31 = [(MANAutoAssetControlStagerInformation *)self candidatesForStagingCount];
  v30 = [(MANAutoAssetControlStagerInformation *)self candidateSetConfigurationsCount];
  v29 = [(MANAutoAssetControlStagerInformation *)self setLookupResultsCount];
  v28 = [(MANAutoAssetControlStagerInformation *)self baseForStagingDescriptorsCount];
  v27 = [(MANAutoAssetControlStagerInformation *)self determiningBySelectorCount];
  v17 = [(MANAutoAssetControlStagerInformation *)self availableForStagingCount];
  v18 = [(MANAutoAssetControlStagerInformation *)self awaitingStagingAttemptCount];
  v19 = [(MANAutoAssetControlStagerInformation *)self successfullyStagedCount];
  v20 = [(MANAutoAssetControlStagerInformation *)self overallStagedTotalExpectedBytes];
  v21 = [(MANAutoAssetControlStagerInformation *)self overallStagedDownloadedSoFarBytes];
  v22 = [(MANAutoAssetControlStagerInformation *)self currentStagedLastWrittenBytes];
  v23 = [(MANAutoAssetControlStagerInformation *)self currentStagedRemainingBytes];
  v24 = [(MANAutoAssetControlStagerInformation *)self eliminationSelectorsCount];
  if ([(MANAutoAssetControlStagerInformation *)self eliminationSetConfigurationCurrentJob])
  {
    v13 = @"Y";
  }

  +[NSString stringWithFormat:]( NSString,  "stringWithFormat:",  @">>>\nPERSISTED COUNTS:\n                            General: %llu\n                TargetLookupResults: %llu\n        AvailableForStagingByTarget: %llu\n\nSTARTUP:\n           LastStagingFromOSVersion: %@\n        LastStagingFromBuildVersion: %@\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n                CandidateAssetCount: %llu\n      DeterminedAvailableAssetCount: %llu\n          ActivelyStagingAssetCount: %llu\n          AwaitingStagingAssetCount: %llu\n                   StagedAssetCount: %llu\n       StagedAssetTotalContentBytes: %llu\n               PreviousOTASituation: %@\n               StagingFromOSVersion: %@\n            StagingFromBuildVersion: %@\n\nCONTROL:\n             LoadPersistedPostponed: %@\n          AlwaysPromoteStagedAssets: %@\n\nMOST-RECENT TARGET:\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n               AssetTargetTrainName: %@\n          AssetTargetRestoreVersion: %@\n           OptionalAssetSizeAllowed: %@\n           ActiveTargetOTASituation: %@\n      ActiveCandidatesRequiredCount: %llu\n      ActiveCandidatesOptionalCount: %llu\n      ActiveSetConfigsRequiredCount: %llu\n      ActiveSetConfigsOptionalCount: %llu\n       ActiveAvailableRequiredCount: %llu\n       ActiveAvaialbleOptionalCount: %llu\n\nOTHER TARGET:\n                    OtherTargetName: %@\n            OtherTargetOTASituation: %@\n       OtherCandidatesRequiredCount: %llu\n       OtherCandidatesOptionalCount: %llu\n       OtherSetConfigsRequiredCount: %llu\n       OtherSetConfigsOptionalCount: %llu\n        OtherAvailableRequiredCount: %llu\n        OtherAvaialbleOptionalCount: %llu\n\nSTAGING-CLIENT REQUESTS:\n                     DetermineCount: %llu\n                     DownloadActive: %@\n                             Active: %@\n                               Name: %@\n\nDETERMINE:\n             SetConfigurationsCount: %llu\n                    SetTargetsCount: %llu\n                 ScheduledJobsCount: %llu\n\nCANDIDATES:\n          CandidatesForStagingCount: %llu\n             SetConfigurationsCount: %llu\n              SetLookupResultsCount: %llu\n     BaseForStagingDescriptorsCount: %llu\n         DeterminingBySelectorCount: %llu\n\nAVAILABLE-OR-STAGED:\n           AvailableForStagingCount: %llu\n        AwaitingStagingAttemptCount: %llu\n            SuccessfullyStagedCount: %llu\n\nPROGRESS:\n    OverallStagedTotalExpectedBytes: %llu\n  OverallStagedDownloadedSoFarBytes: %llu\n      CurrentStagedLastWrittenBytes: %llu\n        CurrentStagedRemainingBytes: %llu\n\nELIMINATION:\n                     SelectorsCount: %llu\n         SetConfigurationCurrentJob: %@\n         SelectorsAcknowledgedCount: %llu\n<<<]",  v64,  v63,  v62,  v71,  v69,  v67,  v65,  v60,  v59,  v58,  v57,  v56,  v55,  v61,  v80,  v79,  v54,  v53,  v78,  v77,  v76,  v75,  v74,  v82,  v52,  v51,  v50,  v49,  v48,  v47,  v73,  v46,  v45,  v43,  v42,  v41,  v39,  v38,  v37,  v36,  v35,  v40,  v34,  v33,  v32,  v31,
    v30,
    v29,
    v28,
    v27,
    v17,
    v18,
    v19,
    v20,
    v21,
    v22,
    v23,
    v24,
    v13,
  v25 = [(MANAutoAssetControlStagerInformation *)self eliminationSelectorsAcknowledgedCount]);
  if (v44)
  {
  }

  if (v81)
  {
  }

  if (v83)
  {
  }

  if (v84)
  {
  }

  if (v85)
  {
  }

  if (v86)
  {
  }

  if (v87)
  {
  }

  if (v88)
  {
  }

  if (v89)
  {
  }

  if (v66)
  {
  }

  if (v68)
  {
  }

  if (v70)
  {
  }

  if (v72)
  {
  }

  return v25;
}

- (id)summary
{
  v3 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (v3)
  {
    v4 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    v4 = @"N";
  }

  v5 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (v5)
  {
    v6 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (v7)
  {
    v8 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    v8 = @"N";
  }

  v24 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v28 = v3;
  v26 = v5;
  if (v24)
  {
    v33 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    v33 = @"N";
  }

  v22 = [(MANAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  v21 = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  v20 = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v35 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  v9 = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (v9)
  {
    v32 = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    v32 = @"N";
  }

  v10 = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  if (v10)
  {
    v31 = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    v31 = @"N";
  }

  v34 = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (v34)
  {
    v30 = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  else
  {
    v30 = @"N";
  }

  v19 = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  v27 = v4;
  v25 = v8;
  v23 = v10;
  if (v19)
  {
    v29 = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    v29 = @"N";
  }

  v11 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  v12 = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  v13 = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  v14 = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  if (v14)
  {
    v15 = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    v15 = @"N";
  }

  v16 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  v17 = [NSString stringWithFormat:@"STARTUP{lastStagingFrom:%@(%@)|target:%@(%@)|determined:%llu|staged:%llu(%llu bytes)|situation:%@|from:%@(%@)}|MOST-RECENT{target:%@(%@)|situation:%@|(available)R:%llu, O:%llu}|OTHER{target:%@|situation:%@|(available)R:%llu, O:%llu}|staged:%llu", v27, v6, v25, v33, v22, v21, v20, v35, v32, v31, v30, v29, v11, v12, v13, v15, v16, [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingRequiredCount], [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingOptionalCount], [(MANAutoAssetControlStagerInformation *)self successfullyStagedCount]];

  if (v14)
  {
  }

  if (v19)
  {
  }

  if (v34)
  {
  }

  if (v23)
  {
  }

  if (v9)
  {
  }

  if (v24)
  {
  }

  if (v7)
  {
  }

  if (v26)
  {
  }

  if (v28)
  {
  }

  return v17;
}

+ (id)previousOTASituationName:(int64_t)a3
{
  v3 = @"UNKNOWN";
  if (a3 > 299)
  {
    v4 = @"STAGED_PARTIAL";
    v9 = @"STAGED_ALL_DESIRED";
    if (a3 != 501)
    {
      v9 = @"UNKNOWN";
    }

    if (a3 != 500)
    {
      v4 = v9;
    }

    v10 = @"DOWNLOADED_EMPTIED";
    v11 = @"DOWNLOADED_BLOCKED";
    if (a3 != 403)
    {
      v11 = @"UNKNOWN";
    }

    if (a3 != 402)
    {
      v10 = v11;
    }

    if (a3 <= 499)
    {
      v4 = v10;
    }

    if (a3 == 401)
    {
      v3 = @"DOWNLOADED_NOTHING";
    }

    if (a3 == 301)
    {
      v3 = @"CLIENT_SET_TARGET";
    }

    if (a3 == 300)
    {
      v3 = @"CLIENT_ALTERED";
    }

    v8 = a3 <= 401;
  }

  else
  {
    v4 = @"DETERMINED_AVAILABLE";
    v5 = @"DETERMINED_PURGED";
    if (a3 != 204)
    {
      v5 = @"UNKNOWN";
    }

    if (a3 != 203)
    {
      v4 = v5;
    }

    v6 = @"DETERMINED_NO_NEWER";
    v7 = @"DETERMINED_BLOCKED";
    if (a3 != 202)
    {
      v7 = @"UNKNOWN";
    }

    if (a3 != 201)
    {
      v6 = v7;
    }

    if (a3 <= 202)
    {
      v4 = v6;
    }

    if (a3 == 200)
    {
      v3 = @"DETERMINED_PARTIAL";
    }

    if (a3 == 101)
    {
      v3 = @"OTA_FROM_LEGACY";
    }

    if (a3 == 100)
    {
      v3 = @"OTA_NEVER";
    }

    v8 = a3 <= 200;
  }

  if (v8)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end