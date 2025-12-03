@interface PGUserDefaults
+ (BOOL)boundTextFeaturesPerEvent;
+ (BOOL)enableMomentCLIPFeatureGraphIngest;
+ (BOOL)graphConsistencyCheckIsEnabled;
+ (BOOL)graphConsistencyNotificationIsEnabled;
+ (BOOL)isAlwaysShowingHolidayCalendarEvents;
+ (BOOL)isAutonamingDisabled;
+ (BOOL)isAutonamingFilteredOutInferencesIngestAllowed;
+ (BOOL)isAutonamingSignalPropertiesIngestAllowed;
+ (BOOL)isMemoriesLivingOnFeedbackEnabled;
+ (BOOL)isMemoriesNotificationDisabled;
+ (BOOL)isMemoryElectionDisabled;
+ (BOOL)isPhotosChallengeEnabled;
+ (BOOL)isPublicEventsEnabled;
+ (BOOL)isRelationshipFilteredOutInferencesIngestAllowed;
+ (BOOL)isRelationshipInferenceDisabled;
+ (BOOL)isRelationshipSignalPropertiesIngestAllowed;
+ (BOOL)isShowingHolidayCalendarEvents;
+ (BOOL)musicCurationAllowExplicitMusicContent;
+ (BOOL)musicCurationShouldUseOldStylePreviewURL;
+ (BOOL)onThisDayHighlightKeyAssetRotationIsEnabled;
+ (BOOL)shouldDisableContentClassificationTask;
+ (BOOL)suppressGraphLiveUpdate;
+ (BOOL)useAOIsInExtendedTokens;
+ (BOOL)useExtendedCurationAssetCountForLocationTitles;
+ (BOOL)useIconicScoreForTrips;
+ (BOOL)useMeaningEdgeForEventLabelingAlgorithm;
+ (BOOL)wallpaperSkipSettlingEffectScoreGating;
+ (NSDictionary)extendedCurationOptions;
+ (double)graphConsistencyPercentageThresholdForTTR;
+ (double)minimumCumulativeDistributionOfAreaFrequency;
+ (double)minimumCumulativeDistributionOfCityFrequency;
+ (double)minimumCumulativeDistributionOfPersonFrequency;
+ (double)minimumCumulativeDistributionOfPersonWithNamedPersonFrequency;
+ (double)minimumCumulativeDistributionOfPersonWithTripFrequency;
+ (double)minimumRatioOfFocusedPersonFacesPerAssetForMultipleFocusedPersonsFacedAssets;
+ (double)relationshipTagMinConfidenceThreshold;
+ (double)usersChildrenInferenceMinimumLifespanYears;
+ (double)usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears;
+ (double)usersPetsInferenceMinimumLifespanYears;
+ (double)usersPetsInferenceRecencyThresholdFromLatestMomentDateYears;
+ (int64_t)retrievalThresholdForCLIPTrendsMemories;
+ (unint64_t)maximumNumberOfFacesPerAssetForSingleFocusedPersonFacedAssets;
+ (unint64_t)maximumNumberOfTextFeaturesPerEvent;
+ (unint64_t)maximumNumberOfVisibleItems;
+ (unint64_t)maximumNumberOfVisibleRegularItems;
+ (unint64_t)minimumNumberOfCuratedAssetsForInterestingMoments;
+ (unint64_t)minimumNumberOfVisibleItems;
+ (void)_registerDefaults;
+ (void)initialize;
+ (void)setExtendedCurationOptions:(id)options;
@end

@implementation PGUserDefaults

+ (int64_t)retrievalThresholdForCLIPTrendsMemories
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"retrievalThresholdForCLIPTrendsMemories"];

  return v3;
}

+ (double)minimumCumulativeDistributionOfAreaFrequency
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"minimumCumulativeDistributionOfAreaFrequency"];
  v4 = v3;

  return v4;
}

+ (double)minimumCumulativeDistributionOfCityFrequency
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"minimumCumulativeDistributionOfCityFrequency"];
  v4 = v3;

  return v4;
}

