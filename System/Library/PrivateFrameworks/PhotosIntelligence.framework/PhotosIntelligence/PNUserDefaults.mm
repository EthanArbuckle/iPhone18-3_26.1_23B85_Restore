@interface PNUserDefaults
+ (BOOL)alwaysShowCreativePrompts;
+ (BOOL)debugContextualPromptSuggestionsFromAllMemories;
+ (BOOL)disableLLMAssetCuration;
+ (BOOL)dontSplitMomentsAcrossChaptersForImplicitMontage;
+ (BOOL)enableAssetScopingTokenPromotion;
+ (BOOL)enableChapterValidator;
+ (BOOL)enableClusterByClusterForLibraryUnderstandingPersonalTraits;
+ (BOOL)enableFinalTraitLimit;
+ (BOOL)enableLibraryUnderstandingPersonalTraits;
+ (BOOL)enableLocationPromptBinding;
+ (BOOL)enableMediaAnalysisEmbeddingSearch;
+ (BOOL)enableMockCocoaDomainError;
+ (BOOL)enableMockGeneralMCError;
+ (BOOL)enableMockNetworkError;
+ (BOOL)enableMockNotEnoughAssetsError;
+ (BOOL)enableMockRateLimitingError;
+ (BOOL)enableMockServerRequestTimeout;
+ (BOOL)enableOnDemandCaptionGeneration;
+ (BOOL)enablePromptSuggestionPlistCache;
+ (BOOL)enableQueryAnnotationPipelineInPhotos;
+ (BOOL)enableSpatial3DBackgroundPersistence;
+ (BOOL)enableStorytellingMomentFiltering;
+ (BOOL)enableTraitDeduping;
+ (BOOL)forceMCMontagePath;
+ (BOOL)forceSequentialAssetCurationCalls;
+ (BOOL)generateOnDeviceTitle;
+ (BOOL)globalTraitsUseAPhotoOfBeforeTrait;
+ (BOOL)globalTraitsUseMomentValidation;
+ (BOOL)globalTraitsUseSemanticSimilarity;
+ (BOOL)includeRelatedMessagesBackdropSuggestions;
+ (BOOL)locationCurationAvoidPeople;
+ (BOOL)promotePlayableAssetsInStories;
+ (BOOL)saveVisualClustersToDebugAlbums;
+ (BOOL)shufflePromptParameters;
+ (BOOL)useAllTraitsAboveThresholdInTitler;
+ (BOOL)useCachedQueryTokensForSuggestions;
+ (BOOL)useFallbackTitleForMiniMC;
+ (BOOL)useGMSStreaming;
+ (BOOL)useGlobalTraitsV3;
+ (BOOL)useGlobalTraitsV3Captions;
+ (BOOL)useGlobalTraitsV3EmbeddingOnlySearch;
+ (BOOL)useGlobalTraitsV3MetadataOnlySearch;
+ (BOOL)useGlobalTraitsV3TitleAndQuery;
+ (BOOL)useLibraryUnderstandingOvernightProcessedResults;
+ (BOOL)useNormalDistributionForMoments;
+ (BOOL)useOnDeviceAssetCurationOutlier;
+ (BOOL)useOtherQueryTokenAssetsForEventDisambiguation;
+ (BOOL)usePersonAndPetExtendedTokensInAssetCuration;
+ (BOOL)usePersonPromptAnnotations;
+ (BOOL)usePhotoKitBatchSPIForRetrieval;
+ (BOOL)useQueryAnnotationPromptBindingPersonAndPetNames;
+ (BOOL)useShadowNamesInAssetCuration;
+ (BOOL)useStillAssetsOnlyInBackground;
+ (BOOL)useStorytellerSelectedTraitsForTitler;
+ (NSDictionary)assetCurationPegasusParameters;
+ (NSDictionary)assetCurationThimbleParameters;
+ (NSDictionary)freeformStoryOnDeviceParameters;
+ (NSDictionary)freeformStoryPegasusParameters;
+ (NSDictionary)freeformStoryThimbleParameters;
+ (NSDictionary)freeformTitlePegasusParameters;
+ (NSDictionary)freeformTitleThimbleParameters;
+ (NSDictionary)globalTraitsOnDeviceParameters;
+ (NSDictionary)globalTraitsPegasusParameters;
+ (NSDictionary)globalTraitsThimbleParameters;
+ (NSDictionary)musicKeywordsPegasusParameters;
+ (NSDictionary)musicKeywordsThimbleParameters;
+ (NSDictionary)promptRankingParameters;
+ (NSNumber)chapterCurationRandomizerSeed;
+ (NSNumber)chapterCuratorFeatureTypesForDistribution;
+ (NSNumber)globalAndPersonalTraitsSeed;
+ (NSNumber)globalTraitsMaximumTextSimilarityScore;
+ (NSNumber)numberOfChaptersPerStory;
+ (NSNumber)numberOfChronologicalStorySelectedTraits;
+ (NSNumber)numberOfGlobalTraits;
+ (NSNumber)numberOfShotsPerChapter;
+ (NSNumber)numberOfTraitsToSelect;
+ (NSNumber)personalTraitWeightedRandomSamplingSeed;
+ (NSNumber)storyAssetsFetcherSimilarityThreshold;
+ (NSNumber)storytellerSelectedTraitsCount;
+ (NSString)ajaxDawToken;
+ (NSString)appleMusicMCPrivacyDisclosureState;
+ (NSString)appleMusicSmartSearchMode;
+ (NSString)assetCurationLocale;
+ (NSString)eventElectionMode;
+ (NSString)fallbackAssetCuration30bModelName;
+ (NSString)fallbackBase30bModelName;
+ (NSString)fallbackGlobalTraits30bModelName;
+ (NSString)fallbackQueryUnderstanding30bModelName;
+ (NSString)fallbackStorytelling30bModelName;
+ (NSString)globalTraitsLocale;
+ (NSString)memoryCreationAvailabilityState;
+ (NSString)mockMomentDataFromFile;
+ (NSString)queryUnderstandingLocale;
+ (NSString)shufflePromptParametersSeed;
+ (NSString)storyMusicMaestroEmbeddingApproach;
+ (NSString)storytellerLocale;
+ (NSString)titleLocale;
+ (double)assetScopingTokenPromotionLikeliness;
+ (double)assetsSelectionUsingOverlappingMomentsThreshold;
+ (double)chapterValidatorMatchingRatioThresholdPerShotForFocusedChapters;
+ (double)chapterValidatorMinimumCoverageOfStoryAssetsInFinalChapters;
+ (double)chapterValidatorMinimumRatioOfMatchingShotsForFocusedChapters;
+ (double)chapterValidatorMinimumRatioOfNonoverlappingAssetsForDistinctShot;
+ (double)globalTraitsRetrievalThreshold;
+ (double)globalTraitsScopedAssetsRetrievalThreshold;
+ (double)minimumAssetOverlapForThresholdTitler;
+ (double)minimumCumulativeDistributionOfMomentFrequency;
+ (double)personalTraitGaussianFilteringCDFThreshold;
+ (double)personalTraitMinRatioOfAssets;
+ (double)personalTraitMosaicGaussianFilteringCDFThreshold;
+ (double)personalTraitMosaicMinRatioOfAssets;
+ (double)personalTraitWeightedRandomSamplingTemperature;
+ (double)shotlistMatchingRetrievalThreshold;
+ (double)spatial3DImageCompressionQuality;
+ (double)spatial3DMinimumGenerationTime;
+ (double)storyMusicCurationTimeoutSeconds;
+ (int64_t)assetCurationModelVersion;
+ (int64_t)chapterValidatorMinimumNumberOfMatchingShotsForFocusedChapters;
+ (int64_t)chapterValidatorMinimumNumberOfRetrievedFilteredAssetPerChapter;
+ (int64_t)generateNextStoryTitleStyleIndex;
+ (int64_t)globalTraitsMatchingEmbeddingSearchRetrievalLimit;
+ (int64_t)globalTraitsModelVersion;
+ (int64_t)globalTraitsNumberOfTraitsForMomentOverlap;
+ (int64_t)globalTraitsScopingEmbeddingSearchRetrievalLimit;
+ (int64_t)keyAssetEmbeddingSearchRetrievalLimit;
+ (int64_t)maximumNumberOfAssetsPerMomentBatchForLibraryUnderstandingPersonalTraits;
+ (int64_t)maximumNumberOfAssetsToCurateOnForHastingsCuration;
+ (int64_t)maximumNumberOfClustersForLibraryUnderstanding;
+ (int64_t)maximumNumberOfConsolidatedTraits;
+ (int64_t)maximumNumberOfMomentsForStoryGeneration;
+ (int64_t)minimumNumberOfLongTrips;
+ (int64_t)numberOfRepresentativeAssetsPerClusterForLibraryUnderstanding;
+ (int64_t)placeholderAssetFetchMultiplier;
+ (int64_t)promoterStatusMergeCandidateLimit;
+ (int64_t)promoterStatusVerifiedPersonLimit;
+ (int64_t)promptValidationAssetCountThreshold;
+ (int64_t)promptValidationBatchSize;
+ (int64_t)queryAnnotationPromptBindingNumberOfLocationNames;
+ (int64_t)queryAnnotationPromptBindingNumberOfPersonAndPetNames;
+ (int64_t)queryPeopleRequiredInRetrievalMomentLimit;
+ (int64_t)queryPeopleRequiredInRetrievalTripLimit;
+ (int64_t)shotlistMatchingEmbeddingSearchRetrievalLimit;
+ (int64_t)spatial3DImageCompressionCodec;
+ (int64_t)spatial3DTextureCompressionPhase;
+ (int64_t)storyGenerationPipeline;
+ (int64_t)storytellerModelVersion;
+ (int64_t)targetNumberOfEventSuggestions;
+ (int64_t)tripHighlightRepresentativeAssetsMinimumThreshold;
+ (int64_t)userQueryEmbeddingSearchRetrievalLimit;
+ (void)_registerDefaults;
+ (void)initialize;
@end

