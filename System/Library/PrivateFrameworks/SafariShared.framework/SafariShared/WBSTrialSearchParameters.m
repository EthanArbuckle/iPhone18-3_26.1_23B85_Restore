@interface WBSTrialSearchParameters
+ (NSArray)searchParameters;
+ (id)codePathUUIDForHideIgnoredSiriSuggestedWebsites;
+ (id)getSearchParametersHelper:(id)a3 withTrial:(id)a4 withCache:(BOOL)a5;
- (BOOL)checkServerCompletionForPrefixNavigationalIntent;
- (NSNumber)prefixNavigationalIntentThreshold;
- (WBSTrialSearchParameters)init;
- (WBSTrialSearchParameters)initWithCoder:(id)a3;
- (WBSTrialSearchParameters)initWithPreferences:(id)a3;
- (WBSTrialSearchParameters)initWithTrial:(BOOL)a3 forPrefs:(id)a4 forTrial:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)updateUsingPreferenceKeys:(id)a3;
- (void)updateWithDefaults;
- (void)updateWithTrial:(BOOL)a3 forTrial:(id)a4;
@end

@implementation WBSTrialSearchParameters

+ (NSArray)searchParameters
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = +[WBSTrialManager shared];
  v4 = [WBSTrialSearchParameters getSearchParametersHelper:v2 withTrial:v3 withCache:1];

  return v4;
}

+ (id)getSearchParametersHelper:(id)a3 withTrial:(id)a4 withCache:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = standard_params;
  if (!standard_params || !a5)
  {
    v11 = objc_alloc_init(WBSTrialSearchParameters);
    v12 = standard_params;
    standard_params = v11;

    v10 = standard_params;
  }

  [v10 updateUsingPreferenceKeys:v7];
  if (v8 && [v8 isReady] && objc_msgSend(v8, "inExperiment"))
  {
    v13 = trial_params;
    if (!trial_params || !a5)
    {
      if ([v8 runCFFlow])
      {
        v14 = [[WBSTrialSearchParameters alloc] initWithTrial:1 forPrefs:v7 forTrial:v8];
        [v9 addObject:v14];
      }

      v15 = [[WBSTrialSearchParameters alloc] initWithTrial:0 forPrefs:v7 forTrial:v8];
      [v9 addObject:v15];

      objc_storeStrong(&trial_params, v9);
      v13 = trial_params;
    }

    v16 = v13;

    v9 = v16;
  }

  else
  {
    [v9 addObject:standard_params];
  }

  return v9;
}

+ (id)codePathUUIDForHideIgnoredSiriSuggestedWebsites
{
  if (+[WBSTrialSearchParameters codePathUUIDForHideIgnoredSiriSuggestedWebsites]::onceToken != -1)
  {
    +[WBSTrialSearchParameters codePathUUIDForHideIgnoredSiriSuggestedWebsites];
  }

  v3 = +[WBSTrialSearchParameters codePathUUIDForHideIgnoredSiriSuggestedWebsites]::codePathUUID;

  return v3;
}

void __75__WBSTrialSearchParameters_codePathUUIDForHideIgnoredSiriSuggestedWebsites__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"81C7C46C-0C4F-40C3-9527-EC71B259C813"];
  v1 = +[WBSTrialSearchParameters codePathUUIDForHideIgnoredSiriSuggestedWebsites]::codePathUUID;
  +[WBSTrialSearchParameters codePathUUIDForHideIgnoredSiriSuggestedWebsites]::codePathUUID = v0;
}

- (WBSTrialSearchParameters)init
{
  v6.receiver = self;
  v6.super_class = WBSTrialSearchParameters;
  v2 = [(WBSTrialSearchParameters *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WBSTrialSearchParameters *)v2 updateWithDefaults];
    v4 = v3;
  }

  return v3;
}

- (WBSTrialSearchParameters)initWithPreferences:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WBSTrialSearchParameters;
  v5 = [(WBSTrialSearchParameters *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(WBSTrialSearchParameters *)v5 updateWithDefaults];
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    if (v4)
    {
      v8 = v4;

      v7 = v8;
    }

    [(WBSTrialSearchParameters *)v6 updateUsingPreferenceKeys:v7];
    v9 = v6;
  }

  return v6;
}

