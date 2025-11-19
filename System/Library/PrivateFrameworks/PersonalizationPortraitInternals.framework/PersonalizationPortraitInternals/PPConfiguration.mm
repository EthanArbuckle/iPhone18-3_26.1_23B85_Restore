@interface PPConfiguration
+ (id)sharedInstance;
+ (void)reload;
- (BOOL)enableECRMessageTokenCountsPlugin;
- (BOOL)flattenNamedEntitiesForCoreML;
- (BOOL)flattenTopicsForCoreML;
- (BOOL)isMultilingual;
- (BOOL)locationFeedbackUsesCoreML;
- (BOOL)locationScoringUsesCoreML;
- (BOOL)locationScoringUsesHybrid;
- (BOOL)namedEntityFeedbackUsesCoreML;
- (BOOL)namedEntityScoringUsesCoreML;
- (BOOL)namedEntityScoringUsesHybrid;
- (BOOL)notificationExtractionEnabled;
- (BOOL)portraitMusicDataCollectionCollectNonAMPNowPlaying;
- (BOOL)safariDataDetectorsEnabledForHighMemoryDevices;
- (BOOL)safariDonationTitleExtractionEnabled;
- (BOOL)skipInsignificantEmailExtractions;
- (BOOL)storeNewExtractions;
- (BOOL)topicFeedbackUsesCoreML;
- (BOOL)topicMappingUsesCoreML;
- (BOOL)topicScoringUsesCoreML;
- (BOOL)topicScoringUsesHybrid;
- (BOOL)use2StageScoreInterpreterForLocationScoring;
- (BOOL)use2StageScoreInterpreterForNEScoring;
- (BOOL)use2StageScoreInterpreterForTPScoring;
- (BOOL)useCachedPortraitScores;
- (BOOL)useRawNEExtractionScores;
- (PPConfiguration)initWithTrialWrapper:(id)a3;
- (double)decayedFeedbackCountsHalfLifeDays;
- (double)halfValuePosition;
- (double)locationDecayHalfLifeSeconds;
- (double)mapsSearchQueryFromDateInterval;
- (double)maxEmailHarvestingEligiblityInterval;
- (double)namedEntityDecayHalfLifeSeconds;
- (double)navigationMinimumTimeInterval;
- (double)nonReaderTextWeight;
- (double)portraitAnalyticsSamplingRate;
- (double)portraitMusicDataCollectionSamplingRateForAMP;
- (double)portraitMusicDataCollectionSamplingRateForCTS;
- (double)routineExtractionScoreCountWeight;
- (double)routineExtractionScoreDecayHalfLifeDays;
- (double)routineExtractionScoreDurationWeight;
- (double)scoreThreshold;
- (double)socialHighlightCacheTimeoutInterval;
- (double)socialHighlightDecayInterval;
- (double)socialHighlightFeedbackDeletionInterval;
- (double)socialHighlightMetricReportingInterval;
- (double)socialHighlightRankedStorageMaxAge;
- (double)sportsMetricsSamplingRate;
- (double)topicDecayHalfLifeSeconds;
- (double)topicMappingCoreMLThreshold;
- (float)feedbackSessionLogsExtractionsSamplingRate;
- (float)feedbackSessionLogsSamplingRate;
- (float)recordSourceContactsInitialScore;
- (float)recordSourceNonContactsInitialScore;
- (float)remoteTopicsMultiplier;
- (float)scoreThresholdForLocation;
- (float)scoreThresholdForNamedEntity;
- (float)scoreThresholdForTopic;
- (float)topicsMultiplierForBundleId:(id)a3 algorithm:(unint64_t)a4;
- (id)_algorithmsForNode:(id)a3 bundleId:(id)a4 customRules:(id)a5;
- (id)_algorithmsToDelete:(id)a3 bundleId:(id)a4 customRules:(id)a5;
- (id)_mapAlgorithmNamesToNumbers:(id)a3 domain:(unsigned __int8)a4;
- (id)availablePortraitVariantNames;
- (id)contactsLabelScoringMap;
- (id)differentiallyPrivateEntityLogLevels;
- (id)engagementKValues;
- (id)feedbackSessionLogsSamplingRateOverrides;
- (id)hyperparametersForMappingId:(id)a3;
- (id)naturalPortraitVariantName;
- (id)portraitMusicDataCollectionAMPBundleIds;
- (id)portraitVariantName;
- (id)sportsMetricsEventName;
- (id)topicCalibrationTrie;
- (id)trialWrapperReloadingIfNeeded;
- (int)feedbackSessionLogsGeohashLength;
- (int)maxNumberMappedTopics;
- (int)maxNumberNamedEntities;
- (int)portraitAnalyticsMaximumNumberOfRecords;
- (int)portraitMusicDataCollectionMaximumRecordsPerType;
- (int)queryTimeNextFromMinutes;
- (int)sportsMetricsNumberOfLeaguesLogged;
- (int)sportsMetricsNumberOfTeamsLogged;
- (unint64_t)maxUniqueTokensInECRTokenCounts;
- (unint64_t)sentenceEmbeddingVersion;
- (unsigned)customTaggerMaxTokenCount;
- (unsigned)mapsSearchQueryLimit;
- (unsigned)maxItemsInFeatureDictionary;
- (unsigned)maxNEExtractions;
- (unsigned)maxRelevantHighlightContacts;
- (unsigned)namedEntityLoadAndMonitorInitialLoadLimit;
- (unsigned)navigationMinimumDistanceInMeters;
- (unsigned)nextEventsFuzzMinutes;
- (unsigned)peopleSuggesterMax;
- (unsigned)queryTimeNextToMinutes;
- (unsigned)queryTimeOtherToMinutes;
- (unsigned)socialHighlightMaxNumHighlights;
- (unsigned)socialHighlightTopKCount;
- (void)_loadConfigParams;
- (void)_loadContactsConfigParams;
- (void)_loadContactsConfigParamsWithGuardedData:(id)a3;
- (void)_loadGlobalConfigParams;
- (void)_loadGlobalConfigParamsWithGuardedData:(id)a3;
- (void)_loadLocationsConfigParams;
- (void)_loadLocationsConfigParamsWithGuardedData:(id)a3;
- (void)_loadNamedEntitiesConfigParams;
- (void)_loadNamedEntitiesConfigParamsWithGuardedData:(id)a3;
- (void)_loadQuickTypeConfigParams;
- (void)_loadQuickTypeConfigParamsWithGuardedData:(id)a3;
- (void)_loadSocialHighlightConfigParams;
- (void)_loadSocialHighlightConfigParamsWithGuardedData:(id)a3;
- (void)_loadTopicsConfigParams;
- (void)_loadTopicsConfigParamsWithGuardedData:(id)a3;
- (void)_loadUniversalSearchConfigParams;
- (void)_loadUniversalSearchConfigParamsWithGuardedData:(id)a3;
@end

@implementation PPConfiguration

double __47__PPConfiguration_socialHighlightDecayInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 456);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)socialHighlightDecayInterval
{
  v13 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x2020000000;
  v12 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PPConfiguration_socialHighlightDecayInterval__block_invoke;
  v9[3] = &unk_278979228;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SocialLayer"];
  v5 = [v4 integerForKey:@"SharedWithYouDecayOverride"];
  if (v5 >= 1)
  {
    v6 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPConfiguration: Social highlights decay override with nonzero value found: %ld", &buf, 0xCu);
    }

    v3 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)sharedInstance
{
  v2 = +[PPTrialWrapper sharedInstance];
  pthread_mutex_lock(&configLock_25759);
  v3 = sharedConfig;
  if (!sharedConfig || (!*(sharedConfig + 32) ? (v4 = v2 == 0) : (v4 = 1), !v4))
  {
    v5 = [[PPConfiguration alloc] initWithTrialWrapper:v2];
    v6 = sharedConfig;
    sharedConfig = v5;

    v3 = sharedConfig;
  }

  v7 = v3;
  pthread_mutex_unlock(&configLock_25759);

  return v7;
}

- (double)socialHighlightCacheTimeoutInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__PPConfiguration_socialHighlightCacheTimeoutInterval__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __54__PPConfiguration_socialHighlightCacheTimeoutInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 472);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unsigned)socialHighlightTopKCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PPConfiguration_socialHighlightTopKCount__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)socialHighlightMaxNumHighlights
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PPConfiguration_socialHighlightMaxNumHighlights__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isMultilingual
{
  v2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v3 = [v2 count] > 1;

  return v3;
}

