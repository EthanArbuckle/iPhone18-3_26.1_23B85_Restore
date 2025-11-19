@interface WBSAnalyticsLogger
+ (id)sharedLogger;
- (WBSAnalyticsLogger)initWithQueue:(id)a3;
- (id)_builtInImageNameToSimpleName:(id)a3;
- (id)_bundleIdDictionaryWithArray:(id)a3;
- (id)_nameForStartPageSection:(int64_t)a3;
- (id)_sanitizedPathExtensionForAnalyticsForPathExtension:(id)a3;
- (void)_didAddBookmarkWithMethod:(id)a3 menuItemType:(id)a4;
- (void)_logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 integerValue:(int64_t)a5;
- (void)_logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 stringValue:(id)a5;
- (void)_sendEvent:(id)a3 usingBlock:(id)a4;
- (void)_sendEventAddingVersionInfo:(id)a3 baseEvent:(id)a4;
- (void)_sendEventAddingVersionInfo:(id)a3 usingBlock:(id)a4;
- (void)didAcceptCompletionItemOfType:(int64_t)a3 atRank:(unint64_t)a4;
- (void)didAcceptSearchSuggestionOfType:(int64_t)a3;
- (void)didActivateLinkWithZoomScale:(float)a3 recentlyZoomedIn:(BOOL)a4;
- (void)didActivateReaderWithTrigger:(int64_t)a3;
- (void)didActivateVoiceSearchAccidentally:(BOOL)a3;
- (void)didAddBookmarkFromToolbarMenuWithItemType:(int64_t)a3;
- (void)didAddBookmarkWithMethod:(int64_t)a3;
- (void)didAddNumberOfBookmarksInMemory:(unint64_t)a3;
- (void)didAddReadingListItemWithMethod:(int64_t)a3;
- (void)didBanWebsiteWithMetadata:(id)a3;
- (void)didChangeStartPageSectionVisibility:(id)a3 visible:(BOOL)a4;
- (void)didChooseIntervalFromAutomaticTabClosingFirstTimeExperiencePrompt:(id)a3;
- (void)didChooseTopHit:(BOOL)a3 matchLength:(unint64_t)a4 matchScore:(float)a5;
- (void)didClearBrowsingDataFromInterval:(int64_t)a3 withMethod:(int64_t)a4;
- (void)didCloseTabWithTrigger:(int64_t)a3 tabClosingAction:(int64_t)a4 numberOfTabsClosed:(unint64_t)a5 tabCollectionViewType:(int64_t)a6;
- (void)didCloseTabsAutomaticallyWithCount:(unint64_t)a3 tabClosingInterval:(id)a4;
- (void)didCloseVisualTabPickerWithMethod:(int64_t)a3;
- (void)didContinueUserActivityOfType:(int64_t)a3;
- (void)didConvertExtensionWithKeySupport:(id)a3;
- (void)didCreateTabGroupFromLocation:(int64_t)a3 prepopulatedWithTabs:(BOOL)a4;
- (void)didDeleteNumberOfBookmarksInMemory:(unint64_t)a3;
- (void)didDetectLanguageOfWebpage:(id)a3 primaryLocale:(id)a4 webpageCanBeTranslatedToPrimaryLocale:(BOOL)a5 canOfferTranslation:(BOOL)a6 firstNonPrimaryLocaleThatCanBeTranslatedTo:(id)a7 numberOfPreferredLocales:(unint64_t)a8 notificationLevel:(int64_t)a9;
- (void)didDetectPossibleUserTrackingInHostApp:(id)a3 urlHasIDFA:(BOOL)a4 urlHasQueryString:(BOOL)a5 userInteracted:(BOOL)a6 viewControllerIsHidden:(BOOL)a7;
- (void)didDetermineReaderAvailability:(BOOL)a3;
- (void)didDismissCompletionListWithItemAccepted:(BOOL)a3 goKeyTapped:(BOOL)a4 unifiedFieldContentType:(int64_t)a5;
- (void)didDownvoteDataSourceWithMetadata:(id)a3;
- (void)didEngageWithStartPageSection:(int64_t)a3;
- (void)didEnterTabViewWithMethod:(int64_t)a3;
- (void)didFindOnPageWithTrigger:(int64_t)a3;
- (void)didFinishPageLoadWithPageLoadStatus:(int64_t)a3;
- (void)didFinishScribble:(unint64_t)a3;
- (void)didInjectScriptForExtensionWithIdentifier:(id)a3;
- (void)didInteractWithOnboardingItem:(id)a3 userClosedCard:(BOOL)a4;
- (void)didInvokeToolbarButtonForExtensionWithIdentifier:(id)a3;
- (void)didLoadTabContent:(int64_t)a3;
- (void)didManuallyMarkReadingListItemAsRead:(BOOL)a3;
- (void)didModifyPerSitePreferencesWithPreferenceIdentifier:(id)a3 modificationLevel:(int64_t)a4 type:(int64_t)a5 method:(int64_t)a6;
- (void)didMoveToBackgroundWithNumberOfOnGoingDownloads:(unint64_t)a3;
- (void)didNavigateToFrequentlyVisitedSiteByAnyMeansWithAnalyticsPayload:(id)a3;
- (void)didOpenClearHistoryFromSource:(id)a3;
- (void)didOpenCloudTabsItemWithPosition:(int64_t)a3;
- (void)didOpenNewBlankTabWithTrigger:(int64_t)a3 tabCollectionViewType:(int64_t)a4;
- (void)didOpenNewTabWithURLWithTrigger:(int64_t)a3 isExternalLink:(BOOL)a4 tabCollectionViewType:(int64_t)a5;
- (void)didOpenPerSitePreferencesPopoverVia:(int64_t)a3;
- (void)didOpenReadingListItemWithPosition:(int64_t)a3;
- (void)didOpenReadingListItemWithReachableNetwork:(BOOL)a3 isContinuousTransition:(BOOL)a4;
- (void)didOpenRecentlyClosedTabsItemWithPosition:(int64_t)a3;
- (void)didOpenRecommendationWithMetadata:(id)a3 withPosition:(int64_t)a4;
- (void)didOpenVisualTabPickerWithMethod:(int64_t)a3;
- (void)didPerformActionOnDownloadsPopover:(int64_t)a3;
- (void)didPerformDownloadsFileEvent:(int64_t)a3 withFileType:(id)a4;
- (void)didPerformMoreMenuAction:(int64_t)a3;
- (void)didPerformSafeBrowsingAction:(int64_t)a3 fromSource:(int64_t)a4;
- (void)didPerformVisualTabPickerMiscEvent:(int64_t)a3;
- (void)didPreventBookmarkActionWithBookmarkType:(int64_t)a3 actionType:(int64_t)a4;
- (void)didReceiveAnalyticsEventFromWebKitWithName:(id)a3 description:(id)a4 payload:(id)a5;
- (void)didReloadEvent:(int64_t)a3 withReloadType:(int64_t)a4 withReloadProvenance:(int64_t)a5 withLayout:(int64_t)a6;
- (void)didRemoveFrequentlyVisitedSiteWithAnalyticsPayload:(id)a3;
- (void)didRequestPageShowingSideBar:(BOOL)a3;
- (void)didRequestTranslatingToLocale:(id)a3 webpageLocale:(id)a4 requestType:(int64_t)a5 isTargetLocalePrimaryLocale:(BOOL)a6;
- (void)didRetrieveNumberOfFavorites:(unint64_t)a3;
- (void)didRetrieveNumberOfFrequentlyVisitedSites:(unint64_t)a3;
- (void)didRetrieveNumberOfRecommendations:(unint64_t)a3 numberOfTopics:(unint64_t)a4;
- (void)didRevealDownloadWithMIMEType:(id)a3 uti:(id)a4 result:(int64_t)a5;
- (void)didSelectFavoriteWithOpenLocation:(int64_t)a3;
- (void)didSelectFavoritesRow:(int64_t)a3;
- (void)didSelectFrequentlyVisitedSiteWithOpenLocation:(int64_t)a3 analyticsPayload:(id)a4;
- (void)didSetDownloadFolderToProviderWithIdentifier:(id)a3 isDefaultFolder:(BOOL)a4;
- (void)didSetPrivateBrowsingEnabled:(BOOL)a3;
- (void)didShowBrowserChoiceScreen:(id)a3;
- (void)didShowPasswordGenerationPromptWithPasswordAccepted:(BOOL)a3;
- (void)didShowSafeBrowsingWarningWithSource:(int64_t)a3;
- (void)didStartDragWithDragContentType:(int64_t)a3;
- (void)didSubmitFormOfType:(unint64_t)a3 withFieldType:(int64_t)a4 elementType:(unint64_t)a5 isAutoFilled:(BOOL)a6 isManuallyFilledByUser:(BOOL)a7 modificationType:(unint64_t)a8 autoFillOfferedType:(unint64_t)a9 webpageLocale:(id)a10;
- (void)didSubmitFormOfType:(unint64_t)a3 withPerFormModificationsDictionary:(id)a4 webpageLocale:(id)a5;
- (void)didSubmitFormOfType:(unint64_t)a3 withPerFormUsageDictionary:(id)a4 webpageLocale:(id)a5;
- (void)didSuggestUsernameInPromptAndUserKeptSuggestion:(BOOL)a3;
- (void)didSwitchToSafari:(id)a3 entryPoint:(id)a4;
- (void)didSwitchToTabGroupFromLocation:(int64_t)a3;
- (void)didTakeActionOnClearHistory:(id)a3;
- (void)didUseCreditCardAutoFillEscapeHatchFillingNewType:(id)a3 forPreviousType:(id)a4 fieldType:(int64_t)a5;
- (void)didUseSidebarAction:(int64_t)a3;
- (void)didViewBrowserProductPage:(id)a3;
- (void)didVisitBookmarksWithOpenLocation:(int64_t)a3 numberOfBookmarksVisited:(unint64_t)a4;
- (void)didVisitWebpageSBAWithUserOptedIn:(BOOL)a3;
- (void)generatedPasswordDidOverwriteExistingPasswordWithTrigger:(int64_t)a3;
- (void)logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4;
- (void)logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 result:(int64_t)a5;
- (void)logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 value:(id)a5;
- (void)performOnAnalyticsQueueWithDelay:(int64_t)a3 block:(id)a4;
- (void)recordSearchResultPageImpressionWithDefaultSearchProviderIdentifier:(id)a3 searchProviderIdentifier:(id)a4 provenance:(int64_t)a5;
- (void)registerSafariVersion:(id)a3 persona:(int64_t)a4;
- (void)reportAdvancedPrivacyProtectionPreference;
- (void)reportAllProcessInfo:(id)a3;
- (void)reportApplicationCacheSize:(unint64_t)a3;
- (void)reportAudioIndicatorClickEvent:(int64_t)a3;
- (void)reportAutomaticTabClosingInterval:(id)a3;
- (void)reportAverageNumberOfTabsPerTabGroup:(int64_t)a3 andMaximum:(int64_t)a4;
- (void)reportBlockingSafariQuitWithReason:(int64_t)a3;
- (void)reportCustomizationSyncEnablement:(BOOL)a3;
- (void)reportExperimentalFeaturesOnLaunchForWebXREnabled:(BOOL)a3 webXRGamepadsModuleEnabled:(BOOL)a4 webXRHandInputModuleEnabled:(BOOL)a5 modelElementEnabled:(BOOL)a6;
- (void)reportFirstInteractionAfterTranslation:(int64_t)a3 maxVisibleHeightPercentage:(float)a4;
- (void)reportFolderOnTopModePreference:(BOOL)a3;
- (void)reportIOSToolbarButtonUsage:(int64_t)a3 withLayout:(int64_t)a4;
- (void)reportInvalidMessageFromWebProcess:(id)a3;
- (void)reportIsUsingPasswordsApp:(BOOL)a3 isUsingCredentialProviderExtension:(BOOL)a4;
- (void)reportMacOSToolbarButtonUsage:(int64_t)a3 withLayout:(int64_t)a4;
- (void)reportNewTabBehavior:(int64_t)a3;
- (void)reportNewWindowBehavior:(int64_t)a3;
- (void)reportNumberOfDuplicateBookmarksWithTopLevelDuplicatesCount:(unint64_t)a3 allDuplicatesCount:(unint64_t)a4;
- (void)reportNumberOfExtensionsWithFrequencyDictionaryProvider:(id)a3;
- (void)reportNumberOfPinnedTabs:(unint64_t)a3;
- (void)reportNumberOfTabGroups:(int64_t)a3;
- (void)reportNumberOfTabs:(int64_t)a3;
- (void)reportNumberOfTabsPerWindow:(int64_t)a3;
- (void)reportNumberOfWebApps:(int64_t)a3 andBookmarks:(int64_t)a4;
- (void)reportNumberOfWebsitesWithScribbleActive:(unint64_t)a3;
- (void)reportNumberOfWindows:(int64_t)a3;
- (void)reportOverlayStatusBarIsEnabled:(BOOL)a3;
- (void)reportPictureInPictureEvent:(int64_t)a3;
- (void)reportPrivateBrowsingUsage:(int64_t)a3;
- (void)reportPrivateRelayModulePromptEvent:(id)a3;
- (void)reportSVCToolbarButtonUsage:(int64_t)a3;
- (void)reportSafariRecoveredWindowStateWithSuccess:(BOOL)a3;
- (void)reportSafariTabStateMismatchWithError:(int64_t)a3 systemTALEnabled:(BOOL)a4 safariRestoreOnLaunchEnabled:(BOOL)a5 excludePrivateWindows:(BOOL)a6 systemSaysPreserveState:(BOOL)a7 stringRepresentation:(id)a8;
- (void)reportSafariVersion:(id)a3 safariAndWebKitVersion:(id)a4;
- (void)reportShowFullURLInSmartSearchFieldPreference:(BOOL)a3;
- (void)reportShowStandaloneTabBarPreference:(BOOL)a3;
- (void)reportStartPageBackgroundImageVisible:(BOOL)a3;
- (void)reportStartPageBackgroundName:(id)a3;
- (void)reportStartPageOverrideStatistics:(id)a3;
- (void)reportStartPageSectionVisibility:(int64_t)a3 visible:(BOOL)a4;
- (void)reportStatusForExtensions:(id)a3 extensionType:(id)a4;
- (void)reportTabGroupSyncFinishedWithInfo:(id)a3;
- (void)reportTabGroupSyncSuccessesWithCount:(id)a3;
- (void)reportTabUpdatedWithUpdateType:(int64_t)a3;
- (void)reportTabsForNonTabGroupUser:(int64_t)a3 andAverageNumber:(int64_t)a4;
- (void)reportUnifiedFieldEvent:(int64_t)a3;
- (void)reportUnifiedFieldHistoryItemURLAutocompletedEventWithDaysSinceLastVisit:(id)a3;
- (void)reportUnifiedFieldSearchSlowDown:(double)a3;
- (void)reportUnifiedTabBarStatusWithLayout:(int64_t)a3 numberOfTabsInCurrentTabBar:(unint64_t)a4 tabBarIsCurrentlyScrollable:(BOOL)a5 tabsShowOnlyIcons:(BOOL)a6 backgroundColorInTabBarEnabled:(BOOL)a7;
- (void)reportUserConsentStateSBA:(id)a3;
- (void)reportUserPreferencesOnLaunchForJavaScriptEnabled:(BOOL)a3 safeBrowsingEnabled:(BOOL)a4 siteSpecificSearchEnabled:(BOOL)a5 trackingPolicy:(unint64_t)a6;
- (void)reportVerificationCodeProvider:(id)a3;
- (void)reportWeakPasswordWarningEvent:(int64_t)a3;
- (void)reportWebContentProcessInfo:(id)a3;
- (void)safariDidBeginTerminationWithReason:(int64_t)a3;
- (void)safariDidCancelTermination;
- (void)webExtensionBackgroundPage:(id)a3 livedTooLong:(double)a4;
@end