@implementation PNUserDefaults

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___PNUserDefaults;
  objc_msgSendSuper2(&v3, sel_initialize);
  [self _registerDefaults];
}

+ (void)_registerDefaults
{
  v11[110] = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = MEMORY[0x1E695E118];
  v10[0] = @"PNPromoterStatusMergeCandidateLimit";
  v10[1] = @"PNPromoterStatusVerifiedPersonLimit";
  v11[0] = &unk_1F46E50D8;
  v11[1] = &unk_1F46E50F0;
  v10[2] = @"PNUseGMSStreaming";
  v10[3] = @"PNGenerateOnDeviceTitle";
  v11[2] = MEMORY[0x1E695E118];
  v11[3] = MEMORY[0x1E695E118];
  v10[4] = @"PNUseOnDeviceAssetCurationOutlier";
  v10[5] = @"PNUseFallbackTitleForMiniMC";
  v11[4] = MEMORY[0x1E695E118];
  v11[5] = MEMORY[0x1E695E118];
  v3 = MEMORY[0x1E695E110];
  v10[6] = @"PNEnableAssetScopingTokenPromotion";
  v10[7] = @"PNAssetScopingTokenPromotionLikeliness";
  v11[6] = MEMORY[0x1E695E110];
  v11[7] = &unk_1F46E5738;
  v10[8] = @"kPNAssetsSelectionUsingOverlappingMomentsThreshold";
  v10[9] = @"kPNRetrievalThresholdGlobalTraitsScopedAssets";
  v11[8] = &unk_1F46E5748;
  v11[9] = &unk_1F46E5758;
  v10[10] = @"kPNRetrievalThresholdGlobalTraits";
  v10[11] = @"kPNRetrievalThresholdShotlistMatching";
  v11[10] = &unk_1F46E5768;
  v11[11] = &unk_1F46E5768;
  v10[12] = @"PNMaximumNumberOfMomentsForStoryGeneration";
  v10[13] = @"PNUserQueryEmbeddingSearchRetrievalLimit";
  v11[12] = &unk_1F46E5108;
  v11[13] = &unk_1F46E5120;
  v10[14] = @"PNGlobalTraitsScopingEmbeddingSearchRetrievalLimit";
  v10[15] = @"PNGlobalTraitsMatchingEmbeddingSearchRetrievalLimit";
  v11[14] = &unk_1F46E5138;
  v11[15] = &unk_1F46E5120;
  v10[16] = @"PNShotlistMatchingEmbeddingSearchRetrievalLimit";
  v10[17] = @"PNKeyAssetEmbeddingSearchRetrievalLimit";
  v11[16] = &unk_1F46E5138;
  v11[17] = &unk_1F46E5138;
  v10[18] = @"PNPlaceholderAssetFetchMultiplier";
  v10[19] = @"PNQueryPeopleRequiredInRetrievalMomentLimit";
  v11[18] = &unk_1F46E5150;
  v11[19] = &unk_1F46E5168;
  v10[20] = @"PNQueryPeopleRequiredInTripMomentLimit";
  v10[21] = @"kPNUsePhotoKitBatchSPIForRetrieval";
  v11[20] = &unk_1F46E5168;
  v11[21] = MEMORY[0x1E695E118];
  v10[22] = @"PNMusicKeywordsPegasusParameters";
  v10[23] = @"PNMusicKeywordsThimbleParameters";
  v11[22] = &unk_1F46E5878;
  v11[23] = &unk_1F46E58A0;
  v10[24] = @"kPNStoryMusicCurationTimeoutSeconds";
  v10[25] = @"PNEnableOnDemandCaptionGeneration";
  v11[24] = &unk_1F46E5778;
  v11[25] = MEMORY[0x1E695E110];
  v10[26] = @"PNEnableMediaAnalysisEmbeddingSearch";
  v10[27] = @"kPNSaveVisualClustersToDebugAlbums";
  v11[26] = MEMORY[0x1E695E118];
  v11[27] = MEMORY[0x1E695E110];
  v10[28] = @"kPNStoryGenerationNumberOfGlobalTraits";
  v10[29] = @"kPNStoryGenerationNumberOfChaptersPerStory";
  v11[28] = &unk_1F46E5180;
  v11[29] = &unk_1F46E5168;
  v10[30] = @"kPNStoryGenerationNumberOfShotsPerChapter";
  v10[31] = @"kPNStoryGenerationNumberOfTraitsToSelect";
  v11[30] = &unk_1F46E5180;
  v11[31] = &unk_1F46E5198;
  v10[32] = @"PNForceSequentialAssetCurationCalls";
  v10[33] = @"kPNEnableChapterValidator";
  v11[32] = MEMORY[0x1E695E110];
  v11[33] = MEMORY[0x1E695E110];
  v10[34] = @"kPNChapterValidatorMatchingRatioThresholdPerShotForFocusedChapters";
  v10[35] = @"kPNChapterValidatorMinimumRatioOfMatchingShotsForFocusedChapters";
  v11[34] = &unk_1F46E5788;
  v11[35] = &unk_1F46E5738;
  v10[36] = @"kPNChapterValidatorMinimumNumberOfMatchingShotsForFocusedChapters";
  v10[37] = @"kPNChapterValidatorMinimumRatioOfNonoverlappingAssetsForDistinctShot";
  v11[36] = &unk_1F46E5198;
  v11[37] = &unk_1F46E5738;
  v10[38] = @"kPNChapterValidatorMinimumNumberOfRetrievedFilteredAssetPerChapter";
  v10[39] = @"kPNChapterValidatorMinimumCoverageOfStoryAssetsInFinalChapters";
  v11[38] = &unk_1F46E5180;
  v11[39] = &unk_1F46E5738;
  v10[40] = @"kPNPromotePlayableAssetsInStories";
  v10[41] = @"kPNShufflePromptParameters";
  v11[40] = MEMORY[0x1E695E118];
  v11[41] = MEMORY[0x1E695E118];
  v10[42] = @"kPNEnableStorytellingMomentFiltering";
  v10[43] = @"kPNDontSplitMomentsAcrossChaptersForImplicitMontage";
  v11[42] = MEMORY[0x1E695E118];
  v11[43] = MEMORY[0x1E695E118];
  v10[44] = @"kPNEnableTraitDeduping";
  v10[45] = @"kPNForceMCMontagePath";
  v11[44] = MEMORY[0x1E695E110];
  v11[45] = MEMORY[0x1E695E110];
  v10[46] = @"PNUseStillAssetsOnlyInBackground";
  v10[47] = @"PNEnableMockRateLimitingError";
  v11[46] = MEMORY[0x1E695E110];
  v11[47] = MEMORY[0x1E695E110];
  v10[48] = @"PNEnableMockNetworkError";
  v10[49] = @"PNEnableMockServerRequestTimeout";
  v11[48] = MEMORY[0x1E695E110];
  v11[49] = MEMORY[0x1E695E110];
  v10[50] = @"PNEnableMockCocoaDomainError";
  v10[51] = @"PNEnableGeneralMCError";
  v11[50] = MEMORY[0x1E695E110];
  v11[51] = MEMORY[0x1E695E110];
  v11[52] = &unk_1F46E5198;
  v10[52] = @"PNTripHighlightRepresentativeAssetsThreshold";
  v10[53] = @"PNPromptRankingParameters";
  v8[0] = @"weightForAction";
  v8[1] = @"weightForPerson";
  v9[0] = &unk_1F46E5798;
  v9[1] = &unk_1F46E57A8;
  v8[2] = @"weightForPersonRelationship";
  v8[3] = @"weightForPlace";
  v9[2] = &unk_1F46E57A8;
  v9[3] = &unk_1F46E57B8;
  v8[4] = @"weightForCity";
  v8[5] = @"weightForTrait";
  v9[4] = &unk_1F46E57B8;
  v9[5] = &unk_1F46E5798;
  v8[6] = @"defaultEmbeddingDistanceThreshold";
  v8[7] = @"MinimumEmbeddingDistanceThreshold";
  v9[6] = &unk_1F46E5718;
  v9[7] = &unk_1F46E57C8;
  v8[8] = @"embeddingDistanceThresholdDecrement";
  v8[9] = @"defaultMetadataDistanceThreshold";
  v9[8] = &unk_1F46E57D8;
  v9[9] = &unk_1F46E57E8;
  v8[10] = @"minimumMetadataDistanceThreshold";
  v8[11] = @"metadataDistanceThresholdDecrement";
  v9[10] = &unk_1F46E57F8;
  v9[11] = &unk_1F46E57D8;
  v8[12] = @"promptComparisonCount";
  v9[12] = &unk_1F46E51B0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:13];
  v11[53] = v4;
  v11[54] = &unk_1F46E51C8;
  v10[54] = @"PNPromptValidationAssetCountThreshold";
  v10[55] = @"PNPromptValidationBatchSize";
  v11[55] = &unk_1F46E5150;
  v11[56] = v3;
  v10[56] = @"PNDebugContextualPromptSuggestionsFromAllMemories";
  v10[57] = @"PNUseCachedQueryTokensForSuggestions";
  v11[57] = v2;
  v11[58] = v3;
  v10[58] = @"PNAlwaysShowCreativePrompts";
  v10[59] = @"PNEnablePromptSuggestionPlistCache";
  v11[59] = v2;
  v11[60] = &unk_1F46E51E0;
  v10[60] = @"PNGlobalTraitsModelVersion";
  v10[61] = @"PNStorytellerModelVersion";
  v11[61] = &unk_1F46E51E0;
  v11[62] = &unk_1F46E51E0;
  v10[62] = @"PNAssetCurationModelVersion";
  v10[63] = @"PNUseGlobalTraitsV3";
  v10[64] = @"PNUseGlobalTraitsV3Captions";
  v11[63] = v2;
  v11[64] = v3;
  v10[65] = @"PNUseGlobalTraitsV3TitleAndQuery";
  v11[65] = v2;
  v10[66] = @"PNUseGlobalTraitsV3MetadataOnlySearch";
  v11[66] = v3;
  v10[67] = @"PNUseGlobalTraitsV3EmbeddingOnlySearch";
  v11[67] = v2;
  v10[68] = @"PNGlobalTraitsUseMomentValidation";
  v11[68] = v3;
  v10[69] = @"PNGlobalTraitsNumberOfTraitsForMomentOverlap";
  v11[69] = &unk_1F46E5198;
  v10[70] = @"PNGlobalTraitsUseSemanticSimilarity";
  v11[70] = v3;
  v10[71] = @"PNGlobalTraitsMaximumTextSimilarityScore";
  v11[71] = &unk_1F46E57C8;
  v10[72] = @"PNGlobalTraitsUseAPhotoOfBeforeTrait";
  v11[72] = v3;
  v10[73] = @"PNEnableQueryAnnotationPipelineInPhotos";
  v11[73] = v2;
  v10[74] = @"PNUseQueryAnnotationPromptBindingPersonAndPetNames";
  v11[74] = v2;
  v10[75] = @"PNQueryAnnotationEnableLocationPromptBinding";
  v11[75] = v3;
  v10[76] = @"PNUseQueryAnnotationPromptBindingNumberOfPersonAndPetNames";
  v11[76] = &unk_1F46E5180;
  v10[77] = @"PNUseQueryAnnotationPromptBindingNumberOfLocationNames";
  v11[77] = &unk_1F46E5180;
  v10[78] = @"PNMinimumCumulativeDistributionOfMomentFrequency";
  v11[78] = &unk_1F46E57E8;
  v10[79] = @"PNUseNormalDistributionForMoments";
  v11[79] = v2;
  v10[80] = @"PNTargetNumberOfEventSuggestions";
  v11[80] = &unk_1F46E51F8;
  v10[81] = @"kPNUseOtherQueryTokenAssetsForEventDisambiguation";
  v11[81] = v3;
  v10[82] = @"kPNMinimumNumberOfLongTrips";
  v11[82] = &unk_1F46E5210;
  v10[83] = @"PNUseShadowNamesInAssetCuration";
  v11[83] = v2;
  v10[84] = @"PNUsePersonPromptAnnotations";
  v11[84] = v2;
  v10[85] = @"PNUsePersonAndPetExtendedTokensInAssetCuration";
  v11[85] = v3;
  v10[86] = @"PNMaximumNumberOfAssetsToCurateOnForHastings";
  v11[86] = &unk_1F46E5228;
  v10[87] = @"PNPersonalTraitMinRatioOfAssets";
  v11[87] = &unk_1F46E5808;
  v10[88] = @"PNPersonalTraitGaussianFilteringCDFThreshold";
  v11[88] = &unk_1F46E5748;
  v10[89] = @"PNPersonalTraitWeightedRandomSamplingTemperature";
  v11[89] = &unk_1F46E5818;
  v10[90] = @"PNPersonalTraitMosaicMinRatioOfAssets";
  v11[90] = &unk_1F46E5828;
  v10[91] = @"PNPersonalTraitMosaicGaussianFilteringCDFThreshold";
  v11[91] = &unk_1F46E5838;
  v10[92] = @"PNEnableLibraryUnderstandingPersonalTraits";
  v11[92] = v2;
  v10[93] = @"PNUseLibraryUnderstandingOvernightProcessedResults";
  v11[93] = v2;
  v10[94] = @"PNEnableClusterByClusterForLibraryUnderstandingPersonalTraits";
  v11[94] = v3;
  v10[95] = @"PNMaximumNumberOfAssetsPerMomentBatchForLibraryUnderstandingPersonalTraits";
  v11[95] = &unk_1F46E5240;
  v10[96] = @"PNMaximumNumberOfClustersForLibraryUnderstanding";
  v11[96] = &unk_1F46E5180;
  v10[97] = @"PNNumberOfRepresentativeAssetsPerClusterForLibraryUnderstanding";
  v11[97] = &unk_1F46E5258;
  v10[98] = @"PNEnableFinalTraitLimit";
  v11[98] = v2;
  v10[99] = @"PNMaximumNumberOfConsolidatedTraits";
  v11[99] = &unk_1F46E5270;
  v10[100] = @"PNUseAllTraitsAboveThresholdInTitler";
  v11[100] = v2;
  v10[101] = @"PNMinimumAssetOverlapForThresholdTitler";
  v11[101] = &unk_1F46E57D8;
  v10[102] = @"PNUseStorytellerSelectedTraitsForTitler";
  v11[102] = v3;
  v10[103] = @"PNIncludeRelatedMessagesBackdropSuggestions";
  v11[103] = v2;
  v10[104] = @"kPNMemoryStoryNextStyleIndex";
  v11[104] = &unk_1F46E5288;
  v10[105] = @"PNSpatial3DTextureCompressionPhase";
  v11[105] = &unk_1F46E52A0;
  v10[106] = @"PNEnableSpatial3DBackgroundPersistence";
  v11[106] = v3;
  v10[107] = @"PNSpatial3DImageCompressionCodec";
  v11[107] = &unk_1F46E52B8;
  v10[108] = @"PNSpatial3DImageCompressionQuality";
  v11[108] = &unk_1F46E5718;
  v10[109] = @"PNSpatial3DMinimumGenerationTime";
  v11[109] = &unk_1F46E5848;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:110];
  [standardUserDefaults registerDefaults:v5];

  v6 = xpc_copy_entitlement_for_self();
  if (v6 == MEMORY[0x1E69E9E10])
  {
    [_TtC18PhotosIntelligence11LLMDefaults setupDefaultBackendWithRemoveUserOverwrite:0 enableLogging:0];
  }
}