- (unint64_t)sentenceEmbeddingVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PPConfiguration_sentenceEmbeddingVersion__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)hyperparametersForMappingId:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__25295;
  v14 = __Block_byref_object_dispose__25296;
  v15 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PPConfiguration_hyperparametersForMappingId___block_invoke;
  v9[3] = &unk_278979228;
  v9[4] = &v10;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (unint64_t)maxUniqueTokensInECRTokenCounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PPConfiguration_maxUniqueTokensInECRTokenCounts__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)enableECRMessageTokenCountsPlugin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PPConfiguration_enableECRMessageTokenCountsPlugin__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)maxEmailHarvestingEligiblityInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PPConfiguration_maxEmailHarvestingEligiblityInterval__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __55__PPConfiguration_maxEmailHarvestingEligiblityInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 512);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)skipInsignificantEmailExtractions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PPConfiguration_skipInsignificantEmailExtractions__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)socialHighlightMetricReportingInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__PPConfiguration_socialHighlightMetricReportingInterval__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __57__PPConfiguration_socialHighlightMetricReportingInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 488);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)socialHighlightFeedbackDeletionInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPConfiguration_socialHighlightFeedbackDeletionInterval__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __58__PPConfiguration_socialHighlightFeedbackDeletionInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 480);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)socialHighlightRankedStorageMaxAge
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PPConfiguration_socialHighlightRankedStorageMaxAge__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __53__PPConfiguration_socialHighlightRankedStorageMaxAge__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 464);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unsigned)maxItemsInFeatureDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PPConfiguration_maxItemsInFeatureDictionary__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)useCachedPortraitScores
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PPConfiguration_useCachedPortraitScores__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)useRawNEExtractionScores
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PPConfiguration_useRawNEExtractionScores__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)storeNewExtractions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__PPConfiguration_storeNewExtractions__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)scoreThreshold
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__PPConfiguration_scoreThreshold__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __33__PPConfiguration_scoreThreshold__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 440);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unsigned)maxNEExtractions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__PPConfiguration_maxNEExtractions__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)maxRelevantHighlightContacts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PPConfiguration_maxRelevantHighlightContacts__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)queryTimeOtherToMinutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PPConfiguration_queryTimeOtherToMinutes__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)queryTimeNextFromMinutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__PPConfiguration_queryTimeNextFromMinutes__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)queryTimeNextToMinutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_queryTimeNextToMinutes__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)nextEventsFuzzMinutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PPConfiguration_nextEventsFuzzMinutes__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)navigationMinimumDistanceInMeters
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PPConfiguration_navigationMinimumDistanceInMeters__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)navigationMinimumTimeInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PPConfiguration_navigationMinimumTimeInterval__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __48__PPConfiguration_navigationMinimumTimeInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 392);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unsigned)peopleSuggesterMax
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PPConfiguration_peopleSuggesterMax__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)recordSourceNonContactsInitialScore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__PPConfiguration_recordSourceNonContactsInitialScore__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __54__PPConfiguration_recordSourceNonContactsInitialScore__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 380);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (float)recordSourceContactsInitialScore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPConfiguration_recordSourceContactsInitialScore__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __51__PPConfiguration_recordSourceContactsInitialScore__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 376);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)contactsLabelScoringMap
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PPConfiguration_contactsLabelScoringMap__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (double)mapsSearchQueryFromDateInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PPConfiguration_mapsSearchQueryFromDateInterval__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __50__PPConfiguration_mapsSearchQueryFromDateInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 352);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unsigned)mapsSearchQueryLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PPConfiguration_mapsSearchQueryLimit__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)namedEntityLoadAndMonitorInitialLoadLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__PPConfiguration_namedEntityLoadAndMonitorInitialLoadLimit__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)customTaggerMaxTokenCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPConfiguration_customTaggerMaxTokenCount__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)maxNumberNamedEntities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_maxNumberNamedEntities__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)maxNumberMappedTopics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PPConfiguration_maxNumberMappedTopics__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)routineExtractionScoreDecayHalfLifeDays
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPConfiguration_routineExtractionScoreDecayHalfLifeDays__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __58__PPConfiguration_routineExtractionScoreDecayHalfLifeDays__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 320);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)routineExtractionScoreDurationWeight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PPConfiguration_routineExtractionScoreDurationWeight__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __55__PPConfiguration_routineExtractionScoreDurationWeight__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 312);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)routineExtractionScoreCountWeight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PPConfiguration_routineExtractionScoreCountWeight__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __52__PPConfiguration_routineExtractionScoreCountWeight__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 304);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)locationScoringUsesCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPConfiguration_locationScoringUsesCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)topicMappingCoreMLThreshold
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PPConfiguration_topicMappingCoreMLThreshold__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __46__PPConfiguration_topicMappingCoreMLThreshold__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 288);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)topicMappingUsesCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_topicMappingUsesCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)use2StageScoreInterpreterForLocationScoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__PPConfiguration_use2StageScoreInterpreterForLocationScoring__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)use2StageScoreInterpreterForTPScoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PPConfiguration_use2StageScoreInterpreterForTPScoring__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)use2StageScoreInterpreterForNEScoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PPConfiguration_use2StageScoreInterpreterForNEScoring__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)engagementKValues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PPConfiguration_engagementKValues__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)locationFeedbackUsesCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PPConfiguration_locationFeedbackUsesCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)topicFeedbackUsesCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PPConfiguration_topicFeedbackUsesCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)namedEntityFeedbackUsesCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PPConfiguration_namedEntityFeedbackUsesCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)notificationExtractionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PPConfiguration_notificationExtractionEnabled__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)decayedFeedbackCountsHalfLifeDays
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PPConfiguration_decayedFeedbackCountsHalfLifeDays__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __52__PPConfiguration_decayedFeedbackCountsHalfLifeDays__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 256);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)flattenNamedEntitiesForCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PPConfiguration_flattenNamedEntitiesForCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)flattenTopicsForCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_flattenTopicsForCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)locationScoringUsesHybrid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPConfiguration_locationScoringUsesHybrid__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)topicScoringUsesHybrid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_topicScoringUsesHybrid__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)namedEntityScoringUsesHybrid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PPConfiguration_namedEntityScoringUsesHybrid__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)namedEntityScoringUsesCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PPConfiguration_namedEntityScoringUsesCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)topicScoringUsesCoreML
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_topicScoringUsesCoreML__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)locationDecayHalfLifeSeconds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PPConfiguration_locationDecayHalfLifeSeconds__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __47__PPConfiguration_locationDecayHalfLifeSeconds__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 240);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)namedEntityDecayHalfLifeSeconds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PPConfiguration_namedEntityDecayHalfLifeSeconds__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __50__PPConfiguration_namedEntityDecayHalfLifeSeconds__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 232);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)topicDecayHalfLifeSeconds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPConfiguration_topicDecayHalfLifeSeconds__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __44__PPConfiguration_topicDecayHalfLifeSeconds__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 224);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)portraitAnalyticsMaximumNumberOfRecords
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPConfiguration_portraitAnalyticsMaximumNumberOfRecords__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)feedbackSessionLogsGeohashLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPConfiguration_feedbackSessionLogsGeohashLength__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)feedbackSessionLogsExtractionsSamplingRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__PPConfiguration_feedbackSessionLogsExtractionsSamplingRate__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __61__PPConfiguration_feedbackSessionLogsExtractionsSamplingRate__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 208);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)feedbackSessionLogsSamplingRateOverrides
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PPConfiguration_feedbackSessionLogsSamplingRateOverrides__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (float)feedbackSessionLogsSamplingRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PPConfiguration_feedbackSessionLogsSamplingRate__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __50__PPConfiguration_feedbackSessionLogsSamplingRate__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 192);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (float)scoreThresholdForLocation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPConfiguration_scoreThresholdForLocation__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __44__PPConfiguration_scoreThresholdForLocation__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 188);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (float)scoreThresholdForTopic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_scoreThresholdForTopic__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __41__PPConfiguration_scoreThresholdForTopic__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 184);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (float)scoreThresholdForNamedEntity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PPConfiguration_scoreThresholdForNamedEntity__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __47__PPConfiguration_scoreThresholdForNamedEntity__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 180);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)safariDataDetectorsEnabledForHighMemoryDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PPConfiguration_safariDataDetectorsEnabledForHighMemoryDevices__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)safariDonationTitleExtractionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PPConfiguration_safariDonationTitleExtractionEnabled__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)topicCalibrationTrie
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PPConfiguration_topicCalibrationTrie__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (double)sportsMetricsSamplingRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPConfiguration_sportsMetricsSamplingRate__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __44__PPConfiguration_sportsMetricsSamplingRate__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 88);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)sportsMetricsEventName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_sportsMetricsEventName__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int)sportsMetricsNumberOfLeaguesLogged
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__PPConfiguration_sportsMetricsNumberOfLeaguesLogged__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)sportsMetricsNumberOfTeamsLogged
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPConfiguration_sportsMetricsNumberOfTeamsLogged__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)portraitMusicDataCollectionAMPBundleIds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__PPConfiguration_portraitMusicDataCollectionAMPBundleIds__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)portraitMusicDataCollectionCollectNonAMPNowPlaying
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__PPConfiguration_portraitMusicDataCollectionCollectNonAMPNowPlaying__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)portraitMusicDataCollectionMaximumRecordsPerType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__PPConfiguration_portraitMusicDataCollectionMaximumRecordsPerType__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)portraitMusicDataCollectionSamplingRateForAMP
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PPConfiguration_portraitMusicDataCollectionSamplingRateForAMP__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __64__PPConfiguration_portraitMusicDataCollectionSamplingRateForAMP__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)portraitMusicDataCollectionSamplingRateForCTS
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PPConfiguration_portraitMusicDataCollectionSamplingRateForCTS__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __64__PPConfiguration_portraitMusicDataCollectionSamplingRateForCTS__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)portraitAnalyticsSamplingRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PPConfiguration_portraitAnalyticsSamplingRate__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __48__PPConfiguration_portraitAnalyticsSamplingRate__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_mapAlgorithmNamesToNumbers:(id)a3 domain:(unsigned __int8)a4
{
  v4 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  objc_autoreleasePoolPop(v6);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      if (v4 == 2)
      {
        v14 = MEMORY[0x277D3A3F0];
      }

      else if (v4 == 1)
      {
        v14 = MEMORY[0x277D3A438];
      }

      else
      {
        if (v4)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{0, v21}];
          goto LABEL_14;
        }

        v14 = MEMORY[0x277D3A548];
      }

      v15 = [v14 algorithmForName:{*(*(&v21 + 1) + 8 * v12), v21}];