@implementation WBSAnalyticsLogger

+ (id)sharedLogger
{
  if (+[WBSAnalyticsLogger sharedLogger]::once != -1)
  {
    +[WBSAnalyticsLogger sharedLogger];
  }

  v3 = +[WBSAnalyticsLogger sharedLogger]::shared;

  return v3;
}

void __34__WBSAnalyticsLogger_sharedLogger__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v3 = dispatch_queue_create("com.apple.Safari.Analytics", v0);

  v1 = [[WBSAnalyticsLogger alloc] initWithQueue:v3];
  v2 = +[WBSAnalyticsLogger sharedLogger]::shared;
  +[WBSAnalyticsLogger sharedLogger]::shared = v1;
}

- (WBSAnalyticsLogger)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSAnalyticsLogger;
  v6 = [(WBSAnalyticsLogger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsSynchronizationQueue, a3);
    v8 = v7;
  }

  return v7;
}

- (void)performOnAnalyticsQueueWithDelay:(int64_t)a3 block:(id)a4
{
  v5 = 1000000000 * a3;
  block = a4;
  v6 = dispatch_time(0, v5);
  dispatch_after(v6, self->_analyticsSynchronizationQueue, block);
}

- (void)registerSafariVersion:(id)a3 persona:(int64_t)a4
{
  v6 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WBSAnalyticsLogger_registerSafariVersion_persona___block_invoke;
  block[3] = &unk_1E7CF0700;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __52__WBSAnalyticsLogger_registerSafariVersion_persona___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  *(*(a1 + 32) + 16) = *(a1 + 48);
}

- (void)recordSearchResultPageImpressionWithDefaultSearchProviderIdentifier:(id)a3 searchProviderIdentifier:(id)a4 provenance:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__WBSAnalyticsLogger_recordSearchResultPageImpressionWithDefaultSearchProviderIdentifier_searchProviderIdentifier_provenance___block_invoke;
  block[3] = &unk_1E7CF0700;
  v14 = v9;
  v15 = v8;
  v16 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __126__WBSAnalyticsLogger_recordSearchResultPageImpressionWithDefaultSearchProviderIdentifier_searchProviderIdentifier_provenance___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id __126__WBSAnalyticsLogger_recordSearchResultPageImpressionWithDefaultSearchProviderIdentifier_searchProviderIdentifier_provenance___block_invoke_2(uint64_t a1)
{
  v14[6] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) length];
  if ([*(a1 + 32) length])
  {
    v3 = [*(a1 + 40) isEqualToString:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  v13[0] = @"defaultSearchProviderIdentifier";
  v13[1] = @"searchProviderIdentifier";
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = &stru_1F3064D08;
  }

  v14[0] = *(a1 + 40);
  v14[1] = v4;
  v13[2] = @"isSearch";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v2 != 0];
  v14[2] = v5;
  v13[3] = @"usesDefaultSearchProvider";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v14[3] = v6;
  v13[4] = @"isReferredByUnifiedField";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48) == 1];
  v14[4] = v7;
  v13[5] = @"provenance";
  v8 = *(a1 + 48) - 1;
  if (v8 > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E7CF0D20[v8];
  }

  v14[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)reportWeakPasswordWarningEvent:(int64_t)a3
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__WBSAnalyticsLogger_reportWeakPasswordWarningEvent___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(analyticsSynchronizationQueue, block);
}

id __53__WBSAnalyticsLogger_reportWeakPasswordWarningEvent___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"warningEvent";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"show password detail view with warning";
  }

  else
  {
    v2 = off_1E7CF0D38[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didRevealDownloadWithMIMEType:(id)a3 uti:(id)a4 result:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSAnalyticsLogger_didRevealDownloadWithMIMEType_uti_result___block_invoke;
  block[3] = &unk_1E7CF0700;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __63__WBSAnalyticsLogger_didRevealDownloadWithMIMEType_uti_result___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id __63__WBSAnalyticsLogger_didRevealDownloadWithMIMEType_uti_result___block_invoke_2(int64x2_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = @"MIMEType";
  v6[1] = @"UTI";
  v7 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(@"<unknown type>"), a1[2]);
  v6[2] = @"result";
  v1 = a1[3].i64[0] - 1;
  if (v1 > 2)
  {
    v2 = @"reveal in Files app with magnifying glass";
  }

  else
  {
    v2 = off_1E7CF0D50[v1];
  }

  v8 = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:v6 count:3];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didMoveToBackgroundWithNumberOfOnGoingDownloads:(unint64_t)a3
{
  if (a3)
  {
    analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__WBSAnalyticsLogger_didMoveToBackgroundWithNumberOfOnGoingDownloads___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a3;
    dispatch_async(analyticsSynchronizationQueue, block);
  }
}

id __70__WBSAnalyticsLogger_didMoveToBackgroundWithNumberOfOnGoingDownloads___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"numberOfDownloads";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didSetDownloadFolderToProviderWithIdentifier:(id)a3 isDefaultFolder:(BOOL)a4
{
  v6 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__WBSAnalyticsLogger_didSetDownloadFolderToProviderWithIdentifier_isDefaultFolder___block_invoke;
  v9[3] = &unk_1E7CF07D8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(analyticsSynchronizationQueue, v9);
}

void __83__WBSAnalyticsLogger_didSetDownloadFolderToProviderWithIdentifier_isDefaultFolder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __83__WBSAnalyticsLogger_didSetDownloadFolderToProviderWithIdentifier_isDefaultFolder___block_invoke_2(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    v1 = @"Unspecified";
  }

  v6[1] = @"isDefaultFolder";
  v7[0] = v1;
  v6[0] = @"providerIdentifier";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didDownvoteDataSourceWithMetadata:(id)a3
{
  v4 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSAnalyticsLogger_didDownvoteDataSourceWithMetadata___block_invoke;
  block[3] = &unk_1E7CF0828;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __56__WBSAnalyticsLogger_didDownvoteDataSourceWithMetadata___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

- (void)didBanWebsiteWithMetadata:(id)a3
{
  v4 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSAnalyticsLogger_didBanWebsiteWithMetadata___block_invoke;
  block[3] = &unk_1E7CF0828;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __48__WBSAnalyticsLogger_didBanWebsiteWithMetadata___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

- (void)didRetrieveNumberOfRecommendations:(unint64_t)a3 numberOfTopics:(unint64_t)a4
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__WBSAnalyticsLogger_didRetrieveNumberOfRecommendations_numberOfTopics___block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a3;
  v5[5] = a4;
  dispatch_async(analyticsSynchronizationQueue, v5);
}

id __72__WBSAnalyticsLogger_didRetrieveNumberOfRecommendations_numberOfTopics___block_invoke_2(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"recommendationCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v7[1] = @"topicCount";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didOpenRecommendationWithMetadata:(id)a3 withPosition:(int64_t)a4
{
  v6 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__WBSAnalyticsLogger_didOpenRecommendationWithMetadata_withPosition___block_invoke;
  v9[3] = &unk_1E7CF08B8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(analyticsSynchronizationQueue, v9);
}

void __69__WBSAnalyticsLogger_didOpenRecommendationWithMetadata_withPosition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __69__WBSAnalyticsLogger_didOpenRecommendationWithMetadata_withPosition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 > 4)
  {
    v5 = &stru_1F3064D08;
  }

  else
  {
    v5 = off_1E7CF12A0[v4];
  }

  [v2 setObject:v5 forKeyedSubscript:@"openLocation"];

  return v3;
}

- (void)didOpenReadingListItemWithPosition:(int64_t)a3
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__WBSAnalyticsLogger_didOpenReadingListItemWithPosition___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(analyticsSynchronizationQueue, block);
}

id __57__WBSAnalyticsLogger_didOpenReadingListItemWithPosition___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"openLocation";
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    v2 = &stru_1F3064D08;
  }

  else
  {
    v2 = off_1E7CF12A0[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didOpenCloudTabsItemWithPosition:(int64_t)a3
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WBSAnalyticsLogger_didOpenCloudTabsItemWithPosition___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(analyticsSynchronizationQueue, block);
}

id __55__WBSAnalyticsLogger_didOpenCloudTabsItemWithPosition___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"openLocation";
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    v2 = &stru_1F3064D08;
  }

  else
  {
    v2 = off_1E7CF12A0[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didOpenRecentlyClosedTabsItemWithPosition:(int64_t)a3
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSAnalyticsLogger_didOpenRecentlyClosedTabsItemWithPosition___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(analyticsSynchronizationQueue, block);
}

id __64__WBSAnalyticsLogger_didOpenRecentlyClosedTabsItemWithPosition___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"openLocation";
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    v2 = &stru_1F3064D08;
  }

  else
  {
    v2 = off_1E7CF12A0[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_nameForStartPageSection:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return @"Favorites";
  }

  else
  {
    return off_1E7CF0D68[a3 - 1];
  }
}

id __70__WBSAnalyticsLogger_didToggleShowMoreButtonForSection_isShowingMore___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"section";
  v2 = [*(a1 + 32) _nameForStartPageSection:*(a1 + 40)];
  v7[1] = @"result";
  v8[0] = v2;
  if (*(a1 + 48))
  {
    v3 = @"Show More";
  }

  else
  {
    v3 = @"Show Less";
  }

  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didRetrieveNumberOfFavorites:(unint64_t)a3
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WBSAnalyticsLogger_didRetrieveNumberOfFavorites___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(analyticsSynchronizationQueue, block);
}

id __51__WBSAnalyticsLogger_didRetrieveNumberOfFavorites___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"itemCount";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didRetrieveNumberOfFrequentlyVisitedSites:(unint64_t)a3
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSAnalyticsLogger_didRetrieveNumberOfFrequentlyVisitedSites___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(analyticsSynchronizationQueue, block);
}

id __64__WBSAnalyticsLogger_didRetrieveNumberOfFrequentlyVisitedSites___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"itemCount";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didReceiveAnalyticsEventFromWebKitWithName:(id)a3 description:(id)a4 payload:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"Safari"])
  {
    [@"com.apple.Safari." stringByAppendingString:v8];
  }

  else
  {
    [@"com.apple.WebKit." stringByAppendingString:v8];
  }
  v11 = ;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__WBSAnalyticsLogger_didReceiveAnalyticsEventFromWebKitWithName_description_payload___block_invoke;
  v15[3] = &unk_1E7CF0908;
  v16 = v11;
  v17 = v10;
  v13 = v10;
  v14 = v11;
  dispatch_async(analyticsSynchronizationQueue, v15);
}

void __85__WBSAnalyticsLogger_didReceiveAnalyticsEventFromWebKitWithName_description_payload___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

- (void)reportStatusForExtensions:(id)a3 extensionType:(id)a4
{
  v6 = a3;
  v7 = a4;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__WBSAnalyticsLogger_reportStatusForExtensions_extensionType___block_invoke;
  v11[3] = &unk_1E7CF0908;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(analyticsSynchronizationQueue, v11);
}