+ (double)minimumCumulativeDistributionOfPersonWithTripFrequency
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"minimumCumulativeDistributionOfPersonWithTripFrequency"];
  v4 = v3;

  return v4;
}

+ (double)minimumCumulativeDistributionOfPersonWithNamedPersonFrequency
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"minimumCumulativeDistributionOfPersonWithNamedPersonFrequency"];
  v4 = v3;

  return v4;
}

+ (double)minimumCumulativeDistributionOfPersonFrequency
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"minimumCumulativeDistributionOfPersonFrequency"];
  v4 = v3;

  return v4;
}

+ (BOOL)useAOIsInExtendedTokens
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"useAOIsInExtendedTokens"];

  return v3;
}

+ (BOOL)enableMomentCLIPFeatureGraphIngest
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enableMomentCLIPFeatureGraphIngest"];

  return v3;
}

+ (double)usersPetsInferenceMinimumLifespanYears
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"usersPetsInferenceMinimumLifespanYears"];
  v4 = v3;

  return v4;
}

+ (double)usersPetsInferenceRecencyThresholdFromLatestMomentDateYears
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"usersPetsInferenceRecencyThresholdYears"];
  v4 = v3;

  return v4;
}

+ (double)usersChildrenInferenceMinimumLifespanYears
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"usersChildrenInferenceMinimumLifespanYears"];
  v4 = v3;

  return v4;
}

+ (double)usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"usersChildrenInferenceRecencyThresholdYears"];
  v4 = v3;

  return v4;
}

+ (BOOL)wallpaperSkipSettlingEffectScoreGating
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGWallpaperSkipSettlingEffectScoreGating"];

  return v3;
}

+ (BOOL)useIconicScoreForTrips
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGCuratedLibraryTripKeyAssetUseIconicScore"];

  return v3;
}

+ (double)relationshipTagMinConfidenceThreshold
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PGRelationshipTagMinConfidenceThreshold"];
  v4 = v3;

  return v4;
}

+ (BOOL)useMeaningEdgeForEventLabelingAlgorithm
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGUseMeaningEdgeForEventLabelingAlgorithm"];

  return v3;
}

+ (BOOL)shouldDisableContentClassificationTask
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGShouldDisableContentClassificationTask"];

  return v3;
}

+ (BOOL)musicCurationAllowExplicitMusicContent
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPGMusicCurationAllowExplicitMusicContent"];

  return v3;
}

+ (BOOL)musicCurationShouldUseOldStylePreviewURL
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPGMusicCurationShouldUseOldStylePreviewURL"];

  return v3;
}

+ (unint64_t)minimumNumberOfVisibleItems
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"PGMinimumNumberOfVisibleItems"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (unint64_t)maximumNumberOfVisibleItems
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"PGMaximumNumberOfVisibleItems"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (unint64_t)maximumNumberOfVisibleRegularItems
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"PGMaximumNumberOfVisibleRegularItems"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (void)setExtendedCurationOptions:(id)options
{
  v3 = MEMORY[0x277CBEBD0];
  optionsCopy = options;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:optionsCopy forKey:@"extendedCurationOptions"];
}

+ (NSDictionary)extendedCurationOptions
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"extendedCurationOptions"];

  return v3;
}

+ (BOOL)isPhotosChallengeEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"photosChallengeProfileEnabled"];

  return v3;
}

+ (BOOL)onThisDayHighlightKeyAssetRotationIsEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGOnThisDayHighlightKeyAssetRotationIsEnabled"];

  return v3;
}

+ (double)graphConsistencyPercentageThresholdForTTR
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PGGraphConsistencyPercentageThresholdForTTR"];
  v4 = v3;

  return v4;
}

+ (BOOL)graphConsistencyNotificationIsEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGGraphConsistencyNotificationIsEnabled"];

  return v3;
}

+ (BOOL)graphConsistencyCheckIsEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGGraphConsistencyCheckIsEnabled"];

  return v3;
}

+ (BOOL)suppressGraphLiveUpdate
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGSuppressGraphLiveUpdate"];

  return v3;
}