LABEL_14:
      v16 = v15;
      if (![v15 unsignedIntegerValue])
      {
        v18 = pp_default_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v26 = v13;
          v27 = 1024;
          v28 = v4;
          _os_log_fault_impl(&dword_23224A000, v18, OS_LOG_TYPE_FAULT, "PPConfiguration: unknown algorithm %@ in domain %d", buf, 0x12u);
        }

        v17 = objc_opt_new();
        goto LABEL_21;
      }

      [v7 addObject:v16];

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = [v7 copy];
LABEL_21:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_algorithmsToDelete:(id)a3 bundleId:(id)a4 customRules:(id)a5
{
  v6 = a4;
  v7 = a5;
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v7 objectForKeyedSubscript:@"DEL"];
    [v8 addObjectsFromArray:v9];

    v10 = [v7 objectForKeyedSubscript:@"BUNDLES"];
    v11 = [v6 lowercaseString];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = [v12 objectForKeyedSubscript:@"DEL"];
      [v8 addObjectsFromArray:v13];
    }
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)_algorithmsForNode:(id)a3 bundleId:(id)a4 customRules:(id)a5
{
  v6 = a4;
  v7 = a5;
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v7 objectForKeyedSubscript:@"ADD"];
    [v8 addObjectsFromArray:v9];

    v10 = [v7 objectForKeyedSubscript:@"BUNDLES"];
    v11 = [v6 lowercaseString];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = [v12 objectForKeyedSubscript:@"ADD"];
      [v8 addObjectsFromArray:v13];
    }
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)differentiallyPrivateEntityLogLevels
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PPConfiguration_differentiallyPrivateEntityLogLevels__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (float)topicsMultiplierForBundleId:(id)a3 algorithm:(unint64_t)a4
{
  v6 = a3;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__25295;
  v38 = __Block_byref_object_dispose__25296;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__25295;
  v32 = __Block_byref_object_dispose__25296;
  v33 = 0;
  v7 = [MEMORY[0x277D3A548] describeAlgorithm:a4];
  lock = self->_lock;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __57__PPConfiguration_topicsMultiplierForBundleId_algorithm___block_invoke;
  v23 = &unk_278979250;
  v26 = &v34;
  v9 = v6;
  v24 = v9;
  v27 = &v28;
  v10 = v7;
  v25 = v10;
  [(_PASLock *)lock runWithLockAcquired:&v20];
  v11 = v35;
  if (v35[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v11 = v35;
    v12 = v35[5];
  }

  else
  {
    v12 = 0;
  }

  v11[5] = &unk_284786150;

LABEL_6:
  v13 = v29;
  if (!v29[5])
  {
    v14 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = v29;
    v14 = v29[5];
LABEL_10:
    v13[5] = &unk_284786150;
  }

  [v35[5] floatValue];
  v16 = v15;
  [v29[5] floatValue];
  v18 = v16 * v17;

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

uint64_t __57__PPConfiguration_topicsMultiplierForBundleId_algorithm___block_invoke(void *a1, void *a2)
{
  v3 = a2[16];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 objectForKeyedSubscript:v4];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = v5[17];
  v10 = [v9 objectForKeyedSubscript:a1[5]];
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  return MEMORY[0x2821F96F8]();
}

- (double)nonReaderTextWeight
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__PPConfiguration_nonReaderTextWeight__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __38__PPConfiguration_nonReaderTextWeight__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)halfValuePosition
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PPConfiguration_halfValuePosition__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __36__PPConfiguration_halfValuePosition__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)availablePortraitVariantNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PPConfiguration_availablePortraitVariantNames__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)naturalPortraitVariantName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PPConfiguration_naturalPortraitVariantName__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)portraitVariantName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25295;
  v10 = __Block_byref_object_dispose__25296;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__PPConfiguration_portraitVariantName__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (float)remoteTopicsMultiplier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PPConfiguration_remoteTopicsMultiplier__block_invoke;
  v5[3] = &unk_278979228;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __41__PPConfiguration_remoteTopicsMultiplier__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_loadConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__PPConfiguration__loadConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __36__PPConfiguration__loadConfigParams__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _loadGlobalConfigParamsWithGuardedData:v4];
  [*(a1 + 32) _loadTopicsConfigParamsWithGuardedData:v4];
  [*(a1 + 32) _loadNamedEntitiesConfigParamsWithGuardedData:v4];
  [*(a1 + 32) _loadLocationsConfigParamsWithGuardedData:v4];
  [*(a1 + 32) _loadContactsConfigParamsWithGuardedData:v4];
  [*(a1 + 32) _loadQuickTypeConfigParamsWithGuardedData:v4];
  [*(a1 + 32) _loadSocialHighlightConfigParamsWithGuardedData:v4];
  [*(a1 + 32) _loadUniversalSearchConfigParamsWithGuardedData:v4];
}

- (void)_loadTopicsConfigParamsWithGuardedData:(id)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  v7 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v8 = [v7 filepathForFactor:@"topicCalibration.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

  if ([(__CFString *)v8 length])
  {
    v9 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v8];
    objc_storeStrong(v4 + 21, v9);
  }

  else
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = v8;
      _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPConfiguration: Empty or missing asset contents for %@", &v103, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v11 = [v10 plistForFactorName:@"configuration_topics.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

  if ([v11 count] <= 1)
  {
    v12 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v12)
    {
      v13 = pp_default_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v103) = 0;
        _os_log_error_impl(&dword_23224A000, v13, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad topics configuration plist from Trial. Falling back to assets in the build.", &v103, 2u);
      }

      v14 = objc_alloc(MEMORY[0x277CBEAC0]);
      v15 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v16 = [v15 defaultFilepathForFactor:@"configuration_topics.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
      v17 = [v14 initWithContentsOfFile:v16];

      v11 = v17;
    }
  }

  v18 = [v11 objectForKeyedSubscript:@"RemoteTopicsMultiplier"];
  if (!v18 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v20 = v18, (isKindOfClass & 1) == 0))
  {
    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"RemoteTopicsMultiplier";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v20 = &unk_284786140;
  }

  v23 = v20;

  [v23 floatValue];
  *(v4 + 2) = v24;

  v25 = [v11 objectForKeyedSubscript:@"TopicFeedbackUsesCoreML"];
  if (!v25 || (objc_opt_class(), v26 = objc_opt_isKindOfClass(), v27 = v25, (v26 & 1) == 0))
  {
    v28 = MEMORY[0x277D86220];
    v29 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"TopicFeedbackUsesCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v27 = &unk_284786140;
  }

  v30 = v27;

  *(v4 + 266) = [v30 BOOLValue];
  v31 = [v11 objectForKeyedSubscript:@"TopicMappingUsesCoreML"];
  if (!v31 || (objc_opt_class(), v32 = objc_opt_isKindOfClass(), v33 = v31, (v32 & 1) == 0))
  {
    v34 = MEMORY[0x277D86220];
    v35 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"TopicMappingUsesCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v33 = &unk_284786140;
  }

  v36 = v33;

  *(v4 + 283) = [v36 BOOLValue];
  v37 = [v11 objectForKeyedSubscript:@"TopicMappingCoreMLThreshold"];
  if (!v37 || (objc_opt_class(), v38 = objc_opt_isKindOfClass(), v39 = v37, (v38 & 1) == 0))
  {
    v40 = MEMORY[0x277D86220];
    v41 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"TopicMappingCoreMLThreshold";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v39 = &unk_284786140;
  }

  v42 = v39;

  [v42 doubleValue];
  v4[36] = v43;

  v44 = [v11 objectForKeyedSubscript:@"LinearModelHyperparameters"];
  if (!v44 || (objc_opt_class(), v45 = objc_opt_isKindOfClass(), v46 = v44, (v45 & 1) == 0))
  {
    v47 = MEMORY[0x277D86220];
    v48 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"LinearModelHyperparameters";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v46 = MEMORY[0x277CBEC10];
  }

  v49 = v46;

  v50 = v4[41];
  v4[41] = v49;

  v51 = [v11 objectForKeyedSubscript:@"Use2StageScoreInterpreterForTPScoring"];
  if (!v51 || (objc_opt_class(), v52 = objc_opt_isKindOfClass(), v53 = v51, (v52 & 1) == 0))
  {
    v54 = MEMORY[0x277D86220];
    v55 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"Use2StageScoreInterpreterForTPScoring";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v53 = &unk_284786140;
  }

  v56 = v53;

  *(v4 + 281) = [v56 BOOLValue];
  v57 = [v11 objectForKeyedSubscript:@"FlattenTopicsForCoreML"];
  if (!v57 || (objc_opt_class(), v58 = objc_opt_isKindOfClass(), v59 = v57, (v58 & 1) == 0))
  {
    v60 = MEMORY[0x277D86220];
    v61 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"FlattenTopicsForCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v59 = &unk_284786140;
  }

  v62 = v59;

  *(v4 + 250) = [v62 BOOLValue];
  v63 = [v11 objectForKeyedSubscript:@"TopicScoringUsesCoreML"];
  if (!v63 || (objc_opt_class(), v64 = objc_opt_isKindOfClass(), v65 = v63, (v64 & 1) == 0))
  {
    v66 = MEMORY[0x277D86220];
    v67 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"TopicScoringUsesCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v65 = &unk_284786140;
  }

  v68 = v65;

  *(v4 + 248) = [v68 BOOLValue];
  v69 = [v11 objectForKeyedSubscript:@"TopicScoringUsesHybrid"];
  if (!v69 || (objc_opt_class(), v70 = objc_opt_isKindOfClass(), v71 = v69, (v70 & 1) == 0))
  {
    v72 = MEMORY[0x277D86220];
    v73 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"TopicScoringUsesHybrid";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v71 = &unk_284786140;
  }

  v74 = v71;

  *(v4 + 253) = [v74 BOOLValue];
  v75 = [v11 objectForKeyedSubscript:@"TopicDecayHalfLifeSeconds"];
  if (!v75 || (objc_opt_class(), v76 = objc_opt_isKindOfClass(), v77 = v75, (v76 & 1) == 0))
  {
    v78 = MEMORY[0x277D86220];
    v79 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"TopicDecayHalfLifeSeconds";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v77 = &unk_284786140;
  }

  v80 = v77;

  [v80 doubleValue];
  v4[28] = v81;

  v82 = [v11 objectForKeyedSubscript:@"ScoreThresholdForTopic"];
  if (!v82 || (objc_opt_class(), v83 = objc_opt_isKindOfClass(), v84 = v82, (v83 & 1) == 0))
  {
    v85 = MEMORY[0x277D86220];
    v86 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"ScoreThresholdForTopic";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v84 = &unk_284786140;
  }

  v87 = v84;

  [v87 doubleValue];
  *&v88 = v88;
  *(v4 + 46) = LODWORD(v88);

  v89 = [v11 objectForKeyedSubscript:@"MaxNumberMappedTopics"];
  if (!v89 || (objc_opt_class(), v90 = objc_opt_isKindOfClass(), v91 = v89, (v90 & 1) == 0))
  {
    v92 = MEMORY[0x277D86220];
    v93 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"MaxNumberMappedTopics";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v91 = &unk_284786140;
  }

  v94 = v91;

  *(v4 + 84) = [v94 intValue];
  v95 = [v11 objectForKeyedSubscript:@"ExtractionAlgorithmConfiguration"];
  if (!v95 || (objc_opt_class(), v96 = objc_opt_isKindOfClass(), v97 = v95, (v96 & 1) == 0))
  {
    v98 = MEMORY[0x277D86220];
    v99 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v103 = 138412290;
      v104 = @"ExtractionAlgorithmConfiguration";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v103, 0xCu);
    }

    v97 = MEMORY[0x277CBEC10];
  }

  v100 = v97;

  v101 = v4[19];
  v4[19] = v100;

  objc_autoreleasePoolPop(v5);
  v102 = *MEMORY[0x277D85DE8];
}