+ (NSString)fallbackStorytelling30bModelName
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNFallbackStorytelling30bModelName"];

  return v3;
}

+ (NSString)fallbackAssetCuration30bModelName
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNFallbackAssetCuration30bModelName"];

  return v3;
}

+ (NSString)fallbackGlobalTraits30bModelName
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNFallbackGlobalTraits30bModelName"];

  return v3;
}

+ (BOOL)useGlobalTraitsV3
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseGlobalTraitsV3"];

  return v3;
}

+ (BOOL)generateOnDeviceTitle
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNGenerateOnDeviceTitle"];

  return v3;
}

+ (BOOL)useOnDeviceAssetCurationOutlier
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseOnDeviceAssetCurationOutlier"];

  return v3;
}

+ (NSString)memoryCreationAvailabilityState
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNMemoryCreationAvailabilityState"];

  return v3;
}

+ (double)spatial3DMinimumGenerationTime
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNSpatial3DMinimumGenerationTime"];
  v4 = v3;

  return v4;
}

+ (double)spatial3DImageCompressionQuality
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNSpatial3DImageCompressionQuality"];
  v4 = v3;

  return v4;
}

+ (int64_t)spatial3DImageCompressionCodec
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNSpatial3DImageCompressionCodec"];

  return v3;
}