void __62__WBSAnalyticsLogger_reportStatusForExtensions_extensionType___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (AnalyticsIsEventUsed())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(a1 + 32);
    v2 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v2)
    {
      v17 = *v20;
      do
      {
        v18 = v2;
        for (i = 0; i != v18; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v19 + 1) + 8 * i);
          v25[0] = @"extensionIdentifier";
          v5 = [v4 identifier];
          v26[0] = v5;
          v25[1] = @"enabled";
          v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "enabled")}];
          v25[2] = @"extensionType";
          v7 = *(a1 + 40);
          v26[1] = v6;
          v26[2] = v7;
          v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];

          if ([*(a1 + 40) isEqualToString:@"WebExtension"])
          {
            v23[0] = @"manifestVersion";
            v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "manifestVersion")}];
            v24[0] = v9;
            v23[1] = @"allWebsitesPermissionLevel";
            v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "allWebsitesPermissionLevel")}];
            v24[1] = v10;
            v23[2] = @"websitesGrantedAccessCount";
            v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "websitesGrantedAccessCount")}];
            v24[2] = v11;
            v23[3] = @"websitesDeniedAccessCount";
            v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "websitesDeniedAccessCount")}];
            v24[3] = v12;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
            v14 = [v8 safari_dictionaryByMergingWithDictionary:v13];

            v8 = v14;
          }

          AnalyticsSendEvent();
        }

        v2 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v2);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)reportNumberOfExtensionsWithFrequencyDictionaryProvider:(id)a3
{
  v4 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__WBSAnalyticsLogger_reportNumberOfExtensionsWithFrequencyDictionaryProvider___block_invoke;
  block[3] = &unk_1E7CF0958;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __78__WBSAnalyticsLogger_reportNumberOfExtensionsWithFrequencyDictionaryProvider___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

- (void)didInjectScriptForExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__WBSAnalyticsLogger_didInjectScriptForExtensionWithIdentifier___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Extensions.Invoked" usingBlock:v6];
}

- (void)didInvokeToolbarButtonForExtensionWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__WBSAnalyticsLogger_didInvokeToolbarButtonForExtensionWithIdentifier___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Extensions.Invoked" usingBlock:v6];
}

- (void)didFinishPageLoadWithPageLoadStatus:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__WBSAnalyticsLogger_didFinishPageLoadWithPageLoadStatus___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.PageFinishedLoad" usingBlock:v3];
}

id __58__WBSAnalyticsLogger_didFinishPageLoadWithPageLoadStatus___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"loadStatus";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didActivateLinkWithZoomScale:(float)a3 recentlyZoomedIn:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__WBSAnalyticsLogger_didActivateLinkWithZoomScale_recentlyZoomedIn___block_invoke;
  v4[3] = &__block_descriptor_37_e19___NSDictionary_8__0l;
  v5 = a3;
  v6 = a4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.LinkActivated" usingBlock:v4];
}

id __68__WBSAnalyticsLogger_didActivateLinkWithZoomScale_recentlyZoomedIn___block_invoke(uint64_t a1, double a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"pageZoomScale";
  LODWORD(a2) = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v8[1] = @"pageRecentlyZoomedIn";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 36)];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)didStartDragWithDragContentType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSAnalyticsLogger_didStartDragWithDragContentType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.ContentDrag" usingBlock:v3];
}

id __54__WBSAnalyticsLogger_didStartDragWithDragContentType___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"dragContentType";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportStartPageOverrideStatistics:(id)a3
{
  v4 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSAnalyticsLogger_reportStartPageOverrideStatistics___block_invoke;
  block[3] = &unk_1E7CF0828;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __56__WBSAnalyticsLogger_reportStartPageOverrideStatistics___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"newTabPageIsOverridden";
  v1 = (a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "newTabPageIsOverridden")}];
  v7[1] = @"hasExtensionThatCanOverrideNewTabPage";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*v1, "hasExtensionThatCanOverrideNewTabPage")}];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = v4;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)didConvertExtensionWithKeySupport:(id)a3
{
  v4 = [a3 copy];
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSAnalyticsLogger_didConvertExtensionWithKeySupport___block_invoke;
  block[3] = &unk_1E7CF0828;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __56__WBSAnalyticsLogger_didConvertExtensionWithKeySupport___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v7 = a3;
  v5 = v7;
  v6 = v4;
  AnalyticsSendEventLazy();
}

id __56__WBSAnalyticsLogger_didConvertExtensionWithKeySupport___block_invoke_3(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)webExtensionBackgroundPage:(id)a3 livedTooLong:(double)a4
{
  v6 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__WBSAnalyticsLogger_webExtensionBackgroundPage_livedTooLong___block_invoke;
  v9[3] = &unk_1E7CF08B8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(analyticsSynchronizationQueue, v9);
}

void __62__WBSAnalyticsLogger_webExtensionBackgroundPage_livedTooLong___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = *(a1 + 32);
  v5[0] = @"extensionIdentifier";
  v5[1] = @"lifespan";
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = v2;
  AnalyticsSendEventLazy();

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_sendEvent:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__WBSAnalyticsLogger__sendEvent_usingBlock___block_invoke;
  v11[3] = &unk_1E7CF09E8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(analyticsSynchronizationQueue, v11);
}

uint64_t __44__WBSAnalyticsLogger__sendEvent_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  return AnalyticsSendEventLazy();
}

- (void)_sendEventAddingVersionInfo:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WBSAnalyticsLogger__sendEventAddingVersionInfo_usingBlock___block_invoke;
  block[3] = &unk_1E7CF0A10;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __61__WBSAnalyticsLogger__sendEventAddingVersionInfo_usingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (AnalyticsIsEventUsed())
  {
    v3 = (*(*(a1 + 48) + 16))();
    [*(a1 + 40) _sendEventAddingVersionInfo:*(a1 + 32) baseEvent:?];
  }
}

- (void)_sendEventAddingVersionInfo:(id)a3 baseEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__WBSAnalyticsLogger__sendEventAddingVersionInfo_baseEvent___block_invoke;
  aBlock[3] = &unk_1E7CF0A38;
  v8 = v7;
  v16 = v8;
  v17 = self;
  v9 = v6;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (self->_persona && self->_safariVersion)
  {
    (*(v10 + 2))(v10);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__WBSAnalyticsLogger__sendEventAddingVersionInfo_baseEvent___block_invoke_2;
    v12[3] = &unk_1E7CF0A38;
    v12[4] = self;
    v13 = v9;
    v14 = v8;
    [(WBSAnalyticsLogger *)self performOnAnalyticsQueueWithDelay:5 block:v12];
  }
}

void __60__WBSAnalyticsLogger__sendEventAddingVersionInfo_baseEvent___block_invoke(void *a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"safariClient";
  v2 = a1[4];
  v3 = *(a1[5] + 16) - 1;
  if (v3 > 5)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E7CF0DB0[v3];
  }

  v5 = *(a1[5] + 24);
  v6 = &stru_1F3064D08;
  if (v5)
  {
    v6 = *(a1[5] + 24);
  }

  v14[0] = v4;
  v14[1] = v6;
  v13[1] = @"safariVersion";
  v13[2] = @"safariComparableVersionNumber";
  v7 = [v5 safari_comparableSafariVersionNumberForAnalyticsFromNormalizedVersionString];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"0.0"];
  }

  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [v2 safari_dictionaryByMergingWithDictionary:v9];

  if (!v7)
  {
  }

  v11 = a1[6];
  AnalyticsSendEvent();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)didChangeStartPageSectionVisibility:(id)a3 visible:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__WBSAnalyticsLogger_didChangeStartPageSectionVisibility_visible___block_invoke;
  v8[3] = &unk_1E7CF07B0;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.DidChangeSectionVisibility" usingBlock:v8];
}

id __66__WBSAnalyticsLogger_didChangeStartPageSectionVisibility_visible___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v6[1] = @"isVisible";
  v7[0] = v1;
  v6[0] = @"section";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)reportStartPageSectionVisibility:(int64_t)a3 visible:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__WBSAnalyticsLogger_reportStartPageSectionVisibility_visible___block_invoke;
  v4[3] = &unk_1E7CF08E0;
  v4[4] = self;
  v4[5] = a3;
  v5 = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.StartPage.ReportSectionVisibility" usingBlock:v4];
}

id __63__WBSAnalyticsLogger_reportStartPageSectionVisibility_visible___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"section";
  v2 = [*(a1 + 32) _nameForStartPageSection:*(a1 + 40)];
  v7[1] = @"isVisible";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)reportStartPageBackgroundImageVisible:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__WBSAnalyticsLogger_reportStartPageBackgroundImageVisible___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.StartPage.ReportSectionVisibility" usingBlock:v3];
}

id __60__WBSAnalyticsLogger_reportStartPageBackgroundImageVisible___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[1] = @"isVisible";
  v6[0] = @"Background Image";
  v5[0] = @"section";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didInteractWithOnboardingItem:(id)a3 userClosedCard:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__WBSAnalyticsLogger_didInteractWithOnboardingItem_userClosedCard___block_invoke;
  v8[3] = &unk_1E7CF0890;
  v9 = v6;
  v10 = !v4;
  v7 = v6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.OnBoarding.OnBoardingItemSelected" usingBlock:v8];
}

id __67__WBSAnalyticsLogger_didInteractWithOnboardingItem_userClosedCard___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = @"cardType";
  v7[1] = @"interactionType";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:v1];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)reportCustomizationSyncEnablement:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__WBSAnalyticsLogger_reportCustomizationSyncEnablement___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.StartPage.ReportSectionVisibility" usingBlock:v3];
}

id __56__WBSAnalyticsLogger_reportCustomizationSyncEnablement___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[1] = @"isVisible";
  v6[0] = @"Customization Sync";
  v5[0] = @"section";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportPrivateRelayModulePromptEvent:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__WBSAnalyticsLogger_reportPrivateRelayModulePromptEvent___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.StartPage.PrivateRelayModulePrompt" usingBlock:v6];
}

id __58__WBSAnalyticsLogger_reportPrivateRelayModulePromptEvent___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"privateRelayModulePromptEvent";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)_builtInImageNameToSimpleName:(id)a3
{
  v3 = [&unk_1F308E5C0 objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"custom";
  }

  v6 = v5;

  return v5;
}

- (void)reportStartPageBackgroundName:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__WBSAnalyticsLogger_reportStartPageBackgroundName___block_invoke;
  v6[3] = &unk_1E7CF09C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.StartPage.CurrentBackgroundImageName" usingBlock:v6];
}

id __52__WBSAnalyticsLogger_reportStartPageBackgroundName___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"name";
  v1 = [*(a1 + 32) _builtInImageNameToSimpleName:*(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didEngageWithStartPageSection:(int64_t)a3
{
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__WBSAnalyticsLogger_didEngageWithStartPageSection___block_invoke;
  v4[3] = &unk_1E7CF08B8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(analyticsSynchronizationQueue, v4);
}

uint64_t __52__WBSAnalyticsLogger_didEngageWithStartPageSection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return AnalyticsSendEventLazy();
}

id __52__WBSAnalyticsLogger_didEngageWithStartPageSection___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"name";
  v1 = [*(a1 + 32) _nameForStartPageSection:*(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didSwitchToSafari:(id)a3 entryPoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__WBSAnalyticsLogger_didSwitchToSafari_entryPoint___block_invoke;
  v10[3] = &unk_1E7CF09C0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.setSafariAsDefaultBrowser" usingBlock:v10];
}

id __51__WBSAnalyticsLogger_didSwitchToSafari_entryPoint___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"originBrowser";
  v5[1] = @"entryPoint";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportShowFullURLInSmartSearchFieldPreference:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__WBSAnalyticsLogger_reportShowFullURLInSmartSearchFieldPreference___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Preferences.ShowFullURLInSmartSearchField" usingBlock:v3];
}

id __68__WBSAnalyticsLogger_reportShowFullURLInSmartSearchFieldPreference___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"enabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportShowStandaloneTabBarPreference:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__WBSAnalyticsLogger_reportShowStandaloneTabBarPreference___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Preferences.ShowStandaloneTabBar" usingBlock:v3];
}

id __59__WBSAnalyticsLogger_reportShowStandaloneTabBarPreference___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"enabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportUnifiedTabBarStatusWithLayout:(int64_t)a3 numberOfTabsInCurrentTabBar:(unint64_t)a4 tabBarIsCurrentlyScrollable:(BOOL)a5 tabsShowOnlyIcons:(BOOL)a6 backgroundColorInTabBarEnabled:(BOOL)a7
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __163__WBSAnalyticsLogger_reportUnifiedTabBarStatusWithLayout_numberOfTabsInCurrentTabBar_tabBarIsCurrentlyScrollable_tabsShowOnlyIcons_backgroundColorInTabBarEnabled___block_invoke;
  v7[3] = &__block_descriptor_51_e19___NSDictionary_8__0l;
  v7[4] = a3;
  v7[5] = a4;
  v8 = a5;
  v9 = a6;
  v10 = a7;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.ReportUnifiedTabBarStatus" usingBlock:v7];
}

id __163__WBSAnalyticsLogger_reportUnifiedTabBarStatusWithLayout_numberOfTabsInCurrentTabBar_tabBarIsCurrentlyScrollable_tabsShowOnlyIcons_backgroundColorInTabBarEnabled___block_invoke(uint64_t a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"layout";
  if (*(a1 + 32))
  {
    v2 = @"separate";
  }

  else
  {
    v2 = @"compact";
  }

  v3 = v2;
  v12[0] = v3;
  v11[1] = @"numberOfTabs";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v12[1] = v4;
  v11[2] = @"tabBarIsCurrentlyScrollable";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v12[2] = v5;
  v11[3] = @"tabsShowOnlyIcons";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 49)];
  v12[3] = v6;
  v11[4] = @"backgroundColorInTabBarEnabled";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 50)];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)reportOverlayStatusBarIsEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSAnalyticsLogger_reportOverlayStatusBarIsEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Preferences.OverlayStatusBar" usingBlock:v3];
}