- (void)_loadTopicsConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__PPConfiguration__loadTopicsConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_loadNamedEntitiesConfigParamsWithGuardedData:(id)a3
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v7 = [v6 plistForFactorName:@"configuration_named_entities.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];

  if ([v7 count] <= 1)
  {
    v8 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v8)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v104) = 0;
        _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad named entities configuration plist from Trial. Falling back to assets in the build.", &v104, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277CBEAC0]);
      v11 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v12 = [v11 defaultFilepathForFactor:@"configuration_named_entities.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];
      v13 = [v10 initWithContentsOfFile:v12];

      v7 = v13;
    }
  }

  v14 = [v7 objectForKeyedSubscript:@"NamedEntityFeedbackUsesCoreML"];
  if (!v14 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16 = v14, (isKindOfClass & 1) == 0))
  {
    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"NamedEntityFeedbackUsesCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v16 = &unk_284786140;
  }

  v19 = v16;

  v4[265] = [v19 BOOLValue];
  v20 = [v7 objectForKeyedSubscript:@"MaxNumberNamedEntities"];
  if (!v20 || (objc_opt_class(), v21 = objc_opt_isKindOfClass(), v22 = v20, (v21 & 1) == 0))
  {
    v23 = MEMORY[0x277D86220];
    v24 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"MaxNumberNamedEntities";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v22 = &unk_284785190;
  }

  v25 = v22;

  *(v4 + 85) = [v25 intValue];
  v26 = [v7 objectForKeyedSubscript:@"Use2StageScoreInterpreterForNEScoring"];
  if (!v26 || (objc_opt_class(), v27 = objc_opt_isKindOfClass(), v28 = v26, (v27 & 1) == 0))
  {
    v29 = MEMORY[0x277D86220];
    v30 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"Use2StageScoreInterpreterForNEScoring";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v28 = &unk_284786140;
  }

  v31 = v28;

  v4[280] = [v31 BOOLValue];
  v32 = [v7 objectForKeyedSubscript:@"NamedEntityScoringUsesCoreML"];
  if (!v32 || (objc_opt_class(), v33 = objc_opt_isKindOfClass(), v34 = v32, (v33 & 1) == 0))
  {
    v35 = MEMORY[0x277D86220];
    v36 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"NamedEntityScoringUsesCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v34 = &unk_284786140;
  }

  v37 = v34;

  v4[249] = [v37 BOOLValue];
  v38 = [v7 objectForKeyedSubscript:@"NamedEntityDecayHalfLifeSeconds"];
  if (!v38 || (objc_opt_class(), v39 = objc_opt_isKindOfClass(), v40 = v38, (v39 & 1) == 0))
  {
    v41 = MEMORY[0x277D86220];
    v42 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"NamedEntityDecayHalfLifeSeconds";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v40 = &unk_284786140;
  }

  v43 = v40;

  [v43 doubleValue];
  *(v4 + 29) = v44;

  v45 = [v7 objectForKeyedSubscript:@"ScoreThresholdForNamedEntity"];
  if (!v45 || (objc_opt_class(), v46 = objc_opt_isKindOfClass(), v47 = v45, (v46 & 1) == 0))
  {
    v48 = MEMORY[0x277D86220];
    v49 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"ScoreThresholdForNamedEntity";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v47 = &unk_284786140;
  }

  v50 = v47;

  [v50 floatValue];
  *(v4 + 45) = v51;

  v52 = [v7 objectForKeyedSubscript:@"FlattenNamedEntitiesForCoreML"];
  if (!v52 || (objc_opt_class(), v53 = objc_opt_isKindOfClass(), v54 = v52, (v53 & 1) == 0))
  {
    v55 = MEMORY[0x277D86220];
    v56 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"FlattenNamedEntitiesForCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v54 = &unk_284786140;
  }

  v57 = v54;

  v4[251] = [v57 BOOLValue];
  v58 = [v7 objectForKeyedSubscript:@"NamedEntityScoringUsesHybrid"];
  if (!v58 || (objc_opt_class(), v59 = objc_opt_isKindOfClass(), v60 = v58, (v59 & 1) == 0))
  {
    v61 = MEMORY[0x277D86220];
    v62 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"NamedEntityScoringUsesHybrid";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v60 = &unk_284786140;
  }

  v63 = v60;

  v4[252] = [v63 BOOLValue];
  v64 = [v7 objectForKeyedSubscript:@"DifferentiallyPrivateLogLevels"];
  if (!v64 || (objc_opt_class(), v65 = objc_opt_isKindOfClass(), v66 = v64, (v65 & 1) == 0))
  {
    v67 = MEMORY[0x277D86220];
    v68 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"DifferentiallyPrivateLogLevels";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v66 = MEMORY[0x277CBEC10];
  }

  v69 = v66;

  v70 = *(v4 + 15);
  *(v4 + 15) = v69;

  v71 = [v7 objectForKeyedSubscript:@"CustomTaggerMaxTokenCount"];
  if (!v71 || (objc_opt_class(), v72 = objc_opt_isKindOfClass(), v73 = v71, (v72 & 1) == 0))
  {
    v74 = MEMORY[0x277D86220];
    v75 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"CustomTaggerMaxTokenCount";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v73 = &unk_284786140;
  }

  v76 = v73;

  v4[344] = [v76 unsignedShortValue];
  v77 = [v7 objectForKeyedSubscript:@"NamedEntityLoadAndMonitorInitialLoadLimit"];
  if (!v77 || (objc_opt_class(), v78 = objc_opt_isKindOfClass(), v79 = v77, (v78 & 1) == 0))
  {
    v80 = MEMORY[0x277D86220];
    v81 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"NamedEntityLoadAndMonitorInitialLoadLimit";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v79 = &unk_2847851A8;
  }

  v82 = v79;

  *(v4 + 90) = [v82 unsignedIntegerValue];
  v83 = [v7 objectForKeyedSubscript:@"MapsSearchQueryLimit"];
  if (!v83 || (objc_opt_class(), v84 = objc_opt_isKindOfClass(), v85 = v83, (v84 & 1) == 0))
  {
    v86 = MEMORY[0x277D86220];
    v87 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"MapsSearchQueryLimit";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v85 = &unk_2847851A8;
  }

  v88 = v85;

  *(v4 + 87) = [v88 unsignedIntegerValue];
  v89 = [v7 objectForKeyedSubscript:@"MapsSearchQueryFromDateInterval"];
  if (!v89 || (objc_opt_class(), v90 = objc_opt_isKindOfClass(), v91 = v89, (v90 & 1) == 0))
  {
    v92 = MEMORY[0x277D86220];
    v93 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"MapsSearchQueryFromDateInterval";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v91 = &unk_2847851F0;
  }

  v94 = v91;

  [v94 doubleValue];
  *(v4 + 44) = v95;

  v96 = [v7 objectForKeyedSubscript:@"ExtractionAlgorithmConfiguration"];
  if (!v96 || (objc_opt_class(), v97 = objc_opt_isKindOfClass(), v98 = v96, (v97 & 1) == 0))
  {
    v99 = MEMORY[0x277D86220];
    v100 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      v104 = 138412290;
      v105 = @"ExtractionAlgorithmConfiguration";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v104, 0xCu);
    }

    v98 = MEMORY[0x277CBEC10];
  }

  v101 = v98;

  v102 = *(v4 + 18);
  *(v4 + 18) = v101;

  objc_autoreleasePoolPop(v5);
  v103 = *MEMORY[0x277D85DE8];
}