+ (int64_t)spatial3DTextureCompressionPhase
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNSpatial3DTextureCompressionPhase"];

  return v3;
}

+ (BOOL)enableSpatial3DBackgroundPersistence
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableSpatial3DBackgroundPersistence"];

  return v3;
}

+ (BOOL)includeRelatedMessagesBackdropSuggestions
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNIncludeRelatedMessagesBackdropSuggestions"];

  return v3;
}

+ (int64_t)generateNextStoryTitleStyleIndex
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults integerForKey:@"kPNMemoryStoryNextStyleIndex"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setInteger:v4 + 1 forKey:@"kPNMemoryStoryNextStyleIndex"];

  objc_sync_exit(selfCopy);
  return v4;
}

+ (NSString)eventElectionMode
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNEventElectionMode"];

  return v3;
}

+ (int64_t)maximumNumberOfAssetsToCurateOnForHastingsCuration
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNMaximumNumberOfAssetsToCurateOnForHastings"];

  return v3;
}

+ (BOOL)usePersonAndPetExtendedTokensInAssetCuration
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUsePersonAndPetExtendedTokensInAssetCuration"];

  return v3;
}

+ (BOOL)usePersonPromptAnnotations
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUsePersonPromptAnnotations"];

  return v3;
}

+ (BOOL)useShadowNamesInAssetCuration
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseShadowNamesInAssetCuration"];

  return v3;
}