id __54__WBSAnalyticsLogger_reportOverlayStatusBarIsEnabled___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"enabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportNumberOfPinnedTabs:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__WBSAnalyticsLogger_reportNumberOfPinnedTabs___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.PinnedTabs.PeriodicCount" usingBlock:v3];
}

id __47__WBSAnalyticsLogger_reportNumberOfPinnedTabs___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"numberOfPinnedTabs";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didDetectLanguageOfWebpage:(id)a3 primaryLocale:(id)a4 webpageCanBeTranslatedToPrimaryLocale:(BOOL)a5 canOfferTranslation:(BOOL)a6 firstNonPrimaryLocaleThatCanBeTranslatedTo:(id)a7 numberOfPreferredLocales:(unint64_t)a8 notificationLevel:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __207__WBSAnalyticsLogger_didDetectLanguageOfWebpage_primaryLocale_webpageCanBeTranslatedToPrimaryLocale_canOfferTranslation_firstNonPrimaryLocaleThatCanBeTranslatedTo_numberOfPreferredLocales_notificationLevel___block_invoke;
  v21[3] = &unk_1E7CF0AA0;
  v22 = v15;
  v23 = v16;
  v27 = a5;
  v28 = a6;
  v24 = v17;
  v25 = a8;
  v26 = a9;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.Translation.DetectedWebpageLanguage" usingBlock:v21];
}

id __207__WBSAnalyticsLogger_didDetectLanguageOfWebpage_primaryLocale_webpageCanBeTranslatedToPrimaryLocale_canOfferTranslation_firstNonPrimaryLocaleThatCanBeTranslatedTo_numberOfPreferredLocales_notificationLevel___block_invoke(int64x2_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v13[0] = @"webpageLocale";
  v13[1] = @"primaryLocale";
  v14 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(@"unknown"), a1[2]);
  v13[2] = @"canTranslateWebpageToPrimaryLocale";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1[4].u8[8]];
  v15 = v2;
  v13[3] = @"canTranslateToAnyPreferredLocale";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1[4].u8[9]];
  v4 = v3;
  v5 = &stru_1F3064D08;
  v6 = a1[3].i64[1];
  if (a1[3].i64[0])
  {
    v5 = a1[3].i64[0];
  }

  v16 = v3;
  v17 = v5;
  v13[4] = @"firstNonPrimaryLocaleThatCanBeTranslatedTo";
  v13[5] = @"numberOfPreferredLocales";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v18 = v7;
  v13[6] = @"notificationLevel";
  v8 = a1[4].u64[0];
  if (v8 > 2)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7CF0DE0[v8];
  }

  v19 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)didRequestTranslatingToLocale:(id)a3 webpageLocale:(id)a4 requestType:(int64_t)a5 isTargetLocalePrimaryLocale:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__WBSAnalyticsLogger_didRequestTranslatingToLocale_webpageLocale_requestType_isTargetLocalePrimaryLocale___block_invoke;
  v14[3] = &unk_1E7CF0AC8;
  v15 = v11;
  v16 = v10;
  v18 = a6;
  v17 = a5;
  v12 = v10;
  v13 = v11;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.Translation.RequestedTranslation" usingBlock:v14];
}

id __106__WBSAnalyticsLogger_didRequestTranslatingToLocale_webpageLocale_requestType_isTargetLocalePrimaryLocale___block_invoke(int64x2_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = @"webpageLocale";
  v10[1] = @"targetLocale";
  v11 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(@"unknown"), a1[2]);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{a1[3].u8[8], @"webpageLocale", @"targetLocale", @"isTargetLocalePrimaryLocale"}];
  v12 = v2;
  v10[3] = @"requestType";
  v3 = a1[3].i64[0];
  v4 = @"continued translation";
  if (v3 != 1)
  {
    v4 = @"unknown";
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"manual translation";
  }

  v6 = v5;
  v13 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)reportFirstInteractionAfterTranslation:(int64_t)a3 maxVisibleHeightPercentage:(float)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__WBSAnalyticsLogger_reportFirstInteractionAfterTranslation_maxVisibleHeightPercentage___block_invoke;
  v4[3] = &__block_descriptor_44_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v5 = a4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.Translation.ScrollInteraction" usingBlock:v4];
}

id __88__WBSAnalyticsLogger_reportFirstInteractionAfterTranslation_maxVisibleHeightPercentage___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"millisecondsBetweenTranslationAndFirstInteraction";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v8[1] = @"maxVisibleHeightPercentage";
  v9[0] = v2;
  LODWORD(v3) = *(a1 + 40);
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)didShowSafeBrowsingWarningWithSource:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__WBSAnalyticsLogger_didShowSafeBrowsingWarningWithSource___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.SafeBrowsing.ShowedWarning" usingBlock:v3];
}

id __59__WBSAnalyticsLogger_didShowSafeBrowsingWarningWithSource___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"source";
  v1 = *(a1 + 32);
  v2 = @"unknown";
  if (v1 == 1)
  {
    v2 = @"content blocker extension";
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"service";
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)didPerformSafeBrowsingAction:(int64_t)a3 fromSource:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__WBSAnalyticsLogger_didPerformSafeBrowsingAction_fromSource___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.SafeBrowsing.PerformedAction" usingBlock:v4];
}

id __62__WBSAnalyticsLogger_didPerformSafeBrowsingAction_fromSource___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"action";
  v1 = *(a1 + 32);
  v2 = @"unknown";
  v3 = @"unknown";
  if (v1 <= 2)
  {
    v3 = off_1E7CF0DF8[v1];
  }

  v9[1] = @"source";
  v10[0] = v3;
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    v2 = @"content blocker extension";
  }

  if (!v4)
  {
    v2 = @"service";
  }

  v5 = v2;
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)didLoadTabContent:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__WBSAnalyticsLogger_didLoadTabContent___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.LoadedTabContent" usingBlock:v3];
}

id __40__WBSAnalyticsLogger_didLoadTabContent___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"tabContent";
  v1 = *(a1 + 32);
  v2 = @"is PDF document";
  if (v1 == 1)
  {
    v2 = @"has Quick Look content";
  }

  if (v1 == 2)
  {
    v3 = @"other";
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)didContinueUserActivityOfType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__WBSAnalyticsLogger_didContinueUserActivityOfType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ContinuedUserActivity" usingBlock:v3];
}

id __52__WBSAnalyticsLogger_didContinueUserActivityOfType___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"type";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"show reading list";
  }

  else
  {
    v2 = off_1E7CF0E10[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didClearBrowsingDataFromInterval:(int64_t)a3 withMethod:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__WBSAnalyticsLogger_didClearBrowsingDataFromInterval_withMethod___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ClearedBrowsingData" usingBlock:v4];
}

id __66__WBSAnalyticsLogger_didClearBrowsingDataFromInterval_withMethod___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"interval";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"last hour";
  }

  else
  {
    v2 = off_1E7CF0E28[v1];
  }

  v9[0] = v2;
  v8[1] = @"method";
  if (*(a1 + 40))
  {
    v3 = @"settings";
  }

  else
  {
    v3 = @"in app";
  }

  v4 = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)didSetPrivateBrowsingEnabled:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__WBSAnalyticsLogger_didSetPrivateBrowsingEnabled___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.SetPrivateBrowsingEnabled" usingBlock:v3];
}

id __51__WBSAnalyticsLogger_didSetPrivateBrowsingEnabled___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"enabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didEnterTabViewWithMethod:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__WBSAnalyticsLogger_didEnterTabViewWithMethod___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.EnteredTabView" usingBlock:v3];
}

id __48__WBSAnalyticsLogger_didEnterTabViewWithMethod___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"method";
  v1 = *(a1 + 32);
  v2 = @"tap button";
  if (v1 == 1)
  {
    v2 = @"pinch gesture";
  }

  if (v1 == 2)
  {
    v3 = @"keyboard shortcut";
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)reportUserPreferencesOnLaunchForJavaScriptEnabled:(BOOL)a3 safeBrowsingEnabled:(BOOL)a4 siteSpecificSearchEnabled:(BOOL)a5 trackingPolicy:(unint64_t)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __133__WBSAnalyticsLogger_reportUserPreferencesOnLaunchForJavaScriptEnabled_safeBrowsingEnabled_siteSpecificSearchEnabled_trackingPolicy___block_invoke;
  v6[3] = &__block_descriptor_43_e19___NSDictionary_8__0l;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v6[4] = a6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.UserPreferencesOnLaunch" usingBlock:v6];
}

id __133__WBSAnalyticsLogger_reportUserPreferencesOnLaunchForJavaScriptEnabled_safeBrowsingEnabled_siteSpecificSearchEnabled_trackingPolicy___block_invoke(uint64_t a1)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v13[0] = MEMORY[0x1E695E118];
  v12[0] = @"iconsInTabsEnabled";
  v12[1] = @"javaScriptEnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v13[1] = v2;
  v12[2] = @"safeBrowsingEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 41)];
  v13[2] = v3;
  v12[3] = @"siteSpecificSearchEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 42)];
  v13[3] = v4;
  v12[4] = @"trackingPolicy";
  v5 = *(a1 + 32);
  v6 = @"always";
  if (v5 == 1)
  {
    v6 = @"never";
  }

  if (v5 == 2)
  {
    v7 = @"only from main document domain";
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v13[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)reportExperimentalFeaturesOnLaunchForWebXREnabled:(BOOL)a3 webXRGamepadsModuleEnabled:(BOOL)a4 webXRHandInputModuleEnabled:(BOOL)a5 modelElementEnabled:(BOOL)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __147__WBSAnalyticsLogger_reportExperimentalFeaturesOnLaunchForWebXREnabled_webXRGamepadsModuleEnabled_webXRHandInputModuleEnabled_modelElementEnabled___block_invoke;
  v6[3] = &__block_descriptor_36_e19___NSDictionary_8__0l;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.ExperimentalFeaturesOnLaunch" usingBlock:v6];
}

id __147__WBSAnalyticsLogger_reportExperimentalFeaturesOnLaunchForWebXREnabled_webXRGamepadsModuleEnabled_webXRHandInputModuleEnabled_modelElementEnabled___block_invoke(unsigned __int8 *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"webXREnabled";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a1[32]];
  v10[0] = v2;
  v9[1] = @"webXRGamepadsModuleEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1[33]];
  v10[1] = v3;
  v9[2] = @"webXRHandInputModuleEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a1[34]];
  v10[2] = v4;
  v9[3] = @"modelElementEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a1[35]];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)didRequestPageShowingSideBar:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__WBSAnalyticsLogger_didRequestPageShowingSideBar___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.RequestedPage" usingBlock:v3];
}

id __51__WBSAnalyticsLogger_didRequestPageShowingSideBar___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"showingSideBar";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didDetectPossibleUserTrackingInHostApp:(id)a3 urlHasIDFA:(BOOL)a4 urlHasQueryString:(BOOL)a5 userInteracted:(BOOL)a6 viewControllerIsHidden:(BOOL)a7
{
  v12 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __128__WBSAnalyticsLogger_didDetectPossibleUserTrackingInHostApp_urlHasIDFA_urlHasQueryString_userInteracted_viewControllerIsHidden___block_invoke;
  v14[3] = &unk_1E7CF0B50;
  v15 = v12;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v13 = v12;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.SafariViewController.DetectedPossibleUserTracking" usingBlock:v14];
}

id __128__WBSAnalyticsLogger_didDetectPossibleUserTrackingInHostApp_urlHasIDFA_urlHasQueryString_userInteracted_viewControllerIsHidden___block_invoke(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = *(a1 + 32);
  v9[0] = @"hostAppIdentifier";
  v9[1] = @"urlHasIDFA";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v10[1] = v2;
  v9[2] = @"urlHasQueryString";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 41)];
  v10[2] = v3;
  v9[3] = @"userInteracted";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 42)];
  v10[3] = v4;
  v9[4] = @"viewControllerIsHidden";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 43)];
  v10[4] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)didAddReadingListItemWithMethod:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSAnalyticsLogger_didAddReadingListItemWithMethod___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ReadingList.AddedItem" usingBlock:v3];
}

id __54__WBSAnalyticsLogger_didAddReadingListItemWithMethod___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"method";
  v1 = *(a1 + 32) - 1;
  if (v1 > 4)
  {
    v2 = @"context menu";
  }

  else
  {
    v2 = off_1E7CF0E40[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didOpenReadingListItemWithReachableNetwork:(BOOL)a3 isContinuousTransition:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__WBSAnalyticsLogger_didOpenReadingListItemWithReachableNetwork_isContinuousTransition___block_invoke;
  v4[3] = &__block_descriptor_34_e19___NSDictionary_8__0l;
  v5 = a3;
  v6 = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ReadingList.OpenedItem" usingBlock:v4];
}

id __88__WBSAnalyticsLogger_didOpenReadingListItemWithReachableNetwork_isContinuousTransition___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"isNetworkReachable";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v7[1] = @"isContinuousTransition";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 33)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didManuallyMarkReadingListItemAsRead:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__WBSAnalyticsLogger_didManuallyMarkReadingListItemAsRead___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ReadingList.ManuallyMarkedItemAsRead" usingBlock:v3];
}