- (void)_loadNamedEntitiesConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__PPConfiguration__loadNamedEntitiesConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_loadQuickTypeConfigParamsWithGuardedData:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v7 = [v6 plistForFactorName:@"configuration_quicktype.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_QUICKTYPE"];

  if ([v7 count] <= 1)
  {
    v8 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v8)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v46) = 0;
        _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad contacts configuration plist from Trial. Falling back to assets in the build.", &v46, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277CBEAC0]);
      v11 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v12 = [v11 defaultFilepathForFactor:@"configuration_quicktype.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_QUICKTYPE"];
      v13 = [v10 initWithContentsOfFile:v12];

      v7 = v13;
    }
  }

  v14 = [v7 objectForKeyedSubscript:@"NavigationMinimumDistanceInMeters"];
  if (!v14 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16 = v14, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = 138412290;
      v47 = @"NavigationMinimumDistanceInMeters";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v46, 0xCu);
    }

    v16 = &unk_284786140;
  }

  v17 = v16;

  [v17 doubleValue];
  v19 = v18;

  v4[49] = v19;
  v20 = [v7 objectForKeyedSubscript:@"NavigationMinimumDistanceInMeters"];
  if (!v20 || (objc_opt_class(), v21 = objc_opt_isKindOfClass(), v22 = v20, (v21 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = 138412290;
      v47 = @"NavigationMinimumDistanceInMeters";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v46, 0xCu);
    }

    v22 = &unk_284786140;
  }

  v23 = v22;

  v24 = [v23 unsignedIntegerValue];
  *(v4 + 100) = v24;
  v25 = [v7 objectForKeyedSubscript:@"NextEventFuzzMinutes"];
  if (!v25 || (objc_opt_class(), v26 = objc_opt_isKindOfClass(), v27 = v25, (v26 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = 138412290;
      v47 = @"NextEventFuzzMinutes";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v46, 0xCu);
    }

    v27 = &unk_284786140;
  }

  v28 = v27;

  v29 = [v28 unsignedIntValue];
  *(v4 + 404) = v29;
  v30 = [v7 objectForKeyedSubscript:@"QueryTimeNextToMinutes"];
  if (!v30 || (objc_opt_class(), v31 = objc_opt_isKindOfClass(), v32 = v30, (v31 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = 138412290;
      v47 = @"QueryTimeNextToMinutes";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v46, 0xCu);
    }

    v32 = &unk_284786140;
  }

  v33 = v32;

  v34 = [v33 unsignedIntegerValue];
  *(v4 + 103) = v34;
  v35 = [v7 objectForKeyedSubscript:@"QueryTimeNextFromMinutes"];
  if (!v35 || (objc_opt_class(), v36 = objc_opt_isKindOfClass(), v37 = v35, (v36 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = 138412290;
      v47 = @"QueryTimeNextFromMinutes";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v46, 0xCu);
    }

    v37 = &unk_284786140;
  }

  v38 = v37;

  v39 = [v38 integerValue];
  *(v4 + 102) = v39;
  v40 = [v7 objectForKeyedSubscript:@"QueryTimeOtherToMinutes"];
  if (!v40 || (objc_opt_class(), v41 = objc_opt_isKindOfClass(), v42 = v40, (v41 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = 138412290;
      v47 = @"QueryTimeOtherToMinutes";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v46, 0xCu);
    }

    v42 = &unk_284786140;
  }

  v43 = v42;

  v44 = [v43 unsignedIntegerValue];
  *(v4 + 104) = v44;

  objc_autoreleasePoolPop(v5);
  v45 = *MEMORY[0x277D85DE8];
}