+ (BOOL)useNormalDistributionForMoments
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseNormalDistributionForMoments"];

  return v3;
}

+ (double)minimumCumulativeDistributionOfMomentFrequency
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNMinimumCumulativeDistributionOfMomentFrequency"];
  v4 = v3;

  return v4;
}

+ (BOOL)globalTraitsUseAPhotoOfBeforeTrait
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNGlobalTraitsUseAPhotoOfBeforeTrait"];

  return v3;
}

+ (NSNumber)globalTraitsMaximumTextSimilarityScore
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PNGlobalTraitsMaximumTextSimilarityScore"];

  return v3;
}

+ (BOOL)globalTraitsUseSemanticSimilarity
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNGlobalTraitsUseSemanticSimilarity"];

  return v3;
}

+ (int64_t)globalTraitsNumberOfTraitsForMomentOverlap
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNGlobalTraitsNumberOfTraitsForMomentOverlap"];

  return v3;
}

+ (BOOL)globalTraitsUseMomentValidation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNGlobalTraitsUseMomentValidation"];

  return v3;
}

+ (BOOL)useGlobalTraitsV3EmbeddingOnlySearch
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseGlobalTraitsV3EmbeddingOnlySearch"];

  return v3;
}

+ (BOOL)useGlobalTraitsV3MetadataOnlySearch
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseGlobalTraitsV3MetadataOnlySearch"];

  return v3;
}