id __59__WBSAnalyticsLogger_didManuallyMarkReadingListItemAsRead___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"read";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didDetermineReaderAvailability:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSAnalyticsLogger_didDetermineReaderAvailability___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.ReaderAvailabilityDetermined" usingBlock:v3];
}

id __53__WBSAnalyticsLogger_didDetermineReaderAvailability___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"available";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didActivateReaderWithTrigger:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__WBSAnalyticsLogger_didActivateReaderWithTrigger___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.ReaderActivated" usingBlock:v3];
}

id __51__WBSAnalyticsLogger_didActivateReaderWithTrigger___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"triggerType";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"manual";
  }

  else
  {
    v2 = off_1E7CF0E68[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didDismissCompletionListWithItemAccepted:(BOOL)a3 goKeyTapped:(BOOL)a4 unifiedFieldContentType:(int64_t)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__WBSAnalyticsLogger_didDismissCompletionListWithItemAccepted_goKeyTapped_unifiedFieldContentType___block_invoke;
  v5[3] = &__block_descriptor_42_e19___NSDictionary_8__0l;
  v6 = a3;
  v7 = a4;
  v5[4] = a5;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.CompletionList.DismissedCompletionList" usingBlock:v5];
}

id __99__WBSAnalyticsLogger_didDismissCompletionListWithItemAccepted_goKeyTapped_unifiedFieldContentType___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"acceptedCompletionItem";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v11[1] = @"unifiedFieldContentType";
  v12[0] = v2;
  v3 = *(a1 + 41);
  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    v5 = @"address";
    if (v4 == 1)
    {
      v5 = @"search query";
    }

    if (v4 == 2)
    {
      v6 = @"parsec top hit";
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v7 = &stru_1F3064D08;
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v3)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)didAcceptCompletionItemOfType:(int64_t)a3 atRank:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__WBSAnalyticsLogger_didAcceptCompletionItemOfType_atRank___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.CompletionList.AcceptedItem" usingBlock:v4];
}

id __59__WBSAnalyticsLogger_didAcceptCompletionItemOfType_atRank___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"type";
  v1 = *(a1 + 32) - 1;
  if (v1 > 9)
  {
    v2 = @"bookmarks and history";
  }

  else
  {
    v2 = off_1E7CF0E80[v1];
  }

  v8[0] = v2;
  v7[1] = @"rank";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didAcceptSearchSuggestionOfType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSAnalyticsLogger_didAcceptSearchSuggestionOfType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.CompletionList.AcceptedSearchSuggestion" usingBlock:v3];
}

id __54__WBSAnalyticsLogger_didAcceptSearchSuggestionOfType___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"type";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"literal search";
  }

  else
  {
    v2 = off_1E7CF0ED0[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didChooseTopHit:(BOOL)a3 matchLength:(unint64_t)a4 matchScore:(float)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__WBSAnalyticsLogger_didChooseTopHit_matchLength_matchScore___block_invoke;
  v5[3] = &__block_descriptor_45_e19___NSDictionary_8__0l;
  v7 = a3;
  v5[4] = a4;
  v6 = a5;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.CompletionList.ChoseOrIgnoredTopHit" usingBlock:v5];
}

id __61__WBSAnalyticsLogger_didChooseTopHit_matchLength_matchScore___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"isTopHitChosen";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 44)];
  v10[0] = v2;
  v9[1] = @"matchLength";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v10[1] = v3;
  v9[2] = @"matchScore";
  LODWORD(v4) = *(a1 + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)didActivateVoiceSearchAccidentally:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__WBSAnalyticsLogger_didActivateVoiceSearchAccidentally___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.VoiceSearchActivatedAccidentally" usingBlock:v3];
}

id __57__WBSAnalyticsLogger_didActivateVoiceSearchAccidentally___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"activatedAccidentally";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportNumberOfWindows:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__WBSAnalyticsLogger_reportNumberOfWindows___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.WindowCount" usingBlock:v3];
}

id __44__WBSAnalyticsLogger_reportNumberOfWindows___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"windowCount";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportNumberOfTabsPerWindow:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__WBSAnalyticsLogger_reportNumberOfTabsPerWindow___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.TabsPerWindowCount" usingBlock:v3];
}

id __50__WBSAnalyticsLogger_reportNumberOfTabsPerWindow___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"tabsPerWindowCount";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportNumberOfTabs:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__WBSAnalyticsLogger_reportNumberOfTabs___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.TabCount" usingBlock:v3];
}

id __41__WBSAnalyticsLogger_reportNumberOfTabs___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"tabCount";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportNewWindowBehavior:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__WBSAnalyticsLogger_reportNewWindowBehavior___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.NewWindowBehavior" usingBlock:v3];
}

id __46__WBSAnalyticsLogger_reportNewWindowBehavior___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"newWindowBehavior";
  v1 = *(a1 + 32) - 1;
  if (v1 > 4)
  {
    v2 = @"Start Page";
  }

  else
  {
    v2 = off_1E7CF0EE8[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)reportNewTabBehavior:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__WBSAnalyticsLogger_reportNewTabBehavior___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.NewTabBehavior" usingBlock:v3];
}

id __43__WBSAnalyticsLogger_reportNewTabBehavior___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"newTabBehavior";
  v1 = *(a1 + 32) - 1;
  if (v1 > 4)
  {
    v2 = @"Start Page";
  }

  else
  {
    v2 = off_1E7CF0EE8[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didOpenVisualTabPickerWithMethod:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__WBSAnalyticsLogger_didOpenVisualTabPickerWithMethod___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.VisualTabPicker.Entry" usingBlock:v3];
}

id __55__WBSAnalyticsLogger_didOpenVisualTabPickerWithMethod___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"openMethod";
  if (*(a1 + 32))
  {
    v1 = @"open with pinching";
  }

  else
  {
    v1 = @"open";
  }

  v2 = v1;
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didCloseVisualTabPickerWithMethod:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__WBSAnalyticsLogger_didCloseVisualTabPickerWithMethod___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.VisualTabPicker.Exit" usingBlock:v3];
}

id __56__WBSAnalyticsLogger_didCloseVisualTabPickerWithMethod___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"closeMethod";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"close";
  }

  else
  {
    v2 = off_1E7CF0F10[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didPerformVisualTabPickerMiscEvent:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__WBSAnalyticsLogger_didPerformVisualTabPickerMiscEvent___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.VisualTabPicker.Misc" usingBlock:v3];
}

id __57__WBSAnalyticsLogger_didPerformVisualTabPickerMiscEvent___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"miscEvent";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"close tab";
  }

  else
  {
    v2 = off_1E7CF0F28[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didOpenClearHistoryFromSource:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__WBSAnalyticsLogger_didOpenClearHistoryFromSource___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ClearHistory.Opened" usingBlock:v6];
}

id __52__WBSAnalyticsLogger_didOpenClearHistoryFromSource___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"source";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didTakeActionOnClearHistory:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__WBSAnalyticsLogger_didTakeActionOnClearHistory___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ClearHistory.ActionTaken" usingBlock:v6];
}

id __50__WBSAnalyticsLogger_didTakeActionOnClearHistory___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"actionTaken";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didFindOnPageWithTrigger:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__WBSAnalyticsLogger_didFindOnPageWithTrigger___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.FindOnPageTriggered" usingBlock:v3];
}

id __47__WBSAnalyticsLogger_didFindOnPageWithTrigger___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"trigger";
  v1 = *(a1 + 32);
  if (v1 > 3)
  {
    v2 = @"unknown";
  }

  else
  {
    v2 = off_1E7CF0F40[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didCloseTabWithTrigger:(int64_t)a3 tabClosingAction:(int64_t)a4 numberOfTabsClosed:(unint64_t)a5 tabCollectionViewType:(int64_t)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__WBSAnalyticsLogger_didCloseTabWithTrigger_tabClosingAction_numberOfTabsClosed_tabCollectionViewType___block_invoke;
  v6[3] = &__block_descriptor_64_e19___NSDictionary_8__0l;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Tabs.ClosedTab" usingBlock:v6];
}

id __103__WBSAnalyticsLogger_didCloseTabWithTrigger_tabClosingAction_numberOfTabsClosed_tabCollectionViewType___block_invoke(void *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"tabClosingTrigger";
  v2 = a1[4] - 1;
  if (v2 > 2)
  {
    v3 = @"close button";
  }

  else
  {
    v3 = off_1E7CF0F60[v2];
  }

  v13[0] = v3;
  v12[1] = @"tabClosingAction";
  v4 = a1[5] - 1;
  if (v4 > 3)
  {
    v5 = @"none";
  }

  else
  {
    v5 = off_1E7CF0F78[v4];
  }

  v13[1] = v5;
  v12[2] = @"numberOfTabsClosed";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v13[2] = v6;
  v12[3] = @"tabCollectionViewType";
  v7 = a1[7] - 1;
  if (v7 > 2)
  {
    v8 = @"not visible";
  }

  else
  {
    v8 = off_1E7CF0FD8[v7];
  }

  v13[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)didOpenNewBlankTabWithTrigger:(int64_t)a3 tabCollectionViewType:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__WBSAnalyticsLogger_didOpenNewBlankTabWithTrigger_tabCollectionViewType___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Tabs.OpenedNewTab" usingBlock:v4];
}

id __74__WBSAnalyticsLogger_didOpenNewBlankTabWithTrigger_tabCollectionViewType___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"withURL";
  v8[1] = @"isExternalLink";
  v9[0] = MEMORY[0x1E695E110];
  v9[1] = MEMORY[0x1E695E110];
  v8[2] = @"trigger";
  v1 = *(a1 + 32) - 1;
  if (v1 > 2)
  {
    v2 = @"keyboard shortcut";
  }

  else
  {
    v2 = off_1E7CF0F98[v1];
  }

  v9[2] = v2;
  v8[3] = @"tabCollectionViewType";
  v3 = *(a1 + 40) - 1;
  if (v3 > 2)
  {
    v4 = @"not visible";
  }

  else
  {
    v4 = off_1E7CF0FD8[v3];
  }

  v9[3] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)didOpenNewTabWithURLWithTrigger:(int64_t)a3 isExternalLink:(BOOL)a4 tabCollectionViewType:(int64_t)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__WBSAnalyticsLogger_didOpenNewTabWithURLWithTrigger_isExternalLink_tabCollectionViewType___block_invoke;
  v5[3] = &__block_descriptor_49_e19___NSDictionary_8__0l;
  v6 = a4;
  v5[4] = a3;
  v5[5] = a5;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Tabs.OpenedNewTab" usingBlock:v5];
}

id __91__WBSAnalyticsLogger_didOpenNewTabWithURLWithTrigger_isExternalLink_tabCollectionViewType___block_invoke(uint64_t a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E695E118];
  v10[0] = @"withURL";
  v10[1] = @"isExternalLink";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v11[1] = v2;
  v10[2] = @"trigger";
  v3 = *(a1 + 32) - 1;
  if (v3 > 4)
  {
    v4 = @"continue activity";
  }

  else
  {
    v4 = off_1E7CF0FB0[v3];
  }

  v11[2] = v4;
  v10[3] = @"tabCollectionViewType";
  v5 = *(a1 + 40) - 1;
  if (v5 > 2)
  {
    v6 = @"not visible";
  }

  else
  {
    v6 = off_1E7CF0FD8[v5];
  }

  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)didChooseIntervalFromAutomaticTabClosingFirstTimeExperiencePrompt:(id)a3
{
  v4 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__WBSAnalyticsLogger_didChooseIntervalFromAutomaticTabClosingFirstTimeExperiencePrompt___block_invoke;
  block[3] = &unk_1E7CF0828;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __88__WBSAnalyticsLogger_didChooseIntervalFromAutomaticTabClosingFirstTimeExperiencePrompt___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

id __88__WBSAnalyticsLogger_didChooseIntervalFromAutomaticTabClosingFirstTimeExperiencePrompt___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"interval";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportAutomaticTabClosingInterval:(id)a3
{
  v4 = a3;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__WBSAnalyticsLogger_reportAutomaticTabClosingInterval___block_invoke;
  block[3] = &unk_1E7CF0828;
  v8 = v4;
  v6 = v4;
  dispatch_async(analyticsSynchronizationQueue, block);
}

void __56__WBSAnalyticsLogger_reportAutomaticTabClosingInterval___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

id __56__WBSAnalyticsLogger_reportAutomaticTabClosingInterval___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"interval";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didCloseTabsAutomaticallyWithCount:(unint64_t)a3 tabClosingInterval:(id)a4
{
  v6 = a4;
  analyticsSynchronizationQueue = self->_analyticsSynchronizationQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__WBSAnalyticsLogger_didCloseTabsAutomaticallyWithCount_tabClosingInterval___block_invoke;
  v9[3] = &unk_1E7CF08B8;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(analyticsSynchronizationQueue, v9);
}

void __76__WBSAnalyticsLogger_didCloseTabsAutomaticallyWithCount_tabClosingInterval___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AnalyticsSendEventLazy();
}

id __76__WBSAnalyticsLogger_didCloseTabsAutomaticallyWithCount_tabClosingInterval___block_invoke_2(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = @"interval";
  v7[1] = @"closedTabCount";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v1];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didPerformActionOnDownloadsPopover:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__WBSAnalyticsLogger_didPerformActionOnDownloadsPopover___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Downloads.Popover" usingBlock:v3];
}