- (void)updateWithDefaults
{
  self->_isCFSearch = 0;
  *&self->_isProvider1Enabled = 0;
  *&self->_isResultFilteringDisabled = 0x1000000;
  *&self->_enableCompletionListHistoryDeduplicationSwitchToTabValue = 257;
  self->_CFSearchTimeout = 0.06;
  self->_characterThresholdForAnywhereInTitleOrURL = 18;
  *&self->_percentageThresholdForAnywhereInTitle = vdupq_n_s64(0x3FE999999999999AuLL);
  *&self->_characterThresholdForStartOfURLPathComponent = xmmword_1BB9537D0;
  *&self->_characterThresholdForStartOfTitle = xmmword_1BB9537E0;
  *&self->_characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit = xmmword_1BB9537F0;
  self->_normalizedTopSitesScoreAndVisitCountMultiplier = 4.0;
  self->_maxBookmarksAndHistoryItems = -1;
  self->_thresholdForHidingIgnoredSiriSuggestedSites = -1;
}

- (void)updateUsingPreferenceKeys:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (v8)
  {
    v5 = v8;

    v4 = v5;
  }

  if ([v4 BOOLForKey:@"WBSSearchRelevanceOverrideDefaults"])
  {
    if ([v4 BOOLForKey:@"WBSDisableTrial"])
    {
      self->_isResultFilteringDisabled = [v4 BOOLForKey:@"WBSDebugDisableResultFiltering"];
      self->_isDedupeThroughAlternativeURLsEnabled = [v4 BOOLForKey:@"WBSSearchRelevanceServerAssistedDeduplication"];
      self->_enableCompletionListHistoryDeduplicationValue = [v4 BOOLForKey:@"WBSSearchRelevanceHistoryDeduplication"];
      self->_enableCompletionListHistoryDeduplicationSwitchToTabValue = [v4 BOOLForKey:@"WBSSearchRelevanceHistoryDeduplicationSwitchToTab"];
      v6 = [v4 BOOLForKey:@"WBSSearchRelevanceDecayResults"];
      v7 = 0.0;
      if (v6)
      {
        v7 = 4.0;
      }

      self->_normalizedTopSitesScoreAndVisitCountMultiplier = v7;
      self->_strengthenAutocompleteTriggerExtensionMatching = [v4 BOOLForKey:@"WBSSearchRelevanceStrengthenAutocompleteTriggerExtensionMatching"];
    }

    if (([v4 BOOLForKey:@"WBSSearchRelevanceOverrideDefaults"] & 1) == 0)
    {
      [(WBSTrialSearchParameters *)self updateWithDefaults];
    }
  }
}

- (WBSTrialSearchParameters)initWithTrial:(BOOL)a3 forPrefs:(id)a4 forTrial:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v21.receiver = self;
  v21.super_class = WBSTrialSearchParameters;
  v10 = [(WBSTrialSearchParameters *)&v21 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    if (v8)
    {
      v12 = v8;

      v11 = v12;
    }

    v13 = [MEMORY[0x1E69C8A48] sharedObserver];
    [v13 setDelegate:v10];

    [(WBSTrialSearchParameters *)v10 updateWithDefaults];
    v14 = +[WBSTrialManager shared];
    if (v9)
    {
      v15 = v9;

      v14 = v15;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSTrialSearchParameters_initWithTrial_forPrefs_forTrial___block_invoke;
    block[3] = &unk_1E7FB6F80;
    v16 = v10;
    v20 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (([v14 inExperiment] & 1) != 0 && (objc_msgSend(v11, "BOOLForKey:", @"WBSSearchRelevanceOverrideDefaults") & 1) == 0 && (objc_msgSend(v11, "BOOLForKey:", @"WBSDisableTrial") & 1) == 0)
    {
      [(WBSTrialSearchParameters *)v16 updateWithTrial:v6 forTrial:v14];
    }

    v17 = v16;
  }

  return v10;
}

void __60__WBSTrialSearchParameters_initWithTrial_forPrefs_forTrial___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x1E69C8D88] object:*(a1 + 32)];
}