+ (BOOL)useGlobalTraitsV3TitleAndQuery
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseGlobalTraitsV3TitleAndQuery"];

  return v3;
}

+ (BOOL)useGlobalTraitsV3Captions
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseGlobalTraitsV3Captions"];

  return v3;
}

+ (NSString)queryUnderstandingLocale
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNQueryUnderstandingLocale"];

  return v3;
}

+ (NSString)assetCurationLocale
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNAssetCurationLocale"];

  return v3;
}

+ (NSString)titleLocale
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNTitleLocale"];

  return v3;
}

+ (NSString)storytellerLocale
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNStorytellerLocale"];

  return v3;
}

+ (NSString)globalTraitsLocale
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNGlobalTraitsLocale"];

  return v3;
}

+ (int64_t)assetCurationModelVersion
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNAssetCurationModelVersion"];

  return v3;
}

+ (int64_t)storytellerModelVersion
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNStorytellerModelVersion"];

  return v3;
}

+ (int64_t)globalTraitsModelVersion
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNGlobalTraitsModelVersion"];

  return v3;
}

+ (BOOL)enableMockGeneralMCError
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableGeneralMCError"];

  return v3;
}

+ (BOOL)enableMockCocoaDomainError
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableMockCocoaDomainError"];

  return v3;
}

+ (BOOL)enableMockServerRequestTimeout
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableMockServerRequestTimeout"];

  return v3;
}

+ (BOOL)enableMockNotEnoughAssetsError
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableMockNotEnoughAssetsError"];

  return v3;
}

+ (BOOL)enableMockNetworkError
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableMockNetworkError"];

  return v3;
}

+ (BOOL)enableMockRateLimitingError
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableMockRateLimitingError"];

  return v3;
}

+ (BOOL)useStillAssetsOnlyInBackground
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseStillAssetsOnlyInBackground"];

  return v3;
}

+ (BOOL)forceMCMontagePath
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNForceMCMontagePath"];

  return v3;
}

+ (int64_t)storyGenerationPipeline
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"kPNStoryGenerationPipeline"];

  return v3;
}

+ (BOOL)enableTraitDeduping
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNEnableTraitDeduping"];

  return v3;
}

+ (BOOL)dontSplitMomentsAcrossChaptersForImplicitMontage
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNDontSplitMomentsAcrossChaptersForImplicitMontage"];

  return v3;
}

+ (NSNumber)chapterCuratorFeatureTypesForDistribution
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNChapterCuratorFeatureTypesForDistribution"];

  return v3;
}

+ (BOOL)enableStorytellingMomentFiltering
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNEnableStorytellingMomentFiltering"];

  return v3;
}

+ (NSString)shufflePromptParametersSeed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNShufflePromptParametersSeed"];

  return v3;
}

+ (BOOL)shufflePromptParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNShufflePromptParameters"];

  return v3;
}

+ (BOOL)promotePlayableAssetsInStories
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNPromotePlayableAssetsInStories"];

  return v3;
}

+ (double)chapterValidatorMinimumCoverageOfStoryAssetsInFinalChapters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNChapterValidatorMinimumCoverageOfStoryAssetsInFinalChapters"];
  v4 = v3;

  return v4;
}

+ (int64_t)chapterValidatorMinimumNumberOfRetrievedFilteredAssetPerChapter
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"kPNChapterValidatorMinimumNumberOfRetrievedFilteredAssetPerChapter"];

  return v3;
}

+ (double)chapterValidatorMinimumRatioOfNonoverlappingAssetsForDistinctShot
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNChapterValidatorMinimumRatioOfNonoverlappingAssetsForDistinctShot"];
  v4 = v3;

  return v4;
}

+ (int64_t)chapterValidatorMinimumNumberOfMatchingShotsForFocusedChapters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"kPNChapterValidatorMinimumNumberOfMatchingShotsForFocusedChapters"];

  return v3;
}

+ (double)chapterValidatorMinimumRatioOfMatchingShotsForFocusedChapters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNChapterValidatorMinimumRatioOfMatchingShotsForFocusedChapters"];
  v4 = v3;

  return v4;
}

+ (double)chapterValidatorMatchingRatioThresholdPerShotForFocusedChapters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNChapterValidatorMatchingRatioThresholdPerShotForFocusedChapters"];
  v4 = v3;

  return v4;
}

+ (BOOL)enableChapterValidator
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNEnableChapterValidator"];

  return v3;
}

+ (NSNumber)numberOfChronologicalStorySelectedTraits
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNNumberOfChronologicalStorySelectedTraits"];

  return v3;
}

+ (NSNumber)chapterCurationRandomizerSeed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNChapterCurationRandomizerSeed"];

  return v3;
}

+ (int64_t)maximumNumberOfAssetsPerMomentBatchForLibraryUnderstandingPersonalTraits
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNMaximumNumberOfAssetsPerMomentBatchForLibraryUnderstandingPersonalTraits"];

  return v3;
}

+ (BOOL)useLibraryUnderstandingOvernightProcessedResults
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseLibraryUnderstandingOvernightProcessedResults"];

  return v3;
}

+ (BOOL)enableClusterByClusterForLibraryUnderstandingPersonalTraits
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableClusterByClusterForLibraryUnderstandingPersonalTraits"];

  return v3;
}

+ (BOOL)useStorytellerSelectedTraitsForTitler
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseStorytellerSelectedTraitsForTitler"];

  return v3;
}

+ (double)minimumAssetOverlapForThresholdTitler
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNMinimumAssetOverlapForThresholdTitler"];
  v4 = v3;

  return v4;
}