id __57__WBSAnalyticsLogger_didPerformActionOnDownloadsPopover___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"performedAction";
  v1 = *(a1 + 32) - 1;
  if (v1 > 5)
  {
    v2 = @"Detached popover";
  }

  else
  {
    v2 = off_1E7CF0FF0[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didPerformDownloadsFileEvent:(int64_t)a3 withFileType:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__WBSAnalyticsLogger_didPerformDownloadsFileEvent_withFileType___block_invoke;
  v8[3] = &unk_1E7CF0728;
  v9 = v6;
  v10 = a3;
  v8[4] = self;
  v7 = v6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Downloads.FileType" usingBlock:v8];
}

id __64__WBSAnalyticsLogger_didPerformDownloadsFileEvent_withFileType___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"downloadsFileEvent";
  v2 = *(a1 + 48);
  v3 = @"created destination";
  if (v2 == 1)
  {
    v3 = @"finished download";
  }

  if (v2 == 2)
  {
    v4 = @"canceled download";
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  v10[1] = @"fileType";
  v11[0] = v5;
  v6 = [*(a1 + 32) _sanitizedPathExtensionForAnalyticsForPathExtension:*(a1 + 40)];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_sanitizedPathExtensionForAnalyticsForPathExtension:(id)a3
{
  v3 = a3;
  if (![(__CFString *)v3 length]|| ([(__CFString *)v3 safari_isPathExtensionAllowedForAnalytics]& 1) == 0)
  {

    v3 = @"Unspecified";
  }

  return v3;
}

- (void)didReloadEvent:(int64_t)a3 withReloadType:(int64_t)a4 withReloadProvenance:(int64_t)a5 withLayout:(int64_t)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__WBSAnalyticsLogger_didReloadEvent_withReloadType_withReloadProvenance_withLayout___block_invoke;
  v6[3] = &__block_descriptor_64_e19___NSDictionary_8__0l;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Reload" usingBlock:v6];
}

id __84__WBSAnalyticsLogger_didReloadEvent_withReloadType_withReloadProvenance_withLayout___block_invoke(void *a1)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"reloadEvent";
  v2 = a1[4] - 1;
  if (v2 > 2)
  {
    v3 = @"reloaded page";
  }

  else
  {
    v3 = off_1E7CF1020[v2];
  }

  v14[0] = v3;
  v13[1] = @"reloadType";
  v4 = a1[5] - 1;
  if (v4 > 5)
  {
    v5 = @"reloaded normally";
  }

  else
  {
    v5 = off_1E7CF1038[v4];
  }

  v14[1] = v5;
  v13[2] = @"reloadProvenance";
  if (a1[6])
  {
    v6 = @"reloaded within the reload button menu";
  }

  else
  {
    v6 = @"reloaded within the more menu";
  }

  v7 = v6;
  v14[2] = v7;
  v13[3] = @"layout";
  v8 = a1[7] - 1;
  if (v8 > 4)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1E7CF1448[v8];
  }

  v14[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)reportAudioIndicatorClickEvent:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSAnalyticsLogger_reportAudioIndicatorClickEvent___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.TabAudio" usingBlock:v3];
}

id __53__WBSAnalyticsLogger_reportAudioIndicatorClickEvent___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"audioIndicatorEvent";
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = off_1E7CF1068[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)reportPictureInPictureEvent:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__WBSAnalyticsLogger_reportPictureInPictureEvent___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.PictureInPicture" usingBlock:v3];
}

id __50__WBSAnalyticsLogger_reportPictureInPictureEvent___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = @"didExit";
  if (!*(a1 + 32))
  {
    v1 = @"didEnter";
  }

  v5 = @"pipEvent";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportPrivateBrowsingUsage:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__WBSAnalyticsLogger_reportPrivateBrowsingUsage___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.PrivateBrowsing" usingBlock:v3];
}

id __49__WBSAnalyticsLogger_reportPrivateBrowsingUsage___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"usage";
  if (*(a1 + 32))
  {
    v1 = @"is using private browsing in any window";
  }

  else
  {
    v1 = @"opened private window";
  }

  v2 = v1;
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)reportInvalidMessageFromWebProcess:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__WBSAnalyticsLogger_reportInvalidMessageFromWebProcess___block_invoke;
    v7[3] = &unk_1E7CF09C0;
    v8 = v4;
    v9 = v6;
    [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.InvalidMessageFromWebProcess" usingBlock:v7];
  }
}

id __57__WBSAnalyticsLogger_reportInvalidMessageFromWebProcess___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"message";
  v5[1] = @"safariBundleVersion";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportUnifiedFieldEvent:(int64_t)a3
{
  if (a3 <= 6 && ((0x77u >> a3) & 1) != 0)
  {
    v3 = off_1E7CF1090[a3];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __46__WBSAnalyticsLogger_reportUnifiedFieldEvent___block_invoke;
    v4[3] = &unk_1E7CF0890;
    v5 = v3;
    v6 = a3;
    [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.URL" usingBlock:v4];
  }
}

id __46__WBSAnalyticsLogger_reportUnifiedFieldEvent___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"unifiedFieldEvent";
  v1 = *(a1 + 40) - 1;
  if (v1 > 5)
  {
    v2 = @"UnifiedField";
  }

  else
  {
    v2 = off_1E7CF10C8[v1];
  }

  v6[1] = @"value";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)reportUnifiedFieldHistoryItemURLAutocompletedEventWithDaysSinceLastVisit:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __95__WBSAnalyticsLogger_reportUnifiedFieldHistoryItemURLAutocompletedEventWithDaysSinceLastVisit___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.URL" usingBlock:v6];
}

id __95__WBSAnalyticsLogger_reportUnifiedFieldHistoryItemURLAutocompletedEventWithDaysSinceLastVisit___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"unifiedFieldEvent";
  v5[1] = @"value";
  v1 = *(a1 + 32);
  v6[0] = @"HistoryItemAutocompleted";
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportUnifiedFieldSearchSlowDown:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__WBSAnalyticsLogger_reportUnifiedFieldSearchSlowDown___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  *&v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.URL.SearchSlowDown" usingBlock:v3];
}

id __55__WBSAnalyticsLogger_reportUnifiedFieldSearchSlowDown___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"duration";
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didModifyPerSitePreferencesWithPreferenceIdentifier:(id)a3 modificationLevel:(int64_t)a4 type:(int64_t)a5 method:(int64_t)a6
{
  v10 = a3;
  v11 = @"page formatting menu";
  if (a6 <= 2)
  {
    v12 = @"settings";
    if (a6 != 2)
    {
      v12 = @"page formatting menu";
    }

    if (a6 == 1)
    {
      v11 = @"in-app";
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    switch(a6)
    {
      case 3:
        v11 = @"keyboard shortcut";
        break;
      case 4:
        v11 = @"preference pane";
        break;
      case 5:
        v11 = self->_perSitePreferencesPopoverLocation;
        break;
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __104__WBSAnalyticsLogger_didModifyPerSitePreferencesWithPreferenceIdentifier_modificationLevel_type_method___block_invoke;
  v15[3] = &unk_1E7CF0C18;
  v18 = a4;
  v19 = a5;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.MobileSafari.PerSitePreferences" usingBlock:v15];
}

id __104__WBSAnalyticsLogger_didModifyPerSitePreferencesWithPreferenceIdentifier_modificationLevel_type_method___block_invoke(void *a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = a1[4];
  v10[0] = @"identifier";
  v10[1] = @"level";
  if (a1[6])
  {
    v2 = @"domain";
  }

  else
  {
    v2 = @"default";
  }

  v3 = v2;
  v11[1] = v3;
  v10[2] = @"type";
  if (a1[7])
  {
    v4 = @"clear";
  }

  else
  {
    v4 = @"set";
  }

  v5 = v4;
  v10[3] = @"method";
  v6 = a1[5];
  v11[2] = v5;
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)didOpenPerSitePreferencesPopoverVia:(int64_t)a3
{
  v4 = @"popover via Safari menu item";
  if (a3 == 1)
  {
    v4 = @"popover via context menu item";
  }

  if (a3 == 2)
  {
    v5 = @"popover via toolbar button";
  }

  else
  {
    v5 = v4;
  }

  objc_storeStrong(&self->_perSitePreferencesPopoverLocation, v5);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__WBSAnalyticsLogger_didOpenPerSitePreferencesPopoverVia___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v6[4] = self;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.PerSitePreferences.PopoverOpened" usingBlock:v6];
}

id __58__WBSAnalyticsLogger_didOpenPerSitePreferencesPopoverVia___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 32);
  v5 = @"location";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportNumberOfDuplicateBookmarksWithTopLevelDuplicatesCount:(unint64_t)a3 allDuplicatesCount:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __101__WBSAnalyticsLogger_reportNumberOfDuplicateBookmarksWithTopLevelDuplicatesCount_allDuplicatesCount___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Bookmarks.ReportNumberOfDuplicates" usingBlock:v4];
}

id __101__WBSAnalyticsLogger_reportNumberOfDuplicateBookmarksWithTopLevelDuplicatesCount_allDuplicatesCount___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"topLevelDuplicatesCount";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v7[1] = @"allDuplicatesCount";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didVisitBookmarksWithOpenLocation:(int64_t)a3 numberOfBookmarksVisited:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__WBSAnalyticsLogger_didVisitBookmarksWithOpenLocation_numberOfBookmarksVisited___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.Bookmarks.VisitedBookmarks" usingBlock:v4];
}

id __81__WBSAnalyticsLogger_didVisitBookmarksWithOpenLocation_numberOfBookmarksVisited___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"openLocation";
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    v2 = &stru_1F3064D08;
  }

  else
  {
    v2 = off_1E7CF12A0[v1];
  }

  v8[0] = v2;
  v7[1] = @"numberOfBookmarksVisited";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didPreventBookmarkActionWithBookmarkType:(int64_t)a3 actionType:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__WBSAnalyticsLogger_didPreventBookmarkActionWithBookmarkType_actionType___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Bookmarks.PreventedBookmarkAction" usingBlock:v4];
}

id __74__WBSAnalyticsLogger_didPreventBookmarkActionWithBookmarkType_actionType___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"bookmarkType";
  v2 = *(a1 + 32);
  v3 = @"bookmark";
  if (v2 == 1)
  {
    v3 = @"favorite";
  }

  if (v2 == 2)
  {
    v4 = @"reading list item";
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;
  v11[1] = @"actionType";
  v12[0] = v5;
  v6 = *(a1 + 40) - 1;
  if (v6 > 2)
  {
    v7 = @"add";
  }

  else
  {
    v7 = off_1E7CF10F8[v6];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)didAddBookmarkWithMethod:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    v3 = @"long press bookmark button";
  }

  else
  {
    v3 = off_1E7CF1110[a3 - 1];
  }

  [(WBSAnalyticsLogger *)self _didAddBookmarkWithMethod:v3 menuItemType:&stru_1F3064D08];
}

- (void)didAddBookmarkFromToolbarMenuWithItemType:(int64_t)a3
{
  if (a3)
  {
    v3 = @"folder";
  }

  else
  {
    v3 = @"single";
  }

  [(WBSAnalyticsLogger *)self _didAddBookmarkWithMethod:@"long press bookmark button" menuItemType:v3];
}

- (void)_didAddBookmarkWithMethod:(id)a3 menuItemType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__WBSAnalyticsLogger__didAddBookmarkWithMethod_menuItemType___block_invoke;
  v10[3] = &unk_1E7CF09C0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Bookmarks.AddedBookmark" usingBlock:v10];
}

id __61__WBSAnalyticsLogger__didAddBookmarkWithMethod_menuItemType___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"method";
  v5[1] = @"menuItemType";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didAddNumberOfBookmarksInMemory:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSAnalyticsLogger_didAddNumberOfBookmarksInMemory___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Bookmarks.AddedBookmarksInMemory" usingBlock:v3];
}

id __54__WBSAnalyticsLogger_didAddNumberOfBookmarksInMemory___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"numberOfBookmarksAdded";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didDeleteNumberOfBookmarksInMemory:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__WBSAnalyticsLogger_didDeleteNumberOfBookmarksInMemory___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Bookmarks.DeletedBookmarksInMemory" usingBlock:v3];
}

id __57__WBSAnalyticsLogger_didDeleteNumberOfBookmarksInMemory___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"numberOfBookmarksDeleted";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didShowPasswordGenerationPromptWithPasswordAccepted:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__WBSAnalyticsLogger_didShowPasswordGenerationPromptWithPasswordAccepted___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Autofill.PasswordGeneration.ShowedPrompt" usingBlock:v3];
}

id __74__WBSAnalyticsLogger_didShowPasswordGenerationPromptWithPasswordAccepted___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"passwordAccepted";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)generatedPasswordDidOverwriteExistingPasswordWithTrigger:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__WBSAnalyticsLogger_generatedPasswordDidOverwriteExistingPasswordWithTrigger___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Autofill.PasswordGeneration.OverwroteExistingPassword" usingBlock:v3];
}

id __79__WBSAnalyticsLogger_generatedPasswordDidOverwriteExistingPasswordWithTrigger___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"trigger";
  if (*(a1 + 32))
  {
    v1 = @"view close";
  }

  else
  {
    v1 = @"app suspend";
  }

  v2 = v1;
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didSuggestUsernameInPromptAndUserKeptSuggestion:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__WBSAnalyticsLogger_didSuggestUsernameInPromptAndUserKeptSuggestion___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.Autofill.PasswordManagement.ReportUseOfSuggestedUsernameInPrompt" usingBlock:v3];
}

