@interface MASAutoAssetControlStagerInformation
+ (id)newServerMessageClasses:(id)classes;
+ (id)newShimmedFromFramework:(id)framework;
+ (id)newShimmedFromFrameworkMessage:(id)message forKey:(id)key;
+ (id)newShimmedToFramework:(id)framework;
@end

@implementation MASAutoAssetControlStagerInformation

+ (id)newServerMessageClasses:(id)classes
{
  classesCopy = classes;
  if (classesCopy)
  {
    v4 = classesCopy;
    if (__isPlatformVersionAtLeast(2, 26, 0, 0))
    {
      v4 = classesCopy;
      if (objc_opt_class())
      {
        v4 = [classesCopy setByAddingObject:objc_opt_class()];
      }
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
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 26, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetControlStagerInformation alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetControlStagerInformation);
    if (objc_opt_respondsToSelector())
    {
      [v6 setPersistedStateCount:{objc_msgSend(frameworkCopy, "persistedStateCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setPersistedTargetLookupResultsCount:{objc_msgSend(frameworkCopy, "persistedTargetLookupResultsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setPersistedAvailableForStagingByTargetCount:{objc_msgSend(frameworkCopy, "persistedAvailableForStagingByTargetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      startupLastStagingFromOSVersion = [frameworkCopy startupLastStagingFromOSVersion];
      [v6 setStartupLastStagingFromOSVersion:startupLastStagingFromOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      startupLastStagingFromBuildVersion = [frameworkCopy startupLastStagingFromBuildVersion];
      [v6 setStartupLastStagingFromBuildVersion:startupLastStagingFromBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      startupAssetTargetOSVersion = [frameworkCopy startupAssetTargetOSVersion];
      [v6 setStartupAssetTargetOSVersion:startupAssetTargetOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      startupAssetTargetBuildVersion = [frameworkCopy startupAssetTargetBuildVersion];
      [v6 setStartupAssetTargetBuildVersion:startupAssetTargetBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupCandidateAssetCount:{objc_msgSend(frameworkCopy, "startupCandidateAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupDeterminedAvailableAssetCount:{objc_msgSend(frameworkCopy, "startupDeterminedAvailableAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupActivelyStagingAssetCount:{objc_msgSend(frameworkCopy, "startupActivelyStagingAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupAwaitingStagingAssetCount:{objc_msgSend(frameworkCopy, "startupAwaitingStagingAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupStagedAssetCount:{objc_msgSend(frameworkCopy, "startupStagedAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupStagedAssetTotalContentBytes:{objc_msgSend(frameworkCopy, "startupStagedAssetTotalContentBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupPreviousOTASituation:{objc_msgSend(frameworkCopy, "startupPreviousOTASituation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      stagingFromOSVersion = [frameworkCopy stagingFromOSVersion];
      [v6 setStagingFromOSVersion:stagingFromOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      stagingFromBuildVersion = [frameworkCopy stagingFromBuildVersion];
      [v6 setStagingFromBuildVersion:stagingFromBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setLoadPersistedPostponed:{objc_msgSend(frameworkCopy, "loadPersistedPostponed")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAlwaysPromoteStagedAssets:{objc_msgSend(frameworkCopy, "alwaysPromoteStagedAssets")}];
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetOSVersion = [frameworkCopy assetTargetOSVersion];
      [v6 setAssetTargetOSVersion:assetTargetOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetBuildVersion = [frameworkCopy assetTargetBuildVersion];
      [v6 setAssetTargetBuildVersion:assetTargetBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetTrainName = [frameworkCopy assetTargetTrainName];
      [v6 setAssetTargetTrainName:assetTargetTrainName];
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetRestoreVersion = [frameworkCopy assetTargetRestoreVersion];
      [v6 setAssetTargetRestoreVersion:assetTargetRestoreVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      optionalAssetSizeAllowed = [frameworkCopy optionalAssetSizeAllowed];
      [v6 setOptionalAssetSizeAllowed:optionalAssetSizeAllowed];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetOTASituation:{objc_msgSend(frameworkCopy, "activeTargetOTASituation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidatesForStagingRequiredCount:{objc_msgSend(frameworkCopy, "activeTargetCandidatesForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidatesForStagingOptionalCount:{objc_msgSend(frameworkCopy, "activeTargetCandidatesForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidateSetConfigurationsRequiredCount:{objc_msgSend(frameworkCopy, "activeTargetCandidateSetConfigurationsRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidateSetConfigurationsOptionalCount:{objc_msgSend(frameworkCopy, "activeTargetCandidateSetConfigurationsOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetAvailableForStagingRequiredCount:{objc_msgSend(frameworkCopy, "activeTargetAvailableForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetAvailableForStagingOptionalCount:{objc_msgSend(frameworkCopy, "activeTargetAvailableForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      otherTargetName = [frameworkCopy otherTargetName];
      [v6 setOtherTargetName:otherTargetName];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetOTASituation:{objc_msgSend(frameworkCopy, "otherTargetOTASituation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidatesForStagingRequiredCount:{objc_msgSend(frameworkCopy, "otherTargetCandidatesForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidatesForStagingOptionalCount:{objc_msgSend(frameworkCopy, "otherTargetCandidatesForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidateSetConfigurationsRequiredCount:{objc_msgSend(frameworkCopy, "otherTargetCandidateSetConfigurationsRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidateSetConfigurationsOptionalCount:{objc_msgSend(frameworkCopy, "otherTargetCandidateSetConfigurationsOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetAvailableForStagingRequiredCount:{objc_msgSend(frameworkCopy, "otherTargetAvailableForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetAvailableForStagingOptionalCount:{objc_msgSend(frameworkCopy, "otherTargetAvailableForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStagingClientDetermineRequestsCount:{objc_msgSend(frameworkCopy, "stagingClientDetermineRequestsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStagingClientDownloadRequestActive:{objc_msgSend(frameworkCopy, "stagingClientDownloadRequestActive")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStagingClientRequestActive:{objc_msgSend(frameworkCopy, "stagingClientRequestActive")}];
    }

    if (objc_opt_respondsToSelector())
    {
      stagingClientName = [frameworkCopy stagingClientName];
      [v6 setStagingClientName:stagingClientName];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSetConfigurationsCount:{objc_msgSend(frameworkCopy, "setConfigurationsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSetTargetsCount:{objc_msgSend(frameworkCopy, "setTargetsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setScheduledJobsCount:{objc_msgSend(frameworkCopy, "scheduledJobsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCandidatesForStagingCount:{objc_msgSend(frameworkCopy, "candidatesForStagingCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCandidateSetConfigurationsCount:{objc_msgSend(frameworkCopy, "candidateSetConfigurationsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSetLookupResultsCount:{objc_msgSend(frameworkCopy, "setLookupResultsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setBaseForStagingDescriptorsCount:{objc_msgSend(frameworkCopy, "baseForStagingDescriptorsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setDeterminingBySelectorCount:{objc_msgSend(frameworkCopy, "determiningBySelectorCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAvailableForStagingCount:{objc_msgSend(frameworkCopy, "availableForStagingCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAwaitingStagingAttemptCount:{objc_msgSend(frameworkCopy, "awaitingStagingAttemptCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSuccessfullyStagedCount:{objc_msgSend(frameworkCopy, "successfullyStagedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOverallStagedTotalExpectedBytes:{objc_msgSend(frameworkCopy, "overallStagedTotalExpectedBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOverallStagedDownloadedSoFarBytes:{objc_msgSend(frameworkCopy, "overallStagedDownloadedSoFarBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCurrentStagedLastWrittenBytes:{objc_msgSend(frameworkCopy, "currentStagedLastWrittenBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCurrentStagedRemainingBytes:{objc_msgSend(frameworkCopy, "currentStagedRemainingBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminationSelectorsCount:{objc_msgSend(frameworkCopy, "eliminationSelectorsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminationSetConfigurationCurrentJob:{objc_msgSend(frameworkCopy, "eliminationSetConfigurationCurrentJob")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminationSelectorsAcknowledgedCount:{objc_msgSend(frameworkCopy, "eliminationSelectorsAcknowledgedCount")}];
    }

    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v21;
}

+ (id)newShimmedFromFramework:(id)framework
{
  frameworkCopy = framework;
  if (frameworkCopy && __isPlatformVersionAtLeast(2, 26, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetControlStagerInformation alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = frameworkCopy;
    v7 = objc_alloc_init(MANAutoAssetControlStagerInformation);
    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setPersistedStateCount:](v7, "setPersistedStateCount:", [v6 persistedStateCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setPersistedTargetLookupResultsCount:](v7, "setPersistedTargetLookupResultsCount:", [v6 persistedTargetLookupResultsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setPersistedAvailableForStagingByTargetCount:](v7, "setPersistedAvailableForStagingByTargetCount:", [v6 persistedAvailableForStagingByTargetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      startupLastStagingFromOSVersion = [v6 startupLastStagingFromOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupLastStagingFromOSVersion:startupLastStagingFromOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      startupLastStagingFromBuildVersion = [v6 startupLastStagingFromBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupLastStagingFromBuildVersion:startupLastStagingFromBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      startupAssetTargetOSVersion = [v6 startupAssetTargetOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupAssetTargetOSVersion:startupAssetTargetOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      startupAssetTargetBuildVersion = [v6 startupAssetTargetBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupAssetTargetBuildVersion:startupAssetTargetBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStartupCandidateAssetCount:](v7, "setStartupCandidateAssetCount:", [v6 startupCandidateAssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStartupDeterminedAvailableAssetCount:](v7, "setStartupDeterminedAvailableAssetCount:", [v6 startupDeterminedAvailableAssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStartupActivelyStagingAssetCount:](v7, "setStartupActivelyStagingAssetCount:", [v6 startupActivelyStagingAssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStartupAwaitingStagingAssetCount:](v7, "setStartupAwaitingStagingAssetCount:", [v6 startupAwaitingStagingAssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStartupStagedAssetCount:](v7, "setStartupStagedAssetCount:", [v6 startupStagedAssetCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStartupStagedAssetTotalContentBytes:](v7, "setStartupStagedAssetTotalContentBytes:", [v6 startupStagedAssetTotalContentBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStartupPreviousOTASituation:](v7, "setStartupPreviousOTASituation:", [v6 startupPreviousOTASituation]);
    }

    if (objc_opt_respondsToSelector())
    {
      stagingFromOSVersion = [v6 stagingFromOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStagingFromOSVersion:stagingFromOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      stagingFromBuildVersion = [v6 stagingFromBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStagingFromBuildVersion:stagingFromBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setLoadPersistedPostponed:](v7, "setLoadPersistedPostponed:", [v6 loadPersistedPostponed]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setAlwaysPromoteStagedAssets:](v7, "setAlwaysPromoteStagedAssets:", [v6 alwaysPromoteStagedAssets]);
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetOSVersion = [v6 assetTargetOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetOSVersion:assetTargetOSVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetBuildVersion = [v6 assetTargetBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetBuildVersion:assetTargetBuildVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetTrainName = [v6 assetTargetTrainName];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetTrainName:assetTargetTrainName];
    }

    if (objc_opt_respondsToSelector())
    {
      assetTargetRestoreVersion = [v6 assetTargetRestoreVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetRestoreVersion:assetTargetRestoreVersion];
    }

    if (objc_opt_respondsToSelector())
    {
      optionalAssetSizeAllowed = [v6 optionalAssetSizeAllowed];
      [(MANAutoAssetControlStagerInformation *)v7 setOptionalAssetSizeAllowed:optionalAssetSizeAllowed];
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setActiveTargetOTASituation:](v7, "setActiveTargetOTASituation:", [v6 activeTargetOTASituation]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setActiveTargetCandidatesForStagingRequiredCount:](v7, "setActiveTargetCandidatesForStagingRequiredCount:", [v6 activeTargetCandidatesForStagingRequiredCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setActiveTargetCandidatesForStagingOptionalCount:](v7, "setActiveTargetCandidatesForStagingOptionalCount:", [v6 activeTargetCandidatesForStagingOptionalCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setActiveTargetCandidateSetConfigurationsRequiredCount:](v7, "setActiveTargetCandidateSetConfigurationsRequiredCount:", [v6 activeTargetCandidateSetConfigurationsRequiredCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setActiveTargetCandidateSetConfigurationsOptionalCount:](v7, "setActiveTargetCandidateSetConfigurationsOptionalCount:", [v6 activeTargetCandidateSetConfigurationsOptionalCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setActiveTargetAvailableForStagingRequiredCount:](v7, "setActiveTargetAvailableForStagingRequiredCount:", [v6 activeTargetAvailableForStagingRequiredCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setActiveTargetAvailableForStagingOptionalCount:](v7, "setActiveTargetAvailableForStagingOptionalCount:", [v6 activeTargetAvailableForStagingOptionalCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      otherTargetName = [v6 otherTargetName];
      [(MANAutoAssetControlStagerInformation *)v7 setOtherTargetName:otherTargetName];
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOtherTargetOTASituation:](v7, "setOtherTargetOTASituation:", [v6 otherTargetOTASituation]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOtherTargetCandidatesForStagingRequiredCount:](v7, "setOtherTargetCandidatesForStagingRequiredCount:", [v6 otherTargetCandidatesForStagingRequiredCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOtherTargetCandidatesForStagingOptionalCount:](v7, "setOtherTargetCandidatesForStagingOptionalCount:", [v6 otherTargetCandidatesForStagingOptionalCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOtherTargetCandidateSetConfigurationsRequiredCount:](v7, "setOtherTargetCandidateSetConfigurationsRequiredCount:", [v6 otherTargetCandidateSetConfigurationsRequiredCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOtherTargetCandidateSetConfigurationsOptionalCount:](v7, "setOtherTargetCandidateSetConfigurationsOptionalCount:", [v6 otherTargetCandidateSetConfigurationsOptionalCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOtherTargetAvailableForStagingRequiredCount:](v7, "setOtherTargetAvailableForStagingRequiredCount:", [v6 otherTargetAvailableForStagingRequiredCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOtherTargetAvailableForStagingOptionalCount:](v7, "setOtherTargetAvailableForStagingOptionalCount:", [v6 otherTargetAvailableForStagingOptionalCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStagingClientDetermineRequestsCount:](v7, "setStagingClientDetermineRequestsCount:", [v6 stagingClientDetermineRequestsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStagingClientDownloadRequestActive:](v7, "setStagingClientDownloadRequestActive:", [v6 stagingClientDownloadRequestActive]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setStagingClientRequestActive:](v7, "setStagingClientRequestActive:", [v6 stagingClientRequestActive]);
    }

    if (objc_opt_respondsToSelector())
    {
      stagingClientName = [v6 stagingClientName];
      [(MANAutoAssetControlStagerInformation *)v7 setStagingClientName:stagingClientName];
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setSetConfigurationsCount:](v7, "setSetConfigurationsCount:", [v6 setConfigurationsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setSetTargetsCount:](v7, "setSetTargetsCount:", [v6 setTargetsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setScheduledJobsCount:](v7, "setScheduledJobsCount:", [v6 scheduledJobsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setCandidatesForStagingCount:](v7, "setCandidatesForStagingCount:", [v6 candidatesForStagingCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setCandidateSetConfigurationsCount:](v7, "setCandidateSetConfigurationsCount:", [v6 candidateSetConfigurationsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setSetLookupResultsCount:](v7, "setSetLookupResultsCount:", [v6 setLookupResultsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setBaseForStagingDescriptorsCount:](v7, "setBaseForStagingDescriptorsCount:", [v6 baseForStagingDescriptorsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setDeterminingBySelectorCount:](v7, "setDeterminingBySelectorCount:", [v6 determiningBySelectorCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setAvailableForStagingCount:](v7, "setAvailableForStagingCount:", [v6 availableForStagingCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setAwaitingStagingAttemptCount:](v7, "setAwaitingStagingAttemptCount:", [v6 awaitingStagingAttemptCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setSuccessfullyStagedCount:](v7, "setSuccessfullyStagedCount:", [v6 successfullyStagedCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOverallStagedTotalExpectedBytes:](v7, "setOverallStagedTotalExpectedBytes:", [v6 overallStagedTotalExpectedBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setOverallStagedDownloadedSoFarBytes:](v7, "setOverallStagedDownloadedSoFarBytes:", [v6 overallStagedDownloadedSoFarBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setCurrentStagedLastWrittenBytes:](v7, "setCurrentStagedLastWrittenBytes:", [v6 currentStagedLastWrittenBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setCurrentStagedRemainingBytes:](v7, "setCurrentStagedRemainingBytes:", [v6 currentStagedRemainingBytes]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setEliminationSelectorsCount:](v7, "setEliminationSelectorsCount:", [v6 eliminationSelectorsCount]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setEliminationSetConfigurationCurrentJob:](v7, "setEliminationSetConfigurationCurrentJob:", [v6 eliminationSetConfigurationCurrentJob]);
    }

    if (objc_opt_respondsToSelector())
    {
      -[MANAutoAssetControlStagerInformation setEliminationSelectorsAcknowledgedCount:](v7, "setEliminationSelectorsAcknowledgedCount:", [v6 eliminationSelectorsAcknowledgedCount]);
    }
  }

  else
  {
    v7 = 0;
  }

  v21 = v7;

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
    if (__isPlatformVersionAtLeast(2, 26, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetControlStagerInformation alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [messageCopy safeObjectForKey:v7 ofClass:objc_opt_class()];
      v8 = [MASAutoAssetControlStagerInformation newShimmedFromFramework:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end