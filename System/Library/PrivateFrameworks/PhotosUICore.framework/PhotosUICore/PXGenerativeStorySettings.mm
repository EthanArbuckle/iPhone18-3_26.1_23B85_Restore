@interface PXGenerativeStorySettings
+ (BOOL)isMemoryCreationButtonInWatchNextEnabled;
+ (BOOL)isMemoryCreationCardInWatchNextEnabled;
+ (BOOL)isMemoryCreationEnabled;
+ (BOOL)isMemoryCreationLocationAutocompleteEnabled;
+ (BOOL)isMemoryCreationTimeEventDisambiguationEnabled;
+ (id)internal_deleteGenerativeMemories;
+ (id)sharedInstance;
- (BOOL)_isAppleInternal;
- (void)setDefaultValues;
@end

@implementation PXGenerativeStorySettings

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = PXGenerativeStorySettings;
  [(PTSettings *)&v7 setDefaultValues];
  self->_internal_isMemoryCreationEnabled = 1;
  self->_preferInternalEvaluationUI = 0;
  self->_preferMockSuggestionsData = 0;
  self->_shouldShowSuggestionSourceBadge = 0;
  self->_promptSuggestionRefreshOnReload = 0;
  self->_simulateSlowFetchForPromptSuggestion = 0;
  self->_promptSuggestionCacheExpirationInMinutes = 8.0;
  self->_promptSuggestionMusicLengthLimit = 50;
  self->_promptSuggestionRefetchCooldown = 5.0;
  self->_showFreeformMemoryCreationCellInMemoryShelf = 1;
  self->_memoryCreationCellPositionInMemoryShelf = 0;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 0;
  if (!userInterfaceIdiom)
  {
    v5 = MEMORY[0x1A590D320]() ^ 1;
  }

  self->_isMemoryCreationCellRepositioningEnabled = v5;
  self->_internal_isMemoryCreationCardInWatchNextEnabled = 0;
  self->_internal_isMemoryCreationButtonInWatchNextEnabled = 1;
  self->_showFreeformMemoryCreationButtonInMemoryShelf = 1;
  self->_showFreeformMemoryCreationButtonInMemoryFeed = 1;
  self->_shouldForceFallbackMemoryGeneration = 0;
  self->_shouldLoadStoriesFromCache = [(PXGenerativeStorySettings *)self _isAppleInternal];
  self->_replaceMemoryCreationWithMockData = 0;
  self->_simulateCreationError = 0;
  self->_simulateSlowCreation = 0;
  if (MEMORY[0x1A590D320]())
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  self->_entryPointBackgroundMode = v6;
  self->_fullScreenBackgroundMode = 2;
  self->_showDebugUIGenerationProgress = 0;
  self->_showDebugErrorUI = 0;
  *&self->_cellBackgroundShouldLimitVideoDownloadQuality = 1;
  self->_shouldRefreshBackgroundAssetsOnAppRestart = 0;
  self->_backgroundBlurRadius = 40.0;
  self->_playbackRateFactor = 0.5;
  self->_simulateSlowFetchForBackgroundAssets = 0;
  self->_isMemoryCreationImageAnimationEnabled = 1;
  *&self->_isMemoryCreationTextAnimationEnabled = 1;
  self->_shouldUsePlaceholderAssetsForLoadingAnimation = 1;
  self->_shouldUseRetrievedAssetsForLoadingAnimation = 1;
  self->_shouldUseExtendedAssetsForLoadingAnimation = 1;
  *&self->_shouldUseGlobalTraitsForLoadingAnimation = 1;
  self->_vfxQualityPostProcessingFXHighQuality = 0;
  self->_vfxQualityResolution = 0;
  self->_vfxQualityFrameRate = 0;
  self->_vfxQualityUseBestCrop = 0;
  self->_automaticallyRestartStoryGenerationAfterUserDisambiguation = 1;
  self->_automaticallyExpandDisambiguationMenu = 1;
  self->_fullScreenTransitionType = 1;
  self->_showIntelligenceLightingInSuggestions = 1;
  self->_intelligenceLightModeInPromptTextField = +[PXGenerativeStorySettings defaultIntelligenceLightMode];
  self->_unresolvableAmbiguityShowsContinueButton = 0;
  self->_showAssetGridForTimeEventDisambiguation = 0;
  self->_enableLocationDisambiguation = 0;
  *&self->_ambiguousTokensPauseStoryGeneration = 1;
  self->_promptEntryViewType = 0;
  self->_autocompleteSuggestionsMode = 1;
  self->_locationAutocompleteSuggestionsMode = 2;
  self->_showChapterTitles = 0;
  self->_saveCurationInFolder = 0;
  self->_showVisualDiagnosticsOptionInTapToRadar = 0;
  self->_uploadVisualDiagnostics = 0;
  self->_shouldUseAvailabilityMonitor = 1;
  *&self->_shouldUseProcessingStatusInAvailabilityMonitor = 1;
  self->_availabilityPollingInterval = 60.0;
  self->_showPerformanceTTRIfGenerationSlowOrHanging = 0;
  self->_shouldCancelGenerationAfterMaxDuration = 1;
  self->_maxDurationForGeneration = 70.0;
  self->_suggestionToolEnabled = 0;
  self->_numberOfSuggestions = 4.0;
  self->_displayPromptListButton = 0;
  self->_allowRadarRequestAlerts = [(PXGenerativeStorySettings *)self _isAppleInternal];
  if ([(PXGenerativeStorySettings *)self _isAppleInternal])
  {
    self->_centralizedFeedbackUI = 0;
    self->_shouldForceDiagnosticAsSeedOrFCS = 0;
  }

  else
  {
    self->_shouldForceDiagnosticAsSeedOrFCS = 1;
    self->_centralizedFeedbackUI = 1;
  }

  self->_forceShowPlaybackInTests = 0;
}

