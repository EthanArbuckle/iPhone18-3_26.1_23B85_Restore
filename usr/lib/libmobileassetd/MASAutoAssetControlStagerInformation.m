@interface MASAutoAssetControlStagerInformation
+ (id)newServerMessageClasses:(id)a3;
+ (id)newShimmedFromFramework:(id)a3;
+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4;
+ (id)newShimmedToFramework:(id)a3;
@end

@implementation MASAutoAssetControlStagerInformation

+ (id)newServerMessageClasses:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    if (__isPlatformVersionAtLeast(2, 26, 0, 0))
    {
      v4 = v3;
      if (objc_opt_class())
      {
        v4 = [v3 setByAddingObject:objc_opt_class()];
      }
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
  if (v3 && __isPlatformVersionAtLeast(2, 26, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetControlStagerInformation alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = objc_alloc_init(MAAutoAssetControlStagerInformation);
    if (objc_opt_respondsToSelector())
    {
      [v6 setPersistedStateCount:{objc_msgSend(v3, "persistedStateCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setPersistedTargetLookupResultsCount:{objc_msgSend(v3, "persistedTargetLookupResultsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setPersistedAvailableForStagingByTargetCount:{objc_msgSend(v3, "persistedAvailableForStagingByTargetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [v3 startupLastStagingFromOSVersion];
      [v6 setStartupLastStagingFromOSVersion:v7];
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [v3 startupLastStagingFromBuildVersion];
      [v6 setStartupLastStagingFromBuildVersion:v8];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v3 startupAssetTargetOSVersion];
      [v6 setStartupAssetTargetOSVersion:v9];
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v3 startupAssetTargetBuildVersion];
      [v6 setStartupAssetTargetBuildVersion:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupCandidateAssetCount:{objc_msgSend(v3, "startupCandidateAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupDeterminedAvailableAssetCount:{objc_msgSend(v3, "startupDeterminedAvailableAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupActivelyStagingAssetCount:{objc_msgSend(v3, "startupActivelyStagingAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupAwaitingStagingAssetCount:{objc_msgSend(v3, "startupAwaitingStagingAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupStagedAssetCount:{objc_msgSend(v3, "startupStagedAssetCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupStagedAssetTotalContentBytes:{objc_msgSend(v3, "startupStagedAssetTotalContentBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStartupPreviousOTASituation:{objc_msgSend(v3, "startupPreviousOTASituation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v3 stagingFromOSVersion];
      [v6 setStagingFromOSVersion:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v3 stagingFromBuildVersion];
      [v6 setStagingFromBuildVersion:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setLoadPersistedPostponed:{objc_msgSend(v3, "loadPersistedPostponed")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAlwaysPromoteStagedAssets:{objc_msgSend(v3, "alwaysPromoteStagedAssets")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v3 assetTargetOSVersion];
      [v6 setAssetTargetOSVersion:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v3 assetTargetBuildVersion];
      [v6 setAssetTargetBuildVersion:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v3 assetTargetTrainName];
      [v6 setAssetTargetTrainName:v15];
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v3 assetTargetRestoreVersion];
      [v6 setAssetTargetRestoreVersion:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [v3 optionalAssetSizeAllowed];
      [v6 setOptionalAssetSizeAllowed:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetOTASituation:{objc_msgSend(v3, "activeTargetOTASituation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidatesForStagingRequiredCount:{objc_msgSend(v3, "activeTargetCandidatesForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidatesForStagingOptionalCount:{objc_msgSend(v3, "activeTargetCandidatesForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidateSetConfigurationsRequiredCount:{objc_msgSend(v3, "activeTargetCandidateSetConfigurationsRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetCandidateSetConfigurationsOptionalCount:{objc_msgSend(v3, "activeTargetCandidateSetConfigurationsOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetAvailableForStagingRequiredCount:{objc_msgSend(v3, "activeTargetAvailableForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setActiveTargetAvailableForStagingOptionalCount:{objc_msgSend(v3, "activeTargetAvailableForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [v3 otherTargetName];
      [v6 setOtherTargetName:v18];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetOTASituation:{objc_msgSend(v3, "otherTargetOTASituation")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidatesForStagingRequiredCount:{objc_msgSend(v3, "otherTargetCandidatesForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidatesForStagingOptionalCount:{objc_msgSend(v3, "otherTargetCandidatesForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidateSetConfigurationsRequiredCount:{objc_msgSend(v3, "otherTargetCandidateSetConfigurationsRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetCandidateSetConfigurationsOptionalCount:{objc_msgSend(v3, "otherTargetCandidateSetConfigurationsOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetAvailableForStagingRequiredCount:{objc_msgSend(v3, "otherTargetAvailableForStagingRequiredCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOtherTargetAvailableForStagingOptionalCount:{objc_msgSend(v3, "otherTargetAvailableForStagingOptionalCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStagingClientDetermineRequestsCount:{objc_msgSend(v3, "stagingClientDetermineRequestsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStagingClientDownloadRequestActive:{objc_msgSend(v3, "stagingClientDownloadRequestActive")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setStagingClientRequestActive:{objc_msgSend(v3, "stagingClientRequestActive")}];
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v3 stagingClientName];
      [v6 setStagingClientName:v19];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSetConfigurationsCount:{objc_msgSend(v3, "setConfigurationsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSetTargetsCount:{objc_msgSend(v3, "setTargetsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setScheduledJobsCount:{objc_msgSend(v3, "scheduledJobsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCandidatesForStagingCount:{objc_msgSend(v3, "candidatesForStagingCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCandidateSetConfigurationsCount:{objc_msgSend(v3, "candidateSetConfigurationsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSetLookupResultsCount:{objc_msgSend(v3, "setLookupResultsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setBaseForStagingDescriptorsCount:{objc_msgSend(v3, "baseForStagingDescriptorsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setDeterminingBySelectorCount:{objc_msgSend(v3, "determiningBySelectorCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAvailableForStagingCount:{objc_msgSend(v3, "availableForStagingCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setAwaitingStagingAttemptCount:{objc_msgSend(v3, "awaitingStagingAttemptCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setSuccessfullyStagedCount:{objc_msgSend(v3, "successfullyStagedCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOverallStagedTotalExpectedBytes:{objc_msgSend(v3, "overallStagedTotalExpectedBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setOverallStagedDownloadedSoFarBytes:{objc_msgSend(v3, "overallStagedDownloadedSoFarBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCurrentStagedLastWrittenBytes:{objc_msgSend(v3, "currentStagedLastWrittenBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setCurrentStagedRemainingBytes:{objc_msgSend(v3, "currentStagedRemainingBytes")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminationSelectorsCount:{objc_msgSend(v3, "eliminationSelectorsCount")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminationSetConfigurationCurrentJob:{objc_msgSend(v3, "eliminationSetConfigurationCurrentJob")}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 setEliminationSelectorsAcknowledgedCount:{objc_msgSend(v3, "eliminationSelectorsAcknowledgedCount")}];
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

+ (id)newShimmedFromFramework:(id)a3
{
  v3 = a3;
  if (v3 && __isPlatformVersionAtLeast(2, 26, 0, 0) && objc_opt_class() && (v4 = [MAAutoAssetControlStagerInformation alloc], v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = v3;
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
      v8 = [v6 startupLastStagingFromOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupLastStagingFromOSVersion:v8];
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 startupLastStagingFromBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupLastStagingFromBuildVersion:v9];
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v6 startupAssetTargetOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupAssetTargetOSVersion:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      v11 = [v6 startupAssetTargetBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStartupAssetTargetBuildVersion:v11];
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
      v12 = [v6 stagingFromOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStagingFromOSVersion:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [v6 stagingFromBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setStagingFromBuildVersion:v13];
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
      v14 = [v6 assetTargetOSVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetOSVersion:v14];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v6 assetTargetBuildVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetBuildVersion:v15];
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v6 assetTargetTrainName];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetTrainName:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [v6 assetTargetRestoreVersion];
      [(MANAutoAssetControlStagerInformation *)v7 setAssetTargetRestoreVersion:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [v6 optionalAssetSizeAllowed];
      [(MANAutoAssetControlStagerInformation *)v7 setOptionalAssetSizeAllowed:v18];
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
      v19 = [v6 otherTargetName];
      [(MANAutoAssetControlStagerInformation *)v7 setOtherTargetName:v19];
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
      v20 = [v6 stagingClientName];
      [(MANAutoAssetControlStagerInformation *)v7 setStagingClientName:v20];
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

+ (id)newShimmedFromFrameworkMessage:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if (__isPlatformVersionAtLeast(2, 26, 0, 0) && objc_opt_class() && (v9 = [MAAutoAssetControlStagerInformation alloc], v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
    {
      v11 = [v5 safeObjectForKey:v7 ofClass:objc_opt_class()];
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