- (void)_loadQuickTypeConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__PPConfiguration__loadQuickTypeConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_loadSocialHighlightConfigParamsWithGuardedData:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v7 = [v6 plistForFactorName:@"configuration_social_highlight.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"];

  if ([v7 count] <= 1)
  {
    v8 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v8)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v60) = 0;
        _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad social highlights configuration plist from Trial. Falling back to assets in the build.", &v60, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277CBEAC0]);
      v11 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v12 = [v11 defaultFilepathForFactor:@"configuration_social_highlight.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"];
      v13 = [v10 initWithContentsOfFile:v12];

      v7 = v13;
    }
  }

  v14 = [v7 objectForKeyedSubscript:@"MaxRelevantContacts"];
  if (!v14 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16 = v14, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"MaxRelevantContacts";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v16 = &unk_284786140;
  }

  v17 = v16;

  v18 = [v17 unsignedIntegerValue];
  v4[108] = v18;
  v19 = [v7 objectForKeyedSubscript:@"HighlightDecayInterval"];
  if (!v19 || (objc_opt_class(), v20 = objc_opt_isKindOfClass(), v21 = v19, (v20 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"HighlightDecayInterval";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v21 = &unk_284785220;
  }

  v22 = v21;

  [v22 doubleValue];
  v24 = v23;

  *(v4 + 57) = v24;
  v25 = [v7 objectForKeyedSubscript:@"RankedStorageMaxAge"];
  if (!v25 || (objc_opt_class(), v26 = objc_opt_isKindOfClass(), v27 = v25, (v26 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"RankedStorageMaxAge";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v27 = &unk_284785250;
  }

  v28 = v27;

  [v28 doubleValue];
  v30 = v29;

  *(v4 + 58) = v30;
  v31 = [v7 objectForKeyedSubscript:@"CacheTimeoutInterval"];
  if (!v31 || (objc_opt_class(), v32 = objc_opt_isKindOfClass(), v33 = v31, (v32 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"CacheTimeoutInterval";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v33 = &unk_284785238;
  }

  v34 = v33;

  [v34 doubleValue];
  v36 = v35;

  *(v4 + 59) = v36;
  v37 = [v7 objectForKeyedSubscript:@"FeedbackDeletionInterval"];
  if (!v37 || (objc_opt_class(), v38 = objc_opt_isKindOfClass(), v39 = v37, (v38 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"FeedbackDeletionInterval";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v39 = &unk_284785208;
  }

  v40 = v39;

  [v40 doubleValue];
  v42 = v41;

  *(v4 + 60) = v42;
  v43 = [v7 objectForKeyedSubscript:@"MetricReportingInterval"];
  if (!v43 || (objc_opt_class(), v44 = objc_opt_isKindOfClass(), v45 = v43, (v44 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"MetricReportingInterval";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v45 = &unk_284785208;
  }

  v46 = v45;

  [v46 doubleValue];
  v48 = v47;

  *(v4 + 61) = v48;
  v49 = [v7 objectForKeyedSubscript:@"MaxNumHighlights"];
  if (!v49 || (objc_opt_class(), v50 = objc_opt_isKindOfClass(), v51 = v49, (v50 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"MaxNumHighlights";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v51 = &unk_2847851C0;
  }

  v52 = v51;

  v53 = [v52 unsignedIntegerValue];
  v4[124] = v53;
  v54 = [v7 objectForKeyedSubscript:@"TopKCount"];
  if (!v54 || (objc_opt_class(), v55 = objc_opt_isKindOfClass(), v56 = v54, (v55 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v60 = 138412290;
      v61 = @"TopKCount";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v60, 0xCu);
    }

    v56 = &unk_2847851D8;
  }

  v57 = v56;

  v58 = [v57 unsignedIntegerValue];
  v4[125] = v58;

  objc_autoreleasePoolPop(v5);
  v59 = *MEMORY[0x277D85DE8];
}

- (void)_loadSocialHighlightConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__PPConfiguration__loadSocialHighlightConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_loadUniversalSearchConfigParamsWithGuardedData:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v7 = [v6 plistForFactorName:@"config_universal_search.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_UNIVERSAL_SEARCH"];

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v58 = 138412290;
    v59 = v7;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "ppunivSearch %@", &v58, 0xCu);
  }

  if ([(__CFString *)v7 count]<= 1)
  {
    v9 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v9)
    {
      v10 = pp_default_log_handle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v58) = 0;
        _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad universal search configuration plist from Trial. Falling back to assets in the build.", &v58, 2u);
      }

      v11 = objc_alloc(MEMORY[0x277CBEAC0]);
      v12 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v13 = [v12 defaultFilepathForFactor:@"config_universal_search.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_UNIVERSAL_SEARCH"];
      v14 = [v11 initWithContentsOfFile:v13];

      v7 = v14;
    }
  }

  v15 = [(__CFString *)v7 objectForKeyedSubscript:@"MaxNEExtractions"];
  if (!v15 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v17 = v15, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"MaxNEExtractions";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v17 = &unk_284786140;
  }

  v18 = v17;

  v19 = [v18 unsignedIntValue];
  v4[109] = v19;
  v20 = [(__CFString *)v7 objectForKeyedSubscript:@"ScoreThreshold"];
  if (!v20 || (objc_opt_class(), v21 = objc_opt_isKindOfClass(), v22 = v20, (v21 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"ScoreThreshold";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v22 = &unk_284786140;
  }

  v23 = v22;

  [v23 doubleValue];
  v25 = v24;

  *(v4 + 55) = v25;
  v26 = [(__CFString *)v7 objectForKeyedSubscript:@"StoreNewExtractions"];
  if (!v26 || (objc_opt_class(), v27 = objc_opt_isKindOfClass(), v28 = v26, (v27 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"StoreNewExtractions";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v28 = &unk_284786140;
  }

  v29 = v28;

  v30 = [v29 BOOLValue];
  *(v4 + 448) = v30;
  v31 = [(__CFString *)v7 objectForKeyedSubscript:@"UseRawNEExtractionScores"];
  if (!v31 || (objc_opt_class(), v32 = objc_opt_isKindOfClass(), v33 = v31, (v32 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"UseRawNEExtractionScores";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v33 = &unk_284786140;
  }

  v34 = v33;

  v35 = [v34 BOOLValue];
  *(v4 + 449) = v35;
  v36 = [(__CFString *)v7 objectForKeyedSubscript:@"UseCachedPortraitScores"];
  if (!v36 || (objc_opt_class(), v37 = objc_opt_isKindOfClass(), v38 = v36, (v37 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"UseCachedPortraitScores";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v38 = &unk_284786140;
  }

  v39 = v38;

  v40 = [v39 BOOLValue];
  *(v4 + 450) = v40;
  v41 = [(__CFString *)v7 objectForKeyedSubscript:@"MaxItemsInFeatureDictionary"];
  if (!v41 || (objc_opt_class(), v42 = objc_opt_isKindOfClass(), v43 = v41, (v42 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"MaxItemsInFeatureDictionary";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v43 = &unk_284786140;
  }

  v44 = v43;

  v45 = [v44 unsignedIntValue];
  v4[113] = v45;
  v46 = [(__CFString *)v7 objectForKeyedSubscript:@"SkipInsignificantEmailExtractions"];
  if (!v46 || (objc_opt_class(), v47 = objc_opt_isKindOfClass(), v48 = v46, (v47 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"SkipInsignificantEmailExtractions";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v48 = &unk_284786140;
  }

  v49 = v48;

  v50 = [v49 BOOLValue];
  *(v4 + 504) = v50;
  v51 = [(__CFString *)v7 objectForKeyedSubscript:@"MaxEmailHarvestingEligiblityInterval"];
  if (!v51 || (objc_opt_class(), v52 = objc_opt_isKindOfClass(), v53 = v51, (v52 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v58 = 138412290;
      v59 = @"MaxEmailHarvestingEligiblityInterval";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v58, 0xCu);
    }

    v53 = &unk_284785220;
  }

  v54 = v53;

  [v54 doubleValue];
  v56 = v55;

  *(v4 + 64) = v56;
  objc_autoreleasePoolPop(v5);

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_loadUniversalSearchConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__PPConfiguration__loadUniversalSearchConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_loadContactsConfigParamsWithGuardedData:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v7 = [v6 plistForFactorName:@"configuration_contacts.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_CONTACTS"];

  if ([v7 count] <= 1)
  {
    v8 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v8)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v37) = 0;
        _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad contacts configuration plist from Trial. Falling back to assets in the build.", &v37, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277CBEAC0]);
      v11 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v12 = [v11 defaultFilepathForFactor:@"configuration_contacts.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_CONTACTS"];
      v13 = [v10 initWithContentsOfFile:v12];

      v7 = v13;
    }
  }

  v14 = [v7 objectForKeyedSubscript:@"ContactLabelScoringMap"];
  if (!v14 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16 = v14, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      v38 = @"ContactLabelScoringMap";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v37, 0xCu);
    }

    v16 = MEMORY[0x277CBEC10];
  }

  v17 = v16;

  v18 = v4[46];
  v4[46] = v17;

  v19 = [v7 objectForKeyedSubscript:@"RecordSourceContactsInitialScore"];
  if (!v19 || (objc_opt_class(), v20 = objc_opt_isKindOfClass(), v21 = v19, (v20 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      v38 = @"RecordSourceContactsInitialScore";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v37, 0xCu);
    }

    v21 = &unk_284786140;
  }

  v22 = v21;

  [v22 floatValue];
  v24 = v23;

  *(v4 + 94) = v24;
  v25 = [v7 objectForKeyedSubscript:@"RecordSourceNonContactsInitialScore"];
  if (!v25 || (objc_opt_class(), v26 = objc_opt_isKindOfClass(), v27 = v25, (v26 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      v38 = @"RecordSourceNonContactsInitialScore";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v37, 0xCu);
    }

    v27 = &unk_284786140;
  }

  v28 = v27;

  [v28 floatValue];
  v30 = v29;

  *(v4 + 95) = v30;
  v31 = [v7 objectForKeyedSubscript:@"PeopleSuggesterMaxCount"];
  if (!v31 || (objc_opt_class(), v32 = objc_opt_isKindOfClass(), v33 = v31, (v32 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      v38 = @"PeopleSuggesterMaxCount";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v37, 0xCu);
    }

    v33 = &unk_284786140;
  }

  v34 = v33;

  v35 = [v34 unsignedIntValue];
  *(v4 + 384) = v35;

  objc_autoreleasePoolPop(v5);
  v36 = *MEMORY[0x277D85DE8];
}

- (void)_loadContactsConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__PPConfiguration__loadContactsConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_loadLocationsConfigParamsWithGuardedData:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v7 = [v6 plistForFactorName:@"configuration_locations.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];

  if ([v7 count] <= 1)
  {
    v8 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v8)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v70) = 0;
        _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad locations configuration plist from Trial. Falling back to assets in the build.", &v70, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277CBEAC0]);
      v11 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v12 = [v11 defaultFilepathForFactor:@"configuration_locations.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
      v13 = [v10 initWithContentsOfFile:v12];

      v7 = v13;
    }
  }

  v14 = [v7 objectForKeyedSubscript:@"Use2StageScoreInterpreterForLocationScoring"];
  if (!v14 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16 = v14, (isKindOfClass & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"Use2StageScoreInterpreterForLocationScoring";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v16 = &unk_284786140;
  }

  v17 = v16;

  v18 = [v17 BOOLValue];
  v4[282] = v18;
  v19 = [v7 objectForKeyedSubscript:@"LocationDecayHalfLifeSeconds"];
  if (!v19 || (objc_opt_class(), v20 = objc_opt_isKindOfClass(), v21 = v19, (v20 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"LocationDecayHalfLifeSeconds";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v21 = &unk_284786140;
  }

  v22 = v21;

  [v22 doubleValue];
  v24 = v23;

  *(v4 + 30) = v24;
  v25 = [v7 objectForKeyedSubscript:@"ScoreThresholdForLocation"];
  if (!v25 || (objc_opt_class(), v26 = objc_opt_isKindOfClass(), v27 = v25, (v26 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"ScoreThresholdForLocation";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v27 = &unk_284786140;
  }

  v28 = v27;

  [v28 floatValue];
  v30 = v29;

  *(v4 + 47) = v30;
  v31 = [v7 objectForKeyedSubscript:@"LocationScoringUsesCoreML"];
  if (!v31 || (objc_opt_class(), v32 = objc_opt_isKindOfClass(), v33 = v31, (v32 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"LocationScoringUsesCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v33 = &unk_284786140;
  }

  v34 = v33;

  v35 = [v34 BOOLValue];
  v4[296] = v35;
  v36 = [v7 objectForKeyedSubscript:@"LocationFeedbackUsesCoreML"];
  if (!v36 || (objc_opt_class(), v37 = objc_opt_isKindOfClass(), v38 = v36, (v37 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"LocationFeedbackUsesCoreML";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v38 = &unk_284786140;
  }

  v39 = v38;

  v40 = [v39 BOOLValue];
  v4[267] = v40;
  v41 = [v7 objectForKeyedSubscript:@"LocationScoringUsesHybrid"];
  if (!v41 || (objc_opt_class(), v42 = objc_opt_isKindOfClass(), v43 = v41, (v42 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"LocationScoringUsesHybrid";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v43 = &unk_284786140;
  }

  v44 = v43;

  v45 = [v44 BOOLValue];
  v4[254] = v45;
  v46 = [v7 objectForKeyedSubscript:@"RoutineExtractionScoreCountWeight"];
  if (!v46 || (objc_opt_class(), v47 = objc_opt_isKindOfClass(), v48 = v46, (v47 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"RoutineExtractionScoreCountWeight";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v48 = &unk_284786140;
  }

  v49 = v48;

  [v49 doubleValue];
  v51 = v50;

  *(v4 + 38) = v51;
  v52 = [v7 objectForKeyedSubscript:@"RoutineExtractionScoreDurationWeight"];
  if (!v52 || (objc_opt_class(), v53 = objc_opt_isKindOfClass(), v54 = v52, (v53 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"RoutineExtractionScoreDurationWeight";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v54 = &unk_284786140;
  }

  v55 = v54;

  [v55 doubleValue];
  v57 = v56;

  *(v4 + 39) = v57;
  v58 = [v7 objectForKeyedSubscript:@"RoutineExtractionScoreDecayHalfLifeDays"];
  if (!v58 || (objc_opt_class(), v59 = objc_opt_isKindOfClass(), v60 = v58, (v59 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"RoutineExtractionScoreDecayHalfLifeDays";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v60 = &unk_284786140;
  }

  v61 = v60;

  [v61 doubleValue];
  v63 = v62;

  *(v4 + 40) = v63;
  v64 = [v7 objectForKeyedSubscript:@"ExtractionAlgorithmConfiguration"];
  if (!v64 || (objc_opt_class(), v65 = objc_opt_isKindOfClass(), v66 = v64, (v65 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v70 = 138412290;
      v71 = @"ExtractionAlgorithmConfiguration";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v70, 0xCu);
    }

    v66 = MEMORY[0x277CBEC10];
  }

  v67 = v66;

  v68 = *(v4 + 20);
  *(v4 + 20) = v67;

  objc_autoreleasePoolPop(v5);
  v69 = *MEMORY[0x277D85DE8];
}

- (void)_loadLocationsConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__PPConfiguration__loadLocationsConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (void)_loadGlobalConfigParamsWithGuardedData:(id)a3
{
  v201[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v7 = [v6 plistForFactorName:@"configuration.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];

  if ([v7 count] <= 1)
  {
    v8 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];

    if (v8)
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v199) = 0;
        _os_log_error_impl(&dword_23224A000, v9, OS_LOG_TYPE_ERROR, "PPConfiguration: loaded a bad configuration plist from Trial. Falling back to assets in the build.", &v199, 2u);
      }

      v10 = objc_alloc(MEMORY[0x277CBEAC0]);
      v11 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
      v12 = [v11 defaultFilepathForFactor:@"configuration.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];
      v13 = [v10 initWithContentsOfFile:v12];

      v7 = v13;
    }
  }

  v14 = [(PPConfiguration *)self trialWrapperReloadingIfNeeded];
  v15 = [v14 concatenatedTreatmentNames];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"TRIAL_NOT_AVAILABLE";
  }

  v18 = v17;

  objc_storeStrong(v4 + 12, v17);
  objc_storeStrong(v4 + 13, v17);
  v201[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v201 count:1];
  v20 = v4[14];
  v4[14] = v19;

  v21 = [v7 objectForKeyedSubscript:@"HalfValuePosition"];
  if (!v21 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v23 = v21, (isKindOfClass & 1) == 0))
  {
    v24 = MEMORY[0x277D86220];
    v25 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"HalfValuePosition";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v23 = &unk_284786140;
  }

  v26 = v23;

  [v26 doubleValue];
  v4[2] = v27;

  v28 = [v7 objectForKeyedSubscript:@"NonReaderTextWeight"];
  if (!v28 || (objc_opt_class(), v29 = objc_opt_isKindOfClass(), v30 = v28, (v29 & 1) == 0))
  {
    v31 = MEMORY[0x277D86220];
    v32 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"NonReaderTextWeight";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v30 = &unk_284786140;
  }

  v33 = v30;

  [v33 doubleValue];
  v4[3] = v34;

  v35 = [v7 objectForKeyedSubscript:@"AnalyticsSamplingRate"];
  if (!v35 || (objc_opt_class(), v36 = objc_opt_isKindOfClass(), v37 = v35, (v36 & 1) == 0))
  {
    v38 = MEMORY[0x277D86220];
    v39 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"AnalyticsSamplingRate";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v37 = &unk_284786140;
  }

  v40 = v37;

  [v40 doubleValue];
  v4[4] = v41;

  v42 = [v7 objectForKeyedSubscript:@"MusicDataCollectionSamplingRateForCTS"];
  if (!v42 || (objc_opt_class(), v43 = objc_opt_isKindOfClass(), v44 = v42, (v43 & 1) == 0))
  {
    v45 = MEMORY[0x277D86220];
    v46 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"MusicDataCollectionSamplingRateForCTS";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v44 = &unk_284786140;
  }

  v47 = v44;

  [v47 doubleValue];
  v4[5] = v48;

  v49 = [v7 objectForKeyedSubscript:@"MusicDataCollectionSamplingRateForAMP"];
  if (!v49 || (objc_opt_class(), v50 = objc_opt_isKindOfClass(), v51 = v49, (v50 & 1) == 0))
  {
    v52 = MEMORY[0x277D86220];
    v53 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"MusicDataCollectionSamplingRateForAMP";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v51 = &unk_284786140;
  }

  v54 = v51;

  [v54 doubleValue];
  v4[6] = v55;

  v56 = [v7 objectForKeyedSubscript:@"MusicDataCollectionMaximumRecordsPerType"];
  if (!v56 || (objc_opt_class(), v57 = objc_opt_isKindOfClass(), v58 = v56, (v57 & 1) == 0))
  {
    v59 = MEMORY[0x277D86220];
    v60 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"MusicDataCollectionMaximumRecordsPerType";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v58 = &unk_284786140;
  }

  v61 = v58;

  *(v4 + 14) = [v61 intValue];
  v62 = [v7 objectForKeyedSubscript:@"MusicDataCollectionCollectNonAMPNowPlaying"];
  if (!v62 || (objc_opt_class(), v63 = objc_opt_isKindOfClass(), v64 = v62, (v63 & 1) == 0))
  {
    v65 = MEMORY[0x277D86220];
    v66 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"MusicDataCollectionCollectNonAMPNowPlaying";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v64 = &unk_284786140;
  }

  v67 = v64;

  *(v4 + 60) = [v67 BOOLValue];
  v68 = [v7 objectForKeyedSubscript:@"MusicDataCollectionAMPBundleIds"];
  if (!v68 || (objc_opt_class(), v69 = objc_opt_isKindOfClass(), v70 = v68, (v69 & 1) == 0))
  {
    v71 = MEMORY[0x277D86220];
    v72 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"MusicDataCollectionAMPBundleIds";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v70 = MEMORY[0x277CBEBF8];
  }

  v73 = v70;

  v74 = v4[8];
  v4[8] = v73;

  v75 = [v7 objectForKeyedSubscript:@"SportsMetricsNumberOfTeamsLogged"];
  if (!v75 || (objc_opt_class(), v76 = objc_opt_isKindOfClass(), v77 = v75, (v76 & 1) == 0))
  {
    v78 = MEMORY[0x277D86220];
    v79 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"SportsMetricsNumberOfTeamsLogged";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v77 = &unk_284786140;
  }

  v80 = v77;

  *(v4 + 18) = [v80 intValue];
  v81 = [v7 objectForKeyedSubscript:@"SportsMetricsNumberOfLeaguesLogged"];
  if (!v81 || (objc_opt_class(), v82 = objc_opt_isKindOfClass(), v83 = v81, (v82 & 1) == 0))
  {
    v84 = MEMORY[0x277D86220];
    v85 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"SportsMetricsNumberOfLeaguesLogged";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v83 = &unk_284786140;
  }

  v86 = v83;

  *(v4 + 19) = [v86 intValue];
  v87 = [v7 objectForKeyedSubscript:@"SportsMetricsEventName"];
  if (!v87 || (objc_opt_class(), v88 = objc_opt_isKindOfClass(), v89 = v87, (v88 & 1) == 0))
  {
    v90 = MEMORY[0x277D86220];
    v91 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"SportsMetricsEventName";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v89 = &stru_284759D38;
  }

  v92 = v89;

  v93 = v4[10];
  v4[10] = v92;

  v94 = [v7 objectForKeyedSubscript:@"SportsMetricsSamplingRate"];
  if (!v94 || (objc_opt_class(), v95 = objc_opt_isKindOfClass(), v96 = v94, (v95 & 1) == 0))
  {
    v97 = MEMORY[0x277D86220];
    v98 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"SportsMetricsSamplingRate";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v96 = &unk_284786140;
  }

  v99 = v96;

  [v99 doubleValue];
  v4[11] = v100;

  v101 = [v7 objectForKeyedSubscript:@"TopicsSourceMultiplier"];
  if (!v101 || (objc_opt_class(), v102 = objc_opt_isKindOfClass(), v103 = v101, (v102 & 1) == 0))
  {
    v104 = MEMORY[0x277D86220];
    v105 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"TopicsSourceMultiplier";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v103 = MEMORY[0x277CBEC10];
  }

  v106 = v103;

  v107 = v4[16];
  v4[16] = v106;

  v108 = [v7 objectForKeyedSubscript:@"TopicsAlgorithmMultiplier"];
  if (!v108 || (objc_opt_class(), v109 = objc_opt_isKindOfClass(), v110 = v108, (v109 & 1) == 0))
  {
    v111 = MEMORY[0x277D86220];
    v112 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"TopicsAlgorithmMultiplier";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v110 = MEMORY[0x277CBEC10];
  }

  v113 = v110;

  v114 = v4[17];
  v4[17] = v113;

  v115 = [v7 objectForKeyedSubscript:@"SafariDonationTitleExtractionEnabled"];
  if (!v115 || (objc_opt_class(), v116 = objc_opt_isKindOfClass(), v117 = v115, (v116 & 1) == 0))
  {
    v118 = MEMORY[0x277D86220];
    v119 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"SafariDonationTitleExtractionEnabled";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v117 = &unk_284786140;
  }

  v120 = v117;

  *(v4 + 176) = [v120 BOOLValue];
  v121 = [v7 objectForKeyedSubscript:@"SafariDataDetectorsEnabledForHighMemoryDevices"];
  if (!v121 || (objc_opt_class(), v122 = objc_opt_isKindOfClass(), v123 = v121, (v122 & 1) == 0))
  {
    v124 = MEMORY[0x277D86220];
    v125 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"SafariDataDetectorsEnabledForHighMemoryDevices";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v123 = &unk_284786140;
  }

  v126 = v123;

  *(v4 + 177) = [v126 BOOLValue];
  v127 = [v7 objectForKeyedSubscript:@"FeedbackSessionLogsSamplingRate"];
  if (!v127 || (objc_opt_class(), v128 = objc_opt_isKindOfClass(), v129 = v127, (v128 & 1) == 0))
  {
    v130 = MEMORY[0x277D86220];
    v131 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"FeedbackSessionLogsSamplingRate";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v129 = &unk_284786140;
  }

  v132 = v129;

  [v132 floatValue];
  *(v4 + 48) = v133;

  v134 = [v7 objectForKeyedSubscript:@"FeedbackSessionLogsSamplingRateOverrides"];
  if (!v134 || (objc_opt_class(), v135 = objc_opt_isKindOfClass(), v136 = v134, (v135 & 1) == 0))
  {
    v137 = MEMORY[0x277D86220];
    v138 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"FeedbackSessionLogsSamplingRateOverrides";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v136 = MEMORY[0x277CBEC10];
  }

  v139 = v136;

  v140 = v4[25];
  v4[25] = v139;

  v141 = [v7 objectForKeyedSubscript:@"FeedbackSessionLogsExtractionsSamplingRate"];
  if (!v141 || (objc_opt_class(), v142 = objc_opt_isKindOfClass(), v143 = v141, (v142 & 1) == 0))
  {
    v144 = MEMORY[0x277D86220];
    v145 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"FeedbackSessionLogsExtractionsSamplingRate";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v143 = &unk_284786140;
  }

  v146 = v143;

  [v146 floatValue];
  *(v4 + 52) = v147;

  v148 = [v7 objectForKeyedSubscript:@"FeedbackSessionLogsGeohashLength"];
  if (!v148 || (objc_opt_class(), v149 = objc_opt_isKindOfClass(), v150 = v148, (v149 & 1) == 0))
  {
    v151 = MEMORY[0x277D86220];
    v152 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"FeedbackSessionLogsGeohashLength";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v150 = &unk_284786140;
  }

  v153 = v150;

  *(v4 + 53) = [v153 intValue];
  v154 = [v7 objectForKeyedSubscript:@"AnalyticsMaximumNumberOfRecords"];
  if (!v154 || (objc_opt_class(), v155 = objc_opt_isKindOfClass(), v156 = v154, (v155 & 1) == 0))
  {
    v157 = MEMORY[0x277D86220];
    v158 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"AnalyticsMaximumNumberOfRecords";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v156 = &unk_284786140;
  }

  v159 = v156;

  *(v4 + 54) = [v159 intValue];
  v160 = [v7 objectForKeyedSubscript:@"DecayedFeedbackCountsHalfLifeDays"];
  if (!v160 || (objc_opt_class(), v161 = objc_opt_isKindOfClass(), v162 = v160, (v161 & 1) == 0))
  {
    v163 = MEMORY[0x277D86220];
    v164 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"DecayedFeedbackCountsHalfLifeDays";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v162 = &unk_284786140;
  }

  v165 = v162;

  [v165 doubleValue];
  v4[32] = v166;

  v167 = [v7 objectForKeyedSubscript:@"NotificationExtractionEnabled"];
  if (!v167 || (objc_opt_class(), v168 = objc_opt_isKindOfClass(), v169 = v167, (v168 & 1) == 0))
  {
    v170 = MEMORY[0x277D86220];
    v171 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"NotificationExtractionEnabled";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v169 = &unk_284786140;
  }

  v172 = v169;

  *(v4 + 264) = [v172 BOOLValue];
  v173 = [v7 objectForKeyedSubscript:@"EngagementKValues"];
  if (!v173 || (objc_opt_class(), v174 = objc_opt_isKindOfClass(), v175 = v173, (v174 & 1) == 0))
  {
    v176 = MEMORY[0x277D86220];
    v177 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"EngagementKValues";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v175 = MEMORY[0x277CBEBF8];
  }

  v178 = v175;

  v179 = v4[34];
  v4[34] = v178;

  v180 = [v7 objectForKeyedSubscript:@"SentenceEmbeddingVersion"];
  if (!v180 || (objc_opt_class(), v181 = objc_opt_isKindOfClass(), v182 = v180, (v181 & 1) == 0))
  {
    v183 = MEMORY[0x277D86220];
    v184 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"SentenceEmbeddingVersion";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v182 = &unk_284786140;
  }

  v185 = v182;

  v4[53] = [v185 unsignedIntegerValue];
  v186 = [v7 objectForKeyedSubscript:@"EnableECRMessageTokenCountsPlugin"];
  if (!v186 || (objc_opt_class(), v187 = objc_opt_isKindOfClass(), v188 = v186, (v187 & 1) == 0))
  {
    v189 = MEMORY[0x277D86220];
    v190 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"EnableECRMessageTokenCountsPlugin";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v188 = &unk_284786140;
  }

  v191 = v188;

  *(v4 + 520) = [v191 BOOLValue];
  v192 = [v7 objectForKeyedSubscript:@"MaxUniqueTokensInECRTokenCounts"];
  if (!v192 || (objc_opt_class(), v193 = objc_opt_isKindOfClass(), v194 = v192, (v193 & 1) == 0))
  {
    v195 = MEMORY[0x277D86220];
    v196 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
    {
      v199 = 138412290;
      v200 = @"MaxUniqueTokensInECRTokenCounts";
      _os_log_error_impl(&dword_23224A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Param key not found: %@", &v199, 0xCu);
    }

    v194 = &unk_284785268;
  }

  v197 = v194;

  v4[66] = [v197 unsignedLongValue];
  objc_autoreleasePoolPop(v5);

  v198 = *MEMORY[0x277D85DE8];
}

- (void)_loadGlobalConfigParams
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__PPConfiguration__loadGlobalConfigParams__block_invoke;
  v3[3] = &unk_278979200;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

- (id)trialWrapperReloadingIfNeeded
{
  trialWrapper = self->_trialWrapper;
  if (trialWrapper)
  {
    v3 = trialWrapper;
  }

  else
  {
    v3 = +[PPTrialWrapper sharedInstance];
  }

  return v3;
}

- (PPConfiguration)initWithTrialWrapper:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v28.receiver = self;
  v28.super_class = PPConfiguration;
  v5 = [(PPConfiguration *)&v28 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D425F8]);
    v7 = objc_opt_new();
    v8 = [v6 initWithGuardedData:v7];
    lock = v5->_lock;
    v5->_lock = v8;

    v10 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:32];
    cachedAlgorithms = v5->_cachedAlgorithms;
    v5->_cachedAlgorithms = v10;

    objc_storeStrong(&v5->_trialWrapper, a3);
    [(PPConfiguration *)v5 _loadConfigParams];
    objc_initWeak(&location, v5);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [&unk_284785E20 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v12)
    {
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(&unk_284785E20);
          }

          v15 = *(*(&v23 + 1) + 8 * v14);
          trialWrapper = v5->_trialWrapper;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __40__PPConfiguration_initWithTrialWrapper___block_invoke;
          v21[3] = &unk_2789791D8;
          v21[4] = v15;
          objc_copyWeak(&v22, &location);
          v17 = [(PPTrialWrapper *)trialWrapper addUpdateHandlerForNamespaceName:v15 block:v21];
          objc_destroyWeak(&v22);
          ++v14;
        }

        while (v12 != v14);
        v12 = [&unk_284785E20 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v12);
    }

    objc_destroyWeak(&location);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

void __40__PPConfiguration_initWithTrialWrapper___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_DEFAULT, "PPConfiguration: updating data in namespace %@ because of trial update.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_GLOBAL"])
    {
      [WeakRetained _loadGlobalConfigParams];
    }

    else if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_TOPICS"])
    {
      [WeakRetained _loadTopicsConfigParams];
    }

    else if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"])
    {
      [WeakRetained _loadNamedEntitiesConfigParams];
    }

    else if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_LOCATIONS"])
    {
      [WeakRetained _loadLocationsConfigParams];
    }

    else if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_CONTACTS"])
    {
      [WeakRetained _loadContactsConfigParams];
    }

    else if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_QUICKTYPE"])
    {
      [WeakRetained _loadQuickTypeConfigParams];
    }

    else if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"])
    {
      [WeakRetained _loadSocialHighlightConfigParams];
    }

    else if ([*(a1 + 32) isEqualToString:@"PERSONALIZATION_PORTRAIT_UNIVERSAL_SEARCH"])
    {
      [WeakRetained _loadUniversalSearchConfigParams];
    }

    [WeakRetained[3] removeAllObjects];
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)reload
{
  pthread_mutex_lock(&configLock_25759);
  v2 = [PPConfiguration alloc];
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = [(PPConfiguration *)v2 initWithTrialWrapper:v3];
  v5 = sharedConfig;
  sharedConfig = v4;

  pthread_mutex_unlock(&configLock_25759);
}

@end