- (BOOL)_isAppleInternal
{
  if (_isAppleInternal_onceToken != -1)
  {
    dispatch_once(&_isAppleInternal_onceToken, &__block_literal_global_432);
  }

  return _isAppleInternal_isAppleInternal;
}

uint64_t __45__PXGenerativeStorySettings__isAppleInternal__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _isAppleInternal_isAppleInternal = result;
  return result;
}

+ (BOOL)isMemoryCreationEnabled
{
  v2 = +[PXGenerativeStorySettings sharedInstance];
  internal_isMemoryCreationEnabled = [v2 internal_isMemoryCreationEnabled];

  return internal_isMemoryCreationEnabled;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_41625 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_41625, &__block_literal_global_41626);
  }

  v3 = sharedInstance_sharedInstance_41627;

  return v3;
}

void __43__PXGenerativeStorySettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 generativeStorySettings];
  v1 = sharedInstance_sharedInstance_41627;
  sharedInstance_sharedInstance_41627 = v0;
}

+ (id)internal_deleteGenerativeMemories
{
  v24[2] = *MEMORY[0x1E69E9840];
  px_systemPhotoLibrary = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  librarySpecificFetchOptions = [px_systemPhotoLibrary librarySpecificFetchOptions];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"category", 32];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"creationType", 1];
  v6 = MEMORY[0x1E696AB28];
  v24[0] = v4;
  v24[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v8 = [v6 orPredicateWithSubpredicates:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0", @"favorite"];
  v10 = MEMORY[0x1E696AB28];
  v23[0] = v8;
  v23[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [librarySpecificFetchOptions setPredicate:v12];

  [librarySpecificFetchOptions setIncludeStoryMemories:1];
  v13 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__PXGenerativeStorySettings_internal_deleteGenerativeMemories__block_invoke;
  v21[3] = &unk_1E774C648;
  v14 = v13;
  v22 = v14;
  v20 = 0;
  v15 = [px_systemPhotoLibrary performChangesAndWait:v21 error:&v20];
  v16 = v20;
  v17 = v16;
  if (v15)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"All your generative memories have been deleted (%lu memories removed).", objc_msgSend(v14, "count")];
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not perform deletion, error: %@", v16];
    NSLog(&cfstr_FailedToCleanu.isa, v17);
  }

  return v18;
}

+ (BOOL)isMemoryCreationButtonInWatchNextEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[PXGenerativeStorySettings sharedInstance];
    internal_isMemoryCreationButtonInWatchNextEnabled = [v3 internal_isMemoryCreationButtonInWatchNextEnabled];

    LOBYTE(v2) = internal_isMemoryCreationButtonInWatchNextEnabled;
  }

  return v2;
}

+ (BOOL)isMemoryCreationCardInWatchNextEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = +[PXGenerativeStorySettings sharedInstance];
    internal_isMemoryCreationCardInWatchNextEnabled = [v3 internal_isMemoryCreationCardInWatchNextEnabled];

    LOBYTE(v2) = internal_isMemoryCreationCardInWatchNextEnabled;
  }

  return v2;
}

+ (BOOL)isMemoryCreationLocationAutocompleteEnabled
{
  isMemoryCreationEnabled = [self isMemoryCreationEnabled];
  if (isMemoryCreationEnabled)
  {

    LOBYTE(isMemoryCreationEnabled) = _os_feature_enabled_impl();
  }

  return isMemoryCreationEnabled;
}

+ (BOOL)isMemoryCreationTimeEventDisambiguationEnabled
{
  isMemoryCreationEnabled = [self isMemoryCreationEnabled];
  if (isMemoryCreationEnabled)
  {

    LOBYTE(isMemoryCreationEnabled) = _os_feature_enabled_impl();
  }

  return isMemoryCreationEnabled;
}

@end