+ (BOOL)useAllTraitsAboveThresholdInTitler
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseAllTraitsAboveThresholdInTitler"];

  return v3;
}

+ (int64_t)numberOfRepresentativeAssetsPerClusterForLibraryUnderstanding
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNNumberOfRepresentativeAssetsPerClusterForLibraryUnderstanding"];

  return v3;
}

+ (int64_t)maximumNumberOfClustersForLibraryUnderstanding
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNMaximumNumberOfClustersForLibraryUnderstanding"];

  return v3;
}

+ (int64_t)maximumNumberOfConsolidatedTraits
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNMaximumNumberOfConsolidatedTraits"];

  return v3;
}

+ (BOOL)enableFinalTraitLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableFinalTraitLimit"];

  return v3;
}

+ (BOOL)enableLibraryUnderstandingPersonalTraits
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableLibraryUnderstandingPersonalTraits"];

  return v3;
}

+ (double)personalTraitMosaicGaussianFilteringCDFThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNPersonalTraitMosaicGaussianFilteringCDFThreshold"];
  v4 = v3;

  return v4;
}

+ (double)personalTraitMosaicMinRatioOfAssets
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNPersonalTraitMosaicMinRatioOfAssets"];
  v4 = v3;

  return v4;
}

+ (NSNumber)personalTraitWeightedRandomSamplingSeed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PNPersonalTraitWeightedRandomSamplingSeed"];

  return v3;
}

+ (double)personalTraitWeightedRandomSamplingTemperature
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNPersonalTraitWeightedRandomSamplingTemperature"];
  v4 = v3;

  return v4;
}

+ (double)personalTraitGaussianFilteringCDFThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNPersonalTraitGaussianFilteringCDFThreshold"];
  v4 = v3;

  return v4;
}

+ (double)personalTraitMinRatioOfAssets
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNPersonalTraitMinRatioOfAssets"];
  v4 = v3;

  return v4;
}

+ (NSNumber)numberOfTraitsToSelect
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNStoryGenerationNumberOfTraitsToSelect"];

  return v3;
}

+ (NSNumber)numberOfShotsPerChapter
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNStoryGenerationNumberOfShotsPerChapter"];

  return v3;
}

+ (NSNumber)numberOfChaptersPerStory
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNStoryGenerationNumberOfChaptersPerStory"];

  return v3;
}

+ (NSNumber)numberOfGlobalTraits
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"kPNStoryGenerationNumberOfGlobalTraits"];

  return v3;
}

+ (BOOL)saveVisualClustersToDebugAlbums
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNSaveVisualClustersToDebugAlbums"];

  return v3;
}

+ (BOOL)enableMediaAnalysisEmbeddingSearch
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableMediaAnalysisEmbeddingSearch"];

  return v3;
}

+ (BOOL)enableOnDemandCaptionGeneration
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableOnDemandCaptionGeneration"];

  return v3;
}

+ (BOOL)disableLLMAssetCuration
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNDisableLLMAssetCuration"];

  return v3;
}

+ (double)storyMusicCurationTimeoutSeconds
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNStoryMusicCurationTimeoutSeconds"];
  v4 = v3;

  return v4;
}

+ (NSDictionary)musicKeywordsThimbleParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNMusicKeywordsThimbleParameters"];

  return v3;
}

+ (NSDictionary)musicKeywordsPegasusParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNMusicKeywordsPegasusParameters"];

  return v3;
}

+ (BOOL)enablePromptSuggestionPlistCache
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnablePromptSuggestionPlistCache"];

  return v3;
}

+ (BOOL)alwaysShowCreativePrompts
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNAlwaysShowCreativePrompts"];

  return v3;
}

+ (BOOL)useCachedQueryTokensForSuggestions
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseCachedQueryTokensForSuggestions"];

  return v3;
}

+ (BOOL)debugContextualPromptSuggestionsFromAllMemories
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNDebugContextualPromptSuggestionsFromAllMemories"];

  return v3;
}

+ (NSString)mockMomentDataFromFile
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNMockMomentDataFromFile"];

  return v3;
}

+ (int64_t)promptValidationBatchSize
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNPromptValidationBatchSize"];

  return v3;
}

+ (int64_t)promptValidationAssetCountThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNPromptValidationAssetCountThreshold"];

  return v3;
}

+ (NSDictionary)promptRankingParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNPromptRankingParameters"];

  return v3;
}

+ (NSDictionary)freeformTitleThimbleParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNFreeformTitleThimbleParameters"];

  return v3;
}

+ (NSDictionary)freeformTitlePegasusParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNFreeformTitlePegasusParameters"];

  return v3;
}

+ (NSDictionary)freeformStoryOnDeviceParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNFreeformStoryOnDeviceParameters"];

  return v3;
}

+ (NSDictionary)freeformStoryThimbleParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNFreeformStoryThimbleParameters"];

  return v3;
}

+ (NSDictionary)freeformStoryPegasusParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNFreeformStoryPegasusParameters"];

  return v3;
}

+ (NSDictionary)assetCurationThimbleParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNAssetCurationThimbleParameters"];

  return v3;
}

+ (NSDictionary)assetCurationPegasusParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNAssetCurationPegasusParameters"];

  return v3;
}

+ (NSDictionary)globalTraitsOnDeviceParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNGlobalTraitsOnDeviceParameters"];

  return v3;
}

+ (NSDictionary)globalTraitsThimbleParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNGlobalTraitsThimbleParameters"];

  return v3;
}

+ (NSDictionary)globalTraitsPegasusParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults dictionaryForKey:@"PNGlobalTraitsPegasusParameters"];

  return v3;
}

+ (NSString)fallbackQueryUnderstanding30bModelName
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNFallbackQueryUnderstanding30bModelName"];

  return v3;
}

+ (BOOL)forceSequentialAssetCurationCalls
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNForceSequentialAssetCurationCalls"];

  return v3;
}