id __70__WBSAnalyticsLogger_didSuggestUsernameInPromptAndUserKeptSuggestion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"userKeptUsernameSuggestion";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didSubmitFormOfType:(unint64_t)a3 withFieldType:(int64_t)a4 elementType:(unint64_t)a5 isAutoFilled:(BOOL)a6 isManuallyFilledByUser:(BOOL)a7 modificationType:(unint64_t)a8 autoFillOfferedType:(unint64_t)a9 webpageLocale:(id)a10
{
  v17 = a10;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __155__WBSAnalyticsLogger_didSubmitFormOfType_withFieldType_elementType_isAutoFilled_isManuallyFilledByUser_modificationType_autoFillOfferedType_webpageLocale___block_invoke;
  v19[3] = &unk_1E7CF0C40;
  v22 = a4;
  v23 = a5;
  v26 = a6;
  v27 = a7;
  v24 = a8;
  v25 = a9;
  v20 = v17;
  v21 = a3;
  v18 = v17;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.AutoFill.DidSubmitFieldInForm" usingBlock:v19];
}

id __155__WBSAnalyticsLogger_didSubmitFormOfType_withFieldType_elementType_isAutoFilled_isManuallyFilledByUser_modificationType_autoFillOfferedType_webpageLocale___block_invoke(uint64_t a1)
{
  v21[10] = *MEMORY[0x1E69E9840];
  v20[0] = @"formType";
  v2 = stringForFormType(*(a1 + 40));
  v21[0] = v2;
  v20[1] = @"fieldType";
  v3 = stringForFieldType(*(a1 + 48));
  v21[1] = v3;
  v20[2] = @"elementType";
  v4 = *(a1 + 56);
  if (v4 > 4)
  {
    v5 = @"Invalid Element Type";
  }

  else
  {
    v5 = off_1E7CF1128[v4];
  }

  v21[2] = v5;
  v20[3] = @"isAutoFilled";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 80)];
  v21[3] = v6;
  v20[4] = @"isManuallyFilledByUser";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 81)];
  v21[4] = v7;
  v20[5] = @"modificationType";
  v8 = *(a1 + 64);
  if (v8 > 5)
  {
    v9 = @"Invalid Modification Type";
  }

  else
  {
    v9 = off_1E7CF1150[v8];
  }

  v21[5] = v9;
  v20[6] = @"autoFillOfferedType";
  v10 = *(a1 + 72);
  if (v10 > 4)
  {
    v11 = @"Invalid AutoFill Offered Type";
  }

  else
  {
    v11 = off_1E7CF1180[v10];
  }

  v12 = *(a1 + 32);
  if (!v12)
  {
    v12 = @"unknown";
  }

  v21[6] = v11;
  v21[7] = v12;
  v20[7] = @"webpageLocale";
  v20[8] = @"userRegion";
  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v13 countryCode];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"unknown";
  }

  v20[9] = @"autoFillTelemetryVersion";
  v21[8] = v16;
  v21[9] = &unk_1F308E180;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:10];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)didSubmitFormOfType:(unint64_t)a3 withPerFormModificationsDictionary:(id)a4 webpageLocale:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__WBSAnalyticsLogger_didSubmitFormOfType_withPerFormModificationsDictionary_webpageLocale___block_invoke;
  v12[3] = &unk_1E7CF0728;
  v14 = v9;
  v15 = a3;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.AutoFill.DidSubmitForm" usingBlock:v12];
}

id __91__WBSAnalyticsLogger_didSubmitFormOfType_withPerFormModificationsDictionary_webpageLocale___block_invoke(void *a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v14[0] = @"formType";
  v3 = stringForFormType(a1[6]);
  v4 = v3;
  v5 = a1[5];
  if (!v5)
  {
    v5 = @"unknown";
  }

  v15[0] = v3;
  v15[1] = v5;
  v14[1] = @"webpageLocale";
  v14[2] = @"userRegion";
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v6 countryCode];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"unknown";
  }

  v14[3] = @"autoFillTelemetryVersion";
  v15[2] = v9;
  v15[3] = &unk_1F308E180;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v11 = [v2 safari_dictionaryByMergingWithDictionary:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)didSubmitFormOfType:(unint64_t)a3 withPerFormUsageDictionary:(id)a4 webpageLocale:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__WBSAnalyticsLogger_didSubmitFormOfType_withPerFormUsageDictionary_webpageLocale___block_invoke;
  v12[3] = &unk_1E7CF0728;
  v14 = v9;
  v15 = a3;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.AutoFill.DidSubmitFormAutoFillUsage" usingBlock:v12];
}

id __83__WBSAnalyticsLogger_didSubmitFormOfType_withPerFormUsageDictionary_webpageLocale___block_invoke(void *a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v14[0] = @"formType";
  v3 = stringForFormType(a1[6]);
  v4 = v3;
  v5 = a1[5];
  if (!v5)
  {
    v5 = @"unknown";
  }

  v15[0] = v3;
  v15[1] = v5;
  v14[1] = @"webpageLocale";
  v14[2] = @"userRegion";
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v6 countryCode];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"unknown";
  }

  v14[3] = @"autoFillTelemetryVersion";
  v15[2] = v9;
  v15[3] = &unk_1F308E180;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v11 = [v2 safari_dictionaryByMergingWithDictionary:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)didUseCreditCardAutoFillEscapeHatchFillingNewType:(id)a3 forPreviousType:(id)a4 fieldType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__WBSAnalyticsLogger_didUseCreditCardAutoFillEscapeHatchFillingNewType_forPreviousType_fieldType___block_invoke;
  v12[3] = &unk_1E7CF0728;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.AutoFill.DidUseCreditCardEscapeHatch" usingBlock:v12];
}

id __98__WBSAnalyticsLogger_didUseCreditCardAutoFillEscapeHatchFillingNewType_forPreviousType_fieldType___block_invoke(void *a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"newType";
  v6[1] = @"previousType";
  v1 = a1[5];
  v7[0] = a1[4];
  v7[1] = v1;
  v6[2] = @"fieldType";
  v2 = stringForFieldType(a1[6]);
  v7[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didSelectFavoriteWithOpenLocation:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__WBSAnalyticsLogger_didSelectFavoriteWithOpenLocation___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.StartPage.SelectedFavorite" usingBlock:v3];
}

id __56__WBSAnalyticsLogger_didSelectFavoriteWithOpenLocation___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"openLocation";
  v1 = *(a1 + 32);
  if (v1 > 4)
  {
    v2 = &stru_1F3064D08;
  }

  else
  {
    v2 = off_1E7CF12A0[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didSelectFavoritesRow:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__WBSAnalyticsLogger_didSelectFavoritesRow___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Favorites" usingBlock:v3];
}

id __44__WBSAnalyticsLogger_didSelectFavoritesRow___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"favoritesRow";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didSelectFrequentlyVisitedSiteWithOpenLocation:(int64_t)a3 analyticsPayload:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__WBSAnalyticsLogger_didSelectFrequentlyVisitedSiteWithOpenLocation_analyticsPayload___block_invoke;
  v8[3] = &unk_1E7CF0890;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.StartPage.SelectedFrequentlyVisitedSite" usingBlock:v8];
}

id __86__WBSAnalyticsLogger_didSelectFrequentlyVisitedSiteWithOpenLocation_analyticsPayload___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"openLocation";
  v2 = *(a1 + 40);
  if (v2 > 4)
  {
    v3 = &stru_1F3064D08;
  }

  else
  {
    v3 = off_1E7CF12A0[v2];
  }

  v10[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v5 = [*(a1 + 32) eventDictionaryDescription];
  v6 = [v4 safari_dictionaryByMergingWithDictionary:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)didRemoveFrequentlyVisitedSiteWithAnalyticsPayload:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__WBSAnalyticsLogger_didRemoveFrequentlyVisitedSiteWithAnalyticsPayload___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.StartPage.RemovedFrequentlyVisitedSite" usingBlock:v6];
}

- (void)didNavigateToFrequentlyVisitedSiteByAnyMeansWithAnalyticsPayload:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__WBSAnalyticsLogger_didNavigateToFrequentlyVisitedSiteByAnyMeansWithAnalyticsPayload___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.StartPage.VisitedFrequentlyVisitedSiteByAnyMeans" usingBlock:v6];
}

- (void)reportSafariVersion:(id)a3 safariAndWebKitVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__WBSAnalyticsLogger_reportSafariVersion_safariAndWebKitVersion___block_invoke;
  v10[3] = &unk_1E7CF09C0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Version" usingBlock:v10];
}

id __65__WBSAnalyticsLogger_reportSafariVersion_safariAndWebKitVersion___block_invoke(int64x2_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = @"safariVariant";
  v4[1] = @"safariWebkitVersion";
  v5 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(&stru_1F3064D08), a1[2]);
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:2];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (void)reportApplicationCacheSize:(unint64_t)a3
{
  v3 = a3 >> 10;
  if (a3 >> 10 >= 0xC8)
  {
    v3 = 200;
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__WBSAnalyticsLogger_reportApplicationCacheSize___block_invoke;
  v4[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v4[4] = v3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ApplicationCache.Size" usingBlock:v4];
}

id __49__WBSAnalyticsLogger_reportApplicationCacheSize___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"value";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.%@", a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__WBSAnalyticsLogger_logDiagnosticMessageWithKey_diagnosticMessage___block_invoke;
  v9[3] = &unk_1E7CF0800;
  v8 = v6;
  v10 = v8;
  [(WBSAnalyticsLogger *)self _sendEvent:v7 usingBlock:v9];
}

id __68__WBSAnalyticsLogger_logDiagnosticMessageWithKey_diagnosticMessage___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = &stru_1F3064D08;
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
  }

  v5 = @"diagnosticMessage";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 result:(int64_t)a5
{
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.%@", a3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__WBSAnalyticsLogger_logDiagnosticMessageWithKey_diagnosticMessage_result___block_invoke;
  v11[3] = &unk_1E7CF0890;
  v10 = v8;
  v12 = v10;
  v13 = a5;
  [(WBSAnalyticsLogger *)self _sendEvent:v9 usingBlock:v11];
}

id __75__WBSAnalyticsLogger_logDiagnosticMessageWithKey_diagnosticMessage_result___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = &stru_1F3064D08;
  }

  v8[0] = @"diagnosticMessage";
  v8[1] = @"result";
  v9[0] = v2;
  v3 = @"noop";
  if (v1 == 1)
  {
    v3 = @"fail";
  }

  if (!v1)
  {
    v3 = @"pass";
  }

  v4 = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];
  v12 = 0;
  if (![v11 scanInteger:&v12] || !objc_msgSend(v11, "isAtEnd"))
  {

LABEL_6:
    [(WBSAnalyticsLogger *)self _logDiagnosticMessageWithKey:v8 diagnosticMessage:v9 stringValue:v10];
    goto LABEL_7;
  }

  [(WBSAnalyticsLogger *)self _logDiagnosticMessageWithKey:v8 diagnosticMessage:v9 integerValue:v12];

LABEL_7:
}

- (void)_logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 stringValue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.%@", a3];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__WBSAnalyticsLogger__logDiagnosticMessageWithKey_diagnosticMessage_stringValue___block_invoke;
  v13[3] = &unk_1E7CF09C0;
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [(WBSAnalyticsLogger *)self _sendEvent:v10 usingBlock:v13];
}

id __81__WBSAnalyticsLogger__logDiagnosticMessageWithKey_diagnosticMessage_stringValue___block_invoke(int64x2_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = @"diagnosticMessage";
  v4[1] = @"stringValue";
  v5 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(&stru_1F3064D08), a1[2]);
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:2];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (void)_logDiagnosticMessageWithKey:(id)a3 diagnosticMessage:(id)a4 integerValue:(int64_t)a5
{
  v8 = a4;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.%@", a3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__WBSAnalyticsLogger__logDiagnosticMessageWithKey_diagnosticMessage_integerValue___block_invoke;
  v11[3] = &unk_1E7CF0890;
  v10 = v8;
  v12 = v10;
  v13 = a5;
  [(WBSAnalyticsLogger *)self _sendEvent:v9 usingBlock:v11];
}

id __82__WBSAnalyticsLogger__logDiagnosticMessageWithKey_diagnosticMessage_integerValue___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = &stru_1F3064D08;
  }

  v7[0] = @"diagnosticMessage";
  v7[1] = @"integerValue";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:v1];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)reportAverageNumberOfTabsPerTabGroup:(int64_t)a3 andMaximum:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__WBSAnalyticsLogger_reportAverageNumberOfTabsPerTabGroup_andMaximum___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.SafariShared.TabGroups.AverageNumberOfTabsPerTabGroup" usingBlock:v4];
}

id __70__WBSAnalyticsLogger_reportAverageNumberOfTabsPerTabGroup_andMaximum___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"avgNumberOfTabs";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v7[1] = @"maximumNumberOfTabs";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)reportTabsForNonTabGroupUser:(int64_t)a3 andAverageNumber:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__WBSAnalyticsLogger_reportTabsForNonTabGroupUser_andAverageNumber___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.SafariShared.TabGroups.NonTabGroupUsersTabs" usingBlock:v4];
}

id __68__WBSAnalyticsLogger_reportTabsForNonTabGroupUser_andAverageNumber___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"avgAgeOfOpenTabs";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v7[1] = @"numOfOpenTabs";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)reportNumberOfTabGroups:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__WBSAnalyticsLogger_reportNumberOfTabGroups___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.SafariShared.TabGroups.NumberOfTabGroups" usingBlock:v3];
}