- (void)updateWithTrial:(BOOL)a3 forTrial:(id)a4
{
  v4 = a3;
  v17 = a4;
  v6 = +[WBSTrialManager shared];
  if (v17)
  {
    v7 = v17;

    v6 = v7;
  }

  if (v4)
  {
    self->_isCFSearch = 1;
    [v6 CFSearchTimeoutForDefault:0.06];
    self->_CFSearchTimeout = v8;
  }

  self->_isProvider1Enabled = [v6 getBoolFactor:@"enableProvider1" forCF:0 forDefault:0];
  self->_isProvider2Enabled = [v6 getBoolFactor:@"enableProvider2" forCF:0 forDefault:0];
  self->_isDedupeThroughAlternativeURLsEnabled = [v6 getBoolFactor:@"enableDedupeThroughAlternativeURLs" forCF:v4 forDefault:0];
  self->_strengthenAutocompleteTriggerExtensionMatching = [v6 getBoolFactor:@"strengthenAutocompleteTriggerExtensionMatching" forCF:v4 forDefault:0];
  self->_enableCompletionListHistoryDeduplicationValue = [v6 getBoolFactor:@"enableCompletionListHistoryDeduplication" forCF:v4 forDefault:1];
  self->_characterThresholdForAnywhereInTitleOrURL = [v6 getIntFactor:@"characterThresholdForAnywhereInTitleOrURL" forCF:v4 forDefault:18];
  [v6 getFloatFactor:@"percentageThresholdForAnywhereInTitle" forCF:v4 forDefault:0.8];
  self->_percentageThresholdForAnywhereInTitle = v9;
  [v6 getFloatFactor:@"percentageThresholdForAnywhereInURL" forCF:v4 forDefault:0.8];
  self->_percentageThresholdForAnywhereInURL = v10;
  self->_characterThresholdForStartOfURLPathComponent = [v6 getIntFactor:@"characterThresholdForStartOfURLPathComponent" forCF:v4 forDefault:4];
  self->_matchingWordsInTitleThreshold = [v6 getIntFactor:@"matchingWordsInTitleThreshold" forCF:v4 forDefault:3];
  self->_characterThresholdForStartOfTitle = [v6 getIntFactor:@"characterThresholdForStartOfTitle" forCF:v4 forDefault:3];
  self->_characterThresholdForStartOfTitleWord = [v6 getIntFactor:@"characterThresholdForStartOfTitleWord" forCF:v4 forDefault:4];
  self->_characterThresholdForStartOfURL = [v6 getIntFactor:@"characterThresholdForStartOfURL" forCF:v4 forDefault:3];
  self->_normalizedTopSitesScoreAndVisitCountMultiplier = [v6 getIntFactor:@"normalizedTopSitesScoreAndVisitCountMultiplier" forCF:v4 forDefault:4];
  self->_maxBookmarksAndHistoryItems = [v6 getIntFactor:@"maxBookmarksAndHistoryItems" forCF:v4 forDefault:-1];
  self->_isPostFixSuggestionsEnabled = [v6 getBoolFactor:@"enablePostFixSearchEngineSuggestions" forCF:v4 forDefault:{objc_msgSend(MEMORY[0x1E69C8880], "isPostFixSuggestionsEnabled")}];
  v11 = [v6 getNumberFactorWithName:@"enablePrefixNavigationalIntent"];
  prefixNavigationalIntentThreshold = self->_prefixNavigationalIntentThreshold;
  self->_prefixNavigationalIntentThreshold = v11;

  if (!self->_prefixNavigationalIntentThreshold)
  {
    v13 = +[WBSDefaultSearchParameters prefixNavigationalIntentThreshold];
    v14 = self->_prefixNavigationalIntentThreshold;
    self->_prefixNavigationalIntentThreshold = v13;
  }

  self->_checkServerCompletionForPrefixNavigationalIntent = [v6 getBoolFactor:@"checkServerCompletionForPrefixNavigationalIntent" forCF:v4 forDefault:{+[WBSDefaultSearchParameters checkServerCompletionForPrefixNavigationalIntent](WBSDefaultSearchParameters, "checkServerCompletionForPrefixNavigationalIntent")}];
  self->_thresholdForHidingIgnoredSiriSuggestedSites = [v6 getIntFactor:@"thresholdForHidingIgnoredSiriSuggestedSites" forCF:v4 forDefault:-1];
  self->_shouldHideIgnoredSiriSuggestedSites = [v6 getBoolFactor:@"shouldHideIgnoredSiriSuggestedSites" forCF:v4 forDefault:1];
  v15 = [v6 stringFactorWithName:@"codepathIDs"];
  codepathIDs = self->_codepathIDs;
  self->_codepathIDs = v15;
}

