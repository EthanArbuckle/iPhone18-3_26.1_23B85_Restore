@interface MANAutoAssetControlStagerInformation
+ (id)previousOTASituationName:(int64_t)name;
- (MANAutoAssetControlStagerInformation)init;
- (MANAutoAssetControlStagerInformation)initWithCoder:(id)coder;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
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

- (MANAutoAssetControlStagerInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = MANAutoAssetControlStagerInformation;
  v5 = [(MANAutoAssetControlStagerInformation *)&v33 init];
  if (v5)
  {
    v5->_persistedStateCount = [coderCopy decodeIntegerForKey:@"persistedStateCount"];
    v5->_persistedTargetLookupResultsCount = [coderCopy decodeInt64ForKey:@"persistedTargetLookupResultsCount"];
    v5->_persistedAvailableForStagingByTargetCount = [coderCopy decodeInt64ForKey:@"persistedAvailableForStagingByTargetCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromOSVersion"];
    startupLastStagingFromOSVersion = v5->_startupLastStagingFromOSVersion;
    v5->_startupLastStagingFromOSVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromBuildVersion"];
    startupLastStagingFromBuildVersion = v5->_startupLastStagingFromBuildVersion;
    v5->_startupLastStagingFromBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetOSVersion"];
    startupAssetTargetOSVersion = v5->_startupAssetTargetOSVersion;
    v5->_startupAssetTargetOSVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetBuildVersion"];
    startupAssetTargetBuildVersion = v5->_startupAssetTargetBuildVersion;
    v5->_startupAssetTargetBuildVersion = v12;

    v5->_startupCandidateAssetCount = [coderCopy decodeInt64ForKey:@"startupCandidateAssetCount"];
    v5->_startupDeterminedAvailableAssetCount = [coderCopy decodeInt64ForKey:@"startupDeterminedAvailableAssetCount"];
    v5->_startupActivelyStagingAssetCount = [coderCopy decodeInt64ForKey:@"startupActivelyStagingAssetCount"];
    v5->_startupAwaitingStagingAssetCount = [coderCopy decodeInt64ForKey:@"startupAwaitingStagingAssetCount"];
    v5->_startupStagedAssetCount = [coderCopy decodeInt64ForKey:@"startupStagedAssetCount"];
    v5->_startupStagedAssetTotalContentBytes = [coderCopy decodeInt64ForKey:@"startupStagedAssetTotalContentBytes"];
    v5->_startupPreviousOTASituation = [coderCopy decodeIntegerForKey:@"startupPreviousOTASituation"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromOSVersion"];
    stagingFromOSVersion = v5->_stagingFromOSVersion;
    v5->_stagingFromOSVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromBuildVersion"];
    stagingFromBuildVersion = v5->_stagingFromBuildVersion;
    v5->_stagingFromBuildVersion = v16;

    v5->_loadPersistedPostponed = [coderCopy decodeBoolForKey:@"loadPersistedPostponed"];
    v5->_alwaysPromoteStagedAssets = [coderCopy decodeBoolForKey:@"alwaysPromoteStagedAssets"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetOSVersion"];
    assetTargetOSVersion = v5->_assetTargetOSVersion;
    v5->_assetTargetOSVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetBuildVersion"];
    assetTargetBuildVersion = v5->_assetTargetBuildVersion;
    v5->_assetTargetBuildVersion = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetTrainName"];
    assetTargetTrainName = v5->_assetTargetTrainName;
    v5->_assetTargetTrainName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetRestoreVersion"];
    assetTargetRestoreVersion = v5->_assetTargetRestoreVersion;
    v5->_assetTargetRestoreVersion = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optionalAssetSizeAllowed"];
    optionalAssetSizeAllowed = v5->_optionalAssetSizeAllowed;
    v5->_optionalAssetSizeAllowed = v26;

    v5->_activeTargetOTASituation = [coderCopy decodeIntegerForKey:@"activeTargetOTASituation"];
    v5->_activeTargetCandidatesForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidatesForStagingRequiredCount"];
    v5->_activeTargetCandidatesForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidatesForStagingOptionalCount"];
    v5->_activeTargetCandidateSetConfigurationsRequiredCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsRequiredCount"];
    v5->_activeTargetCandidateSetConfigurationsOptionalCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsOptionalCount"];
    v5->_activeTargetAvailableForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"activeTargetAvailableForStagingRequiredCount"];
    v5->_activeTargetAvailableForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"activeTargetAvailableForStagingOptionalCount"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherTargetName"];
    otherTargetName = v5->_otherTargetName;
    v5->_otherTargetName = v28;

    v5->_otherTargetOTASituation = [coderCopy decodeIntegerForKey:@"otherTargetOTASituation"];
    v5->_otherTargetCandidatesForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidatesForStagingRequiredCount"];
    v5->_otherTargetCandidatesForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidatesForStagingOptionalCount"];
    v5->_otherTargetCandidateSetConfigurationsRequiredCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsRequiredCount"];
    v5->_otherTargetCandidateSetConfigurationsOptionalCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsOptionalCount"];
    v5->_otherTargetAvailableForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"otherTargetAvailableForStagingRequiredCount"];
    v5->_otherTargetAvailableForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"otherTargetAvailableForStagingOptionalCount"];
    v5->_stagingClientDetermineRequestsCount = [coderCopy decodeInt64ForKey:@"stagingClientDetermineRequestsCount"];
    v5->_stagingClientDownloadRequestActive = [coderCopy decodeBoolForKey:@"stagingClientDownloadRequestActive"];
    v5->_stagingClientRequestActive = [coderCopy decodeBoolForKey:@"stagingClientRequestActive"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingClientName"];
    stagingClientName = v5->_stagingClientName;
    v5->_stagingClientName = v30;

    v5->_setConfigurationsCount = [coderCopy decodeInt64ForKey:@"setConfigurationsCount"];
    v5->_setTargetsCount = [coderCopy decodeInt64ForKey:@"setTargetsCount"];
    v5->_scheduledJobsCount = [coderCopy decodeInt64ForKey:@"scheduledJobsCount"];
    v5->_candidatesForStagingCount = [coderCopy decodeInt64ForKey:@"candidatesForStagingCount"];
    v5->_candidateSetConfigurationsCount = [coderCopy decodeInt64ForKey:@"candidateSetConfigurationsCount"];
    v5->_setLookupResultsCount = [coderCopy decodeInt64ForKey:@"setLookupResultsCount"];
    v5->_baseForStagingDescriptorsCount = [coderCopy decodeInt64ForKey:@"baseForStagingDescriptorsCount"];
    v5->_determiningBySelectorCount = [coderCopy decodeInt64ForKey:@"determiningBySelectorCount"];
    v5->_availableForStagingCount = [coderCopy decodeInt64ForKey:@"availableForStagingCount"];
    v5->_awaitingStagingAttemptCount = [coderCopy decodeInt64ForKey:@"awaitingStagingAttemptCount"];
    v5->_successfullyStagedCount = [coderCopy decodeInt64ForKey:@"successfullyStagedCount"];
    v5->_overallStagedTotalExpectedBytes = [coderCopy decodeInt64ForKey:@"overallStagedTotalExpectedBytes"];
    v5->_overallStagedDownloadedSoFarBytes = [coderCopy decodeInt64ForKey:@"overallStagedDownloadedSoFarBytes"];
    v5->_currentStagedLastWrittenBytes = [coderCopy decodeInt64ForKey:@"currentStagedLastWrittenBytes"];
    v5->_currentStagedRemainingBytes = [coderCopy decodeInt64ForKey:@"currentStagedRemainingBytes"];
    v5->_eliminationSelectorsCount = [coderCopy decodeInt64ForKey:@"eliminationSelectorsCount"];
    v5->_eliminationSetConfigurationCurrentJob = [coderCopy decodeBoolForKey:@"eliminationSetConfigurationCurrentJob"];
    v5->_eliminationSelectorsAcknowledgedCount = [coderCopy decodeInt64ForKey:@"eliminationSelectorsAcknowledgedCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation persistedStateCount](self forKey:{"persistedStateCount"), @"persistedStateCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation persistedTargetLookupResultsCount](self forKey:{"persistedTargetLookupResultsCount"), @"persistedTargetLookupResultsCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation persistedAvailableForStagingByTargetCount](self forKey:{"persistedAvailableForStagingByTargetCount"), @"persistedAvailableForStagingByTargetCount"}];
  startupLastStagingFromOSVersion = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  [coderCopy encodeObject:startupLastStagingFromOSVersion forKey:@"startupLastStagingFromOSVersion"];

  startupLastStagingFromBuildVersion = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  [coderCopy encodeObject:startupLastStagingFromBuildVersion forKey:@"startupLastStagingFromBuildVersion"];

  startupAssetTargetOSVersion = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  [coderCopy encodeObject:startupAssetTargetOSVersion forKey:@"startupAssetTargetOSVersion"];

  startupAssetTargetBuildVersion = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  [coderCopy encodeObject:startupAssetTargetBuildVersion forKey:@"startupAssetTargetBuildVersion"];

  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation startupCandidateAssetCount](self forKey:{"startupCandidateAssetCount"), @"startupCandidateAssetCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation startupDeterminedAvailableAssetCount](self forKey:{"startupDeterminedAvailableAssetCount"), @"startupDeterminedAvailableAssetCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation startupActivelyStagingAssetCount](self forKey:{"startupActivelyStagingAssetCount"), @"startupActivelyStagingAssetCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation startupAwaitingStagingAssetCount](self forKey:{"startupAwaitingStagingAssetCount"), @"startupAwaitingStagingAssetCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation startupStagedAssetCount](self forKey:{"startupStagedAssetCount"), @"startupStagedAssetCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation startupStagedAssetTotalContentBytes](self forKey:{"startupStagedAssetTotalContentBytes"), @"startupStagedAssetTotalContentBytes"}];
  [coderCopy encodeInteger:-[MANAutoAssetControlStagerInformation startupPreviousOTASituation](self forKey:{"startupPreviousOTASituation"), @"startupPreviousOTASituation"}];
  stagingFromOSVersion = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  [coderCopy encodeObject:stagingFromOSVersion forKey:@"stagingFromOSVersion"];

  stagingFromBuildVersion = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  [coderCopy encodeObject:stagingFromBuildVersion forKey:@"stagingFromBuildVersion"];

  [coderCopy encodeBool:-[MANAutoAssetControlStagerInformation loadPersistedPostponed](self forKey:{"loadPersistedPostponed"), @"loadPersistedPostponed"}];
  [coderCopy encodeBool:-[MANAutoAssetControlStagerInformation alwaysPromoteStagedAssets](self forKey:{"alwaysPromoteStagedAssets"), @"alwaysPromoteStagedAssets"}];
  assetTargetOSVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  [coderCopy encodeObject:assetTargetOSVersion forKey:@"assetTargetOSVersion"];

  assetTargetBuildVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  [coderCopy encodeObject:assetTargetBuildVersion forKey:@"assetTargetBuildVersion"];

  assetTargetTrainName = [(MANAutoAssetControlStagerInformation *)self assetTargetTrainName];
  [coderCopy encodeObject:assetTargetTrainName forKey:@"assetTargetTrainName"];

  assetTargetRestoreVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  [coderCopy encodeObject:assetTargetRestoreVersion forKey:@"assetTargetRestoreVersion"];

  optionalAssetSizeAllowed = [(MANAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  [coderCopy encodeObject:optionalAssetSizeAllowed forKey:@"optionalAssetSizeAllowed"];

  [coderCopy encodeInteger:-[MANAutoAssetControlStagerInformation activeTargetOTASituation](self forKey:{"activeTargetOTASituation"), @"activeTargetOTASituation"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidatesForStagingRequiredCount](self forKey:{"activeTargetCandidatesForStagingRequiredCount"), @"activeTargetCandidatesForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidatesForStagingOptionalCount](self forKey:{"activeTargetCandidatesForStagingOptionalCount"), @"activeTargetCandidatesForStagingOptionalCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsRequiredCount](self forKey:{"activeTargetCandidateSetConfigurationsRequiredCount"), @"activeTargetCandidateSetConfigurationsRequiredCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsOptionalCount](self forKey:{"activeTargetCandidateSetConfigurationsOptionalCount"), @"activeTargetCandidateSetConfigurationsOptionalCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetAvailableForStagingRequiredCount](self forKey:{"activeTargetAvailableForStagingRequiredCount"), @"activeTargetAvailableForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation activeTargetAvailableForStagingOptionalCount](self forKey:{"activeTargetAvailableForStagingOptionalCount"), @"activeTargetAvailableForStagingOptionalCount"}];
  otherTargetName = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  [coderCopy encodeObject:otherTargetName forKey:@"otherTargetName"];

  [coderCopy encodeInteger:-[MANAutoAssetControlStagerInformation otherTargetOTASituation](self forKey:{"otherTargetOTASituation"), @"otherTargetOTASituation"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidatesForStagingRequiredCount](self forKey:{"otherTargetCandidatesForStagingRequiredCount"), @"otherTargetCandidatesForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidatesForStagingOptionalCount](self forKey:{"otherTargetCandidatesForStagingOptionalCount"), @"otherTargetCandidatesForStagingOptionalCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsRequiredCount](self forKey:{"otherTargetCandidateSetConfigurationsRequiredCount"), @"otherTargetCandidateSetConfigurationsRequiredCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsOptionalCount](self forKey:{"otherTargetCandidateSetConfigurationsOptionalCount"), @"otherTargetCandidateSetConfigurationsOptionalCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetAvailableForStagingRequiredCount](self forKey:{"otherTargetAvailableForStagingRequiredCount"), @"otherTargetAvailableForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation otherTargetAvailableForStagingOptionalCount](self forKey:{"otherTargetAvailableForStagingOptionalCount"), @"otherTargetAvailableForStagingOptionalCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation stagingClientDetermineRequestsCount](self forKey:{"stagingClientDetermineRequestsCount"), @"stagingClientDetermineRequestsCount"}];
  [coderCopy encodeBool:-[MANAutoAssetControlStagerInformation stagingClientDownloadRequestActive](self forKey:{"stagingClientDownloadRequestActive"), @"stagingClientDownloadRequestActive"}];
  [coderCopy encodeBool:-[MANAutoAssetControlStagerInformation stagingClientRequestActive](self forKey:{"stagingClientRequestActive"), @"stagingClientRequestActive"}];
  stagingClientName = [(MANAutoAssetControlStagerInformation *)self stagingClientName];
  [coderCopy encodeObject:stagingClientName forKey:@"stagingClientName"];

  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation setConfigurationsCount](self forKey:{"setConfigurationsCount"), @"setConfigurationsCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation setTargetsCount](self forKey:{"setTargetsCount"), @"setTargetsCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation scheduledJobsCount](self forKey:{"scheduledJobsCount"), @"scheduledJobsCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation candidatesForStagingCount](self forKey:{"candidatesForStagingCount"), @"candidatesForStagingCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation candidateSetConfigurationsCount](self forKey:{"candidateSetConfigurationsCount"), @"candidateSetConfigurationsCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation setLookupResultsCount](self forKey:{"setLookupResultsCount"), @"setLookupResultsCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation baseForStagingDescriptorsCount](self forKey:{"baseForStagingDescriptorsCount"), @"baseForStagingDescriptorsCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation determiningBySelectorCount](self forKey:{"determiningBySelectorCount"), @"determiningBySelectorCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation availableForStagingCount](self forKey:{"availableForStagingCount"), @"availableForStagingCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation awaitingStagingAttemptCount](self forKey:{"awaitingStagingAttemptCount"), @"awaitingStagingAttemptCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation successfullyStagedCount](self forKey:{"successfullyStagedCount"), @"successfullyStagedCount"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation overallStagedTotalExpectedBytes](self forKey:{"overallStagedTotalExpectedBytes"), @"overallStagedTotalExpectedBytes"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation overallStagedDownloadedSoFarBytes](self forKey:{"overallStagedDownloadedSoFarBytes"), @"overallStagedDownloadedSoFarBytes"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation currentStagedLastWrittenBytes](self forKey:{"currentStagedLastWrittenBytes"), @"currentStagedLastWrittenBytes"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation currentStagedRemainingBytes](self forKey:{"currentStagedRemainingBytes"), @"currentStagedRemainingBytes"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation eliminationSelectorsCount](self forKey:{"eliminationSelectorsCount"), @"eliminationSelectorsCount"}];
  [coderCopy encodeBool:-[MANAutoAssetControlStagerInformation eliminationSetConfigurationCurrentJob](self forKey:{"eliminationSetConfigurationCurrentJob"), @"eliminationSetConfigurationCurrentJob"}];
  [coderCopy encodeInt64:-[MANAutoAssetControlStagerInformation eliminationSelectorsAcknowledgedCount](self forKey:{"eliminationSelectorsAcknowledgedCount"), @"eliminationSelectorsAcknowledgedCount"}];
}

- (id)description
{
  persistedStateCount = [(MANAutoAssetControlStagerInformation *)self persistedStateCount];
  persistedTargetLookupResultsCount = [(MANAutoAssetControlStagerInformation *)self persistedTargetLookupResultsCount];
  persistedAvailableForStagingByTargetCount = [(MANAutoAssetControlStagerInformation *)self persistedAvailableForStagingByTargetCount];
  startupLastStagingFromOSVersion = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (startupLastStagingFromOSVersion)
  {
    startupLastStagingFromOSVersion2 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    startupLastStagingFromOSVersion2 = @"N";
  }

  startupLastStagingFromBuildVersion = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (startupLastStagingFromBuildVersion)
  {
    startupLastStagingFromBuildVersion2 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    startupLastStagingFromBuildVersion2 = @"N";
  }

  startupAssetTargetOSVersion = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (startupAssetTargetOSVersion)
  {
    startupAssetTargetOSVersion2 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    startupAssetTargetOSVersion2 = @"N";
  }

  startupAssetTargetBuildVersion = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v71 = startupLastStagingFromOSVersion2;
  v72 = startupLastStagingFromOSVersion;
  if (startupAssetTargetBuildVersion)
  {
    startupAssetTargetBuildVersion2 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    startupAssetTargetBuildVersion2 = @"N";
  }

  startupCandidateAssetCount = [(MANAutoAssetControlStagerInformation *)self startupCandidateAssetCount];
  startupDeterminedAvailableAssetCount = [(MANAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  startupActivelyStagingAssetCount = [(MANAutoAssetControlStagerInformation *)self startupActivelyStagingAssetCount];
  startupAwaitingStagingAssetCount = [(MANAutoAssetControlStagerInformation *)self startupAwaitingStagingAssetCount];
  startupStagedAssetCount = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  startupStagedAssetTotalContentBytes = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v9 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  stagingFromOSVersion = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (stagingFromOSVersion)
  {
    stagingFromOSVersion2 = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    stagingFromOSVersion2 = @"N";
  }

  [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  v88 = assetTargetOSVersion2 = @"N";
  if (v88)
  {
    stagingFromBuildVersion = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    stagingFromBuildVersion = @"N";
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
  assetTargetOSVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (assetTargetOSVersion)
  {
    assetTargetOSVersion2 = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  assetTargetBuildVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  if (assetTargetBuildVersion)
  {
    assetTargetBuildVersion2 = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    assetTargetBuildVersion2 = @"N";
  }

  assetTargetTrainName = [(MANAutoAssetControlStagerInformation *)self assetTargetTrainName];
  if (assetTargetTrainName)
  {
    assetTargetTrainName2 = [(MANAutoAssetControlStagerInformation *)self assetTargetTrainName];
  }

  else
  {
    assetTargetTrainName2 = @"N";
  }

  assetTargetRestoreVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  if (assetTargetRestoreVersion)
  {
    assetTargetRestoreVersion2 = [(MANAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  }

  else
  {
    assetTargetRestoreVersion2 = @"N";
  }

  optionalAssetSizeAllowed = [(MANAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  v78 = assetTargetOSVersion2;
  if (optionalAssetSizeAllowed)
  {
    optionalAssetSizeAllowed2 = [(MANAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  }

  else
  {
    optionalAssetSizeAllowed2 = @"N";
  }

  v82 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  activeTargetCandidatesForStagingRequiredCount = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingRequiredCount];
  activeTargetCandidatesForStagingOptionalCount = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingOptionalCount];
  activeTargetCandidateSetConfigurationsRequiredCount = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsRequiredCount];
  activeTargetCandidateSetConfigurationsOptionalCount = [(MANAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsOptionalCount];
  activeTargetAvailableForStagingRequiredCount = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  activeTargetAvailableForStagingOptionalCount = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  v81 = v13 = @"N";
  if (v81)
  {
    otherTargetName = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    otherTargetName = @"N";
  }

  v14 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  otherTargetCandidatesForStagingRequiredCount = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingRequiredCount];
  otherTargetCandidatesForStagingOptionalCount = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingOptionalCount];
  otherTargetCandidateSetConfigurationsRequiredCount = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsRequiredCount];
  otherTargetCandidateSetConfigurationsOptionalCount = [(MANAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsOptionalCount];
  otherTargetAvailableForStagingRequiredCount = [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingRequiredCount];
  otherTargetAvailableForStagingOptionalCount = [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingOptionalCount];
  stagingClientDetermineRequestsCount = [(MANAutoAssetControlStagerInformation *)self stagingClientDetermineRequestsCount];
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
  stagingClientName = [(MANAutoAssetControlStagerInformation *)self stagingClientName];
  v68 = startupAssetTargetOSVersion;
  v67 = startupAssetTargetOSVersion2;
  v66 = startupAssetTargetBuildVersion;
  v65 = startupAssetTargetBuildVersion2;
  v61 = v9;
  v46 = v14;
  if (stagingClientName)
  {
    stagingClientName2 = [(MANAutoAssetControlStagerInformation *)self stagingClientName];
  }

  else
  {
    stagingClientName2 = @"N";
  }

  setConfigurationsCount = [(MANAutoAssetControlStagerInformation *)self setConfigurationsCount];
  setTargetsCount = [(MANAutoAssetControlStagerInformation *)self setTargetsCount];
  scheduledJobsCount = [(MANAutoAssetControlStagerInformation *)self scheduledJobsCount];
  candidatesForStagingCount = [(MANAutoAssetControlStagerInformation *)self candidatesForStagingCount];
  candidateSetConfigurationsCount = [(MANAutoAssetControlStagerInformation *)self candidateSetConfigurationsCount];
  setLookupResultsCount = [(MANAutoAssetControlStagerInformation *)self setLookupResultsCount];
  baseForStagingDescriptorsCount = [(MANAutoAssetControlStagerInformation *)self baseForStagingDescriptorsCount];
  determiningBySelectorCount = [(MANAutoAssetControlStagerInformation *)self determiningBySelectorCount];
  availableForStagingCount = [(MANAutoAssetControlStagerInformation *)self availableForStagingCount];
  awaitingStagingAttemptCount = [(MANAutoAssetControlStagerInformation *)self awaitingStagingAttemptCount];
  successfullyStagedCount = [(MANAutoAssetControlStagerInformation *)self successfullyStagedCount];
  overallStagedTotalExpectedBytes = [(MANAutoAssetControlStagerInformation *)self overallStagedTotalExpectedBytes];
  overallStagedDownloadedSoFarBytes = [(MANAutoAssetControlStagerInformation *)self overallStagedDownloadedSoFarBytes];
  currentStagedLastWrittenBytes = [(MANAutoAssetControlStagerInformation *)self currentStagedLastWrittenBytes];
  currentStagedRemainingBytes = [(MANAutoAssetControlStagerInformation *)self currentStagedRemainingBytes];
  eliminationSelectorsCount = [(MANAutoAssetControlStagerInformation *)self eliminationSelectorsCount];
  if ([(MANAutoAssetControlStagerInformation *)self eliminationSetConfigurationCurrentJob])
  {
    v13 = @"Y";
  }

  +[NSString stringWithFormat:]( NSString,  "stringWithFormat:",  @">>>\nPERSISTED COUNTS:\n                            General: %llu\n                TargetLookupResults: %llu\n        AvailableForStagingByTarget: %llu\n\nSTARTUP:\n           LastStagingFromOSVersion: %@\n        LastStagingFromBuildVersion: %@\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n                CandidateAssetCount: %llu\n      DeterminedAvailableAssetCount: %llu\n          ActivelyStagingAssetCount: %llu\n          AwaitingStagingAssetCount: %llu\n                   StagedAssetCount: %llu\n       StagedAssetTotalContentBytes: %llu\n               PreviousOTASituation: %@\n               StagingFromOSVersion: %@\n            StagingFromBuildVersion: %@\n\nCONTROL:\n             LoadPersistedPostponed: %@\n          AlwaysPromoteStagedAssets: %@\n\nMOST-RECENT TARGET:\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n               AssetTargetTrainName: %@\n          AssetTargetRestoreVersion: %@\n           OptionalAssetSizeAllowed: %@\n           ActiveTargetOTASituation: %@\n      ActiveCandidatesRequiredCount: %llu\n      ActiveCandidatesOptionalCount: %llu\n      ActiveSetConfigsRequiredCount: %llu\n      ActiveSetConfigsOptionalCount: %llu\n       ActiveAvailableRequiredCount: %llu\n       ActiveAvaialbleOptionalCount: %llu\n\nOTHER TARGET:\n                    OtherTargetName: %@\n            OtherTargetOTASituation: %@\n       OtherCandidatesRequiredCount: %llu\n       OtherCandidatesOptionalCount: %llu\n       OtherSetConfigsRequiredCount: %llu\n       OtherSetConfigsOptionalCount: %llu\n        OtherAvailableRequiredCount: %llu\n        OtherAvaialbleOptionalCount: %llu\n\nSTAGING-CLIENT REQUESTS:\n                     DetermineCount: %llu\n                     DownloadActive: %@\n                             Active: %@\n                               Name: %@\n\nDETERMINE:\n             SetConfigurationsCount: %llu\n                    SetTargetsCount: %llu\n                 ScheduledJobsCount: %llu\n\nCANDIDATES:\n          CandidatesForStagingCount: %llu\n             SetConfigurationsCount: %llu\n              SetLookupResultsCount: %llu\n     BaseForStagingDescriptorsCount: %llu\n         DeterminingBySelectorCount: %llu\n\nAVAILABLE-OR-STAGED:\n           AvailableForStagingCount: %llu\n        AwaitingStagingAttemptCount: %llu\n            SuccessfullyStagedCount: %llu\n\nPROGRESS:\n    OverallStagedTotalExpectedBytes: %llu\n  OverallStagedDownloadedSoFarBytes: %llu\n      CurrentStagedLastWrittenBytes: %llu\n        CurrentStagedRemainingBytes: %llu\n\nELIMINATION:\n                     SelectorsCount: %llu\n         SetConfigurationCurrentJob: %@\n         SelectorsAcknowledgedCount: %llu\n<<<]",  persistedStateCount,  persistedTargetLookupResultsCount,  persistedAvailableForStagingByTargetCount,  v71,  startupLastStagingFromBuildVersion2,  v67,  v65,  startupCandidateAssetCount,  startupDeterminedAvailableAssetCount,  startupActivelyStagingAssetCount,  startupAwaitingStagingAssetCount,  startupStagedAssetCount,  startupStagedAssetTotalContentBytes,  v61,  stagingFromOSVersion2,  stagingFromBuildVersion,  v54,  v53,  v78,  assetTargetBuildVersion2,  assetTargetTrainName2,  assetTargetRestoreVersion2,  optionalAssetSizeAllowed2,  v82,  activeTargetCandidatesForStagingRequiredCount,  activeTargetCandidatesForStagingOptionalCount,  activeTargetCandidateSetConfigurationsRequiredCount,  activeTargetCandidateSetConfigurationsOptionalCount,  activeTargetAvailableForStagingRequiredCount,  activeTargetAvailableForStagingOptionalCount,  otherTargetName,  v46,  otherTargetCandidatesForStagingRequiredCount,  otherTargetCandidatesForStagingOptionalCount,  otherTargetCandidateSetConfigurationsRequiredCount,  otherTargetCandidateSetConfigurationsOptionalCount,  otherTargetAvailableForStagingRequiredCount,  otherTargetAvailableForStagingOptionalCount,  stagingClientDetermineRequestsCount,  v36,  v35,  stagingClientName2,  setConfigurationsCount,  setTargetsCount,  scheduledJobsCount,  candidatesForStagingCount,
    candidateSetConfigurationsCount,
    setLookupResultsCount,
    baseForStagingDescriptorsCount,
    determiningBySelectorCount,
    availableForStagingCount,
    awaitingStagingAttemptCount,
    successfullyStagedCount,
    overallStagedTotalExpectedBytes,
    overallStagedDownloadedSoFarBytes,
    currentStagedLastWrittenBytes,
    currentStagedRemainingBytes,
    eliminationSelectorsCount,
    v13,
  v25 = [(MANAutoAssetControlStagerInformation *)self eliminationSelectorsAcknowledgedCount]);
  if (stagingClientName)
  {
  }

  if (v81)
  {
  }

  if (optionalAssetSizeAllowed)
  {
  }

  if (assetTargetRestoreVersion)
  {
  }

  if (assetTargetTrainName)
  {
  }

  if (assetTargetBuildVersion)
  {
  }

  if (assetTargetOSVersion)
  {
  }

  if (v88)
  {
  }

  if (stagingFromOSVersion)
  {
  }

  if (v66)
  {
  }

  if (v68)
  {
  }

  if (startupLastStagingFromBuildVersion)
  {
  }

  if (v72)
  {
  }

  return v25;
}

- (id)summary
{
  startupLastStagingFromOSVersion = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (startupLastStagingFromOSVersion)
  {
    startupLastStagingFromOSVersion2 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    startupLastStagingFromOSVersion2 = @"N";
  }

  startupLastStagingFromBuildVersion = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (startupLastStagingFromBuildVersion)
  {
    startupLastStagingFromBuildVersion2 = [(MANAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    startupLastStagingFromBuildVersion2 = @"N";
  }

  startupAssetTargetOSVersion = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (startupAssetTargetOSVersion)
  {
    startupAssetTargetOSVersion2 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    startupAssetTargetOSVersion2 = @"N";
  }

  startupAssetTargetBuildVersion = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v28 = startupLastStagingFromOSVersion;
  v26 = startupLastStagingFromBuildVersion;
  if (startupAssetTargetBuildVersion)
  {
    startupAssetTargetBuildVersion2 = [(MANAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    startupAssetTargetBuildVersion2 = @"N";
  }

  startupDeterminedAvailableAssetCount = [(MANAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  startupStagedAssetCount = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  startupStagedAssetTotalContentBytes = [(MANAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v35 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  stagingFromOSVersion = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (stagingFromOSVersion)
  {
    stagingFromOSVersion2 = [(MANAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    stagingFromOSVersion2 = @"N";
  }

  stagingFromBuildVersion = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  if (stagingFromBuildVersion)
  {
    stagingFromBuildVersion2 = [(MANAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    stagingFromBuildVersion2 = @"N";
  }

  assetTargetOSVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (assetTargetOSVersion)
  {
    assetTargetOSVersion2 = [(MANAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  else
  {
    assetTargetOSVersion2 = @"N";
  }

  assetTargetBuildVersion = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  v27 = startupLastStagingFromOSVersion2;
  v25 = startupAssetTargetOSVersion2;
  v23 = stagingFromBuildVersion;
  if (assetTargetBuildVersion)
  {
    assetTargetBuildVersion2 = [(MANAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    assetTargetBuildVersion2 = @"N";
  }

  v11 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  activeTargetAvailableForStagingRequiredCount = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  activeTargetAvailableForStagingOptionalCount = [(MANAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  otherTargetName = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  if (otherTargetName)
  {
    otherTargetName2 = [(MANAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    otherTargetName2 = @"N";
  }

  v16 = [MANAutoAssetControlStagerInformation previousOTASituationName:[(MANAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  v17 = [NSString stringWithFormat:@"STARTUP{lastStagingFrom:%@(%@)|target:%@(%@)|determined:%llu|staged:%llu(%llu bytes)|situation:%@|from:%@(%@)}|MOST-RECENT{target:%@(%@)|situation:%@|(available)R:%llu, O:%llu}|OTHER{target:%@|situation:%@|(available)R:%llu, O:%llu}|staged:%llu", v27, startupLastStagingFromBuildVersion2, v25, startupAssetTargetBuildVersion2, startupDeterminedAvailableAssetCount, startupStagedAssetCount, startupStagedAssetTotalContentBytes, v35, stagingFromOSVersion2, stagingFromBuildVersion2, assetTargetOSVersion2, assetTargetBuildVersion2, v11, activeTargetAvailableForStagingRequiredCount, activeTargetAvailableForStagingOptionalCount, otherTargetName2, v16, [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingRequiredCount], [(MANAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingOptionalCount], [(MANAutoAssetControlStagerInformation *)self successfullyStagedCount]];

  if (otherTargetName)
  {
  }

  if (assetTargetBuildVersion)
  {
  }

  if (assetTargetOSVersion)
  {
  }

  if (v23)
  {
  }

  if (stagingFromOSVersion)
  {
  }

  if (startupAssetTargetBuildVersion)
  {
  }

  if (startupAssetTargetOSVersion)
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

+ (id)previousOTASituationName:(int64_t)name
{
  v3 = @"UNKNOWN";
  if (name > 299)
  {
    v4 = @"STAGED_PARTIAL";
    v9 = @"STAGED_ALL_DESIRED";
    if (name != 501)
    {
      v9 = @"UNKNOWN";
    }

    if (name != 500)
    {
      v4 = v9;
    }

    v10 = @"DOWNLOADED_EMPTIED";
    v11 = @"DOWNLOADED_BLOCKED";
    if (name != 403)
    {
      v11 = @"UNKNOWN";
    }

    if (name != 402)
    {
      v10 = v11;
    }

    if (name <= 499)
    {
      v4 = v10;
    }

    if (name == 401)
    {
      v3 = @"DOWNLOADED_NOTHING";
    }

    if (name == 301)
    {
      v3 = @"CLIENT_SET_TARGET";
    }

    if (name == 300)
    {
      v3 = @"CLIENT_ALTERED";
    }

    v8 = name <= 401;
  }

  else
  {
    v4 = @"DETERMINED_AVAILABLE";
    v5 = @"DETERMINED_PURGED";
    if (name != 204)
    {
      v5 = @"UNKNOWN";
    }

    if (name != 203)
    {
      v4 = v5;
    }

    v6 = @"DETERMINED_NO_NEWER";
    v7 = @"DETERMINED_BLOCKED";
    if (name != 202)
    {
      v7 = @"UNKNOWN";
    }

    if (name != 201)
    {
      v6 = v7;
    }

    if (name <= 202)
    {
      v4 = v6;
    }

    if (name == 200)
    {
      v3 = @"DETERMINED_PARTIAL";
    }

    if (name == 101)
    {
      v3 = @"OTA_FROM_LEGACY";
    }

    if (name == 100)
    {
      v3 = @"OTA_NEVER";
    }

    v8 = name <= 200;
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