+ (BOOL)isMemoryElectionDisabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"disableMemoryElection"];

  return v3;
}

+ (BOOL)isPublicEventsEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"enablePublicEvents"];

  return v3;
}

+ (BOOL)boundTextFeaturesPerEvent
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PGBoundPHTextFeatures"];

  return v3;
}

+ (unint64_t)maximumNumberOfTextFeaturesPerEvent
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"PGMaximumNumberOfTextFeaturesPerEvent"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (BOOL)isRelationshipFilteredOutInferencesIngestAllowed
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ingestRelationshipFilteredOutInferences"];

  return v3;
}

+ (BOOL)isRelationshipSignalPropertiesIngestAllowed
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ingestRelationshipSignalProperties"];

  return v3;
}

+ (BOOL)isRelationshipInferenceDisabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"relationshipInferenceDisabled"];

  return v3;
}

+ (BOOL)isAutonamingFilteredOutInferencesIngestAllowed
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ingestAutonamingFilteredOutInferences"];

  return v3;
}

+ (BOOL)isAutonamingSignalPropertiesIngestAllowed
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ingestAutonamingSignalProperties"];

  return v3;
}

+ (BOOL)isAutonamingDisabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"autonamingDisabled"];

  return v3;
}

+ (double)minimumRatioOfFocusedPersonFacesPerAssetForMultipleFocusedPersonsFacedAssets
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PGPeopleMemoryMinimumRatioOfFocusedPersonFacesPerAssetForMultipleFocusedPersonsFacedAssets"];
  v4 = v3;

  return v4;
}

+ (unint64_t)maximumNumberOfFacesPerAssetForSingleFocusedPersonFacedAssets
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"PGPeopleMemoryMaximumNumberOfFacesPerAssetForSingleFocusedPersonFacedAssets"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (BOOL)isMemoriesLivingOnFeedbackEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"PGMemoriesLivingOnFeedbackEnabled"];

  LOBYTE(standardUserDefaults) = [v3 BOOLValue];
  return standardUserDefaults;
}

+ (BOOL)isMemoriesNotificationDisabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"notificationDisabled"];

  return v3;
}

+ (unint64_t)minimumNumberOfCuratedAssetsForInterestingMoments
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"PGMinimumNumberOfCuratedAssetsForInterestingMoments"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

+ (BOOL)isAlwaysShowingHolidayCalendarEvents
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"alwaysShowHolidayCalendarEvents"];

  return v3;
}

+ (BOOL)isShowingHolidayCalendarEvents
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"showHolidayCalendarEvents"];

  return v3;
}

+ (BOOL)useExtendedCurationAssetCountForLocationTitles
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPGUseExtendedCurationAssetCountForLocationTitles"];

  return v3;
}