+ (NSNumber)storytellerSelectedTraitsCount
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PNStorytellerSelectedTraitsCount"];

  return v3;
}

+ (NSNumber)globalAndPersonalTraitsSeed
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PNGlobalAndPersonalTraitsSeed"];

  return v3;
}

+ (BOOL)useFallbackTitleForMiniMC
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseFallbackTitleForMiniMC"];

  return v3;
}

+ (BOOL)useGMSStreaming
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseGMSStreaming"];

  return v3;
}

+ (double)assetScopingTokenPromotionLikeliness
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNAssetScopingTokenPromotionLikeliness"];
  v4 = v3;

  return v4;
}

+ (int64_t)tripHighlightRepresentativeAssetsMinimumThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"PNTripHighlightRepresentativeAssetsThreshold"];
  v4 = v3;

  return v4;
}

+ (BOOL)enableAssetScopingTokenPromotion
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableAssetScopingTokenPromotion"];

  return v3;
}

+ (NSString)appleMusicMCPrivacyDisclosureState
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNAppleMusicMCPrivacyDisclosureState"];

  return v3;
}

+ (NSString)appleMusicSmartSearchMode
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNAppleMusicSmartSearchMode"];

  return v3;
}

+ (NSString)storyMusicMaestroEmbeddingApproach
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNStoryMusicMaestroEmbeddingApproach"];

  return v3;
}

+ (BOOL)usePhotoKitBatchSPIForRetrieval
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNUsePhotoKitBatchSPIForRetrieval"];

  return v3;
}

+ (int64_t)queryPeopleRequiredInRetrievalTripLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNQueryPeopleRequiredInTripMomentLimit"];

  return v3;
}

+ (int64_t)queryPeopleRequiredInRetrievalMomentLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNQueryPeopleRequiredInRetrievalMomentLimit"];

  return v3;
}

+ (int64_t)placeholderAssetFetchMultiplier
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNPlaceholderAssetFetchMultiplier"];

  return v3;
}

+ (int64_t)keyAssetEmbeddingSearchRetrievalLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNKeyAssetEmbeddingSearchRetrievalLimit"];

  return v3;
}

+ (int64_t)shotlistMatchingEmbeddingSearchRetrievalLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNShotlistMatchingEmbeddingSearchRetrievalLimit"];

  return v3;
}

+ (int64_t)globalTraitsMatchingEmbeddingSearchRetrievalLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNGlobalTraitsMatchingEmbeddingSearchRetrievalLimit"];

  return v3;
}

+ (int64_t)globalTraitsScopingEmbeddingSearchRetrievalLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNGlobalTraitsScopingEmbeddingSearchRetrievalLimit"];

  return v3;
}

+ (int64_t)userQueryEmbeddingSearchRetrievalLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNUserQueryEmbeddingSearchRetrievalLimit"];

  return v3;
}

+ (int64_t)maximumNumberOfMomentsForStoryGeneration
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNMaximumNumberOfMomentsForStoryGeneration"];

  return v3;
}

+ (BOOL)useOtherQueryTokenAssetsForEventDisambiguation
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"kPNUseOtherQueryTokenAssetsForEventDisambiguation"];

  return v3;
}

+ (int64_t)targetNumberOfEventSuggestions
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNTargetNumberOfEventSuggestions"];

  return v3;
}

+ (NSNumber)storyAssetsFetcherSimilarityThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNStoryAssetsFetcherSimilarityThreshold"];

  if ([v3 length])
  {
    v4 = MEMORY[0x1E696AD98];
    [v3 doubleValue];
    v5 = [v4 numberWithDouble:?];
  }

  else
  {
    v5 = &unk_1F46E5858;
  }

  return v5;
}

+ (int64_t)queryAnnotationPromptBindingNumberOfLocationNames
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNUseQueryAnnotationPromptBindingNumberOfLocationNames"];

  return v3;
}

+ (int64_t)queryAnnotationPromptBindingNumberOfPersonAndPetNames
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNUseQueryAnnotationPromptBindingNumberOfPersonAndPetNames"];

  return v3;
}

+ (BOOL)enableLocationPromptBinding
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNQueryAnnotationEnableLocationPromptBinding"];

  return v3;
}

+ (BOOL)useQueryAnnotationPromptBindingPersonAndPetNames
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNUseQueryAnnotationPromptBindingPersonAndPetNames"];

  return v3;
}

+ (BOOL)enableQueryAnnotationPipelineInPhotos
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNEnableQueryAnnotationPipelineInPhotos"];

  return v3;
}

+ (int64_t)minimumNumberOfLongTrips
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"kPNMinimumNumberOfLongTrips"];

  return v3;
}

+ (double)shotlistMatchingRetrievalThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNRetrievalThresholdShotlistMatching"];
  v4 = v3;

  return v4;
}

+ (double)assetsSelectionUsingOverlappingMomentsThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNAssetsSelectionUsingOverlappingMomentsThreshold"];
  v4 = v3;

  return v4;
}

+ (double)globalTraitsRetrievalThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNRetrievalThresholdGlobalTraits"];
  v4 = v3;

  return v4;
}

+ (double)globalTraitsScopedAssetsRetrievalThreshold
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"kPNRetrievalThresholdGlobalTraitsScopedAssets"];
  v4 = v3;

  return v4;
}

+ (NSString)fallbackBase30bModelName
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNFallbackBase30bModelName"];

  return v3;
}

+ (NSString)ajaxDawToken
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"PNAjaxDawToken"];

  return v3;
}

+ (BOOL)locationCurationAvoidPeople
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PNLocationCurationAvoidPeople"];

  return v3;
}

+ (int64_t)promoterStatusVerifiedPersonLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNPromoterStatusVerifiedPersonLimit"];

  return v3;
}

+ (int64_t)promoterStatusMergeCandidateLimit
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PNPromoterStatusMergeCandidateLimit"];

  return v3;
}

@end