id __46__WBSAnalyticsLogger_reportNumberOfTabGroups___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"totalNumberOfTabGroups";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didCreateTabGroupFromLocation:(int64_t)a3 prepopulatedWithTabs:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__WBSAnalyticsLogger_didCreateTabGroupFromLocation_prepopulatedWithTabs___block_invoke;
  v4[3] = &__block_descriptor_41_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v5 = a4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.TabGroups.CreatedTabGroup" usingBlock:v4];
}

id __73__WBSAnalyticsLogger_didCreateTabGroupFromLocation_prepopulatedWithTabs___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"source";
  v2 = stringForTabGroupsActionSource(*(a1 + 32));
  v7[1] = @"prepopulatedWithTabs";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)didSwitchToTabGroupFromLocation:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSAnalyticsLogger_didSwitchToTabGroupFromLocation___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.TabGroups.SwitchedToTabGroup" usingBlock:v3];
}

id __54__WBSAnalyticsLogger_didSwitchToTabGroupFromLocation___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"source";
  v1 = stringForTabGroupsActionSource(*(a1 + 32));
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportMacOSToolbarButtonUsage:(int64_t)a3 withLayout:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__WBSAnalyticsLogger_reportMacOSToolbarButtonUsage_withLayout___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.ToolbarButtonUsage" usingBlock:v4];
}

id __63__WBSAnalyticsLogger_reportMacOSToolbarButtonUsage_withLayout___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"buttonName";
  v2 = stringForToolbarButtonType(*(a1 + 32));
  v8[1] = @"provenance";
  v9[0] = v2;
  v3 = *(a1 + 40) - 1;
  if (v3 > 4)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E7CF1448[v3];
  }

  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)reportIOSToolbarButtonUsage:(int64_t)a3 withLayout:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__WBSAnalyticsLogger_reportIOSToolbarButtonUsage_withLayout___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.MobileSafari.ToolbarButtonUsage" usingBlock:v4];
}

id __61__WBSAnalyticsLogger_reportIOSToolbarButtonUsage_withLayout___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"buttonName";
  v2 = stringForToolbarButtonType(*(a1 + 32));
  v8[1] = @"provenance";
  v9[0] = v2;
  v3 = *(a1 + 40) - 1;
  if (v3 > 4)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E7CF1448[v3];
  }

  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)reportSVCToolbarButtonUsage:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__WBSAnalyticsLogger_reportSVCToolbarButtonUsage___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.SafariViewController.ToolbarButtonUsage" usingBlock:v3];
}

id __50__WBSAnalyticsLogger_reportSVCToolbarButtonUsage___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"buttonName";
  v1 = stringForToolbarButtonType(*(a1 + 32));
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didPerformMoreMenuAction:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__WBSAnalyticsLogger_didPerformMoreMenuAction___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.PerformedMoreMenuAction" usingBlock:v3];
}

id __47__WBSAnalyticsLogger_didPerformMoreMenuAction___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"actionType";
  v1 = *(a1 + 32) - 1;
  if (v1 > 0xA)
  {
    v2 = @"stop";
  }

  else
  {
    v2 = off_1E7CF1470[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didUseSidebarAction:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__WBSAnalyticsLogger_didUseSidebarAction___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.SidebarAction" usingBlock:v3];
}

id __42__WBSAnalyticsLogger_didUseSidebarAction___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"action";
  v1 = *(a1 + 32) - 1;
  if (v1 > 0x14)
  {
    v2 = @"local tab group selected";
  }

  else
  {
    v2 = off_1E7CF14C8[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)didFinishScribble:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__WBSAnalyticsLogger_didFinishScribble___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Scribble.didFinishScribble" usingBlock:v3];
}

id __40__WBSAnalyticsLogger_didFinishScribble___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"changesMade";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportNumberOfWebsitesWithScribbleActive:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__WBSAnalyticsLogger_reportNumberOfWebsitesWithScribbleActive___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Scribble.reportNumberOfWebsitesWithScribbleActive" usingBlock:v3];
}

id __63__WBSAnalyticsLogger_reportNumberOfWebsitesWithScribbleActive___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"websites";
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportUserConsentStateSBA:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__WBSAnalyticsLogger_reportUserConsentStateSBA___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.SmartBrowsingAssistant.userConsentState" usingBlock:v6];
}

id __48__WBSAnalyticsLogger_reportUserConsentStateSBA___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"consentState";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)didVisitWebpageSBAWithUserOptedIn:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__WBSAnalyticsLogger_didVisitWebpageSBAWithUserOptedIn___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.SmartBrowsingAssistant.didVisitWebpage" usingBlock:v3];
}

id __56__WBSAnalyticsLogger_didVisitWebpageSBAWithUserOptedIn___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"optedIn";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)safariDidBeginTerminationWithReason:(int64_t)a3
{
  self->_safariIsTerminating = 1;
  if (a3 || !self->_safariQuitReason)
  {
    self->_safariQuitReason = a3;
  }
}

- (void)safariDidCancelTermination
{
  self->_safariIsTerminating = 0;
  self->_safariQuitReason = 0;
  self->_safariReportedNonOtherBlockingReason = 0;
}

- (void)reportBlockingSafariQuitWithReason:(int64_t)a3
{
  if (self->_safariIsTerminating && (a3 || !self->_safariReportedNonOtherBlockingReason))
  {
    safariQuitReason = self->_safariQuitReason;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__WBSAnalyticsLogger_reportBlockingSafariQuitWithReason___block_invoke;
    v4[3] = &unk_1E7CF0C88;
    v4[4] = self;
    v4[5] = a3;
    v4[6] = safariQuitReason;
    [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.BlockingSafariQuit" usingBlock:v4];
  }
}

id __57__WBSAnalyticsLogger_reportBlockingSafariQuitWithReason___block_invoke(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (a1[5])
  {
    *(a1[4] + 40) = 1;
  }

  v7[0] = @"blockingReason";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7[1] = @"quitReason";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)reportSafariTabStateMismatchWithError:(int64_t)a3 systemTALEnabled:(BOOL)a4 safariRestoreOnLaunchEnabled:(BOOL)a5 excludePrivateWindows:(BOOL)a6 systemSaysPreserveState:(BOOL)a7 stringRepresentation:(id)a8
{
  v14 = a8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __173__WBSAnalyticsLogger_reportSafariTabStateMismatchWithError_systemTALEnabled_safariRestoreOnLaunchEnabled_excludePrivateWindows_systemSaysPreserveState_stringRepresentation___block_invoke;
  v16[3] = &unk_1E7CF0CB0;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v17 = v14;
  v18 = a3;
  v15 = v14;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.SafariTabStateError" usingBlock:v16];
}

id __173__WBSAnalyticsLogger_reportSafariTabStateMismatchWithError_systemTALEnabled_safariRestoreOnLaunchEnabled_excludePrivateWindows_systemSaysPreserveState_stringRepresentation___block_invoke(uint64_t a1)
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11[0] = @"errorType";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v12[0] = v2;
  v11[1] = @"systemTALEnabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v12[1] = v3;
  v11[2] = @"safariRestoreOnLaunchEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 49)];
  v12[2] = v4;
  v11[3] = @"excludePrivateWindows";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 50)];
  v12[3] = v5;
  v11[4] = @"preserveState";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 51)];
  v11[5] = @"stringRepresentation";
  v7 = *(a1 + 32);
  v12[4] = v6;
  v12[5] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)reportSafariRecoveredWindowStateWithSuccess:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__WBSAnalyticsLogger_reportSafariRecoveredWindowStateWithSuccess___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.SafariRecoveredWindowState" usingBlock:v3];
}

id __66__WBSAnalyticsLogger_reportSafariRecoveredWindowStateWithSuccess___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"recovered";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportTabGroupSyncFinishedWithInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__WBSAnalyticsLogger_reportTabGroupSyncFinishedWithInfo___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.TabGroups.Sync.SyncFinished" usingBlock:v6];
}

- (void)reportTabGroupSyncSuccessesWithCount:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__WBSAnalyticsLogger_reportTabGroupSyncSuccessesWithCount___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.TabGroups.Sync.SyncFinished" usingBlock:v6];
}

id __59__WBSAnalyticsLogger_reportTabGroupSyncSuccessesWithCount___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"syncResult";
  v5[1] = @"periodicCount";
  v1 = *(a1 + 32);
  v6[0] = &unk_1F308E198;
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportAdvancedPrivacyProtectionPreference
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v3 BOOLForKey:@"EnableEnhancedPrivacyInPrivateBrowsing"])
  {
    v4 = [v3 BOOLForKey:@"EnableEnhancedPrivacyInRegularBrowsing"];
    v5 = 1;
    if (v4)
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__WBSAnalyticsLogger_reportAdvancedPrivacyProtectionPreference__block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = v5;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Preferences.ReportAdvancedPrivacyProtectionStatus" usingBlock:v6];
}

id __63__WBSAnalyticsLogger_reportAdvancedPrivacyProtectionPreference__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"preference";
  v1 = *(a1 + 32);
  v2 = @"disabled";
  if (v1 == 1)
  {
    v2 = @"private browsing only";
  }

  if (v1 == 2)
  {
    v3 = @"all browsing";
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)reportTabUpdatedWithUpdateType:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WBSAnalyticsLogger_reportTabUpdatedWithUpdateType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.DidModifyTab" usingBlock:v3];
}

id __53__WBSAnalyticsLogger_reportTabUpdatedWithUpdateType___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"tabUpdateChangeType";
  v1 = *(a1 + 32) - 1;
  if (v1 > 0xB)
  {
    v2 = @"navigation";
  }

  else
  {
    v2 = off_1E7CF1570[v1];
  }

  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)reportNumberOfWebApps:(int64_t)a3 andBookmarks:(int64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__WBSAnalyticsLogger_reportNumberOfWebApps_andBookmarks___block_invoke;
  v4[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4[4] = a3;
  v4[5] = a4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.MobileSafari.WebClipCount" usingBlock:v4];
}

id __57__WBSAnalyticsLogger_reportNumberOfWebApps_andBookmarks___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"webAppCount";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v7[1] = @"bookmarkCount";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)reportWebContentProcessInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__WBSAnalyticsLogger_reportWebContentProcessInfo___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.WebContentProcessInfo" usingBlock:v6];
}

- (void)reportAllProcessInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__WBSAnalyticsLogger_reportAllProcessInfo___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEventAddingVersionInfo:@"com.apple.Safari.AllProcessInfo" usingBlock:v6];
}

- (id)_bundleIdDictionaryWithArray:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WBSAnalyticsLogger__bundleIdDictionaryWithArray___block_invoke;
  v7[3] = &unk_1E7CF0CD8;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __51__WBSAnalyticsLogger__bundleIdDictionaryWithArray___block_invoke(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bundleID%d", (a3 + 1)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)didShowBrowserChoiceScreen:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__WBSAnalyticsLogger_didShowBrowserChoiceScreen___block_invoke;
  v6[3] = &unk_1E7CF09C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.BrowserChoice.didShowBrowserChoice" usingBlock:v6];
}

void __185__WBSAnalyticsLogger_didSelectBrowserChoice_browserAlreadyInstalled_browsersWithProductPagesViewed_browserList_userCohort_listContainsDisabledBrowser_userTriedSelectingDisabledBrowser___block_invoke(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bundleID%dProductPageViewed", (a3 + 1)];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "containsObject:", v7)}];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)didViewBrowserProductPage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__WBSAnalyticsLogger_didViewBrowserProductPage___block_invoke;
  v6[3] = &unk_1E7CF0800;
  v7 = v4;
  v5 = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.BrowserChoice.didViewBrowserProductPage" usingBlock:v6];
}

id __48__WBSAnalyticsLogger_didViewBrowserProductPage___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"bundleID";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportFolderOnTopModePreference:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__WBSAnalyticsLogger_reportFolderOnTopModePreference___block_invoke;
  v3[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v4 = a3;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Safari.Sidebar.FolderOnTopModePreference" usingBlock:v3];
}

id __54__WBSAnalyticsLogger_reportFolderOnTopModePreference___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"prefersFoldersOnTop";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportIsUsingPasswordsApp:(BOOL)a3 isUsingCredentialProviderExtension:(BOOL)a4
{
  v4 = 2;
  if (!a4)
  {
    v4 = 0;
  }

  v5 = 3;
  if (!a4)
  {
    v5 = 1;
  }

  if (a3)
  {
    v4 = v5;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__WBSAnalyticsLogger_reportIsUsingPasswordsApp_isUsingCredentialProviderExtension___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = v4;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Passwords.PasswordAutoFillProviderConfiguration" usingBlock:v6];
}

id __83__WBSAnalyticsLogger_reportIsUsingPasswordsApp_isUsingCredentialProviderExtension___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"passwordAutoFillProviderConfiguration";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)reportVerificationCodeProvider:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 isEqualToString:@"com.apple.Passwords"];
    v6 = 1;
    if (!v5)
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WBSAnalyticsLogger_reportVerificationCodeProvider___block_invoke;
  v7[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v7[4] = v6;
  [(WBSAnalyticsLogger *)self _sendEvent:@"com.apple.Passwords.PasswordAutoFillProviderConfiguration" usingBlock:v7];
}

id __53__WBSAnalyticsLogger_reportVerificationCodeProvider___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"passwordAutoFillVerificationCodeProviderConfiguration";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end