+ (void)_registerDefaults
{
  v18[41] = *MEMORY[0x277D85DE8];
  v2 = _os_feature_enabled_impl();
  if (PGIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&PGIsAppleInternal_onceToken, &__block_literal_global_8316);
  }

  if (v2)
  {
    v3 = 6;
  }

  else
  {
    v3 = 5;
  }

  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  v5 = PGIsAppleInternal_isAppleInternal;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = MEMORY[0x277CBEC38];
  v8 = MEMORY[0x277CBEC28];
  v18[2] = MEMORY[0x277CBEC28];
  v18[3] = &unk_2844848D8;
  v18[0] = MEMORY[0x277CBEC38];
  v18[1] = MEMORY[0x277CBEC38];
  v18[4] = &unk_2844872D8;
  v18[5] = MEMORY[0x277CBEC38];
  v18[6] = MEMORY[0x277CBEC28];
  v18[7] = MEMORY[0x277CBEC28];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{v5, @"showHolidayCalendarEvents", @"PGCuratedLibraryTripKeyAssetUseIconicScore", @"alwaysShowHolidayCalendarEvents", @"PGPeopleMemoryMaximumNumberOfFacesPerAssetForSingleFocusedPersonFacedAssets", @"PGPeopleMemoryMinimumRatioOfFocusedPersonFacesPerAssetForMultipleFocusedPersonsFacedAssets", @"enablePublicEvents", @"disableMemoryElection", @"autonamingDisabled", @"ingestAutonamingSignalProperties"}];
  v18[8] = v9;
  v18[9] = v8;
  v17[9] = @"ingestAutonamingFilteredOutInferences";
  v17[10] = @"relationshipInferenceDisabled";
  v18[10] = v8;
  v17[11] = @"ingestRelationshipSignalProperties";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v18[11] = v10;
  v18[12] = v8;
  v17[12] = @"ingestRelationshipFilteredOutInferences";
  v17[13] = @"PGMaximumNumberOfTextFeaturesPerEvent";
  v18[13] = &unk_2844848F0;
  v18[14] = v7;
  v17[14] = @"PGBoundPHTextFeatures";
  v17[15] = @"PGSuppressGraphLiveUpdate";
  v18[15] = v8;
  v18[16] = v8;
  v17[16] = @"PGOnThisDayHighlightKeyAssetRotationIsEnabled";
  v17[17] = @"PGMaximumNumberOfVisibleRegularItems";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v18[17] = v11;
  v17[18] = @"PGMaximumNumberOfVisibleItems";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
  v18[18] = v12;
  v18[19] = &unk_284484908;
  v17[19] = @"PGMinimumNumberOfVisibleItems";
  v17[20] = @"kPGUseExtendedCurationAssetCountForLocationTitles";
  v18[20] = v7;
  v17[21] = @"photosChallengeProfileEnabled";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v18[21] = v13;
  v18[22] = v8;
  v17[22] = @"kPGMusicCurationShouldUseOldStylePreviewURL";
  v17[23] = @"kPGMusicCurationAllowExplicitMusicContent";
  v17[24] = @"PGUseMeaningEdgeForEventLabelingAlgorithm";
  v17[25] = @"PGGraphConsistencyCheckIsEnabled";
  v18[23] = v8;
  v18[24] = v8;
  v17[26] = @"PGGraphConsistencyNotificationIsEnabled";
  v17[27] = @"PGGraphConsistencyPercentageThresholdForTTR";
  v18[25] = v8;
  v18[26] = v8;
  v18[27] = &unk_2844872E8;
  v17[28] = @"PGRelationshipTagMinConfidenceThreshold";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  v17[29] = @"PGWallpaperSkipSettlingEffectScoreGating";
  v17[30] = @"usersChildrenInferenceRecencyThresholdYears";
  v18[28] = v14;
  v18[29] = v8;
  v18[30] = &unk_2844872F8;
  v18[31] = &unk_284487308;
  v17[31] = @"usersChildrenInferenceMinimumLifespanYears";
  v17[32] = @"usersPetsInferenceRecencyThresholdYears";
  v18[32] = &unk_2844872F8;
  v18[33] = &unk_284487318;
  v17[33] = @"usersPetsInferenceMinimumLifespanYears";
  v17[34] = @"enableMomentCLIPFeatureGraphIngest";
  v18[34] = v8;
  v18[35] = v8;
  v17[35] = @"useAOIsInExtendedTokens";
  v17[36] = @"minimumCumulativeDistributionOfPersonFrequency";
  v18[36] = &unk_284487328;
  v18[37] = &unk_2844872D8;
  v17[37] = @"minimumCumulativeDistributionOfPersonWithNamedPersonFrequency";
  v17[38] = @"minimumCumulativeDistributionOfPersonWithTripFrequency";
  v18[38] = &unk_284487338;
  v18[39] = &unk_284487328;
  v17[39] = @"minimumCumulativeDistributionOfCityFrequency";
  v17[40] = @"minimumCumulativeDistributionOfAreaFrequency";
  v18[40] = &unk_2844872D8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:41];
  [standardUserDefaults registerDefaults:v15];

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___PGUserDefaults;
  objc_msgSendSuper2(&v3, sel_initialize);
  [self _registerDefaults];
}

@end