@interface WBSTrialSearchParameters
+ (NSArray)searchParameters;
+ (id)codePathUUIDForHideIgnoredSiriSuggestedWebsites;
+ (id)getSearchParametersHelper:(id)helper withTrial:(id)trial withCache:(BOOL)cache;
- (BOOL)checkServerCompletionForPrefixNavigationalIntent;
- (NSNumber)prefixNavigationalIntentThreshold;
- (WBSTrialSearchParameters)init;
- (WBSTrialSearchParameters)initWithCoder:(id)coder;
- (WBSTrialSearchParameters)initWithPreferences:(id)preferences;
- (WBSTrialSearchParameters)initWithTrial:(BOOL)trial forPrefs:(id)prefs forTrial:(id)forTrial;
- (void)encodeWithCoder:(id)coder;
- (void)updateUsingPreferenceKeys:(id)keys;
- (void)updateWithDefaults;
- (void)updateWithTrial:(BOOL)trial forTrial:(id)forTrial;
@end

@implementation WBSTrialSearchParameters

+ (NSArray)searchParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = +[WBSTrialManager shared];
  v4 = [WBSTrialSearchParameters getSearchParametersHelper:standardUserDefaults withTrial:v3 withCache:1];

  return v4;
}

+ (id)getSearchParametersHelper:(id)helper withTrial:(id)trial withCache:(BOOL)cache
{
  helperCopy = helper;
  trialCopy = trial;
  array = [MEMORY[0x1E695DF70] array];
  v10 = standard_params;
  if (!standard_params || !cache)
  {
    v11 = objc_alloc_init(WBSTrialSearchParameters);
    v12 = standard_params;
    standard_params = v11;

    v10 = standard_params;
  }

  [v10 updateUsingPreferenceKeys:helperCopy];
  if (trialCopy && [trialCopy isReady] && objc_msgSend(trialCopy, "inExperiment"))
  {
    v13 = trial_params;
    if (!trial_params || !cache)
    {
      if ([trialCopy runCFFlow])
      {
        v14 = [[WBSTrialSearchParameters alloc] initWithTrial:1 forPrefs:helperCopy forTrial:trialCopy];
        [array addObject:v14];
      }

      v15 = [[WBSTrialSearchParameters alloc] initWithTrial:0 forPrefs:helperCopy forTrial:trialCopy];
      [array addObject:v15];

      objc_storeStrong(&trial_params, array);
      v13 = trial_params;
    }

    v16 = v13;

    array = v16;
  }

  else
  {
    [array addObject:standard_params];
  }

  return array;
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

- (WBSTrialSearchParameters)initWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v11.receiver = self;
  v11.super_class = WBSTrialSearchParameters;
  v5 = [(WBSTrialSearchParameters *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(WBSTrialSearchParameters *)v5 updateWithDefaults];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    if (preferencesCopy)
    {
      v8 = preferencesCopy;

      standardUserDefaults = v8;
    }

    [(WBSTrialSearchParameters *)v6 updateUsingPreferenceKeys:standardUserDefaults];
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

- (void)updateUsingPreferenceKeys:(id)keys
{
  keysCopy = keys;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (keysCopy)
  {
    v5 = keysCopy;

    standardUserDefaults = v5;
  }

  if ([standardUserDefaults BOOLForKey:@"WBSSearchRelevanceOverrideDefaults"])
  {
    if ([standardUserDefaults BOOLForKey:@"WBSDisableTrial"])
    {
      self->_isResultFilteringDisabled = [standardUserDefaults BOOLForKey:@"WBSDebugDisableResultFiltering"];
      self->_isDedupeThroughAlternativeURLsEnabled = [standardUserDefaults BOOLForKey:@"WBSSearchRelevanceServerAssistedDeduplication"];
      self->_enableCompletionListHistoryDeduplicationValue = [standardUserDefaults BOOLForKey:@"WBSSearchRelevanceHistoryDeduplication"];
      self->_enableCompletionListHistoryDeduplicationSwitchToTabValue = [standardUserDefaults BOOLForKey:@"WBSSearchRelevanceHistoryDeduplicationSwitchToTab"];
      v6 = [standardUserDefaults BOOLForKey:@"WBSSearchRelevanceDecayResults"];
      v7 = 0.0;
      if (v6)
      {
        v7 = 4.0;
      }

      self->_normalizedTopSitesScoreAndVisitCountMultiplier = v7;
      self->_strengthenAutocompleteTriggerExtensionMatching = [standardUserDefaults BOOLForKey:@"WBSSearchRelevanceStrengthenAutocompleteTriggerExtensionMatching"];
    }

    if (([standardUserDefaults BOOLForKey:@"WBSSearchRelevanceOverrideDefaults"] & 1) == 0)
    {
      [(WBSTrialSearchParameters *)self updateWithDefaults];
    }
  }
}

- (WBSTrialSearchParameters)initWithTrial:(BOOL)trial forPrefs:(id)prefs forTrial:(id)forTrial
{
  trialCopy = trial;
  prefsCopy = prefs;
  forTrialCopy = forTrial;
  v21.receiver = self;
  v21.super_class = WBSTrialSearchParameters;
  v10 = [(WBSTrialSearchParameters *)&v21 init];
  if (v10)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    if (prefsCopy)
    {
      v12 = prefsCopy;

      standardUserDefaults = v12;
    }

    mEMORY[0x1E69C8A48] = [MEMORY[0x1E69C8A48] sharedObserver];
    [mEMORY[0x1E69C8A48] setDelegate:v10];

    [(WBSTrialSearchParameters *)v10 updateWithDefaults];
    v14 = +[WBSTrialManager shared];
    if (forTrialCopy)
    {
      v15 = forTrialCopy;

      v14 = v15;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSTrialSearchParameters_initWithTrial_forPrefs_forTrial___block_invoke;
    block[3] = &unk_1E7FB6F80;
    v16 = v10;
    v20 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (([v14 inExperiment] & 1) != 0 && (objc_msgSend(standardUserDefaults, "BOOLForKey:", @"WBSSearchRelevanceOverrideDefaults") & 1) == 0 && (objc_msgSend(standardUserDefaults, "BOOLForKey:", @"WBSDisableTrial") & 1) == 0)
    {
      [(WBSTrialSearchParameters *)v16 updateWithTrial:trialCopy forTrial:v14];
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

- (void)updateWithTrial:(BOOL)trial forTrial:(id)forTrial
{
  trialCopy = trial;
  forTrialCopy = forTrial;
  v6 = +[WBSTrialManager shared];
  if (forTrialCopy)
  {
    v7 = forTrialCopy;

    v6 = v7;
  }

  if (trialCopy)
  {
    self->_isCFSearch = 1;
    [v6 CFSearchTimeoutForDefault:0.06];
    self->_CFSearchTimeout = v8;
  }

  self->_isProvider1Enabled = [v6 getBoolFactor:@"enableProvider1" forCF:0 forDefault:0];
  self->_isProvider2Enabled = [v6 getBoolFactor:@"enableProvider2" forCF:0 forDefault:0];
  self->_isDedupeThroughAlternativeURLsEnabled = [v6 getBoolFactor:@"enableDedupeThroughAlternativeURLs" forCF:trialCopy forDefault:0];
  self->_strengthenAutocompleteTriggerExtensionMatching = [v6 getBoolFactor:@"strengthenAutocompleteTriggerExtensionMatching" forCF:trialCopy forDefault:0];
  self->_enableCompletionListHistoryDeduplicationValue = [v6 getBoolFactor:@"enableCompletionListHistoryDeduplication" forCF:trialCopy forDefault:1];
  self->_characterThresholdForAnywhereInTitleOrURL = [v6 getIntFactor:@"characterThresholdForAnywhereInTitleOrURL" forCF:trialCopy forDefault:18];
  [v6 getFloatFactor:@"percentageThresholdForAnywhereInTitle" forCF:trialCopy forDefault:0.8];
  self->_percentageThresholdForAnywhereInTitle = v9;
  [v6 getFloatFactor:@"percentageThresholdForAnywhereInURL" forCF:trialCopy forDefault:0.8];
  self->_percentageThresholdForAnywhereInURL = v10;
  self->_characterThresholdForStartOfURLPathComponent = [v6 getIntFactor:@"characterThresholdForStartOfURLPathComponent" forCF:trialCopy forDefault:4];
  self->_matchingWordsInTitleThreshold = [v6 getIntFactor:@"matchingWordsInTitleThreshold" forCF:trialCopy forDefault:3];
  self->_characterThresholdForStartOfTitle = [v6 getIntFactor:@"characterThresholdForStartOfTitle" forCF:trialCopy forDefault:3];
  self->_characterThresholdForStartOfTitleWord = [v6 getIntFactor:@"characterThresholdForStartOfTitleWord" forCF:trialCopy forDefault:4];
  self->_characterThresholdForStartOfURL = [v6 getIntFactor:@"characterThresholdForStartOfURL" forCF:trialCopy forDefault:3];
  self->_normalizedTopSitesScoreAndVisitCountMultiplier = [v6 getIntFactor:@"normalizedTopSitesScoreAndVisitCountMultiplier" forCF:trialCopy forDefault:4];
  self->_maxBookmarksAndHistoryItems = [v6 getIntFactor:@"maxBookmarksAndHistoryItems" forCF:trialCopy forDefault:-1];
  self->_isPostFixSuggestionsEnabled = [v6 getBoolFactor:@"enablePostFixSearchEngineSuggestions" forCF:trialCopy forDefault:{objc_msgSend(MEMORY[0x1E69C8880], "isPostFixSuggestionsEnabled")}];
  v11 = [v6 getNumberFactorWithName:@"enablePrefixNavigationalIntent"];
  prefixNavigationalIntentThreshold = self->_prefixNavigationalIntentThreshold;
  self->_prefixNavigationalIntentThreshold = v11;

  if (!self->_prefixNavigationalIntentThreshold)
  {
    v13 = +[WBSDefaultSearchParameters prefixNavigationalIntentThreshold];
    v14 = self->_prefixNavigationalIntentThreshold;
    self->_prefixNavigationalIntentThreshold = v13;
  }

  self->_checkServerCompletionForPrefixNavigationalIntent = [v6 getBoolFactor:@"checkServerCompletionForPrefixNavigationalIntent" forCF:trialCopy forDefault:{+[WBSDefaultSearchParameters checkServerCompletionForPrefixNavigationalIntent](WBSDefaultSearchParameters, "checkServerCompletionForPrefixNavigationalIntent")}];
  self->_thresholdForHidingIgnoredSiriSuggestedSites = [v6 getIntFactor:@"thresholdForHidingIgnoredSiriSuggestedSites" forCF:trialCopy forDefault:-1];
  self->_shouldHideIgnoredSiriSuggestedSites = [v6 getBoolFactor:@"shouldHideIgnoredSiriSuggestedSites" forCF:trialCopy forDefault:1];
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
    inExperiment = [v4 inExperiment];

    if (inExperiment)
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
    inExperiment = [v4 inExperiment];

    if (inExperiment)
    {
      return self->_checkServerCompletionForPrefixNavigationalIntent;
    }
  }

  else
  {
  }

  return +[WBSDefaultSearchParameters checkServerCompletionForPrefixNavigationalIntent];
}

- (WBSTrialSearchParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WBSTrialSearchParameters;
  v5 = [(WBSTrialSearchParameters *)&v14 init];
  if (v5)
  {
    v5->_isCFSearch = [coderCopy decodeBoolForKey:@"isCFSearch"];
    [coderCopy decodeFloatForKey:@"CFSearchTimeout"];
    v5->_CFSearchTimeout = v6;
    v5->_isProvider1Enabled = [coderCopy decodeBoolForKey:@"isProvider1Enabled"];
    v5->_isProvider2Enabled = [coderCopy decodeBoolForKey:@"isProvider2Enabled"];
    v5->_isResultFilteringDisabled = [coderCopy decodeBoolForKey:@"isResultFilteringDisabled"];
    v5->_isDedupeThroughAlternativeURLsEnabled = [coderCopy decodeBoolForKey:@"isDedupeThroughAlternativeURLsEnabled"];
    v5->_strengthenAutocompleteTriggerExtensionMatching = [coderCopy decodeBoolForKey:@"strengthenAutocompleteTriggerExtensionMatching"];
    v5->_enableCompletionListHistoryDeduplicationValue = [coderCopy decodeBoolForKey:@"enableCompletionListHistoryDeduplicationValue"];
    v5->_enableCompletionListHistoryDeduplicationSwitchToTabValue = [coderCopy decodeBoolForKey:@"enableCompletionListHistoryDeduplicationSwitchToTabValue"];
    v5->_characterThresholdForAnywhereInTitleOrURL = [coderCopy decodeIntegerForKey:@"characterThresholdForAnywhereInTitleOrURL"];
    [coderCopy decodeFloatForKey:@"percentageThresholdForAnywhereInTitle"];
    v5->_percentageThresholdForAnywhereInTitle = v7;
    [coderCopy decodeFloatForKey:@"percentageThresholdForAnywhereInURL"];
    v5->_percentageThresholdForAnywhereInURL = v8;
    v5->_characterThresholdForStartOfURLPathComponent = [coderCopy decodeIntegerForKey:@"characterThresholdForStartOfURLPathComponent"];
    v5->_matchingWordsInTitleThreshold = [coderCopy decodeIntegerForKey:@"matchingWordsInTitleThreshold"];
    v5->_characterThresholdForStartOfTitle = [coderCopy decodeIntegerForKey:@"characterThresholdForStartOfTitle"];
    v5->_characterThresholdForStartOfTitleWord = [coderCopy decodeIntegerForKey:@"characterThresholdForStartOfTitleWord"];
    v5->_characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit = [coderCopy decodeIntegerForKey:@"characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit"];
    v5->_characterThresholdForStartOfURL = [coderCopy decodeIntegerForKey:@"characterThresholdForStartOfURL"];
    v5->_maxBookmarksAndHistoryItems = [coderCopy decodeIntegerForKey:@"maxBookmarksAndHistoryItems"];
    [coderCopy decodeFloatForKey:@"normalizedTopSitesScoreAndVisitCountMultiplier"];
    v5->_normalizedTopSitesScoreAndVisitCountMultiplier = v9;
    v5->_thresholdForHidingIgnoredSiriSuggestedSites = [coderCopy decodeIntegerForKey:@"thresholdForHidingIgnoredSiriSuggestedSites"];
    v5->_shouldHideIgnoredSiriSuggestedSites = [coderCopy decodeBoolForKey:@"shouldHideIgnoredSiriSuggestedSites"];
    v10 = [coderCopy decodeObjectForKey:@"codepathIDs"];
    codepathIDs = v5->_codepathIDs;
    v5->_codepathIDs = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_isCFSearch forKey:@"isCFSearch"];
  CFSearchTimeout = self->_CFSearchTimeout;
  *&CFSearchTimeout = CFSearchTimeout;
  [coderCopy encodeFloat:@"CFSearchTimeout" forKey:CFSearchTimeout];
  [coderCopy encodeBool:self->_isProvider1Enabled forKey:@"isProvider1Enabled"];
  [coderCopy encodeBool:self->_isProvider2Enabled forKey:@"isProvider2Enabled"];
  [coderCopy encodeBool:self->_isResultFilteringDisabled forKey:@"isResultFilteringDisabled"];
  [coderCopy encodeBool:self->_isDedupeThroughAlternativeURLsEnabled forKey:@"isDedupeThroughAlternativeURLsEnabled"];
  [coderCopy encodeBool:self->_strengthenAutocompleteTriggerExtensionMatching forKey:@"strengthenAutocompleteTriggerExtensionMatching"];
  [coderCopy encodeBool:self->_enableCompletionListHistoryDeduplicationValue forKey:@"enableCompletionListHistoryDeduplicationValue"];
  [coderCopy encodeBool:self->_enableCompletionListHistoryDeduplicationSwitchToTabValue forKey:@"enableCompletionListHistoryDeduplicationSwitchToTabValue"];
  [coderCopy encodeInteger:self->_characterThresholdForAnywhereInTitleOrURL forKey:@"characterThresholdForAnywhereInTitleOrURL"];
  percentageThresholdForAnywhereInTitle = self->_percentageThresholdForAnywhereInTitle;
  *&percentageThresholdForAnywhereInTitle = percentageThresholdForAnywhereInTitle;
  [coderCopy encodeFloat:@"percentageThresholdForAnywhereInTitle" forKey:percentageThresholdForAnywhereInTitle];
  percentageThresholdForAnywhereInURL = self->_percentageThresholdForAnywhereInURL;
  *&percentageThresholdForAnywhereInURL = percentageThresholdForAnywhereInURL;
  [coderCopy encodeFloat:@"percentageThresholdForAnywhereInURL" forKey:percentageThresholdForAnywhereInURL];
  [coderCopy encodeInteger:self->_characterThresholdForStartOfURLPathComponent forKey:@"characterThresholdForStartOfURLPathComponent"];
  [coderCopy encodeInteger:self->_matchingWordsInTitleThreshold forKey:@"matchingWordsInTitleThreshold"];
  [coderCopy encodeInteger:self->_characterThresholdForStartOfTitle forKey:@"characterThresholdForStartOfTitle"];
  [coderCopy encodeInteger:self->_characterThresholdForStartOfTitleWord forKey:@"characterThresholdForStartOfTitleWord"];
  [coderCopy encodeInteger:self->_characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit forKey:@"characterThresholdForStartOfTitleWordMatchLongEnoughForTopHit"];
  [coderCopy encodeInteger:self->_characterThresholdForStartOfURL forKey:@"characterThresholdForStartOfURL"];
  [coderCopy encodeInteger:self->_maxBookmarksAndHistoryItems forKey:@"maxBookmarksAndHistoryItems"];
  normalizedTopSitesScoreAndVisitCountMultiplier = self->_normalizedTopSitesScoreAndVisitCountMultiplier;
  *&normalizedTopSitesScoreAndVisitCountMultiplier = normalizedTopSitesScoreAndVisitCountMultiplier;
  [coderCopy encodeFloat:@"normalizedTopSitesScoreAndVisitCountMultiplier" forKey:normalizedTopSitesScoreAndVisitCountMultiplier];
  [coderCopy encodeInteger:self->_thresholdForHidingIgnoredSiriSuggestedSites forKey:@"thresholdForHidingIgnoredSiriSuggestedSites"];
  [coderCopy encodeBool:self->_shouldHideIgnoredSiriSuggestedSites forKey:@"shouldHideIgnoredSiriSuggestedSites"];
  [coderCopy encodeObject:self->_codepathIDs forKey:@"codepathIDs"];
}

@end