- (NSNumber)prefixNavigationalIntentThreshold
{
  v3 = +[WBSTrialManager shared];
  if ([v3 isReady])
  {
    v4 = +[WBSTrialManager shared];
    v5 = [v4 inExperiment];

    if (v5)
    {
      v6 = self->_prefixNavigationalIntentThreshold;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = +[WBSDefaultSearchParameters prefixNavigationalIntentThreshold];
LABEL_6:

  return v6;
}

- (BOOL)checkServerCompletionForPrefixNavigationalIntent
{
  v3 = +[WBSTrialManager shared];
  if ([v3 isReady])
  {
    v4 = +[WBSTrialManager shared];
    v5 = [v4 inExperiment];

    if (v5)
    {
      return self->_checkServerCompletionForPrefixNavigationalIntent;
    }
  }

  else
  {
  }

  return +[WBSDefaultSearchParameters checkServerCompletionForPrefixNavigationalIntent];
}

- (WBSTrialSearchParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WBSTrialSearchParameters;
  v5 = [(WBSTrialSearchParameters *)&v14 init];
  if (v5)
  {
    v5->_isCFSearch = [v4 decodeBoolForKey:@"isCFSearch"];
    [v4 decodeFloatForKey:@"CFSearchTimeout"];
    v5->_CFSearchTimeout = v6;
    v5->_isProvider1Enabled = [v4 decodeBoolForKey:@"isProvider1Enabled"];
    v5->_isProvider2Enabled = [v4 decodeBoolForKey:@"isProvider2Enabled"];
    v5->_isResultFilteringDisabled = [v4 decodeBoolForKey:@"isResultFilteringDisabled"];
    v5->_isDedupeThroughAlternativeURLsEnabled = [v4 decodeBoolForKey:@"isDedupeThroughAlternativeURLsEnabled"];
    v5->_strengthenAutocompleteTriggerExtensionMatching = [v4 decodeBoolForKey:@"strengthenAutocompleteTriggerExtensionMatching"];
    v5->_enableCompletionListHistoryDeduplicationValue = [v4 decodeBoolForKey:@"enableCompletionListHistoryDeduplicationValue"];
    v5->_enableCompletionListHistoryDeduplicationSwitchToTabValue = [v4 decodeBoolForKey:@"enableCompletionListHistoryDeduplicationSwitchToTabValue"];
    v5->_characterThresholdForAnywhereInTitleOrURL = [v4 decodeIntegerForKey:@"characterThresholdForAnywhereInTitleOrURL"];
    [v4 decodeFloatForKey:@"percentageThresholdForAnywhereInTitle"];
    v5->_percentageThresholdForAnywhereInTitle = v7;
    [v4 decodeFloatForKey:@"percentageThresholdForAnywhereInURL"];
    v5->_percentageThresholdForAnywhereInURL = v8;
    v5->_characterThresholdForStartOfURLPathComponent = [v4 decodeIntegerForKey:@"characterThresholdForStartOfURLPathComponent"];
    v5->_matchingWordsInTitleThreshold = [v4 decodeIntegerForKey:@"matchingWordsInTitleThreshold"];
    v5->_characterThresholdForStartOfTitle = [v4 decodeIntegerForKey:@"characterThresholdForStartOfTitle"];
    v5->_characterThresholdForStartOfTitleWord = [v4 decodeIntegerForKey:@"characterThresholdForStartOfTitleWord"];
    v5->_characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit = [v4 decodeIntegerForKey:@"characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit"];
    v5->_characterThresholdForStartOfURL = [v4 decodeIntegerForKey:@"characterThresholdForStartOfURL"];
    v5->_maxBookmarksAndHistoryItems = [v4 decodeIntegerForKey:@"maxBookmarksAndHistoryItems"];
    [v4 decodeFloatForKey:@"normalizedTopSitesScoreAndVisitCountMultiplier"];
    v5->_normalizedTopSitesScoreAndVisitCountMultiplier = v9;
    v5->_thresholdForHidingIgnoredSiriSuggestedSites = [v4 decodeIntegerForKey:@"thresholdForHidingIgnoredSiriSuggestedSites"];
    v5->_shouldHideIgnoredSiriSuggestedSites = [v4 decodeBoolForKey:@"shouldHideIgnoredSiriSuggestedSites"];
    v10 = [v4 decodeObjectForKey:@"codepathIDs"];
    codepathIDs = v5->_codepathIDs;
    v5->_codepathIDs = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:self->_isCFSearch forKey:@"isCFSearch"];
  CFSearchTimeout = self->_CFSearchTimeout;
  *&CFSearchTimeout = CFSearchTimeout;
  [v8 encodeFloat:@"CFSearchTimeout" forKey:CFSearchTimeout];
  [v8 encodeBool:self->_isProvider1Enabled forKey:@"isProvider1Enabled"];
  [v8 encodeBool:self->_isProvider2Enabled forKey:@"isProvider2Enabled"];
  [v8 encodeBool:self->_isResultFilteringDisabled forKey:@"isResultFilteringDisabled"];
  [v8 encodeBool:self->_isDedupeThroughAlternativeURLsEnabled forKey:@"isDedupeThroughAlternativeURLsEnabled"];
  [v8 encodeBool:self->_strengthenAutocompleteTriggerExtensionMatching forKey:@"strengthenAutocompleteTriggerExtensionMatching"];
  [v8 encodeBool:self->_enableCompletionListHistoryDeduplicationValue forKey:@"enableCompletionListHistoryDeduplicationValue"];
  [v8 encodeBool:self->_enableCompletionListHistoryDeduplicationSwitchToTabValue forKey:@"enableCompletionListHistoryDeduplicationSwitchToTabValue"];
  [v8 encodeInteger:self->_characterThresholdForAnywhereInTitleOrURL forKey:@"characterThresholdForAnywhereInTitleOrURL"];
  percentageThresholdForAnywhereInTitle = self->_percentageThresholdForAnywhereInTitle;
  *&percentageThresholdForAnywhereInTitle = percentageThresholdForAnywhereInTitle;
  [v8 encodeFloat:@"percentageThresholdForAnywhereInTitle" forKey:percentageThresholdForAnywhereInTitle];
  percentageThresholdForAnywhereInURL = self->_percentageThresholdForAnywhereInURL;
  *&percentageThresholdForAnywhereInURL = percentageThresholdForAnywhereInURL;
  [v8 encodeFloat:@"percentageThresholdForAnywhereInURL" forKey:percentageThresholdForAnywhereInURL];
  [v8 encodeInteger:self->_characterThresholdForStartOfURLPathComponent forKey:@"characterThresholdForStartOfURLPathComponent"];
  [v8 encodeInteger:self->_matchingWordsInTitleThreshold forKey:@"matchingWordsInTitleThreshold"];
  [v8 encodeInteger:self->_characterThresholdForStartOfTitle forKey:@"characterThresholdForStartOfTitle"];
  [v8 encodeInteger:self->_characterThresholdForStartOfTitleWord forKey:@"characterThresholdForStartOfTitleWord"];
  [v8 encodeInteger:self->_characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit forKey:@"characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit"];
  [v8 encodeInteger:self->_characterThresholdForStartOfURL forKey:@"characterThresholdForStartOfURL"];
  [v8 encodeInteger:self->_maxBookmarksAndHistoryItems forKey:@"maxBookmarksAndHistoryItems"];
  normalizedTopSitesScoreAndVisitCountMultiplier = self->_normalizedTopSitesScoreAndVisitCountMultiplier;
  *&normalizedTopSitesScoreAndVisitCountMultiplier = normalizedTopSitesScoreAndVisitCountMultiplier;
  [v8 encodeFloat:@"normalizedTopSitesScoreAndVisitCountMultiplier" forKey:normalizedTopSitesScoreAndVisitCountMultiplier];
  [v8 encodeInteger:self->_thresholdForHidingIgnoredSiriSuggestedSites forKey:@"thresholdForHidingIgnoredSiriSuggestedSites"];
  [v8 encodeBool:self->_shouldHideIgnoredSiriSuggestedSites forKey:@"shouldHideIgnoredSiriSuggestedSites"];
  [v8 encodeObject:self->_codepathIDs forKey:@"codepathIDs"];
}

@end